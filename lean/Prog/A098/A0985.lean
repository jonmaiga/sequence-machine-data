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
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A098500: Number of squares on infinite quarter chessboard at <=n knight moves from the corner.

The programs for A098500, the canonical program `A098500.P14725214712110708323` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098500 has offset 0).

The definition of A098500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098500.P14725214712110708323

`∑[A047883(n)]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098500

/-- `∑[A047883(n)]+1` -/
def P14725214712110708323.Spec : Prop :=
  ∀ n, P14725214712110708323.a n = A098500 n

theorem P14725214712110708323.correct : P14725214712110708323.Spec := by
  intro n
  simp only [A098500]

end A098500

/-! ## A098500.P12576075093158619601

`∑[or(A000007(n), A047883(n))]`
-/

namespace A098500.P12576075093158619601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A047883 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098500.P12576075093158619601

namespace A098500

/-- `∑[or(A000007(n), A047883(n))]` -/
def P12576075093158619601.Spec : Prop :=
  ∀ n, P12576075093158619601.a n = A098500 n

end A098500

/-! ## A098500.P6837171326860294453

`∑[A047883(n)-A073097(2*n)]`
-/

namespace A098500.P6837171326860294453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047883 n - A073097 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098500.P6837171326860294453

namespace A098500

/-- `∑[A047883(n)-A073097(2*n)]` -/
def P6837171326860294453.Spec : Prop :=
  ∀ n, P6837171326860294453.a n = A098500 n

end A098500

/-! ## A098500.P4697169205464047720

`a(n-1)+A047883(n)%A018836(n)` with `a(0)=1`
-/

namespace A098500.P4697169205464047720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A047883 n) (A018836 n)

end

end A098500.P4697169205464047720

namespace A098500

/-- `a(n-1)+A047883(n)%A018836(n)` -/
def P4697169205464047720.Spec : Prop :=
  ∀ n, P4697169205464047720.a n = A098500 n

end A098500

/-! ## A098500.P3566663704101490264

`A065450(n+1)+A065450(n)-A047883(n+1)`
-/

namespace A098500.P3566663704101490264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065450 (n + 1) + (A065450 n - A047883 (n + 1))

end

end A098500.P3566663704101490264

namespace A098500

/-- `A065450(n+1)+A065450(n)-A047883(n+1)` -/
def P3566663704101490264.Spec : Prop :=
  ∀ n, P3566663704101490264.a n = A098500 n

end A098500

/-! ## A098500.P7466305754369931737

`∑[A028310(A047883(n))]`
-/

namespace A098500.P7466305754369931737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A047883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098500.P7466305754369931737

namespace A098500

/-- `∑[A028310(A047883(n))]` -/
def P7466305754369931737.Spec : Prop :=
  ∀ n, P7466305754369931737.a n = A098500 n

end A098500

/-!
# A098502: a(n) = 16*n - 4.

The programs for A098502, the canonical program `A098502.P2263672566962012192` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098502 has offset 1).

The definition of A098502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*(n+1)-4` (program `A098502.P2263672566962012192`, by `A098502.P2263672566962012192.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098502.P2263672566962012192

`16*(n+1)-4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098502

/-- `16*(n+1)-4` -/
def P2263672566962012192.Spec : Prop :=
  ∀ n, P2263672566962012192.a n = A098502 (n + 1)

theorem P2263672566962012192.correct : P2263672566962012192.Spec := by
  intro n
  simp only [A098502, Nat.add_sub_cancel]

end A098502

/-!
# A098503: Triangle T(n,k) by rows: coefficient [x^(n-k)] of 2^n * n! *L(n,1/2,x), with L the generalized Laguerre polynomials in the Abramowitz-Stegun normalization.

The programs for A098503, there is no canonical definition to state claims against.
-/

/-! ## A098503.P9627105825798815891

`A130321(n)*A130757(A061579(n))`
-/

namespace A098503.P9627105825798815891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A130757 (A061579 n).toNat

end

end A098503.P9627105825798815891

/-! ## A098503.P5791430540612825971

`A000079(A025581(n))*A130757(A061579(n))`
-/

namespace A098503.P5791430540612825971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A130757 (A061579 n).toNat

end

end A098503.P5791430540612825971

/-! ## A098503.P5517708936140684930

`A000079(A004736(n+1)-1)*A130757(A061579(n))`
-/

namespace A098503.P5517708936140684930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004736 (n + 1) - 1).toNat * A130757 (A061579 n).toNat

end

end A098503.P5517708936140684930

/-!
# A098505: Numerators in inverse of a Catalan scaled binomial matrix.

The programs for A098505, the canonical program `A098505.P5754595311087351672` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098505 has offset 0).

The definition of A098505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098505.P5754595311087351672

`A007318(n)/gcd(A007318(n), A168256(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A098505

/-- `A007318(n)/gcd(A007318(n), A168256(n))` -/
def P5754595311087351672.Spec : Prop :=
  ∀ n, P5754595311087351672.a n = (A098505 n : ℚ)

end A098505

/-! ## A098505.P7839918499887686386

`lcm(A007318(n), A168256(n+1))/A168256(n+1)`
-/

namespace A098505.P7839918499887686386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007318 n) (A168256 (n + 1)) : ℚ) / (A168256 (n + 1) : ℚ)

end

end A098505.P7839918499887686386

namespace A098505

/-- `lcm(A007318(n), A168256(n+1))/A168256(n+1)` -/
def P7839918499887686386.Spec : Prop :=
  ∀ n, P7839918499887686386.a n = (A098505 n : ℚ)

end A098505

/-! ## A098505.P11468282569594123669

`A006530(A007318(n)^A229946(n))`
-/

namespace A098505.P11468282569594123669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A229946 n : ℤ))).toNat

end

end A098505.P11468282569594123669

namespace A098505

/-- `A006530(A007318(n)^A229946(n))` -/
def P11468282569594123669.Spec : Prop :=
  ∀ n, P11468282569594123669.a n = A098505 n

end A098505

/-! ## A098505.P16380006428249813822

`A006530(A007318(n)^A233323(n+5))`
-/

namespace A098505.P16380006428249813822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A233323 (n + 5) : ℤ))).toNat

end

end A098505.P16380006428249813822

namespace A098505

/-- `A006530(A007318(n)^A233323(n+5))` -/
def P16380006428249813822.Spec : Prop :=
  ∀ n, P16380006428249813822.a n = A098505 n

end A098505

/-! ## A098505.P4304302536376005226

`A174203(A253670(n))`
-/

namespace A098505.P4304302536376005226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174203 (A253670 n).toNat

end

end A098505.P4304302536376005226

namespace A098505

/-- `A174203(A253670(n))` -/
def P4304302536376005226.Spec : Prop :=
  ∀ n, P4304302536376005226.a n = A098505 n

end A098505

/-!
# A098508: Second column of the inverse of a Catalan scaled binomial matrix (A098505).

The programs for A098508, the canonical program `A098508.P8809239731924744520` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098508 has offset 0).

The definition of A098508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098508.P8809239731924744520

`C(n, 2)/gcd(C(n, 2), A000108(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098508

/-- `C(n, 2)/gcd(C(n, 2), A000108(n))` -/
def P8809239731924744520.Spec : Prop :=
  ∀ n, P8809239731924744520.a n = (A098508 n : ℚ)

end A098508

/-! ## A098508.P13959445534733226874

`A161680(n)/gcd(A000108(n), A161680(n))`
-/

namespace A098508.P13959445534733226874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 n : ℚ) / (Int.gcd (A000108 n) (A161680 n) : ℚ)

end

end A098508.P13959445534733226874

namespace A098508

/-- `A161680(n)/gcd(A000108(n), A161680(n))` -/
def P13959445534733226874.Spec : Prop :=
  ∀ n, P13959445534733226874.a n = (A098508 n : ℚ)

end A098508

/-! ## A098508.P17783781207663301323

`A135503(n)/gcd(A000984(n), A135503(n))`
-/

namespace A098508.P17783781207663301323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135503 n : ℚ) / (Int.gcd (A000984 n) (A135503 n) : ℚ)

end

end A098508.P17783781207663301323

namespace A098508

/-- `A135503(n)/gcd(A000984(n), A135503(n))` -/
def P17783781207663301323.Spec : Prop :=
  ∀ n, P17783781207663301323.a n = (A098508 n : ℚ)

end A098508

/-! ## A098508.P8662083075423470958

`lcm(C(n, 2), A097331(2*n+1))/A097331(2*n+1)`
-/

namespace A098508.P8662083075423470958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (Nat.choose n 2 : ℤ) (A097331 (2 * n + 1)) : ℚ) / (A097331 (2 * n + 1) : ℚ)

end

end A098508.P8662083075423470958

namespace A098508

/-- `lcm(C(n, 2), A097331(2*n+1))/A097331(2*n+1)` -/
def P8662083075423470958.Spec : Prop :=
  ∀ n, P8662083075423470958.a n = (A098508 n : ℚ)

end A098508

/-! ## A098508.P7007492263980357019

`lcm(n-A000217(n), A000108(n))/A000108(n)`
-/

namespace A098508.P7007492263980357019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - A000217 n) (A000108 n) : ℚ) / (A000108 n : ℚ)

end

end A098508.P7007492263980357019

namespace A098508

/-- `lcm(n-A000217(n), A000108(n))/A000108(n)` -/
def P7007492263980357019.Spec : Prop :=
  ∀ n, P7007492263980357019.a n = (A098508 n : ℚ)

end A098508

/-!
# A098509: Denominators of the inverse of a Catalan scaled binomial matrix.

The programs for A098509, there is no canonical definition to state claims against.
-/

/-! ## A098509.P1557605794067818786

`A098505(n)/A007318(n)*A168256(n)`
-/

namespace A098509.P1557605794067818786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098505 n : ℚ) / (A007318 n : ℚ) * (A168256 n : ℚ)

end

end A098509.P1557605794067818786

/-! ## A098509.P1556019024282048539

`A168256(n)/gcd(A007318(n), A168256(n+1))`
-/

namespace A098509.P1556019024282048539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168256 n : ℚ) / (Int.gcd (A007318 n) (A168256 (n + 1)) : ℚ)

end

end A098509.P1556019024282048539

/-! ## A098509.P8971887355434165081

`A168256(n)/A007318(n)*A174203(A253670(n))`
-/

namespace A098509.P8971887355434165081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168256 n : ℚ) / (A007318 n : ℚ) * (A174203 (A253670 n).toNat : ℚ)

end

end A098509.P8971887355434165081

/-! ## A098509.P7806381001338390093

`A168256(n)/A040001(A038245(n))`
-/

namespace A098509.P7806381001338390093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168256 n : ℚ) / (A040001 (A038245 n).toNat : ℚ)

end

end A098509.P7806381001338390093

/-! ## A098509.P8968643702582727750

`A168256(n)/A296978(A296974(n+1))`
-/

namespace A098509.P8968643702582727750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168256 n : ℚ) / (A296978 (A296974 (n + 1)).toNat : ℚ)

end

end A098509.P8968643702582727750

/-!
# A098510: Row sums of a matrix associated to the inverse of a Catalan scaled binomial matrix.

The programs for A098510, there is no canonical definition to state claims against.
-/

/-! ## A098510.P8542583587117534547

`A105601(A005508(n))-floor(acot(n)+n)`
-/

namespace A098510.P8542583587117534547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105601 (A005508 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

end

end A098510.P8542583587117534547

/-! ## A098510.P8102242298367438679

`A181819(A214766(n))+A084153(n)`
-/

namespace A098510.P8102242298367438679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A214766 n).toNat + A084153 n

end

end A098510.P8102242298367438679

/-!
# A098511: Diagonal sums of a matrix associated to the inverse of a Catalan scaled binomial matrix.

The programs for A098511, there is no canonical definition to state claims against.
-/

/-! ## A098511.P4082550639270572988

`A124288(A036250(n))`
-/

namespace A098511.P4082550639270572988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124288 (A036250 n).toNat

end

end A098511.P4082550639270572988

/-! ## A098511.P7571766815448282082

`A124288(A113822(n))`
-/

namespace A098511.P7571766815448282082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124288 (A113822 n).toNat

end

end A098511.P7571766815448282082

/-! ## A098511.P2376820674734781703

`A124288(A185089(n))`
-/

namespace A098511.P2376820674734781703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124288 (A185089 n).toNat

end

end A098511.P2376820674734781703

/-!
# A098512: Second column and subdiagonal of number triangle A098509.

The programs for A098512, the canonical program `A098512.P16240624662413006847` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098512 has offset 0).

The definition of A098512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098512.P12979205713203644240

`A093526(abs(1-n))`
-/

namespace A098512.P12979205713203644240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093526 |1 - (n : ℤ)|.toNat

end

end A098512.P12979205713203644240

namespace A098512

/-- `A093526(abs(1-n))` -/
def P12979205713203644240.Spec : Prop :=
  ∀ n, P12979205713203644240.a n = A098512 n

end A098512

/-! ## A098512.P16240624662413006847

`A000108(n)/gcd(n, A000108(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098512

/-- `A000108(n)/gcd(n, A000108(n))` -/
def P16240624662413006847.Spec : Prop :=
  ∀ n, P16240624662413006847.a n = (A098512 n : ℚ)

end A098512

/-! ## A098512.P7825423041850843028

`A195686(n)/(n+1)`
-/

namespace A098512.P7825423041850843028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195686 n : ℚ) / (n + 1 : ℚ)

end

end A098512.P7825423041850843028

namespace A098512

/-- `A195686(n)/(n+1)` -/
def P7825423041850843028.Spec : Prop :=
  ∀ n, P7825423041850843028.a n = (A098512 n : ℚ)

end A098512

/-! ## A098512.P7712054659785068972

`gcd(A000108(n), A195686(n))`
-/

namespace A098512.P7712054659785068972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 n) (A195686 n)

end

end A098512.P7712054659785068972

namespace A098512

/-- `gcd(A000108(n), A195686(n))` -/
def P7712054659785068972.Spec : Prop :=
  ∀ n, (P7712054659785068972.a n : ℤ) = A098512 n

end A098512

/-! ## A098512.P8894926145994963850

`gcd(A195686(n)+A001700(n), A001700(n))`
-/

namespace A098512.P8894926145994963850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195686 n + A001700 n) (A001700 n)

end

end A098512.P8894926145994963850

namespace A098512

/-- `gcd(A195686(n)+A001700(n), A001700(n))` -/
def P8894926145994963850.Spec : Prop :=
  ∀ n, (P8894926145994963850.a n : ℤ) = A098512 n

end A098512

/-!
# A098514: For p=prime(n), a(n) = number of points (x,y) on the elliptic curve y^2 = x^3 + x + 1 (mod p), not including the point at infinity.

The programs for A098514, there is no canonical definition to state claims against.
-/

/-! ## A098514.P9824689574988914431

`A192334(n+1)-1`
-/

namespace A098514.P9824689574988914431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192334 (n + 1) - 1

end

end A098514.P9824689574988914431

/-! ## A098514.P15595008443340321482

`A023443(A192334(n+1))`
-/

namespace A098514.P15595008443340321482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A192334 (n + 1)).toNat

end

end A098514.P15595008443340321482

/-! ## A098514.P1435493329948950470

`A098513(p?[comp[n²]])`
-/

namespace A098514.P1435493329948950470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A098514.P1435493329948950470

/-! ## A098514.P13823923182213017924

`A098513(Δ[A007504(n)])`
-/

namespace A098514.P13823923182213017924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (f1 (n + 1) - f1 n).toNat

end

end A098514.P13823923182213017924

/-! ## A098514.P6392486462692413785

`A098513(A000040(n+1))`
-/

namespace A098514.P6392486462692413785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (A000040 (n + 1)).toNat

end

end A098514.P6392486462692413785

/-! ## A098514.P7718519554238754202

`A098513(A008578(n+2))`
-/

namespace A098514.P7718519554238754202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (A008578 (n + 2)).toNat

end

end A098514.P7718519554238754202

/-! ## A098514.P13118392315001868367

`A098513(A182986(n+2))`
-/

namespace A098514.P13118392315001868367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (A182986 (n + 2)).toNat

end

end A098514.P13118392315001868367

/-! ## A098514.P1591226068156793471

`A098513(record[A006530(n+2)])`
-/

namespace A098514.P1591226068156793471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098514.P1591226068156793471

/-! ## A098514.P15912060251790368392

`A098513(record[A014963(n+2)])`
-/

namespace A098514.P15912060251790368392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098514.P15912060251790368392

/-! ## A098514.P15269105119270600507

`A098513(record[A020639(n+2)])`
-/

namespace A098514.P15269105119270600507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A098514.P15269105119270600507

/-! ## A098514.P11039381044856526322

`A098513(A007504(n+1)-A007504(n))`
-/

namespace A098514.P11039381044856526322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098513 (A007504 (n + 1) - A007504 n).toNat

end

end A098514.P11039381044856526322

/-!
# A098515: Least m such that m and m+n are both products of exactly n primes counting multiplicity.

The programs for A098515, there is no canonical definition to state claims against.
-/

/-! ## A098515.P10632894590249592418

`A000374(A075729(n))*A046683(n+1)`
-/

namespace A098515.P10632894590249592418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (A075729 n).toNat * A046683 (n + 1)

end

end A098515.P10632894590249592418

/-! ## A098515.P1756910517946755456

`A050985(A050995(n))*A051125(n+1)`
-/

namespace A098515.P1756910517946755456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A050995 n).toNat * A051125 (n + 1)

end

end A098515.P1756910517946755456

/-!
# A098516: Minimum wind speed in mph for a category n hurricane in the Saffir-Simpson hurricane scale.

The programs for A098516, there is no canonical definition to state claims against.
-/

/-! ## A098516.P9862336948746406835

`A310170(A090767(n+2))`
-/

namespace A098516.P9862336948746406835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310170 (A090767 (n + 2)).toNat

end

end A098516.P9862336948746406835

/-!
# A098517: Minimum wind speed in mph for a tornado of Fujita (or Fujita-Pearson) scale F_n.

The programs for A098517, there is no canonical definition to state claims against.
-/

/-! ## A098517.P14967237047074706110

`floor(Δ[sqrt(A133070(2*n+3))])`
-/

namespace A098517.P14967237047074706110
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133070 (2 * n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A098517.P14967237047074706110

/-!
# A098518: E.g.f. exp(x)*BesselI(1,2*sqrt(2)*x)/sqrt(2).

The programs for A098518, there is no canonical definition to state claims against.
-/

/-! ## A098518.P17521775924105370250

`n/2*A014431(n+1)`
-/

namespace A098518.P17521775924105370250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A014431 (n + 1) : ℚ)

end

end A098518.P17521775924105370250

/-! ## A098518.P3220128020518749195

`Δ[A084601(n)/4]`
-/

namespace A098518.P3220128020518749195
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084601 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098518.P3220128020518749195

/-! ## A098518.P11559832459562654292

`A119975(n)-A084601(n)`
-/

namespace A098518.P11559832459562654292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119975 n - A084601 n

end

end A098518.P11559832459562654292

/-! ## A098518.P8139366532555965402

`Δ[A115991(∑[n])/4]`
-/

namespace A098518.P8139366532555965402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115991 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098518.P8139366532555965402

/-! ## A098518.P7256709996899859409

`record[(A115991(n)-A115991(n+1))/2]`
-/

namespace A098518.P7256709996899859409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115991 n - A115991 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098518.P7256709996899859409

/-! ## A098518.P12754846973994925348

`n*A306684(A027379(n))`
-/

namespace A098518.P12754846973994925348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306684 (A027379 n).toNat

end

end A098518.P12754846973994925348

/-! ## A098518.P16535375324078565550

`n*A306684(A055998(n))`
-/

namespace A098518.P16535375324078565550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306684 (A055998 n).toNat

end

end A098518.P16535375324078565550

/-! ## A098518.P3681601731266468574

`n*A306684(A046691(n)+1)`
-/

namespace A098518.P3681601731266468574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306684 (A046691 n + 1).toNat

end

end A098518.P3681601731266468574

/-! ## A098518.P6410685261561196878

`n*A306684(A000096(n)+n)`
-/

namespace A098518.P6410685261561196878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306684 (A000096 n + (n : ℤ)).toNat

end

end A098518.P6410685261561196878

/-! ## A098518.P5589974403858557521

`n*A306684(A055999(n)-n)`
-/

namespace A098518.P5589974403858557521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306684 (A055999 n - (n : ℤ)).toNat

end

end A098518.P5589974403858557521

/-! ## A098518.P16333897180092042158

`floor(A084600(n²+1+n)/2)`
-/

namespace A098518.P16333897180092042158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084600 (n ^ 2 + 1 + n) : ℚ) / 2⌋

end

end A098518.P16333897180092042158

/-! ## A098518.P5035869845123957034

`Δ[A084600(∑[2*n])/4]`
-/

namespace A098518.P5035869845123957034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084600 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098518.P5035869845123957034

/-!
# A098519: E.g.f. exp(x)*BesselI(1,2*sqrt(3)*x)/sqrt(3).

The programs for A098519, the canonical program `A098519.P5124454588413871972` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098519 has offset 0).

The definition of A098519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098519.P338351951706651829

`n/3*A014432(n)`
-/

namespace A098519.P338351951706651829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A014432 n : ℚ)

end

end A098519.P338351951706651829

namespace A098519

/-- `n/3*A014432(n)` -/
def P338351951706651829.Spec : Prop :=
  ∀ n, P338351951706651829.a n = (A098519 n : ℚ)

end A098519

/-! ## A098519.P5124454588413871972

`n*A025237((n-1)%(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098519

/-- `n*A025237((n-1)%(n+1))` -/
def P5124454588413871972.Spec : Prop :=
  ∀ n, P5124454588413871972.a n = A098519 n

theorem P5124454588413871972.correct : P5124454588413871972.Spec := by
  intro n
  simp only [A098519]

end A098519

/-! ## A098519.P4286749319026318311

`n*A025237(A123108(A004275(n)))`
-/

namespace A098519.P4286749319026318311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025237 (A123108 (A004275 n).toNat).toNat

end

end A098519.P4286749319026318311

namespace A098519

/-- `n*A025237(A123108(A004275(n)))` -/
def P4286749319026318311.Spec : Prop :=
  ∀ n, P4286749319026318311.a n = A098519 n

end A098519

/-! ## A098519.P15727899966705351380

`Δ[A084603(n)/6]`
-/

namespace A098519.P15727899966705351380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084603 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098519.P15727899966705351380

namespace A098519

/-- `Δ[A084603(n)/6]` -/
def P15727899966705351380.Spec : Prop :=
  ∀ n, P15727899966705351380.a n = (A098519 n : ℚ)

end A098519

/-! ## A098519.P7719925998188575298

`n*A306684(A046691(n+1))`
-/

namespace A098519.P7719925998188575298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306684 (A046691 (n + 1)).toNat

end

end A098519.P7719925998188575298

namespace A098519

/-- `n*A306684(A046691(n+1))` -/
def P7719925998188575298.Spec : Prop :=
  ∀ n, P7719925998188575298.a n = A098519 n

end A098519

/-! ## A098519.P8830810137359085794

`n*A306684(A055999(n)+2)`
-/

namespace A098519.P8830810137359085794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A306684 (A055999 n + 2).toNat

end

end A098519.P8830810137359085794

namespace A098519

/-- `n*A306684(A055999(n)+2)` -/
def P8830810137359085794.Spec : Prop :=
  ∀ n, P8830810137359085794.a n = A098519 n

end A098519

/-! ## A098519.P4327371271413857004

`Δ[A084602(∑[2*n])]/6`
-/

namespace A098519.P4327371271413857004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084602 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 6

end

end A098519.P4327371271413857004

namespace A098519

/-- `Δ[A084602(∑[2*n])]/6` -/
def P4327371271413857004.Spec : Prop :=
  ∀ n, P4327371271413857004.a n = (A098519 n : ℚ)

end A098519

/-!
# A098520: E.g.f. exp(x)*BesselI(1,4*x)/2.

The programs for A098520, the canonical program `A098520.P3172092028380321248` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098520 has offset 0).

The definition of A098520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098520.P10240223040459649659

`n/4*A014433(n)`
-/

namespace A098520.P10240223040459649659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A014433 n : ℚ)

