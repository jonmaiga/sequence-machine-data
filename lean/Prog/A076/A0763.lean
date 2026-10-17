import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A076300: Numbers k such that prime(k) + s*k is prime, s=5.

The programs for A076300, the canonical program `A076300.P7338240880064656560` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076300 has offset 1).

The definition of A076300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076300.P4565519783937570167

`A000720(A254462(n+1))`
-/

namespace A076300.P4565519783937570167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A254462 (n + 1)).toNat

end

end A076300.P4565519783937570167

namespace A076300

/-- `A000720(A254462(n+1))` -/
def P4565519783937570167.Spec : Prop :=
  ∀ n, P4565519783937570167.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P3134683151756964610

`A061395(p?[A254462(n+1)])`
-/

namespace A076300.P3134683151756964610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076300.P3134683151756964610

namespace A076300

/-- `A061395(p?[A254462(n+1)])` -/
def P3134683151756964610.Spec : Prop :=
  ∀ n, P3134683151756964610.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P7338240880064656560

`lt[A000005(A008706(n+1)+A000040(n+1)), 3]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076300

/-- `lt[A000005(A008706(n+1)+A000040(n+1)), 3]+1` -/
def P7338240880064656560.Spec : Prop :=
  ∀ n, (P7338240880064656560.a n : ℤ) = A076300 (n + 1)

theorem P7338240880064656560.correct : P7338240880064656560.Spec := by
  intro n
  simp only [A076300, Nat.add_sub_cancel]

end A076300

/-! ## A076300.P1189158646096123524

`A061395(2*A254462(n+1))`
-/

namespace A076300.P1189158646096123524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A254462 (n + 1)).toNat

end

end A076300.P1189158646096123524

namespace A076300

/-- `A061395(2*A254462(n+1))` -/
def P1189158646096123524.Spec : Prop :=
  ∀ n, P1189158646096123524.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P18143916798610378841

`A003963(p?[A254462(n+1)])`
-/

namespace A076300.P18143916798610378841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076300.P18143916798610378841

namespace A076300

/-- `A003963(p?[A254462(n+1)])` -/
def P18143916798610378841.Spec : Prop :=
  ∀ n, P18143916798610378841.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P16631576062651688489

`A026233(p?[A254462(n+1)])`
-/

namespace A076300.P16631576062651688489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076300.P16631576062651688489

namespace A076300

/-- `A026233(p?[A254462(n+1)])` -/
def P16631576062651688489.Spec : Prop :=
  ∀ n, P16631576062651688489.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P2027796308190343827

`A026238(p?[A254462(n+1)])`
-/

namespace A076300.P2027796308190343827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076300.P2027796308190343827

namespace A076300

/-- `A026238(p?[A254462(n+1)])` -/
def P2027796308190343827.Spec : Prop :=
  ∀ n, P2027796308190343827.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P18342546228977352925

`A049084(p?[A254462(n+1)])`
-/

namespace A076300.P18342546228977352925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076300.P18342546228977352925

namespace A076300

/-- `A049084(p?[A254462(n+1)])` -/
def P18342546228977352925.Spec : Prop :=
  ∀ n, P18342546228977352925.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P10722859269370253053

`A055396(p?[A254462(n+1)])`
-/

namespace A076300.P10722859269370253053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076300.P10722859269370253053

namespace A076300

/-- `A055396(p?[A254462(n+1)])` -/
def P10722859269370253053.Spec : Prop :=
  ∀ n, P10722859269370253053.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P6181824069242629819

`A225395(p?[A254462(n+1)])`
-/

namespace A076300.P6181824069242629819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076300.P6181824069242629819

namespace A076300

/-- `A225395(p?[A254462(n+1)])` -/
def P6181824069242629819.Spec : Prop :=
  ∀ n, P6181824069242629819.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P2877805549375778288

`A036234(A254462(n+1)-1)`
-/

namespace A076300.P2877805549375778288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A254462 (n + 1) - 1).toNat

end

end A076300.P2877805549375778288

namespace A076300

/-- `A036234(A254462(n+1)-1)` -/
def P2877805549375778288.Spec : Prop :=
  ∀ n, P2877805549375778288.a n = A076300 (n + 1)

end A076300

/-! ## A076300.P18172081806477487931

`A225395(2*A254462(n+1))`
-/

namespace A076300.P18172081806477487931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (2 * A254462 (n + 1)).toNat

end

end A076300.P18172081806477487931

namespace A076300

/-- `A225395(2*A254462(n+1))` -/
def P18172081806477487931.Spec : Prop :=
  ∀ n, P18172081806477487931.a n = A076300 (n + 1)

end A076300

/-!
# A076301: Related to number of labeled partially ordered sets.

The programs for A076301, there is no canonical definition to state claims against.
-/

/-! ## A076301.P6914528831301699810

`(C(n, 2)/2+1)*n!`
-/

namespace A076301.P6914528831301699810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℚ) / 2 + 1) * (Nat.factorial n : ℚ)

end

end A076301.P6914528831301699810

/-! ## A076301.P3923271521563642552

`(∑[n-1]+3)/2*n!`
-/

namespace A076301.P3923271521563642552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℤ) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A076301.P3923271521563642552

/-! ## A076301.P13293764233600564458

`A001809(n)+n!`
-/

namespace A076301.P13293764233600564458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n + (Nat.factorial n : ℤ)

end

end A076301.P13293764233600564458

/-! ## A076301.P1562974847636914701

`A006595(n)-Δ[n!]`
-/

namespace A076301.P1562974847636914701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006595 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A076301.P1562974847636914701

/-! ## A076301.P4956787801690098586

`round(n!/2)*A238531(n)`
-/

namespace A076301.P4956787801690098586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2) * A238531 n

end

end A076301.P4956787801690098586

/-! ## A076301.P9510317192214787582

`(C(n, 2)+2)/2*∏[A028310(n)]`
-/

namespace A076301.P9510317192214787582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 2 : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A076301.P9510317192214787582

/-! ## A076301.P9987327007764013063

`∑[abs(1-(char[2]+n))]*A001710(n)`
-/

namespace A076301.P9987327007764013063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001710 n

end

end A076301.P9987327007764013063

/-! ## A076301.P13818608277218872767

`A001809(n)+A000142(n)`
-/

namespace A076301.P13818608277218872767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n + A000142 n

end

end A076301.P13818608277218872767

/-! ## A076301.P12730404768492979633

`A006595(n)-A001563(n)`
-/

namespace A076301.P12730404768492979633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006595 n - A001563 n

end

end A076301.P12730404768492979633

/-!
# A076302: Triangle T(n,k) = number of k-smooth divisors of n, read by rows.

The programs for A076302, the canonical program `A076302.P14903802815767851269` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076302 has offset 1).

The definition of A076302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076302.P14903802815767851269

`A000005(gcd(A166350(n+1)²², A002024(n+1)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A076302

/-- `A000005(gcd(A166350(n+1)²², A002024(n+1)))` -/
def P14903802815767851269.Spec : Prop :=
  ∀ n, P14903802815767851269.a n = A076302 (n + 1)

theorem P14903802815767851269.correct : P14903802815767851269.Spec := by
  intro n
  simp only [A076302, Nat.add_sub_cancel]

end A076302

/-! ## A076302.P6395841249099641658

`A000005(gcd(A123578(n), A268472(n+1)))`
-/

namespace A076302.P6395841249099641658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A123578 n) (A268472 (n + 1)))

end

end A076302.P6395841249099641658

namespace A076302

/-- `A000005(gcd(A123578(n), A268472(n+1)))` -/
def P6395841249099641658.Spec : Prop :=
  ∀ n, P6395841249099641658.a n = A076302 (n + 1)

end A076302

/-! ## A076302.P8646154515747849409

`A000005(gcd(A268472(n+1)², A002024(n+1)))`
-/

namespace A076302.P8646154515747849409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A268472 (n + 1) ^ 2) (A002024 (n + 1)))

end

end A076302.P8646154515747849409

namespace A076302

/-- `A000005(gcd(A268472(n+1)², A002024(n+1)))` -/
def P8646154515747849409.Spec : Prop :=
  ∀ n, P8646154515747849409.a n = A076302 (n + 1)

end A076302

/-! ## A076302.P12384024286312097992

`A001222(A005408(∑{d}[A134991(n+1), #]))`
-/

namespace A076302.P12384024286312097992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005408 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)).toNat

end

end A076302.P12384024286312097992

namespace A076302

/-- `A001222(A005408(∑{d}[A134991(n+1), #]))` -/
def P12384024286312097992.Spec : Prop :=
  ∀ n, P12384024286312097992.a n = A076302 (n + 1)

end A076302

/-! ## A076302.P272474810398244286

`gcd(A004467(A056478(n)), A105511(n))`
-/

namespace A076302.P272474810398244286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004467 (A056478 n).toNat) (A105511 n)

end

end A076302.P272474810398244286

namespace A076302

/-- `gcd(A004467(A056478(n)), A105511(n))` -/
def P272474810398244286.Spec : Prop :=
  ∀ n, (P272474810398244286.a n : ℤ) = A076302 (n + 1)

end A076302

/-!
# A076303: Engel expansion of exp(Pi * sqrt(163)) - 262537412640768743.

The programs for A076303, there is no canonical definition to state claims against.
-/

/-! ## A076303.P12290631752387156159

`A114526(A034473(n+1)+1)`
-/

namespace A076303.P12290631752387156159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114526 (A034473 (n + 1) + 1).toNat

end

end A076303.P12290631752387156159

/-! ## A076303.P438751869647179042

`A138343(A034473(n+1)+1)`
-/

namespace A076303.P438751869647179042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138343 (A034473 (n + 1) + 1).toNat

end

end A076303.P438751869647179042

/-! ## A076303.P6153143472576718070

`A032568(A161618(n+1))+1`
-/

namespace A076303.P6153143472576718070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032568 (A161618 (n + 1)).toNat + 1

end

end A076303.P6153143472576718070

/-! ## A076303.P12480115459027873769

`A085515(A034473(n+1)+2)`
-/

namespace A076303.P12480115459027873769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085515 (A034473 (n + 1) + 2).toNat

end

end A076303.P12480115459027873769

/-!
# A076304: Numbers k such that k^2 is a sum of three successive primes.

The programs for A076304, there is no canonical definition to state claims against.
-/

/-! ## A076304.P11988462284077749271

`sqrt(A080665(n+1))`
-/

namespace A076304.P11988462284077749271
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080665 (n + 1) : ℝ)

end

end A076304.P11988462284077749271

/-! ## A076304.P4265916819532313013

`ceil(sqrt(3*A206279(n+1)))`
-/

namespace A076304.P4265916819532313013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 * A206279 (n + 1) : ℝ)⌉

end

end A076304.P4265916819532313013

/-! ## A076304.P578829367915302116

`root(A080665(n+1), 2%A051395(n+1))`
-/

namespace A076304.P578829367915302116
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080665 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A051395 (n + 1)) : ℝ))

end

end A076304.P578829367915302116

/-! ## A076304.P52947608524096033

`root(A080665(n+1), 2)%A061275(n+1)`
-/

namespace A076304.P52947608524096033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A080665 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A061275 (n + 1))

end

end A076304.P52947608524096033

/-! ## A076304.P9183849268510030362

`root(A080665(n+1), A001316(A001316(n)))`
-/

namespace A076304.P9183849268510030362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080665 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A076304.P9183849268510030362

/-! ## A076304.P10499394672010180439

`A000265(root(A080665(n+1), 2))`
-/

namespace A076304.P10499394672010180439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A080665 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A076304.P10499394672010180439

/-! ## A076304.P15147266074328769326

`A022998(root(A080665(n+1), 2))`
-/

namespace A076304.P15147266074328769326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.roundAway ((A080665 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A076304.P15147266074328769326

/-! ## A076304.P17134611050252337862

`A029579(root(A080665(n+1), 2))`
-/

namespace A076304.P17134611050252337862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.roundAway ((A080665 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A076304.P17134611050252337862

/-!
# A076305: Numbers k such that prime(k) + prime(k+1) + prime(k+2) is a square.

The programs for A076305, there is no canonical definition to state claims against.
-/

/-! ## A076305.P8505908710029981023

`A000720(A206279(n+1)+1)`
-/

namespace A076305.P8505908710029981023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A206279 (n + 1) + 1).toNat

end

end A076305.P8505908710029981023

/-! ## A076305.P18071228242401284994

`A000720(A206279(n+1))`
-/

namespace A076305.P18071228242401284994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A206279 (n + 1)).toNat

end

end A076305.P18071228242401284994

/-! ## A076305.P7332305781785529847

`A061395(p?[A206279(n+1)])`
-/

namespace A076305.P7332305781785529847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076305.P7332305781785529847

/-! ## A076305.P3788862071022616244

`A061395(or(1, A206279(n+1)))`
-/

namespace A076305.P3788862071022616244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A206279 (n + 1))).toNat

end

end A076305.P3788862071022616244

/-! ## A076305.P17692219425272878887

`∑{d}[A206279(n+1), A061395(#)]`
-/

namespace A076305.P17692219425272878887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A076305.P17692219425272878887

/-!
# A076306: Numbers k such that k^3 is a sum of three successive primes.

The programs for A076306, there is no canonical definition to state claims against.
-/

/-! ## A076306.P9120505991038204280

`root(A227475(n+1), 3)`
-/

namespace A076306.P9120505991038204280
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A227475 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A076306.P9120505991038204280

/-! ## A076306.P9343409080200997123

`round(root(A227475(Δ[n²]-n), 3))`
-/

namespace A076306.P9343409080200997123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A227475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (3 : ℝ)))

end

end A076306.P9343409080200997123

/-! ## A076306.P8316017657840174274

`A227475(floor(sqrt((n+1)²+1)))^(1-2/3)`
-/

namespace A076306.P8316017657840174274
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A227475 (Nat.sqrt ((n + 1) ^ 2 + 1)) : ℝ) ^ (1 - (2 : ℚ) / 3 : ℝ)

end

end A076306.P8316017657840174274

/-! ## A076306.P18093646673410816889

`A028310(root(A227475(Δ[n²]-n), 3))`
-/

namespace A076306.P18093646673410816889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A227475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A076306.P18093646673410816889

/-! ## A076306.P3531932968499472289

`A028310(A227475(n+1)^(1-2/3))`
-/

namespace A076306.P3531932968499472289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A227475 (n + 1) : ℝ) ^ (1 - (2 : ℚ) / 3 : ℝ))).toNat

end

end A076306.P3531932968499472289

/-!
# A076307: a(n) = n+min(2*floor(a(n-1)/2), 3*floor(a(n-1)/3)) for n > 1, a(1)=1.

The programs for A076307, there is no canonical definition to state claims against.
-/

/-! ## A076307.P8523774630808039531

`A010060(A241473(n+1))+∑[n]`
-/

namespace A076307.P8523774630808039531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A241473 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076307.P8523774630808039531

/-! ## A076307.P2941113286302017251

`A000124(n)-A010059(A241473(n+1))`
-/

namespace A076307.P2941113286302017251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A010059 (A241473 (n + 1)).toNat

end

end A076307.P2941113286302017251

/-! ## A076307.P18100113474302991521

`A115381(A094588(n))+A000217(n)`
-/

namespace A076307.P18100113474302991521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115381 (A094588 n).toNat + A000217 n

end

end A076307.P18100113474302991521

/-! ## A076307.P13104650788264703612

`A192490(A022103(n))+A000217(n)`
-/

namespace A076307.P13104650788264703612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (A022103 n).toNat + A000217 n

end

end A076307.P13104650788264703612

/-! ## A076307.P2080182181492366853

`A281082(A059590(n))+A000217(n)`
-/

namespace A076307.P2080182181492366853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281082 (A059590 n).toNat + A000217 n

end

end A076307.P2080182181492366853

/-!
# A076309: a(n) = floor(n/10) - 2*(n mod 10).

The programs for A076309, the canonical program `A076309.P10223295066147021451` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076309 has offset 0).

The definition of A076309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076309.P10223295066147021451

`floor(n/10)-2*n%10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A076309

/-- `floor(n/10)-2*n%10` -/
def P10223295066147021451.Spec : Prop :=
  ∀ n, P10223295066147021451.a n = A076309 n

theorem P10223295066147021451.correct : P10223295066147021451.Spec := by
  intro n
  simp only [A076309]

end A076309

/-! ## A076309.P14261793308548563006

`n-3*(n-7*floor(n/10))`
-/

namespace A076309.P14261793308548563006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * ((n : ℤ) - 7 * ⌊(n : ℚ) / 10⌋)

end

end A076309.P14261793308548563006

namespace A076309

/-- `n-3*(n-7*floor(n/10))` -/
def P14261793308548563006.Spec : Prop :=
  ∀ n, P14261793308548563006.a n = A076309 n

end A076309

/-! ## A076309.P17394164149117355348

`(A076314(n)+A076311(n))/2`
-/

namespace A076309.P17394164149117355348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076314 n + A076311 n : ℚ) / 2

end

end A076309.P17394164149117355348

namespace A076309

/-- `(A076314(n)+A076311(n))/2` -/
def P17394164149117355348.Spec : Prop :=
  ∀ n, P17394164149117355348.a n = (A076309 n : ℚ)

end A076309

/-! ## A076309.P15039589937342423163

`(A076313(n)-A010879(n))*(1-4/2)²`
-/

namespace A076309.P15039589937342423163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076313 n - A010879 n : ℚ) * (1 - (4 : ℚ) / 2) ^ 2

end

end A076309.P15039589937342423163

namespace A076309

/-- `(A076313(n)-A010879(n))*(1-4/2)²` -/
def P15039589937342423163.Spec : Prop :=
  ∀ n, P15039589937342423163.a n = (A076309 n : ℚ)

end A076309

/-! ## A076309.P7026070708533601179

`(A076313(n)-A010879(n))%A008574(n)`
-/

namespace A076309.P7026070708533601179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076313 n - A010879 n) (A008574 n)

end

end A076309.P7026070708533601179

namespace A076309

/-- `(A076313(n)-A010879(n))%A008574(n)` -/
def P7026070708533601179.Spec : Prop :=
  ∀ n, P7026070708533601179.a n = A076309 n

end A076309

/-! ## A076309.P10043264237797089674

`(A076313(n)-A010879(n))/A014963(A017593(n))`
-/

namespace A076309.P10043264237797089674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076313 n - A010879 n : ℚ) / (A014963 (A017593 n).toNat : ℚ)

end

end A076309.P10043264237797089674

namespace A076309

/-- `(A076313(n)-A010879(n))/A014963(A017593(n))` -/
def P10043264237797089674.Spec : Prop :=
  ∀ n, P10043264237797089674.a n = (A076309 n : ℚ)

end A076309

/-!
# A076310: a(n) = floor(n/10) + 4*(n mod 10).

The programs for A076310, the canonical program `A076310.P5458350930544758694` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076310 has offset 0).

The definition of A076310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076310.P5458350930544758694

`floor(n/10)+4*n%10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A076310

/-- `floor(n/10)+4*n%10` -/
def P5458350930544758694.Spec : Prop :=
  ∀ n, P5458350930544758694.a n = A076310 n

theorem P5458350930544758694.correct : P5458350930544758694.Spec := by
  intro n
  simp only [A076310]

end A076310

/-! ## A076310.P15977397061892207820

`A336483(n)-A010879(n)`
-/

namespace A076310.P15977397061892207820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336483 n - A010879 n

end

end A076310.P15977397061892207820

namespace A076310

/-- `A336483(n)-A010879(n)` -/
def P15977397061892207820.Spec : Prop :=
  ∀ n, P15977397061892207820.a n = A076310 n

end A076310

/-! ## A076310.P2898703544535787840

`A076312(n)+2*A010879(n)`
-/

namespace A076310.P2898703544535787840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 n + 2 * A010879 n

end

end A076310.P2898703544535787840

namespace A076310

/-- `A076312(n)+2*A010879(n)` -/
def P2898703544535787840.Spec : Prop :=
  ∀ n, P2898703544535787840.a n = A076310 n

end A076310

/-! ## A076310.P4108266468506078605

`2*A076312(n)-A059995(n)`
-/

namespace A076310.P4108266468506078605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076312 n - A059995 n

end

end A076310.P4108266468506078605

namespace A076310

/-- `2*A076312(n)-A059995(n)` -/
def P4108266468506078605.Spec : Prop :=
  ∀ n, P4108266468506078605.a n = A076310 n

end A076310

/-! ## A076310.P11083386284435288291

`2*A076314(n)-A076309(n)`
-/

namespace A076310.P11083386284435288291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076314 n - A076309 n

end

end A076310.P11083386284435288291

namespace A076310

/-- `2*A076314(n)-A076309(n)` -/
def P11083386284435288291.Spec : Prop :=
  ∀ n, P11083386284435288291.a n = A076310 n

end A076310

/-! ## A076310.P10146222537092648846

`A059995(n)+A076312(n)-A076309(n)`
-/

namespace A076310.P10146222537092648846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + (A076312 n - A076309 n)

end

end A076310.P10146222537092648846

namespace A076310

/-- `A059995(n)+A076312(n)-A076309(n)` -/
def P10146222537092648846.Spec : Prop :=
  ∀ n, P10146222537092648846.a n = A076310 n

end A076310

/-! ## A076310.P2174015719495714652

`A059995(n)+A076313(n)-A076311(n)`
-/

namespace A076310.P2174015719495714652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + (A076313 n - A076311 n)

end

end A076310.P2174015719495714652

namespace A076310

/-- `A059995(n)+A076313(n)-A076311(n)` -/
def P2174015719495714652.Spec : Prop :=
  ∀ n, P2174015719495714652.a n = A076310 n

end A076310

/-! ## A076310.P16537470472996497058

`A076309(n)+A076314(n)-A076311(n)`
-/

namespace A076310.P16537470472996497058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 n + (A076314 n - A076311 n)

end

end A076310.P16537470472996497058

namespace A076310

/-- `A076309(n)+A076314(n)-A076311(n)` -/
def P16537470472996497058.Spec : Prop :=
  ∀ n, P16537470472996497058.a n = A076310 n

end A076310

/-! ## A076310.P5795404840726157283

`A076312(n)+A076314(n)-A076313(n)`
-/

namespace A076310.P5795404840726157283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 n + (A076314 n - A076313 n)

end

end A076310.P5795404840726157283

namespace A076310

/-- `A076312(n)+A076314(n)-A076313(n)` -/
def P5795404840726157283.Spec : Prop :=
  ∀ n, P5795404840726157283.a n = A076310 n

end A076310

/-! ## A076310.P14964756118577166459

`A076312(n)+A076312(A076312(n)-A076314(n))`
-/

namespace A076310.P14964756118577166459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 n + A076312 (A076312 n - A076314 n).toNat

end

end A076310.P14964756118577166459

namespace A076310

/-- `A076312(n)+A076312(A076312(n)-A076314(n))` -/
def P14964756118577166459.Spec : Prop :=
  ∀ n, P14964756118577166459.a n = A076310 n

end A076310

/-! ## A076310.P869520608050035426

`A076312(n)+A076312(A076313(n)-A076309(n))`
-/

namespace A076310.P869520608050035426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 n + A076312 (A076313 n - A076309 n).toNat

end

end A076310.P869520608050035426

namespace A076310

/-- `A076312(n)+A076312(A076313(n)-A076309(n))` -/
def P869520608050035426.Spec : Prop :=
  ∀ n, P869520608050035426.a n = A076310 n

end A076310

/-! ## A076310.P6024002394318052857

`A076313(n)-A076311(A059995(n)-A076313(n))`
-/

namespace A076310.P6024002394318052857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n - A076311 (A059995 n - A076313 n).toNat

end

end A076310.P6024002394318052857

namespace A076310

/-- `A076313(n)-A076311(A059995(n)-A076313(n))` -/
def P6024002394318052857.Spec : Prop :=
  ∀ n, P6024002394318052857.a n = A076310 n

end A076310

/-! ## A076310.P10067124463670292997

`A076312(n)-A076309(A076312(n)-A076314(n))`
-/

namespace A076310.P10067124463670292997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 n - A076309 (A076312 n - A076314 n).toNat

end

end A076310.P10067124463670292997

namespace A076310

/-- `A076312(n)-A076309(A076312(n)-A076314(n))` -/
def P10067124463670292997.Spec : Prop :=
  ∀ n, P10067124463670292997.a n = A076310 n

