import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B002.C000
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A012801: exp(sec(x)*arctan(x))=1+x+1/2!*x^2+2/3!*x^3+5/4!*x^4+40/5!*x^5...

The programs for A012801, there is no canonical definition to state claims against.
-/

/-! ## A012801.P13107082511935116571

`A165477(A006247(n+1)²)`
-/

namespace A012801.P13107082511935116571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (A006247 (n + 1) ^ 2).toNat

end

end A012801.P13107082511935116571

/-! ## A012801.P12344901124921970061

`A065648(3^n*A111633(2*n+1))`
-/

namespace A012801.P12344901124921970061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 ((3 ^ n : ℤ) * A111633 (2 * n + 1)).toNat

end

end A012801.P12344901124921970061

/-!
# A012802: sin(sec(x)*arctan(x))=x+20/5!*x^5-784/7!*x^7+26256/9!*x^9...

The programs for A012802, there is no canonical definition to state claims against.
-/

/-! ## A012802.P13236235350750301103

`(-1)^n*A012882(2*n+1)`
-/

namespace A012802.P13236235350750301103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012882 (2 * n + 1)

end

end A012802.P13236235350750301103

/-! ## A012802.P1431815022999723886

`A012882(2*n+1)*A033999(n)`
-/

namespace A012802.P1431815022999723886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012882 (2 * n + 1) * A033999 n

end

end A012802.P1431815022999723886

/-! ## A012802.P14633648343601415217

`A012882(2*n+1)*A165326(n+1)`
-/

namespace A012802.P14633648343601415217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012882 (2 * n + 1) * A165326 (n + 1)

end

end A012802.P14633648343601415217

/-!
# A012805: arctan(sec(x)*arctan(x))=x-1/3!*x^3+33/5!*x^5-1377/7!*x^7+99649/9!*x^9...

The programs for A012805, there is no canonical definition to state claims against.
-/

/-! ## A012805.P17922920792464675857

`A013192(2*n+1)*A033999(n)`
-/

namespace A012805.P17922920792464675857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013192 (2 * n + 1) * A033999 n

end

end A012805.P17922920792464675857

/-! ## A012805.P16718799591530730670

`A013192(2*n+1)*A087960(n²)`
-/

namespace A012805.P16718799591530730670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013192 (2 * n + 1) * A087960 (n ^ 2)

end

end A012805.P16718799591530730670

/-! ## A012805.P13396601508738279048

`(A004442(n)-n)*A013192(2*n+1)`
-/

namespace A012805.P13396601508738279048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A013192 (2 * n + 1)

end

end A012805.P13396601508738279048

/-! ## A012805.P17257345508918136816

`A013192(A005408(n))/A033999(n)`
-/

namespace A012805.P17257345508918136816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013192 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012805.P17257345508918136816

/-!
# A012806: cos(sec(x)*arctan(x))=1-1/2!*x^2-3/4!*x^4-165/6!*x^6+1337/8!*x^8...

The programs for A012806, there is no canonical definition to state claims against.
-/

/-! ## A012806.P14945696296701780696

`(-1)^n*A012882(2*n)`
-/

namespace A012806.P14945696296701780696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012882 (2 * n)

end

end A012806.P14945696296701780696

/-! ## A012806.P5907313619503466262

`A012882(2*n)*A033999(n)`
-/

namespace A012806.P5907313619503466262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012882 (2 * n) * A033999 n

end

end A012806.P5907313619503466262

/-! ## A012806.P4461125202368070549

`A012882(2*n)*A165326(n+1)`
-/

namespace A012806.P4461125202368070549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012882 (2 * n) * A165326 (n + 1)

end

end A012806.P4461125202368070549

/-!
# A012807: sinh(sec(x)*arctan(x))=x+2/3!*x^3+40/5!*x^5+576/7!*x^7+46208/9!*x^9...

The programs for A012807, there is no canonical definition to state claims against.
-/

/-! ## A012807.P16331775607299585887

`A012801(Δ[n²])`
-/

namespace A012807.P16331775607299585887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012801 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012807.P16331775607299585887

/-! ## A012807.P86555127378627981

`or(n, A012801(A005408(n)))-n`
-/

namespace A012807.P86555127378627981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A012801 (A005408 n).toNat) - (n : ℤ)

end

end A012807.P86555127378627981

/-! ## A012807.P76283428851284314

`A012801(A005408(n))^A178334(n)`
-/

namespace A012807.P76283428851284314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012801 (A005408 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A012807.P76283428851284314

/-! ## A012807.P14283613900137553172

`or(A000007(n), A012801(A005408(n)))`
-/

namespace A012807.P14283613900137553172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A012801 (A005408 n).toNat)

end

end A012807.P14283613900137553172

/-! ## A012807.P11016191135135848578

`A012801(A005408(n))+A000007(n+1)`
-/

namespace A012807.P11016191135135848578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012801 (A005408 n).toNat + A000007 (n + 1)

end

end A012807.P11016191135135848578

/-!
# A012810: arctanh(sec(x)*arctan(x))=x+3/3!*x^3+73/5!*x^5+2779/7!*x^7...

The programs for A012810, there is no canonical definition to state claims against.
-/

/-! ## A012810.P13258705932907747155

`A013012(Δ[n²])`
-/

namespace A012810.P13258705932907747155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013012 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012810.P13258705932907747155

/-! ## A012810.P10710717893592485721

`record[A013012(n+1)]`
-/

namespace A012810.P10710717893592485721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012810.P10710717893592485721

/-! ## A012810.P17594448638828125621

`record[or(1, A013012(n))]`
-/

namespace A012810.P17594448638828125621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013012 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012810.P17594448638828125621

/-! ## A012810.P17415806375769131301

`abs(A013012(2*n+1))`
-/

namespace A012810.P17415806375769131301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013012 (2 * n + 1)|

end

end A012810.P17415806375769131301

/-! ## A012810.P16206219281232404116

`abs(record[A013012(A028310(n))])`
-/

namespace A012810.P16206219281232404116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013012 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012810.P16206219281232404116

/-!
# A012811: cosh(sec(x)*arctan(x))=1+1/2!*x^2+5/4!*x^4+205/6!*x^6+2473/8!*x^8...

The programs for A012811, there is no canonical definition to state claims against.
-/

/-! ## A012811.P8313484166114109316

`A012801(2*n)`
-/

namespace A012811.P8313484166114109316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012801 (2 * n)

end

end A012811.P8313484166114109316

/-! ## A012811.P14797817138290345228

`or(1, A012801(A004277(n)))`
-/

namespace A012811.P14797817138290345228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012801 (A004277 n).toNat)

end

end A012811.P14797817138290345228

/-! ## A012811.P17192392143129069178

`or(1, A012801(A005843(n)))`
-/

namespace A012811.P17192392143129069178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012801 (A005843 n).toNat)

end

end A012811.P17192392143129069178

/-! ## A012811.P11575277708960783197

`A012801(A005843(n))^A178334(n)`
-/

namespace A012811.P11575277708960783197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012801 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A012811.P11575277708960783197

/-! ## A012811.P8154067397014486306

`A034495(n+1)+A012801(A005843(n))`
-/

namespace A012811.P8154067397014486306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034495 (n + 1) + A012801 (A005843 n).toNat

end

end A012811.P8154067397014486306

/-!
# A012812: sec(sec(x)*arctan(x))=1+1/2!*x^2+9/4!*x^4+345/6!*x^6+14833/8!*x^8...

The programs for A012812, there is no canonical definition to state claims against.
-/

/-! ## A012812.P10125322791149470403

`A030129(A167499(n))+A000166(2*n)`
-/

namespace A012812.P10125322791149470403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030129 (A167499 n).toNat + A000166 (2 * n)

end

end A012812.P10125322791149470403

/-!
# A012814: Take every 5th term of Padovan sequence A000931, beginning with the third term.

The programs for A012814, the canonical program `A012814.P11094650536221006162` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012814 has offset 0).

The definition of A012814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A012814.P11094650536221006162