end

end A098520.P10240223040459649659

namespace A098520

/-- `n/4*A014433(n)` -/
def P10240223040459649659.Spec : Prop :=
  ∀ n, P10240223040459649659.a n = (A098520 n : ℚ)

end A098520

/-! ## A098520.P3172092028380321248

`n*A091147((2*n)%(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098520

/-- `n*A091147((2*n)%(n+1))` -/
def P3172092028380321248.Spec : Prop :=
  ∀ n, P3172092028380321248.a n = A098520 n

theorem P3172092028380321248.correct : P3172092028380321248.Spec := by
  intro n
  simp only [A098520]

end A098520

/-! ## A098520.P5107951588204270548

`Δ[A084605(n)/8]`
-/

namespace A098520.P5107951588204270548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084605 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098520.P5107951588204270548

namespace A098520

/-- `Δ[A084605(n)/8]` -/
def P5107951588204270548.Spec : Prop :=
  ∀ n, P5107951588204270548.a n = (A098520 n : ℚ)

end A098520

/-! ## A098520.P18352500280849969598

`(A151318(n)-A084605(n))/2`
-/

namespace A098520.P18352500280849969598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151318 n - A084605 n : ℚ) / 2

end

end A098520.P18352500280849969598

namespace A098520

/-- `(A151318(n)-A084605(n))/2` -/
def P18352500280849969598.Spec : Prop :=
  ∀ n, P18352500280849969598.a n = (A098520 n : ℚ)

end A098520

/-! ## A098520.P4034935026613802205

`A084604(A004273(A000217(n)))-A000007(n)`
-/

namespace A098520.P4034935026613802205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (A004273 (A000217 n).toNat).toNat - A000007 n

end

end A098520.P4034935026613802205

namespace A098520

/-- `A084604(A004273(A000217(n)))-A000007(n)` -/
def P4034935026613802205.Spec : Prop :=
  ∀ n, P4034935026613802205.a n = A098520 n

end A098520

/-! ## A098520.P17392339700253509517

`A084604(A014681(A002378(n)))-A000007(n)`
-/

namespace A098520.P17392339700253509517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084604 (A014681 (A002378 n).toNat).toNat - A000007 n

end

end A098520.P17392339700253509517

namespace A098520

/-- `A084604(A014681(A002378(n)))-A000007(n)` -/
def P17392339700253509517.Spec : Prop :=
  ∀ n, P17392339700253509517.a n = A098520 n

end A098520

/-! ## A098520.P7057744284074175073

`(A151318(n)-A307847(∑[n+3]))/2`
-/

namespace A098520.P7057744284074175073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151318 n - A307847 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A098520.P7057744284074175073

namespace A098520

/-- `(A151318(n)-A307847(∑[n+3]))/2` -/
def P7057744284074175073.Spec : Prop :=
  ∀ n, P7057744284074175073.a n = (A098520 n : ℚ)

end A098520

/-! ## A098520.P10432056994447429002

`Δ[sqrt(A322240(n))/8]`
-/

namespace A098520.P10432056994447429002
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A322240 n : ℝ) / 8

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098520.P10432056994447429002

namespace A098520

/-- `Δ[sqrt(A322240(n))/8]` -/
def P10432056994447429002.Spec : Prop :=
  ∀ n, P10432056994447429002.a n = (A098520 n : ℝ)

end A098520

/-!
# A098521: E.g.f. exp(x)*BesselI(2,2*sqrt(2)*x)/2.

The programs for A098521, there is no canonical definition to state claims against.
-/

/-! ## A098521.P10250939438494886263

`(A084601(n)-A025235(n))/2`
-/

namespace A098521.P10250939438494886263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084601 n - A025235 n : ℚ) / 2

end

end A098521.P10250939438494886263

/-! ## A098521.P17763712064251064836

`A336996(A014206(n))%A084601(n)`
-/

namespace A098521.P17763712064251064836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336996 (A014206 n).toNat) (A084601 n)

end

end A098521.P17763712064251064836

/-! ## A098521.P8069303283348600941

`A336996(A003682(n+1))%A000079(n)²`
-/

namespace A098521.P8069303283348600941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336996 (A003682 (n + 1)).toNat) (A000079 n ^ 2)

end

end A098521.P8069303283348600941

/-! ## A098521.P15332871062709285167

`A060576(A028310(n))*A336996(A014206(n))`
-/

namespace A098521.P15332871062709285167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A028310 n).toNat * A336996 (A014206 n).toNat

end

end A098521.P15332871062709285167

/-! ## A098521.P1592012174326083894

`floor(A084600(A014206(n))/4)%A041016(n)`
-/

namespace A098521.P1592012174326083894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A084600 (A014206 n).toNat : ℚ) / 4⌋ (A041016 n)

end

end A098521.P1592012174326083894

/-! ## A098521.P12604587793238908402

`ceil(A084600(A014206(n))/4)%A305256(n)`
-/

namespace A098521.P12604587793238908402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A084600 (A014206 n).toNat : ℚ) / 4⌉ (A305256 n)

end

end A098521.P12604587793238908402

/-!
# A098522: E.g.f. exp(x)*BesselI(2,2*sqrt(3)*x)/3.

The programs for A098522, there is no canonical definition to state claims against.
-/

/-! ## A098522.P8312413886069093821

`(A084603(n)-A025237(n))/3`
-/

namespace A098522.P8312413886069093821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084603 n - A025237 n : ℚ) / 3

end

end A098522.P8312413886069093821

/-! ## A098522.P7045635215307061224

`(A084603(n)-A025237(n))*3^A008683(A031927(n))`
-/

namespace A098522.P7045635215307061224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084603 n - A025237 n : ℚ) * (3 : ℚ) ^ (A008683 (A031927 n).toNat : ℤ)

end

end A098522.P7045635215307061224

/-! ## A098522.P16924543806178954439

`A255588(A084603(n)-A025237(n))`
-/

namespace A098522.P16924543806178954439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A084603 n - A025237 n).toNat

end

end A098522.P16924543806178954439

/-! ## A098522.P3474309730003346578

`A002264(A084603(n)-A025237(n))`
-/

namespace A098522.P3474309730003346578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A084603 n - A025237 n).toNat

end

end A098522.P3474309730003346578

/-!
# A098523: Expansion of (1+x^2)/(1-x-x^5) = (1+x^2)/((1-x+x^2)*(1-x^2-x^3)).

The programs for A098523, the canonical program `A098523.P10264552085563322177` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098523 has offset 0).

The definition of A098523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098523.P10264552085563322177

`a(n-1)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098523

/-- `a(n-1)+a(n-5)` -/
def P10264552085563322177.Spec : Prop :=
  ∀ n, (P10264552085563322177.a n : ℤ) = A098523 n

theorem P10264552085563322177.correct : P10264552085563322177.Spec := by
  intro n
  simp only [A098523]

end A098523

/-! ## A098523.P5025227035840944257

`ogf((1+x^2)/(1-x-x^5))`
-/

namespace A098523.P5025227035840944257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -1, 0, 0, 0, -1] n

end

end A098523.P5025227035840944257

namespace A098523

/-- `ogf((1+x^2)/(1-x-x^5))` -/
def P5025227035840944257.Spec : Prop :=
  ∀ n, P5025227035840944257.a n = A098523 n

end A098523

/-! ## A098523.P12959931683882756284

`A226516(2*(n+6))`
-/

namespace A098523.P12959931683882756284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (2 * (n + 6))

end

end A098523.P12959931683882756284

namespace A098523

/-- `A226516(2*(n+6))` -/
def P12959931683882756284.Spec : Prop :=
  ∀ n, P12959931683882756284.a n = A098523 n

end A098523

/-! ## A098523.P18011633320220142564

`A017899(n+3)+A003520(n)`
-/

namespace A098523.P18011633320220142564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 3) + A003520 n

end

end A098523.P18011633320220142564

namespace A098523

/-- `A017899(n+3)+A003520(n)` -/
def P18011633320220142564.Spec : Prop :=
  ∀ n, P18011633320220142564.a n = A098523 n

end A098523

/-! ## A098523.P306459275909745973

`A182097(n)+A017899(n+4)`
-/

namespace A098523.P306459275909745973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n + A017899 (n + 4)

end

end A098523.P306459275909745973

namespace A098523

/-- `A182097(n)+A017899(n+4)` -/
def P306459275909745973.Spec : Prop :=
  ∀ n, P306459275909745973.a n = A098523 n

end A098523

/-! ## A098523.P9439153625304016375

`A007307(n)+Δ[Δ[A017899(n)]]`
-/

namespace A098523.P9439153625304016375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n + (f1 (n + 1) - f1 n)

end

end A098523.P9439153625304016375

namespace A098523

/-- `A007307(n)+Δ[Δ[A017899(n)]]` -/
def P9439153625304016375.Spec : Prop :=
  ∀ n, P9439153625304016375.a n = A098523 n

end A098523

/-! ## A098523.P16462700211931129255

`∑[A003520(n)-A000931(n+2)]`
-/

namespace A098523.P16462700211931129255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n - A000931 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098523.P16462700211931129255

namespace A098523

/-- `∑[A003520(n)-A000931(n+2)]` -/
def P16462700211931129255.Spec : Prop :=
  ∀ n, P16462700211931129255.a n = A098523 n

end A098523

/-! ## A098523.P1746629493972616373

`A017899(n+3)+∑[A017899(n)]`
-/

namespace A098523.P1746629493972616373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098523.P1746629493972616373

namespace A098523

/-- `A017899(n+3)+∑[A017899(n)]` -/
def P1746629493972616373.Spec : Prop :=
  ∀ n, P1746629493972616373.a n = A098523 n

end A098523

/-! ## A098523.P7864307742023627467

`A084338(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A098523.P7864307742023627467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A084338 n - a (n - 3)

end

end A098523.P7864307742023627467

namespace A098523

/-- `A084338(n)-a(n-3)` -/
def P7864307742023627467.Spec : Prop :=
  ∀ n, P7864307742023627467.a n = A098523 n

end A098523

/-! ## A098523.P439301977670890897

`A003520(n)+Δ[A003520(n+2)]`
-/

namespace A098523.P439301977670890897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n + (f1 (n + 1) - f1 n)

end

end A098523.P439301977670890897

namespace A098523

/-- `A003520(n)+Δ[A003520(n+2)]` -/
def P439301977670890897.Spec : Prop :=
  ∀ n, P439301977670890897.a n = A098523 n

end A098523

/-! ## A098523.P16247219216783811276

`A017899(n+4)+Δ[A023434(n)]`
-/

namespace A098523.P16247219216783811276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (n + 4) + (f1 (n + 1) - f1 n)

end

end A098523.P16247219216783811276

namespace A098523

/-- `A017899(n+4)+Δ[A023434(n)]` -/
def P16247219216783811276.Spec : Prop :=
  ∀ n, P16247219216783811276.a n = A098523 n

end A098523

/-! ## A098523.P16325366189549863276

`∑[A003520(n)]-A023434(n)`
-/

namespace A098523.P16325366189549863276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023434 n

end

end A098523.P16325366189549863276

namespace A098523

/-- `∑[A003520(n)]-A023434(n)` -/
def P16325366189549863276.Spec : Prop :=
  ∀ n, P16325366189549863276.a n = A098523 n

end A098523

/-!
# A098524: Expansion of (1+2x^2)/(1-x-4x^5).

The programs for A098524, the canonical program `A098524.P7604253537232307458` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098524 has offset 0).

The definition of A098524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2)/(1-x-4x^5))` (program `A098524.P7604253537232307458`, by `A098524.P7604253537232307458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098524.P7604253537232307458

`ogf((1+2x^2)/(1-x-4x^5))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098524

/-- `ogf((1+2x^2)/(1-x-4x^5))` -/
def P7604253537232307458.Spec : Prop :=
  ∀ n, P7604253537232307458.a n = A098524 n

theorem P7604253537232307458.correct : P7604253537232307458.Spec := by
  intro n
  simp only [A098524]

end A098524

/-! ## A098524.P3441807446196983419

`a(n-1)+4*a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=3`
-/

namespace A098524.P3441807446196983419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3, 3] fun n a =>
  a (n - 1) + 4 * a (n - 5)

end

end A098524.P3441807446196983419

namespace A098524

/-- `a(n-1)+4*a(n-5)` -/
def P3441807446196983419.Spec : Prop :=
  ∀ n, (P3441807446196983419.a n : ℤ) = A098524 n

end A098524

/-! ## A098524.P4384527181225554761

`A343515(C(n, floor(log2(n+1))))`
-/

namespace A098524.P4384527181225554761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343515 (Nat.choose n (Nat.log 2 (n + 1)))

end

end A098524.P4384527181225554761

namespace A098524

/-- `A343515(C(n, floor(log2(n+1))))` -/
def P4384527181225554761.Spec : Prop :=
  ∀ n, P4384527181225554761.a n = A098524 n

end A098524

/-! ## A098524.P13773418829758140989

`A343515(A024501(n))`
-/

namespace A098524.P13773418829758140989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343515 (A024501 n).toNat

end

end A098524.P13773418829758140989

namespace A098524

/-- `A343515(A024501(n))` -/
def P13773418829758140989.Spec : Prop :=
  ∀ n, P13773418829758140989.a n = A098524 n

end A098524

/-! ## A098524.P2088997307182888034

`A343515(A055789(n))`
-/

namespace A098524.P2088997307182888034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343515 (A055789 n).toNat

end

end A098524.P2088997307182888034

namespace A098524

/-- `A343515(A055789(n))` -/
def P2088997307182888034.Spec : Prop :=
  ∀ n, P2088997307182888034.a n = A098524 n

end A098524

/-!
# A098525: Expansion of (1+3x^2)/(1-x-9x^5).

The programs for A098525, the canonical program `A098525.P3818407665869044370` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098525 has offset 0).

The definition of A098525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x^2)/(1-x-9x^5))` (program `A098525.P3818407665869044370`, by `A098525.P3818407665869044370.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098525.P6736255426609679052

`a(n-1)+9*a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=4, a(4)=4`
-/

namespace A098525.P6736255426609679052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 4, 4] fun n a =>
  a (n - 1) + 9 * a (n - 5)

end

end A098525.P6736255426609679052

namespace A098525

/-- `a(n-1)+9*a(n-5)` -/
def P6736255426609679052.Spec : Prop :=
  ∀ n, (P6736255426609679052.a n : ℤ) = A098525 n

end A098525

/-! ## A098525.P3818407665869044370