end A076310

/-! ## A076310.P6050375361779828315

`A076312(n)-A076309(A076313(n)-A076309(n))`
-/

namespace A076310.P6050375361779828315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076312 n - A076309 (A076313 n - A076309 n).toNat

end

end A076310.P6050375361779828315

namespace A076310

/-- `A076312(n)-A076309(A076313(n)-A076309(n))` -/
def P6050375361779828315.Spec : Prop :=
  ∀ n, P6050375361779828315.a n = A076310 n

end A076310

/-! ## A076310.P9466854223973217375

`A076313(n)-A076311(A076313(n)-A076309(n))`
-/

namespace A076310.P9466854223973217375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n - A076311 (A076313 n - A076309 n).toNat

end

end A076310.P9466854223973217375

namespace A076310

/-- `A076313(n)-A076311(A076313(n)-A076309(n))` -/
def P9466854223973217375.Spec : Prop :=
  ∀ n, P9466854223973217375.a n = A076310 n

end A076310

/-!
# A076311: a(n) = floor(n/10) - 5*(n mod 10).

The programs for A076311, the canonical program `A076311.P10743509908486781721` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076311 has offset 0).

The definition of A076311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076311.P10743509908486781721

`floor(n/10)-5*n%10`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A076311

/-- `floor(n/10)-5*n%10` -/
def P10743509908486781721.Spec : Prop :=
  ∀ n, P10743509908486781721.a n = A076311 n

theorem P10743509908486781721.correct : P10743509908486781721.Spec := by
  intro n
  simp only [A076311]

end A076311

/-! ## A076311.P4816765190449273604

`2*A076309(n)-A076314(n)`
-/

namespace A076311.P4816765190449273604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076309 n - A076314 n

end

end A076311.P4816765190449273604

namespace A076311

/-- `2*A076309(n)-A076314(n)` -/
def P4816765190449273604.Spec : Prop :=
  ∀ n, P4816765190449273604.a n = A076311 n

end A076311

/-! ## A076311.P11075673757870989093

`A059995(n)-5*A010879(n)`
-/

namespace A076311.P11075673757870989093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n - 5 * A010879 n

end

end A076311.P11075673757870989093

namespace A076311

/-- `A059995(n)-5*A010879(n)` -/
def P11075673757870989093.Spec : Prop :=
  ∀ n, P11075673757870989093.a n = A076311 n

end A076311

/-! ## A076311.P14506449510199100141

`A081595(n)-A008585(A076312(n))`
-/

namespace A076311.P14506449510199100141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081595 n - A008585 (A076312 n).toNat

end

end A076311.P14506449510199100141

namespace A076311

/-- `A081595(n)-A008585(A076312(n))` -/
def P14506449510199100141.Spec : Prop :=
  ∀ n, P14506449510199100141.a n = A076311 n

end A076311

/-! ## A076311.P15799583536915056320

`A081598(n)-A008588(A076314(n))`
-/

namespace A076311.P15799583536915056320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081598 n - A008588 (A076314 n).toNat

end

end A076311.P15799583536915056320

namespace A076311

/-- `A081598(n)-A008588(A076314(n))` -/
def P15799583536915056320.Spec : Prop :=
  ∀ n, P15799583536915056320.a n = A076311 n

end A076311

/-! ## A076311.P13343538269926284857

`A076309(n)+A076313(n)-A076312(n)`
-/

namespace A076311.P13343538269926284857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 n + (A076313 n - A076312 n)

end

end A076311.P13343538269926284857

namespace A076311

/-- `A076309(n)+A076313(n)-A076312(n)` -/
def P13343538269926284857.Spec : Prop :=
  ∀ n, P13343538269926284857.a n = A076311 n

end A076311

/-! ## A076311.P9654001353497867649

`A076309(n)+A076314(n)-A076310(n)`
-/

namespace A076311.P9654001353497867649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 n + (A076314 n - A076310 n)

end

end A076311.P9654001353497867649

namespace A076311

/-- `A076309(n)+A076314(n)-A076310(n)` -/
def P9654001353497867649.Spec : Prop :=
  ∀ n, P9654001353497867649.a n = A076311 n

end A076311

/-! ## A076311.P15512803174425919846

`A076309(n)-A026741(A076310(n)-A076309(n))`
-/

namespace A076311.P15512803174425919846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 n - A026741 (A076310 n - A076309 n).toNat

end

end A076311.P15512803174425919846

namespace A076311

/-- `A076309(n)-A026741(A076310(n)-A076309(n))` -/
def P15512803174425919846.Spec : Prop :=
  ∀ n, P15512803174425919846.a n = A076311 n

end A076311

/-! ## A076311.P16720374917384800949

`A076313(n)-A076310(A076313(n)-A076309(n))`
-/

namespace A076311.P16720374917384800949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n - A076310 (A076313 n - A076309 n).toNat

end

end A076311.P16720374917384800949

namespace A076311

/-- `A076313(n)-A076310(A076313(n)-A076309(n))` -/
def P16720374917384800949.Spec : Prop :=
  ∀ n, P16720374917384800949.a n = A076311 n

end A076311

/-!
# A076312: a(n) = floor(n/10) + 2*(n mod 10).

The programs for A076312, the canonical program `A076312.P9189460286517996944` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076312 has offset 0).

The definition of A076312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076312.P9189460286517996944

`A059995(n)+2*A010879(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076312

/-- `A059995(n)+2*A010879(n)` -/
def P9189460286517996944.Spec : Prop :=
  ∀ n, P9189460286517996944.a n = A076312 n

theorem P9189460286517996944.correct : P9189460286517996944.Spec := by
  intro n
  simp only [A076312]

end A076312

/-! ## A076312.P15906296345908576144

`n%10+floor(n/10)+n%10`
-/

namespace A076312.P15906296345908576144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 10 : ℕ) : ℤ) + (⌊(n : ℚ) / 10⌋ + ((n % 10 : ℕ) : ℤ))

end

end A076312.P15906296345908576144

namespace A076312

/-- `n%10+floor(n/10)+n%10` -/
def P15906296345908576144.Spec : Prop :=
  ∀ n, P15906296345908576144.a n = A076312 n

end A076312

/-! ## A076312.P7167262295484014468

`A076314(n)+A010879(n)`
-/

namespace A076312.P7167262295484014468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n + A010879 n

end

end A076312.P7167262295484014468

namespace A076312

/-- `A076314(n)+A010879(n)` -/
def P7167262295484014468.Spec : Prop :=
  ∀ n, P7167262295484014468.a n = A076312 n

end A076312

/-! ## A076312.P4394305357326307903

`A081594(n)-A076313(n)`
-/

namespace A076312.P4394305357326307903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 n - A076313 n

end

end A076312.P4394305357326307903

namespace A076312

/-- `A081594(n)-A076313(n)` -/
def P4394305357326307903.Spec : Prop :=
  ∀ n, P4394305357326307903.a n = A076312 n

end A076312

/-! ## A076312.P5045794571214314538

`A076310(n)-2*A010879(n)`
-/

namespace A076312.P5045794571214314538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n - 2 * A010879 n

end

end A076312.P5045794571214314538

namespace A076312

/-- `A076310(n)-2*A010879(n)` -/
def P5045794571214314538.Spec : Prop :=
  ∀ n, P5045794571214314538.a n = A076312 n

end A076312

/-! ## A076312.P17204267133515031639

`2*A059995(n)-A076309(n)`
-/

namespace A076312.P17204267133515031639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059995 n - A076309 n

end

end A076312.P17204267133515031639

namespace A076312

/-- `2*A059995(n)-A076309(n)` -/
def P17204267133515031639.Spec : Prop :=
  ∀ n, P17204267133515031639.a n = A076312 n

end A076312

/-! ## A076312.P11260481521780486123

`2*A076314(n)-A059995(n)`
-/

namespace A076312.P11260481521780486123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076314 n - A059995 n

end

end A076312.P11260481521780486123

namespace A076312

/-- `2*A076314(n)-A059995(n)` -/
def P11260481521780486123.Spec : Prop :=
  ∀ n, P11260481521780486123.a n = A076312 n

end A076312

/-! ## A076312.P807357503594542767

`(A076310(n)+A059995(n))/2`
-/

namespace A076312.P807357503594542767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076310 n + A059995 n : ℚ) / 2

end

end A076312.P807357503594542767

namespace A076312

/-- `(A076310(n)+A059995(n))/2` -/
def P807357503594542767.Spec : Prop :=
  ∀ n, P807357503594542767.a n = (A076312 n : ℚ)

end A076312

/-! ## A076312.P14554177307034693666

`A004526(A076310(n)+A059995(n))`
-/

namespace A076312.P14554177307034693666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076310 n + A059995 n).toNat

end

end A076312.P14554177307034693666

namespace A076312

/-- `A004526(A076310(n)+A059995(n))` -/
def P14554177307034693666.Spec : Prop :=
  ∀ n, P14554177307034693666.a n = A076312 n

end A076312

/-! ## A076312.P12655823203313651889

`A076309(n)+A076313(n)-A076311(n)`
-/

namespace A076312.P12655823203313651889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 n + (A076313 n - A076311 n)

end

end A076312.P12655823203313651889

namespace A076312

/-- `A076309(n)+A076313(n)-A076311(n)` -/
def P12655823203313651889.Spec : Prop :=
  ∀ n, P12655823203313651889.a n = A076312 n

end A076312

/-! ## A076312.P6934863052519692756

`A076310(n)+A076313(n)-A076314(n)`
-/

namespace A076312.P6934863052519692756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n + (A076313 n - A076314 n)

end

end A076312.P6934863052519692756

namespace A076312

/-- `A076310(n)+A076313(n)-A076314(n)` -/
def P6934863052519692756.Spec : Prop :=
  ∀ n, P6934863052519692756.a n = A076312 n

end A076312

/-! ## A076312.P13918063284636449009

`A076313(n)+A076314(n)-A076309(n)`
-/

namespace A076312.P13918063284636449009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n + (A076314 n - A076309 n)

end

end A076312.P13918063284636449009

namespace A076312

/-- `A076313(n)+A076314(n)-A076309(n)` -/
def P13918063284636449009.Spec : Prop :=
  ∀ n, P13918063284636449009.a n = A076312 n

end A076312

/-! ## A076312.P17153709008758760556

`A008601(n-A059995(n))-A008599(n)`
-/

namespace A076312.P17153709008758760556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 ((n : ℤ) - A059995 n).toNat - A008599 n

end

end A076312.P17153709008758760556

namespace A076312

/-- `A008601(n-A059995(n))-A008599(n)` -/
def P17153709008758760556.Spec : Prop :=
  ∀ n, P17153709008758760556.a n = A076312 n

end A076312

/-! ## A076312.P17026589100494941719

`A076309(n)-(A059995(n)-A076310(n))`
-/

namespace A076312.P17026589100494941719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 n - (A059995 n - A076310 n)

end

end A076312.P17026589100494941719

namespace A076312

/-- `A076309(n)-(A059995(n)-A076310(n))` -/
def P17026589100494941719.Spec : Prop :=
  ∀ n, P17026589100494941719.a n = A076312 n

end A076312

/-! ## A076312.P10680844707511935803

`A076314(A076314(n)-A059995(n))+A076314(n)`
-/

namespace A076312.P10680844707511935803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A076314 n - A059995 n).toNat + A076314 n

end

end A076312.P10680844707511935803

namespace A076312

/-- `A076314(A076314(n)-A059995(n))+A076314(n)` -/
def P10680844707511935803.Spec : Prop :=
  ∀ n, P10680844707511935803.a n = A076312 n

end A076312

/-! ## A076312.P5153129192022618952

`A076310(n)+A076309(A076313(n)-A076309(n))`
-/

namespace A076312.P5153129192022618952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n + A076309 (A076313 n - A076309 n).toNat

end

end A076312.P5153129192022618952

namespace A076312

/-- `A076310(n)+A076309(A076313(n)-A076309(n))` -/
def P5153129192022618952.Spec : Prop :=
  ∀ n, P5153129192022618952.a n = A076312 n

end A076312

/-! ## A076312.P4161792874108741142

`A076310(n)-A004526(A076310(n)-A059995(n))`
-/

namespace A076312.P4161792874108741142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 n - A004526 (A076310 n - A059995 n).toNat

end

end A076312.P4161792874108741142

namespace A076312

/-- `A076310(n)-A004526(A076310(n)-A059995(n))` -/
def P4161792874108741142.Spec : Prop :=
  ∀ n, P4161792874108741142.a n = A076312 n

end A076312

/-! ## A076312.P3481286125193676462

`A004526(A076310(n)+Δ[A131242(n)])`
-/

namespace A076312.P3481286125193676462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076310 n + (f1 (n + 1) - f1 n)).toNat

end

end A076312.P3481286125193676462

namespace A076312

/-- `A004526(A076310(n)+Δ[A131242(n)])` -/
def P3481286125193676462.Spec : Prop :=
  ∀ n, P3481286125193676462.a n = A076312 n

end A076312

/-!
# A076313: a(n) = floor(n/10) - (n mod 10).

The programs for A076313, the canonical program `A076313.P12295764101806133535` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076313 has offset 0).

The definition of A076313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076313.P12295764101806133535

`11*floor(n/10)-n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A076313

/-- `11*floor(n/10)-n` -/
def P12295764101806133535.Spec : Prop :=
  ∀ n, P12295764101806133535.a n = A076313 n

theorem P12295764101806133535.correct : P12295764101806133535.Spec := by
  intro n
  simp only [A076313]

end A076313

/-! ## A076313.P11676222145664532446

`(n-11*A010879(n))/10`
-/

namespace A076313.P11676222145664532446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 11 * A010879 n : ℚ) / 10

end

end A076313.P11676222145664532446

namespace A076313

/-- `(n-11*A010879(n))/10` -/
def P11676222145664532446.Spec : Prop :=
  ∀ n, P11676222145664532446.a n = (A076313 n : ℚ)

end A076313

/-! ## A076313.P4796880055659870032

`(n-11*A000035(n)-22*A010874(A004526(n)))/10`
-/

namespace A076313.P4796880055659870032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 11 * A000035 n - 22 * A010874 (A004526 n).toNat : ℚ) / 10

end

end A076313.P4796880055659870032

namespace A076313

/-- `(n-11*A000035(n)-22*A010874(A004526(n)))/10` -/
def P4796880055659870032.Spec : Prop :=
  ∀ n, P4796880055659870032.a n = (A076313 n : ℚ)

end A076313

/-! ## A076313.P4657908516539587739

`(n-11*A010874(n)-55*A000035(A002266(n)))/10`
-/

namespace A076313.P4657908516539587739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 11 * A010874 n - 55 * A000035 (A002266 n).toNat : ℚ) / 10

end

end A076313.P4657908516539587739

namespace A076313

/-- `(n-11*A010874(n)-55*A000035(A002266(n)))/10` -/
def P4657908516539587739.Spec : Prop :=
  ∀ n, P4657908516539587739.a n = (A076313 n : ℚ)

end A076313

/-! ## A076313.P5096348153429807638

`floor(n/10-n%10)`
-/

namespace A076313.P5096348153429807638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10 - ((n % 10 : ℕ) : ℚ)⌋

end

end A076313.P5096348153429807638

namespace A076313

/-- `floor(n/10-n%10)` -/
def P5096348153429807638.Spec : Prop :=
  ∀ n, P5096348153429807638.a n = A076313 n

end A076313

/-! ## A076313.P6753239458698131648

`(A076309(n)+A059995(n))/2`
-/

namespace A076313.P6753239458698131648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076309 n + A059995 n : ℚ) / 2

end

end A076313.P6753239458698131648

namespace A076313

/-- `(A076309(n)+A059995(n))/2` -/
def P6753239458698131648.Spec : Prop :=
  ∀ n, P6753239458698131648.a n = (A076313 n : ℚ)

end A076313

/-! ## A076313.P13368321646926103792

`(A076309(n)+A010879(n))%(n+1)`
-/

namespace A076313.P13368321646926103792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076309 n + A010879 n) (n + 1 : ℤ)

end

end A076313.P13368321646926103792

namespace A076313

/-- `(A076309(n)+A010879(n))%(n+1)` -/
def P13368321646926103792.Spec : Prop :=
  ∀ n, P13368321646926103792.a n = A076313 n

end A076313

/-! ## A076313.P18036409169109923654

`(A010879(n)-A059995(n))*A194513(A073575(2*n+1))`
-/

namespace A076313.P18036409169109923654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010879 n - A059995 n) * A194513 (A073575 (2 * n + 1)).toNat

end

end A076313.P18036409169109923654

namespace A076313

/-- `(A010879(n)-A059995(n))*A194513(A073575(2*n+1))` -/
def P18036409169109923654.Spec : Prop :=
  ∀ n, P18036409169109923654.a n = A076313 n

end A076313

/-! ## A076313.P11272646964154765759

`A055017(A096582(n+2))`
-/

namespace A076313.P11272646964154765759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A096582 (n + 2)).toNat

end

end A076313.P11272646964154765759

namespace A076313

/-- `A055017(A096582(n+2))` -/
def P11272646964154765759.Spec : Prop :=
  ∀ n, P11272646964154765759.a n = A076313 n

end A076313

/-! ## A076313.P14296558334837763511

`A055017(n)*A057428(A000290(n))`
-/

namespace A076313.P14296558334837763511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n * A057428 (A000290 n).toNat

end

end A076313.P14296558334837763511

namespace A076313

/-- `A055017(n)*A057428(A000290(n))` -/
def P14296558334837763511.Spec : Prop :=
  ∀ n, P14296558334837763511.a n = A076313 n

end A076313

/-! ## A076313.P18085347957643427684

`A055017(n)*A057428(A048798((n+1)²))`
-/

namespace A076313.P18085347957643427684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n * A057428 (A048798 ((n + 1) ^ 2)).toNat

end

end A076313.P18085347957643427684

namespace A076313

/-- `A055017(n)*A057428(A048798((n+1)²))` -/
def P18085347957643427684.Spec : Prop :=
  ∀ n, P18085347957643427684.a n = A076313 n

end A076313

/-!
# A076314: a(n) = floor(n/10) + (n mod 10).

The programs for A076314, the canonical program `A076314.P16087139924310494247` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076314 has offset 0).

The definition of A076314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076314.P16087139924310494247