`A000931(5*n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A012814

/-- `A000931(5*n+2)` -/
def P11094650536221006162.Spec : Prop :=
  ∀ n, P11094650536221006162.a n = A012814 n

theorem P11094650536221006162.correct : P11094650536221006162.Spec := by
  intro n
  simp only [A012814]

end A012814

/-! ## A012814.P9967482421314674110

`∑[A012781(n)]`
-/

namespace A012814.P9967482421314674110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012814.P9967482421314674110

namespace A012814

/-- `∑[A012781(n)]` -/
def P9967482421314674110.Spec : Prop :=
  ∀ n, P9967482421314674110.a n = A012814 n

end A012814

/-! ## A012814.P17945833811134637409

`Δ[A012855(n+2)]`
-/

namespace A012814.P17945833811134637409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012814.P17945833811134637409

namespace A012814

/-- `Δ[A012855(n+2)]` -/
def P17945833811134637409.Spec : Prop :=
  ∀ n, P17945833811134637409.a n = A012814 n

end A012814

/-! ## A012814.P2572410687262229711

`Δ[A078027(5*n)]`
-/

namespace A012814.P2572410687262229711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012814.P2572410687262229711

namespace A012814

/-- `Δ[A078027(5*n)]` -/
def P2572410687262229711.Spec : Prop :=
  ∀ n, P2572410687262229711.a n = A012814 n

end A012814

/-! ## A012814.P17005236806346963694

`A078027(5*n+4)`
-/

namespace A012814.P17005236806346963694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (5 * n + 4)

end

end A012814.P17005236806346963694

namespace A012814

/-- `A078027(5*n+4)` -/
def P17005236806346963694.Spec : Prop :=
  ∀ n, P17005236806346963694.a n = A012814 n

end A012814

/-! ## A012814.P16735197493087127002

`A133034(5*n+6)`
-/

namespace A012814.P16735197493087127002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (5 * n + 6)

end

end A012814.P16735197493087127002

namespace A012814

/-- `A133034(5*n+6)` -/
def P16735197493087127002.Spec : Prop :=
  ∀ n, P16735197493087127002.a n = A012814 n

end A012814

/-! ## A012814.P7245932674173290715

`∑[∑[A012864(n)]-1]`
-/

namespace A012814.P7245932674173290715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012814.P7245932674173290715

namespace A012814

/-- `∑[∑[A012864(n)]-1]` -/
def P7245932674173290715.Spec : Prop :=
  ∀ n, P7245932674173290715.a n = A012814 n

end A012814

/-! ## A012814.P144527628664340955

`a(n-1)+A012880(n)+a(n-1)` with `a(0)=0`
-/

namespace A012814.P144527628664340955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A012880 n + a (n - 1))

end

end A012814.P144527628664340955

namespace A012814

/-- `a(n-1)+A012880(n)+a(n-1)` -/
def P144527628664340955.Spec : Prop :=
  ∀ n, P144527628664340955.a n = A012814 n

end A012814

/-! ## A012814.P3899925848408353438

`∑[A000931(A016861(n))]`
-/

namespace A012814.P3899925848408353438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A016861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012814.P3899925848408353438

namespace A012814

/-- `∑[A000931(A016861(n))]` -/
def P3899925848408353438.Spec : Prop :=
  ∀ n, P3899925848408353438.a n = A012814 n

end A012814

/-! ## A012814.P7961564251963217701

`A127682(A160912(n+1))`
-/

namespace A012814.P7961564251963217701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (A160912 (n + 1)).toNat

end

end A012814.P7961564251963217701

namespace A012814

/-- `A127682(A160912(n+1))` -/
def P7961564251963217701.Spec : Prop :=
  ∀ n, P7961564251963217701.a n = A012814 n

end A012814

/-! ## A012814.P17101077220889427840

`A012493(n)-A012781(n)`
-/

namespace A012814.P17101077220889427840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012493 n - A012781 n

end

end A012814.P17101077220889427840

namespace A012814

/-- `A012493(n)-A012781(n)` -/
def P17101077220889427840.Spec : Prop :=
  ∀ n, P17101077220889427840.a n = A012814 n

end A012814

/-! ## A012814.P13406233852918716333

`∑[∑[A000931(A008706(n))]]`
-/

namespace A012814.P13406233852918716333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A008706 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012814.P13406233852918716333

namespace A012814

/-- `∑[∑[A000931(A008706(n))]]` -/
def P13406233852918716333.Spec : Prop :=
  ∀ n, P13406233852918716333.a n = A012814 n

end A012814

/-! ## A012814.P8601544353799834091

`∑[A000931(Δ[A000566(n)])]`
-/

namespace A012814.P8601544353799834091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012814.P8601544353799834091

namespace A012814

/-- `∑[A000931(Δ[A000566(n)])]` -/
def P8601544353799834091.Spec : Prop :=
  ∀ n, P8601544353799834091.a n = A012814 n

end A012814

/-! ## A012814.P6527012607687431924

`A012772(n)-A012855(n+3)`
-/

namespace A012814.P6527012607687431924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012772 n - A012855 (n + 3)

end

end A012814.P6527012607687431924

namespace A012814

/-- `A012772(n)-A012855(n+3)` -/
def P6527012607687431924.Spec : Prop :=
  ∀ n, P6527012607687431924.a n = A012814 n

end A012814

/-! ## A012814.P13971979805736226978

`2*A012781(n)-A012880(n)`
-/

namespace A012814.P13971979805736226978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012781 n - A012880 n

end

end A012814.P13971979805736226978

namespace A012814

/-- `2*A012781(n)-A012880(n)` -/
def P13971979805736226978.Spec : Prop :=
  ∀ n, P13971979805736226978.a n = A012814 n

end A012814

/-! ## A012814.P14255961587794175399

`2*A012880(n)-A012855(n)`
-/

namespace A012814.P14255961587794175399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012880 n - A012855 n

end

end A012814.P14255961587794175399

namespace A012814

/-- `2*A012880(n)-A012855(n)` -/
def P14255961587794175399.Spec : Prop :=
  ∀ n, P14255961587794175399.a n = A012814 n

end A012814

/-! ## A012814.P4614124832309329492

`∑[∑[A000931(A008574(n)+n)]]`
-/

namespace A012814.P4614124832309329492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A008574 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012814.P4614124832309329492

namespace A012814

/-- `∑[∑[A000931(A008574(n)+n)]]` -/
def P4614124832309329492.Spec : Prop :=
  ∀ n, P4614124832309329492.a n = A012814 n

end A012814

/-! ## A012814.P15178662761687407149

`A012866(n+1)-A012855(n+1)`
-/

namespace A012814.P15178662761687407149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 (n + 1) - A012855 (n + 1)

end

end A012814.P15178662761687407149

namespace A012814

/-- `A012866(n+1)-A012855(n+1)` -/
def P15178662761687407149.Spec : Prop :=
  ∀ n, P15178662761687407149.a n = A012814 n

end A012814

/-! ## A012814.P16624984318160028331

`A012880(n+1)-A012866(n+1)`
-/

namespace A012814.P16624984318160028331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012880 (n + 1) - A012866 (n + 1)

end

end A012814.P16624984318160028331

namespace A012814

/-- `A012880(n+1)-A012866(n+1)` -/
def P16624984318160028331.Spec : Prop :=
  ∀ n, P16624984318160028331.a n = A012814 n

end A012814

/-!
# A012816: E.g.f. arctan(sec(x)*sinh(x)) (odd powers only).

The programs for A012816, there is no canonical definition to state claims against.
-/

/-! ## A012816.P4923125557367713409

`∏[A280560(n)]*A028296(n)`
-/

namespace A012816.P4923125557367713409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A028296 n

end

end A012816.P4923125557367713409

/-! ## A012816.P18356064415002692347

`A000364(n)*A099087(2*n)`
-/

namespace A012816.P18356064415002692347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n * A099087 (2 * n)

end

end A012816.P18356064415002692347

/-! ## A012816.P8641304081329173338

`A000364(n)*A009545(2*n+1)`
-/

namespace A012816.P8641304081329173338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000364 n * A009545 (2 * n + 1)

end

end A012816.P8641304081329173338

/-! ## A012816.P6064154570903796734

`A028296(n)*A146559(2*n+1)`
-/

namespace A012816.P6064154570903796734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028296 n * A146559 (2 * n + 1)

end

end A012816.P6064154570903796734

/-! ## A012816.P15093952693514544601

`A000111(2*n)*A009545(2*n+1)`
-/

namespace A012816.P15093952693514544601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (2 * n) * A009545 (2 * n + 1)

end

end A012816.P15093952693514544601

/-!
# A012818: arctanh(sec(x)*sinh(x))=x+6/3!*x^3+140/5!*x^5+8456/7!*x^7...

The programs for A012818, there is no canonical definition to state claims against.
-/

/-! ## A012818.P10420667104976350833

`A205182(2*n)`
-/

namespace A012818.P10420667104976350833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205182 (2 * n)

end

end A012818.P10420667104976350833

/-! ## A012818.P4800209394919987463

`A009361(Δ[n²])`
-/

namespace A012818.P4800209394919987463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012818.P4800209394919987463

/-! ## A012818.P10687911311761690960

`A013068(Δ[n²])`
-/

namespace A012818.P10687911311761690960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012818.P10687911311761690960

/-! ## A012818.P12475438266380512968

`record[A009361(n+1)]`
-/

namespace A012818.P12475438266380512968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012818.P12475438266380512968

/-! ## A012818.P5252138772519405258

`record[A013068(n+1)]`
-/

namespace A012818.P5252138772519405258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012818.P5252138772519405258

/-!
# A012821: Expansion of e.g.f. exp(sec(x)*arcsinh(x)).

The programs for A012821, there is no canonical definition to state claims against.
-/

/-! ## A012821.P12977898369296698507

`A140645(n!-floor(n/2))`
-/

namespace A012821.P12977898369296698507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140645 ((Nat.factorial n : ℤ) - ⌊(n : ℚ) / 2⌋).toNat

end

end A012821.P12977898369296698507

/-! ## A012821.P15602123070680355

`A264974(A000246(n))`
-/

namespace A012821.P15602123070680355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A000246 n).toNat

end

end A012821.P15602123070680355

/-! ## A012821.P708682434079643911

`A264974(A060523(∑[n]))`
-/

namespace A012821.P708682434079643911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A060523 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A012821.P708682434079643911

/-!
# A012822: sin(sec(x)*arcsinh(x))=x+1/3!*x^3+5/5!*x^5-499/7!*x^7-12055/9!*x^9...

The programs for A012822, there is no canonical definition to state claims against.
-/

/-! ## A012822.P11398092223734979641

`(-1)^n*A012878(2*n+1)`
-/

namespace A012822.P11398092223734979641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012878 (2 * n + 1)

end

end A012822.P11398092223734979641

/-! ## A012822.P10531769887242984807

`A012878(2*n+1)*A033999(n)`
-/

namespace A012822.P10531769887242984807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012878 (2 * n + 1) * A033999 n

end

end A012822.P10531769887242984807

/-! ## A012822.P7491750467798638407

`A012878(2*n+1)*A094267(n²)`
-/

namespace A012822.P7491750467798638407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012878 (2 * n + 1) * A094267 (n ^ 2)

end

end A012822.P7491750467798638407

/-! ## A012822.P1141575880582980414

`A012878(A005408(n))/A033999(n)`
-/

namespace A012822.P1141575880582980414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012878 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012822.P1141575880582980414

/-! ## A012822.P7805998729878679655

`A012878(A004277(n)+1)/A033999(n)`
-/

namespace A012822.P7805998729878679655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012878 (A004277 n + 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A012822.P7805998729878679655

/-!
# A012826: cos(sec(x)*arcsinh(x))=1-1/2!*x^2-7/4!*x^4-145/6!*x^6-2063/8!*x^8...

The programs for A012826, there is no canonical definition to state claims against.
-/

/-! ## A012826.P15860243757023767102

`(-1)^n*A012878(2*n)`
-/

namespace A012826.P15860243757023767102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012878 (2 * n)

end

end A012826.P15860243757023767102

/-! ## A012826.P1086832968716488225

`A012878(2*n)*A033999(n)`
-/

namespace A012826.P1086832968716488225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012878 (2 * n) * A033999 n

end

end A012826.P1086832968716488225

/-! ## A012826.P9003736071626550136

`A012878(2*n)*A094267(n²)`
-/

namespace A012826.P9003736071626550136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012878 (2 * n) * A094267 (n ^ 2)

end

end A012826.P9003736071626550136

/-! ## A012826.P585538553803415537

`A012878(A004277(n))/A033999(n)`
-/

namespace A012826.P585538553803415537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012878 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012826.P585538553803415537

/-! ## A012826.P4159666737529213127

`A012878(A004277(n))/A094267(n²)`
-/

namespace A012826.P4159666737529213127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012878 (A004277 n).toNat : ℚ) / (A094267 (n ^ 2) : ℚ)

end

end A012826.P4159666737529213127

/-!
# A012827: sinh(sec(x)*arcsinh(x))=x+3/3!*x^3+45/5!*x^5+1071/7!*x^7+56697/9!*x^9...

The programs for A012827, there is no canonical definition to state claims against.
-/

/-! ## A012827.P17567859589487079206

`A012821(Δ[n²])`
-/

namespace A012827.P17567859589487079206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012821 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012827.P17567859589487079206

/-! ## A012827.P11478424060672614861

`or(1, A012821(A005408(n)))`
-/

namespace A012827.P11478424060672614861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012821 (A005408 n).toNat)

end

end A012827.P11478424060672614861

/-! ## A012827.P14518619714053147282

`or(1, A012821(A004277(n)+1))`
-/

namespace A012827.P14518619714053147282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012821 (A004277 n + 1).toNat)

end

end A012827.P14518619714053147282

/-! ## A012827.P9330251484491240536

`or(1, A012821(A005843(n)+1))`
-/

namespace A012827.P9330251484491240536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012821 (A005843 n + 1).toNat)

end

end A012827.P9330251484491240536

/-!
# A012828: arcsinh(sec(x)*arcsinh(x))=x+1/3!*x^3+13/5!*x^5-163/7!*x^7+12409/9!*x^9...

The programs for A012828, there is no canonical definition to state claims against.
-/

/-! ## A012828.P2864504624748953035

`A337679(A057731(3*n+5))+A096719(n)`
-/

namespace A012828.P2864504624748953035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337679 (A057731 (3 * n + 5)).toNat + A096719 n

end

end A012828.P2864504624748953035

/-!
# A012830: arctanh(sec(x)*arcsinh(x))=x+4/3!*x^3+88/5!*x^5+4184/7!*x^7...

The programs for A012830, there is no canonical definition to state claims against.
-/

/-! ## A012830.P6534379542250071084

`A013115(Δ[n²])`
-/

namespace A012830.P6534379542250071084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013115 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012830.P6534379542250071084

/-! ## A012830.P12175553897446616528

`record[A013115(n+1)]`
-/

namespace A012830.P12175553897446616528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012830.P12175553897446616528

/-! ## A012830.P18439144769896012246

`abs(A013115(2*n+1))`
-/

namespace A012830.P18439144769896012246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013115 (2 * n + 1)|

end

end A012830.P18439144769896012246

/-! ## A012830.P11280533892035970578

`abs(record[A013115(A008620(n))])`
-/

namespace A012830.P11280533892035970578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013115 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012830.P11280533892035970578

/-! ## A012830.P743402554171575424

`abs(record[A013115(A029579(n))])`
-/

namespace A012830.P743402554171575424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013115 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012830.P743402554171575424

/-!
# A012831: cosh(sec(x)*arcsinh(x))=1+1/2!*x^2+9/4!*x^4+225/6!*x^6+6993/8!*x^8...

The programs for A012831, there is no canonical definition to state claims against.
-/

/-! ## A012831.P5243031275935737219

`A012821(2*n)`
-/

namespace A012831.P5243031275935737219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012821 (2 * n)

end

end A012831.P5243031275935737219

/-! ## A012831.P12776739713888819828

`or(1, A012821(A004277(n)))`
-/

namespace A012831.P12776739713888819828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012821 (A004277 n).toNat)

end

end A012831.P12776739713888819828

/-! ## A012831.P6910258958779457966

`or(1, A012821(A005843(n)))`
-/

namespace A012831.P6910258958779457966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012821 (A005843 n).toNat)

end

end A012831.P6910258958779457966

/-! ## A012831.P3651510045665674444

`A012821(A004277(n))^A178334(n)`
-/

namespace A012831.P3651510045665674444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012821 (A004277 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A012831.P3651510045665674444

/-! ## A012831.P15194505729731946599

`A012821(A005843(n))^A178334(n)`
-/

namespace A012831.P15194505729731946599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012821 (A005843 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A012831.P15194505729731946599

/-!
# A012837: arctanh(sec(x)*tanh(x))=x+3/3!*x^3+65/5!*x^5+2723/7!*x^7...

The programs for A012837, there is no canonical definition to state claims against.
-/

/-! ## A012837.P12853127077353299207

`A009400(Δ[n²])`
-/

namespace A012837.P12853127077353299207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009400 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012837.P12853127077353299207

/-! ## A012837.P8281155378744047079

`record[A009400(n+1)]`
-/

namespace A012837.P8281155378744047079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012837.P8281155378744047079

/-! ## A012837.P601993525395946847

`record[or(1, A009400(n))]`
-/

namespace A012837.P601993525395946847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A009400 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012837.P601993525395946847

/-! ## A012837.P14426039368646994929

`abs(A009400(2*n+1))`
-/

namespace A012837.P14426039368646994929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009400 (2 * n + 1)|

end

end A012837.P14426039368646994929

/-! ## A012837.P7397911456516624486

`A013152(Δ[n²])`
-/

namespace A012837.P7397911456516624486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013152 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012837.P7397911456516624486

/-!
# A012840: exp(sec(x)*arctanh(x))=1+x+1/2!*x^2+6/3!*x^3+21/4!*x^4+120/5!*x^5...

The programs for A012840, there is no canonical definition to state claims against.
-/

/-! ## A012840.P3902217814597638417

`A026741(A108122(n)*A160639(n))`
-/

namespace A012840.P3902217814597638417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A108122 n * A160639 n).toNat

end

end A012840.P3902217814597638417

/-! ## A012840.P5973403315788339052

`A026741(lcm(A108122(n), A160639(n)))`
-/

namespace A012840.P5973403315788339052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm (A108122 n) (A160639 n))

end

end A012840.P5973403315788339052

/-! ## A012840.P5783922605188805886

`lcm(A177849(A167682(n)), A280781(n))`
-/

namespace A012840.P5783922605188805886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A177849 (A167682 n).toNat) (A280781 n)

end

end A012840.P5783922605188805886

/-!
# A012841: sin(sec(x)*arctanh(x))=x+4/3!*x^3+20/5!*x^5-1024/7!*x^7-147568/9!*x^9...

The programs for A012841, there is no canonical definition to state claims against.
-/

/-! ## A012841.P317123326912469850

`(-1)^n*A012879(2*n+1)`
-/

namespace A012841.P317123326912469850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012879 (2 * n + 1)

end

end A012841.P317123326912469850

/-! ## A012841.P13692081167385844626

`A012879(Δ[n²])*A033999(n)`
-/

namespace A012841.P13692081167385844626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012879 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A012841.P13692081167385844626

/-! ## A012841.P15403190089851087929

`A012879(2*n+1)/A033999(n)`
-/

namespace A012841.P15403190089851087929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012879 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A012841.P15403190089851087929

/-! ## A012841.P758129056850818272

`A012879(2*n+1)/(A004442(n)-n)`
-/

namespace A012841.P758129056850818272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012879 (2 * n + 1) : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A012841.P758129056850818272

/-!
# A012844: arctan(sec(x)*arctanh(x))=x+3/3!*x^3-7/5!*x^5-917/7!*x^7-7183/9!*x^9...

The programs for A012844, there is no canonical definition to state claims against.
-/

/-! ## A012844.P11241027899435684783

`A013188(Δ[n²])*A033999(n)`
-/

namespace A012844.P11241027899435684783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013188 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A012844.P11241027899435684783

/-! ## A012844.P14814749177544573105

`A013188(2*n+1)/A033999(n)`
-/

namespace A012844.P14814749177544573105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013188 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A012844.P14814749177544573105

/-! ## A012844.P11938143658467609761

`A013188(2*n+1)*A033999(2*n+1)*A033999(n+1)`
-/

namespace A012844.P11938143658467609761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013188 (2 * n + 1) * A033999 (2 * n + 1) * A033999 (n + 1)

end

end A012844.P11938143658467609761

/-!
# A012845: cos(sec(x)*arctanh(x))=1-1/2!*x^2-19/4!*x^4-565/6!*x^6-24743/8!*x^8...

The programs for A012845, there is no canonical definition to state claims against.
-/

/-! ## A012845.P13717579177166341821

`(-1)^n*A012879(2*n)`
-/

namespace A012845.P13717579177166341821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A012879 (2 * n)

end

end A012845.P13717579177166341821

/-! ## A012845.P779209605176568719

`A012879(2*n)*A033999(n)`
-/

namespace A012845.P779209605176568719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012879 (2 * n) * A033999 n

end

end A012845.P779209605176568719

/-!
# A012846: sinh(sec(x)*arctanh(x))=x+6/3!*x^3+120/5!*x^5+5376/7!*x^7...

The programs for A012846, there is no canonical definition to state claims against.
-/

/-! ## A012846.P916911336734124484

`A012840(Δ[n²])`
-/

namespace A012846.P916911336734124484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012840 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012846.P916911336734124484

/-! ## A012846.P8132815130792878261

`record[A012840(abs(A009001(n)))]`
-/

namespace A012846.P8132815130792878261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012840 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012846.P8132815130792878261

/-! ## A012846.P5722993834835762619

`record[A012840(A000265(n+1))]`
-/

namespace A012846.P5722993834835762619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012840 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012846.P5722993834835762619

/-! ## A012846.P796190856928971939

`record[A012840(A092092(n+1))]`
-/

namespace A012846.P796190856928971939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012840 (A092092 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012846.P796190856928971939

/-!
# A012849: arctanh(sec(x)*arctanh(x))=x+7/3!*x^3+193/5!*x^5+13319/7!*x^7...

The programs for A012849, there is no canonical definition to state claims against.
-/

/-! ## A012849.P1303199282452288025

`A013181(Δ[n²])`
-/

namespace A012849.P1303199282452288025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013181 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012849.P1303199282452288025

/-! ## A012849.P10986108948615507455

`record[A013181(n+1)]`
-/

namespace A012849.P10986108948615507455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012849.P10986108948615507455

/-! ## A012849.P3827099458153385346

`record[or(1, A013181(n))]`
-/

namespace A012849.P3827099458153385346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013181 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012849.P3827099458153385346

/-! ## A012849.P2300711584687394463

`abs(A013181(2*n+1))`
-/

namespace A012849.P2300711584687394463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013181 (2 * n + 1)|

end

end A012849.P2300711584687394463

/-! ## A012849.P11284394218363490843

`abs(record[A013181(A000267(n))])`
-/

namespace A012849.P11284394218363490843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013181 (A000267 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A012849.P11284394218363490843

/-!
# A012850: cosh(sec(x)*arctanh(x))=1+1/2!*x^2+21/4!*x^4+765/6!*x^6+46473/8!*x^8...

The programs for A012850, there is no canonical definition to state claims against.
-/

/-! ## A012850.P158004586847035524

`A012840(2*n)`
-/

namespace A012850.P158004586847035524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012840 (2 * n)

end

end A012850.P158004586847035524

/-! ## A012850.P17040450836786337044

`or(1, A012840(A004277(n)))`
-/

namespace A012850.P17040450836786337044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012840 (A004277 n).toNat)

end

end A012850.P17040450836786337044

/-! ## A012850.P14081798675065154534

`or(1, A012840(A005843(n)))`
-/

namespace A012850.P14081798675065154534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A012840 (A005843 n).toNat)

end

end A012850.P14081798675065154534

/-! ## A012850.P1109628126551161758

`A012840(A004277(n))/A007318(C(n, 2))`
-/

namespace A012850.P1109628126551161758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012840 (A004277 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A012850.P1109628126551161758

/-! ## A012850.P6273596009896660864

`A012840(A004277(n))/A000108(C(2, n+2))`
-/

namespace A012850.P6273596009896660864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012840 (A004277 n).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A012850.P6273596009896660864

/-!
# A012853: Expansion of sec(x)^2+sech(x)^2 in powers of x^4.

The programs for A012853, there is no canonical definition to state claims against.
-/

/-! ## A012853.P921166304135426340

`A012509(Δ[n²])`
-/

namespace A012853.P921166304135426340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012509 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012853.P921166304135426340

/-! ## A012853.P17207511996080619613

`record[2*A155585(n)]`
-/

namespace A012853.P17207511996080619613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012853.P17207511996080619613

/-! ## A012853.P8952182825465761802

`A309845(4*n+1)`
-/

namespace A012853.P8952182825465761802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309845 (4 * n + 1)

end

end A012853.P8952182825465761802

/-! ## A012853.P13284688238980922905

`2*A000182(Δ[n²])`
-/

namespace A012853.P13284688238980922905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012853.P13284688238980922905

/-! ## A012853.P13221990528761271995

`2*A000111(A016813(n))`
-/

namespace A012853.P13221990528761271995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000111 (A016813 n).toNat

end

end A012853.P13221990528761271995

/-!
# A012855: a(0) = 0, a(1) = 1, a(2) = 1; thereafter a(n) = 5*a(n-1) - 4*a(n-2) + a(n-3).

The programs for A012855, the canonical program `A012855.P6186638549755812045` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012855 has offset 0).

The definition of A012855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-4*a(n-2)+a(n-3)` (program `A012855.P6186638549755812045`, by `A012855.P6186638549755812045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A012855.P6186638549755812045

`5*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A012855

/-- `5*a(n-1)-4*a(n-2)+a(n-3)` -/
def P6186638549755812045.Spec : Prop :=
  ∀ n, P6186638549755812045.a n = A012855 n

theorem P6186638549755812045.correct : P6186638549755812045.Spec := by
  intro n
  simp only [A012855]

end A012855

/-! ## A012855.P11662939594950668638

`2*A012866(n)-A012880(n)`
-/

namespace A012855.P11662939594950668638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012866 n - A012880 n

end

end A012855.P11662939594950668638

namespace A012855

/-- `2*A012866(n)-A012880(n)` -/
def P11662939594950668638.Spec : Prop :=
  ∀ n, P11662939594950668638.a n = A012855 n

end A012855

/-! ## A012855.P17596532958659363259

`2*A012880(n)-A012814(n)`
-/

namespace A012855.P17596532958659363259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012880 n - A012814 n

end

end A012855.P17596532958659363259

namespace A012855

/-- `2*A012880(n)-A012814(n)` -/
def P17596532958659363259.Spec : Prop :=
  ∀ n, P17596532958659363259.a n = A012855 n

end A012855

/-! ## A012855.P13464294710205826949

`A012781(n)+A012866(n)-A012814(n)`
-/

namespace A012855.P13464294710205826949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012781 n + (A012866 n - A012814 n)

end

end A012855.P13464294710205826949

namespace A012855

/-- `A012781(n)+A012866(n)-A012814(n)` -/
def P13464294710205826949.Spec : Prop :=
  ∀ n, P13464294710205826949.a n = A012855 n

end A012855

/-! ## A012855.P13561711889626004279

`A012880(n+1)+A012866(n)-A012864(n+1)`
-/

namespace A012855.P13561711889626004279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012880 (n + 1) + (A012866 n - A012864 (n + 1))

end

end A012855.P13561711889626004279

namespace A012855

/-- `A012880(n+1)+A012866(n)-A012864(n+1)` -/
def P13561711889626004279.Spec : Prop :=
  ∀ n, P13561711889626004279.a n = A012855 n

end A012855

/-! ## A012855.P11380376332640538422

`A012866(n+1)+A012886(n)-A012886(n+1)`
-/

namespace A012855.P11380376332640538422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 (n + 1) + (A012886 n - A012886 (n + 1))

end

end A012855.P11380376332640538422

namespace A012855

/-- `A012866(n+1)+A012886(n)-A012886(n+1)` -/
def P11380376332640538422.Spec : Prop :=
  ∀ n, P11380376332640538422.a n = A012855 n

end A012855

/-! ## A012855.P15405642169074435122

`A012814(n+2)%A007307(A016861(n))`
-/

namespace A012855.P15405642169074435122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012814 (n + 2)) (A007307 (A016861 n).toNat)