`ogf((1+3x^2)/(1-x-9x^5))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098525

/-- `ogf((1+3x^2)/(1-x-9x^5))` -/
def P3818407665869044370.Spec : Prop :=
  ∀ n, P3818407665869044370.a n = A098525 n

theorem P3818407665869044370.correct : P3818407665869044370.Spec := by
  intro n
  simp only [A098525]

end A098525

/-! ## A098525.P13450896435465318165

`A276786(A098524(n)%A201148(n+1))`
-/

namespace A098525.P13450896435465318165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276786 (Int.tmod (A098524 n) (A201148 (n + 1))).toNat

end

end A098525.P13450896435465318165

namespace A098525

/-- `A276786(A098524(n)%A201148(n+1))` -/
def P13450896435465318165.Spec : Prop :=
  ∀ n, P13450896435465318165.a n = A098525 n

end A098525

/-!
# A098526: Expansion of (1+4x^2)/(1-x-16x^5).

The programs for A098526, the canonical program `A098526.P12380544338232697450` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098526 has offset 0).

The definition of A098526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x^2)/(1-x-16x^5))` (program `A098526.P12380544338232697450`, by `A098526.P12380544338232697450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098526.P14380309002051562283

`a(n-1)+16*a(n-5)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=5, a(4)=5`
-/

namespace A098526.P14380309002051562283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 5, 5] fun n a =>
  a (n - 1) + 16 * a (n - 5)

end

end A098526.P14380309002051562283

namespace A098526

/-- `a(n-1)+16*a(n-5)` -/
def P14380309002051562283.Spec : Prop :=
  ∀ n, (P14380309002051562283.a n : ℤ) = A098526 n

end A098526

/-! ## A098526.P12380544338232697450

`ogf((1+4x^2)/(1-x-16x^5))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098526

/-- `ogf((1+4x^2)/(1-x-16x^5))` -/
def P12380544338232697450.Spec : Prop :=
  ∀ n, P12380544338232697450.a n = A098526 n

theorem P12380544338232697450.correct : P12380544338232697450.Spec := by
  intro n
  simp only [A098526]

end A098526

/-! ## A098526.P260794965418652432

`A098582(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A098526.P260794965418652432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098582 n - 2 * a (n - 1)

end

end A098526.P260794965418652432

namespace A098526

/-- `A098582(n)-2*a(n-1)` -/
def P260794965418652432.Spec : Prop :=
  ∀ n, P260794965418652432.a n = A098526 n

end A098526

/-! ## A098526.P8248780308518286506

`A098582(n)-lcm(2, a(A028310(n)-1))` with `a(0)=1`
-/

namespace A098526.P8248780308518286506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098582 n - (Int.lcm 2 (a (A028310 n - 1).toNat) : ℤ)

end

end A098526.P8248780308518286506

namespace A098526

/-- `A098582(n)-lcm(2, a(A028310(n)-1))` -/
def P8248780308518286506.Spec : Prop :=
  ∀ n, P8248780308518286506.a n = A098526 n

end A098526

/-!
# A098527: Expansion (1+x^3)/(1-x-x^7).

The programs for A098527, the canonical program `A098527.P369366155778983284` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098527 has offset 0).

The definition of A098527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098527.P369366155778983284

`a(n-1)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=2, a(6)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098527

/-- `a(n-1)+a(n-7)` -/
def P369366155778983284.Spec : Prop :=
  ∀ n, (P369366155778983284.a n : ℤ) = A098527 n

theorem P369366155778983284.correct : P369366155778983284.Spec := by
  intro n
  simp only [A098527]

end A098527

/-! ## A098527.P7944398674506843433

`A017901(n+4)+A005709(n)`
-/

namespace A098527.P7944398674506843433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (n + 4) + A005709 n

end

end A098527.P7944398674506843433

namespace A098527

/-- `A017901(n+4)+A005709(n)` -/
def P7944398674506843433.Spec : Prop :=
  ∀ n, P7944398674506843433.a n = A098527 n

end A098527

/-! ## A098527.P14429718561688735894

`A017901(n+4)+∑[A017901(n)]`
-/

namespace A098527.P14429718561688735894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098527.P14429718561688735894

namespace A098527

/-- `A017901(n+4)+∑[A017901(n)]` -/
def P14429718561688735894.Spec : Prop :=
  ∀ n, P14429718561688735894.a n = A098527 n

end A098527

/-! ## A098527.P9316670438045252535

`A017901(n+4)+A017901(n+7)`
-/

namespace A098527.P9316670438045252535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (n + 4) + A017901 (n + 7)

end

end A098527.P9316670438045252535

namespace A098527

/-- `A017901(n+4)+A017901(n+7)` -/
def P9316670438045252535.Spec : Prop :=
  ∀ n, P9316670438045252535.a n = A098527 n

end A098527

/-! ## A098527.P482219497846263822

`A005709(n)+Δ[A005709(n+3)]`
-/

namespace A098527.P482219497846263822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 n + (f1 (n + 1) - f1 n)

end

end A098527.P482219497846263822

namespace A098527

/-- `A005709(n)+Δ[A005709(n+3)]` -/
def P482219497846263822.Spec : Prop :=
  ∀ n, P482219497846263822.a n = A098527 n

end A098527

/-!
# A098528: Expansion of (1 + 2*x^3)/(1 - x - 4*x^7).

The programs for A098528, the canonical program `A098528.P10823916209972799416` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098528 has offset 0).

The definition of A098528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^3)/(1-x-4x^7))` (program `A098528.P10823916209972799416`, by `A098528.P10823916209972799416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098528.P8786306505948746881

`a(n-1)+4*a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=3, a(6)=3`
-/

namespace A098528.P8786306505948746881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 3, 3, 3] fun n a =>
  a (n - 1) + 4 * a (n - 7)

end

end A098528.P8786306505948746881

namespace A098528

/-- `a(n-1)+4*a(n-7)` -/
def P8786306505948746881.Spec : Prop :=
  ∀ n, (P8786306505948746881.a n : ℤ) = A098528 n

end A098528

/-! ## A098528.P10823916209972799416

`ogf((1+2x^3)/(1-x-4x^7))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098528

/-- `ogf((1+2x^3)/(1-x-4x^7))` -/
def P10823916209972799416.Spec : Prop :=
  ∀ n, P10823916209972799416.a n = A098528 n

theorem P10823916209972799416.correct : P10823916209972799416.Spec := by
  intro n
  simp only [A098528]

end A098528

/-! ## A098528.P16509106554194324386

`A343515(A023361(n))`
-/

namespace A098528.P16509106554194324386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343515 (A023361 n).toNat

end

end A098528.P16509106554194324386

namespace A098528

/-- `A343515(A023361(n))` -/
def P16509106554194324386.Spec : Prop :=
  ∀ n, P16509106554194324386.a n = A098528 n

end A098528

/-! ## A098528.P1626911447290924660

`A343515(A025048(n))`
-/

namespace A098528.P1626911447290924660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343515 (A025048 n).toNat

end

end A098528.P1626911447290924660

namespace A098528

/-- `A343515(A025048(n))` -/
def P1626911447290924660.Spec : Prop :=
  ∀ n, P1626911447290924660.a n = A098528 n

end A098528

/-! ## A098528.P4343486359697545753

`A343515(A072465(n))`
-/

namespace A098528.P4343486359697545753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343515 (A072465 n).toNat

end

end A098528.P4343486359697545753

namespace A098528

/-- `A343515(A072465(n))` -/
def P4343486359697545753.Spec : Prop :=
  ∀ n, P4343486359697545753.a n = A098528 n

end A098528

/-!
# A098531: Sum of fifth powers of first n Fibonacci numbers.

The programs for A098531, there is no canonical definition to state claims against.
-/

/-! ## A098531.P5984687001225678855

`∑[round(ϕ^n/sqrt(5))^5]`
-/

namespace A098531.P5984687001225678855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098531.P5984687001225678855

/-! ## A098531.P6589746509251416520

`A056572(n)+a(n-1)` with `a(0)=0`
-/

namespace A098531.P6589746509251416520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056572 n + a (n - 1)

end

end A098531.P6589746509251416520

/-! ## A098531.P8105787260513760847

`abs(∑[(A157727(n)-4)^5])`
-/

namespace A098531.P8105787260513760847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157727 n - 4) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A098531.P8105787260513760847

/-! ## A098531.P2824276712191646390

`a(n-1)+A000045(n)^5` with `a(0)=0`
-/

namespace A098531.P2824276712191646390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000045 n ^ 5

end

end A098531.P2824276712191646390

/-! ## A098531.P14483154474446503230

`lcm(∑[A056572(n)], A009531(2*n+1))`
-/

namespace A098531.P14483154474446503230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A009531 (2 * n + 1))

end

end A098531.P14483154474446503230

/-! ## A098531.P18250533549358387248

`A014197(A246374(n+1))+∑[A056572(n)]`
-/

namespace A098531.P18250533549358387248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A246374 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098531.P18250533549358387248

/-! ## A098531.P6078397139957143577

`A014197(A156104(n+1)+18)+∑[A056572(n)]`
-/

namespace A098531.P6078397139957143577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A156104 (n + 1) + 18).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098531.P6078397139957143577

/-! ## A098531.P10791636396718027902

`∑[A056572(n+1)]-A056572(n+1)`
-/

namespace A098531.P10791636396718027902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056572 (n + 1)

end

end A098531.P10791636396718027902

/-! ## A098531.P694044365183958637

`∑[A056572(n)]%A000045(A000040(n+2)+n)`
-/

namespace A098531.P694044365183958637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000045 (A000040 (n + 2) + (n : ℤ)).toNat)

end

end A098531.P694044365183958637

/-!
# A098532: Sum of sixth powers of first n Fibonacci numbers.

The programs for A098532, there is no canonical definition to state claims against.
-/

/-! ## A098532.P6983250529695837272

`∑[round(ϕ^n/sqrt(5))^6]`
-/

namespace A098532.P6983250529695837272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098532.P6983250529695837272

/-! ## A098532.P15306985617770291267

`A056573(n)+a(n-1)` with `a(0)=0`
-/

namespace A098532.P15306985617770291267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056573 n + a (n - 1)

end

end A098532.P15306985617770291267

/-! ## A098532.P2445697759355499730

`a(n-1)+A056570(n)²` with `a(0)=0`
-/

namespace A098532.P2445697759355499730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A056570 n ^ 2

end

end A098532.P2445697759355499730

/-! ## A098532.P14571036574851756531

`a(n-1)+A236191(n)^6` with `a(0)=0`
-/

namespace A098532.P14571036574851756531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A236191 n ^ 6

end

end A098532.P14571036574851756531

/-! ## A098532.P11064685766808929552

`lcm(∑[A056573(n)], A009531(2*n+1))`
-/

namespace A098532.P11064685766808929552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A009531 (2 * n + 1))

end

end A098532.P11064685766808929552

/-! ## A098532.P15589037726213390063

`A091064(A048298(n))+∑[A056573(n)]`
-/

namespace A098532.P15589037726213390063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 (A048298 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098532.P15589037726213390063

/-! ## A098532.P16990118823356354988

`∑[A056573(n+1)]-A056573(n+1)`
-/

namespace A098532.P16990118823356354988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056573 (n + 1)

end

end A098532.P16990118823356354988

/-!
# A098533: Sum of seventh powers of first n Fibonacci numbers.

The programs for A098533, there is no canonical definition to state claims against.
-/

/-! ## A098533.P7235868802534559711

`∑[round(ϕ^n/sqrt(5))^7]`
-/

namespace A098533.P7235868802534559711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098533.P7235868802534559711

/-! ## A098533.P10831053585864574435

`and(∑[A056574(n)], -1)`
-/

namespace A098533.P10831053585864574435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A098533.P10831053585864574435

/-! ## A098533.P10354103406329054012

`∑[A056574(n)]*A057427(n)`
-/

namespace A098533.P10354103406329054012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 n

end

end A098533.P10354103406329054012

/-! ## A098533.P7888698945689492873

`A000007(n+1)+∑[A056574(n)]`
-/

namespace A098533.P7888698945689492873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098533.P7888698945689492873

/-! ## A098533.P15165905601308715267

`∑[A056574(n+1)]-A056574(n+1)`
-/

namespace A098533.P15165905601308715267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056574 (n + 1)

end

end A098533.P15165905601308715267

/-!
# A098534: Mod 3 analog of Stern's diatomic series.

The programs for A098534, there is no canonical definition to state claims against.
-/

/-! ## A098534.P13170141582546959780

`A053737(A077372(n+1))`
-/

namespace A098534.P13170141582546959780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A077372 (n + 1)).toNat

end

end A098534.P13170141582546959780

/-! ## A098534.P297786965262094806

`A173524(A001611(n))-1`
-/

namespace A098534.P297786965262094806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173524 (A001611 n).toNat - 1

end

end A098534.P297786965262094806

/-! ## A098534.P15192375521265027026

`dr(A004687(n)%A064160(n))`
-/

namespace A098534.P15192375521265027026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A004687 n) (A064160 n))

end

end A098534.P15192375521265027026

/-! ## A098534.P2556824741748591288

`A173524(A000045(n)+1)-1`
-/

namespace A098534.P2556824741748591288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173524 (A000045 n + 1).toNat - 1

end

end A098534.P2556824741748591288

/-! ## A098534.P7751647940386866816

`A173524(A157725(n)-1)-1`
-/

namespace A098534.P7751647940386866816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173524 (A157725 n - 1).toNat - 1

end

end A098534.P7751647940386866816

/-!
# A098536: Expansion of 1/((1-x)^3 - 9*x^4)^(1/3).

The programs for A098536, there is no canonical definition to state claims against.
-/

/-! ## A098536.P11689978353617793534

`A318281(A052126(n+5)+A028243(n+1))`
-/

namespace A098536.P11689978353617793534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318281 (A052126 (n + 5) + A028243 (n + 1)).toNat

end

end A098536.P11689978353617793534

/-!
# A098538: Expansion of 1/((1-x)^3 - 18*x^4)^(1/3).

The programs for A098538, there is no canonical definition to state claims against.
-/

/-! ## A098538.P1502002160130601141

`(n-2)^A020639(∑[(n+1)!])-(n-3)`
-/

namespace A098538.P1502002160130601141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) ^ (A020639 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((n : ℤ) - 3 : ℚ)

end

end A098538.P1502002160130601141

/-! ## A098538.P4474071392288603272

`A082226(A098536(n))`
-/

namespace A098538.P4474071392288603272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A098536 n).toNat

end

end A098538.P4474071392288603272

/-! ## A098538.P1855700595813044486

`A093413(A097120(n))`
-/

namespace A098538.P1855700595813044486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093413 (A097120 n).toNat

end

end A098538.P1855700595813044486

/-! ## A098538.P18098374614953867672

`A331855(or(3, A006516(n)))`
-/

namespace A098538.P18098374614953867672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 (Int.lor 3 (A006516 n)).toNat

end

end A098538.P18098374614953867672

/-!
# A098539: Lower triangular matrix T, read by rows, that shifts left one column under the matrix square of T, with T(n,0)=T(n,1) for n>0 and T(n,n)=1 for n>=0.

The programs for A098539, there is no canonical definition to state claims against.
-/

/-! ## A098539.P17387739424013403636

`A141712(n)+A000038(A062886(n))`
-/

namespace A098539.P17387739424013403636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141712 n + A000038 (A062886 n).toNat

end

end A098539.P17387739424013403636

/-! ## A098539.P6601078586184589758

`A202304(A132986(n))+A208673(n)-1`
-/

namespace A098539.P6601078586184589758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A132986 n).toNat + (A208673 n - 1)

end

end A098539.P6601078586184589758

/-! ## A098539.P11431704313687486140

`A202304(A132986(n))+A000038(A062886(n))`
-/

namespace A098539.P11431704313687486140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A132986 n).toNat + A000038 (A062886 n).toNat

end

end A098539.P11431704313687486140

/-! ## A098539.P5692529802608826366

`A000196(3*A132986(n))+A000038(A062886(n))`
-/

namespace A098539.P5692529802608826366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 * A132986 n).toNat + A000038 (A062886 n).toNat

end

end A098539.P5692529802608826366

/-! ## A098539.P113056652360419027

`A078008(A208673(n))+A000196(3*A132986(n))`
-/

namespace A098539.P113056652360419027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A208673 n).toNat + A000196 (3 * A132986 n).toNat

end

end A098539.P113056652360419027

/-!
# A098540: Row sums of triangle A098539, which shifts left one column under the matrix square.

The programs for A098540, there is no canonical definition to state claims against.
-/

/-! ## A098540.P15888115287837491944

`A008620(∏[∑[C(2, n%4)]])`
-/

namespace A098540.P15888115287837491944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A098540.P15888115287837491944

/-! ## A098540.P9602186524395299675

`∑[A102441(A102687(n))]`
-/

namespace A098540.P9602186524395299675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102441 (A102687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098540.P9602186524395299675

/-!
# A098541: Column 2 of triangle A098539, which shifts left one column under the matrix square.

The programs for A098541, there is no canonical definition to state claims against.
-/

/-! ## A098541.P5645688530402121055

`Δ[Δ[A002577(n)]]`
-/

namespace A098541.P5645688530402121055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098541.P5645688530402121055

/-! ## A098541.P2066976914619276534

`Δ[A002449(n+1)]`
-/

namespace A098541.P2066976914619276534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098541.P2066976914619276534

/-! ## A098541.P3556987237719708154

`Δ[Δ[record[A125790(n)]]]`
-/

namespace A098541.P3556987237719708154
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098541.P3556987237719708154

/-! ## A098541.P11257505649542527905

`Δ[A000123(2^n-1)]`
-/

namespace A098541.P11257505649542527905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098541.P11257505649542527905

/-! ## A098541.P362736312642734957

`Δ[Δ[A145515(∑[n+3])]]`
-/

namespace A098541.P362736312642734957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098541.P362736312642734957

/-!
# A098542: Triangle T, read by rows, such that the matrix square shifts T left one column and up one row, with T(0,0)=T(1,0)=1 and T(n,0)=0 for n>1 and T(n,n)=1 for n>=0.

The programs for A098542, there is no canonical definition to state claims against.
-/

/-! ## A098542.P6914028303092144705

`A137264(A174546(n))*A331278(n)`
-/

namespace A098542.P6914028303092144705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137264 (A174546 n).toNat * A331278 n

end

end A098542.P6914028303092144705

/-! ## A098542.P15088730306621159488

`A249026(A174545(n))*A331278(n)`
-/

namespace A098542.P15088730306621159488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 (A174545 n).toNat * A331278 n

end

end A098542.P15088730306621159488

/-! ## A098542.P1231135859869009986

`A170889(A228074(A131084(n+1)²))`
-/

namespace A098542.P1231135859869009986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170889 (A228074 (A131084 (n + 1) ^ 2).toNat).toNat

end

end A098542.P1231135859869009986

/-! ## A098542.P4536901694226997524

`A162352(3*A058710(n))+char[A134869(n+1)]`
-/

namespace A098542.P4536901694226997524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162352 (3 * A058710 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098542.P4536901694226997524

/-!
# A098543: Column 2 of triangle A098542, which shifts left and up under the matrix square.

The programs for A098543, there is no canonical definition to state claims against.
-/

/-! ## A098543.P6072357181371165790

`A036453(n+1)²*A152796(n)`
-/

namespace A098543.P6072357181371165790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) ^ 2 * A152796 n

end

end A098543.P6072357181371165790

/-! ## A098543.P5418141382402462424

`A002575(n+2)+A002577(n)-1`
-/

namespace A098543.P5418141382402462424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002575 (n + 2) + (A002577 n - 1)

end

end A098543.P5418141382402462424

/-! ## A098543.P5396539700770220777

`A004736(A141214(n))*A152796(n)`
-/

namespace A098543.P5396539700770220777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A141214 n).toNat * A152796 n

end

end A098543.P5396539700770220777

/-! ## A098543.P15882962454535655026

`∑[A343820(or(1, A000079(n)))]`
-/

namespace A098543.P15882962454535655026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343820 (Int.lor 1 (A000079 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098543.P15882962454535655026

/-! ## A098543.P5197110569806001219

`A210442(A000079(n))+A002575(n+2)`
-/

namespace A098543.P5197110569806001219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A000079 n).toNat + A002575 (n + 2)

end

end A098543.P5197110569806001219

/-!
# A098544: Row sums of triangle A098542, which shifts left and up under the matrix square.

The programs for A098544, there is no canonical definition to state claims against.
-/

/-! ## A098544.P181366531275770197

`∑[A111976(n)]`
-/

namespace A098544.P181366531275770197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098544.P181366531275770197

/-! ## A098544.P5072278775995088252

`A000123(A094373(n))/2`
-/

namespace A098544.P5072278775995088252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A094373 n).toNat : ℚ) / 2

end

end A098544.P5072278775995088252

/-! ## A098544.P15821490755404712230

`A000123(A131577(n)+1)/2`
-/

namespace A098544.P15821490755404712230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (A131577 n + 1).toNat : ℚ) / 2

end

end A098544.P15821490755404712230

/-! ## A098544.P17916995559638173405

`A000123(abs(round((A000079(n)+1)/2)-1)+1)/2`
-/

namespace A098544.P17916995559638173405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (|SequenceMachineLib.roundAway ((A000079 n + 1 : ℚ) / 2) - 1| + 1).toNat : ℚ) / 2

end

end A098544.P17916995559638173405

/-! ## A098544.P660778255897657528

`A033485(A094373(n))`
-/

namespace A098544.P660778255897657528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033485 (A094373 n).toNat

end

end A098544.P660778255897657528

/-!
# A098545: Row sums of A098546.

The programs for A098545, there is no canonical definition to state claims against.
-/

/-! ## A098545.P5435331564152373112

`A067086(A149422(n))`
-/

namespace A098545.P5435331564152373112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A149422 n).toNat

end

end A098545.P5435331564152373112

/-! ## A098545.P4381841897159113709

`A337125(A203413(n))`
-/

namespace A098545.P4381841897159113709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (A203413 n).toNat

end

end A098545.P4381841897159113709

/-! ## A098545.P1493447215848689280

`A325853(A056239((n+1)!))`
-/

namespace A098545.P1493447215848689280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325853 (A056239 (Nat.factorial (n + 1))).toNat

end

end A098545.P1493447215848689280

/-!
# A098546: Irregular triangle T(n,k) = binomial(n,m) where m is the number of parts in the k-th partition of n listed in Abramowitz and Stegun order, read by rows, 1 <= k <= A000041(n).

The programs for A098546, there is no canonical definition to state claims against.
-/

/-! ## A098546.P16562622087341595509

`A035206(n)/A048996(n)`
-/

namespace A098546.P16562622087341595509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035206 n : ℚ) / (A048996 n : ℚ)

end

end A098546.P16562622087341595509

/-! ## A098546.P1111534792067848096

`A130561(n)/A178886(n)`
-/

namespace A098546.P1111534792067848096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130561 n : ℚ) / (A178886 n : ℚ)

end

end A098546.P1111534792067848096

/-! ## A098546.P9974994854971805843

`A178802(n)/A178883(n)`
-/

namespace A098546.P9974994854971805843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A178883 n : ℚ)

end

end A098546.P9974994854971805843

/-! ## A098546.P6800674662134463168

`A178888(n)/A178803(n)`
-/

namespace A098546.P6800674662134463168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178888 n : ℚ) / (A178803 n : ℚ)

end

end A098546.P6800674662134463168

/-! ## A098546.P207497108487328252

`A178886(n)/A178883(n)*A178888(n)`
-/

namespace A098546.P207497108487328252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178886 n : ℚ) / (A178883 n : ℚ) * (A178888 n : ℚ)

end

end A098546.P207497108487328252

/-!
# A098547: a(n) = n^3 + n^2 + 1.

The programs for A098547, the canonical program `A098547.P2884746087904860817` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098547 has offset 0).

The definition of A098547 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+n²+1` (program `A098547.P2884746087904860817`, by `A098547.P2884746087904860817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098547.P2884746087904860817

`n^3+n²+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098547

/-- `n^3+n²+1` -/
def P2884746087904860817.Spec : Prop :=
  ∀ n, (P2884746087904860817.a n : ℤ) = A098547 n

theorem P2884746087904860817.correct : P2884746087904860817.Spec := by
  intro n
  simp only [A098547]

end A098547

/-! ## A098547.P13496264643769888137

`ceil((n+1)/acot(n²))`
-/

namespace A098547.P13496264643769888137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ)⌉