`n-9*floor(n/10)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A076314

/-- `n-9*floor(n/10)` -/
def P16087139924310494247.Spec : Prop :=
  ∀ n, P16087139924310494247.a n = A076314 n

theorem P16087139924310494247.correct : P16087139924310494247.Spec := by
  intro n
  simp only [A076314]

end A076314

/-! ## A076314.P1597173319883810158

`(n+9*A010879(n))/10`
-/

namespace A076314.P1597173319883810158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + 9 * A010879 n : ℚ) / 10

end

end A076314.P1597173319883810158

namespace A076314

/-- `(n+9*A010879(n))/10` -/
def P1597173319883810158.Spec : Prop :=
  ∀ n, P1597173319883810158.a n = (A076314 n : ℚ)

end A076314

/-! ## A076314.P9035125478943200827

`(n+9*A000035(n)+18*A010874(A004526(n)))/10`
-/

namespace A076314.P9035125478943200827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + 9 * A000035 n + 18 * A010874 (A004526 n).toNat : ℚ) / 10

end

end A076314.P9035125478943200827

namespace A076314

/-- `(n+9*A000035(n)+18*A010874(A004526(n)))/10` -/
def P9035125478943200827.Spec : Prop :=
  ∀ n, P9035125478943200827.a n = (A076314 n : ℚ)

end A076314

/-! ## A076314.P8966808350452086080

`(n+9*A010874(n)+45*A000035(A002266(n)))/10`
-/

namespace A076314.P8966808350452086080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + 9 * A010874 n + 45 * A000035 (A002266 n).toNat : ℚ) / 10

end

end A076314.P8966808350452086080

namespace A076314

/-- `(n+9*A010874(n)+45*A000035(A002266(n)))/10` -/
def P8966808350452086080.Spec : Prop :=
  ∀ n, P8966808350452086080.a n = (A076314 n : ℚ)

end A076314

/-! ## A076314.P2622448452291066385

`A026741(A076310(n)+A076309(n))`
-/

namespace A076314.P2622448452291066385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A076310 n + A076309 n).toNat

end

end A076314.P2622448452291066385

namespace A076314

/-- `A026741(A076310(n)+A076309(n))` -/
def P2622448452291066385.Spec : Prop :=
  ∀ n, P2622448452291066385.a n = A076314 n

end A076314

/-! ## A076314.P17857755230729769130

`A006370((n-A076309(n))/3-A076313(n))`
-/

namespace A076314.P17857755230729769130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway (((n : ℤ) - A076309 n : ℚ) / 3 - (A076313 n : ℚ))).toNat

end

end A076314.P17857755230729769130

namespace A076314

/-- `A006370((n-A076309(n))/3-A076313(n))` -/
def P17857755230729769130.Spec : Prop :=
  ∀ n, P17857755230729769130.a n = A076314 n

end A076314

/-! ## A076314.P16452981159050057754

`A026741((n-A076309(n))/3-A076313(n))`
-/

namespace A076314.P16452981159050057754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway (((n : ℤ) - A076309 n : ℚ) / 3 - (A076313 n : ℚ))).toNat

end

end A076314.P16452981159050057754

namespace A076314

/-- `A026741((n-A076309(n))/3-A076313(n))` -/
def P16452981159050057754.Spec : Prop :=
  ∀ n, P16452981159050057754.a n = A076314 n

end A076314

/-! ## A076314.P36776510007163357

`A006370(A194518(3*(n+7))-A076313(n))`
-/

namespace A076314.P36776510007163357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A194518 (3 * (n + 7)) - A076313 n).toNat

end

end A076314.P36776510007163357

namespace A076314

/-- `A006370(A194518(3*(n+7))-A076313(n))` -/
def P36776510007163357.Spec : Prop :=
  ∀ n, P36776510007163357.a n = A076314 n

end A076314

/-! ## A076314.P18187469089060247883

`A026741(A194518(3*(n+7))-A076313(n))`
-/

namespace A076314.P18187469089060247883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A194518 (3 * (n + 7)) - A076313 n).toNat

end

end A076314.P18187469089060247883

namespace A076314

/-- `A026741(A194518(3*(n+7))-A076313(n))` -/
def P18187469089060247883.Spec : Prop :=
  ∀ n, P18187469089060247883.a n = A076314 n

end A076314

/-!
# A076315: Number of 3-colorable (i.e., chromatic number <= 3) simple graphs on n nodes.

The programs for A076315, there is no canonical definition to state claims against.
-/

/-! ## A076315.P9453634378784849383

`A076279(n+1)+A033995(n+1)`
-/

namespace A076315.P9453634378784849383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076279 (n + 1) + A033995 (n + 1)

end

end A076315.P9453634378784849383

/-! ## A076315.P8232084169310080581

`1+A076279(n+1)+A076278(n+1)`
-/

namespace A076315.P8232084169310080581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (A076279 (n + 1) + A076278 (n + 1))

end

end A076315.P8232084169310080581

/-! ## A076315.P7102018003512602631

`A076316(n+1)-A076280(n+1)`
-/

namespace A076315.P7102018003512602631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076316 (n + 1) - A076280 (n + 1)

end

end A076315.P7102018003512602631

/-! ## A076315.P1344752557916459693

`A076317(n+1)-(A076281(n+1)+A076280(n+1))`
-/

namespace A076315.P1344752557916459693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (n + 1) - (A076281 (n + 1) + A076280 (n + 1))

end

end A076315.P1344752557916459693

/-! ## A076315.P18373804692048394377

`A076317(n+1)-A076281(n+1)-A076280(A005555(n))`
-/

namespace A076315.P18373804692048394377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (n + 1) - A076281 (n + 1) - A076280 (A005555 n).toNat

end

end A076315.P18373804692048394377

/-!
# A076316: Number of 4-colorable (i.e., chromatic number <= 4) simple graphs on n nodes.

The programs for A076316, there is no canonical definition to state claims against.
-/

/-! ## A076316.P1480765628275897089

`A076315(n+1)+A076280(n+1)`
-/

namespace A076316.P1480765628275897089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076315 (n + 1) + A076280 (n + 1)

end

end A076316.P1480765628275897089

/-! ## A076316.P3326283246665306167

`A076317(n+1)-A076281(n+1)`
-/

namespace A076316.P3326283246665306167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (n + 1) - A076281 (n + 1)

end

end A076316.P3326283246665306167

/-! ## A076316.P752416142402341795

`A033995(n+1)+A076280(n+1)+A076279(n+1)`
-/

namespace A076316.P752416142402341795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 (n + 1) + (A076280 (n + 1) + A076279 (n + 1))

end

end A076316.P752416142402341795

/-! ## A076316.P1542926559747841611

`A076318(n+1)-(A076282(n+1)+A076281(n+1))`
-/

namespace A076316.P1542926559747841611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076318 (n + 1) - (A076282 (n + 1) + A076281 (n + 1))

end

end A076316.P1542926559747841611

/-! ## A076316.P2922246215307321967

`A076318(n+1)-A076282(n+1)-A076281(A005555(n))`
-/

namespace A076316.P2922246215307321967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076318 (n + 1) - A076282 (n + 1) - A076281 (A005555 n).toNat

end

end A076316.P2922246215307321967

/-!
# A076317: Number of 5-colorable (i.e., chromatic number <= 5) simple graphs on n nodes.

The programs for A076317, there is no canonical definition to state claims against.
-/

/-! ## A076317.P10444513771676860179

`A076316(n+1)+A076281(n+1)`
-/

namespace A076317.P10444513771676860179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076316 (n + 1) + A076281 (n + 1)

end

end A076317.P10444513771676860179

/-! ## A076317.P1305562267443913084

`A076318(n+1)-A076282(n+1)`
-/

namespace A076317.P1305562267443913084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076318 (n + 1) - A076282 (n + 1)

end

end A076317.P1305562267443913084

/-! ## A076317.P11713304047820323411

`A076280(n+1)+A076315(n+1)+A076281(n+1)`
-/

namespace A076317.P11713304047820323411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076280 (n + 1) + (A076315 (n + 1) + A076281 (n + 1))

end

end A076317.P11713304047820323411

/-! ## A076317.P12865563047955903401

`A076319(n+1)-(A076283(n+1)+A076282(n+1))`
-/

namespace A076317.P12865563047955903401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076319 (n + 1) - (A076283 (n + 1) + A076282 (n + 1))

end

end A076317.P12865563047955903401

/-! ## A076317.P16638179692395416103

`A076281(A005555(n))+A076315(n+1)+A076280(n+1)`
-/

namespace A076317.P16638179692395416103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076281 (A005555 n).toNat + (A076315 (n + 1) + A076280 (n + 1))

end

end A076317.P16638179692395416103

/-!
# A076318: Number of 6-colorable (i.e., chromatic number <= 6) simple graphs on n nodes.

The programs for A076318, there is no canonical definition to state claims against.
-/

/-! ## A076318.P2024844804059265743

`A076317(n+1)+A076282(n+1)`
-/

namespace A076318.P2024844804059265743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076317 (n + 1) + A076282 (n + 1)

end

end A076318.P2024844804059265743

/-! ## A076318.P11860914455020121536

`A076319(n+1)-A076283(n+1)`
-/

namespace A076318.P11860914455020121536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076319 (n + 1) - A076283 (n + 1)

end

end A076318.P11860914455020121536

/-! ## A076318.P7971662627795447124

`A076281(n+1)+A076316(n+1)+A076282(n+1)`
-/

namespace A076318.P7971662627795447124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076281 (n + 1) + (A076316 (n + 1) + A076282 (n + 1))

end

end A076318.P7971662627795447124

/-! ## A076318.P16095329032346537306

`A076320(n+1)-(A205567(n+1)+A076283(n+1))`
-/

namespace A076318.P16095329032346537306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076320 (n + 1) - (A205567 (n + 1) + A076283 (n + 1))

end

end A076318.P16095329032346537306

/-! ## A076318.P6075950163007141482

`A076282(n+1)+A076280(n+1)+A076315(n+1)+A076281(n+1)`
-/

namespace A076318.P6075950163007141482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076282 (n + 1) + (A076280 (n + 1) + (A076315 (n + 1) + A076281 (n + 1)))

end

end A076318.P6075950163007141482

/-!
# A076319: Number of 7-colorable (i.e., chromatic number <= 7) simple graphs on n nodes.

The programs for A076319, there is no canonical definition to state claims against.
-/

/-! ## A076319.P3427998326530104663

`A076318(n+1)+A076283(n+1)`
-/

namespace A076319.P3427998326530104663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076318 (n + 1) + A076283 (n + 1)

end

end A076319.P3427998326530104663

/-! ## A076319.P1621605294199935649

`A076320(n+1)-A205567(n+1)`
-/

namespace A076319.P1621605294199935649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076320 (n + 1) - A205567 (n + 1)

end

end A076319.P1621605294199935649

/-! ## A076319.P419897818802082578

`A076282(n+1)+A076317(n+1)+A076283(n+1)`
-/

namespace A076319.P419897818802082578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076282 (n + 1) + (A076317 (n + 1) + A076283 (n + 1))

end

end A076319.P419897818802082578

/-! ## A076319.P2610444784864470806

`A076321(n+1)-(A205568(n+1)+A205567(n+1))`
-/

namespace A076319.P2610444784864470806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - (A205568 (n + 1) + A205567 (n + 1))

end

end A076319.P2610444784864470806

/-! ## A076319.P16924503680180493044

`A076321(n+1)-floor(A112874(n+1)/17)-A205567(n+1)`
-/

namespace A076319.P16924503680180493044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - ⌊(A112874 (n + 1) : ℚ) / 17⌋ - A205567 (n + 1)

end

end A076319.P16924503680180493044

/-!
# A076320: Number of 8-colorable (i.e., chromatic number <= 8) simple graphs on n nodes.

The programs for A076320, there is no canonical definition to state claims against.
-/

/-! ## A076320.P14419778001926702948

`A076319(n+1)+A205567(n+1)`
-/

namespace A076320.P14419778001926702948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076319 (n + 1) + A205567 (n + 1)

end

end A076320.P14419778001926702948

/-! ## A076320.P3172591129154370202

`A076321(n+1)-A205568(n+1)`
-/

namespace A076320.P3172591129154370202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - A205568 (n + 1)

end

end A076320.P3172591129154370202

/-! ## A076320.P6610682200185348147

`A076321(n+1)-ceil(Δ[A327510(n)/5])`
-/

namespace A076320.P6610682200185348147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327510 n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - ⌈f1 (n + 1) - f1 n⌉

end

end A076320.P6610682200185348147

/-! ## A076320.P8977580999288523352

`A076321(n+1)-floor(A112874(n+1)/17)`
-/

namespace A076320.P8977580999288523352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - ⌊(A112874 (n + 1) : ℚ) / 17⌋

end

end A076320.P8977580999288523352

/-! ## A076320.P15364031782900148931

`A076321(n+1)-(A205578(n+1)+char[10])`
-/

namespace A076320.P15364031782900148931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076321 (n + 1) - (A205578 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A076320.P15364031782900148931

/-!
# A076321: Number of 9-colorable (i.e., chromatic number <= 9) simple graphs on n nodes.

The programs for A076321, there is no canonical definition to state claims against.
-/

/-! ## A076321.P10985957310150872290

`A076320(n+1)+A205568(n+1)`
-/

namespace A076321.P10985957310150872290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076320 (n + 1) + A205568 (n + 1)

end

end A076321.P10985957310150872290

/-! ## A076321.P10006034617458050914

`Δ[A006897(n)]-A125591(n)`
-/

namespace A076321.P10006034617458050914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125591 n

end

end A076321.P10006034617458050914

/-! ## A076321.P7724369763267615424

`A000088(n+1)-A035041(n)`
-/

namespace A076321.P7724369763267615424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A035041 n

end

end A076321.P7724369763267615424

/-! ## A076321.P14380885787526105841

`A000088(n+1)-A125591(n)`
-/

namespace A076321.P14380885787526105841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A125591 n

end

end A076321.P14380885787526105841

/-! ## A076321.P7551422215549525748

`record[A327805(n)]-A363128(n)`
-/

namespace A076321.P7551422215549525748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A363128 n

end

end A076321.P7551422215549525748

/-!
# A076322: Number of connected 3-colorable (i.e., chromatic number <= 3) simple graphs on n nodes.

The programs for A076322, there is no canonical definition to state claims against.
-/

/-! ## A076322.P9353990076767065963

`A126737(n+1)+A005142(n+1)`
-/

namespace A076322.P9353990076767065963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126737 (n + 1) + A005142 (n + 1)

end

end A076322.P9353990076767065963

/-! ## A076322.P12442382748595342896

`A076323(n+1)-A126738(n+1)`
-/

namespace A076322.P12442382748595342896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076323 (n + 1) - A126738 (n + 1)

end

end A076322.P12442382748595342896

/-!
# A076323: Number of connected 4-colorable (i.e., chromatic number <= 4) simple graphs on n nodes.

The programs for A076323, there is no canonical definition to state claims against.
-/

/-! ## A076323.P18356523319139919982

`A126738(n+1)+A076322(n+1)`
-/

namespace A076323.P18356523319139919982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126738 (n + 1) + A076322 (n + 1)

end

end A076323.P18356523319139919982

/-! ## A076323.P17214384097964326951

`A076324(n+1)-A126739(n+1)`
-/

namespace A076323.P17214384097964326951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076324 (n + 1) - A126739 (n + 1)

end

end A076323.P17214384097964326951

/-! ## A076323.P4438903243606084496

`A005142(n+1)+A126738(n+1)+A126737(n+1)`
-/

namespace A076323.P4438903243606084496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005142 (n + 1) + (A126738 (n + 1) + A126737 (n + 1))

end

end A076323.P4438903243606084496

/-!
# A076324: Number of connected 5-colorable (i.e., chromatic number <= 5) simple graphs on n nodes.

The programs for A076324, there is no canonical definition to state claims against.
-/

/-! ## A076324.P16471986007541707962

`A126739(n+1)+A076323(n+1)`
-/

namespace A076324.P16471986007541707962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126739 (n + 1) + A076323 (n + 1)

end

end A076324.P16471986007541707962

/-! ## A076324.P10609882042106416151

`A076325(n+1)-A126740(n+1)`
-/

namespace A076324.P10609882042106416151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076325 (n + 1) - A126740 (n + 1)

end

end A076324.P10609882042106416151

/-!
# A076325: Number of connected 6-colorable (i.e., chromatic number <= 6) simple graphs on n nodes.

The programs for A076325, there is no canonical definition to state claims against.
-/

/-! ## A076325.P10990589694177567207

`A126740(n+1)+A076324(n+1)`
-/

namespace A076325.P10990589694177567207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126740 (n + 1) + A076324 (n + 1)

end

end A076325.P10990589694177567207

/-! ## A076325.P8981805412446917394

`A076326(n+1)-A241702(n+1)`
-/

namespace A076325.P8981805412446917394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076326 (n + 1) - A241702 (n + 1)

end

end A076325.P8981805412446917394

/-! ## A076325.P21569183851269887

`A076323(n+1)+A126740(n+1)+A126739(n+1)`
-/

namespace A076325.P21569183851269887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076323 (n + 1) + (A126740 (n + 1) + A126739 (n + 1))

end

end A076325.P21569183851269887

/-!
# A076326: Number of connected 7-colorable (i.e., chromatic number <= 7) simple graphs on n nodes.

The programs for A076326, there is no canonical definition to state claims against.
-/

/-! ## A076326.P8547169557919014498

`A241702(n+1)+A076325(n+1)`
-/

namespace A076326.P8547169557919014498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241702 (n + 1) + A076325 (n + 1)

end

end A076326.P8547169557919014498

/-! ## A076326.P17987923327148493005

`A076324(n+1)+A241702(n+1)+A126740(n+1)`
-/

namespace A076326.P17987923327148493005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076324 (n + 1) + (A241702 (n + 1) + A126740 (n + 1))

end

end A076326.P17987923327148493005

/-! ## A076326.P2500992823937503127

`A241702(A005555(n))+A126740(n+1)+A076324(n+1)`
-/

namespace A076326.P2500992823937503127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241702 (A005555 n).toNat + (A126740 (n + 1) + A076324 (n + 1))

end

end A076326.P2500992823937503127

/-! ## A076326.P17953129548067134727

`A241702(A077168(n))+A126740(n+1)+A076324(n+1)`
-/

namespace A076326.P17953129548067134727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241702 (A077168 n).toNat + (A126740 (n + 1) + A076324 (n + 1))

end

end A076326.P17953129548067134727

/-!
# A076327: Number of connected 8-colorable (i.e., chromatic number <= 8) simple graphs on n nodes.

The programs for A076327, there is no canonical definition to state claims against.
-/

/-! ## A076327.P7625316490418855860

`A001349(n+1)-A205568(n+1)`
-/

namespace A076327.P7625316490418855860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A205568 (n + 1)

end

end A076327.P7625316490418855860

/-! ## A076327.P15770212389747287309

`A001349(n+1)-floor(A112874(n+1)/17)`
-/

namespace A076327.P15770212389747287309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - ⌊(A112874 (n + 1) : ℚ) / 17⌋

end

end A076327.P15770212389747287309

/-! ## A076327.P7973954701551699513

`A001349(n+1)-(A205578(n+1)+char[10])`
-/

namespace A076327.P7973954701551699513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - (A205578 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A076327.P7973954701551699513

/-! ## A076327.P8948523575575326724

`A201922(A000124(n))-A205568(n+1)`
-/

namespace A076327.P8948523575575326724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A205568 (n + 1)

end

end A076327.P8948523575575326724

/-! ## A076327.P4241696715104703487

`A076328(A216556(n))-A036640(n+1)`
-/

namespace A076327.P4241696715104703487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076328 (A216556 n).toNat - A036640 (n + 1)

end

end A076327.P4241696715104703487

/-!
# A076328: Number of connected 9-colorable (i.e., chromatic number <= 9) simple graphs on n nodes.

The programs for A076328, there is no canonical definition to state claims against.
-/

/-! ## A076328.P7034110929450379990

`A001349(n+1)-A182699(A099555(n))`
-/

namespace A076328.P7034110929450379990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A182699 (A099555 n).toNat

end

end A076328.P7034110929450379990

/-! ## A076328.P11222710468682911204

`A001349(n+1)-A337273(A007294(n))`
-/

namespace A076328.P11222710468682911204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A337273 (A007294 n).toNat

end

end A076328.P11222710468682911204

/-! ## A076328.P12840184915748167528

`A243241(n+1)+A224764(n)`
-/

namespace A076328.P12840184915748167528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243241 (n + 1) + A224764 n

end

end A076328.P12840184915748167528

/-! ## A076328.P5216694175240734744

`A224065(A119663(n+1))-char[9]`
-/

namespace A076328.P5216694175240734744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224065 (A119663 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A076328.P5216694175240734744

/-! ## A076328.P16077654862854756424

`A220841(n+1)+A220840(n+1)`
-/

namespace A076328.P16077654862854756424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220841 (n + 1) + A220840 (n + 1)

end

end A076328.P16077654862854756424

/-!
# A076329: Numbers k for which rank of the elliptic curve y^2=x^3+k*x is 2.

The programs for A076329, there is no canonical definition to state claims against.
-/

/-! ## A076329.P12730853924679339953

`eq[2, A060953(n+1)]+1`
-/

namespace A076329.P12730853924679339953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076329.P12730853924679339953

/-! ## A076329.P11179559076264713251

`eq[n, n-a(A060953(n))]` with `a(0)=2`
-/

namespace A076329.P11179559076264713251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) - f2 (A060953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076329.P11179559076264713251

/-! ## A076329.P11045602798541351188

`eq[2, A060953(A028310(n))]`
-/

namespace A076329.P11045602798541351188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076329.P11045602798541351188

/-! ## A076329.P453566732226549333

`A020725(eq[2, A060953(n+1)])`
-/

namespace A076329.P453566732226549333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076329.P453566732226549333

/-! ## A076329.P11097162889341600462

`A063660(eq[2, A060953(n+1)])`
-/

namespace A076329.P11097162889341600462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076329.P11097162889341600462

/-! ## A076329.P14619940697857698595

`A065475(eq[2, A060953(n+1)])`
-/

namespace A076329.P14619940697857698595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076329.P14619940697857698595

/-! ## A076329.P17114003122799184808

`A153152(eq[2, A060953(n+1)])`
-/

namespace A076329.P17114003122799184808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076329.P17114003122799184808

/-! ## A076329.P10395895108051589123

`eq[2, A060953(A233583(n+1))]`
-/

namespace A076329.P10395895108051589123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076329.P10395895108051589123

/-! ## A076329.P1556587491656317477

`eq[2, A060953(A004277(n)-n)]`
-/

namespace A076329.P1556587491656317477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076329.P1556587491656317477

/-! ## A076329.P1516123406368663218

`eq[3, A000051(a(A060953(n)))]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A076329.P1516123406368663218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  A000051 (f2 (A060953 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076329.P1516123406368663218

/-!
# A076332: a(n) = rad(n) + n/rad(n), where rad(n) is the squarefree kernel of n = A007947(n).

The programs for A076332, the canonical program `A076332.P10547228136457690679` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076332 has offset 1).

The definition of A076332 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076332.P10547228136457690679

`A007947(n+1)+A003557(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076332

/-- `A007947(n+1)+A003557(n+1)` -/
def P10547228136457690679.Spec : Prop :=
  ∀ n, P10547228136457690679.a n = A076332 (n + 1)

theorem P10547228136457690679.correct : P10547228136457690679.Spec := by
  intro n
  simp only [A076332, Nat.add_sub_cancel]

end A076332

/-! ## A076332.P16720308989135050477

`∏{p}[n+1, #]+(n+1)/∏{p}[n+1, #]`
-/

namespace A076332.P16720308989135050477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A076332.P16720308989135050477

namespace A076332

/-- `∏{p}[n+1, #]+(n+1)/∏{p}[n+1, #]` -/
def P16720308989135050477.Spec : Prop :=
  ∀ n, P16720308989135050477.a n = (A076332 (n + 1) : ℚ)

end A076332

/-! ## A076332.P14325198906174053467

`A336551(n+1)+A076618(n+1)`
-/

namespace A076332.P14325198906174053467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + A076618 (n + 1)

end

end A076332.P14325198906174053467

namespace A076332

/-- `A336551(n+1)+A076618(n+1)` -/
def P14325198906174053467.Spec : Prop :=
  ∀ n, P14325198906174053467.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P7037907645955167351

`A073353(n+1)-A010848(n+1)`
-/

namespace A076332.P7037907645955167351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - A010848 (n + 1)

end

end A076332.P7037907645955167351

namespace A076332

/-- `A073353(n+1)-A010848(n+1)` -/
def P7037907645955167351.Spec : Prop :=
  ∀ n, P7037907645955167351.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P10473645815978648883

`A003557(n+1)+A075423(n+1)+1`
-/

namespace A076332.P10473645815978648883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A075423 (n + 1) + 1)

end

end A076332.P10473645815978648883

namespace A076332

/-- `A003557(n+1)+A075423(n+1)+1` -/
def P10473645815978648883.Spec : Prop :=
  ∀ n, P10473645815978648883.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P8943235992681949163

`A007947(n+1)+A336551(n+1)+1`
-/

namespace A076332.P8943235992681949163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A336551 (n + 1) + 1)

end

end A076332.P8943235992681949163

namespace A076332

/-- `A007947(n+1)+A336551(n+1)+1` -/
def P8943235992681949163.Spec : Prop :=
  ∀ n, P8943235992681949163.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P4193564926330669318

`A003557(n+1)+∏{d}[n+1, A089026(#)]`
-/

namespace A076332.P4193564926330669318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + ∏ d ∈ Nat.divisors (f1 n), A089026 d

end

end A076332.P4193564926330669318

namespace A076332

/-- `A003557(n+1)+∏{d}[n+1, A089026(#)]` -/
def P4193564926330669318.Spec : Prop :=
  ∀ n, P4193564926330669318.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P4830722252420289478

`A007947(n+1)+(n+1)²/A064549(n+1)`
-/

namespace A076332.P4830722252420289478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) + ((n + 1) ^ 2 : ℚ) / (A064549 (n + 1) : ℚ)

end

end A076332.P4830722252420289478

namespace A076332

/-- `A007947(n+1)+(n+1)²/A064549(n+1)` -/
def P4830722252420289478.Spec : Prop :=
  ∀ n, P4830722252420289478.a n = (A076332 (n + 1) : ℚ)

end A076332

/-! ## A076332.P3958087845431618774

`A019555(A007948(n+1))+A003557(n+1)`
-/

namespace A076332.P3958087845431618774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A007948 (n + 1)).toNat + A003557 (n + 1)

end

end A076332.P3958087845431618774

namespace A076332

/-- `A019555(A007948(n+1))+A003557(n+1)` -/
def P3958087845431618774.Spec : Prop :=
  ∀ n, P3958087845431618774.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P8386095737642326577

`A015052(A015052(n+1))+A003557(n+1)`
-/

namespace A076332.P8386095737642326577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat + A003557 (n + 1)

end

end A076332.P8386095737642326577

namespace A076332

/-- `A015052(A015052(n+1))+A003557(n+1)` -/
def P8386095737642326577.Spec : Prop :=
  ∀ n, P8386095737642326577.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P1552011134224085623

`A015053(A015053(n+1))+A003557(n+1)`
-/

namespace A076332.P1552011134224085623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat + A003557 (n + 1)

end

end A076332.P1552011134224085623

namespace A076332

/-- `A015053(A015053(n+1))+A003557(n+1)` -/
def P1552011134224085623.Spec : Prop :=
  ∀ n, P1552011134224085623.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P17580144943372262148

`A053166(A053166(n+1))+A003557(n+1)`
-/

namespace A076332.P17580144943372262148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1)).toNat + A003557 (n + 1)

end

end A076332.P17580144943372262148

namespace A076332

/-- `A053166(A053166(n+1))+A003557(n+1)` -/
def P17580144943372262148.Spec : Prop :=
  ∀ n, P17580144943372262148.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P6475616408089797078

`A304768(A062759(n+1))+A003557(n+1)`
-/

namespace A076332.P6475616408089797078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304768 (A062759 (n + 1)).toNat + A003557 (n + 1)

end

end A076332.P6475616408089797078

namespace A076332

/-- `A304768(A062759(n+1))+A003557(n+1)` -/
def P6475616408089797078.Spec : Prop :=
  ∀ n, P6475616408089797078.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P16144856698217325594

`A062759(A304776(n+1))+A003557(n+1)`
-/

namespace A076332.P16144856698217325594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A304776 (n + 1)).toNat + A003557 (n + 1)

end

end A076332.P16144856698217325594

namespace A076332

/-- `A062759(A304776(n+1))+A003557(n+1)` -/
def P16144856698217325594.Spec : Prop :=
  ∀ n, P16144856698217325594.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P9302578160639466855

`A003557(n+1)+A318305(n+1)+A173557(n+1)`
-/

namespace A076332.P9302578160639466855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A318305 (n + 1) + A173557 (n + 1))

end

end A076332.P9302578160639466855

namespace A076332

/-- `A003557(n+1)+A318305(n+1)+A173557(n+1)` -/
def P9302578160639466855.Spec : Prop :=
  ∀ n, P9302578160639466855.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P15284331885873131583

`A007947(n+1)+A300719(n+1)+A300717(n+1)`
-/

namespace A076332.P15284331885873131583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A300719 (n + 1) + A300717 (n + 1))

end

end A076332.P15284331885873131583

namespace A076332

/-- `A007947(n+1)+A300719(n+1)+A300717(n+1)` -/
def P15284331885873131583.Spec : Prop :=
  ∀ n, P15284331885873131583.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P5868669366874249532

`A007947(n+1)+A229022(n+1)-A008472(n+1)`
-/

namespace A076332.P5868669366874249532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A229022 (n + 1) - A008472 (n + 1))

end

end A076332.P5868669366874249532

namespace A076332

/-- `A007947(n+1)+A229022(n+1)-A008472(n+1)` -/
def P5868669366874249532.Spec : Prop :=
  ∀ n, P5868669366874249532.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P14597574281094817472

`A007947(n+1)+A335341(n+1)-A336567(n+1)`
-/

namespace A076332.P14597574281094817472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A335341 (n + 1) - A336567 (n + 1))