end

end A012855.P15405642169074435122

namespace A012855

/-- `A012814(n+2)%A007307(A016861(n))` -/
def P15405642169074435122.Spec : Prop :=
  ∀ n, P15405642169074435122.a n = A012855 n

end A012855

/-!
# A012857: Numerator of [x^(2n)] of the Taylor expansion log(cosec(x)*arctan(x)).

The programs for A012857, there is no canonical definition to state claims against.
-/

/-! ## A012857.P14380333985958589374

`A047642(n)%A026741(A203236(n+1))`
-/

namespace A012857.P14380333985958589374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047642 (n + 17)) (A026741 (A203236 (n + 1)).toNat)

end

end A012857.P14380333985958589374

/-!
# A012864: Take every 5th term of Padovan sequence A000931, beginning with the first term.

The programs for A012864, the canonical program `A012864.P8751931188038800669` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012864 has offset 0).

The definition of A012864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A012864.P8751931188038800669

`A000931(5*n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A012864

/-- `A000931(5*n)` -/
def P8751931188038800669.Spec : Prop :=
  ∀ n, P8751931188038800669.a n = A012864 n

theorem P8751931188038800669.correct : P8751931188038800669.Spec := by
  intro n
  simp only [A012864]

end A012864

/-! ## A012864.P14759484728448768265

`A078027(5*n+2)`
-/

namespace A012864.P14759484728448768265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (5 * n + 2)

end

end A012864.P14759484728448768265

namespace A012864

/-- `A078027(5*n+2)` -/
def P14759484728448768265.Spec : Prop :=
  ∀ n, P14759484728448768265.a n = A012864 n

end A012864

/-! ## A012864.P17599528586488027145

`A133034(5*n+4)`
-/

namespace A012864.P17599528586488027145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (5 * n + 4)

end

end A012864.P17599528586488027145

namespace A012864

/-- `A133034(5*n+4)` -/
def P17599528586488027145.Spec : Prop :=
  ∀ n, P17599528586488027145.a n = A012864 n

end A012864

/-! ## A012864.P13069881699576567268

`A012772((n-1)%(n+1))`
-/

namespace A012864.P13069881699576567268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012772 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A012864.P13069881699576567268

namespace A012864

/-- `A012772((n-1)%(n+1))` -/
def P13069881699576567268.Spec : Prop :=
  ∀ n, P13069881699576567268.a n = A012864 n

end A012864

/-! ## A012864.P17894073251889761738

`A012772(round(sqrt(n²+1))-1)`
-/

namespace A012864.P17894073251889761738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012772 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

end

end A012864.P17894073251889761738

namespace A012864

/-- `A012772(round(sqrt(n²+1))-1)` -/
def P17894073251889761738.Spec : Prop :=
  ∀ n, P17894073251889761738.a n = A012864 n

end A012864

/-! ## A012864.P16473920133565885464

`A012493(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A012864.P16473920133565885464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A012493 (n - 1) + a (n - 1)

end

end A012864.P16473920133565885464

namespace A012864

/-- `A012493(n-1)+a(n-1)` -/
def P16473920133565885464.Spec : Prop :=
  ∀ n, P16473920133565885464.a n = A012864 n

end A012864

/-! ## A012864.P2217905852568257462

`∑[A000931(A008706(n)-1)]`
-/

namespace A012864.P2217905852568257462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A008706 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012864.P2217905852568257462

namespace A012864

/-- `∑[A000931(A008706(n)-1)]` -/
def P2217905852568257462.Spec : Prop :=
  ∀ n, P2217905852568257462.a n = A012864 n

end A012864

/-! ## A012864.P15033683818285283883

`A182097(A111284(n+1)-1+n)`
-/

namespace A012864.P15033683818285283883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (A111284 (n + 1) - 1 + (n : ℤ)).toNat

end

end A012864.P15033683818285283883

namespace A012864

/-- `A182097(A111284(n+1)-1+n)` -/
def P15033683818285283883.Spec : Prop :=
  ∀ n, P15033683818285283883.a n = A012864 n

end A012864

/-! ## A012864.P4542115837374542424

`A012855(n+1)+A012880(n)-A012855(n)`
-/

namespace A012864.P4542115837374542424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 1) + (A012880 n - A012855 n)