end

end A098547.P13496264643769888137

namespace A098547

/-- `ceil((n+1)/acot(n²))` -/
def P13496264643769888137.Spec : Prop :=
  ∀ n, P13496264643769888137.a n = A098547 n

end A098547

/-! ## A098547.P4398591034823040193

`-xor(-1, lcm(n+1, n²))`
-/

namespace A098547.P4398591034823040193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Nat.lcm (n + 1) (n ^ 2) : ℤ)

end

end A098547.P4398591034823040193

namespace A098547

/-- `-xor(-1, lcm(n+1, n²))` -/
def P4398591034823040193.Spec : Prop :=
  ∀ n, P4398591034823040193.a n = A098547 n

end A098547

/-! ## A098547.P9279837954671598982

`-xor(2*n*∑[n], -1)`
-/

namespace A098547.P9279837954671598982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (-1)

end

end A098547.P9279837954671598982

namespace A098547

/-- `-xor(2*n*∑[n], -1)` -/
def P9279837954671598982.Spec : Prop :=
  ∀ n, P9279837954671598982.a n = A098547 n

end A098547

/-! ## A098547.P15373728570808894505

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A098547.P15373728570808894505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098547.P15373728570808894505

namespace A098547

/-- `∑[∑[a(n-1)+6]]` -/
def P15373728570808894505.Spec : Prop :=
  ∀ n, (P15373728570808894505.a n : ℤ) = A098547 n

end A098547

/-! ## A098547.P6859551484027916793

`or(2, 2*n*∑[2*n])/2`
-/

namespace A098547.P6859551484027916793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 2

end

end A098547.P6859551484027916793

namespace A098547

/-- `or(2, 2*n*∑[2*n])/2` -/
def P6859551484027916793.Spec : Prop :=
  ∀ n, P6859551484027916793.a n = (A098547 n : ℚ)

end A098547

/-! ## A098547.P15961655480520490730

`xor(2, 2*n*∑[2*n])/2`
-/

namespace A098547.P15961655480520490730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (2 * n * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 2

end

end A098547.P15961655480520490730

namespace A098547

/-- `xor(2, 2*n*∑[2*n])/2` -/
def P15961655480520490730.Spec : Prop :=
  ∀ n, P15961655480520490730.a n = (A098547 n : ℚ)

end A098547

/-! ## A098547.P11579728797545902828

`floor(3*n²-(n-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A098547.P11579728797545902828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n ^ 2 : ℤ) - ((n : ℤ) - a (n - 1))

end

end A098547.P11579728797545902828

namespace A098547

/-- `floor(3*n²-(n-a(n-1)))` -/
def P11579728797545902828.Spec : Prop :=
  ∀ n, P11579728797545902828.a n = A098547 n

theorem P11579728797545902828.correct : P11579728797545902828.Spec := by
  intro n
  induction n with
  | zero => simp [A098547, A098547.P11579728797545902828.a, A098547.P2884746087904860817.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A098547, Nat.add_sub_cancel, A098547.P11579728797545902828.a, A098547.P2884746087904860817.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A098547

/-! ## A098547.P14285628076670040989

`floor(a(n-1)+n*(3*n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A098547.P14285628076670040989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℤ) * ((3 * n : ℤ) - 1)

end

end A098547.P14285628076670040989

namespace A098547

/-- `floor(a(n-1)+n*(3*n-1))` -/
def P14285628076670040989.Spec : Prop :=
  ∀ n, P14285628076670040989.a n = A098547 n

theorem P14285628076670040989.correct : P14285628076670040989.Spec := by
  intro n
  induction n with
  | zero => simp [A098547, A098547.P14285628076670040989.a, A098547.P2884746087904860817.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A098547, Nat.add_sub_cancel, A098547.P14285628076670040989.a, A098547.P2884746087904860817.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A098547

/-! ## A098547.P10403111466600877027

`(n+2)*(lcm(n, n-1)+(2*n+1)/(n+2))`
-/

namespace A098547.P10403111466600877027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) + (2 * n + 1 : ℚ) / (n + 2 : ℚ))

end

end A098547.P10403111466600877027

namespace A098547

/-- `(n+2)*(lcm(n, n-1)+(2*n+1)/(n+2))` -/
def P10403111466600877027.Spec : Prop :=
  ∀ n, P10403111466600877027.a n = (A098547 n : ℚ)

end A098547

/-! ## A098547.P5793740790292229333

`ceil(sqrt(A002604(n))+n²)`
-/

namespace A098547.P5793740790292229333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002604 n : ℝ) + (n ^ 2 : ℝ)⌉

end

end A098547.P5793740790292229333

namespace A098547

/-- `ceil(sqrt(A002604(n))+n²)` -/
def P5793740790292229333.Spec : Prop :=
  ∀ n, P5793740790292229333.a n = A098547 n

end A098547

/-! ## A098547.P2903584246753170852

`(A181617(n+1)+2)/2`
-/

namespace A098547.P2903584246753170852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181617 (n + 1) + 2 : ℚ) / 2

end

end A098547.P2903584246753170852

namespace A098547

/-- `(A181617(n+1)+2)/2` -/
def P2903584246753170852.Spec : Prop :=
  ∀ n, P2903584246753170852.a n = (A098547 n : ℚ)

end A098547

/-! ## A098547.P10345952947178077033

`(A048395(n)+2-n)/2`
-/

namespace A098547.P10345952947178077033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048395 n + (2 - (n : ℤ)) : ℚ) / 2

end

end A098547.P10345952947178077033

namespace A098547

/-- `(A048395(n)+2-n)/2` -/
def P10345952947178077033.Spec : Prop :=
  ∀ n, P10345952947178077033.a n = (A098547 n : ℚ)

end A098547

/-! ## A098547.P1431891285137066998

`(A165563(n)-n)/(n+1)`
-/

namespace A098547.P1431891285137066998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165563 n - (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A098547.P1431891285137066998

namespace A098547

/-- `(A165563(n)-n)/(n+1)` -/
def P1431891285137066998.Spec : Prop :=
  ∀ n, P1431891285137066998.a n = (A098547 n : ℚ)

end A098547

/-! ## A098547.P15109025446733652231

`∑[A004277(n)²-∑[2*n]]`
-/

namespace A098547.P15109025446733652231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n ^ 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098547.P15109025446733652231

namespace A098547

/-- `∑[A004277(n)²-∑[2*n]]` -/
def P15109025446733652231.Spec : Prop :=
  ∀ n, P15109025446733652231.a n = A098547 n

end A098547

/-! ## A098547.P10545619511929786626

`(A035287(n+1)+n+1)/(n+1)`
-/

namespace A098547.P10545619511929786626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035287 (n + 1) + (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A098547.P10545619511929786626

namespace A098547

/-- `(A035287(n+1)+n+1)/(n+1)` -/
def P10545619511929786626.Spec : Prop :=
  ∀ n, P10545619511929786626.a n = (A098547 n : ℚ)

end A098547

/-! ## A098547.P13319799397856058427

`A128091(n+1)%A188947(n+1)`
-/

namespace A098547.P13319799397856058427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128091 (n + 1)) (A188947 (n + 1))

end

end A098547.P13319799397856058427

namespace A098547

/-- `A128091(n+1)%A188947(n+1)` -/
def P13319799397856058427.Spec : Prop :=
  ∀ n, P13319799397856058427.a n = A098547 n

end A098547

/-!
# A098548: a(n) = n if n <= 3, otherwise the smallest number > a(n-1) having at least one common factor with a(n-2) but none with a(n-1).

The programs for A098548, there is no canonical definition to state claims against.
-/

/-! ## A098548.P4184369713171966108

`∪[A251535(n)+1, A251535(n)]`
-/

namespace A098548.P4184369713171966108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A098548.P4184369713171966108

/-! ## A098548.P15204731914510405554

`A251535(A004526(n))+A000035(n)`
-/

namespace A098548.P15204731914510405554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + A000035 n

end

end A098548.P15204731914510405554

/-! ## A098548.P5876125613532597979

`A251535(A004526(n))+Δ[A008619(n)]`
-/

namespace A098548.P5876125613532597979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + (f1 (n + 1) - f1 n)

end

end A098548.P5876125613532597979

/-! ## A098548.P11414997196396987876

`A251535(A004526(n))+char[A005408(n)]`
-/

namespace A098548.P11414997196396987876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098548.P11414997196396987876

/-! ## A098548.P440246099645423995

`A251535(A004526(n))+char[A093178(n)]`
-/

namespace A098548.P440246099645423995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098548.P440246099645423995

/-! ## A098548.P6900933795004535516

`A251535(A004526(n))+1-A059841(n)`
-/

namespace A098548.P6900933795004535516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + (1 - A059841 n)

end

end A098548.P6900933795004535516

/-! ## A098548.P3779697666624354436

`A251535(A004526(n))+char[A000265(n+1)]`
-/

namespace A098548.P3779697666624354436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A098548.P3779697666624354436

/-! ## A098548.P9316496771077561745

`A251535(A004526(n))+A059841(A008611(n))`
-/

namespace A098548.P9316496771077561745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + A059841 (A008611 n).toNat

end

end A098548.P9316496771077561745

/-! ## A098548.P13596612114084791535

`A251535(A004526(n))+A059841(n+1)`
-/

namespace A098548.P13596612114084791535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (A004526 n).toNat + A059841 (n + 1)

end

end A098548.P13596612114084791535

/-!
# A098549: A098548(A098548(n)).

The programs for A098549, there is no canonical definition to state claims against.
-/

/-! ## A098549.P1454616294822400964

`A098548(A098548(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098549.P1454616294822400964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A098548 (n + 1)).toNat

end

end A098549.P1454616294822400964

/-! ## A098549.P13960071198906990550

`record[A098548(A098548(A126759(n)))]`
-/

namespace A098549.P13960071198906990550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A098548 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098549.P13960071198906990550

/-! ## A098549.P10253726646473646460

`record[A098548(A098548(A141256(n)))]`
-/

namespace A098549.P10253726646473646460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A098548 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098549.P10253726646473646460

/-! ## A098549.P16284345006773360858

`record[A098548(A098548(A154958(n)))]`
-/

namespace A098549.P16284345006773360858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A098548 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098549.P16284345006773360858

/-! ## A098549.P3729650032317336148

`record[A098548(A098548(A291769(n)))]`
-/

namespace A098549.P3729650032317336148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A098548 (A291769 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098549.P3729650032317336148

/-! ## A098549.P393990409063309227

`record[A098548(A098548(A328399(n)))]`
-/

namespace A098549.P393990409063309227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A098548 (A328399 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098549.P393990409063309227

/-! ## A098549.P7202906665555480432

`record[A098548(A098548(A335421(n)))]`
-/

namespace A098549.P7202906665555480432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A098548 (A335421 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098549.P7202906665555480432

/-! ## A098549.P7666903416685848998

`record[A098548(A098548(A263274(n)))]`
-/

namespace A098549.P7666903416685848998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098548 (A098548 (A263274 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098549.P7666903416685848998

/-!
# A098550: The Yellowstone permutation: a(n) = n if n <= 3, otherwise the smallest number not occurring earlier having at least one common factor with a(n-2), but none with a(n-1).

The programs for A098550, there is no canonical definition to state claims against.
-/

/-! ## A098550.P15284116643966608075

`A098552(A098551(n+1))`
-/

namespace A098550.P15284116643966608075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A098551 (n + 1)).toNat

end

end A098550.P15284116643966608075

/-! ## A098550.P375874648266013107

`A098551(A098552(Δ[n²]-n))`
-/

namespace A098550.P375874648266013107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A098552 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A098550.P375874648266013107

/-! ## A098550.P1702574042480071074

`A335585(n+1)%A032748(n+1)`
-/

namespace A098550.P1702574042480071074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335585 (n + 1)) (A032748 (n + 1))

end

end A098550.P1702574042480071074

/-! ## A098550.P16899643877841703380

`A335585(n+1)^A275216(n)^10`
-/

namespace A098550.P16899643877841703380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335585 (n + 1) : ℚ) ^ (A275216 n ^ 10 : ℤ)

end

end A098550.P16899643877841703380

/-! ## A098550.P779554367396142975

`A335585(n+1)+A000007(A335574(n))`
-/

namespace A098550.P779554367396142975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335585 (n + 1) + A000007 (A335574 n).toNat

end

end A098550.P779554367396142975

/-!
# A098551: Inverse of A098550.

The programs for A098551, there is no canonical definition to state claims against.
-/

/-! ## A098551.P1417272144772478947

`A098550(A098553(n+1))`
-/

namespace A098551.P1417272144772478947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A098553 (n + 1)).toNat

end

end A098551.P1417272144772478947

/-! ## A098551.P1706819018836768927

`A098553(A098550(-xor(n, -1)))`
-/

namespace A098551.P1706819018836768927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098553 (A098550 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A098551.P1706819018836768927

/-! ## A098551.P8220745178158185279

`A098553(A335585(n+1)^A275216(n)^10)`
-/

namespace A098551.P8220745178158185279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098553 (SequenceMachineLib.roundAway ((A335585 (n + 1) : ℚ) ^ (A275216 n ^ 10 : ℤ))).toNat

end

end A098551.P8220745178158185279

/-! ## A098551.P3558854640858681099

`A098553(A335585(n+1))%A000203(A022132(n))`
-/

namespace A098551.P3558854640858681099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098553 (A335585 (n + 1)).toNat) (A000203 (A022132 n).toNat)

end

end A098551.P3558854640858681099

/-!
# A098552: A098550(A098550(n)).

The programs for A098552, there is no canonical definition to state claims against.
-/

/-! ## A098552.P13338149190156514571

`A098550(A098550(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098552.P13338149190156514571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A098550 (n + 1)).toNat

end

end A098552.P13338149190156514571

/-! ## A098552.P5572860594820691642

`A098550(-xor(A098550(-xor(n, -1))-1, -1))`
-/

namespace A098552.P5572860594820691642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (-Int.xor (A098550 (-Int.xor (n : ℤ) (-1)).toNat - 1) (-1)).toNat

end

end A098552.P5572860594820691642

/-!
# A098553: A098551(A098551(n)).

The programs for A098553, there is no canonical definition to state claims against.
-/

/-! ## A098553.P5710934161024659080

`A098551(A098551(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098553.P5710934161024659080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098551 (A098551 (n + 1)).toNat

end

end A098553.P5710934161024659080

/-!
# A098554: G.f.: x*(1-x^2)/((1+x^2)*(1+x+x^2)).

The programs for A098554, the canonical program `A098554.P7705384674583934779` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098554 has offset 0).

The definition of A098554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098554.P7705384674583934779

`ogf((x-x^3)/(1+x+2x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098554

/-- `ogf((x-x^3)/(1+x+2x^2+x^3+x^4))` -/
def P7705384674583934779.Spec : Prop :=
  ∀ n, P7705384674583934779.a n = A098554 n

theorem P7705384674583934779.correct : P7705384674583934779.Spec := by
  intro n
  simp only [A098554]

end A098554

/-!
# A098557: Expansion of e.g.f. (1/2)*(1+x)*log((1+x)/(1-x)).

The programs for A098557, there is no canonical definition to state claims against.
-/

/-! ## A098557.P7055862690780881785

`(xor(1, n)-1)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A098557.P7055862690780881785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((Nat.xor 1 n : ℤ) - 1) * a (n - 1)

end

end A098557.P7055862690780881785

/-! ## A098557.P17116642089527156204

`(n-2*n%2)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A098557.P17116642089527156204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - ((2 * (n % 2) : ℕ) : ℤ)) * a (n - 1)

end

end A098557.P17116642089527156204

/-! ## A098557.P16360696414134308248

`(n-2*and(1, n))*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A098557.P16360696414134308248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - (2 * Nat.land 1 n : ℤ)) * a (n - 1)

end

end A098557.P16360696414134308248

/-! ## A098557.P14479311133752435640

`(4*floor(n/2)-n)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A098557.P14479311133752435640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 * ⌊(n : ℚ) / 2⌋ - (n : ℤ)) * a (n - 1)

end

end A098557.P14479311133752435640

/-! ## A098557.P15789000983319671154

`a(n-1)+(n-1)*(n-3)*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A098557.P15789000983319671154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * (((n : ℤ) - 3) * a (n - 2))

end

end A098557.P15789000983319671154

/-! ## A098557.P3160770203958488113

`a(n-1)*A023443(A004442(n))` with `a(0)=0, a(1)=1`
-/

namespace A098557.P3160770203958488113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A023443 (A004442 n).toNat

end

end A098557.P3160770203958488113

/-! ## A098557.P276921507565369229

`A237996(A152947(n+1))+A132393(A000124(n))`
-/

namespace A098557.P276921507565369229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237996 (A152947 (n + 1)).toNat + A132393 (A000124 n).toNat

end

end A098557.P276921507565369229

/-!
# A098558: Expansion of e.g.f. (1+x)/(1-x).

The programs for A098558, there is no canonical definition to state claims against.
-/

/-! ## A098558.P6501900579019111150

`∏[n!%2+n]`
-/

namespace A098558.P6501900579019111150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098558.P6501900579019111150

/-! ## A098558.P8715052711455069870

`∏[and(1, n!)+n]`
-/

namespace A098558.P8715052711455069870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098558.P8715052711455069870

/-! ## A098558.P13652424414914687368

`∏[floor(sqrt(n²+3))]`
-/

namespace A098558.P13652424414914687368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098558.P13652424414914687368

/-! ## A098558.P7160713503374862290

`n!*ceil(cosh(sin(n)))`
-/

namespace A098558.P7160713503374862290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A098558.P7160713503374862290

/-! ## A098558.P6636281799334705301

`a(n-1)*n` with `a(0)=1, a(1)=2`
-/

namespace A098558.P6636281799334705301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * n

end

end A098558.P6636281799334705301

/-! ## A098558.P8551910756142636436

`gcd(2, 4^n)*n!`
-/

namespace A098558.P8551910756142636436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (4 ^ n) * Nat.factorial n

end

end A098558.P8551910756142636436

/-! ## A098558.P12315636603942351691

`n!*ceil(atan(n+1))`
-/

namespace A098558.P12315636603942351691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A098558.P12315636603942351691

/-! ## A098558.P9123994961014950588

`n!+lcm(n!, dr(n))`
-/

namespace A098558.P9123994961014950588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

end

end A098558.P9123994961014950588

/-! ## A098558.P12853462083631805153

`n!*(2%(n+2))!`
-/

namespace A098558.P12853462083631805153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.factorial (2 % (n + 2))

end

end A098558.P12853462083631805153

/-! ## A098558.P16785390094311366464

`n!*round(atan(n+2)²)`
-/

namespace A098558.P16785390094311366464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * SequenceMachineLib.roundAway (Real.arctan (n + 2 : ℝ) ^ 2)

end

end A098558.P16785390094311366464

/-!
# A098559: Expansion of e.g.f. (1+3*x)/(1-3*x).

The programs for A098559, there is no canonical definition to state claims against.
-/

/-! ## A098559.P5596805019157545367

`∏[C(3, n²)+3*n]`
-/

namespace A098559.P5596805019157545367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n ^ 2) + 3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098559.P5596805019157545367

/-! ## A098559.P14569259671016214295

`∏[a(n-1)+3]` with `a(0)=1, a(1)=6, a(2)=6`
-/

namespace A098559.P14569259671016214295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 6] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098559.P14569259671016214295

/-! ## A098559.P3796117722312407659

`3*n*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A098559.P3796117722312407659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  3 * (n * a (n - 1))

end

end A098559.P3796117722312407659

/-! ## A098559.P5056734556584906312

`3^n*n!*ceil(cosh(sin(n)))`
-/

namespace A098559.P5056734556584906312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.factorial n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A098559.P5056734556584906312

/-! ## A098559.P13249187716270617438

`lcm(3^n, Δ[floor(3^(n-1))])*n!`
-/

namespace A098559.P13249187716270617438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) (f1 (n + 1) - f1 n) * Nat.factorial n

end

end A098559.P13249187716270617438

/-! ## A098559.P16268202794543604382

`n!*A099856(n)`
-/

namespace A098559.P16268202794543604382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A099856 n

end

end A098559.P16268202794543604382

/-! ## A098559.P14533396724696614367

`3^n*A098558(n)`
-/

namespace A098559.P14533396724696614367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A098558 n

end

end A098559.P14533396724696614367

/-! ## A098559.P10867659969899261859

`∏[A008486(char[1]+n)]`
-/

namespace A098559.P10867659969899261859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098559.P10867659969899261859

/-! ## A098559.P3148694031577728072

`a(n-1)*A008486(n)` with `a(0)=1, a(1)=6`
-/

namespace A098559.P3148694031577728072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) * A008486 n