end

end A076332.P14597574281094817472

namespace A076332

/-- `A007947(n+1)+A335341(n+1)-A336567(n+1)` -/
def P14597574281094817472.Spec : Prop :=
  ∀ n, P14597574281094817472.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P7413561024235146714

`A007947(n+1)+A348037(n+1)*A348039(n+1)`
-/

namespace A076332.P7413561024235146714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A348037 (n + 1) * A348039 (n + 1)

end

end A076332.P7413561024235146714

namespace A076332

/-- `A007947(n+1)+A348037(n+1)*A348039(n+1)` -/
def P7413561024235146714.Spec : Prop :=
  ∀ n, P7413561024235146714.a n = A076332 (n + 1)

end A076332

/-! ## A076332.P2117559953784071219

`A007947(n+1)+A001615(n+1)/A048250(n+1)`
-/

namespace A076332.P2117559953784071219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) + (A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A076332.P2117559953784071219

namespace A076332

/-- `A007947(n+1)+A001615(n+1)/A048250(n+1)` -/
def P2117559953784071219.Spec : Prop :=
  ∀ n, P2117559953784071219.a n = (A076332 (n + 1) : ℚ)

end A076332

/-!
# A076333: Squarefree kernels of nonsquarefree numbers.

The programs for A076333, the canonical program `A076333.P16728380609905243080` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076333 has offset 1).

The definition of A076333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076333.P778768410953124474

`A076619(n+1)-1`
-/

namespace A076333.P778768410953124474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076619 (n + 1) - 1

end

end A076333.P778768410953124474

namespace A076333

/-- `A076619(n+1)-1` -/
def P778768410953124474.Spec : Prop :=
  ∀ n, P778768410953124474.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P16728380609905243080

`∏{p}[A013929(n+1), #]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076333

/-- `∏{p}[A013929(n+1), #]` -/
def P16728380609905243080.Spec : Prop :=
  ∀ n, (P16728380609905243080.a n : ℤ) = A076333 (n + 1)

theorem P16728380609905243080.correct : P16728380609905243080.Spec := by
  intro n
  simp only [A076333, Nat.add_sub_cancel]

end A076333

/-! ## A076333.P12863600608017956279

`∏{p}[A015049(n+1), #]`
-/

namespace A076333.P12863600608017956279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076333.P12863600608017956279

namespace A076333

/-- `∏{p}[A015049(n+1), #]` -/
def P12863600608017956279.Spec : Prop :=
  ∀ n, (P12863600608017956279.a n : ℤ) = A076333 (n + 1)

end A076333

/-! ## A076333.P6585555165656293170

`∏{p}[A015050(n+1), #]`
-/

namespace A076333.P6585555165656293170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076333.P6585555165656293170

namespace A076333

/-- `∏{p}[A015050(n+1), #]` -/
def P6585555165656293170.Spec : Prop :=
  ∀ n, (P6585555165656293170.a n : ℤ) = A076333 (n + 1)

end A076333

/-! ## A076333.P17580406903410635995

`∏{p}[A015051(n+1), #]`
-/

namespace A076333.P17580406903410635995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076333.P17580406903410635995

namespace A076333

/-- `∏{p}[A015051(n+1), #]` -/
def P17580406903410635995.Spec : Prop :=
  ∀ n, (P17580406903410635995.a n : ℤ) = A076333 (n + 1)

end A076333

/-! ## A076333.P30780756107305425

`∏{p}[A362041(n+1), #]`
-/

namespace A076333.P30780756107305425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362041 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076333.P30780756107305425

namespace A076333

/-- `∏{p}[A362041(n+1), #]` -/
def P30780756107305425.Spec : Prop :=
  ∀ n, (P30780756107305425.a n : ℤ) = A076333 (n + 1)

end A076333

/-! ## A076333.P13636184948330911668

`∏{p}[A384064(n+1), #]`
-/

namespace A076333.P13636184948330911668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076333.P13636184948330911668

namespace A076333

/-- `∏{p}[A384064(n+1), #]` -/
def P13636184948330911668.Spec : Prop :=
  ∀ n, (P13636184948330911668.a n : ℤ) = A076333 (n + 1)

end A076333

/-! ## A076333.P3429154276433821462

`A007947(A013929(n+1))`
-/

namespace A076333.P3429154276433821462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A013929 (n + 1)).toNat

end

end A076333.P3429154276433821462

namespace A076333

/-- `A007947(A013929(n+1))` -/
def P3429154276433821462.Spec : Prop :=
  ∀ n, P3429154276433821462.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P2067248144086332087

`A007947(A015049(n+1))`
-/

namespace A076333.P2067248144086332087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A015049 (n + 1)).toNat

end

end A076333.P2067248144086332087

namespace A076333

/-- `A007947(A015049(n+1))` -/
def P2067248144086332087.Spec : Prop :=
  ∀ n, P2067248144086332087.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P10153359081120791385

`A007947(A015050(n+1))`
-/

namespace A076333.P10153359081120791385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A015050 (n + 1)).toNat

end

end A076333.P10153359081120791385

namespace A076333

/-- `A007947(A015050(n+1))` -/
def P10153359081120791385.Spec : Prop :=
  ∀ n, P10153359081120791385.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P5873096084188648133

`A007947(A015051(n+1))`
-/

namespace A076333.P5873096084188648133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A015051 (n + 1)).toNat

end

end A076333.P5873096084188648133

namespace A076333

/-- `A007947(A015051(n+1))` -/
def P5873096084188648133.Spec : Prop :=
  ∀ n, P5873096084188648133.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P3865274967511584436

`A007947(A362041(n+1))`
-/

namespace A076333.P3865274967511584436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A362041 (n + 1)).toNat

end

end A076333.P3865274967511584436

namespace A076333

/-- `A007947(A362041(n+1))` -/
def P3865274967511584436.Spec : Prop :=
  ∀ n, P3865274967511584436.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P1547324396792486052

`A007947(A384064(n+1))`
-/

namespace A076333.P1547324396792486052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A384064 (n + 1)).toNat

end

end A076333.P1547324396792486052

namespace A076333

/-- `A007947(A384064(n+1))` -/
def P1547324396792486052.Spec : Prop :=
  ∀ n, P1547324396792486052.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P3946921128347033276

`A007947(comp[C(A007947(n+1), n)])`
-/

namespace A076333.P3946921128347033276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007947 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A076333.P3946921128347033276

namespace A076333

/-- `A007947(comp[C(A007947(n+1), n)])` -/
def P3946921128347033276.Spec : Prop :=
  ∀ n, P3946921128347033276.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P16109148398604666581

`A007947(lt[1, A005361(n+1)]+1)`
-/

namespace A076333.P16109148398604666581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A076333.P16109148398604666581

namespace A076333

/-- `A007947(lt[1, A005361(n+1)]+1)` -/
def P16109148398604666581.Spec : Prop :=
  ∀ n, P16109148398604666581.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P16773476029964258754

`A013929(n+1)/A084936(n+1)`
-/

namespace A076333.P16773476029964258754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013929 (n + 1) : ℚ) / (A084936 (n + 1) : ℚ)

end

end A076333.P16773476029964258754

namespace A076333

/-- `A013929(n+1)/A084936(n+1)` -/
def P16773476029964258754.Spec : Prop :=
  ∀ n, P16773476029964258754.a n = (A076333 (n + 1) : ℚ)

end A076333

/-! ## A076333.P16160277047835326186

`A007947(lt[A007947(n+1), n]+1)`
-/

namespace A076333.P16160277047835326186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A076333.P16160277047835326186

namespace A076333

/-- `A007947(lt[A007947(n+1), n]+1)` -/
def P16160277047835326186.Spec : Prop :=
  ∀ n, P16160277047835326186.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P17098158830747171982

`A007947(comp[A007947(n+1)-1]+1)`
-/

namespace A076333.P17098158830747171982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A076333.P17098158830747171982

namespace A076333

/-- `A007947(comp[A007947(n+1)-1]+1)` -/
def P17098158830747171982.Spec : Prop :=
  ∀ n, P17098158830747171982.a n = A076333 (n + 1)

end A076333

/-! ## A076333.P15812378215877616842

`∏{p}[A162966(n+2), #]`
-/

namespace A076333.P15812378215877616842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A076333.P15812378215877616842

namespace A076333

/-- `∏{p}[A162966(n+2), #]` -/
def P15812378215877616842.Spec : Prop :=
  ∀ n, (P15812378215877616842.a n : ℤ) = A076333 (n + 1)

end A076333

/-! ## A076333.P1003603193790006867

`A007947(A162966(n+2))`
-/

namespace A076333.P1003603193790006867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A162966 (n + 2)).toNat

end

end A076333.P1003603193790006867

namespace A076333

/-- `A007947(A162966(n+2))` -/
def P1003603193790006867.Spec : Prop :=
  ∀ n, P1003603193790006867.a n = A076333 (n + 1)

end A076333

/-!
# A076334: Differences between successive squarefree kernels.

The programs for A076334, the canonical program `A076334.P17741654376477125512` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076334 has offset 1).

The definition of A076334 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076334.P17741654376477125512

`A007947(n+2)-A007947(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076334

/-- `A007947(n+2)-A007947(n+1)` -/
def P17741654376477125512.Spec : Prop :=
  ∀ n, P17741654376477125512.a n = A076334 (n + 1)

theorem P17741654376477125512.correct : P17741654376477125512.Spec := by
  intro n
  simp only [A076334, Nat.add_sub_cancel]

end A076334

/-! ## A076334.P17474328677838695790

`∏{p}[n+2, #]-∏{p}[n+1, #]`
-/

namespace A076334.P17474328677838695790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A076334.P17474328677838695790

namespace A076334

/-- `∏{p}[n+2, #]-∏{p}[n+1, #]` -/
def P17474328677838695790.Spec : Prop :=
  ∀ n, P17474328677838695790.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P16288712950140207251

`Δ[A007947(n+1)]`
-/

namespace A076334.P16288712950140207251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P16288712950140207251

namespace A076334

/-- `Δ[A007947(n+1)]` -/
def P16288712950140207251.Spec : Prop :=
  ∀ n, P16288712950140207251.a n = A076334 (n + 1)

theorem P16288712950140207251.correct : P16288712950140207251.Spec := by
  intro n
  simp only [A076334, Nat.add_sub_cancel, A076334.P16288712950140207251.f1, A076334.P16288712950140207251.a, A076334.P17741654376477125512.a, SequenceMachineLib.memo_apply]

end A076334

/-! ## A076334.P18390168542323956543

`Δ[n%A099985(n+1)]`
-/

namespace A076334.P18390168542323956543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A099985 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P18390168542323956543

namespace A076334

/-- `Δ[n%A099985(n+1)]` -/
def P18390168542323956543.Spec : Prop :=
  ∀ n, P18390168542323956543.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P758537572852167899

`Δ[A005117(A322590(n+1))]`
-/

namespace A076334.P758537572852167899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A322590 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P758537572852167899

namespace A076334

/-- `Δ[A005117(A322590(n+1))]` -/
def P758537572852167899.Spec : Prop :=
  ∀ n, P758537572852167899.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P10205344355824816798

`Δ[A007913(A331737(n+1))]`
-/

namespace A076334.P10205344355824816798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A331737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P10205344355824816798

namespace A076334

/-- `Δ[A007913(A331737(n+1))]` -/
def P10205344355824816798.Spec : Prop :=
  ∀ n, P10205344355824816798.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P1543350314061911831

`Δ[A007913(n+1)*A336643(n+1)]`
-/

namespace A076334.P1543350314061911831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A336643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P1543350314061911831

namespace A076334

/-- `Δ[A007913(n+1)*A336643(n+1)]` -/
def P1543350314061911831.Spec : Prop :=
  ∀ n, P1543350314061911831.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P13410048535645074601

`Δ[A007913((n+1)/A336643(n+1))]`
-/

namespace A076334.P13410048535645074601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P13410048535645074601

namespace A076334

/-- `Δ[A007913((n+1)/A336643(n+1))]` -/
def P13410048535645074601.Spec : Prop :=
  ∀ n, P13410048535645074601.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P16491569706940802321

`Δ[∏{p}[n+1, #]]`
-/

namespace A076334.P16491569706940802321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076334.P16491569706940802321

namespace A076334

/-- `Δ[∏{p}[n+1, #]]` -/
def P16491569706940802321.Spec : Prop :=
  ∀ n, P16491569706940802321.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P4550539541172801884

`-Δ[-∏{p}[2*n-(n-1), #]]`
-/

namespace A076334.P4550539541172801884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∏ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A076334.P4550539541172801884

namespace A076334

/-- `-Δ[-∏{p}[2*n-(n-1), #]]` -/
def P4550539541172801884.Spec : Prop :=
  ∀ n, P4550539541172801884.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P11165627826691959888

`Δ[A075423(n+1)]`
-/

namespace A076334.P11165627826691959888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P11165627826691959888

namespace A076334

/-- `Δ[A075423(n+1)]` -/
def P11165627826691959888.Spec : Prop :=
  ∀ n, P11165627826691959888.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P2064634591939086044

`Δ[A076618(n+1)]`
-/

namespace A076334.P2064634591939086044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P2064634591939086044

namespace A076334

/-- `Δ[A076618(n+1)]` -/
def P2064634591939086044.Spec : Prop :=
  ∀ n, P2064634591939086044.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P16032114862909595676

`Δ[abs(A062953(n+1))]`
-/

namespace A076334.P16032114862909595676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P16032114862909595676

namespace A076334

/-- `Δ[abs(A062953(n+1))]` -/
def P16032114862909595676.Spec : Prop :=
  ∀ n, P16032114862909595676.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P5443516730719752674

`Δ[sqrt(A078615(n+1))]`
-/

namespace A076334.P5443516730719752674
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P5443516730719752674

namespace A076334

/-- `Δ[sqrt(A078615(n+1))]` -/
def P5443516730719752674.Spec : Prop :=
  ∀ n, P5443516730719752674.a n = (A076334 (n + 1) : ℝ)

end A076334

/-! ## A076334.P3667710852936205572

`1-Δ[A066503(n+1)]`
-/

namespace A076334.P3667710852936205572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A076334.P3667710852936205572

namespace A076334

/-- `1-Δ[A066503(n+1)]` -/
def P3667710852936205572.Spec : Prop :=
  ∀ n, P3667710852936205572.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P17823764423536286812

`Δ[A073353(n+1)]-1`
-/

namespace A076334.P17823764423536286812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A076334.P17823764423536286812

namespace A076334

/-- `Δ[A073353(n+1)]-1` -/
def P17823764423536286812.Spec : Prop :=
  ∀ n, P17823764423536286812.a n = A076334 (n + 1)

end A076334

/-! ## A076334.P14198120687918594205

`Δ[(n+1)/A003557(n+1)]`
-/

namespace A076334.P14198120687918594205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P14198120687918594205

namespace A076334

/-- `Δ[(n+1)/A003557(n+1)]` -/
def P14198120687918594205.Spec : Prop :=
  ∀ n, P14198120687918594205.a n = (A076334 (n + 1) : ℚ)

end A076334

/-! ## A076334.P12756122380065703203

`Δ[A064549(n+1)/(n+1)]`
-/

namespace A076334.P12756122380065703203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P12756122380065703203

namespace A076334

/-- `Δ[A064549(n+1)/(n+1)]` -/
def P12756122380065703203.Spec : Prop :=
  ∀ n, P12756122380065703203.a n = (A076334 (n + 1) : ℚ)

end A076334

/-! ## A076334.P10266556954000388123

`Δ[(n+1)²/A102631(n+1)]`
-/

namespace A076334.P10266556954000388123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A102631 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P10266556954000388123

namespace A076334

/-- `Δ[(n+1)²/A102631(n+1)]` -/
def P10266556954000388123.Spec : Prop :=
  ∀ n, P10266556954000388123.a n = (A076334 (n + 1) : ℚ)

end A076334

/-! ## A076334.P13018323909652439401

`Δ[A355038(n+1)/(n+1)²]`
-/

namespace A076334.P13018323909652439401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355038 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076334.P13018323909652439401

namespace A076334

/-- `Δ[A355038(n+1)/(n+1)²]` -/
def P13018323909652439401.Spec : Prop :=
  ∀ n, P13018323909652439401.a n = (A076334 (n + 1) : ℚ)

end A076334

/-!
# A076336: (Provable) Sierpiński numbers: odd numbers n such that for all k >= 1 the numbers n*2^k + 1 are composite.

The programs for A076336, there is no canonical definition to state claims against.
-/

/-! ## A076336.P14518202173153989007

`A101036(n+1)-A271110(n+1)`
-/

namespace A076336.P14518202173153989007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (n + 1) - A271110 (n + 1)

end

end A076336.P14518202173153989007

/-! ## A076336.P6711209741114628307

`A101036(n+1)+A033999(2*n+1)*A271110(n+1)`
-/

namespace A076336.P6711209741114628307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101036 (n + 1) + A033999 (2 * n + 1) * A271110 (n + 1)

end

end A076336.P6711209741114628307

/-! ## A076336.P8105272621055796241

`record[A101036(A108922(n))%A271110(n+1)]`
-/

namespace A076336.P8105272621055796241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101036 (A108922 n).toNat) (A271110 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076336.P8105272621055796241

/-! ## A076336.P10445919030099520001

`record[(A258154(n+1)+A101036(n+1))%A271110(n+1)]`
-/

namespace A076336.P10445919030099520001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258154 (n + 1) + A101036 (n + 1)) (A271110 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076336.P10445919030099520001

/-!
# A076338: a(n) = 512*n + 1.

The programs for A076338, the canonical program `A076338.P7585981930098332077` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076338 has offset 0).

The definition of A076338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `512*n+1` (program `A076338.P7585981930098332077`, by `A076338.P7585981930098332077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076338.P7585981930098332077

`512*n+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A076338

/-- `512*n+1` -/
def P7585981930098332077.Spec : Prop :=
  ∀ n, (P7585981930098332077.a n : ℤ) = A076338 n

theorem P7585981930098332077.correct : P7585981930098332077.Spec := by
  intro n
  simp only [A076338]

end A076338

/-!
# A076339: Primes of the form 512*k+1.

The programs for A076339, there is no canonical definition to state claims against.
-/

/-! ## A076339.P14573360455566541045

`∩[A208177(n+1), A076338(n)]`
-/

namespace A076339.P14573360455566541045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P14573360455566541045

/-! ## A076339.P12702127371195839211

`∩[A208178(n+1), A076338(n)]`
-/

namespace A076339.P12702127371195839211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P12702127371195839211

/-! ## A076339.P4778016675455863579

`∩[A142925(n+1), A076338(n)]`
-/

namespace A076339.P4778016675455863579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P4778016675455863579

/-! ## A076339.P869712975532813039

`∩[A158231(2*(n+1)), A208177(n+2)]`
-/

namespace A076339.P869712975532813039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P869712975532813039

/-! ## A076339.P3373599874515791198

`∩[A133870(n+1), A076338(n)]`
-/

namespace A076339.P3373599874515791198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P3373599874515791198

/-! ## A076339.P7775307768485931025

`∩[A209554(n+1), A076338(n)]`
-/

namespace A076339.P7775307768485931025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P7775307768485931025

/-! ## A076339.P16004290023775140527

`∩[A158231(2*(n+1)), A142925(n+2)]`
-/

namespace A076339.P16004290023775140527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P16004290023775140527

/-! ## A076339.P12211418983909848272

`∩[A094407(n+1), A076338(n)]`
-/

namespace A076339.P12211418983909848272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P12211418983909848272

/-! ## A076339.P16840332292942638419

`∩[A158231(2*(n+1)), A133870(n+2)]`
-/

namespace A076339.P16840332292942638419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P16840332292942638419

/-! ## A076339.P14336808786505467559

`∩[A158231(2*(n+1)), A209554(n+2)]`
-/

namespace A076339.P14336808786505467559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076339.P14336808786505467559

/-! ## A076339.P3005607362625918366

`p?[8*64*n+1]`
-/

namespace A076339.P3005607362625918366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (64 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A076339.P3005607362625918366

/-! ## A076339.P8140277384487154181

`or(1, p?[A076338(n)])`
-/

namespace A076339.P8140277384487154181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A076339.P8140277384487154181

/-! ## A076339.P16507078194584317381

`∏{d}[p?[A158231(Δ[n²]+1)], #]`
-/

namespace A076339.P16507078194584317381
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A076339.P16507078194584317381

/-! ## A076339.P15720106209851008806

`p?[A076338(n+1)]/gcd(n, n+1)`
-/

namespace A076339.P15720106209851008806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A076339.P15720106209851008806

/-! ## A076339.P5061324396364169706

`record[p?[A076338(A052938(n))]]`
-/

namespace A076339.P5061324396364169706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076339.P5061324396364169706

/-! ## A076339.P1939287103135043290

`record[p?[A076338(A126759(n))]]`
-/

namespace A076339.P1939287103135043290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076339.P1939287103135043290

/-! ## A076339.P15043521221167025224

`record[p?[A076338(A141256(n))]]`
-/

namespace A076339.P15043521221167025224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076339.P15043521221167025224

/-! ## A076339.P702859102693335763

`p?[A076338(n)]-A000035(2*n)`
-/

namespace A076339.P702859102693335763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000035 (2 * n)

end

end A076339.P702859102693335763

/-! ## A076339.P14837486597173382704

`p?[A076338(n)]%A157826(n+1)`
-/

namespace A076339.P14837486597173382704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157826 (n + 1))

end

end A076339.P14837486597173382704

/-! ## A076339.P17494597961503142847

`xor(p?[A076338(n)], A000035(4*n))`
-/

namespace A076339.P17494597961503142847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 (4 * n))

end

end A076339.P17494597961503142847

/-!
# A076340: Real part of the function defined multiplicatively on the complex numbers by 2->(2,0) and p->((floor(p/4)+floor((p mod 4)/2))*4,2-(p mod 4)) for odd primes p.

The programs for A076340, there is no canonical definition to state claims against.
-/

/-! ## A076340.P6708627215790461426

`4*A076341(n+1)-A076341(3*(n+1))`
-/

namespace A076340.P6708627215790461426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A076341 (n + 1) - A076341 (3 * (n + 1))

end

end A076340.P6708627215790461426

/-!
# A076341: Imaginary part of the function defined multiplicatively on the complex numbers by 2->(2,0) and p->((floor(p/4)+floor((p mod 4)/2))*4,2-(p mod 4)) for odd primes p.

The programs for A076341, there is no canonical definition to state claims against.
-/

/-! ## A076341.P17878113556596080645

`A076350(n+1)/(2*A076340(n+1))`
-/

namespace A076341.P17878113556596080645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076350 (n + 1) : ℚ) / (2 * A076340 (n + 1) : ℚ)

end

end A076341.P17878113556596080645

/-! ## A076341.P15864482642613767061

`A076350(n+1)/A076340(A103517(n))`
-/

namespace A076341.P15864482642613767061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076350 (n + 1) : ℚ) / (A076340 (A103517 n).toNat : ℚ)

end

end A076341.P15864482642613767061

/-! ## A076341.P6366744043506997001

`A076350(n+1)/A076340(Δ[A002378(n)])`
-/

namespace A076341.P6366744043506997001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076350 (n + 1) : ℚ) / (A076340 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A076341.P6366744043506997001

/-!
# A076342: a(n) = A076340(A000040(n)), real part of primes mapped as defined in A076340, A076341.

The programs for A076342, the canonical program `A076342.P17182392044292318344` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076342 has offset 1).

The definition of A076342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A070750, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076342.P17182392044292318344