end

end A012864.P4542115837374542424

namespace A012864

/-- `A012855(n+1)+A012880(n)-A012855(n)` -/
def P4542115837374542424.Spec : Prop :=
  ∀ n, P4542115837374542424.a n = A012864 n

end A012864

/-! ## A012864.P15458627055928911113

`Δ[A133034(5*n)]`
-/

namespace A012864.P15458627055928911113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012864.P15458627055928911113

namespace A012864

/-- `Δ[A133034(5*n)]` -/
def P15458627055928911113.Spec : Prop :=
  ∀ n, P15458627055928911113.a n = A012864 n

end A012864

/-! ## A012864.P3948765717720159914

`A012772(n)-A012493(n)`
-/

namespace A012864.P3948765717720159914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012772 n - A012493 n

end

end A012864.P3948765717720159914

namespace A012864

/-- `A012772(n)-A012493(n)` -/
def P3948765717720159914.Spec : Prop :=
  ∀ n, P3948765717720159914.a n = A012864 n

end A012864

/-! ## A012864.P6221108339704725046

`A012866(n+1)-A012880(n)`
-/

namespace A012864.P6221108339704725046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 (n + 1) - A012880 n

end

end A012864.P6221108339704725046

namespace A012864

/-- `A012866(n+1)-A012880(n)` -/
def P6221108339704725046.Spec : Prop :=
  ∀ n, P6221108339704725046.a n = A012864 n