end

end A098559.P3148694031577728072

/-! ## A098559.P12998949363783542057

`∏[lcm(A008486(n), A158799(n))]`
-/

namespace A098559.P12998949363783542057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008486 n) (A158799 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098559.P12998949363783542057

/-!
# A098560: Expansion of e.g.f. (1+4*x)/(1-4*x).

The programs for A098560, the canonical program `A098560.P16181304628635159509` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098560 has offset 0).

The definition of A098560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098560.P16181304628635159509

`4*n*a(n-1)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098560

/-- `4*n*a(n-1)` -/
def P16181304628635159509.Spec : Prop :=
  ∀ n, (P16181304628635159509.a n : ℤ) = A098560 n

theorem P16181304628635159509.correct : P16181304628635159509.Spec := by
  intro n
  simp only [A098560]

end A098560

/-! ## A098560.P7948166631274090375

`∏[a(n-1)+4]` with `a(0)=1, a(1)=8, a(2)=8`
-/

namespace A098560.P7948166631274090375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098560.P7948166631274090375

namespace A098560

/-- `∏[a(n-1)+4]` -/
def P7948166631274090375.Spec : Prop :=
  ∀ n, (P7948166631274090375.a n : ℤ) = A098560 n

end A098560

/-! ## A098560.P177449199988668704

`4^n*∏[n!%2+n]`
-/

namespace A098560.P177449199988668704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A098560.P177449199988668704

namespace A098560

/-- `4^n*∏[n!%2+n]` -/
def P177449199988668704.Spec : Prop :=
  ∀ n, (P177449199988668704.a n : ℤ) = A098560 n

end A098560

/-! ## A098560.P2880846910973207613

`4^n*n!*ceil(cosh(sin(n)))`
-/

namespace A098560.P2880846910973207613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.factorial n : ℤ) * ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A098560.P2880846910973207613

namespace A098560

/-- `4^n*n!*ceil(cosh(sin(n)))` -/
def P2880846910973207613.Spec : Prop :=
  ∀ n, P2880846910973207613.a n = A098560 n

end A098560

/-! ## A098560.P743720586543294337

`2^n*∏[C(2, n²)+2*n]`
-/

namespace A098560.P743720586543294337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A098560.P743720586543294337

namespace A098560

/-- `2^n*∏[C(2, n²)+2*n]` -/
def P743720586543294337.Spec : Prop :=
  ∀ n, (P743720586543294337.a n : ℤ) = A098560 n

end A098560

/-! ## A098560.P5484168457251600624

`n!*A081654(n)`
-/

namespace A098560.P5484168457251600624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A081654 n

end

end A098560.P5484168457251600624

namespace A098560

/-- `n!*A081654(n)` -/
def P5484168457251600624.Spec : Prop :=
  ∀ n, P5484168457251600624.a n = A098560 n

end A098560

/-! ## A098560.P5417248374469694917

`a(n-1)*A008574(n)` with `a(0)=1, a(1)=8`
-/

namespace A098560.P5417248374469694917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) * A008574 n

end

end A098560.P5417248374469694917

namespace A098560

/-- `a(n-1)*A008574(n)` -/
def P5417248374469694917.Spec : Prop :=
  ∀ n, P5417248374469694917.a n = A098560 n

end A098560

/-! ## A098560.P8483732433084236920

`∑[ceil(2^(n-1))]*A032184(n+1)`
-/

namespace A098560.P8483732433084236920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A032184 (n + 1)

end

end A098560.P8483732433084236920

namespace A098560

/-- `∑[ceil(2^(n-1))]*A032184(n+1)` -/
def P8483732433084236920.Spec : Prop :=
  ∀ n, P8483732433084236920.a n = A098560 n

end A098560

/-! ## A098560.P13936099797722697747

`A000142(n)*A081654(n)`
-/

namespace A098560.P13936099797722697747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A081654 n

end

end A098560.P13936099797722697747

namespace A098560

/-- `A000142(n)*A081654(n)` -/
def P13936099797722697747.Spec : Prop :=
  ∀ n, P13936099797722697747.a n = A098560 n

end A098560

/-! ## A098560.P16811114394696887497

`gcd(2, A047053(n))*A047053(n)`
-/

namespace A098560.P16811114394696887497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A047053 n) : ℤ) * A047053 n

end

end A098560.P16811114394696887497

namespace A098560

/-- `gcd(2, A047053(n))*A047053(n)` -/
def P16811114394696887497.Spec : Prop :=
  ∀ n, P16811114394696887497.a n = A098560 n

end A098560

/-!
# A098561: Numbers k such that the sum of the squares of the first k primes is prime.

The programs for A098561, there is no canonical definition to state claims against.
-/

/-! ## A098561.P17451937018409787718

`A000720(A181505(n+1))`
-/

namespace A098561.P17451937018409787718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A181505 (n + 1)).toNat

end

end A098561.P17451937018409787718

/-! ## A098561.P5010532923006706317

`A003963(p?[A181505(n+1)])`
-/

namespace A098561.P5010532923006706317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098561.P5010532923006706317

/-! ## A098561.P12752985293795721727

`A026233(p?[A181505(n+1)])`
-/

namespace A098561.P12752985293795721727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098561.P12752985293795721727

/-! ## A098561.P15319798437519684042

`A026238(p?[A181505(n+1)])`
-/

namespace A098561.P15319798437519684042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098561.P15319798437519684042

/-! ## A098561.P6416400065252959623

`A049084(p?[A181505(n+1)])`
-/

namespace A098561.P6416400065252959623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A098561.P6416400065252959623

/-!
# A098562: Primes that are the sum of the squares of the first k primes for some k.

The programs for A098562, there is no canonical definition to state claims against.
-/

/-! ## A098562.P8382098488431709164

`A024450(A098561(n+1))`
-/

namespace A098562.P8382098488431709164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (A098561 (n + 1)).toNat

end

end A098562.P8382098488431709164

/-! ## A098562.P4558251689678257864

`A081738(A181505(n+1))`
-/

namespace A098562.P4558251689678257864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081738 (A181505 (n + 1)).toNat

end

end A098562.P4558251689678257864

/-!
# A098564: Numbers that appear as binomial coefficients exactly 4 times.

The programs for A098564, there is no canonical definition to state claims against.
-/

/-! ## A098564.P923666365695713577

`eq[4, A003016(n)]`
-/

namespace A098564.P923666365695713577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A098564.P923666365695713577

/-! ## A098564.P11530999278681745365

`lt[2, val(A003016(n*A060576(n))+4, 2)]`
-/

namespace A098564.P11530999278681745365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003016 ((n : ℤ) * A060576 n).toNat + 4).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098564.P11530999278681745365

/-! ## A098564.P4373583226984034970

`A325901(lt[A062157(n), A321960(3*(n+1))])`
-/

namespace A098564.P4373583226984034970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321960 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325901 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A098564.P4373583226984034970

/-! ## A098564.P314554602907130616

`filter[A325901(n+2), A330550(#)]`
-/

namespace A098564.P314554602907130616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325901 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A330550 (f1 j).toNat = 1) n)

end

end A098564.P314554602907130616

/-! ## A098564.P6506675539992969106

`lt[A001148(A351837(n)), A003016(n)]`
-/

namespace A098564.P6506675539992969106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001148 (A351837 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A098564.P6506675539992969106

/-!
# A098565: Numbers that appear as binomial coefficients exactly 6 times.

The programs for A098565, there is no canonical definition to state claims against.
-/

/-! ## A098565.P15404272000032449424

`A003015(comp[∑[n²]])`
-/

namespace A098565.P15404272000032449424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003015 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A098565.P15404272000032449424

/-! ## A098565.P704640277854841025

`∩[A024755(n+1), A014494(n)]`
-/

namespace A098565.P704640277854841025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098565.P704640277854841025

/-!
# A098566: Smallest prime P such that P# - Mersenne-prime(n) is prime.

The programs for A098566, there is no canonical definition to state claims against.
-/

/-! ## A098566.P13589681152363880994

`p?[A209900(n+1)*A339896(n+1)]`
-/

namespace A098566.P13589681152363880994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (n + 1) * A339896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098566.P13589681152363880994

/-! ## A098566.P10186044382856710367

`p?[A010161(n)+eq[0, A136115(n+1)]]`
-/

namespace A098566.P10186044382856710367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136115 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010161 n + (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098566.P10186044382856710367

/-!
# A098567: Smallest prime p such that p# + Mersenne-prime(n) is prime.

The programs for A098567, there is no canonical definition to state claims against.
-/

/-! ## A098567.P13095459173630791334

`p?[A329456(A007318(n))]`
-/

namespace A098567.P13095459173630791334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329456 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098567.P13095459173630791334

/-! ## A098567.P1300302376043088301

`p?[A329456(A017877(n))]`
-/

namespace A098567.P1300302376043088301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329456 (A017877 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098567.P1300302376043088301

/-! ## A098567.P8329587388077978090

`p?[A329456(A017887(n))]`
-/

namespace A098567.P8329587388077978090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329456 (A017887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098567.P8329587388077978090

/-! ## A098567.P9031590560785825434

`p?[A329456(A074909(n))]`
-/

namespace A098567.P9031590560785825434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329456 (A074909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098567.P9031590560785825434

/-! ## A098567.P7835676449867756140

`A261179(A061805(n+2))`
-/

namespace A098567.P7835676449867756140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261179 (A061805 (n + 2)).toNat

end

end A098567.P7835676449867756140

/-!
# A098568: Triangle of triangular binomial coefficients, read by rows, where column k has the g.f.: 1/(1-x)^((k+1)*(k+2)/2) for k >= 0.

The programs for A098568, there is no canonical definition to state claims against.
-/

/-! ## A098568.P15285351621822748377

`A172542(A029653(n))+A088925(n)`
-/

namespace A098568.P15285351621822748377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172542 (A029653 n).toNat + A088925 n

end

end A098568.P15285351621822748377

/-! ## A098568.P16891086811037641980

`A172542(A029653(n))+A100862(n)`
-/

namespace A098568.P16891086811037641980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172542 (A029653 n).toNat + A100862 n

end

end A098568.P16891086811037641980

/-! ## A098568.P17308485996700302039

`A100862(n)+A010060(A327449(n+1))`
-/

namespace A098568.P17308485996700302039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100862 n + A010060 (A327449 (n + 1)).toNat

end

end A098568.P17308485996700302039

/-! ## A098568.P1363995627684855221

`A187946(A274708(3*n))+A107105(n)`
-/

namespace A098568.P1363995627684855221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187946 (A274708 (3 * n)).toNat + A107105 n

end

end A098568.P1363995627684855221

/-! ## A098568.P11174266572629460864

`A088925(n)+A088911(A088898(3*n+2))`
-/

namespace A098568.P11174266572629460864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088925 n + A088911 (A088898 (3 * n + 2)).toNat

end

end A098568.P11174266572629460864

/-!
# A098569: Row sums of the triangle of triangular binomial coefficients given by A098568.

The programs for A098569, there is no canonical definition to state claims against.
-/

/-! ## A098569.P10497495575139906711

`A131338(∑[∑[n+1]+1])`
-/

namespace A098569.P10497495575139906711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131338 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098569.P10497495575139906711

/-! ## A098569.P14930209706561214788

`record[A131338(n)/A291722(n)]`
-/

namespace A098569.P14930209706561214788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131338 n : ℚ) / (A291722 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098569.P14930209706561214788

/-! ## A098569.P13011843188964869195

`record[root(A131338(n+1), A127452(n))]`
-/

namespace A098569.P13011843188964869195
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131338 (n + 1) : ℝ) ^ (1 / (A127452 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098569.P13011843188964869195

/-! ## A098569.P12021548558145810687

`record[A131338(n)/A131338(n+1)]`
-/

namespace A098569.P12021548558145810687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131338 n : ℚ) / (A131338 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098569.P12021548558145810687

/-! ## A098569.P7389030810725752225

`A183202(∑[n+2])`
-/

namespace A098569.P7389030810725752225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183202 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098569.P7389030810725752225

/-!
# A098572: a(n) = floor(Sum_{m=1..n} m^(1/m)).

The programs for A098572, the canonical program `A098572.P5222351230593989395` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098572 has offset 1).

The definition of A098572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098572.P5222351230593989395

`floor(∑[root(n+1, n+1)])`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098572

/-- `floor(∑[root(n+1, n+1)])` -/
def P5222351230593989395.Spec : Prop :=
  ∀ n, P5222351230593989395.a n = A098572 (n + 1)

theorem P5222351230593989395.correct : P5222351230593989395.Spec := by
  intro n
  simp only [A098572, Nat.add_sub_cancel]

end A098572

/-! ## A098572.P8632455787602986024

`A004488(A004488(floor(∑[(n+1)^(1/(n+1))])))`
-/

namespace A098572.P8632455787602986024
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004488 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat).toNat

end

end A098572.P8632455787602986024

namespace A098572

/-- `A004488(A004488(floor(∑[(n+1)^(1/(n+1))])))` -/
def P8632455787602986024.Spec : Prop :=
  ∀ n, P8632455787602986024.a n = A098572 (n + 1)

end A098572

/-! ## A098572.P678250859682330976

`A080782(A080782(floor(∑[(n+1)^(1/(n+1))])))`
-/

namespace A098572.P678250859682330976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (n + 1 : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A080782 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat).toNat

end

end A098572.P678250859682330976

namespace A098572

/-- `A080782(A080782(floor(∑[(n+1)^(1/(n+1))])))` -/
def P678250859682330976.Spec : Prop :=
  ∀ n, P678250859682330976.a n = A098572 (n + 1)

end A098572

/-! ## A098572.P11844453730469104101

`eq[char[A098573(n+1)], A000007(n)]`
-/

namespace A098572.P11844453730469104101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098573 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A098572.P11844453730469104101

namespace A098572

/-- `eq[char[A098573(n+1)], A000007(n)]` -/
def P11844453730469104101.Spec : Prop :=
  ∀ n, (P11844453730469104101.a n : ℤ) = A098572 (n + 1)

end A098572

/-! ## A098572.P6584326668273082021

`eq[char[A098573(n+1)], A000038(n)]`
-/

namespace A098572.P6584326668273082021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098573 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A098572.P6584326668273082021

namespace A098572

/-- `eq[char[A098573(n+1)], A000038(n)]` -/
def P6584326668273082021.Spec : Prop :=
  ∀ n, (P6584326668273082021.a n : ℤ) = A098572 (n + 1)

end A098572

/-!
# A098573: Positive integers not appearing in sequence A098572, which calculates the values of floor(sum(m^(1/m),n=1..m)).

The programs for A098573, there is no canonical definition to state claims against.
-/

/-! ## A098573.P4063925854211214058

`A133497(n+1)%A133497(n+5)+n`
-/

namespace A098573.P4063925854211214058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133497 (n + 1)) (A133497 (n + 5)) + (n : ℤ)

end

end A098573.P4063925854211214058

/-! ## A098573.P16923636671636783652

`A008683(A089219(n+1))+A133497(n+1)+n`
-/

namespace A098573.P16923636671636783652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A089219 (n + 1)).toNat + (A133497 (n + 1) + (n : ℤ))

end

end A098573.P16923636671636783652

/-! ## A098573.P3730948377377131542

`A098572(A133497(n+1))-1`
-/

namespace A098573.P3730948377377131542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098572 (A133497 (n + 1)).toNat - 1

end

end A098573.P3730948377377131542

/-! ## A098573.P6449242972303729541

`A028310(A133497(n+1)+n)`
-/

namespace A098573.P6449242972303729541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A133497 (n + 1) + (n : ℤ)).toNat

end

end A098573.P6449242972303729541

/-!
# A098574: a(n) = Sum_{k=0..floor(n/7)} C(n-5*k,2*k).

The programs for A098574, the canonical program `A098574.P2504122614395177173` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098574 has offset 0).

The definition of A098574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098574.P2504122614395177173

`A369813(2*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A098574

/-- `A369813(2*n)` -/
def P2504122614395177173.Spec : Prop :=
  ∀ n, P2504122614395177173.a n = A098574 n

theorem P2504122614395177173.correct : P2504122614395177173.Spec := by
  intro n
  simp only [A098574]

end A098574

/-! ## A098574.P1178699690410397670

`A369813(record[(n-1)^((1-(-1)^n)/2)])+floor(1/(n+1))`
-/

namespace A098574.P1178699690410397670
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat + ⌊1 / (n + 1 : ℚ)⌋

end

end A098574.P1178699690410397670

namespace A098574

/-- `A369813(record[(n-1)^((1-(-1)^n)/2)])+floor(1/(n+1))` -/
def P1178699690410397670.Spec : Prop :=
  ∀ n, P1178699690410397670.a n = A098574 n

end A098574

/-! ## A098574.P6559584791376082166

`Δ[Δ[A007380(2*n+3)]]`
-/

namespace A098574.P6559584791376082166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007380 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098574.P6559584791376082166

namespace A098574

/-- `Δ[Δ[A007380(2*n+3)]]` -/
def P6559584791376082166.Spec : Prop :=
  ∀ n, P6559584791376082166.a n = A098574 n

end A098574

/-! ## A098574.P6734457063296797156

`Δ[Δ[A007385(2*n+3)]]`
-/

namespace A098574.P6734457063296797156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007385 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098574.P6734457063296797156

namespace A098574

/-- `Δ[Δ[A007385(2*n+3)]]` -/
def P6734457063296797156.Spec : Prop :=
  ∀ n, P6734457063296797156.a n = A098574 n

end A098574

/-! ## A098574.P18422879572540096198

`A369813(A005843(n))%A228469(n)`
-/

namespace A098574.P18422879572540096198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369813 (A005843 n).toNat) (A228469 n)

end

end A098574.P18422879572540096198

namespace A098574

/-- `A369813(A005843(n))%A228469(n)` -/
def P18422879572540096198.Spec : Prop :=
  ∀ n, P18422879572540096198.a n = A098574 n

end A098574

/-!
# A098575: a(n) = Sum_{k=0..floor(n/4)} C(n-2*k,2*k)*2^k.

The programs for A098575, the canonical program `A098575.P709108071475115151` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098575 has offset 0).

The definition of A098575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098575.P709108071475115151

`2*a(n-1)-a(n-2)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098575

/-- `2*a(n-1)-a(n-2)+2*a(n-4)` -/
def P709108071475115151.Spec : Prop :=
  ∀ n, P709108071475115151.a n = A098575 n

theorem P709108071475115151.correct : P709108071475115151.Spec := by
  intro n
  simp only [A098575]

end A098575

/-! ## A098575.P4033269453676529347

`ogf((1-x)/(1-2x+x^2-2x^4))`
-/

namespace A098575.P4033269453676529347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 1, 0, -2] n