`A000040(n+1)-A070750(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076342

/-- `A000040(n+1)-A070750(n+1)` -/
def P17182392044292318344.Spec : Prop :=
  ∀ n, P17182392044292318344.a n = A076342 (n + 1)

theorem P17182392044292318344.correct : P17182392044292318344.Spec := by
  intro n
  simp only [A076342, Nat.add_sub_cancel]

end A076342

/-! ## A076342.P4576696567700398062

`A100484(n+1)-A082542(n+1)`
-/

namespace A076342.P4576696567700398062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A082542 (n + 1)

end

end A076342.P4576696567700398062

namespace A076342

/-- `A100484(n+1)-A082542(n+1)` -/
def P4576696567700398062.Spec : Prop :=
  ∀ n, P4576696567700398062.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P10597774004393530958

`A267573(n+1)-2`
-/

namespace A076342.P10597774004393530958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267573 (n + 1) - 2

end

end A076342.P10597774004393530958

namespace A076342

/-- `A267573(n+1)-2` -/
def P10597774004393530958.Spec : Prop :=
  ∀ n, P10597774004393530958.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P14156989261950056290

`lcm(2, 1-A073579(n+1))`
-/

namespace A076342.P14156989261950056290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - A073579 (n + 1))

end

end A076342.P14156989261950056290

namespace A076342

/-- `lcm(2, 1-A073579(n+1))` -/
def P14156989261950056290.Spec : Prop :=
  ∀ n, (P14156989261950056290.a n : ℤ) = A076342 (n + 1)

end A076342

/-! ## A076342.P106896955545681247

`A040976(n+1)+A039702(n+1)`
-/

namespace A076342.P106896955545681247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + A039702 (n + 1)

end

end A076342.P106896955545681247

namespace A076342

/-- `A040976(n+1)+A039702(n+1)` -/
def P106896955545681247.Spec : Prop :=
  ∀ n, P106896955545681247.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P9239922855695139837

`A360323(n+1)/A006093(n+1)`
-/

namespace A076342.P9239922855695139837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360323 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)

end

end A076342.P9239922855695139837

namespace A076342

/-- `A360323(n+1)/A006093(n+1)` -/
def P9239922855695139837.Spec : Prop :=
  ∀ n, P9239922855695139837.a n = (A076342 (n + 1) : ℚ)

end A076342

/-! ## A076342.P7458830194427525782

`A006093(n+1)+A039702(n+1)-1`
-/

namespace A076342.P7458830194427525782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A039702 (n + 1) - 1)

end

end A076342.P7458830194427525782

namespace A076342

/-- `A006093(n+1)+A039702(n+1)-1` -/
def P7458830194427525782.Spec : Prop :=
  ∀ n, P7458830194427525782.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P3549324438700264031

`A006093(n+1)+1-A070750(n+1)`
-/

namespace A076342.P3549324438700264031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A070750 (n + 1))

end

end A076342.P3549324438700264031

namespace A076342

/-- `A006093(n+1)+1-A070750(n+1)` -/
def P3549324438700264031.Spec : Prop :=
  ∀ n, P3549324438700264031.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P11534838874384627553

`A000040(n+1)+A039702(n+1)-2`
-/

namespace A076342.P11534838874384627553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A039702 (n + 1) - 2)

end

end A076342.P11534838874384627553

namespace A076342

/-- `A000040(n+1)+A039702(n+1)-2` -/
def P11534838874384627553.Spec : Prop :=
  ∀ n, P11534838874384627553.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P8807811394256876351

`A075520(n+1)-(A001748(n+1)+2)`
-/

namespace A076342.P8807811394256876351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1) - (A001748 (n + 1) + 2)

end

end A076342.P8807811394256876351

namespace A076342

/-- `A075520(n+1)-(A001748(n+1)+2)` -/
def P8807811394256876351.Spec : Prop :=
  ∀ n, P8807811394256876351.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P18302891028190849994

`A052147(n+1)-(A070750(n+1)+2)`
-/

namespace A076342.P18302891028190849994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (A070750 (n + 1) + 2)

end

end A076342.P18302891028190849994

namespace A076342

/-- `A052147(n+1)-(A070750(n+1)+2)` -/
def P18302891028190849994.Spec : Prop :=
  ∀ n, P18302891028190849994.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P11456633127718046178

`A089241(n+1)-(A082542(n+1)+2)`
-/

namespace A076342.P11456633127718046178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - (A082542 (n + 1) + 2)

end

end A076342.P11456633127718046178

namespace A076342

/-- `A089241(n+1)-(A082542(n+1)+2)` -/
def P11456633127718046178.Spec : Prop :=
  ∀ n, P11456633127718046178.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P10334288157896565826

`2*A000040(n+1)-A082542(n+1)`
-/

namespace A076342.P10334288157896565826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A082542 (n + 1)

end

end A076342.P10334288157896565826

namespace A076342

/-- `2*A000040(n+1)-A082542(n+1)` -/
def P10334288157896565826.Spec : Prop :=
  ∀ n, P10334288157896565826.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P14819953875327688231

`A082542(n+1)-2*A070750(n+1)`
-/

namespace A076342.P14819953875327688231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082542 (n + 1) - 2 * A070750 (n + 1)

end

end A076342.P14819953875327688231

namespace A076342

/-- `A082542(n+1)-2*A070750(n+1)` -/
def P14819953875327688231.Spec : Prop :=
  ∀ n, P14819953875327688231.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P14459745696938949168

`A000040(n+1)+A100672(n+1)-A098033(n+1)`
-/

namespace A076342.P14459745696938949168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A100672 (n + 1) - A098033 (n + 1))

end

end A076342.P14459745696938949168

namespace A076342

/-- `A000040(n+1)+A100672(n+1)-A098033(n+1)` -/
def P14459745696938949168.Spec : Prop :=
  ∀ n, P14459745696938949168.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P17377766639701795542

`A000040(n+1)-A073579(n+1)/A000040(n+1)`
-/

namespace A076342.P17377766639701795542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) - (A073579 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A076342.P17377766639701795542

namespace A076342

/-- `A000040(n+1)-A073579(n+1)/A000040(n+1)` -/
def P17377766639701795542.Spec : Prop :=
  ∀ n, P17377766639701795542.a n = (A076342 (n + 1) : ℚ)

end A076342

/-! ## A076342.P14721596564459637770

`A001747(n+2)-A082542(n+1)`
-/

namespace A076342.P14721596564459637770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) - A082542 (n + 1)

end

end A076342.P14721596564459637770

namespace A076342

/-- `A001747(n+2)-A082542(n+1)` -/
def P14721596564459637770.Spec : Prop :=
  ∀ n, P14721596564459637770.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P6467208751230487189

`A158611(n+3)-A070750(n+1)`
-/

namespace A076342.P6467208751230487189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3) - A070750 (n + 1)

end

end A076342.P6467208751230487189

namespace A076342

/-- `A158611(n+3)-A070750(n+1)` -/
def P6467208751230487189.Spec : Prop :=
  ∀ n, P6467208751230487189.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P7331629573938482844

`A367013(A027883(n+1))`
-/

namespace A076342.P7331629573938482844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367013 (A027883 (n + 1)).toNat

end

end A076342.P7331629573938482844

namespace A076342

/-- `A367013(A027883(n+1))` -/
def P7331629573938482844.Spec : Prop :=
  ∀ n, P7331629573938482844.a n = A076342 (n + 1)

end A076342

/-! ## A076342.P8186365283244380916

`A076345(A024620(n+1))`
-/

namespace A076342.P8186365283244380916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076345 (A024620 (n + 1)).toNat

end

end A076342.P8186365283244380916

namespace A076342

/-- `A076345(A024620(n+1))` -/
def P8186365283244380916.Spec : Prop :=
  ∀ n, P8186365283244380916.a n = A076342 (n + 1)

end A076342

/-!
# A076343: A076340(A001358(n)), real part of semiprimes mapped as defined in A076340, A076341.

The programs for A076343, there is no canonical definition to state claims against.
-/

/-! ## A076343.P14898653077287506506

`A076340(A001358(n+1))`
-/

namespace A076343.P14898653077287506506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (A001358 (n + 1)).toNat

end

end A076343.P14898653077287506506

/-! ## A076343.P2036102839576402641

`A076340(A176540(n+2))`
-/

namespace A076343.P2036102839576402641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (A176540 (n + 2)).toNat

end

end A076343.P2036102839576402641

/-! ## A076343.P9075669741148085317

`A076340(A186621(n+1)+1)`
-/

namespace A076343.P9075669741148085317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (A186621 (n + 1) + 1).toNat

end

end A076343.P9075669741148085317

/-! ## A076343.P7905471431710241128

`A076340(eq[2, A001222(n+1)]+1)`
-/

namespace A076343.P7905471431710241128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076343.P7905471431710241128

/-! ## A076343.P8805339045355870520

`A076340(eq[4, A050338(n+1)]+1)`
-/

namespace A076343.P8805339045355870520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076343.P8805339045355870520

/-!
# A076344: A076341(A001358(n)), imaginary part of semiprimes mapped as defined in A076340, A076341.

The programs for A076344, there is no canonical definition to state claims against.
-/

/-! ## A076344.P6996510564016901058

`A076341(A001358(n+1))`
-/

namespace A076344.P6996510564016901058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (A001358 (n + 1)).toNat

end

end A076344.P6996510564016901058

/-! ## A076344.P12205599027621745437

`A076341(A176540(n+2))`
-/

namespace A076344.P12205599027621745437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (A176540 (n + 2)).toNat

end

end A076344.P12205599027621745437

/-! ## A076344.P7823179809753559434

`A076341(lt[1, A105700(n)])`
-/

namespace A076344.P7823179809753559434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076344.P7823179809753559434

/-! ## A076344.P943402747900452039

`A076341(eq[2, A105700(n)])`
-/

namespace A076344.P943402747900452039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076344.P943402747900452039

/-! ## A076344.P3877396428378819077

`A076341(sqrt(A074985(n+1)))`
-/

namespace A076344.P3877396428378819077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A076344.P3877396428378819077

/-!
# A076345: A076340(A000961(n)), real part of prime powers mapped as defined in A076340, A076341.

The programs for A076345, there is no canonical definition to state claims against.
-/

/-! ## A076345.P12032589577856772210

`A076340(A000961(n+1))`
-/

namespace A076345.P12032589577856772210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (A000961 (n + 1)).toNat

end

end A076345.P12032589577856772210

/-! ## A076345.P9239940192848770120

`A076340(sqrt(A056798(n+1)))`
-/

namespace A076345.P9239940192848770120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A076345.P9239940192848770120

/-! ## A076345.P4828503669388215778

`A076340(record[A034699(n+1)])`
-/

namespace A076345.P4828503669388215778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076345.P4828503669388215778

/-! ## A076345.P16268106767711551931

`A076340(A181062(n+1)+1)`
-/

namespace A076345.P16268106767711551931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (A181062 (n + 1) + 1).toNat

end

end A076345.P16268106767711551931

/-! ## A076345.P4608782261825150462

`A076340(record[(n+1)/A001221(n+1)!])`
-/

namespace A076345.P4608782261825150462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A076345.P4608782261825150462

/-! ## A076345.P13473042533430797480

`A076340(A121315(n+1)/A246655(n+1))`
-/

namespace A076345.P13473042533430797480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (SequenceMachineLib.roundAway ((A121315 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ))).toNat

end

end A076345.P13473042533430797480

/-!
# A076346: A076341(A000961(n)), imaginary part of prime powers mapped as defined in A076340, A076341.

The programs for A076346, there is no canonical definition to state claims against.
-/

/-! ## A076346.P9177298106174096888

`A076341(A000961(n+1))`
-/

namespace A076346.P9177298106174096888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (A000961 (n + 1)).toNat

end

end A076346.P9177298106174096888

/-! ## A076346.P4981807448230100867

`A076341(record[A217434(n+1)])`
-/

namespace A076346.P4981807448230100867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076346.P4981807448230100867

/-! ## A076346.P588396326270667443

`A076341(record[A324388(n+1)])`
-/

namespace A076346.P588396326270667443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076346.P588396326270667443

/-! ## A076346.P11137757203682532850

`A076341(A377051(∑[n]))`
-/

namespace A076346.P11137757203682532850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (A377051 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A076346.P11137757203682532850

/-!
# A076347: A076340(A005117(n)), real part of squarefree numbers mapped as defined in A076340, A076341.

The programs for A076347, there is no canonical definition to state claims against.
-/

/-! ## A076347.P15183831995202086690

`A076340(A005117(n+1))`
-/

namespace A076347.P15183831995202086690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (A005117 (n + 1)).toNat

end

end A076347.P15183831995202086690

/-! ## A076347.P3973652536613744704

`A076340(record[A007947(n+1)])`
-/

namespace A076347.P3973652536613744704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076347.P3973652536613744704

/-! ## A076347.P16191323218090815728

`A076340(A000194(record[(n+1)*∏{p}[n+1, #]]))`
-/

namespace A076347.P16191323218090815728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (A000194 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A076347.P16191323218090815728

/-!
# A076348: A076341(A005117(n)), imaginary part of squarefree numbers mapped as defined in A076340, A076341.

The programs for A076348, there is no canonical definition to state claims against.
-/

/-! ## A076348.P726543853674251156

`A076341(record[∏{p}[n, #]])`
-/

namespace A076348.P726543853674251156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A076348.P726543853674251156

/-! ## A076348.P13907018158629742599

`A076341(A005117(n+1))`
-/

namespace A076348.P13907018158629742599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (A005117 (n + 1)).toNat

end

end A076348.P13907018158629742599

/-! ## A076348.P3593991775083062778

`A076341(record[A007947(n+1)])`
-/

namespace A076348.P3593991775083062778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076348.P3593991775083062778

/-! ## A076348.P7159713807867868756

`A076341(record[A353832(n+1)])`
-/

namespace A076348.P7159713807867868756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076348.P7159713807867868756

/-! ## A076348.P1389084577028465447

`A076341(A325511(n+1))%A336989(2*(n+1))`
-/

namespace A076348.P1389084577028465447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076341 (A325511 (n + 1)).toNat) (A336989 (2 * (n + 1)))

end

end A076348.P1389084577028465447

/-!
# A076349: A076340(A000290(n)), real part of squares mapped as defined in A076340, A076341.

The programs for A076349, there is no canonical definition to state claims against.
-/

/-! ## A076349.P1799822445483559875

`A076340(n+1)²-A076341(n+1)²`
-/

namespace A076349.P1799822445483559875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (n + 1) ^ 2 - A076341 (n + 1) ^ 2

end

end A076349.P1799822445483559875

/-! ## A076349.P12344039773752455612

`A076340((n+1)²)`
-/

namespace A076349.P12344039773752455612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 ((n + 1) ^ 2)

end

end A076349.P12344039773752455612

/-!
# A076350: A076341(A000290(n)), imaginary part of squares mapped as defined in A076340, A076341.

The programs for A076350, there is no canonical definition to state claims against.
-/

/-! ## A076350.P9953580272345286041

`2*A076340(n+1)*A076341(n+1)`
-/

namespace A076350.P9953580272345286041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A076340 (n + 1) * A076341 (n + 1))

end

end A076350.P9953580272345286041

/-! ## A076350.P1557606226691859476

`A076340(n+1)*A076341(A103517(n))`
-/

namespace A076350.P1557606226691859476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (n + 1) * A076341 (A103517 n).toNat

end

end A076350.P1557606226691859476

/-! ## A076350.P18308861205673940021

`A076340(n+1)*A076341(Δ[A002378(n)])`
-/

namespace A076350.P18308861205673940021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076340 (n + 1) * A076341 (f1 (n + 1) - f1 n).toNat

end

end A076350.P18308861205673940021

/-! ## A076350.P15767836803522587513

`A076341((n+1)²)`
-/

namespace A076350.P15767836803522587513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 ((n + 1) ^ 2)

end

end A076350.P15767836803522587513

/-! ## A076350.P790688516911406398

`A076341(A000290(n+1))+A045833(3*n+3)`
-/

namespace A076350.P790688516911406398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (A000290 (n + 1)).toNat + A045833 (3 * n + 3)

end

end A076350.P790688516911406398

/-!
# A076351: Numbers n such that A076341(n)=0.

The programs for A076351, there is no canonical definition to state claims against.
-/

/-! ## A076351.P6614172545381003569

`eq[0, A076341(n+1)]+1`
-/

namespace A076351.P6614172545381003569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076351.P6614172545381003569

/-! ## A076351.P16883900386333485148

`eq[1, A143539(A255298(n))]`
-/

namespace A076351.P16883900386333485148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (A255298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076351.P16883900386333485148

/-! ## A076351.P3209987791728983312

`eq[1, A053268(A361734(n))]`
-/

namespace A076351.P3209987791728983312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053268 (A361734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076351.P3209987791728983312

/-! ## A076351.P13603107625183852805

`eq[1, A113129(A323889(n))]`
-/

namespace A076351.P13603107625183852805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113129 (A323889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076351.P13603107625183852805

/-! ## A076351.P3033174938626141798

`eq[1, A167542(A286378(n))]`
-/

namespace A076351.P3033174938626141798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167542 (A286378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076351.P3033174938626141798

/-!
# A076352: Squarefree numbers k such that A076341(k) = 0.

The programs for A076352, there is no canonical definition to state claims against.
-/

/-! ## A076352.P5238559861743475453

`record[∏{p}[A076351(n+1), #]]`
-/

namespace A076352.P5238559861743475453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076351 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076352.P5238559861743475453

/-! ## A076352.P3317720354773770557

`record[A007913(A076351(n+1))]`
-/

namespace A076352.P3317720354773770557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A076351 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076352.P3317720354773770557

/-! ## A076352.P3637397033133615090

`filter[A076351(n+1), A008966(#)]`
-/

namespace A076352.P3637397033133615090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A076352.P3637397033133615090

/-! ## A076352.P14077016540523107736

`filter[A076351(n+1), A323154(#)]`
-/

namespace A076352.P14077016540523107736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A076352.P14077016540523107736

/-! ## A076352.P7170877083651893615

`filter[A076351(n+1), A353559(#)]`
-/

namespace A076352.P7170877083651893615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A076352.P7170877083651893615

/-!
# A076353: Numbers n such that Sum_{k=1..n} d(k) is an integer, where d(k) is the decimal fraction 0.floor(sqrt(k)) (e.g. d(16)=0.4).

The programs for A076353, there is no canonical definition to state claims against.
-/

/-! ## A076353.P10736157723848574914

`eq[A050782(A022554(n)), A151933(n)]`
-/

namespace A076353.P10736157723848574914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A022554 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076353.P10736157723848574914

/-!
# A076354: Numbers n such that 210*n-1 is prime.

The programs for A076354, there is no canonical definition to state claims against.
-/

/-! ## A076354.P8435569096947250738

`eq[1, A061358(3*70*n+1)]`
-/

namespace A076354.P8435569096947250738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (3 * (70 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076354.P8435569096947250738

/-! ## A076354.P9754473932645588826

`A005117(A333214(n+2))-A257990(A326077(3*n+1)+1)`
-/

namespace A076354.P9754473932645588826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A333214 (n + 2)).toNat - A257990 (A326077 (3 * n + 1) + 1).toNat

end

end A076354.P9754473932645588826

/-! ## A076354.P2094206576742623229

`∑[val(A265791(n+1)+A007953(3*n+2), 2)]+n`
-/

namespace A076354.P2094206576742623229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265791 (n + 1) + A007953 (3 * n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A076354.P2094206576742623229

/-!
# A076355: Numbers n such that 210*n + 11 is prime.

The programs for A076355, the canonical program `A076355.P15231804744908893617` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076355 has offset 1).

The definition of A076355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140840, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076355.P15231804744908893617

`(A140840(n+1)-11)/210`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076355

/-- `(A140840(n+1)-11)/210` -/
def P15231804744908893617.Spec : Prop :=
  ∀ n, P15231804744908893617.a n = (A076355 (n + 1) : ℚ)

end A076355

/-! ## A076355.P9255258173079642720

`eq[1, A068695(21*n+1)]`
-/

namespace A076355.P9255258173079642720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (21 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076355.P9255258173079642720

namespace A076355

/-- `eq[1, A068695(21*n+1)]` -/
def P9255258173079642720.Spec : Prop :=
  ∀ n, (P9255258173079642720.a n : ℤ) = A076355 (n + 1)

end A076355

/-! ## A076355.P13308792769328601196

`eq[1, A091088(21*n+1)]`
-/

namespace A076355.P13308792769328601196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (21 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076355.P13308792769328601196

namespace A076355

/-- `eq[1, A091088(21*n+1)]` -/
def P13308792769328601196.Spec : Prop :=
  ∀ n, (P13308792769328601196.a n : ℤ) = A076355 (n + 1)

end A076355

/-! ## A076355.P10719446972480121115

`eq[2, A000005(10*(3*7*n+1)+1)]`
-/

namespace A076355.P10719446972480121115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (3 * (7 * n) + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076355.P10719446972480121115

namespace A076355

/-- `eq[2, A000005(10*(3*7*n+1)+1)]` -/
def P10719446972480121115.Spec : Prop :=
  ∀ n, (P10719446972480121115.a n : ℤ) = A076355 (n + 1)

end A076355

/-! ## A076355.P11050306384346647005

`lt[A068695(A215146(n)), 2]`
-/

namespace A076355.P11050306384346647005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (A215146 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A076355.P11050306384346647005

namespace A076355

/-- `lt[A068695(A215146(n)), 2]` -/
def P11050306384346647005.Spec : Prop :=
  ∀ n, (P11050306384346647005.a n : ℤ) = A076355 (n + 1)

end A076355

/-! ## A076355.P7955204953942812646

`lt[A000010(A068695(21*n+1)+1)-1, 1]`
-/

namespace A076355.P7955204953942812646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A068695 (21 * n + 1) + 1).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A076355.P7955204953942812646

namespace A076355

/-- `lt[A000010(A068695(21*n+1)+1)-1, 1]` -/
def P7955204953942812646.Spec : Prop :=
  ∀ n, (P7955204953942812646.a n : ℤ) = A076355 (n + 1)

end A076355

/-! ## A076355.P10321388465573428786

`eq[1, A091088(A215146(n))^A331290(n+1)]`
-/

namespace A076355.P10321388465573428786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091088 (A215146 n).toNat : ℚ) ^ (A331290 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A076355.P10321388465573428786

namespace A076355

/-- `eq[1, A091088(A215146(n))^A331290(n+1)]` -/
def P10321388465573428786.Spec : Prop :=
  ∀ n, (P10321388465573428786.a n : ℤ) = A076355 (n + 1)

end A076355

/-! ## A076355.P15374512825987450813

`eq[1, A091088(A215146(n))^A331295(n+1)]`
-/

namespace A076355.P15374512825987450813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091088 (A215146 n).toNat : ℚ) ^ (A331295 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A076355.P15374512825987450813

namespace A076355

/-- `eq[1, A091088(A215146(n))^A331295(n+1)]` -/
def P15374512825987450813.Spec : Prop :=
  ∀ n, (P15374512825987450813.a n : ℤ) = A076355 (n + 1)

end A076355

/-! ## A076355.P17217862622349539269

`eq[1, A091088(A215146(n))^A331296(n+1)]`
-/

namespace A076355.P17217862622349539269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091088 (A215146 n).toNat : ℚ) ^ (A331296 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A076355.P17217862622349539269

namespace A076355

/-- `eq[1, A091088(A215146(n))^A331296(n+1)]` -/
def P17217862622349539269.Spec : Prop :=
  ∀ n, (P17217862622349539269.a n : ℤ) = A076355 (n + 1)

end A076355

/-! ## A076355.P13471245894572303189

`eq[1, A068695(A215146(n))%A000040(n+1)]`
-/

namespace A076355.P13471245894572303189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068695 (A215146 n).toNat) (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076355.P13471245894572303189

namespace A076355

/-- `eq[1, A068695(A215146(n))%A000040(n+1)]` -/
def P13471245894572303189.Spec : Prop :=
  ∀ n, (P13471245894572303189.a n : ℤ) = A076355 (n + 1)

end A076355

/-! ## A076355.P6111192539448166923

`eq[2, A001222(20*(20*n+1+n)+2)]`
-/

namespace A076355.P6111192539448166923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (20 * (20 * n + 1 + n) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076355.P6111192539448166923

namespace A076355

/-- `eq[2, A001222(20*(20*n+1+n)+2)]` -/
def P6111192539448166923.Spec : Prop :=
  ∀ n, (P6111192539448166923.a n : ℤ) = A076355 (n + 1)

end A076355

/-!
# A076357: a(n) = floor(t^n) where t = 39661481813^(1/10) (approximately 11.4772).

The programs for A076357, there is no canonical definition to state claims against.
-/

/-! ## A076357.P3348996980388823619

`A016969(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=11`
-/

namespace A076357.P3348996980388823619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A016969 (2 * a (n - 1) - a (n - 2)).toNat

end

end A076357.P3348996980388823619

/-!
# A076358: a(n) = numerator(n!/phi(n!)).

The programs for A076358, there is no canonical definition to state claims against.
-/

/-! ## A076358.P5182405362770292263

`A060753(A036234(n+1))`
-/

namespace A076358.P5182405362770292263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (A036234 (n + 1)).toNat

end

end A076358.P5182405362770292263

/-! ## A076358.P12115061973862204472

`A060753(∑[A080339(n+1)])`
-/

namespace A076358.P12115061973862204472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076358.P12115061973862204472

/-! ## A076358.P8952415239112904560

`A060753(A000720(n+1)+1)`
-/

namespace A076358.P8952415239112904560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (A000720 (n + 1) + 1).toNat

end

end A076358.P8952415239112904560

/-! ## A076358.P4174014408963790485

`A060753(A014430(∑[A049084(n+1)]))`
-/

namespace A076358.P4174014408963790485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (A014430 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A076358.P4174014408963790485

/-! ## A076358.P3760933731647564050

`A060753(∑[A335909(A165826(n+1))])`
-/

namespace A076358.P3760933731647564050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335909 (A165826 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076358.P3760933731647564050

/-! ## A076358.P9447232309167646992

`A000142(n+1)/A048855(n+1)*A076359(n+1)`
-/

namespace A076358.P9447232309167646992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A048855 (n + 1) : ℚ) * (A076359 (n + 1) : ℚ)

end

end A076358.P9447232309167646992

/-!
# A076359: a(n) = denominator(n!/phi(n!)).

The programs for A076359, there is no canonical definition to state claims against.
-/

/-! ## A076359.P17820811990349831143

`A038110(Δ[A002815(n)])`
-/

namespace A076359.P17820811990349831143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038110 (f1 (n + 1) - f1 n).toNat

end

end A076359.P17820811990349831143

/-! ## A076359.P1841337420977660474

`A038110(A036234(n+1))`
-/

namespace A076359.P1841337420977660474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038110 (A036234 (n + 1)).toNat

end

end A076359.P1841337420977660474

/-! ## A076359.P17229122634328428414

`A038110(∑[A080339(n+1)])`
-/

namespace A076359.P17229122634328428414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076359.P17229122634328428414

/-! ## A076359.P6946475795816267007

`A038110(A000720(n+1)+1)`
-/

namespace A076359.P6946475795816267007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038110 (A000720 (n + 1) + 1).toNat

end

end A076359.P6946475795816267007

/-! ## A076359.P1295684580553484745

`A038110(1-A065855(n+1)+n)`
-/

namespace A076359.P1295684580553484745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038110 (1 - A065855 (n + 1) + (n : ℤ)).toNat

end

end A076359.P1295684580553484745

/-! ## A076359.P51417693004861329

`A038110(A002815(n+1)-A002815(n))`
-/

namespace A076359.P51417693004861329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038110 (A002815 (n + 1) - A002815 n).toNat

end

end A076359.P51417693004861329

/-! ## A076359.P18107753705589669842

`A048855(n+1)/A000142(n+1)*A076358(n+1)`
-/

namespace A076359.P18107753705589669842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048855 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A076358 (n + 1) : ℚ)

end

end A076359.P18107753705589669842

/-!
# A076360: a(n) = d(sigma(n)) - sigma(d(n)), where d(n) is the number of divisors of n and sigma(n) is their sum.

The programs for A076360, the canonical program `A076360.P16775053655456500281` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076360 has offset 1).

The definition of A076360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062068, A062069, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076360.P16775053655456500281

`A062068(n+1)-A062069(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076360

/-- `A062068(n+1)-A062069(n+1)` -/
def P16775053655456500281.Spec : Prop :=
  ∀ n, P16775053655456500281.a n = A076360 (n + 1)

theorem P16775053655456500281.correct : P16775053655456500281.Spec := by
  intro n
  simp only [A076360, Nat.add_sub_cancel]

end A076360

/-! ## A076360.P4702629923800452920

`∏{e}[∑{d}[n+1, #], #+1]-∑{d}[∏{e}[n+1, #+1], #]`
-/

namespace A076360.P4702629923800452920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A076360.P4702629923800452920

namespace A076360

/-- `∏{e}[∑{d}[n+1, #], #+1]-∑{d}[∏{e}[n+1, #+1], #]` -/
def P4702629923800452920.Spec : Prop :=
  ∀ n, P4702629923800452920.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P180755634860980011

`A000005(∑{d}[n+1, #])-∑{d}[∏{e}[n+1, #+1], #]`
-/

namespace A076360.P180755634860980011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A076360.P180755634860980011

namespace A076360

/-- `A000005(∑{d}[n+1, #])-∑{d}[∏{e}[n+1, #+1], #]` -/
def P180755634860980011.Spec : Prop :=
  ∀ n, P180755634860980011.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P13161635059318105883

`∏{e}[∑{d}[n+1, #], #+1]-∑{d}[A329484(n+1), #]`
-/

namespace A076360.P13161635059318105883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n).natAbs, d : ℕ) : ℤ)

end

end A076360.P13161635059318105883

namespace A076360

/-- `∏{e}[∑{d}[n+1, #], #+1]-∑{d}[A329484(n+1), #]` -/
def P13161635059318105883.Spec : Prop :=
  ∀ n, P13161635059318105883.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P9163526542091433067

`∏{e}[∑{d}[n+1, #], #+1]-∑{d}[A320111(2*(n+1)), #]`
-/

namespace A076360.P9163526542091433067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n).natAbs, d : ℕ) : ℤ)

end

end A076360.P9163526542091433067

namespace A076360

/-- `∏{e}[∑{d}[n+1, #], #+1]-∑{d}[A320111(2*(n+1)), #]` -/
def P9163526542091433067.Spec : Prop :=
  ∀ n, P9163526542091433067.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P7454366145327505392

`∏{e}[∑{d}[n+1, #], #+1]-A000203(∏{e}[n+1, #+1])`
-/

namespace A076360.P7454366145327505392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A000203 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

end

end A076360.P7454366145327505392

namespace A076360

/-- `∏{e}[∑{d}[n+1, #], #+1]-A000203(∏{e}[n+1, #+1])` -/
def P7454366145327505392.Spec : Prop :=
  ∀ n, P7454366145327505392.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P1510617271826733582

`∑{d}[∑{d}[n+1, #], ceil(1/#)]-A000203(∑{d}[n+1, gcd(n, #)])`
-/

namespace A076360.P1510617271826733582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ - A000203 (∑ d ∈ Nat.divisors (f3 n), Nat.gcd n d)

end

end A076360.P1510617271826733582

namespace A076360

/-- `∑{d}[∑{d}[n+1, #], ceil(1/#)]-A000203(∑{d}[n+1, gcd(n, #)])` -/
def P1510617271826733582.Spec : Prop :=
  ∀ n, P1510617271826733582.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P3215735238507130978

`∑{d}[∑{d}[n+1, #], ceil(1/#)]-A000203(∑{d}[n+1, ceil(1/#)])`
-/

namespace A076360.P3215735238507130978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ - A000203 (∑ d ∈ Nat.divisors (f3 n), ⌈1 / (d : ℚ)⌉).toNat

end

end A076360.P3215735238507130978

namespace A076360

/-- `∑{d}[∑{d}[n+1, #], ceil(1/#)]-A000203(∑{d}[n+1, ceil(1/#)])` -/
def P3215735238507130978.Spec : Prop :=
  ∀ n, P3215735238507130978.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P13907205805968735595

`A000005(∑{d}[n+1, #])-A062069(n+1)`
-/

namespace A076360.P13907205805968735595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d) - A062069 (n + 1)

end

end A076360.P13907205805968735595

namespace A076360

/-- `A000005(∑{d}[n+1, #])-A062069(n+1)` -/
def P13907205805968735595.Spec : Prop :=
  ∀ n, P13907205805968735595.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P4204746046173105330

`A000005(∑{d}[n+1, #])-∑{d}[A000005(n+1), #]`
-/

namespace A076360.P4204746046173105330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d) - ((∑ d ∈ Nat.divisors (f2 n).natAbs, d : ℕ) : ℤ)

end

end A076360.P4204746046173105330

namespace A076360

/-- `A000005(∑{d}[n+1, #])-∑{d}[A000005(n+1), #]` -/
def P4204746046173105330.Spec : Prop :=
  ∀ n, P4204746046173105330.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P7958407036532905275

`A062068(n+1)-A000203(Δ[A054519(n)])`
-/

namespace A076360.P7958407036532905275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - A000203 (f1 (n + 1) - f1 n).toNat

end

end A076360.P7958407036532905275

namespace A076360

/-- `A062068(n+1)-A000203(Δ[A054519(n)])` -/
def P7958407036532905275.Spec : Prop :=
  ∀ n, P7958407036532905275.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P14198460087868068460

`A000005(Δ[A160664(n)])-A062069(n+1)`
-/

namespace A076360.P14198460087868068460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - A062069 (n + 1)

end

end A076360.P14198460087868068460

namespace A076360

/-- `A000005(Δ[A160664(n)])-A062069(n+1)` -/
def P14198460087868068460.Spec : Prop :=
  ∀ n, P14198460087868068460.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P919267613831669637

`A295305(n+1)-A001065(Δ[A054519(n)])`
-/

namespace A076360.P919267613831669637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295305 (n + 1) - A001065 (f1 (n + 1) - f1 n).toNat

end

end A076360.P919267613831669637

namespace A076360

/-- `A295305(n+1)-A001065(Δ[A054519(n)])` -/
def P919267613831669637.Spec : Prop :=
  ∀ n, P919267613831669637.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P3936193597988689276

`A000005(A000203(n+1))-A062069(n+1)`
-/

namespace A076360.P3936193597988689276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat - A062069 (n + 1)

end

end A076360.P3936193597988689276

namespace A076360

/-- `A000005(A000203(n+1))-A062069(n+1)` -/
def P3936193597988689276.Spec : Prop :=
  ∀ n, P3936193597988689276.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P15411362677326132553

`A062068(n+1)-A000203(A000005(n+1))`
-/

namespace A076360.P15411362677326132553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1) - A000203 (A000005 (n + 1)).toNat

end

end A076360.P15411362677326132553

namespace A076360

/-- `A062068(n+1)-A000203(A000005(n+1))` -/
def P15411362677326132553.Spec : Prop :=
  ∀ n, P15411362677326132553.a n = A076360 (n + 1)

end A076360

/-! ## A076360.P12546075526585053285

`A000005(A000203(n+1))-A000203(A000005(n+1))`
-/

namespace A076360.P12546075526585053285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat - A000203 (A000005 (n + 1)).toNat

end

end A076360.P12546075526585053285

namespace A076360

/-- `A000005(A000203(n+1))-A000203(A000005(n+1))` -/
def P12546075526585053285.Spec : Prop :=
  ∀ n, P12546075526585053285.a n = A076360 (n + 1)

end A076360

/-!
# A076361: Numbers k such that d(sigma(k)) = sigma(d(k)).

The programs for A076361, the canonical program `A076361.P78704012862514364` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076361 has offset 1).

The definition of A076361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076361.P78704012862514364

`eq[0, A076360(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076361

/-- `eq[0, A076360(n+1)]+1` -/
def P78704012862514364.Spec : Prop :=
  ∀ n, (P78704012862514364.a n : ℤ) = A076361 (n + 1)

theorem P78704012862514364.correct : P78704012862514364.Spec := by
  intro n
  simp only [A076361, Nat.add_sub_cancel]

end A076361

/-! ## A076361.P4346612482926989435

`eq[A062068(n+1), A062069(n+1)]+1`
-/

namespace A076361.P4346612482926989435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076361.P4346612482926989435

namespace A076361

/-- `eq[A062068(n+1), A062069(n+1)]+1` -/
def P4346612482926989435.Spec : Prop :=
  ∀ n, (P4346612482926989435.a n : ℤ) = A076361 (n + 1)

end A076361

/-! ## A076361.P18388715336436825100

`lt[lcm(A000040(n+1), A076360(n+1)), 2]+1`
-/

namespace A076361.P18388715336436825100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000040 (n + 1)) (A076360 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A076361.P18388715336436825100

namespace A076361

/-- `lt[lcm(A000040(n+1), A076360(n+1)), 2]+1` -/
def P18388715336436825100.Spec : Prop :=
  ∀ n, (P18388715336436825100.a n : ℤ) = A076361 (n + 1)

end A076361

/-! ## A076361.P3860659858669309926

`eq[A000007(n), A076360(A028310(n))]`
-/

namespace A076361.P3860659858669309926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076360 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076361.P3860659858669309926

namespace A076361

/-- `eq[A000007(n), A076360(A028310(n))]` -/
def P3860659858669309926.Spec : Prop :=
  ∀ n, (P3860659858669309926.a n : ℤ) = A076361 (n + 1)

end A076361

/-! ## A076361.P15480158076975894121

`eq[A000038(n), A076360(A028310(n))]`
-/

namespace A076361.P15480158076975894121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076360 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076361.P15480158076975894121

namespace A076361

/-- `eq[A000038(n), A076360(A028310(n))]` -/
def P15480158076975894121.Spec : Prop :=
  ∀ n, (P15480158076975894121.a n : ℤ) = A076361 (n + 1)

end A076361

/-!
# A076362: Smallest x such that A061498(x)=n: least number in dRRS of which n distinct term occur.

The programs for A076362, there is no canonical definition to state claims against.
-/

/-! ## A076362.P17830682676989674172

`A355772(n+1)+A066503(A318002(n))`
-/

namespace A076362.P17830682676989674172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355772 (n + 1) + A066503 (A318002 n).toNat

end

end A076362.P17830682676989674172

/-! ## A076362.P16875583649235672087

`A001045(n+1)*A032741(A223742(3*n+1))`
-/

namespace A076362.P16875583649235672087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A032741 (A223742 (3 * n + 1)).toNat

end

end A076362.P16875583649235672087

/-!
# A076363: a(n) = A000010(n) - A061498(n).

The programs for A076363, there is no canonical definition to state claims against.
-/

/-! ## A076363.P17110745034145711996

`A000010(n+1)-A061498(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076363.P17110745034145711996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A061498 (n + 1)

end

end A076363.P17110745034145711996

/-! ## A076363.P1293541326982062080

`Δ[A002088(n)]-A061498(n+1)`
-/

namespace A076363.P1293541326982062080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A061498 (n + 1)

end

end A076363.P1293541326982062080

/-! ## A076363.P91458971356257127

`Δ[A005728(n)]-A061498(n+1)`
-/

namespace A076363.P91458971356257127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A061498 (n + 1)

end

end A076363.P91458971356257127

/-! ## A076363.P9346459379989260149

`A349137(Δ[n²])-A061498(n+1)`
-/

namespace A076363.P9346459379989260149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A061498 (n + 1)

end

end A076363.P9346459379989260149

/-! ## A076363.P8237351506183341370

`sqrt(A127473(n+1))-A061498(n+1)`
-/

namespace A076363.P8237351506183341370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A061498 (n + 1) : ℝ)

end

end A076363.P8237351506183341370

/-! ## A076363.P622680230826532310

`A039649(n+1)-(A061498(n+1)+1)`
-/

namespace A076363.P622680230826532310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A061498 (n + 1) + 1)

end

end A076363.P622680230826532310

/-! ## A076363.P8535135463881381410

`A002618(n+1)/(n+1)-A061498(n+1)`
-/

namespace A076363.P8535135463881381410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ) - (A061498 (n + 1) : ℚ)

end

end A076363.P8535135463881381410

/-! ## A076363.P595462828103955832

`∑{d}[n+1, (n+1)/#*A008683(#)]-A061498(n+1)`
-/

namespace A076363.P595462828103955832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) - (A061498 (n + 1) : ℚ)