end A012864

/-! ## A012864.P6378190844519869997

`Δ[A012866(n)-A012855(n+1)]`
-/

namespace A012864.P6378190844519869997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 n - A012855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A012864.P6378190844519869997

namespace A012864

/-- `Δ[A012866(n)-A012855(n+1)]` -/
def P6378190844519869997.Spec : Prop :=
  ∀ n, P6378190844519869997.a n = A012864 n

end A012864

/-! ## A012864.P14536971288252812118

`A012814(n)-A078027(A008587(n)+1)`
-/

namespace A012864.P14536971288252812118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012814 n - A078027 (A008587 n + 1).toNat

end

end A012864.P14536971288252812118

namespace A012864

/-- `A012814(n)-A078027(A008587(n)+1)` -/
def P14536971288252812118.Spec : Prop :=
  ∀ n, P14536971288252812118.a n = A012864 n

end A012864

/-! ## A012864.P17029655306718400425

`A012855(n)-(A012866(n)-Δ[A012866(n)])`
-/

namespace A012864.P17029655306718400425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 n - (A012866 n - (f1 (n + 1) - f1 n))

end

end A012864.P17029655306718400425

namespace A012864

/-- `A012855(n)-(A012866(n)-Δ[A012866(n)])` -/
def P17029655306718400425.Spec : Prop :=
  ∀ n, P17029655306718400425.a n = A012864 n