end

end A098575.P4033269453676529347

namespace A098575

/-- `ogf((1-x)/(1-2x+x^2-2x^4))` -/
def P4033269453676529347.Spec : Prop :=
  ∀ n, P4033269453676529347.a n = A098575 n

end A098575

/-! ## A098575.P2777185411388435192

`2*(a(n-1)+a(n-4))-a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A098575.P2777185411388435192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  2 * (a (n - 1) + a (n - 4)) - a (n - 2)

end

end A098575.P2777185411388435192

namespace A098575

/-- `2*(a(n-1)+a(n-4))-a(n-2)` -/
def P2777185411388435192.Spec : Prop :=
  ∀ n, P2777185411388435192.a n = A098575 n

end A098575

/-! ## A098575.P322025341704588353

`2*A023426(A004917(n+1))-1`
-/

namespace A098575.P322025341704588353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023426 (A004917 (n + 1)).toNat - 1

end

end A098575.P322025341704588353

namespace A098575

/-- `2*A023426(A004917(n+1))-1` -/
def P322025341704588353.Spec : Prop :=
  ∀ n, P322025341704588353.a n = A098575 n

end A098575

/-! ## A098575.P9639328718312968548

`A023426(A004917(n+1))+A023426(n)-1`
-/

namespace A098575.P9639328718312968548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023426 (A004917 (n + 1)).toNat + (A023426 n - 1)

end

end A098575.P9639328718312968548

namespace A098575

/-- `A023426(A004917(n+1))+A023426(n)-1` -/
def P9639328718312968548.Spec : Prop :=
  ∀ n, P9639328718312968548.a n = A098575 n

end A098575

/-!
# A098576: a(n) = Sum_{k=0..floor(n/4)} C(n-2*k,2*k) * 3^k.

The programs for A098576, the canonical program `A098576.P16346959961064321393` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098576 has offset 0).

The definition of A098576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098576.P16346959961064321393

`2*a(n-1)-a(n-2)+3*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098576

/-- `2*a(n-1)-a(n-2)+3*a(n-4)` -/
def P16346959961064321393.Spec : Prop :=
  ∀ n, P16346959961064321393.a n = A098576 n

theorem P16346959961064321393.correct : P16346959961064321393.Spec := by
  intro n
  simp only [A098576]

end A098576

/-! ## A098576.P10015666222586765014

`ogf((1-x)/(1-2x+x^2-3x^4))`
-/

namespace A098576.P10015666222586765014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 1, 0, -3] n

end

end A098576.P10015666222586765014

namespace A098576

/-- `ogf((1-x)/(1-2x+x^2-3x^4))` -/
def P10015666222586765014.Spec : Prop :=
  ∀ n, P10015666222586765014.a n = A098576 n

end A098576

/-! ## A098576.P5074474635022133025

`A123621(3*A098482(n))`
-/

namespace A098576.P5074474635022133025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (3 * A098482 n).toNat

end

end A098576.P5074474635022133025

namespace A098576

/-- `A123621(3*A098482(n))` -/
def P5074474635022133025.Spec : Prop :=
  ∀ n, P5074474635022133025.a n = A098576 n

end A098576

/-! ## A098576.P12175597914762784452

`A001651(A098482(n)^A184257(n+1))`
-/

namespace A098576.P12175597914762784452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.roundAway ((A098482 n : ℚ) ^ (A184257 (n + 1) : ℤ))).toNat

end

end A098576.P12175597914762784452

namespace A098576

/-- `A001651(A098482(n)^A184257(n+1))` -/
def P12175597914762784452.Spec : Prop :=
  ∀ n, P12175597914762784452.a n = A098576 n

end A098576

/-! ## A098576.P18124653932582192566

`A032766(A098482(n)^A184257(n+1))`
-/

namespace A098576.P18124653932582192566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A098482 n : ℚ) ^ (A184257 (n + 1) : ℤ))).toNat

end

end A098576.P18124653932582192566

namespace A098576

/-- `A032766(A098482(n)^A184257(n+1))` -/
def P18124653932582192566.Spec : Prop :=
  ∀ n, P18124653932582192566.a n = A098576 n

end A098576

/-!
# A098577: a(n) = Sum_{k=0..floor(n/5)} C(n-3*k,2*k) * 2^k.

The programs for A098577, the canonical program `A098577.P16675191947240822953` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098577 has offset 0).

The definition of A098577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098577.P5601212128038751505

`ogf((1-x)/(1-2x+x^2-2x^5))`
-/

namespace A098577.P5601212128038751505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 1, 0, 0, -2] n

end

end A098577.P5601212128038751505

namespace A098577

/-- `ogf((1-x)/(1-2x+x^2-2x^5))` -/
def P5601212128038751505.Spec : Prop :=
  ∀ n, P5601212128038751505.a n = A098577 n

end A098577

/-! ## A098577.P16675191947240822953

`2*a(n-1)-a(n-2)+2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098577

/-- `2*a(n-1)-a(n-2)+2*a(n-5)` -/
def P16675191947240822953.Spec : Prop :=
  ∀ n, P16675191947240822953.a n = A098577 n

theorem P16675191947240822953.correct : P16675191947240822953.Spec := by
  intro n
  simp only [A098577]

end A098577

/-! ## A098577.P10534959554272939600

`A112382(A011895(n))+A011878(n)`
-/

namespace A098577.P10534959554272939600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 (A011895 n).toNat + A011878 n

end

end A098577.P10534959554272939600

namespace A098577

/-- `A112382(A011895(n))+A011878(n)` -/
def P10534959554272939600.Spec : Prop :=
  ∀ n, P10534959554272939600.a n = A098577 n

end A098577

/-! ## A098577.P9693171141824724411

`A112382(A011895(n))+A011879(n)`
-/

namespace A098577.P9693171141824724411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 (A011895 n).toNat + A011879 n

end

end A098577.P9693171141824724411

namespace A098577

/-- `A112382(A011895(n))+A011879(n)` -/
def P9693171141824724411.Spec : Prop :=
  ∀ n, P9693171141824724411.a n = A098577 n

end A098577

/-! ## A098577.P16856740466268433686

`or(A000005(A309863(n)), A011898(n))`
-/

namespace A098577.P16856740466268433686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A309863 n).toNat) (A011898 n)

end

end A098577.P16856740466268433686

namespace A098577

/-- `or(A000005(A309863(n)), A011898(n))` -/
def P16856740466268433686.Spec : Prop :=
  ∀ n, P16856740466268433686.a n = A098577 n

end A098577

/-!
# A098578: a(n) = Sum_{k=0..floor(n/4)} C(n-3*k,k+1).

The programs for A098578, the canonical program `A098578.P3599952732565414233` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098578 has offset 0).

The definition of A098578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098578.P3599952732565414233

`a(n-1)+a(n-4)+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098578

/-- `a(n-1)+a(n-4)+1` -/
def P3599952732565414233.Spec : Prop :=
  ∀ n, (P3599952732565414233.a n : ℤ) = A098578 n

theorem P3599952732565414233.correct : P3599952732565414233.Spec := by
  intro n
  simp only [A098578]

end A098578

/-! ## A098578.P14312542126722762132

`ogf(x/(1-2x+x^2-x^4+x^5))`
-/

namespace A098578.P14312542126722762132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 1, 0, -1, 1] n

end

end A098578.P14312542126722762132

namespace A098578

/-- `ogf(x/(1-2x+x^2-x^4+x^5))` -/
def P14312542126722762132.Spec : Prop :=
  ∀ n, P14312542126722762132.a n = A098578 n

end A098578

/-! ## A098578.P15874522143236385728

`∑[a(n-1)+a(n-4)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A098578.P15874522143236385728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098578.P15874522143236385728

namespace A098578

/-- `∑[a(n-1)+a(n-4)]` -/
def P15874522143236385728.Spec : Prop :=
  ∀ n, (P15874522143236385728.a n : ℤ) = A098578 n

end A098578

/-! ## A098578.P16678999193112114149

`∑[A003269(n)]`
-/

namespace A098578.P16678999193112114149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098578.P16678999193112114149

namespace A098578

/-- `∑[A003269(n)]` -/
def P16678999193112114149.Spec : Prop :=
  ∀ n, P16678999193112114149.a n = A098578 n

end A098578

/-! ## A098578.P4488859728035251612

`∑[A017898(n+3)]`
-/

namespace A098578.P4488859728035251612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098578.P4488859728035251612

namespace A098578

/-- `∑[A017898(n+3)]` -/
def P4488859728035251612.Spec : Prop :=
  ∀ n, P4488859728035251612.a n = A098578 n

end A098578

/-! ## A098578.P980043892413237551

`record[A017898(n)-1]`
-/

namespace A098578.P980043892413237551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098578.P980043892413237551

namespace A098578

/-- `record[A017898(n)-1]` -/
def P980043892413237551.Spec : Prop :=
  ∀ n, P980043892413237551.a n = A098578 n

end A098578

/-! ## A098578.P8692053638192544811

`A017898(n+7)-1`
-/

namespace A098578.P8692053638192544811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 7) - 1

end

end A098578.P8692053638192544811

namespace A098578

/-- `A017898(n+7)-1` -/
def P8692053638192544811.Spec : Prop :=
  ∀ n, P8692053638192544811.a n = A098578 n

end A098578

/-! ## A098578.P10891772654871378025

`A122522(2*(n+4))-1`
-/

namespace A098578.P10891772654871378025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (2 * (n + 4)) - 1

end

end A098578.P10891772654871378025

namespace A098578

/-- `A122522(2*(n+4))-1` -/
def P10891772654871378025.Spec : Prop :=
  ∀ n, P10891772654871378025.a n = A098578 n

end A098578

/-! ## A098578.P17563951831471354451

`A078467(n)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A098578.P17563951831471354451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A078467 n + a (n - 3)

end

end A098578.P17563951831471354451

namespace A098578

/-- `A078467(n)+a(n-3)` -/
def P17563951831471354451.Spec : Prop :=
  ∀ n, P17563951831471354451.a n = A098578 n

end A098578

/-! ## A098578.P7152350133760649180

`∑[∑[A226517(2*n+1)]]+n`
-/

namespace A098578.P7152350133760649180
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A098578.P7152350133760649180

namespace A098578

/-- `∑[∑[A226517(2*n+1)]]+n` -/
def P7152350133760649180.Spec : Prop :=
  ∀ n, P7152350133760649180.a n = A098578 n

end A098578

/-! ## A098578.P1596077372773820204

`A143283(n)+A099559(n)`
-/

namespace A098578.P1596077372773820204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143283 n + A099559 n

end

end A098578.P1596077372773820204

namespace A098578

/-- `A143283(n)+A099559(n)` -/
def P1596077372773820204.Spec : Prop :=
  ∀ n, P1596077372773820204.a n = A098578 n

end A098578

/-! ## A098578.P17902140799891599486

`A003269(n+3)+A003269(n)-1`
-/

namespace A098578.P17902140799891599486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (n + 3) + A003269 n - 1

end

end A098578.P17902140799891599486

namespace A098578

/-- `A003269(n+3)+A003269(n)-1` -/
def P17902140799891599486.Spec : Prop :=
  ∀ n, P17902140799891599486.a n = A098578 n

end A098578

/-! ## A098578.P17398865770364860712

`∑[A145153(A034856(n+1))]`
-/

namespace A098578.P17398865770364860712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098578.P17398865770364860712

namespace A098578

/-- `∑[A145153(A034856(n+1))]` -/
def P17398865770364860712.Spec : Prop :=
  ∀ n, P17398865770364860712.a n = A098578 n

end A098578

/-! ## A098578.P791620552607318872

`A145153(∑[n+3])`
-/

namespace A098578.P791620552607318872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098578.P791620552607318872

namespace A098578

/-- `A145153(∑[n+3])` -/
def P791620552607318872.Spec : Prop :=
  ∀ n, P791620552607318872.a n = A098578 n

end A098578

/-! ## A098578.P11542536976160902352

`A193516(A000217(n+3))-1`
-/

namespace A098578.P11542536976160902352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193516 (A000217 (n + 3)).toNat - 1

end

end A098578.P11542536976160902352

namespace A098578

/-- `A193516(A000217(n+3))-1` -/
def P11542536976160902352.Spec : Prop :=
  ∀ n, P11542536976160902352.a n = A098578 n

end A098578

/-! ## A098578.P15914446558499624152

`record[A003269(A004736(n+1))-1]`
-/

namespace A098578.P15914446558499624152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A004736 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098578.P15914446558499624152

namespace A098578

/-- `record[A003269(A004736(n+1))-1]` -/
def P15914446558499624152.Spec : Prop :=
  ∀ n, P15914446558499624152.a n = A098578 n

end A098578

/-! ## A098578.P14784370137795583881

`Δ[Δ[A145153(A034856(n+2)-3)]]`
-/

namespace A098578.P14784370137795583881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145153 (A034856 (n + 2) - 3).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098578.P14784370137795583881

namespace A098578

/-- `Δ[Δ[A145153(A034856(n+2)-3)]]` -/
def P14784370137795583881.Spec : Prop :=
  ∀ n, P14784370137795583881.a n = A098578 n

end A098578

/-!
# A098579: Expansion of sqrt(1-8*x).

The programs for A098579, the canonical program `A098579.P5419655144951964955` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098579 has offset 0).

The definition of A098579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098579.P18136706756436701144

`(2-3/n)*4*a(n-1)` with `a(0)=1`
-/

namespace A098579.P18136706756436701144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - 3 / (n : ℚ)) * (4 * a (n - 1))

end

end A098579.P18136706756436701144

namespace A098579

/-- `(2-3/n)*4*a(n-1)` -/
def P18136706756436701144.Spec : Prop :=
  ∀ n, P18136706756436701144.a n = (A098579 n : ℚ)

end A098579

/-! ## A098579.P5419655144951964955

`2^n*A002420(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A098579

/-- `2^n*A002420(n)` -/
def P5419655144951964955.Spec : Prop :=
  ∀ n, P5419655144951964955.a n = A098579 n

theorem P5419655144951964955.correct : P5419655144951964955.Spec := by
  intro n
  simp only [A098579]

end A098579

/-! ## A098579.P17582310458931224761

`(-2)^n*A104624(2*n)`
-/

namespace A098579.P17582310458931224761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A104624 (2 * n)

end

end A098579.P17582310458931224761

namespace A098579

/-- `(-2)^n*A104624(2*n)` -/
def P17582310458931224761.Spec : Prop :=
  ∀ n, P17582310458931224761.a n = A098579 n

end A098579

/-! ## A098579.P13767042688585250617

`A000108(n)/(3/(n+1)-2)*2^n`
-/

namespace A098579.P13767042688585250617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (3 / (n + 1 : ℚ) - 2) * (2 ^ n : ℚ)

end

end A098579.P13767042688585250617

namespace A098579

/-- `A000108(n)/(3/(n+1)-2)*2^n` -/
def P13767042688585250617.Spec : Prop :=
  ∀ n, P13767042688585250617.a n = (A098579 n : ℚ)

end A098579

/-! ## A098579.P14648523656918335965

`∏[A033999(n)]*A261196(n)`
-/

namespace A098579.P14648523656918335965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A261196 n

end

end A098579.P14648523656918335965

namespace A098579

/-- `∏[A033999(n)]*A261196(n)` -/
def P14648523656918335965.Spec : Prop :=
  ∀ n, P14648523656918335965.a n = A098579 n

end A098579

/-! ## A098579.P10038960043165066422

`A002420(n)*A011782(n+1)`
-/

namespace A098579.P10038960043165066422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A011782 (n + 1)

end

end A098579.P10038960043165066422

namespace A098579

/-- `A002420(n)*A011782(n+1)` -/
def P10038960043165066422.Spec : Prop :=
  ∀ n, P10038960043165066422.a n = A098579 n

end A098579

/-! ## A098579.P14359692376274404970

`A115140(n)*A151821(n+1)`
-/

namespace A098579.P14359692376274404970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 n * A151821 (n + 1)

end

end A098579.P14359692376274404970

namespace A098579

/-- `A115140(n)*A151821(n+1)` -/
def P14359692376274404970.Spec : Prop :=
  ∀ n, P14359692376274404970.a n = A098579 n

end A098579

/-! ## A098579.P17235706205361637133

`A002420(n)*A016116(2*n)`
-/

namespace A098579.P17235706205361637133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A016116 (2 * n)

end

end A098579.P17235706205361637133

namespace A098579

/-- `A002420(n)*A016116(2*n)` -/
def P17235706205361637133.Spec : Prop :=
  ∀ n, P17235706205361637133.a n = A098579 n

end A098579

/-! ## A098579.P9876003702048290126

`A002420(n)*A060546(2*n)`
-/

namespace A098579.P9876003702048290126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A060546 (2 * n)

end

end A098579.P9876003702048290126

namespace A098579

/-- `A002420(n)*A060546(2*n)` -/
def P9876003702048290126.Spec : Prop :=
  ∀ n, P9876003702048290126.a n = A098579 n

end A098579

/-! ## A098579.P15123151225020224793

`A103973(2*n)/(1-2*n)`
-/

namespace A098579.P15123151225020224793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103973 (2 * n) : ℚ) / (1 - (2 * n : ℤ) : ℚ)

end

end A098579.P15123151225020224793

namespace A098579

/-- `A103973(2*n)/(1-2*n)` -/
def P15123151225020224793.Spec : Prop :=
  ∀ n, P15123151225020224793.a n = (A098579 n : ℚ)

end A098579

/-!
# A098580: Expansion of (sqrt(1-8*x)-4*x)/sqrt(1-8*x).

The programs for A098580, the canonical program `A098580.P443404764633942695` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098580 has offset 0).

The definition of A098580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098580.P9101796249062938427

`round(sqrt(n²+1))*A098579(n)`
-/

namespace A098580.P9101796249062938427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A098579 n

end

end A098580.P9101796249062938427

namespace A098580

/-- `round(sqrt(n²+1))*A098579(n)` -/
def P9101796249062938427.Spec : Prop :=
  ∀ n, P9101796249062938427.a n = A098580 n

end A098580

/-! ## A098580.P443404764633942695

`A002420(n)*A134401(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A098580

/-- `A002420(n)*A134401(n)` -/
def P443404764633942695.Spec : Prop :=
  ∀ n, P443404764633942695.a n = A098580 n

theorem P443404764633942695.correct : P443404764633942695.Spec := by
  intro n
  simp only [A098580]

end A098580

/-! ## A098580.P16991988829698139046

`A000007(n)-A005843(n)*A115125(n)`
-/

namespace A098580.P16991988829698139046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A005843 n * A115125 n

end

end A098580.P16991988829698139046

namespace A098580

/-- `A000007(n)-A005843(n)*A115125(n)` -/
def P16991988829698139046.Spec : Prop :=
  ∀ n, P16991988829698139046.a n = A098580 n

end A098580

/-! ## A098580.P539342509253918984

`A000079(n)*A004277(n)*A115140(n)`
-/

namespace A098580.P539342509253918984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A004277 n * A115140 n

end

end A098580.P539342509253918984

namespace A098580

/-- `A000079(n)*A004277(n)*A115140(n)` -/
def P539342509253918984.Spec : Prop :=
  ∀ n, P539342509253918984.a n = A098580 n

end A098580

/-! ## A098580.P11020026454032032267

`A008574(n)*A011782(n)*A115140(n)`
-/

namespace A098580.P11020026454032032267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n * A011782 n * A115140 n

end

end A098580.P11020026454032032267

namespace A098580

/-- `A008574(n)*A011782(n)*A115140(n)` -/
def P11020026454032032267.Spec : Prop :=
  ∀ n, P11020026454032032267.a n = A098580 n

end A098580

/-!
# A098581: Expansion of (1+2*x+4*x^2)/(1-x-8*x^4).

The programs for A098581, the canonical program `A098581.P12257410455321094906` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098581 has offset 0).

The definition of A098581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+4x^2)/(1-x-8x^4))` (program `A098581.P12257410455321094906`, by `A098581.P12257410455321094906.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098581.P14989847556871046405

`a(n-1)+8*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=7`
-/

namespace A098581.P14989847556871046405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 7] fun n a =>
  a (n - 1) + 8 * a (n - 4)

end

end A098581.P14989847556871046405

namespace A098581

/-- `a(n-1)+8*a(n-4)` -/
def P14989847556871046405.Spec : Prop :=
  ∀ n, (P14989847556871046405.a n : ℤ) = A098581 n

end A098581

/-! ## A098581.P12257410455321094906