end

end A076363.P595462828103955832

/-! ## A076363.P3233447996010134917

`A067541(A005408(n))-A061498(n+1)`
-/

namespace A076363.P3233447996010134917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A005408 n).toNat - A061498 (n + 1)

end

end A076363.P3233447996010134917

/-! ## A076363.P18128656613571889033

`A054523(A000124(n))-A061498(n+1)`
-/

namespace A076363.P18128656613571889033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (A000124 n).toNat - A061498 (n + 1)

end

end A076363.P18128656613571889033

/-!
# A076364: Number of distinct terms in dRRS equals 2: A061498(x)=2.

The programs for A076364, the canonical program `A076364.P15167791440389681606` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076364 has offset 1).

The definition of A076364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076364.P15167791440389681606

`filter[A060679(n+3), A340373(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A076364

/-- `filter[A060679(n+3), A340373(#)]` -/
def P15167791440389681606.Spec : Prop :=
  ∀ n, P15167791440389681606.a n = A076364 (n + 1)

theorem P15167791440389681606.correct : P15167791440389681606.Spec := by
  intro n
  simp only [A076364, Nat.add_sub_cancel]

end A076364

/-! ## A076364.P14213960020830412596

`filter[A193166(n+1), A340373(#)]`
-/

namespace A076364.P14213960020830412596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A076364.P14213960020830412596

namespace A076364

/-- `filter[A193166(n+1), A340373(#)]` -/
def P14213960020830412596.Spec : Prop :=
  ∀ n, P14213960020830412596.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P6501939173084070230

`∩[A193166(n+1), A336101(n+1)]`
-/

namespace A076364.P6501939173084070230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076364.P6501939173084070230

namespace A076364

/-- `∩[A193166(n+1), A336101(n+1)]` -/
def P6501939173084070230.Spec : Prop :=
  ∀ n, (P6501939173084070230.a n : ℤ) = A076364 (n + 1)

end A076364

/-! ## A076364.P16069245000751883393

`filter[A062973(n+2), A340373(#)]`
-/

namespace A076364.P16069245000751883393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A076364.P16069245000751883393

namespace A076364

/-- `filter[A062973(n+2), A340373(#)]` -/
def P16069245000751883393.Spec : Prop :=
  ∀ n, P16069245000751883393.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P8949198965511972246

`filter[A002808(n+3), A340373(#)]`
-/

namespace A076364.P8949198965511972246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A076364.P8949198965511972246

namespace A076364

/-- `filter[A002808(n+3), A340373(#)]` -/
def P8949198965511972246.Spec : Prop :=
  ∀ n, P8949198965511972246.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P4203367983921808154

`filter[A056653(n+3), A340373(#)]`
-/

namespace A076364.P4203367983921808154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A076364.P4203367983921808154

namespace A076364

/-- `filter[A056653(n+3), A340373(#)]` -/
def P4203367983921808154.Spec : Prop :=
  ∀ n, P4203367983921808154.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P16479759594454857602

`filter[A176423(n+3), A340373(#)]`
-/

namespace A076364.P16479759594454857602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A076364.P16479759594454857602

namespace A076364

/-- `filter[A176423(n+3), A340373(#)]` -/
def P16479759594454857602.Spec : Prop :=
  ∀ n, P16479759594454857602.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P517300663154101110

`eq[2, A061498(n+1)]+1`
-/

namespace A076364.P517300663154101110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076364.P517300663154101110

namespace A076364

/-- `eq[2, A061498(n+1)]+1` -/
def P517300663154101110.Spec : Prop :=
  ∀ n, (P517300663154101110.a n : ℤ) = A076364 (n + 1)

end A076364

/-! ## A076364.P14057453883987457258

`eq[n, n-a(A061498(n))]` with `a(0)=2`
-/

namespace A076364.P14057453883987457258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℤ) - f2 (A061498 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076364.P14057453883987457258

namespace A076364

/-- `eq[n, n-a(A061498(n))]` -/
def P14057453883987457258.Spec : Prop :=
  ∀ n, (P14057453883987457258.a n : ℤ) = A076364 (n + 1)

end A076364

/-! ## A076364.P451539362867449359

`eq[2, A061498(A028310(n))]`
-/

namespace A076364.P451539362867449359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076364.P451539362867449359

namespace A076364

/-- `eq[2, A061498(A028310(n))]` -/
def P451539362867449359.Spec : Prop :=
  ∀ n, (P451539362867449359.a n : ℤ) = A076364 (n + 1)

end A076364

/-! ## A076364.P15588605366665727887

`A020725(eq[2, A061498(n+1)])`
-/

namespace A076364.P15588605366665727887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076364.P15588605366665727887

namespace A076364

/-- `A020725(eq[2, A061498(n+1)])` -/
def P15588605366665727887.Spec : Prop :=
  ∀ n, P15588605366665727887.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P7483407901821267362

`A065475(eq[2, A061498(n+1)])`
-/

namespace A076364.P7483407901821267362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076364.P7483407901821267362

namespace A076364

/-- `A065475(eq[2, A061498(n+1)])` -/
def P7483407901821267362.Spec : Prop :=
  ∀ n, P7483407901821267362.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P15154367006227170194

`A153152(eq[2, A061498(n+1)])`
-/

namespace A076364.P15154367006227170194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076364.P15154367006227170194

namespace A076364

/-- `A153152(eq[2, A061498(n+1)])` -/
def P15154367006227170194.Spec : Prop :=
  ∀ n, P15154367006227170194.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P6962733162749439710

`eq[2, A061498(A138153(n+1))]`
-/

namespace A076364.P6962733162749439710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076364.P6962733162749439710

namespace A076364

/-- `eq[2, A061498(A138153(n+1))]` -/
def P6962733162749439710.Spec : Prop :=
  ∀ n, (P6962733162749439710.a n : ℤ) = A076364 (n + 1)

end A076364

/-! ## A076364.P6322799484418636091

`record[A032742(A123711(n+2))]`
-/

namespace A076364.P6322799484418636091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A123711 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076364.P6322799484418636091

namespace A076364

/-- `record[A032742(A123711(n+2))]` -/
def P6322799484418636091.Spec : Prop :=
  ∀ n, P6322799484418636091.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P9387372754964769562

`filter[A111774(n+2), A340363(#)]`
-/

namespace A076364.P9387372754964769562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A076364.P9387372754964769562

namespace A076364

/-- `filter[A111774(n+2), A340363(#)]` -/
def P9387372754964769562.Spec : Prop :=
  ∀ n, P9387372754964769562.a n = A076364 (n + 1)

end A076364

/-! ## A076364.P804281130223111754

`filter[A111774(n+2), A340373(#)]`
-/

namespace A076364.P804281130223111754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A076364.P804281130223111754

namespace A076364

/-- `filter[A111774(n+2), A340373(#)]` -/
def P804281130223111754.Spec : Prop :=
  ∀ n, P804281130223111754.a n = A076364 (n + 1)

end A076364

/-!
# A076367: Primes with subscripts from the Bonse sequence.

The programs for A076367, the canonical program `A076367.P954353847303307258` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076367 has offset 1).

The definition of A076367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076367.P16802795033166547825

`A151800(∑[char[comp[p?[comp[n²]]+n]]])`
-/

namespace A076367.P16802795033166547825
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076367.P16802795033166547825

namespace A076367

/-- `A151800(∑[char[comp[p?[comp[n²]]+n]]])` -/
def P16802795033166547825.Spec : Prop :=
  ∀ n, P16802795033166547825.a n = A076367 (n + 1)

end A076367

/-! ## A076367.P954353847303307258

`A000040(A060646(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076367

/-- `A000040(A060646(n+1))` -/
def P954353847303307258.Spec : Prop :=
  ∀ n, P954353847303307258.a n = A076367 (n + 1)

theorem P954353847303307258.correct : P954353847303307258.Spec := by
  intro n
  simp only [A076367, Nat.add_sub_cancel]

end A076367

/-! ## A076367.P2399448569627874839

`A151800(∑[char[A095117(n)]])`
-/

namespace A076367.P2399448569627874839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076367.P2399448569627874839

namespace A076367

/-- `A151800(∑[char[A095117(n)]])` -/
def P2399448569627874839.Spec : Prop :=
  ∀ n, P2399448569627874839.a n = A076367 (n + 1)

end A076367

/-! ## A076367.P296679496826837092

`A008578(A060646(n+1)+1)`
-/

namespace A076367.P296679496826837092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A060646 (n + 1) + 1).toNat

end

end A076367.P296679496826837092

namespace A076367

/-- `A008578(A060646(n+1)+1)` -/
def P296679496826837092.Spec : Prop :=
  ∀ n, P296679496826837092.a n = A076367 (n + 1)

end A076367

/-! ## A076367.P15662868370611471173

`A182986(A060646(n+1)+1)`
-/

namespace A076367.P15662868370611471173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A060646 (n + 1) + 1).toNat

end

end A076367.P15662868370611471173

namespace A076367

/-- `A182986(A060646(n+1)+1)` -/
def P15662868370611471173.Spec : Prop :=
  ∀ n, P15662868370611471173.a n = A076367 (n + 1)

end A076367

/-! ## A076367.P12317003207060738865

`A109763(2*A060646(n+1))`
-/

namespace A076367.P12317003207060738865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * A060646 (n + 1)).toNat

end

end A076367.P12317003207060738865

namespace A076367

/-- `A109763(2*A060646(n+1))` -/
def P12317003207060738865.Spec : Prop :=
  ∀ n, P12317003207060738865.a n = A076367 (n + 1)

end A076367

/-! ## A076367.P13563602895722668469

`A151800(∑[char[A064427(n+1)-1]])`
-/

namespace A076367.P13563602895722668469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076367.P13563602895722668469

namespace A076367

/-- `A151800(∑[char[A064427(n+1)-1]])` -/
def P13563602895722668469.Spec : Prop :=
  ∀ n, P13563602895722668469.a n = A076367 (n + 1)

end A076367

/-! ## A076367.P8556925669973571425

`A000040(∑[char[A095116(n+1)-1]]+1)`
-/

namespace A076367.P8556925669973571425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076367.P8556925669973571425

namespace A076367

/-- `A000040(∑[char[A095116(n+1)-1]]+1)` -/
def P8556925669973571425.Spec : Prop :=
  ∀ n, P8556925669973571425.a n = A076367 (n + 1)

end A076367

/-! ## A076367.P2789327739558496432

`A109763(A060646(n+1)+A060646(n+1))`
-/

namespace A076367.P2789327739558496432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (A060646 (n + 1) + A060646 (n + 1)).toNat

end

end A076367.P2789327739558496432

namespace A076367

/-- `A109763(A060646(n+1)+A060646(n+1))` -/
def P2789327739558496432.Spec : Prop :=
  ∀ n, P2789327739558496432.a n = A076367 (n + 1)

end A076367

/-! ## A076367.P9200882202043561158

`A151800(A112231(n+1))`
-/

namespace A076367.P9200882202043561158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A112231 (n + 1)).toNat

end

end A076367.P9200882202043561158

namespace A076367

/-- `A151800(A112231(n+1))` -/
def P9200882202043561158.Spec : Prop :=
  ∀ n, P9200882202043561158.a n = A076367 (n + 1)

end A076367

/-!
# A076368: a(1) = 1; for n > 1, a(n) = prime(n) - prime(n-1) + 1.

The programs for A076368, the canonical program `A076368.P2146344704707354385` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076368 has offset 1).

The definition of A076368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076368.P2887119170944142217

`A230847(n+1)%(n+2)`
-/

namespace A076368.P2887119170944142217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230847 (n + 1)) (n + 2 : ℤ)

end

end A076368.P2887119170944142217

namespace A076368

/-- `A230847(n+1)%(n+2)` -/
def P2887119170944142217.Spec : Prop :=
  ∀ n, P2887119170944142217.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P2146344704707354385

`A054541(n+1)%(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A076368

/-- `A054541(n+1)%(n+1)+1` -/
def P2146344704707354385.Spec : Prop :=
  ∀ n, P2146344704707354385.a n = A076368 (n + 1)

theorem P2146344704707354385.correct : P2146344704707354385.Spec := by
  intro n
  simp only [A076368, Nat.add_sub_cancel]

end A076368

/-! ## A076368.P9307166449207961795

`A125266(n+1)%(n+1)+1`
-/

namespace A076368.P9307166449207961795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125266 (n + 1)) (n + 1 : ℤ) + 1

end

end A076368.P9307166449207961795

namespace A076368

/-- `A125266(n+1)%(n+1)+1` -/
def P9307166449207961795.Spec : Prop :=
  ∀ n, P9307166449207961795.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P307975632254213411

`Δ[A000040(floor(sqrt(n²+1)))]+1`
-/

namespace A076368.P307975632254213411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A076368.P307975632254213411

namespace A076368

/-- `Δ[A000040(floor(sqrt(n²+1)))]+1` -/
def P307975632254213411.Spec : Prop :=
  ∀ n, P307975632254213411.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P11204188149743951686

`A036263(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A076368.P11204188149743951686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A036263 (n - 1) + a (n - 1)

end

end A076368.P11204188149743951686

namespace A076368

/-- `A036263(n-1)+a(n-1)` -/
def P11204188149743951686.Spec : Prop :=
  ∀ n, P11204188149743951686.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P8765123107957458065

`A075526(n)+A057427(n)`
-/

namespace A076368.P8765123107957458065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + A057427 n

end

end A076368.P8765123107957458065

namespace A076368

/-- `A075526(n)+A057427(n)` -/
def P8765123107957458065.Spec : Prop :=
  ∀ n, P8765123107957458065.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P1086509246817278039

`A075526(n)-A057428(n)`
-/

namespace A076368.P1086509246817278039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n - A057428 n

end

end A076368.P1086509246817278039

namespace A076368

/-- `A075526(n)-A057428(n)` -/
def P1086509246817278039.Spec : Prop :=
  ∀ n, P1086509246817278039.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P6625663998861269065

`A158388(n)+A054541(n+1)`
-/

namespace A076368.P6625663998861269065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A054541 (n + 1)

end

end A076368.P6625663998861269065

namespace A076368

/-- `A158388(n)+A054541(n+1)` -/
def P6625663998861269065.Spec : Prop :=
  ∀ n, P6625663998861269065.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P17134880904434958119

`A075526(n)+1-A000007(n)`
-/

namespace A076368.P17134880904434958119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + (1 - A000007 n)

end

end A076368.P17134880904434958119

namespace A076368

/-- `A075526(n)+1-A000007(n)` -/
def P17134880904434958119.Spec : Prop :=
  ∀ n, P17134880904434958119.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P2973538947886522392

`A230846(n+1)-A000007(n)`
-/

namespace A076368.P2973538947886522392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) - A000007 n

end

end A076368.P2973538947886522392

namespace A076368

/-- `A230846(n+1)-A000007(n)` -/
def P2973538947886522392.Spec : Prop :=
  ∀ n, P2973538947886522392.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P9691180333534727649

`A230847(n+1)-A000038(n)`
-/

namespace A076368.P9691180333534727649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1) - A000038 n

end

end A076368.P9691180333534727649

namespace A076368

/-- `A230847(n+1)-A000038(n)` -/
def P9691180333534727649.Spec : Prop :=
  ∀ n, P9691180333534727649.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P644717629304675666

`A176099(n+1)-A076273(n)`
-/

namespace A076368.P644717629304675666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176099 (n + 1) - A076273 n

end

end A076368.P644717629304675666

namespace A076368

/-- `A176099(n+1)-A076273(n)` -/
def P644717629304675666.Spec : Prop :=
  ∀ n, P644717629304675666.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P16227630313076666161

`A075526(n)+2-A054977(n)`
-/

namespace A076368.P16227630313076666161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + (2 - A054977 n)

end

end A076368.P16227630313076666161

namespace A076368

/-- `A075526(n)+2-A054977(n)` -/
def P16227630313076666161.Spec : Prop :=
  ∀ n, P16227630313076666161.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P4993634808502542890

`A075526(n)+A019426(2*n)`
-/

namespace A076368.P4993634808502542890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + A019426 (2 * n)

end

end A076368.P4993634808502542890

namespace A076368

/-- `A075526(n)+A019426(2*n)` -/
def P4993634808502542890.Spec : Prop :=
  ∀ n, P4993634808502542890.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P4361496896043509705

`A230846(n+1)/A054977(n)`
-/

namespace A076368.P4361496896043509705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230846 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A076368.P4361496896043509705

namespace A076368

/-- `A230846(n+1)/A054977(n)` -/
def P4361496896043509705.Spec : Prop :=
  ∀ n, P4361496896043509705.a n = (A076368 (n + 1) : ℚ)

end A076368

/-! ## A076368.P9158076444193071930

`A011974(n+1)-A076274(n+1)`
-/

namespace A076368.P9158076444193071930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) - A076274 (n + 1)

end

end A076368.P9158076444193071930

namespace A076368

/-- `A011974(n+1)-A076274(n+1)` -/
def P9158076444193071930.Spec : Prop :=
  ∀ n, P9158076444193071930.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P6445124808690191706

`A055670(n+1)-A182986(n+1)`
-/

namespace A076368.P6445124808690191706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) - A182986 (n + 1)

end

end A076368.P6445124808690191706

namespace A076368

/-- `A055670(n+1)-A182986(n+1)` -/
def P6445124808690191706.Spec : Prop :=
  ∀ n, P6445124808690191706.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P4973856371667621051

`A230846(n+1)-(A057428(n)+1)`
-/

namespace A076368.P4973856371667621051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 1) - (A057428 n + 1)

end

end A076368.P4973856371667621051

namespace A076368

/-- `A230846(n+1)-(A057428(n)+1)` -/
def P4973856371667621051.Spec : Prop :=
  ∀ n, P4973856371667621051.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P5937005984368795290

`A054541(n+1)*A057427(n)+1`
-/

namespace A076368.P5937005984368795290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1) * A057427 n + 1

end

end A076368.P5937005984368795290

namespace A076368

/-- `A054541(n+1)*A057427(n)+1` -/
def P5937005984368795290.Spec : Prop :=
  ∀ n, P5937005984368795290.a n = A076368 (n + 1)

end A076368

/-! ## A076368.P11895510216391073265

`A057427(n)*A125266(n+1)+1`
-/

namespace A076368.P11895510216391073265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A125266 (n + 1) + 1

end

end A076368.P11895510216391073265

namespace A076368

/-- `A057427(n)*A125266(n+1)+1` -/
def P11895510216391073265.Spec : Prop :=
  ∀ n, P11895510216391073265.a n = A076368 (n + 1)

end A076368

/-!
# A076369: a(n) = n + mu(n), where mu is the Moebius function (A008683).

The programs for A076369, the canonical program `A076369.P11103918493266821579` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076369 has offset 1).

The definition of A076369 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076369.P11103918493266821579

`A000027(n+1)+A008683(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A076369

/-- `A000027(n+1)+A008683(n+1)` -/
def P11103918493266821579.Spec : Prop :=
  ∀ n, P11103918493266821579.a n = A076369 (n + 1)

theorem P11103918493266821579.correct : P11103918493266821579.Spec := by
  intro n
  simp only [A076369, Nat.add_sub_cancel]

end A076369

/-! ## A076369.P15827814677619545299

`round(acot(∏{e}[n+1, -#])+n+1)`
-/

namespace A076369.P15827814677619545299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ) + (n + 1 : ℝ))