end A012864

/-! ## A012864.P14226904268662521713

`A012880(n+1)-(A012880(n)+A012814(n))`
-/

namespace A012864.P14226904268662521713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012880 (n + 1) - (A012880 n + A012814 n)

end

end A012864.P14226904268662521713

namespace A012864

/-- `A012880(n+1)-(A012880(n)+A012814(n))` -/
def P14226904268662521713.Spec : Prop :=
  ∀ n, P14226904268662521713.a n = A012864 n

end A012864

/-! ## A012864.P11763136500342644555

`Δ[A012493(n)-A012814(n)]-A012493(n)`
-/

namespace A012864.P11763136500342644555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012493 n - A012814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A012493 n

end

end A012864.P11763136500342644555

namespace A012864

/-- `Δ[A012493(n)-A012814(n)]-A012493(n)` -/
def P11763136500342644555.Spec : Prop :=
  ∀ n, P11763136500342644555.a n = A012864 n

end A012864

/-!
# A012865: Numerators of coefficients in Taylor series expansion of log(cotan(x)*arcsin(x)).

The programs for A012865, there is no canonical definition to state claims against.
-/

/-! ## A012865.P11833315079498218593

`A354742(A041297(n))-A294529(n)`
-/

namespace A012865.P11833315079498218593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354742 (A041297 n).toNat - A294529 n

end

end A012865.P11833315079498218593

/-!
# A012866: a(n+3) = 5*a(n+2)-4*a(n+1)+a(n).

The programs for A012866, the canonical program `A012866.P3426356787730502453` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012866 has offset 0).

The definition of A012866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A012866.P8519649948335582535

`A012886(n)-A012855(n+1)`
-/

namespace A012866.P8519649948335582535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012886 n - A012855 (n + 1)

end

end A012866.P8519649948335582535

namespace A012866

/-- `A012886(n)-A012855(n+1)` -/
def P8519649948335582535.Spec : Prop :=
  ∀ n, P8519649948335582535.a n = A012866 n

end A012866

/-! ## A012866.P15288866395997951289

`(A012880(n)+A012855(n))/2`
-/

namespace A012866.P15288866395997951289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012880 n + A012855 n : ℚ) / 2

end

end A012866.P15288866395997951289

namespace A012866

/-- `(A012880(n)+A012855(n))/2` -/
def P15288866395997951289.Spec : Prop :=
  ∀ n, P15288866395997951289.a n = (A012866 n : ℚ)

end A012866

/-! ## A012866.P3426356787730502453