`ogf((1+2x+4x^2)/(1-x-8x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098581

/-- `ogf((1+2x+4x^2)/(1-x-8x^4))` -/
def P12257410455321094906.Spec : Prop :=
  ∀ n, P12257410455321094906.a n = A098581 n

theorem P12257410455321094906.correct : P12257410455321094906.Spec := by
  intro n
  simp only [A098581]

end A098581

/-! ## A098581.P10039289402497780851

`A274230(n)+A003056(A345902(n+2))`
-/

namespace A098581.P10039289402497780851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n + A003056 (A345902 (n + 2)).toNat

end

end A098581.P10039289402497780851

namespace A098581

/-- `A274230(n)+A003056(A345902(n+2))` -/
def P10039289402497780851.Spec : Prop :=
  ∀ n, P10039289402497780851.a n = A098581 n

end A098581

/-!
# A098582: Expansion of (1+2*x+4*x^2+8*x^3)/(1-x-16*x^5).

The programs for A098582, the canonical program `A098582.P15239798999240744378` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098582 has offset 0).

The definition of A098582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+4x^2+8x^3)/(1-x-16x^5))` (program `A098582.P15239798999240744378`, by `A098582.P15239798999240744378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098582.P9949863105460798025

`a(n-1)+16*a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15, a(4)=15`
-/

namespace A098582.P9949863105460798025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 15, 15] fun n a =>
  a (n - 1) + 16 * a (n - 5)

end

end A098582.P9949863105460798025

namespace A098582

/-- `a(n-1)+16*a(n-5)` -/
def P9949863105460798025.Spec : Prop :=
  ∀ n, (P9949863105460798025.a n : ℤ) = A098582 n

end A098582

/-! ## A098582.P15239798999240744378

`ogf((1+2x+4x^2+8x^3)/(1-x-16x^5))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098582

/-- `ogf((1+2x+4x^2+8x^3)/(1-x-16x^5))` -/
def P15239798999240744378.Spec : Prop :=
  ∀ n, P15239798999240744378.a n = A098582 n

theorem P15239798999240744378.correct : P15239798999240744378.Spec := by
  intro n
  simp only [A098582]

end A098582

/-! ## A098582.P10610811296001285496

`A083802(A098583(n+1))`
-/

namespace A098582.P10610811296001285496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083802 (A098583 (n + 1)).toNat

end

end A098582.P10610811296001285496

namespace A098582

/-- `A083802(A098583(n+1))` -/
def P10610811296001285496.Spec : Prop :=
  ∀ n, P10610811296001285496.a n = A098582 n

end A098582

/-! ## A098582.P1514362840347916644

`and(A126646(n), A158632(A000244(n)))`
-/

namespace A098582.P1514362840347916644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A158632 (A000244 n).toNat)

end

end A098582.P1514362840347916644

namespace A098582

/-- `and(A126646(n), A158632(A000244(n)))` -/
def P1514362840347916644.Spec : Prop :=
  ∀ n, P1514362840347916644.a n = A098582 n

end A098582

/-!
# A098583: Expansion of (1+2*x+4*x^2+8*x^3+16*x^4)/(1-x-32*x^6).

The programs for A098583, the canonical program `A098583.P15815605101332617550` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098583 has offset 0).

The definition of A098583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+4x^2+8x^3+16x^4)/(1-x-32x^6))` (program `A098583.P15815605101332617550`, by `A098583.P15815605101332617550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098583.P9482859813379681347

`a(n-1)+32*a(n-6)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15, a(4)=31, a(5)=31`
-/

namespace A098583.P9482859813379681347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 15, 31, 31] fun n a =>
  a (n - 1) + 32 * a (n - 6)

end

end A098583.P9482859813379681347

namespace A098583

/-- `a(n-1)+32*a(n-6)` -/
def P9482859813379681347.Spec : Prop :=
  ∀ n, (P9482859813379681347.a n : ℤ) = A098583 n

end A098583

/-! ## A098583.P15815605101332617550

`ogf((1+2x+4x^2+8x^3+16x^4)/(1-x-32x^6))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098583

/-- `ogf((1+2x+4x^2+8x^3+16x^4)/(1-x-32x^6))` -/
def P15815605101332617550.Spec : Prop :=
  ∀ n, P15815605101332617550.a n = A098583 n

theorem P15815605101332617550.correct : P15815605101332617550.Spec := by
  intro n
  simp only [A098583]

end A098583

/-! ## A098583.P180127571132397990

`and(A125169(A058214(n)), A126646(n))`
-/

namespace A098583.P180127571132397990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A125169 (A058214 n).toNat) (A126646 n)

end

end A098583.P180127571132397990

namespace A098583

/-- `and(A125169(A058214(n)), A126646(n))` -/
def P180127571132397990.Spec : Prop :=
  ∀ n, P180127571132397990.a n = A098583 n

end A098583

/-! ## A098583.P13657580235227221113

`A125169(A058214(n))%A166444(n+3)`
-/

namespace A098583.P13657580235227221113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125169 (A058214 n).toNat) (A166444 (n + 3))

end

end A098583.P13657580235227221113

namespace A098583

/-- `A125169(A058214(n))%A166444(n+3)` -/
def P13657580235227221113.Spec : Prop :=
  ∀ n, P13657580235227221113.a n = A098583 n

end A098583

/-! ## A098583.P1095816234266902542

`or(A084261(n), A132197(A132227(n+1)))`
-/

namespace A098583.P1095816234266902542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084261 n) (A132197 (A132227 (n + 1)).toNat)

end

end A098583.P1095816234266902542

namespace A098583

/-- `or(A084261(n), A132197(A132227(n+1)))` -/
def P1095816234266902542.Spec : Prop :=
  ∀ n, P1095816234266902542.a n = A098583 n

end A098583

/-!
# A098585: Number of edges in LCM of graphs K_n and C_4.

The programs for A098585, there is no canonical definition to state claims against.
-/

/-! ## A098585.P10755884079196990179

`A000217(n)*A061395(A204292(3*n+1))`
-/

namespace A098585.P10755884079196990179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A061395 (A204292 (3 * n + 1)).toNat

end

end A098585.P10755884079196990179

/-! ## A098585.P7633367959409427193

`A061395(A204292(3*n+1))*A130489(n)`
-/

namespace A098585.P7633367959409427193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A204292 (3 * n + 1)).toNat * A130489 n

end

end A098585.P7633367959409427193

/-! ## A098585.P14752626017608761898

`lcm(or(1, n), A251631(or(1, n*(n+2))))`
-/

namespace A098585.P14752626017608761898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.lor 1 n : ℤ) (A251631 (Nat.lor 1 (n * (n + 2))))

end

end A098585.P14752626017608761898

/-!
# A098586: a(n) = (1/2) * (5*P(n+1) + P(n) - 1), where P(k) are the Pell numbers A000129.

The programs for A098586, the canonical program `A098586.P14380985845312138446` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098586 has offset 0).

The definition of A098586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098586.P14380985845312138446

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=2, a(1)=5, a(2)=13`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098586

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P14380985845312138446.Spec : Prop :=
  ∀ n, P14380985845312138446.a n = A098586 n

theorem P14380985845312138446.correct : P14380985845312138446.Spec := by
  intro n
  simp only [A098586]

end A098586

/-! ## A098586.P8652205144162428847

`ogf((2-x)/(1-3x+x^2+x^3))`
-/

namespace A098586.P8652205144162428847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -3, 1, 1] n

end

end A098586.P8652205144162428847

namespace A098586

/-- `ogf((2-x)/(1-3x+x^2+x^3))` -/
def P8652205144162428847.Spec : Prop :=
  ∀ n, P8652205144162428847.a n = A098586 n

end A098586

/-! ## A098586.P1668485147104454108

`∑[a(n-2)+2*a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A098586.P1668485147104454108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 2) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098586.P1668485147104454108

namespace A098586

/-- `∑[a(n-2)+2*a(n-1)]` -/
def P1668485147104454108.Spec : Prop :=
  ∀ n, (P1668485147104454108.a n : ℤ) = A098586 n

end A098586

/-! ## A098586.P1389227244686173332

`ceil(a(n-1)+sqrt(2)*a(n-1))` with `a(0)=2`
-/

namespace A098586.P1389227244686173332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.sqrt (2 : ℝ) * (a (n - 1) : ℝ)⌉

end

end A098586.P1389227244686173332

namespace A098586

/-- `ceil(a(n-1)+sqrt(2)*a(n-1))` -/
def P1389227244686173332.Spec : Prop :=
  ∀ n, P1389227244686173332.a n = A098586 n

end A098586

/-! ## A098586.P10297802957923215411

`2*a(n-1)+a(n-2)+1` with `a(0)=2, a(1)=5`
-/

namespace A098586.P10297802957923215411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  2 * a (n - 1) + (a (n - 2) + 1)

end

end A098586.P10297802957923215411

namespace A098586

/-- `2*a(n-1)+a(n-2)+1` -/
def P10297802957923215411.Spec : Prop :=
  ∀ n, (P10297802957923215411.a n : ℤ) = A098586 n

end A098586

/-! ## A098586.P10814967642803978403

`∑[a(n-1)+a(n-1)+a(n-2)]` with `a(0)=2, a(1)=3`
-/

namespace A098586.P10814967642803978403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098586.P10814967642803978403

namespace A098586

/-- `∑[a(n-1)+a(n-1)+a(n-2)]` -/
def P10814967642803978403.Spec : Prop :=
  ∀ n, (P10814967642803978403.a n : ℤ) = A098586 n

end A098586

/-! ## A098586.P4452147131776093659

`a(n-1)+1+a(n-1)+a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A098586.P4452147131776093659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + a (n - 2))

end

end A098586.P4452147131776093659

namespace A098586

/-- `a(n-1)+1+a(n-1)+a(n-2)` -/
def P4452147131776093659.Spec : Prop :=
  ∀ n, (P4452147131776093659.a n : ℤ) = A098586 n

end A098586

/-! ## A098586.P18342776057110648001

`∑[A078343(n+1)]`
-/

namespace A098586.P18342776057110648001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098586.P18342776057110648001

namespace A098586

/-- `∑[A078343(n+1)]` -/
def P18342776057110648001.Spec : Prop :=
  ∀ n, P18342776057110648001.a n = A098586 n

end A098586

/-! ## A098586.P13144255724711549924

`∑[A174192(n)+1]`
-/

namespace A098586.P13144255724711549924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174192 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098586.P13144255724711549924

namespace A098586

/-- `∑[A174192(n)+1]` -/
def P13144255724711549924.Spec : Prop :=
  ∀ n, P13144255724711549924.a n = A098586 n

end A098586

/-! ## A098586.P16605085950371880251

`∑[A266504(2*n+1)]`
-/

namespace A098586.P16605085950371880251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098586.P16605085950371880251

namespace A098586

/-- `∑[A266504(2*n+1)]` -/
def P16605085950371880251.Spec : Prop :=
  ∀ n, P16605085950371880251.a n = A098586 n

end A098586

/-! ## A098586.P13782869808997950050

`∑[A266506(2*(2*n+1))]`
-/

namespace A098586.P13782869808997950050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (2 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098586.P13782869808997950050

namespace A098586

/-- `∑[A266506(2*(2*n+1))]` -/
def P13782869808997950050.Spec : Prop :=
  ∀ n, P13782869808997950050.a n = A098586 n

end A098586

/-! ## A098586.P13603117900319084916

`A073301(3*n)+a(n-1)` with `a(0)=2`
-/

namespace A098586.P13603117900319084916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A073301 (3 * n) + a (n - 1)

end

end A098586.P13603117900319084916

namespace A098586

/-- `A073301(3*n)+a(n-1)` -/
def P13603117900319084916.Spec : Prop :=
  ∀ n, P13603117900319084916.a n = A098586 n

end A098586

/-! ## A098586.P6248567682218954953

`A098790(n)+A078057(n)`
-/

namespace A098586.P6248567682218954953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 n + A078057 n

end

end A098586.P6248567682218954953

namespace A098586

/-- `A098790(n)+A078057(n)` -/
def P6248567682218954953.Spec : Prop :=
  ∀ n, P6248567682218954953.a n = A098586 n

end A098586

/-! ## A098586.P11302425126322057024

`A117585(n)+A100131(n)`
-/

namespace A098586.P11302425126322057024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117585 n + A100131 n

end

end A098586.P11302425126322057024

namespace A098586

/-- `A117585(n)+A100131(n)` -/
def P11302425126322057024.Spec : Prop :=
  ∀ n, P11302425126322057024.a n = A098586 n

end A098586

/-! ## A098586.P12268672783047551042

`A375726(n)+A113224(n)`
-/

namespace A098586.P12268672783047551042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375726 n + A113224 n

end

end A098586.P12268672783047551042

namespace A098586

/-- `A375726(n)+A113224(n)` -/
def P12268672783047551042.Spec : Prop :=
  ∀ n, P12268672783047551042.a n = A098586 n

end A098586

/-! ## A098586.P12269226848246434104

`∑[A002203(n)+A000129(n)]`
-/

namespace A098586.P12269226848246434104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n + A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098586.P12269226848246434104

namespace A098586

/-- `∑[A002203(n)+A000129(n)]` -/
def P12269226848246434104.Spec : Prop :=
  ∀ n, P12269226848246434104.a n = A098586 n

end A098586

/-! ## A098586.P158378551372155940

`A171842(n)+∑[A078057(n)]`
-/

namespace A098586.P158378551372155940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098586.P158378551372155940

namespace A098586

/-- `A171842(n)+∑[A078057(n)]` -/
def P158378551372155940.Spec : Prop :=
  ∀ n, P158378551372155940.a n = A098586 n

end A098586

/-! ## A098586.P1082128245922267667

`A048739(n)+A000129(n+1)`
-/

namespace A098586.P1082128245922267667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 n + A000129 (n + 1)

end

end A098586.P1082128245922267667

namespace A098586

/-- `A048739(n)+A000129(n+1)` -/
def P1082128245922267667.Spec : Prop :=
  ∀ n, P1082128245922267667.a n = A098586 n

end A098586

/-! ## A098586.P15580242693565150608

`A098790(n)+A001333(n+1)`
-/

namespace A098586.P15580242693565150608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098790 n + A001333 (n + 1)

end

end A098586.P15580242693565150608

namespace A098586

/-- `A098790(n)+A001333(n+1)` -/
def P15580242693565150608.Spec : Prop :=
  ∀ n, P15580242693565150608.a n = A098586 n

end A098586

/-! ## A098586.P6137329797766617871

`A133654(n+1)+A024537(n)`
-/

namespace A098586.P6137329797766617871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133654 (n + 1) + A024537 n

end

end A098586.P6137329797766617871

namespace A098586

/-- `A133654(n+1)+A024537(n)` -/
def P6137329797766617871.Spec : Prop :=
  ∀ n, P6137329797766617871.a n = A098586 n

end A098586

/-!
# A098588: a(n) = 2^n for n = 0..4; for n > 4, a(n) = 2*a(n-1) + a(n-5).

The programs for A098588, the canonical program `A098588.P3047352018734487624` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098588 has offset 0).

The definition of A098588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-5)` (program `A098588.P3047352018734487624`, by `A098588.P3047352018734487624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098588.P3047352018734487624

`2*a(n-1)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098588

/-- `2*a(n-1)+a(n-5)` -/
def P3047352018734487624.Spec : Prop :=
  ∀ n, (P3047352018734487624.a n : ℤ) = A098588 n

theorem P3047352018734487624.correct : P3047352018734487624.Spec := by
  intro n
  simp only [A098588]

end A098588

/-! ## A098588.P8962165746095006047

`ogf(1/(1-2x-x^5))`
-/

namespace A098588.P8962165746095006047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 0, 0, -1] n

end

end A098588.P8962165746095006047

namespace A098588

/-- `ogf(1/(1-2x-x^5))` -/
def P8962165746095006047.Spec : Prop :=
  ∀ n, P8962165746095006047.a n = A098588 n

end A098588

/-! ## A098588.P3253247728841756528

`A104040(A000217(n+2))-A107066(n)`
-/

namespace A098588.P3253247728841756528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104040 (A000217 (n + 2)).toNat - A107066 n

end

end A098588.P3253247728841756528

namespace A098588

/-- `A104040(A000217(n+2))-A107066(n)` -/
def P3253247728841756528.Spec : Prop :=
  ∀ n, P3253247728841756528.a n = A098588 n

end A098588

/-! ## A098588.P456979475512948288

`A170905(A011782(n+2))-A107066(n)`
-/

namespace A098588.P456979475512948288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170905 (A011782 (n + 2)).toNat - A107066 n

end

end A098588.P456979475512948288

namespace A098588

/-- `A170905(A011782(n+2))-A107066(n)` -/
def P456979475512948288.Spec : Prop :=
  ∀ n, P456979475512948288.a n = A098588 n

end A098588

/-!
# A098589: a(n) = 3*a(n-1) + 2*a(n-3), with a(0)=1, a(1)=3.

The programs for A098589, the canonical program `A098589.P4424594010223467497` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098589 has offset 0).

The definition of A098589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*a(n-3)` (program `A098589.P4424594010223467497`, by `A098589.P4424594010223467497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098589.P4424594010223467497

`3*a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098589

/-- `3*a(n-1)+2*a(n-3)` -/
def P4424594010223467497.Spec : Prop :=
  ∀ n, (P4424594010223467497.a n : ℤ) = A098589 n

theorem P4424594010223467497.correct : P4424594010223467497.Spec := by
  intro n
  simp only [A098589]

end A098589

/-! ## A098589.P12563835903306820331

`ogf(1/(1-3x-2x^3))`
-/

namespace A098589.P12563835903306820331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 0, -2] n

end

end A098589.P12563835903306820331

namespace A098589

/-- `ogf(1/(1-3x-2x^3))` -/
def P12563835903306820331.Spec : Prop :=
  ∀ n, P12563835903306820331.a n = A098589 n

end A098589

/-! ## A098589.P7687904997509582597

`A008585(a(n-1))+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A098589.P7687904997509582597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A008585 (a (n - 1)).toNat + 2 * a (n - 3)

end

end A098589.P7687904997509582597

namespace A098589

/-- `A008585(a(n-1))+2*a(n-3)` -/
def P7687904997509582597.Spec : Prop :=
  ∀ n, P7687904997509582597.a n = A098589 n

end A098589

/-! ## A098589.P7501601152889433253

`A188469(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A098589.P7501601152889433253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A188469 (2 * a (n - 1) - a (n - 2)).toNat

end

end A098589.P7501601152889433253

namespace A098589

/-- `A188469(2*a(n-1)-a(n-2))` -/
def P7501601152889433253.Spec : Prop :=
  ∀ n, P7501601152889433253.a n = A098589 n

end A098589

/-!
# A098590: a(n) = 4^n for n = 0..3; for n > 3, a(n) = 4*a(n-1) + a(n-4).

The programs for A098590, the canonical program `A098590.P1289959066894220549` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098590 has offset 0).

The definition of A098590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+a(n-4)` (program `A098590.P1289959066894220549`, by `A098590.P1289959066894220549.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098590.P1289959066894220549

`4*a(n-1)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=64`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A098590

/-- `4*a(n-1)+a(n-4)` -/
def P1289959066894220549.Spec : Prop :=
  ∀ n, (P1289959066894220549.a n : ℤ) = A098590 n

theorem P1289959066894220549.correct : P1289959066894220549.Spec := by
  intro n
  simp only [A098590]

end A098590

/-! ## A098590.P3928129138010023570

`ogf(1/(1-4x-x^4))`
-/

namespace A098590.P3928129138010023570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 0, 0, -1] n

end

end A098590.P3928129138010023570

namespace A098590

/-- `ogf(1/(1-4x-x^4))` -/
def P3928129138010023570.Spec : Prop :=
  ∀ n, P3928129138010023570.a n = A098590 n

end A098590

/-!
# A098592: Number of primes between n*30 and (n+1)*30.

The programs for A098592, the canonical program `A098592.P11030886862082510298` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098592 has offset 0).

The definition of A098592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098592.P3717281418266603891

`Δ[A000720(floor(tan(3)^n)+30*n)]`
-/