end

end A076369.P15827814677619545299

namespace A076369

/-- `round(acot(∏{e}[n+1, -#])+n+1)` -/
def P15827814677619545299.Spec : Prop :=
  ∀ n, P15827814677619545299.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P17677003260515170928

`∏{e}[n+1, -floor(1/#)]+n+1`
-/

namespace A076369.P17677003260515170928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋) + (n + 1 : ℤ)

end

end A076369.P17677003260515170928

namespace A076369

/-- `∏{e}[n+1, -floor(1/#)]+n+1` -/
def P17677003260515170928.Spec : Prop :=
  ∀ n, P17677003260515170928.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P466673565610105536

`A007423(n+1)+n`
-/

namespace A076369.P466673565610105536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + (n : ℤ)

end

end A076369.P466673565610105536

namespace A076369

/-- `A007423(n+1)+n` -/
def P466673565610105536.Spec : Prop :=
  ∀ n, P466673565610105536.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P17750069007025914309

`abs(A076544(n+1))+n`
-/

namespace A076369.P17750069007025914309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076544 (n + 1)| + (n : ℤ)

end

end A076369.P17750069007025914309

namespace A076369

/-- `abs(A076544(n+1))+n` -/
def P17750069007025914309.Spec : Prop :=
  ∀ n, P17750069007025914309.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P8196715672845264258

`n+1+A008683(n+1)`
-/

namespace A076369.P8196715672845264258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A008683 (n + 1)

end

end A076369.P8196715672845264258

namespace A076369

/-- `n+1+A008683(n+1)` -/
def P8196715672845264258.Spec : Prop :=
  ∀ n, P8196715672845264258.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P10887581861494151677

`A080847(n+1)-1+n`
-/

namespace A076369.P10887581861494151677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - 1 + (n : ℤ)

end

end A076369.P10887581861494151677

namespace A076369

/-- `A080847(n+1)-1+n` -/
def P10887581861494151677.Spec : Prop :=
  ∀ n, P10887581861494151677.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P14649926641856506804

`A231821(n+1)-2+n`
-/

namespace A076369.P14649926641856506804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1) - 2 + (n : ℤ)

end

end A076369.P14649926641856506804

namespace A076369

/-- `A231821(n+1)-2+n` -/
def P14649926641856506804.Spec : Prop :=
  ∀ n, P14649926641856506804.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P1007358746958702762

`3-A129979(n+1)+n`
-/

namespace A076369.P1007358746958702762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A129979 (n + 1) + (n : ℤ)

end

end A076369.P1007358746958702762

namespace A076369

/-- `3-A129979(n+1)+n` -/
def P1007358746958702762.Spec : Prop :=
  ∀ n, P1007358746958702762.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P8236941692413363487

`floor(exp(A140664(n+1))+n)`
-/

namespace A076369.P8236941692413363487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A140664 (n + 1) : ℝ) + (n : ℝ)⌋

end

end A076369.P8236941692413363487

namespace A076369

/-- `floor(exp(A140664(n+1))+n)` -/
def P8236941692413363487.Spec : Prop :=
  ∀ n, P8236941692413363487.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P3080201968238652194

`floor(log(A228409(n+1))+n)`
-/

namespace A076369.P3080201968238652194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A228409 (n + 1) : ℝ) + (n : ℝ)⌋

end

end A076369.P3080201968238652194

namespace A076369

/-- `floor(log(A228409(n+1))+n)` -/
def P3080201968238652194.Spec : Prop :=
  ∀ n, P3080201968238652194.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P11637841401182289986

`abs(A157657(n+1)-n)+1`
-/

namespace A076369.P11637841401182289986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157657 (n + 1) - (n : ℤ)| + 1

end

end A076369.P11637841401182289986

namespace A076369

/-- `abs(A157657(n+1)-n)+1` -/
def P11637841401182289986.Spec : Prop :=
  ∀ n, P11637841401182289986.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P14901891886521864546

`A162512(n+1)%2+1+n`
-/

namespace A076369.P14901891886521864546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2 + 1 + (n : ℤ)

end

end A076369.P14901891886521864546

namespace A076369

/-- `A162512(n+1)%2+1+n` -/
def P14901891886521864546.Spec : Prop :=
  ∀ n, P14901891886521864546.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P14795037126509764132

`A061669(n+1)/(n+1)+n`
-/

namespace A076369.P14795037126509764132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061669 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A076369.P14795037126509764132

namespace A076369

/-- `A061669(n+1)/(n+1)+n` -/
def P14795037126509764132.Spec : Prop :=
  ∀ n, P14795037126509764132.a n = (A076369 (n + 1) : ℚ)

end A076369

/-! ## A076369.P7792817363031159064

`A008683(abs(xor(n, -1)))-xor(n, -1)`
-/

namespace A076369.P7792817363031159064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |Int.xor (n : ℤ) (-1)|.toNat - Int.xor (n : ℤ) (-1)

end

end A076369.P7792817363031159064

namespace A076369

/-- `A008683(abs(xor(n, -1)))-xor(n, -1)` -/
def P7792817363031159064.Spec : Prop :=
  ∀ n, P7792817363031159064.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P10818085615315778065

`A008683(-xor(n, -1))-xor(n, -1)`
-/

namespace A076369.P10818085615315778065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (-Int.xor (n : ℤ) (-1)).toNat - Int.xor (n : ℤ) (-1)

end

end A076369.P10818085615315778065

namespace A076369

/-- `A008683(-xor(n, -1))-xor(n, -1)` -/
def P10818085615315778065.Spec : Prop :=
  ∀ n, P10818085615315778065.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P4855299867273999131

`A055615(n+1)/(n+1)+n+1`
-/

namespace A076369.P4855299867273999131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055615 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A076369.P4855299867273999131

namespace A076369

/-- `A055615(n+1)/(n+1)+n+1` -/
def P4855299867273999131.Spec : Prop :=
  ∀ n, P4855299867273999131.a n = (A076369 (n + 1) : ℚ)

end A076369

/-! ## A076369.P3481401990678490808

`Δ[n²]-(n-A008683(Δ[n²]-n))`
-/

namespace A076369.P3481401990678490808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - A008683 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

end

end A076369.P3481401990678490808

namespace A076369

/-- `Δ[n²]-(n-A008683(Δ[n²]-n))` -/
def P3481401990678490808.Spec : Prop :=
  ∀ n, P3481401990678490808.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P5806333066804464207

`A000122(A074823(n+1))+n`
-/

namespace A076369.P5806333066804464207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A074823 (n + 1)).toNat + (n : ℤ)

end

end A076369.P5806333066804464207

namespace A076369

/-- `A000122(A074823(n+1))+n` -/
def P5806333066804464207.Spec : Prop :=
  ∀ n, P5806333066804464207.a n = A076369 (n + 1)

end A076369

/-! ## A076369.P5629883225488118211

`A080847(n+1)+A023443(n)`
-/

namespace A076369.P5629883225488118211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) + A023443 n

end

end A076369.P5629883225488118211

namespace A076369

/-- `A080847(n+1)+A023443(n)` -/
def P5629883225488118211.Spec : Prop :=
  ∀ n, P5629883225488118211.a n = A076369 (n + 1)

end A076369

/-!
# A076370: a(n) is the smallest number k such that primorial(k)^2 > primorial(n).

The programs for A076370, there is no canonical definition to state claims against.
-/

/-! ## A076370.P1398747282608406140

`A008619(lt[A064988(n+1), A254312(n+1)])`
-/

namespace A076370.P1398747282608406140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076370.P1398747282608406140

/-! ## A076370.P2727289548099886312

`A008619(lt[A369932(n+1), A136235(n)])`
-/

namespace A076370.P2727289548099886312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076370.P2727289548099886312

/-! ## A076370.P1175919457712895358

`A008619(lt[A004086(2*(n+1)), A187705(n+1)])`
-/

namespace A076370.P1175919457712895358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076370.P1175919457712895358

/-! ## A076370.P9546423727258334356

`A008619(lt[A268383(n), A221852(n+1)])`
-/

namespace A076370.P9546423727258334356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076370.P9546423727258334356

/-! ## A076370.P3545776217333068765

`A008619(lt[A216653(n+1), A141457(n+1)])`
-/

namespace A076370.P3545776217333068765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076370.P3545776217333068765

/-!
# A076371: Occurrences of value=n in sequence A076370.

The programs for A076371, there is no canonical definition to state claims against.
-/

/-! ## A076371.P8270248998611548544

`2-char[A076372(n+1)-1]`
-/

namespace A076371.P8270248998611548544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076372 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A076371.P8270248998611548544

/-! ## A076371.P2109100090594712267

`abs(2-char[A076372(A008619(n))-1])`
-/

namespace A076371.P2109100090594712267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076372 (A008619 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A076371.P2109100090594712267

/-! ## A076371.P9681232147159792970

`abs(2-char[A076372(A028310(n))-1])`
-/

namespace A076371.P9681232147159792970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076372 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)|

end

end A076371.P9681232147159792970

/-! ## A076371.P15909432850440959409

`(2-char[A076372(A008619(2*n))-1])%4`
-/

namespace A076371.P15909432850440959409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076372 (A008619 (2 * n)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) 4

end

end A076371.P15909432850440959409

/-!
# A076372: Numbers arising once in A076370, the "Primorial-Cut-Sequence", i.e., subscripts k where A076371(k) = 1.

The programs for A076372, there is no canonical definition to state claims against.
-/

/-! ## A076372.P172878873149354932

`eq[1, A076371(n+1)]+1`
-/

namespace A076372.P172878873149354932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076372.P172878873149354932

/-! ## A076372.P5832274106045818090

`eq[1, A076371(A028310(n))]`
-/

namespace A076372.P5832274106045818090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076371 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076372.P5832274106045818090

/-! ## A076372.P12675957423483898809

`lt[A076371(n+1), A076371(n+2)]+1`
-/

namespace A076372.P12675957423483898809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076371 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A076372.P12675957423483898809

/-! ## A076372.P10638660303027347333

`A194847(2*∑[n+1]²)`
-/

namespace A076372.P10638660303027347333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194847 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A076372.P10638660303027347333

/-! ## A076372.P3026840413350223690

`A394247(A270868(n+1))`
-/

namespace A076372.P3026840413350223690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A270868 (n + 1)).toNat

end

end A076372.P3026840413350223690

/-!
# A076373: Solutions to k + 2*phi(k) = sigma(k) where phi is A000010 and sigma is A000203.

The programs for A076373, there is no canonical definition to state claims against.
-/

/-! ## A076373.P15729796073762931865

`filter[A066679(n+1), A341613(#)]`
-/

namespace A076373.P15729796073762931865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341613 (f1 j).toNat = 1) n)

end

end A076373.P15729796073762931865

/-! ## A076373.P14958408585812465499

`filter[A066679(n+3), A294934(#)]`
-/

namespace A076373.P14958408585812465499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066679 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A076373.P14958408585812465499

/-! ## A076373.P9280901697830938583

`filter[A066679(n+3), A360128(#)]`
-/

namespace A076373.P9280901697830938583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066679 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360128 (f1 j).toNat = 1) n)

end

end A076373.P9280901697830938583

/-!
# A076375: Numbers k such that both k and 2*k are balanced numbers (A020492).

The programs for A076375, there is no canonical definition to state claims against.
-/

/-! ## A076375.P10616745611932325575

`A258077(floor(A000447(n+3)/A006626(n+4)))`
-/

namespace A076375.P10616745611932325575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258077 ⌊(A000447 (n + 3) : ℚ) / (A006626 (n + 4) : ℚ)⌋.toNat

end

end A076375.P10616745611932325575

/-! ## A076375.P3652704962925011607

`A078557(lt[A169662(n+1), A106455(3*n+1)])`
-/

namespace A076375.P3652704962925011607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106455 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076375.P3652704962925011607

/-! ## A076375.P11083810874205746485

`A078557(lt[A169665(n+1), A106455(3*n+1)])`
-/

namespace A076375.P11083810874205746485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106455 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076375.P11083810874205746485

/-! ## A076375.P14587400847594869266

`A078557(lt[A169666(n+1), A106455(3*n+1)])`
-/

namespace A076375.P14587400847594869266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106455 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078557 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076375.P14587400847594869266

/-!
# A076376: Numbers k such that k, 2*k and 4*k are balanced numbers (A020492).

The programs for A076376, there is no canonical definition to state claims against.
-/

/-! ## A076376.P12855641606295056808

`A004526(∩[A076375(n+1), A005843(n)])`
-/

namespace A076376.P12855641606295056808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076376.P12855641606295056808

/-! ## A076376.P1633076035432605300

`A065033(∩[A076375(n+1), A005843(n)])`
-/

namespace A076376.P1633076035432605300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076376.P1633076035432605300

/-! ## A076376.P2362863390111200691

`∩[A076375(n+2), A004526(A076375(n+2))]`
-/

namespace A076376.P2362863390111200691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076375 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076376.P2362863390111200691

/-! ## A076376.P15924299185994527794

`A065033(∩[A076375(n+1), 2*A076375(n+1)])`
-/

namespace A076376.P15924299185994527794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076375 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076376.P15924299185994527794

/-!
# A076377: Numbers k such that k, 2*k, 4*k and 8*k are balanced numbers (A020492).

The programs for A076377, there is no canonical definition to state claims against.
-/

/-! ## A076377.P4814556794409911742

`∩[ceil(A076376(n+1)/2), A076376(n+1)]`
-/

namespace A076377.P4814556794409911742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076376 (n + 1) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076377.P4814556794409911742

/-! ## A076377.P9674093489347296679

`∩[A015705(n+1), A068390(n+1)]`
-/

namespace A076377.P9674093489347296679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076377.P9674093489347296679

/-! ## A076377.P12829488485085702136

`∩[A015705(n+1), A076376(n+1)]`
-/