`A012855(n)+Δ[A012855(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A012866

/-- `A012855(n)+Δ[A012855(n+1)]` -/
def P3426356787730502453.Spec : Prop :=
  ∀ n, P3426356787730502453.a n = A012866 n

theorem P3426356787730502453.correct : P3426356787730502453.Spec := by
  intro n
  simp only [A012866]

end A012866

/-! ## A012866.P10429767351778804207

`2*A012880(n)-A012781(n)`
-/

namespace A012866.P10429767351778804207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012880 n - A012781 n

end

end A012866.P10429767351778804207

namespace A012866

/-- `2*A012880(n)-A012781(n)` -/
def P10429767351778804207.Spec : Prop :=
  ∀ n, P10429767351778804207.a n = A012866 n

end A012866

/-! ## A012866.P17019344975687223236

`A012886(n+1)-2*A012864(n)`
-/

namespace A012866.P17019344975687223236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012886 (n + 1) - 2 * A012864 n

end

end A012866.P17019344975687223236

namespace A012866

/-- `A012886(n+1)-2*A012864(n)` -/
def P17019344975687223236.Spec : Prop :=
  ∀ n, P17019344975687223236.a n = A012866 n

end A012866

/-! ## A012866.P17322358672474254064

`A012814(n)+A012855(n)-A012781(n)`
-/

namespace A012866.P17322358672474254064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012814 n + (A012855 n - A012781 n)

end

end A012866.P17322358672474254064

namespace A012866

/-- `A012814(n)+A012855(n)-A012781(n)` -/
def P17322358672474254064.Spec : Prop :=
  ∀ n, P17322358672474254064.a n = A012866 n

end A012866

/-! ## A012866.P6075582246195681112

`A012855(n+1)+A012781(n)-A012864(n)`
-/

namespace A012866.P6075582246195681112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 1) + (A012781 n - A012864 n)

end

end A012866.P6075582246195681112

namespace A012866

/-- `A012855(n+1)+A012781(n)-A012864(n)` -/
def P6075582246195681112.Spec : Prop :=
  ∀ n, P6075582246195681112.a n = A012866 n

end A012866

/-! ## A012866.P1210393588084519466

`A012864(n+1)+A012855(n)-A012880(n+1)`
-/

namespace A012866.P1210393588084519466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012864 (n + 1) + (A012855 n - A012880 (n + 1))

end

end A012866.P1210393588084519466

namespace A012866

/-- `A012864(n+1)+A012855(n)-A012880(n+1)` -/
def P1210393588084519466.Spec : Prop :=
  ∀ n, P1210393588084519466.a n = A012866 n

end A012866

/-! ## A012866.P10024937435004251651

`A012880(n+1)+A012880(n)-A012864(n+1)`
-/

namespace A012866.P10024937435004251651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012880 (n + 1) + (A012880 n - A012864 (n + 1))

end

end A012866.P10024937435004251651

namespace A012866

/-- `A012880(n+1)+A012880(n)-A012864(n+1)` -/
def P10024937435004251651.Spec : Prop :=
  ∀ n, P10024937435004251651.a n = A012866 n

end A012866

/-!
# A012868: Numerators of coefficients in Taylor series expansion of log(cotan(x)*arcsinh(x)).

The programs for A012868, there is no canonical definition to state claims against.
-/

/-! ## A012868.P10499614808437979193

`A353390(2^n)-round(1/acot(n))`
-/

namespace A012868.P10499614808437979193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353390 (2 ^ n) - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

end

end A012868.P10499614808437979193

/-!
# A012870: Numerator of [x^(4n+2)] in the Taylor series -log(cot(x)*tanh(x)).

The programs for A012870, there is no canonical definition to state claims against.
-/

/-! ## A012870.P15001386954907932343

`2*A171078(2*n+1)`
-/

namespace A012870.P15001386954907932343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171078 (2 * n + 1)

end

end A012870.P15001386954907932343

/-! ## A012870.P11844620033046481103

`2*A068917(n+1)*A001316(n)`
-/

namespace A012870.P11844620033046481103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068917 (n + 1) * A001316 n

end

end A012870.P11844620033046481103

/-! ## A012870.P14350685491141489837

`2*A001316(n)*A036280(2*n+1)`
-/

namespace A012870.P14350685491141489837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n * A036280 (2 * n + 1)

end

end A012870.P14350685491141489837

/-! ## A012870.P2473833483648309848

`A001316(A005408(n))*A068917(n+1)`
-/

namespace A012870.P2473833483648309848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A005408 n).toNat * A068917 (n + 1)

end

end A012870.P2473833483648309848

/-! ## A012870.P9996883877719952554

`A005843(A001316(n))*A068917(n+1)`
-/

namespace A012870.P9996883877719952554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001316 n).toNat * A068917 (n + 1)

end

end A012870.P9996883877719952554

/-!
# A012872: Expansion of e.g.f.: arcsin(sech(x)*log(x+1))=x-1/2!*x^2-6/4!*x^4+43/5!*x^5-195/6!*x^6...

The programs for A012872, there is no canonical definition to state claims against.
-/

/-! ## A012872.P10339911881692202799

`or(A009572(n), A168042(A006248(n+1)))`
-/

namespace A012872.P10339911881692202799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A009572 n) (A168042 (A006248 (n + 1)).toNat)

end

end A012872.P10339911881692202799

/-!
# A012874: Expansion of e.g.f.: arcsinh(sech(x)*log(x+1))=x-1/2!*x^2-2/3!*x^3+6/4!*x^4+33/5!*x^5...

The programs for A012874, there is no canonical definition to state claims against.
-/

/-! ## A012874.P13173728328656612276

`A322391(A107845(n+1))-A356905(n)`
-/

namespace A012874.P13173728328656612276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322391 (A107845 (n + 1)).toNat - A356905 n

end

end A012874.P13173728328656612276

/-!
# A012880: a(n+3) = 5*a(n+2)-4*a(n+1)+a(n).

The programs for A012880, the canonical program `A012880.P3724373885116586387` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012880 has offset 0).

The definition of A012880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A012880.P3724373885116586387

`A012864(n)-Δ[A012855(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A012880

/-- `A012864(n)-Δ[A012855(n)]` -/
def P3724373885116586387.Spec : Prop :=
  ∀ n, P3724373885116586387.a n = A012880 n

theorem P3724373885116586387.correct : P3724373885116586387.Spec := by
  intro n
  simp only [A012880]

end A012880

/-! ## A012880.P16461828912639462557

`2*A012866(n)-A012855(n)`
-/

namespace A012880.P16461828912639462557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012866 n - A012855 n

end

end A012880.P16461828912639462557

namespace A012880

/-- `2*A012866(n)-A012855(n)` -/
def P16461828912639462557.Spec : Prop :=
  ∀ n, P16461828912639462557.a n = A012880 n

end A012880

/-! ## A012880.P5857096327932590395

`A012866(n)+Δ[A012855(n+1)]`
-/

namespace A012880.P5857096327932590395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 n + (f1 (n + 1) - f1 n)

end

end A012880.P5857096327932590395

namespace A012880

/-- `A012866(n)+Δ[A012855(n+1)]` -/
def P5857096327932590395.Spec : Prop :=
  ∀ n, P5857096327932590395.a n = A012880 n

end A012880

/-! ## A012880.P438990994809656377

`A012855(n)+A012864(n)-A012855(n+1)`
-/

namespace A012880.P438990994809656377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 n + (A012864 n - A012855 (n + 1))

end

end A012880.P438990994809656377

namespace A012880

/-- `A012855(n)+A012864(n)-A012855(n+1)` -/
def P438990994809656377.Spec : Prop :=
  ∀ n, P438990994809656377.a n = A012880 n

theorem P438990994809656377.correct : P438990994809656377.Spec := by
  intro n
  simp only [A012880, Nat.add_sub_cancel, A012880.P438990994809656377.a, A012880.P3724373885116586387.f1, A012880.P3724373885116586387.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A012880

/-! ## A012880.P5979549718672396659

`A012866(n+1)-A012864(n)`
-/

namespace A012880.P5979549718672396659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 (n + 1) - A012864 n

end

end A012880.P5979549718672396659

namespace A012880

/-- `A012866(n+1)-A012864(n)` -/
def P5979549718672396659.Spec : Prop :=
  ∀ n, P5979549718672396659.a n = A012880 n

end A012880

/-! ## A012880.P584968811953425713

`2*A012781(n)-A012814(n)`
-/

namespace A012880.P584968811953425713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A012781 n - A012814 n

end

end A012880.P584968811953425713

namespace A012880

/-- `2*A012781(n)-A012814(n)` -/
def P584968811953425713.Spec : Prop :=
  ∀ n, P584968811953425713.a n = A012880 n

end A012880

/-! ## A012880.P18221391762619337648

`(A012866(n)+A012781(n))/2`
-/

namespace A012880.P18221391762619337648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012866 n + A012781 n : ℚ) / 2

end

end A012880.P18221391762619337648

namespace A012880

/-- `(A012866(n)+A012781(n))/2` -/
def P18221391762619337648.Spec : Prop :=
  ∀ n, P18221391762619337648.a n = (A012880 n : ℚ)

end A012880

/-! ## A012880.P16923755351775970892

`(A012855(n)+A012814(n))/2`
-/

namespace A012880.P16923755351775970892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012855 n + A012814 n : ℚ) / 2

end

end A012880.P16923755351775970892

namespace A012880

/-- `(A012855(n)+A012814(n))/2` -/
def P16923755351775970892.Spec : Prop :=
  ∀ n, P16923755351775970892.a n = (A012880 n : ℚ)

end A012880

/-! ## A012880.P5428228339186423881

`3*A012781(n)-A012493(n)`
-/

namespace A012880.P5428228339186423881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A012781 n - A012493 n

end

end A012880.P5428228339186423881

namespace A012880

/-- `3*A012781(n)-A012493(n)` -/
def P5428228339186423881.Spec : Prop :=
  ∀ n, P5428228339186423881.a n = A012880 n

end A012880

/-! ## A012880.P14519385393249217209

`A012814(n)-(A012781(n)-A012866(n))`
-/

namespace A012880.P14519385393249217209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012814 n - (A012781 n - A012866 n)

end

end A012880.P14519385393249217209

namespace A012880

/-- `A012814(n)-(A012781(n)-A012866(n))` -/
def P14519385393249217209.Spec : Prop :=
  ∀ n, P14519385393249217209.a n = A012880 n

end A012880

/-!
# A012883: Numbers in which every prefix (in base 10) is 1 or a prime.

The programs for A012883, there is no canonical definition to state claims against.
-/

/-! ## A012883.P8568523723055993

`record[A014963(A117818(A067080(n+1)))]`
-/

namespace A012883.P8568523723055993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A117818 (A067080 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012883.P8568523723055993

/-! ## A012883.P4128431198098205469

`record[A117818(n+1)²/A117818(A067080(n+1))]`
-/

namespace A012883.P4128431198098205469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117818 (n + 1) ^ 2 : ℚ) / (A117818 (A067080 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012883.P4128431198098205469

/-! ## A012883.P11027709578132667059

`eq[n, A257173(A106647(n))]`
-/

namespace A012883.P11027709578132667059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257173 (A106647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A012883.P11027709578132667059

/-! ## A012883.P10231439240520582543

`∩[A065520(n+1), A377357(n+1)]`
-/

namespace A012883.P10231439240520582543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A012883.P10231439240520582543

/-! ## A012883.P44993869020349073

`eq[A106647(n), A327415(n)]`
-/

namespace A012883.P44993869020349073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A012883.P44993869020349073

/-!
# A012884: Numbers such that every prefix and suffix is 1 or a prime.

The programs for A012884, there is no canonical definition to state claims against.
-/

/-! ## A012884.P7712186956953988031

`∩[A012883(n+1), A143390(n+1)]`
-/

namespace A012884.P7712186956953988031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A012884.P7712186956953988031

/-!
# A012886: a(n+3) = 5*a(n+2)-4*a(n+1)+a(n).

The programs for A012886, the canonical program `A012886.P59936076625362143` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A012886 has offset 0).

The definition of A012886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A012886.P59936076625362143

`A012866(n)+A012855(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A012886

/-- `A012866(n)+A012855(n+1)` -/
def P59936076625362143.Spec : Prop :=
  ∀ n, P59936076625362143.a n = A012886 n

theorem P59936076625362143.correct : P59936076625362143.Spec := by
  intro n
  simp only [A012886]

end A012886

/-! ## A012886.P93688791821991999

`A012855(n+2)+A012855(n)`
-/

namespace A012886.P93688791821991999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012855 (n + 2) + A012855 n

end

end A012886.P93688791821991999

namespace A012886

/-- `A012855(n+2)+A012855(n)` -/
def P93688791821991999.Spec : Prop :=
  ∀ n, P93688791821991999.a n = A012886 n

end A012886

/-! ## A012886.P7055119344672370295

`A078027(A008587(n))+A012855(n)`
-/

namespace A012886.P7055119344672370295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A008587 n).toNat + A012855 n

end

end A012886.P7055119344672370295

namespace A012886

/-- `A078027(A008587(n))+A012855(n)` -/
def P7055119344672370295.Spec : Prop :=
  ∀ n, P7055119344672370295.a n = A012886 n

end A012886

/-! ## A012886.P15609851507472691893

`A012866(n+1)+A012866(n)-A012814(n)`
-/

namespace A012886.P15609851507472691893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012866 (n + 1) + (A012866 n - A012814 n)

end

end A012886.P15609851507472691893

namespace A012886

/-- `A012866(n+1)+A012866(n)-A012814(n)` -/
def P15609851507472691893.Spec : Prop :=
  ∀ n, P15609851507472691893.a n = A012886 n

end A012886

/-! ## A012886.P14044890585525271565

`A078027(A008587(n))+2*A012880(n)-A012814(n)`
-/

namespace A012886.P14044890585525271565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (A008587 n).toNat + (2 * A012880 n - A012814 n)

end

end A012886.P14044890585525271565

namespace A012886

/-- `A078027(A008587(n))+2*A012880(n)-A012814(n)` -/
def P14044890585525271565.Spec : Prop :=
  ∀ n, P14044890585525271565.a n = A012886 n

end A012886

/-!
# A012887: exp(sin(x)+log(x+1))=1+2*x+3/2!*x^2+3/3!*x^3-3/4!*x^4-23/5!*x^5...

The programs for A012887, there is no canonical definition to state claims against.
-/

/-! ## A012887.P14833288631435021852

`A009206(n)+A002017(n)`
-/

namespace A012887.P14833288631435021852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009206 n + A002017 n

end

end A012887.P14833288631435021852

/-! ## A012887.P16430950833231096827

`A012896(n)+A012892(n)`
-/

namespace A012887.P16430950833231096827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012896 n + A012892 n

end

end A012887.P16430950833231096827

/-! ## A012887.P16076456312645344198

`A002017(n)+n*A002017(abs(1-n))`
-/

namespace A012887.P16076456312645344198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002017 n + (n : ℤ) * A002017 |1 - (n : ℤ)|.toNat

end

end A012887.P16076456312645344198

/-! ## A012887.P10183358578601912488

`A009206(n)+A009206(n+1)/(n+1)`
-/

namespace A012887.P10183358578601912488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009206 n : ℚ) + (A009206 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A012887.P10183358578601912488

/-!
# A012890: Expansion of e.g.f. arctan(sin(x) + log(x+1)).

The programs for A012890, there is no canonical definition to state claims against.
-/

/-! ## A012890.P14933929365097004368

`A013073(n)-A004198(A176043(n))`
-/

namespace A012890.P14933929365097004368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013073 n - A004198 (A176043 n).toNat

end

end A012890.P14933929365097004368

/-!
# A012892: E.g.f.: sinh(sin(x)+log(x+1)).

The programs for A012892, there is no canonical definition to state claims against.
-/

/-! ## A012892.P11149861152732259991

`A002017(n)+A009206(n)-A012896(n)`
-/

namespace A012892.P11149861152732259991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002017 n + (A009206 n - A012896 n)

end

end A012892.P11149861152732259991

/-! ## A012892.P18242067733302950749

`A002017(n)+n*A002017(abs(1-n))-A012896(n)`
-/

namespace A012892.P18242067733302950749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002017 n + (n : ℤ) * A002017 |1 - (n : ℤ)|.toNat - A012896 n

end

end A012892.P18242067733302950749

/-! ## A012892.P8664010778679638697

`A009206(n)+A009206(n+1)/(n+1)-A012896(n)`
-/

namespace A012892.P8664010778679638697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009206 n : ℚ) + (A009206 (n + 1) : ℚ) / (n + 1 : ℚ) - (A012896 n : ℚ)

end

end A012892.P8664010778679638697

/-! ## A012892.P6375906096335287107

`A012887(n)-A012896(n)`
-/

namespace A012892.P6375906096335287107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012887 n - A012896 n

end

end A012892.P6375906096335287107

/-!
# A012893: arcsinh(sin(x)+log(x+1)) = 2*x-1/2!*x^2-7/3!*x^3+18/4!*x^4+243/5!*x^5...

The programs for A012893, there is no canonical definition to state claims against.
-/

/-! ## A012893.P17821291144611566359

`A013075(n)-A004198(A176043(n))`
-/

namespace A012893.P17821291144611566359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013075 n - A004198 (A176043 n).toNat

end

end A012893.P17821291144611566359

/-!
# A012895: Expansion of e.g.f.: arctanh(sin(x)+log(x+1))=2*x-1/2!*x^2+17/3!*x^3-54/4!*x^4+933/5!*x^5...

The programs for A012895, there is no canonical definition to state claims against.
-/

/-! ## A012895.P5503498231493973818

`A013077(n)-A004198(A176043(n))`
-/

namespace A012895.P5503498231493973818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013077 n - A004198 (A176043 n).toNat

end

end A012895.P5503498231493973818

/-!
# A012896: cosh(sin(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+27/4!*x^4-150/5!*x^5...

The programs for A012896, there is no canonical definition to state claims against.
-/

/-! ## A012896.P15177731120676230132

`A002017(n)+A009206(n)-A012892(n)`
-/

namespace A012896.P15177731120676230132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002017 n + (A009206 n - A012892 n)

end

end A012896.P15177731120676230132

/-! ## A012896.P5443662189896015382

`A002017(n)+n*A002017(abs(1-n))-A012892(n)`
-/

namespace A012896.P5443662189896015382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002017 n + (n : ℤ) * A002017 |1 - (n : ℤ)|.toNat - A012892 n

end

end A012896.P5443662189896015382

/-! ## A012896.P11238696024827421979

`A009206(n)+A009206(n+1)/(n+1)-A012892(n)`
-/

namespace A012896.P11238696024827421979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009206 n : ℚ) + (A009206 (n + 1) : ℚ) / (n + 1 : ℚ) - (A012892 n : ℚ)

end

end A012896.P11238696024827421979

/-! ## A012896.P16632541662859259542

`A012887(n)-A012892(n)`
-/

namespace A012896.P16632541662859259542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012887 n - A012892 n

end

end A012896.P16632541662859259542

/-!
# A012897: sec(sin(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+91/4!*x^4-470/5!*x^5...

The programs for A012897, there is no canonical definition to state claims against.
-/

/-! ## A012897.P16532822109228008429

`A013079(A073787(n))`
-/

namespace A012897.P16532822109228008429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013079 (A073787 n).toNat

end

end A012897.P16532822109228008429

/-! ## A012897.P10261557010888502990

`A013079(A052521(n)+n)`
-/

namespace A012897.P10261557010888502990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013079 (A052521 n + (n : ℤ)).toNat

end

end A012897.P10261557010888502990

/-!
# A012898: Expansion of e.g.f.: sech(sin(x)+log(x+1))=1-4/2!*x^2+6/3!*x^3+69/4!*x^4-330/5!*x^5...

The programs for A012898, there is no canonical definition to state claims against.
-/

/-! ## A012898.P1470737185432410562

`A013080(n*A146800(n+1))`
-/

namespace A012898.P1470737185432410562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013080 ((n : ℤ) * A146800 (n + 1)).toNat

end

end A012898.P1470737185432410562

/-! ## A012898.P14669299845155702659

`A125005(A100845(n))+A013080(n)`
-/

namespace A012898.P14669299845155702659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A100845 n).toNat + A013080 n

end

end A012898.P14669299845155702659

/-!
# A012899: E.g.f.: exp(arcsin(x)+log(x+1)).

The programs for A012899, there is no canonical definition to state claims against.
-/

/-! ## A012899.P9595732374132201130

`A012908(n)+A012904(n)`
-/

namespace A012899.P9595732374132201130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012908 n + A012904 n

end

end A012899.P9595732374132201130

/-! ## A012899.P10197492493046230186

`A184305(A266821(n))`
-/

namespace A012899.P10197492493046230186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184305 (A266821 n).toNat

end

end A012899.P10197492493046230186

/-! ## A012899.P2707225753742125045

`∑[A325763(A000625(n))]`
-/

namespace A012899.P2707225753742125045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A000625 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A012899.P2707225753742125045