namespace A098592.P3717281418266603891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (⌊Real.tan (3 : ℝ) ^ n⌋ + (30 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P3717281418266603891

namespace A098592

/-- `Δ[A000720(floor(tan(3)^n)+30*n)]` -/
def P3717281418266603891.Spec : Prop :=
  ∀ n, P3717281418266603891.a n = A098592 n

end A098592

/-! ## A098592.P11030886862082510298

`Δ[A000720(A218255(3*n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A098592

/-- `Δ[A000720(A218255(3*n))]` -/
def P11030886862082510298.Spec : Prop :=
  ∀ n, P11030886862082510298.a n = A098592 n

theorem P11030886862082510298.correct : P11030886862082510298.Spec := by
  intro n
  simp only [A098592]

end A098592

/-! ## A098592.P10834164414937043329

`Δ[A000720(A008706(n)+A008607(n))]`
-/

namespace A098592.P10834164414937043329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 n + A008607 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P10834164414937043329

namespace A098592

/-- `Δ[A000720(A008706(n)+A008607(n))]` -/
def P10834164414937043329.Spec : Prop :=
  ∀ n, P10834164414937043329.a n = A098592 n

end A098592

/-! ## A098592.P18202898827622286609

`Δ[A000720(A008458(5*n))]`
-/

namespace A098592.P18202898827622286609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008458 (5 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P18202898827622286609

namespace A098592

/-- `Δ[A000720(A008458(5*n))]` -/
def P18202898827622286609.Spec : Prop :=
  ∀ n, P18202898827622286609.a n = A098592 n

end A098592

/-! ## A098592.P1926623164324132397

`Δ[A000720(A008706(6*n))]`
-/

namespace A098592.P1926623164324132397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (6 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P1926623164324132397

namespace A098592

/-- `Δ[A000720(A008706(6*n))]` -/
def P1926623164324132397.Spec : Prop :=
  ∀ n, P1926623164324132397.a n = A098592 n

end A098592

/-! ## A098592.P2780463379948490435

`Δ[A000720(A090771(A008458(n)))]`
-/

namespace A098592.P2780463379948490435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090771 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P2780463379948490435

namespace A098592

/-- `Δ[A000720(A090771(A008458(n)))]` -/
def P2780463379948490435.Spec : Prop :=
  ∀ n, P2780463379948490435.a n = A098592 n

end A098592

/-! ## A098592.P149468502765808183

`Δ[A000720(A008486(10*n))]`
-/

namespace A098592.P149468502765808183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008486 (10 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P149468502765808183

namespace A098592

/-- `Δ[A000720(A008486(10*n))]` -/
def P149468502765808183.Spec : Prop :=
  ∀ n, P149468502765808183.a n = A098592 n

end A098592

/-! ## A098592.P12374545723717656629

`Δ[A230980(30*n)]`
-/

namespace A098592.P12374545723717656629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (30 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P12374545723717656629

namespace A098592

/-- `Δ[A230980(30*n)]` -/
def P12374545723717656629.Spec : Prop :=
  ∀ n, P12374545723717656629.a n = A098592 n

end A098592

/-! ## A098592.P1052034294647481256

`abs(Δ[A230980(A249674(n))])`
-/

namespace A098592.P1052034294647481256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A249674 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A098592.P1052034294647481256

namespace A098592

/-- `abs(Δ[A230980(A249674(n))])` -/
def P1052034294647481256.Spec : Prop :=
  ∀ n, P1052034294647481256.a n = A098592 n

end A098592

/-! ## A098592.P17997944385836794582

`Δ[A000720(A007918(30*n))]`
-/

namespace A098592.P17997944385836794582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007918 (30 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P17997944385836794582

namespace A098592

/-- `Δ[A000720(A007918(30*n))]` -/
def P17997944385836794582.Spec : Prop :=
  ∀ n, P17997944385836794582.a n = A098592 n

end A098592

/-! ## A098592.P811442852587145869

`Δ[A036234(A063118(2*n+1)-1)]`
-/

namespace A098592.P811442852587145869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A063118 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P811442852587145869

namespace A098592

/-- `Δ[A036234(A063118(2*n+1)-1)]` -/
def P811442852587145869.Spec : Prop :=
  ∀ n, P811442852587145869.a n = A098592 n

end A098592

/-! ## A098592.P12326178520499483844

`Δ[A056172(60*n+1)]`
-/

namespace A098592.P12326178520499483844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (60 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098592.P12326178520499483844

namespace A098592

/-- `Δ[A056172(60*n+1)]` -/
def P12326178520499483844.Spec : Prop :=
  ∀ n, P12326178520499483844.a n = A098592 n

end A098592

/-!
# A098593: A triangle of Krawtchouk coefficients.

The programs for A098593, there is no canonical definition to state claims against.
-/

/-! ## A098593.P12892987565897165461

`2*A119326(n)-A007318(n)`
-/

namespace A098593.P12892987565897165461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119326 n - A007318 n

end

end A098593.P12892987565897165461

/-! ## A098593.P15695688814266600839

`A119326(A061579(n))-(A007318(n)-A119326(n))`
-/

namespace A098593.P15695688814266600839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119326 (A061579 n).toNat - (A007318 n - A119326 n)

end

end A098593.P15695688814266600839

/-! ## A098593.P5816726622902595361

`A117352(round(sqrt(2*(n+1)))+n+1)`
-/

namespace A098593.P5816726622902595361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117352 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + (n + 1 : ℤ)).toNat

end

end A098593.P5816726622902595361

/-! ## A098593.P11792779904327797153

`(1-4/2)²*A117352(A014132(n+1))`
-/

namespace A098593.P11792779904327797153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) ^ 2 * (A117352 (A014132 (n + 1)).toNat : ℚ)

end

end A098593.P11792779904327797153

/-! ## A098593.P16491708835889614592

`A099037(A061579(n))/A130595(n)`
-/

namespace A098593.P16491708835889614592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099037 (A061579 n).toNat : ℚ) / (A130595 n : ℚ)

end

end A098593.P16491708835889614592

/-! ## A098593.P10218480196394733195

`A099037(n)/A130595(∑[A198954(n)-1])`
-/

namespace A098593.P10218480196394733195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099037 n : ℚ) / (A130595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A098593.P10218480196394733195

/-! ## A098593.P14536765419247001038

`2*A119326(n)-A014682(A028326(n))`
-/

namespace A098593.P14536765419247001038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119326 n - A014682 (A028326 n).toNat

end

end A098593.P14536765419247001038

/-! ## A098593.P18221496666360622543

`A004277(A119326(n))-A007318(n)`
-/

namespace A098593.P18221496666360622543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A119326 n).toNat - A007318 n

end

end A098593.P18221496666360622543

/-! ## A098593.P15450993710191363430

`A004273(A119326(n))-A014473(n)`
-/

namespace A098593.P15450993710191363430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A119326 n).toNat - A014473 n

end

end A098593.P15450993710191363430

/-! ## A098593.P9300689588460397707

`A005843(A119326(n))-A014682(A028326(n))`
-/

namespace A098593.P9300689588460397707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A119326 n).toNat - A014682 (A028326 n).toNat

end

end A098593.P9300689588460397707

/-!
# A098594: Numbers k such that k!-1 and k!+1 are both semiprime.

The programs for A098594, there is no canonical definition to state claims against.
-/

/-! ## A098594.P4656722702793347580

`∩[A064186(n+1), A078778(n+1)]`
-/

namespace A098594.P4656722702793347580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098594.P4656722702793347580

/-! ## A098594.P16564171316741971526

`∩[A064186(n+1), A078781(n+1)]`
-/

namespace A098594.P16564171316741971526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098594.P16564171316741971526

/-! ## A098594.P8827910940616901742

`∩[A078778(n+1), A078781(n+1)]`
-/

namespace A098594.P8827910940616901742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A098594.P8827910940616901742

/-! ## A098594.P3965137138531042146

`∩[eq[2, A054990(n+1)]+1, A064186(n+1)]`
-/

namespace A098594.P3965137138531042146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A098594.P3965137138531042146

/-! ## A098594.P3051883222095271357

`∩[eq[2, A054991(n+1)]+1, A064186(n+1)]`
-/

namespace A098594.P3051883222095271357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A098594.P3051883222095271357

/-!
# A098595: Roman numerals version of the Look and Say sequence (original at A005150).

The programs for A098595, there is no canonical definition to state claims against.
-/

/-! ## A098595.P2525230683715553443

`A222214(A114397(n+1))`
-/

namespace A098595.P2525230683715553443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A114397 (n + 1)).toNat

end

end A098595.P2525230683715553443

/-!
# A098597: Numerator of Catalan(n)/2^(2n+1). Also, numerators of (2n-1)!!/(n+1)!. Odd part of the n-th Catalan number.

The programs for A098597, the canonical program `A098597.P14102537631952924985` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098597 has offset 0).

The definition of A098597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098597.P14102537631952924985

`A000108(n)/2^A048881(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A098597

/-- `A000108(n)/2^A048881(n)` -/
def P14102537631952924985.Spec : Prop :=
  ∀ n, P14102537631952924985.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P15303198713246561977

`A000265(A000108(n))`
-/

namespace A098597.P15303198713246561977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000108 n).toNat

end

end A098597.P15303198713246561977

namespace A098597

/-- `A000265(A000108(n))` -/
def P15303198713246561977.Spec : Prop :=
  ∀ n, P15303198713246561977.a n = A098597 n

end A098597

/-! ## A098597.P1201433417272677349

`abs(A002596(n+1))`
-/

namespace A098597.P1201433417272677349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002596 (n + 1)|

end

end A098597.P1201433417272677349

namespace A098597

/-- `abs(A002596(n+1))` -/
def P1201433417272677349.Spec : Prop :=
  ∀ n, P1201433417272677349.a n = A098597 n

end A098597

/-! ## A098597.P18132672483374299113

`∏[abs(ratio[A002596(n)])]`
-/

namespace A098597.P18132672483374299113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098597.P18132672483374299113

namespace A098597

/-- `∏[abs(ratio[A002596(n)])]` -/
def P18132672483374299113.Spec : Prop :=
  ∀ n, P18132672483374299113.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P15405549716409614457

`(2*n-1)*a(n-1)/A000265(n+1)` with `a(0)=1`
-/

namespace A098597.P15405549716409614457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1 : ℚ) * (a (n - 1) / (A000265 (n + 1) : ℚ))

end

end A098597.P15405549716409614457

namespace A098597

/-- `(2*n-1)*a(n-1)/A000265(n+1)` -/
def P15405549716409614457.Spec : Prop :=
  ∀ n, P15405549716409614457.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P7936047516908793220

`A002596(n+1)*A033999(n)`
-/

namespace A098597.P7936047516908793220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 (n + 1) * A033999 n

end

end A098597.P7936047516908793220

namespace A098597

/-- `A002596(n+1)*A033999(n)` -/
def P7936047516908793220.Spec : Prop :=
  ∀ n, P7936047516908793220.a n = A098597 n

end A098597

/-! ## A098597.P17233696800284763998

`∑[A280560(n)]*A002596(n+1)`
-/

namespace A098597.P17233696800284763998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002596 (n + 1)

end

end A098597.P17233696800284763998

namespace A098597

/-- `∑[A280560(n)]*A002596(n+1)` -/
def P17233696800284763998.Spec : Prop :=
  ∀ n, P17233696800284763998.a n = A098597 n

end A098597

/-! ## A098597.P3147277304228739312

`A002596(n+1)*A009531(2*n+1)`
-/

namespace A098597.P3147277304228739312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 (n + 1) * A009531 (2 * n + 1)

end

end A098597.P3147277304228739312

namespace A098597

/-- `A002596(n+1)*A009531(2*n+1)` -/
def P3147277304228739312.Spec : Prop :=
  ∀ n, P3147277304228739312.a n = A098597 n

end A098597

/-! ## A098597.P5629248306701594316

`(1-6/2)/A280560(n+1)*A002596(n+1)`
-/

namespace A098597.P5629248306701594316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (6 : ℚ) / 2) / (A280560 (n + 1) : ℚ) * (A002596 (n + 1) : ℚ)

end

end A098597.P5629248306701594316

namespace A098597

/-- `(1-6/2)/A280560(n+1)*A002596(n+1)` -/
def P5629248306701594316.Spec : Prop :=
  ∀ n, P5629248306701594316.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P12851235525353307947

`gcd(A002596(n+1)*A072436(2*n+1), A002596(n+1))`
-/

namespace A098597.P12851235525353307947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002596 (n + 1) * A072436 (2 * n + 1)) (A002596 (n + 1))

end

end A098597.P12851235525353307947

namespace A098597

/-- `gcd(A002596(n+1)*A072436(2*n+1), A002596(n+1))` -/
def P12851235525353307947.Spec : Prop :=
  ∀ n, (P12851235525353307947.a n : ℤ) = A098597 n

end A098597

/-! ## A098597.P5056334639203979381

`A000108(n)/A048896(n)`
-/

namespace A098597.P5056334639203979381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A048896 n : ℚ)

end

end A098597.P5056334639203979381

namespace A098597

/-- `A000108(n)/A048896(n)` -/
def P5056334639203979381.Spec : Prop :=
  ∀ n, P5056334639203979381.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P8480068054621768800

`A126120(2*n)/A048896(n)`
-/

namespace A098597.P8480068054621768800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126120 (2 * n) : ℚ) / (A048896 n : ℚ)

end

end A098597.P8480068054621768800

namespace A098597

/-- `A126120(2*n)/A048896(n)` -/
def P8480068054621768800.Spec : Prop :=
  ∀ n, P8480068054621768800.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P18268541564201856535

`A000108(n)/A243036(2*(n+1))`
-/

namespace A098597.P18268541564201856535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A243036 (2 * (n + 1)) : ℚ)

end

end A098597.P18268541564201856535

namespace A098597

/-- `A000108(n)/A243036(2*(n+1))` -/
def P18268541564201856535.Spec : Prop :=
  ∀ n, P18268541564201856535.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P9219888298436056373

`2*A126120(2*n)/A001316(n+1)`
-/

namespace A098597.P9219888298436056373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A126120 (2 * n) : ℚ) / (A001316 (n + 1) : ℚ))

end

end A098597.P9219888298436056373

namespace A098597

/-- `2*A126120(2*n)/A001316(n+1)` -/
def P9219888298436056373.Spec : Prop :=
  ∀ n, P9219888298436056373.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P7325644732741295113

`2*A126324(2*n)/A001316(n+1)`
-/

namespace A098597.P7325644732741295113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A126324 (2 * n) : ℚ) / (A001316 (n + 1) : ℚ))

end

end A098597.P7325644732741295113

namespace A098597

/-- `2*A126324(2*n)/A001316(n+1)` -/
def P7325644732741295113.Spec : Prop :=
  ∀ n, P7325644732741295113.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P8057324839760754094

`2*A089408(2*n+1)/A001316(n+1)`
-/

namespace A098597.P8057324839760754094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A089408 (2 * n + 1) : ℚ) / (A001316 (n + 1) : ℚ))

end

end A098597.P8057324839760754094

namespace A098597

/-- `2*A089408(2*n+1)/A001316(n+1)` -/
def P8057324839760754094.Spec : Prop :=
  ∀ n, P8057324839760754094.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P17444508208579926412

`2*A097331(2*n+1)/A001316(n+1)`
-/

namespace A098597.P17444508208579926412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A097331 (2 * n + 1) : ℚ) / (A001316 (n + 1) : ℚ))

end

end A098597.P17444508208579926412

namespace A098597

/-- `2*A097331(2*n+1)/A001316(n+1)` -/
def P17444508208579926412.Spec : Prop :=
  ∀ n, P17444508208579926412.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P15862768339969183838

`A000108(n)/A011782(A000120(n+1))`
-/

namespace A098597.P15862768339969183838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A011782 (A000120 (n + 1)).toNat : ℚ)

end

end A098597.P15862768339969183838

namespace A098597

/-- `A000108(n)/A011782(A000120(n+1))` -/
def P15862768339969183838.Spec : Prop :=
  ∀ n, P15862768339969183838.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P17045795421899296738

`A000108(n)/A000079(val(A000108(n), 2))`
-/

namespace A098597.P17045795421899296738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A000079 (SequenceMachineLib.valuation (A000108 n).toNat 2) : ℚ)

end

end A098597.P17045795421899296738

namespace A098597

/-- `A000108(n)/A000079(val(A000108(n), 2))` -/
def P17045795421899296738.Spec : Prop :=
  ∀ n, P17045795421899296738.a n = (A098597 n : ℚ)

end A098597

/-! ## A098597.P9844658036884554728

`A000108(n)/gcd(A000079(n), A000108(n))`
-/

namespace A098597.P9844658036884554728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (Int.gcd (A000079 n) (A000108 n) : ℚ)

end

end A098597.P9844658036884554728

namespace A098597

/-- `A000108(n)/gcd(A000079(n), A000108(n))` -/
def P9844658036884554728.Spec : Prop :=
  ∀ n, P9844658036884554728.a n = (A098597 n : ℚ)

end A098597

/-!
# A098599: Riordan array ((1+2*x)/(1+x), (1+x)).

The programs for A098599, the canonical program `A098599.P12823978919337779786` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098599 has offset 0).

The definition of A098599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098599.P17445682616324518756

`(and(2, comp[∑[n]]+n)-1)*A100218(n)`
-/

namespace A098599.P17445682616324518756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A100218 n

end

end A098599.P17445682616324518756

namespace A098599

/-- `(and(2, comp[∑[n]]+n)-1)*A100218(n)` -/
def P17445682616324518756.Spec : Prop :=
  ∀ n, P17445682616324518756.a n = A098599 n

end A098599

/-! ## A098599.P12823978919337779786

`A097807(n)*A100218(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A098599

/-- `A097807(n)*A100218(n)` -/
def P12823978919337779786.Spec : Prop :=
  ∀ n, P12823978919337779786.a n = A098599 n

theorem P12823978919337779786.correct : P12823978919337779786.Spec := by
  intro n
  simp only [A098599]

end A098599

/-! ## A098599.P13072434542022058808

`A009531(A099375(n))*A100218(n)`
-/

namespace A098599.P13072434542022058808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A100218 n

end

end A098599.P13072434542022058808

namespace A098599

/-- `A009531(A099375(n))*A100218(n)` -/
def P13072434542022058808.Spec : Prop :=
  ∀ n, P13072434542022058808.a n = A098599 n

end A098599

/-! ## A098599.P10604059840444953824

`A062157(A082233(n))*A100218(n)`
-/

namespace A098599.P10604059840444953824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A082233 n).toNat * A100218 n

end

end A098599.P10604059840444953824

namespace A098599

/-- `A062157(A082233(n))*A100218(n)` -/
def P10604059840444953824.Spec : Prop :=
  ∀ n, P10604059840444953824.a n = A098599 n

end A098599

/-! ## A098599.P295551013329209548

`A062157(A004736(n+1))*A100218(n)`
-/

namespace A098599.P295551013329209548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A100218 n

end

end A098599.P295551013329209548

namespace A098599

/-- `A062157(A004736(n+1))*A100218(n)` -/
def P295551013329209548.Spec : Prop :=
  ∀ n, P295551013329209548.a n = A098599 n

end A098599

/-! ## A098599.P16179183409289461095

`A033999(A108872(n+1))*A100218(n)`
-/

namespace A098599.P16179183409289461095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A108872 (n + 1)).toNat * A100218 n

end

end A098599.P16179183409289461095

namespace A098599

/-- `A033999(A108872(n+1))*A100218(n)` -/
def P16179183409289461095.Spec : Prop :=
  ∀ n, P16179183409289461095.a n = A098599 n

end A098599

/-! ## A098599.P3557940321484647200

`A033999(A054238(n))*A100218(n)`
-/

namespace A098599.P3557940321484647200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054238 n).toNat * A100218 n

end

end A098599.P3557940321484647200

namespace A098599

/-- `A033999(A054238(n))*A100218(n)` -/
def P3557940321484647200.Spec : Prop :=
  ∀ n, P3557940321484647200.a n = A098599 n

end A098599

/-! ## A098599.P1088842938692012713

`A100218(n)*A106400(A163237(n))`
-/

namespace A098599.P1088842938692012713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n * A106400 (A163237 n).toNat

end

end A098599.P1088842938692012713

namespace A098599

/-- `A100218(n)*A106400(A163237(n))` -/
def P1088842938692012713.Spec : Prop :=
  ∀ n, P1088842938692012713.a n = A098599 n

end A098599

/-! ## A098599.P11701569857937958683

`A100218(n)*A309873(A130321(n))`
-/

namespace A098599.P11701569857937958683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n * A309873 (A130321 n).toNat

end

end A098599.P11701569857937958683

namespace A098599

/-- `A100218(n)*A309873(A130321(n))` -/
def P11701569857937958683.Spec : Prop :=
  ∀ n, P11701569857937958683.a n = A098599 n

end A098599