namespace A076377.P12829488485085702136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076377.P12829488485085702136

/-! ## A076377.P5215954433740856448

`∩[A015705(n+1), A015715(n+2)]`
-/

namespace A076377.P5215954433740856448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015715 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076377.P5215954433740856448

/-! ## A076377.P4559371265338953245

`∩[A011257(n+1), A076376(n+1)]`
-/

namespace A076377.P4559371265338953245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076377.P4559371265338953245

/-!
# A076380: Sum of digits in base 2 is a divisor of sum of prime divisors (A008472).

The programs for A076380, there is no canonical definition to state claims against.
-/

/-! ## A076380.P7558762091855729467

`eq[A059448(A029447(n+1))+1, A339812(n+1)]`
-/

namespace A076380.P7558762091855729467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (A029447 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339812 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076380.P7558762091855729467

/-! ## A076380.P17495611717328470429

`record[xor(A087011(3*n+1), A122201(n+4))]+1`
-/

namespace A076380.P17495611717328470429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087011 (3 * n + 1)) (A122201 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A076380.P17495611717328470429

/-! ## A076380.P2396027789430083614

`eq[A070644(A063698(n)), A073097(n)]`
-/

namespace A076380.P2396027789430083614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070644 (A063698 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076380.P2396027789430083614

/-! ## A076380.P5565755360340635052

`eq[A054525(A053810(n+1)), A254651(n)]`
-/

namespace A076380.P5565755360340635052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A053810 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076380.P5565755360340635052

/-! ## A076380.P52170184244177950

`eq[A065033(A101856(n+1)), A316828(n)]`
-/

namespace A076380.P52170184244177950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A101856 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076380.P52170184244177950

/-!
# A076388: a(n) = minimum of y-x such that x <= y, x*y = n and gcd(x,y)=1.

The programs for A076388, there is no canonical definition to state claims against.
-/

/-! ## A076388.P2283618391193664000

`A354933(n+1)-A052128(n+1)`
-/

namespace A076388.P2283618391193664000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - A052128 (n + 1)

end

end A076388.P2283618391193664000

/-! ## A076388.P9103579509019928259

`n%(A354933(n+1)+1)`
-/

namespace A076388.P9103579509019928259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A354933 (n + 1) + 1)

end

end A076388.P9103579509019928259

/-! ## A076388.P3414749349133288210

`n%A020725(A354933(n+1))`
-/

namespace A076388.P3414749349133288210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A020725 (A354933 (n + 1)).toNat)

end

end A076388.P3414749349133288210

/-! ## A076388.P18043480898449180778

`A034699(n+1)+A354995(n+1)-A052128(n+1)`
-/

namespace A076388.P18043480898449180778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) + (A354995 (n + 1) - A052128 (n + 1))

end

end A076388.P18043480898449180778

/-! ## A076388.P3713810779220815926

`A354995(n+1)+(n+1)/A284600(n+1)-A052128(n+1)`
-/

namespace A076388.P3713810779220815926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354995 (n + 1) : ℚ) + (n + 1 : ℚ) / (A284600 (n + 1) : ℚ) - (A052128 (n + 1) : ℚ)

end

end A076388.P3713810779220815926

/-! ## A076388.P15810777839967679289

`A354995(n+1)+A081472(n+1)-(n+1)-A052128(n+1)`
-/

namespace A076388.P15810777839967679289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354995 (n + 1) + (A081472 (n + 1) - (n + 1 : ℤ)) - A052128 (n + 1)

end

end A076388.P15810777839967679289

/-! ## A076388.P18313397502628819486

`A234575(A052128(n+1)+A000217(n))-A052128(n+1)`
-/

namespace A076388.P18313397502628819486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A052128 (n + 1) + A000217 n).toNat - A052128 (n + 1)

end

end A076388.P18313397502628819486

/-! ## A076388.P14279009098229479519

`A054531(A052128(n+1)+A000217(n))-A052128(n+1)`
-/

namespace A076388.P14279009098229479519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A052128 (n + 1) + A000217 n).toNat - A052128 (n + 1)

end

end A076388.P14279009098229479519

/-! ## A076388.P11472015867109817210

`A354933(n+1)-A010766(A354933(n+1)+A000217(n))`
-/

namespace A076388.P11472015867109817210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - A010766 (A354933 (n + 1) + A000217 n).toNat

end

end A076388.P11472015867109817210

/-! ## A076388.P12607785004214151336

`A354933(n+1)-A049834(A354933(n+1)+A000217(n))`
-/

namespace A076388.P12607785004214151336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1) - A049834 (A354933 (n + 1) + A000217 n).toNat

end

end A076388.P12607785004214151336

/-!
# A076389: Sum of squares of numbers that cannot be written as t*n + u*(n+1) for nonnegative integers t,u.

The programs for A076389, the canonical program `A076389.P16505896609440224627` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076389 has offset 1).

The definition of A076389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076389.P16505896609440224627

`(∑[2*n]-1)*∑[∑[n²]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A076389

/-- `(∑[2*n]-1)*∑[∑[n²]]` -/
def P16505896609440224627.Spec : Prop :=
  ∀ n, P16505896609440224627.a n = A076389 (n + 1)

theorem P16505896609440224627.correct : P16505896609440224627.Spec := by
  intro n
  simp only [A076389, Nat.add_sub_cancel]

end A076389

/-! ## A076389.P13579437456668356249

`lcm(1-(n²+n), ∑[∑[n²]])`
-/

namespace A076389.P13579437456668356249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n ^ 2 + n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076389.P13579437456668356249

namespace A076389

/-- `lcm(1-(n²+n), ∑[∑[n²]])` -/
def P13579437456668356249.Spec : Prop :=
  ∀ n, (P13579437456668356249.a n : ℤ) = A076389 (n + 1)

end A076389

/-! ## A076389.P6751479258568033926

`A208954(n+1)-A004282(n)`
-/

namespace A076389.P6751479258568033926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208954 (n + 1) - A004282 n

end

end A076389.P6751479258568033926

namespace A076389

/-- `A208954(n+1)-A004282(n)` -/
def P6751479258568033926.Spec : Prop :=
  ∀ n, P6751479258568033926.a n = A076389 (n + 1)

end A076389

/-! ## A076389.P3043678794675667294

`A002378(n)*A002415(n+1)-A002415(n+1)`
-/

namespace A076389.P3043678794675667294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A002415 (n + 1) - A002415 (n + 1)

end

end A076389.P3043678794675667294

namespace A076389

/-- `A002378(n)*A002415(n+1)-A002415(n+1)` -/
def P3043678794675667294.Spec : Prop :=
  ∀ n, P3043678794675667294.a n = A076389 (n + 1)

end A076389

/-! ## A076389.P9505065209540692853

`A000217(n)*A008911(n+1)-A002415(n+1)`
-/

namespace A076389.P9505065209540692853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A008911 (n + 1) - A002415 (n + 1)

end

end A076389.P9505065209540692853

namespace A076389

/-- `A000217(n)*A008911(n+1)-A002415(n+1)` -/
def P9505065209540692853.Spec : Prop :=
  ∀ n, P9505065209540692853.a n = A076389 (n + 1)

end A076389

/-!
# A076392: Increasing partial quotients of the continued fraction for agm(1,i)/(1+i).

The programs for A076392, there is no canonical definition to state claims against.
-/

/-! ## A076392.P14324613918635704307

`record[A076391(n)]`
-/

namespace A076392.P14324613918635704307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076392.P14324613918635704307

/-!
# A076394: a(n) = p(11n+6)/11 where p(n) = number of partitions of n (A000041).

The programs for A076394, there is no canonical definition to state claims against.
-/

/-! ## A076394.P7066428750198328379

`A213256(n)/11`
-/

namespace A076394.P7066428750198328379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213256 n : ℚ) / 11

end

end A076394.P7066428750198328379

/-! ## A076394.P7237142345337962882

`A000041(A017461(n))/11`
-/

namespace A076394.P7237142345337962882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (A017461 n).toNat : ℚ) / 11

end

end A076394.P7237142345337962882

/-! ## A076394.P1982019762057589111

`A000041(11*n+6)/11`
-/

namespace A076394.P1982019762057589111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (11 * n + 6) : ℚ) / 11

end

end A076394.P1982019762057589111

/-! ## A076394.P13800791369925576968

`record[ratio[A213256(A142150(n))]]`
-/

namespace A076394.P13800791369925576968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213256 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076394.P13800791369925576968

/-! ## A076394.P15126844315065650793

`A035363(A141694(n))/11`
-/

namespace A076394.P15126844315065650793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035363 (A141694 n).toNat : ℚ) / 11

end

end A076394.P15126844315065650793

/-! ## A076394.P18156898487998360841

`A035444(A304157(n+1))/11`
-/

namespace A076394.P18156898487998360841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035444 (A304157 (n + 1)).toNat : ℚ) / 11

end

end A076394.P18156898487998360841

/-!
# A076396: Smallest prime factor of n-th perfect power.

The programs for A076396, there is no canonical definition to state claims against.
-/

/-! ## A076396.P17672116620780611672

`A020639(A025478(n+1))`
-/

namespace A076396.P17672116620780611672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025478 (n + 1)).toNat

end

end A076396.P17672116620780611672

/-! ## A076396.P3107971459199977882

`A020639(A072813(n+1))`
-/

namespace A076396.P3107971459199977882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072813 (n + 1)).toNat

end

end A076396.P3107971459199977882

/-! ## A076396.P16081718693287371937

`A020639(A076403(n+1))`
-/

namespace A076396.P16081718693287371937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A076403 (n + 1)).toNat

end

end A076396.P16081718693287371937

/-! ## A076396.P10674228210441758562

`A020639(abs(A157987(n+1)))`
-/

namespace A076396.P10674228210441758562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |A157987 (n + 1)|.toNat

end

end A076396.P10674228210441758562

/-! ## A076396.P1570059282173548866

`A028233(∏{p}[A025478(n+1), #])`
-/

namespace A076396.P1570059282173548866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076396.P1570059282173548866

/-! ## A076396.P15413027391877128989

`A028233(∏{p}[∑[A076412(n)], #])`
-/

namespace A076396.P15413027391877128989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076396.P15413027391877128989

/-! ## A076396.P11527265868197925280

`A028233(∏{p}[A001597(n+1), #])`
-/

namespace A076396.P11527265868197925280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076396.P11527265868197925280

/-! ## A076396.P3686706500811137803

`A020639(∏{p}[A157985(n+1), #])`
-/

namespace A076396.P3686706500811137803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076396.P3686706500811137803

/-! ## A076396.P12230297832859213810

`A028233(∏{p}[A157985(n+1), #])`
-/

namespace A076396.P12230297832859213810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076396.P12230297832859213810

/-! ## A076396.P8270278020575281362

`A020639(gcd(A076402(n+1), A076405(n+1)))`
-/

namespace A076396.P8270278020575281362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A076402 (n + 1)) (A076405 (n + 1)))

end

end A076396.P8270278020575281362

/-! ## A076396.P6305124403255174102

`A020639(A392621(n+1))`
-/

namespace A076396.P6305124403255174102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A392621 (n + 1)).toNat

end

end A076396.P6305124403255174102

/-! ## A076396.P5208835314144362358

`A020639(∑[A076412(n)])`
-/

namespace A076396.P5208835314144362358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076396.P5208835314144362358

/-! ## A076396.P6724161390761479539

`A020639(A001597(n+1))`
-/

namespace A076396.P6724161390761479539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001597 (n + 1)).toNat

end

end A076396.P6724161390761479539

/-! ## A076396.P16713168761984793237

`A020639(abs(A157985(n+1)))`
-/

namespace A076396.P16713168761984793237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |A157985 (n + 1)|.toNat

end

end A076396.P16713168761984793237

/-! ## A076396.P8131292494707772627

`A020639(A157987(n+1)²)`
-/

namespace A076396.P8131292494707772627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157987 (n + 1) ^ 2).toNat

end

end A076396.P8131292494707772627

/-! ## A076396.P3148899461790812822

`A020639(sqrt(A340588(n+1)))`
-/

namespace A076396.P3148899461790812822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

end

end A076396.P3148899461790812822

/-! ## A076396.P4926908711315229709

`A020639(∑[A053289(n*a(∏{d}[n, A236842(#)]))])` with `a(0)=1`
-/

namespace A076396.P4926908711315229709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053289 ((n : ℤ) * f1 (∏ d ∈ Nat.divisors (f2 n), A236842 d).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076396.P4926908711315229709

/-! ## A076396.P9278298661405944939

`A107286(A025478(n+1)²)`
-/

namespace A076396.P9278298661405944939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A025478 (n + 1) ^ 2).toNat

end

end A076396.P9278298661405944939

/-! ## A076396.P1657060908561316911

`A020639(∏{p}[A076405(n+1), #])`
-/

namespace A076396.P1657060908561316911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076396.P1657060908561316911

/-! ## A076396.P15057417450368345062

`A020639(record[(n+1)*A075802(n+1)])`
-/

namespace A076396.P15057417450368345062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076396.P15057417450368345062

/-!
# A076397: Largest prime factor of n-th perfect power.

The programs for A076397, there is no canonical definition to state claims against.
-/

/-! ## A076397.P1194197986923159216

`A006530(A025478(n+1))`
-/

namespace A076397.P1194197986923159216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A025478 (n + 1)).toNat

end

end A076397.P1194197986923159216

/-! ## A076397.P15898927435838617859

`A002034(A076403(n+1))`
-/

namespace A076397.P15898927435838617859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A076403 (n + 1)).toNat

end

end A076397.P15898927435838617859

/-! ## A076397.P3233432570396143472

`A006530(A072813(n+1))`
-/

namespace A076397.P3233432570396143472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072813 (n + 1)).toNat

end

end A076397.P3233432570396143472

/-! ## A076397.P40267208011474432

`A006530(abs(A157987(n+1)))`
-/

namespace A076397.P40267208011474432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A157987 (n + 1)|.toNat

end

end A076397.P40267208011474432

/-! ## A076397.P8328951870481291032

`A025492(∏{p}[A025478(n+1), #])`
-/

namespace A076397.P8328951870481291032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076397.P8328951870481291032

/-! ## A076397.P1397805379794576542

`A006530(A001227(n+1)*A076403(n+1))`
-/

namespace A076397.P1397805379794576542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001227 (n + 1) * A076403 (n + 1)).toNat

end

end A076397.P1397805379794576542

/-! ## A076397.P7959006979668027163

`A006530(A392621(n+1))`
-/

namespace A076397.P7959006979668027163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A392621 (n + 1)).toNat

end

end A076397.P7959006979668027163

/-! ## A076397.P13704400436993483636

`A006530(∑[A076412(n)])`
-/

namespace A076397.P13704400436993483636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076397.P13704400436993483636

/-! ## A076397.P7785040660404528407

`A006530(A001597(n+1))`
-/

namespace A076397.P7785040660404528407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001597 (n + 1)).toNat

end

end A076397.P7785040660404528407

/-! ## A076397.P5975819933053163158

`A006530(A076402(n+1))`
-/

namespace A076397.P5975819933053163158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076402 (n + 1)).toNat

end

end A076397.P5975819933053163158

/-! ## A076397.P13805737662488777080

`A006530(abs(A157985(n+1)))`
-/

namespace A076397.P13805737662488777080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A157985 (n + 1)|.toNat

end

end A076397.P13805737662488777080

/-! ## A076397.P1981307278826638174

`A006530(A076403(n+1)²)`
-/

namespace A076397.P1981307278826638174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076403 (n + 1) ^ 2).toNat

end

end A076397.P1981307278826638174

/-! ## A076397.P5882488349666350611

`A006530(A157987(n+1)²)`
-/

namespace A076397.P5882488349666350611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157987 (n + 1) ^ 2).toNat

end

end A076397.P5882488349666350611

/-! ## A076397.P16417903016054573899

`A006530(sqrt(A340588(n+1)))`
-/

namespace A076397.P16417903016054573899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

end

end A076397.P16417903016054573899

/-! ## A076397.P3168645941535964707

`A006530(∑[A053289(n*a(∏{d}[n, A236842(#)]))])` with `a(0)=1`
-/

namespace A076397.P3168645941535964707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053289 ((n : ℤ) * f1 (∏ d ∈ Nat.divisors (f2 n), A236842 d).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076397.P3168645941535964707

/-! ## A076397.P18139228857230090451

`A243057(A053585(A025478(n+1)²))`
-/

namespace A076397.P18139228857230090451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243057 (A053585 (A025478 (n + 1) ^ 2).toNat).toNat

end

end A076397.P18139228857230090451

/-! ## A076397.P442221013944583006

`A053585(A243074(A025478(n+1)²))`
-/

namespace A076397.P442221013944583006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A243074 (A025478 (n + 1) ^ 2).toNat).toNat

end

end A076397.P442221013944583006

/-! ## A076397.P3720225951027835208

`A006530(A175781(A001597(record[xor(1, n)]-n)))`
-/

namespace A076397.P3720225951027835208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175781 (A001597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n)).toNat).toNat

end

end A076397.P3720225951027835208

/-! ## A076397.P15483711666362801765

`A006530(A081676(A045542(n+1)))`
-/

namespace A076397.P15483711666362801765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A081676 (A045542 (n + 1)).toNat).toNat

end

end A076397.P15483711666362801765

/-!
# A076398: Number of distinct prime factors of n-th perfect power.

The programs for A076398, there is no canonical definition to state claims against.
-/

/-! ## A076398.P12614500735783722989

`∑{e}[A076403(n+1), #]`
-/

namespace A076398.P12614500735783722989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A076398.P12614500735783722989

/-! ## A076398.P11646599253992551001

`A001221(A025478(n+1))`
-/

namespace A076398.P11646599253992551001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A025478 (n + 1)).toNat

end

end A076398.P11646599253992551001

/-! ## A076398.P4214248981776616314

`A001221(A072813(n+1))`
-/

namespace A076398.P4214248981776616314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A072813 (n + 1)).toNat

end

end A076398.P4214248981776616314

/-! ## A076398.P7226872074802663689

`A001221(A076403(n+1))`
-/

namespace A076398.P7226872074802663689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A076403 (n + 1)).toNat

end

end A076398.P7226872074802663689

/-! ## A076398.P4140687519973891218

`A001221(abs(A157987(n+1)))`
-/

namespace A076398.P4140687519973891218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 |A157987 (n + 1)|.toNat

end

end A076398.P4140687519973891218

/-! ## A076398.P948760633873499559

`A297155(A025478(n+1))-A057428(n)`
-/

namespace A076398.P948760633873499559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A025478 (n + 1)).toNat - A057428 n

end

end A076398.P948760633873499559

/-! ## A076398.P9182114646168351208

`A001222(A076403(n+1))%A057335(n)`
-/

namespace A076398.P9182114646168351208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A076403 (n + 1)).toNat) (A057335 n)

end

end A076398.P9182114646168351208

/-! ## A076398.P2018206957973905995

`A001221(A076405(n+1)/A001597(n+1))`
-/

namespace A076398.P2018206957973905995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A076405 (n + 1) : ℚ) / (A001597 (n + 1) : ℚ))).toNat

end

end A076398.P2018206957973905995

/-! ## A076398.P15887050090091552724

`∑{p}[A001597(n+1), A001221(#)]`
-/

namespace A076398.P15887050090091552724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A076398.P15887050090091552724

/-! ## A076398.P15842149307090117606

`∑{p}[A001597(n+1), A001222(#)]`
-/

namespace A076398.P15842149307090117606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A076398.P15842149307090117606

/-! ## A076398.P4413749959605859930

`∑{p}[A001597(n+1), A028236(#)]`
-/

namespace A076398.P4413749959605859930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A028236 p

end

end A076398.P4413749959605859930

/-! ## A076398.P14454032167286120140

`A001222(∏{p}[A001597(n+1), #])`
-/

namespace A076398.P14454032167286120140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076398.P14454032167286120140

/-! ## A076398.P10212887491417572165

`∑{e}[A001597(n+1), A057427(#)]`
-/

namespace A076398.P10212887491417572165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057427 (Nat.factorization (f1 n).natAbs p)

end

end A076398.P10212887491417572165

/-! ## A076398.P909846128057851862

`∑{p}[A001597(n+1), A000005(#)-1]`
-/

namespace A076398.P909846128057851862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000005 p - 1)

end

end A076398.P909846128057851862

/-! ## A076398.P2567259022905103006

`∑{p}[A001597(n+1), #-A000010(#)]`
-/

namespace A076398.P2567259022905103006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A000010 p)

end

end A076398.P2567259022905103006

/-! ## A076398.P3998574966132037678

`A001221(A392621(n+1))`
-/

namespace A076398.P3998574966132037678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A392621 (n + 1)).toNat

end

end A076398.P3998574966132037678

/-! ## A076398.P9034139530633709303

`A001221(∑[A076412(n)])`
-/

namespace A076398.P9034139530633709303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076398.P9034139530633709303

/-! ## A076398.P9802574730444585611

`A001221(A001597(n+1))`
-/

namespace A076398.P9802574730444585611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001597 (n + 1)).toNat

end

end A076398.P9802574730444585611

/-! ## A076398.P1364616330813360926

`A001221(abs(A157985(n+1)))`
-/

namespace A076398.P1364616330813360926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 |A157985 (n + 1)|.toNat

end

end A076398.P1364616330813360926

/-! ## A076398.P3182925478426351109

`A001221(A157987(n+1)²)`
-/

namespace A076398.P3182925478426351109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A157987 (n + 1) ^ 2).toNat

end

end A076398.P3182925478426351109

/-!
# A076399: Number of prime factors of n-th perfect power (with repetition).

The programs for A076399, there is no canonical definition to state claims against.
-/

/-! ## A076399.P12285042275152169482

`A001222(A025478(n+1))*A025479(n+1)`
-/

namespace A076399.P12285042275152169482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A025478 (n + 1)).toNat * A025479 (n + 1)

end

end A076399.P12285042275152169482

/-! ## A076399.P18137399458603382265

`∑{e}[∑[A076412(n)], #]`
-/

namespace A076399.P18137399458603382265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A076399.P18137399458603382265

/-! ## A076399.P12185408389014086528

`∑{e}[A001597(n+1), #]`
-/

namespace A076399.P12185408389014086528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A076399.P12185408389014086528

/-! ## A076399.P5515072438351790399

`∑{e}[A157985(n+1), #]`
-/

namespace A076399.P5515072438351790399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A076399.P5515072438351790399

/-! ## A076399.P9763349731466519904

`∑{e}[A053289(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A076399.P9763349731466519904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053289 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A076399.P9763349731466519904

/-! ## A076399.P13094206048243116767

`A001222(∑[A076412(n)])`
-/

namespace A076399.P13094206048243116767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076399.P13094206048243116767

/-! ## A076399.P14975476493083766042

`A001222(A001597(n+1))`
-/

namespace A076399.P14975476493083766042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001597 (n + 1)).toNat

end

end A076399.P14975476493083766042

/-! ## A076399.P8974447461646931649

`A001222(abs(A157985(n+1)))`
-/

namespace A076399.P8974447461646931649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A157985 (n + 1)|.toNat

end

end A076399.P8974447461646931649

/-! ## A076399.P13335792669573913741

`A001222(sqrt(A340588(n+1)))`
-/

namespace A076399.P13335792669573913741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat

end

end A076399.P13335792669573913741

/-! ## A076399.P12793915600836346996

`A001222(abs(A076405(n+1)/A157987(n+1)))`
-/

namespace A076399.P12793915600836346996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway |(A076405 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)|).toNat

end

end A076399.P12793915600836346996

/-! ## A076399.P3916915735882457799

`A001222(∑[A053289(n*a(∏{d}[n, A236842(#)]))])` with `a(0)=1`
-/

namespace A076399.P3916915735882457799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A053289 ((n : ℤ) * f1 (∏ d ∈ Nat.divisors (f2 n), A236842 d).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076399.P3916915735882457799

/-! ## A076399.P2633530112617670229

`∑{e}[record[(n+1)*A075802(n+1)], #]`
-/

namespace A076399.P2633530112617670229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A076399.P2633530112617670229

/-! ## A076399.P9529999639355068244

`A001222(A081676(A045542(n+1)))`
-/

namespace A076399.P9529999639355068244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A081676 (A045542 (n + 1)).toNat).toNat

end

end A076399.P9529999639355068244

