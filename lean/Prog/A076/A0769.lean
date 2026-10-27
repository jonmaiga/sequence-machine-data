import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A076900: Expansion of e.g.f.: 1/Product_{m>0} (1-x^m/(m-1)!).

The programs for A076900, there is no canonical definition to state claims against.
-/

/-! ## A076900.P16574978740702508426

`A008616(A072221(n)+5)`
-/

namespace A076900.P16574978740702508426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A072221 n + 5).toNat

end

end A076900.P16574978740702508426

/-! ## A076900.P4610844310378078513

`A001399(n)*A316494(A003239(n))`
-/

namespace A076900.P4610844310378078513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n * A316494 (A003239 n).toNat

end

end A076900.P4610844310378078513

/-!
# A076901: E.g.f.: 1/Product_{m>0} (1+(-x)^m/m!).

The programs for A076901, there is no canonical definition to state claims against.
-/

/-! ## A076901.P10713916306843043168

`abs(A292308(n))`
-/

namespace A076901.P10713916306843043168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292308 n|

end

end A076901.P10713916306843043168

/-! ## A076901.P14444141557259090943

`A033999(n)*A292308(n)`
-/

namespace A076901.P14444141557259090943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A292308 n

end

end A076901.P14444141557259090943

/-! ## A076901.P409135621572382210

`gcd(A271439(∑[n]), A292308(n))`
-/

namespace A076901.P409135621572382210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A271439 (∑ j ∈ Finset.range (n + 1), f1 j)) (A292308 n)

end

end A076901.P409135621572382210

/-! ## A076901.P13570614694356037831

`lcm(A007318(∑[n]), A292308(n))`
-/

namespace A076901.P13570614694356037831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A292308 n)

end

end A076901.P13570614694356037831

/-! ## A076901.P642326154157803028

`A292308(n)/A128834(3*n+1)`
-/

namespace A076901.P642326154157803028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292308 n : ℚ) / (A128834 (3 * n + 1) : ℚ)

end

end A076901.P642326154157803028

/-!
# A076902: a(1)=1, a(n) = floor(n/2) - a(floor(n/2)).

The programs for A076902, the canonical program `A076902.P2186591191752522924` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076902 has offset 1).

The definition of A076902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/2)-a(floor((n+1)/2)-1)` (program `A076902.P2186591191752522924`, by `A076902.P2186591191752522924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076902.P2186591191752522924

`floor((n+1)/2)-a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076902

/-- `floor((n+1)/2)-a(floor((n+1)/2)-1)` -/
def P2186591191752522924.Spec : Prop :=
  ∀ n, P2186591191752522924.a n = A076902 (n + 1)

theorem P2186591191752522924.correct : P2186591191752522924.Spec := by
  intro n
  simp only [A076902, Nat.add_sub_cancel]

end A076902

/-! ## A076902.P15437423862840298152

`A050292(n+1)-A068639(n+1)+(-1)^floor(log2(n+1))`
-/

namespace A076902.P15437423862840298152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (n + 1) - A068639 (n + 1) + (-1) ^ Nat.log 2 (n + 1)

end

end A076902.P15437423862840298152

namespace A076902

/-- `A050292(n+1)-A068639(n+1)+(-1)^floor(log2(n+1))` -/
def P15437423862840298152.Spec : Prop :=
  ∀ n, P15437423862840298152.a n = A076902 (n + 1)

end A076902

/-! ## A076902.P5341016372027467962

`A068639(n+1)-A065359(n+1)+(-1)^floor(log2(n+1))`
-/

namespace A076902.P5341016372027467962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 (n + 1) - A065359 (n + 1) + (-1) ^ Nat.log 2 (n + 1)

end

end A076902.P5341016372027467962

namespace A076902

/-- `A068639(n+1)-A065359(n+1)+(-1)^floor(log2(n+1))` -/
def P5341016372027467962.Spec : Prop :=
  ∀ n, P5341016372027467962.a n = A076902 (n + 1)

end A076902

/-! ## A076902.P6188731022566785361

`ceil(n/2-a(floor((n-1)/2)))` with `a(0)=1`
-/

namespace A076902.P6188731022566785361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℚ) / 2 - (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat : ℚ)⌉

end

end A076902.P6188731022566785361

namespace A076902

/-- `ceil(n/2-a(floor((n-1)/2)))` -/
def P6188731022566785361.Spec : Prop :=
  ∀ n, P6188731022566785361.a n = A076902 (n + 1)

end A076902

/-! ## A076902.P2703134490031808642

`∑[-Δ[n-a(floor(n/2))]]+n` with `a(0)=1`
-/

namespace A076902.P2703134490031808642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A076902.P2703134490031808642

namespace A076902

/-- `∑[-Δ[n-a(floor(n/2))]]+n` -/
def P2703134490031808642.Spec : Prop :=
  ∀ n, P2703134490031808642.a n = A076902 (n + 1)

end A076902

/-! ## A076902.P10180260495238133562

`∑[n%2]-floor(a(∑[n%2]-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A076902.P10180260495238133562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A076902.P10180260495238133562

namespace A076902

/-- `∑[n%2]-floor(a(∑[n%2]-1))` -/
def P10180260495238133562.Spec : Prop :=
  ∀ n, P10180260495238133562.a n = A076902 (n + 1)

end A076902

/-! ## A076902.P4885269639710172742

`round(n/2-a(floor((n-1)/2)))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A076902.P4885269639710172742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2 - (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat : ℚ))

end

end A076902.P4885269639710172742

namespace A076902

/-- `round(n/2-a(floor((n-1)/2)))` -/
def P4885269639710172742.Spec : Prop :=
  ∀ n, P4885269639710172742.a n = A076902 (n + 1)

end A076902

/-! ## A076902.P11904021113631109164

`n-a(floor(abs(1-n)/2))-floor(n/2)` with `a(0)=1`
-/

namespace A076902.P11904021113631109164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - a ⌊(|1 - (n : ℤ)| : ℚ) / 2⌋.toNat - ⌊(n : ℚ) / 2⌋

end

end A076902.P11904021113631109164

namespace A076902

/-- `n-a(floor(abs(1-n)/2))-floor(n/2)` -/
def P11904021113631109164.Spec : Prop :=
  ∀ n, P11904021113631109164.a n = A076902 (n + 1)

end A076902

/-! ## A076902.P15527913989448380306

`abs(a(A004526(n-1))-ceil(n/2))` with `a(0)=1`
-/

namespace A076902.P15527913989448380306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (A004526 (n - 1)).toNat - ⌈(n : ℚ) / 2⌉|

end

end A076902.P15527913989448380306

namespace A076902

/-- `abs(a(A004526(n-1))-ceil(n/2))` -/
def P15527913989448380306.Spec : Prop :=
  ∀ n, P15527913989448380306.a n = A076902 (n + 1)

end A076902

/-! ## A076902.P5852762071386036159

`floor(A110654(n)-a(floor((n-1)/2)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A076902.P5852762071386036159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110654 n - a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A076902.P5852762071386036159

namespace A076902

/-- `floor(A110654(n)-a(floor((n-1)/2)))` -/
def P5852762071386036159.Spec : Prop :=
  ∀ n, P5852762071386036159.a n = A076902 (n + 1)

end A076902

/-! ## A076902.P15323426103404422601

`1-(a(A004524(n))-floor((n-1)/2))` with `a(0)=1`
-/

namespace A076902.P15323426103404422601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (A004524 n).toNat - ⌊((n : ℤ) - 1 : ℚ) / 2⌋)

end

end A076902.P15323426103404422601

namespace A076902

/-- `1-(a(A004524(n))-floor((n-1)/2))` -/
def P15323426103404422601.Spec : Prop :=
  ∀ n, P15323426103404422601.a n = A076902 (n + 1)

end A076902

/-!
# A076903: Numerator of coefficients of power series for exp(exp(x)-1).

The programs for A076903, there is no canonical definition to state claims against.
-/

/-! ## A076903.P776637179727919218

`A000110(n)/gcd(A000110(n), n!)`
-/

namespace A076903.P776637179727919218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n : ℚ) / (Int.gcd (A000110 n) (Nat.factorial n : ℤ) : ℚ)

end

end A076903.P776637179727919218

/-! ## A076903.P11411311489189492455

`A000110(n)/A000142(n)*A076904(n)`
-/

namespace A076903.P11411311489189492455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n : ℚ) / (A000142 n : ℚ) * (A076904 n : ℚ)

end

end A076903.P11411311489189492455

/-! ## A076903.P17040997223383140675

`lcm(n!, A108087(∑[n]))/n!`
-/

namespace A076903.P17040997223383140675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (Nat.factorial n : ℤ) (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / (Nat.factorial n : ℚ)

end

end A076903.P17040997223383140675

/-! ## A076903.P11601113395009849222

`lcm(A000142(n), A292935(n))/A000142(n)`
-/

namespace A076903.P11601113395009849222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000142 n) (A292935 n) : ℚ) / (A000142 n : ℚ)

end

end A076903.P11601113395009849222

/-! ## A076903.P12845413057776229540

`lcm(A000110(n), A002868(n))/A002868(n)`
-/

namespace A076903.P12845413057776229540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000110 n) (A002868 n) : ℚ) / (A002868 n : ℚ)

end

end A076903.P12845413057776229540

/-!
# A076904: Denominator of coefficients of power series for exp(exp(x)-1).

The programs for A076904, there is no canonical definition to state claims against.
-/

/-! ## A076904.P12474803522902944342

`A000142(n)/gcd(A000110(n), n!)`
-/

namespace A076904.P12474803522902944342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000110 n) (Nat.factorial n : ℤ) : ℚ)

end

end A076904.P12474803522902944342

/-! ## A076904.P2445437928747892081

`A000142(n)/A000110(n)*A076903(n)`
-/

namespace A076904.P2445437928747892081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000110 n : ℚ) * (A076903 n : ℚ)

end

end A076904.P2445437928747892081

/-! ## A076904.P15703244817509928874

`A000142(n)/gcd(A000142(n), A048742(n))`
-/

namespace A076904.P15703244817509928874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A048742 n) : ℚ)

end

end A076904.P15703244817509928874

/-! ## A076904.P17865909258946950972

`lcm(A000110(n), A133942(n))/A000110(n)`
-/

namespace A076904.P17865909258946950972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000110 n) (A133942 n) : ℚ) / (A000110 n : ℚ)

end

end A076904.P17865909258946950972

/-! ## A076904.P3553455850645770199

`lcm(A001247(n), A137341(n))/A001247(n)`
-/

namespace A076904.P3553455850645770199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001247 n) (A137341 n) : ℚ) / (A001247 n : ℚ)

end

end A076904.P3553455850645770199

/-!
# A076905: a(1)=1, a(n)=n-a(n-1)+a(a(n-1))-a(a(a(n-1))).

The programs for A076905, the canonical program `A076905.P16394817206420830270` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076905 has offset 1).

The definition of A076905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(n-1)+a(a(n-1)-1)-a(a(a(n-1)-1)-1)` (program `A076905.P16394817206420830270`, by `A076905.P16394817206420830270.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076905.P16394817206420830270

`n+1-a(n-1)+a(a(n-1)-1)-a(a(a(n-1)-1)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076905

/-- `n+1-a(n-1)+a(a(n-1)-1)-a(a(a(n-1)-1)-1)` -/
def P16394817206420830270.Spec : Prop :=
  ∀ n, P16394817206420830270.a n = A076905 (n + 1)

theorem P16394817206420830270.correct : P16394817206420830270.Spec := by
  intro n
  simp only [A076905, Nat.add_sub_cancel]

end A076905

/-! ## A076905.P4465810329394814233

`∑[abs(1-A287072(n+1))]`
-/

namespace A076905.P4465810329394814233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A287072 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076905.P4465810329394814233

namespace A076905

/-- `∑[abs(1-A287072(n+1))]` -/
def P4465810329394814233.Spec : Prop :=
  ∀ n, P4465810329394814233.a n = A076905 (n + 1)

end A076905

/-! ## A076905.P5546296624742696609

`a(A287072(a(n-1)))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A076905.P5546296624742696609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A287072 (a (n - 1))).toNat + a (n - 2)

end

end A076905.P5546296624742696609

namespace A076905

/-- `a(A287072(a(n-1)))+a(n-2)` -/
def P5546296624742696609.Spec : Prop :=
  ∀ n, (P5546296624742696609.a n : ℤ) = A076905 (n + 1)

end A076905

/-! ## A076905.P16657428585763046363

`∑[9%Δ[A287073(n+1)]]`
-/

namespace A076905.P16657428585763046363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287073 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076905.P16657428585763046363

namespace A076905

/-- `∑[9%Δ[A287073(n+1)]]` -/
def P16657428585763046363.Spec : Prop :=
  ∀ n, P16657428585763046363.a n = A076905 (n + 1)

end A076905

/-! ## A076905.P11876016588945848414

`∑[record[and(2*n+1, n-1)]%2]`
-/

namespace A076905.P11876016588945848414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076905.P11876016588945848414

namespace A076905

/-- `∑[record[and(2*n+1, n-1)]%2]` -/
def P11876016588945848414.Spec : Prop :=
  ∀ n, P11876016588945848414.a n = A076905 (n + 1)

end A076905

/-! ## A076905.P12820422033857049030

`∑[A152822(record[and(n, 2*n)])]`
-/

namespace A076905.P12820422033857049030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076905.P12820422033857049030

namespace A076905

/-- `∑[A152822(record[and(n, 2*n)])]` -/
def P12820422033857049030.Spec : Prop :=
  ∀ n, P12820422033857049030.a n = A076905 (n + 1)

end A076905

/-! ## A076905.P8493007644144619362

`∑[A014577(record[and(n, 2*n)])]`
-/

namespace A076905.P8493007644144619362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076905.P8493007644144619362

namespace A076905

/-- `∑[A014577(record[and(n, 2*n)])]` -/
def P8493007644144619362.Spec : Prop :=
  ∀ n, P8493007644144619362.a n = A076905 (n + 1)

end A076905

/-! ## A076905.P848442543377462103

`∑[A102560(record[and(n, 2*n)])]`
-/

namespace A076905.P848442543377462103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076905.P848442543377462103

namespace A076905

/-- `∑[A102560(record[and(n, 2*n)])]` -/
def P848442543377462103.Spec : Prop :=
  ∀ n, P848442543377462103.a n = A076905 (n + 1)

end A076905

/-! ## A076905.P14058825222876373474

`∑[A219977(record[and(n, 2*(n+1))])]`
-/

namespace A076905.P14058825222876373474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076905.P14058825222876373474

namespace A076905

/-- `∑[A219977(record[and(n, 2*(n+1))])]` -/
def P14058825222876373474.Spec : Prop :=
  ∀ n, P14058825222876373474.a n = A076905 (n + 1)

end A076905

/-!
# A076906: Meandric numbers for a river (or directed line) crossing two perpendicular roads at n points, beginning in the (-,-) quadrant and ending in the (+,+) quadrant if n even, in the (+,-) quadrant if n odd.

The programs for A076906, there is no canonical definition to state claims against.
-/

/-! ## A076906.P169205460114188909

`A046155(n*A328429(n))`
-/

namespace A076906.P169205460114188909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 ((n : ℤ) * A328429 n).toNat

end

end A076906.P169205460114188909

/-! ## A076906.P17020058322617139392

`∑[A265370(Δ[A000110(n)])]`
-/

namespace A076906.P17020058322617139392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076906.P17020058322617139392

/-! ## A076906.P2694469869502752296

`∑[A265370(Δ[A276725(n)])]`
-/

namespace A076906.P2694469869502752296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076906.P2694469869502752296

/-! ## A076906.P13149958871595150299

`A058488(n)+Δ[A108917(n)]`
-/

namespace A076906.P13149958871595150299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058488 n + (f1 (n + 1) - f1 n)

end

end A076906.P13149958871595150299

/-!
# A076907: Meandric numbers for a river crossing two perpendicular roads at n points, beginning in the (-,-) quadrant and ending in any quadrant.

The programs for A076907, there is no canonical definition to state claims against.
-/

/-! ## A076907.P9487410794538721601

`2*A077551(round(sqrt(n²+1)))`
-/

namespace A076907.P9487410794538721601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077551 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A076907.P9487410794538721601

/-! ## A076907.P11896485468711621348

`A077551(A028310(n))+A077551(A028310(n))`
-/

namespace A076907.P11896485468711621348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077551 (A028310 n).toNat + A077551 (A028310 n).toNat

end

end A076907.P11896485468711621348

/-! ## A076907.P4931743785088500109

`2*A028310(A077551(n))`
-/

namespace A076907.P4931743785088500109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028310 (A077551 n).toNat

end

end A076907.P4931743785088500109

/-! ## A076907.P6158586650937357638

`A004277(A077551(floor(acot(n)+n)))`
-/

namespace A076907.P6158586650937357638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A077551 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A076907.P6158586650937357638

/-! ## A076907.P10452450826128610462

`A004277(A077551(round(sqrt(n²+1))))`
-/

namespace A076907.P10452450826128610462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A077551 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A076907.P10452450826128610462

/-!
# A076918: a(1) = 1, a(n+1) = A076271(n+1) divided by the highest common factor of A076271(n) and A076271(n+1).

The programs for A076918, the canonical program `A076918.P13121656842501502595` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076918 has offset 1).

The definition of A076918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076918.P10927277639809340724

`n+2-A076272(round(sqrt(n²+1)))`
-/

namespace A076918.P10927277639809340724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A076272 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A076918.P10927277639809340724

namespace A076918

/-- `n+2-A076272(round(sqrt(n²+1)))` -/
def P10927277639809340724.Spec : Prop :=
  ∀ n, P10927277639809340724.a n = A076918 (n + 1)

end A076918

/-! ## A076918.P13121656842501502595

`2-A076272(A028310(n))+n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A076918

/-- `2-A076272(A028310(n))+n` -/
def P13121656842501502595.Spec : Prop :=
  ∀ n, P13121656842501502595.a n = A076918 (n + 1)

theorem P13121656842501502595.correct : P13121656842501502595.Spec := by
  intro n
  simp only [A076918, Nat.add_sub_cancel]

end A076918

/-! ## A076918.P913987000238186404

`n+2-A006530((n+1-a(n-1))*a(n-1))` with `a(0)=1`
-/

namespace A076918.P913987000238186404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - A006530 (((n + 1 : ℤ) - a (n - 1)) * a (n - 1)).toNat

end

end A076918.P913987000238186404

namespace A076918

/-- `n+2-A006530((n+1-a(n-1))*a(n-1))` -/
def P913987000238186404.Spec : Prop :=
  ∀ n, P913987000238186404.a n = A076918 (n + 1)

end A076918

/-! ## A076918.P766465033289711333

`n+2-A006530(lcm(n+1-a(n-1), a(n-1)))` with `a(0)=1`
-/

namespace A076918.P766465033289711333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - A006530 (Int.lcm ((n + 1 : ℤ) - a (n - 1)) (a (n - 1)))

end

end A076918.P766465033289711333

namespace A076918

/-- `n+2-A006530(lcm(n+1-a(n-1), a(n-1)))` -/
def P766465033289711333.Spec : Prop :=
  ∀ n, P766465033289711333.a n = A076918 (n + 1)

end A076918

/-! ## A076918.P12054427445180947310

`n+2-A006530(A180107(n+1))`
-/

namespace A076918.P12054427445180947310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006530 (A180107 (n + 1)).toNat

end

end A076918.P12054427445180947310

namespace A076918

/-- `n+2-A006530(A180107(n+1))` -/
def P12054427445180947310.Spec : Prop :=
  ∀ n, P12054427445180947310.a n = A076918 (n + 1)

end A076918

/-! ## A076918.P14749035687431183355

`A076271(n+1)/A006530(A180107(n+1))`
-/

namespace A076918.P14749035687431183355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076271 (n + 1) : ℚ) / (A006530 (A180107 (n + 1)).toNat : ℚ)

end

end A076918.P14749035687431183355

namespace A076918

/-- `A076271(n+1)/A006530(A180107(n+1))` -/
def P14749035687431183355.Spec : Prop :=
  ∀ n, P14749035687431183355.a n = (A076918 (n + 1) : ℚ)

end A076918

/-! ## A076918.P9823564228068959092

`2-A180101(n+1)+n`
-/

namespace A076918.P9823564228068959092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A180101 (n + 1) + (n : ℤ)

end

end A076918.P9823564228068959092

namespace A076918

/-- `2-A180101(n+1)+n` -/
def P9823564228068959092.Spec : Prop :=
  ∀ n, P9823564228068959092.a n = A076918 (n + 1)

end A076918

/-! ## A076918.P4210701575333146035

`A076271(n+1)/A180101(n+1)`
-/

namespace A076918.P4210701575333146035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076271 (n + 1) : ℚ) / (A180101 (n + 1) : ℚ)

end

end A076918.P4210701575333146035

namespace A076918

/-- `A076271(n+1)/A180101(n+1)` -/
def P4210701575333146035.Spec : Prop :=
  ∀ n, P4210701575333146035.a n = (A076918 (n + 1) : ℚ)

end A076918

/-! ## A076918.P4672071913477102459

`A180107(n+2)/A180101(n+1)`
-/

namespace A076918.P4672071913477102459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180107 (n + 2) : ℚ) / (A180101 (n + 1) : ℚ)

end

end A076918.P4672071913477102459

namespace A076918

/-- `A180107(n+2)/A180101(n+1)` -/
def P4672071913477102459.Spec : Prop :=
  ∀ n, P4672071913477102459.a n = (A076918 (n + 1) : ℚ)

end A076918

/-!
# A076919: a(1) = 1, a(2) = 2, then a(n+1) is the smallest number such that the highest common factor of a(n) and a(n+1) is different from that of a(n) and a(n-1) and is more than 1.

The programs for A076919, there is no canonical definition to state claims against.
-/

/-! ## A076919.P10337417402485099393

`A076920(n)+a(n-1)` with `a(0)=1`
-/

namespace A076919.P10337417402485099393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076920 n + a (n - 1)

end

end A076919.P10337417402485099393

/-! ## A076919.P5519541440340382921

`∑[A076920(round(sqrt(n²+1)))]`
-/

namespace A076919.P5519541440340382921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076920 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076919.P5519541440340382921

/-! ## A076919.P3855207141869656453

`∑[A076920(n+1)]+1-A076920(n+1)`
-/

namespace A076919.P3855207141869656453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A076920 (n + 1))

end

end A076919.P3855207141869656453

/-!
# A076920: Highest common factor of a pair of successive terms of A076919.

The programs for A076920, there is no canonical definition to state claims against.
-/

/-! ## A076920.P15977929286702631095

`Δ[A076919(n+1)]`
-/

namespace A076920.P15977929286702631095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076920.P15977929286702631095

/-! ## A076920.P1430497997440593364

`Δ[record[A076919(A022446(n))]]`
-/

namespace A076920.P1430497997440593364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076919 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076920.P1430497997440593364

/-! ## A076920.P17020503440318962125

`A076919(n+2)-A076919(n+1)`
-/

namespace A076920.P17020503440318962125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076919 (n + 2) - A076919 (n + 1)

end

end A076920.P17020503440318962125

/-! ## A076920.P16067072231519758904

`Δ[record[A076919(A028920(n))]]`
-/

namespace A076920.P16067072231519758904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076919 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076920.P16067072231519758904

/-! ## A076920.P183671340618441766

`Δ[record[A076919(A128227(n))]]`
-/

namespace A076920.P183671340618441766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076919 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076920.P183671340618441766

/-! ## A076920.P6379288523962927168

`Δ[record[A076919(A116549(n))]]`
-/

namespace A076920.P6379288523962927168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076919 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076920.P6379288523962927168

/-!
# A076921: Smallest number such that the highest common factor of pair of successive terms follows the pattern 1, 1, 2, 2, 3, 3, 4, 4, ..., i.e., b(2n-1) = b(2n) = n given by A004526.

The programs for A076921, the canonical program `A076921.P14368931979936083328` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076921 has offset 1).

The definition of A076921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076921.P14960335779346742629

`floor(cosh(log(n+1))²)`
-/

namespace A076921.P14960335779346742629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 1 : ℝ)) ^ 2⌋

end

end A076921.P14960335779346742629

namespace A076921

/-- `floor(cosh(log(n+1))²)` -/
def P14960335779346742629.Spec : Prop :=
  ∀ n, P14960335779346742629.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P10009589973209737824

`ceil(cot(2/(n+1))²)`
-/

namespace A076921.P10009589973209737824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ) ^ 2⌉

end

end A076921.P10009589973209737824

namespace A076921

/-- `ceil(cot(2/(n+1))²)` -/
def P10009589973209737824.Spec : Prop :=
  ∀ n, P10009589973209737824.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P9418518151325299744

`round(cot((2/(n+1))²))`
-/

namespace A076921.P9418518151325299744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot ((2 / (n + 1 : ℚ)) ^ 2 : ℝ))

end

end A076921.P9418518151325299744

namespace A076921

/-- `round(cot((2/(n+1))²))` -/
def P9418518151325299744.Spec : Prop :=
  ∀ n, P9418518151325299744.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P13863531889165361495

`ceil(sinh(log(acot(n+1)))²)`
-/

namespace A076921.P13863531889165361495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (SequenceMachineLib.acot (n + 1 : ℝ))) ^ 2⌉

end

end A076921.P13863531889165361495

namespace A076921

/-- `ceil(sinh(log(acot(n+1)))²)` -/
def P13863531889165361495.Spec : Prop :=
  ∀ n, P13863531889165361495.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P6471452131378630843

`round((acot(n)/acot(∑[n]))²)`
-/

namespace A076921.P6471452131378630843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.acot (n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) ^ 2)

end

end A076921.P6471452131378630843

namespace A076921

/-- `round((acot(n)/acot(∑[n]))²)` -/
def P6471452131378630843.Spec : Prop :=
  ∀ n, P6471452131378630843.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P14368931979936083328

`a(n-2)+n` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076921

/-- `a(n-2)+n` -/
def P14368931979936083328.Spec : Prop :=
  ∀ n, (P14368931979936083328.a n : ℤ) = A076921 (n + 1)

theorem P14368931979936083328.correct : P14368931979936083328.Spec := by
  intro n
  simp only [A076921, Nat.add_sub_cancel]

end A076921

/-! ## A076921.P12056559426798535983

`∑[n]-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A076921.P12056559426798535983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A076921.P12056559426798535983

namespace A076921

/-- `∑[n]-a(n-1)` -/
def P12056559426798535983.Spec : Prop :=
  ∀ n, P12056559426798535983.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P3887213995727564789

`round(cosh(log((n+1)²))/2)`
-/

namespace A076921.P3887213995727564789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((n + 1) ^ 2 : ℝ)) / 2)

end

end A076921.P3887213995727564789

namespace A076921

/-- `round(cosh(log((n+1)²))/2)` -/
def P3887213995727564789.Spec : Prop :=
  ∀ n, P3887213995727564789.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P11500415975877732292

`∑[∑[n%2]]+floor(acot(n))`
-/

namespace A076921.P11500415975877732292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A076921.P11500415975877732292

namespace A076921

/-- `∑[∑[n%2]]+floor(acot(n))` -/
def P11500415975877732292.Spec : Prop :=
  ∀ n, P11500415975877732292.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P15313293241224387532

`ceil(abs((2-(n+1)²)/4))`
-/

namespace A076921.P15313293241224387532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(2 - ((n + 1) ^ 2 : ℤ) : ℚ) / 4|⌉

end

end A076921.P15313293241224387532

namespace A076921

/-- `ceil(abs((2-(n+1)²)/4))` -/
def P15313293241224387532.Spec : Prop :=
  ∀ n, P15313293241224387532.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P4820618880292821813

`floor((1/sin(2/(n+1)))²)`
-/

namespace A076921.P4820618880292821813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 / Real.sin (2 / (n + 1 : ℚ) : ℝ)) ^ 2⌋

end

end A076921.P4820618880292821813

namespace A076921

/-- `floor((1/sin(2/(n+1)))²)` -/
def P4820618880292821813.Spec : Prop :=
  ∀ n, P4820618880292821813.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P7286977175709620077

`round(1/tan((2/(n+1))²))`
-/

namespace A076921.P7286977175709620077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / Real.tan ((2 / (n + 1 : ℚ)) ^ 2 : ℝ))

end

end A076921.P7286977175709620077

namespace A076921

/-- `round(1/tan((2/(n+1))²))` -/
def P7286977175709620077.Spec : Prop :=
  ∀ n, P7286977175709620077.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P10284492609236427516

`floor(cot(2/(n+1))²)+1`
-/

namespace A076921.P10284492609236427516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 / (n + 1 : ℚ) : ℝ) ^ 2⌋ + 1

end

end A076921.P10284492609236427516

namespace A076921

/-- `floor(cot(2/(n+1))²)+1` -/
def P10284492609236427516.Spec : Prop :=
  ∀ n, P10284492609236427516.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P7421700734652075978

`round(1/atan((2/(n+1))²))`
-/

namespace A076921.P7421700734652075978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / Real.arctan ((2 / (n + 1 : ℚ)) ^ 2 : ℝ))

end

end A076921.P7421700734652075978

namespace A076921

/-- `round(1/atan((2/(n+1))²))` -/
def P7421700734652075978.Spec : Prop :=
  ∀ n, P7421700734652075978.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P5322987979500544228

`floor(1/tanh((2/(n+1))²))`
-/

namespace A076921.P5322987979500544228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tanh ((2 / (n + 1 : ℚ)) ^ 2 : ℝ)⌋

end

end A076921.P5322987979500544228

namespace A076921

/-- `floor(1/tanh((2/(n+1))²))` -/
def P5322987979500544228.Spec : Prop :=
  ∀ n, P5322987979500544228.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P11012995688279615755

`round(1/tanh((2/(n+1))²))`
-/

namespace A076921.P11012995688279615755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / Real.tanh ((2 / (n + 1 : ℚ)) ^ 2 : ℝ))

end

end A076921.P11012995688279615755

namespace A076921

/-- `round(1/tanh((2/(n+1))²))` -/
def P11012995688279615755.Spec : Prop :=
  ∀ n, P11012995688279615755.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P17275964014087954968

`round(1/acot(((n+1)/2)²))`
-/

namespace A076921.P17275964014087954968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (((n + 1 : ℚ) / 2) ^ 2 : ℝ))

end

end A076921.P17275964014087954968

namespace A076921

/-- `round(1/acot(((n+1)/2)²))` -/
def P17275964014087954968.Spec : Prop :=
  ∀ n, P17275964014087954968.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P7956418579156976228

`∑[round(cot(4/(2*n+1)))]`
-/

namespace A076921.P7956418579156976228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (4 / (2 * n + 1 : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076921.P7956418579156976228

namespace A076921

/-- `∑[round(cot(4/(2*n+1)))]` -/
def P7956418579156976228.Spec : Prop :=
  ∀ n, P7956418579156976228.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P1640834493746928694

`n-floor(-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A076921.P1640834493746928694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) - (-a (n - 2))

end

end A076921.P1640834493746928694

namespace A076921

/-- `n-floor(-a(n-2))` -/
def P1640834493746928694.Spec : Prop :=
  ∀ n, P1640834493746928694.a n = A076921 (n + 1)

end A076921

/-! ## A076921.P15630654195012730466

`n-ceil(-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A076921.P15630654195012730466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) - (-a (n - 2))

end

end A076921.P15630654195012730466

namespace A076921

/-- `n-ceil(-a(n-2))` -/
def P15630654195012730466.Spec : Prop :=
  ∀ n, P15630654195012730466.a n = A076921 (n + 1)

end A076921

/-!
# A076922: Smallest number greater than the previous term such that the highest common factor of successive pairs follows the pattern 1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, ... (n repeated n times, A002024).

The programs for A076922, there is no canonical definition to state claims against.
-/

/-! ## A076922.P7603692986445762489

`∑[char[∑[n]]]*A077430(A075212(n+1))`
-/

namespace A076922.P7603692986445762489
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A077430 (A075212 (n + 1)).toNat

end

end A076922.P7603692986445762489

/-! ## A076922.P10158292216377945561

`A077430(A075212(n+1))*A113764(n+1)`
-/

namespace A076922.P10158292216377945561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (A075212 (n + 1)).toNat * A113764 (n + 1)

end

end A076922.P10158292216377945561

/-! ## A076922.P3075334023067844460

`A055642(A321307(n+8))*A338375(n+1)`
-/

namespace A076922.P3075334023067844460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A321307 (n + 8)).toNat * A338375 (n + 1)

end

end A076922.P3075334023067844460

/-! ## A076922.P5025019497707204474

`A117173(A117205(2*(n+1))+A117165(n+5))`
-/

namespace A076922.P5025019497707204474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117173 (A117205 (2 * (n + 1)) + A117165 (n + 5)).toNat

end

end A076922.P5025019497707204474

/-! ## A076922.P1013962113672175061

`A055642(A336414(2*n+3))*A338375(n+1)`
-/

namespace A076922.P1013962113672175061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A336414 (2 * n + 3)).toNat * A338375 (n + 1)

end

end A076922.P1013962113672175061

/-!
# A076924: Smallest multiple of the n-th prime not containing any of its digits, or 0 if no such number exists.

The programs for A076924, there is no canonical definition to state claims against.
-/

/-! ## A076924.P5318265979422496547

`A074157(A000040(n+1))`
-/

namespace A076924.P5318265979422496547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (A000040 (n + 1)).toNat

end

end A076924.P5318265979422496547

/-! ## A076924.P1736841580611938395

`A000040(n+1)*A076925(n+1)`
-/

namespace A076924.P1736841580611938395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A076925 (n + 1)

end

end A076924.P1736841580611938395

/-! ## A076924.P17327315354056306748

`A074157(p?[comp[n²]])`
-/

namespace A076924.P17327315354056306748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A076924.P17327315354056306748

/-! ## A076924.P9563233401732572492

`A074157(Δ[A007504(n)])`
-/

namespace A076924.P9563233401732572492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (f1 (n + 1) - f1 n).toNat

end

end A076924.P9563233401732572492

/-! ## A076924.P5288971932783617350

`A074157(record[A051698(n)])`
-/

namespace A076924.P5288971932783617350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076924.P5288971932783617350

/-! ## A076924.P7724530007658373895

`A074157(A008578(n+2))`
-/

namespace A076924.P7724530007658373895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (A008578 (n + 2)).toNat

end

end A076924.P7724530007658373895

/-! ## A076924.P3111465174148142229

`A074157(A182986(n+2))`
-/

namespace A076924.P3111465174148142229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (A182986 (n + 2)).toNat

end

end A076924.P3111465174148142229

/-! ## A076924.P2937132199663110201

`A074157(eq[1, A003415(n)])`
-/

namespace A076924.P2937132199663110201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076924.P2937132199663110201

/-! ## A076924.P2303807162264091317

`A074157(record[A006530(n+2)])`
-/

namespace A076924.P2303807162264091317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076924.P2303807162264091317

/-! ## A076924.P2700419445717186048

`A074157(record[A014963(n+2)])`
-/

namespace A076924.P2700419445717186048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076924.P2700419445717186048

/-! ## A076924.P16850893204334274022

`A074157(record[A020639(n+2)])`
-/

namespace A076924.P16850893204334274022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076924.P16850893204334274022

/-! ## A076924.P18326464406580506522

`A074157(A209259(2*n+1))`
-/

namespace A076924.P18326464406580506522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (A209259 (2 * n + 1)).toNat

end

end A076924.P18326464406580506522

/-! ## A076924.P15961173467035275148

`A074157(eq[1, A245715(n+1)])`
-/

namespace A076924.P15961173467035275148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076924.P15961173467035275148

/-! ## A076924.P17652875264400162127

`A074157(eq[1, A001222(n+1)]+1)`
-/

namespace A076924.P17652875264400162127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076924.P17652875264400162127

/-! ## A076924.P15118828436764837393

`A074157(A007504(n+1)-A007504(n))`
-/

namespace A076924.P15118828436764837393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074157 (A007504 (n + 1) - A007504 n).toNat

end

end A076924.P15118828436764837393

/-!
# A076925: a(n) = A076924(n) divided by the n-th prime.

The programs for A076925, there is no canonical definition to state claims against.
-/

/-! ## A076925.P16231094913761835456

`A076924(n+1)/Δ[A007504(n)]`
-/

namespace A076925.P16231094913761835456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076924 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A076925.P16231094913761835456

/-! ## A076925.P5059001260915291693

`A076924(n+1)/A000040(n+1)`
-/

namespace A076925.P5059001260915291693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076924 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A076925.P5059001260915291693

/-! ## A076925.P3309681367157519135

`A378865(Δ[A007504(n)])`
-/

namespace A076925.P3309681367157519135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (f1 (n + 1) - f1 n).toNat

end

end A076925.P3309681367157519135

/-! ## A076925.P9579888113245645107

`A378865(A000040(n+1))`
-/

namespace A076925.P9579888113245645107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (A000040 (n + 1)).toNat

end

end A076925.P9579888113245645107

/-! ## A076925.P14678635494616059767

`A378865(A006005(n+1))`
-/

namespace A076925.P14678635494616059767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (A006005 (n + 1)).toNat

end

end A076925.P14678635494616059767

/-! ## A076925.P8255441271246585041

`A378865(A063884(n+1))`
-/

namespace A076925.P8255441271246585041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (A063884 (n + 1)).toNat

end

end A076925.P8255441271246585041

/-! ## A076925.P16169228223950446986

`A378865(A063904(n+1))`
-/

namespace A076925.P16169228223950446986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (A063904 (n + 1)).toNat

end

end A076925.P16169228223950446986

/-! ## A076925.P10196631057992870712

`A378865(A083249(n+1))`
-/

namespace A076925.P10196631057992870712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (A083249 (n + 1)).toNat

end

end A076925.P10196631057992870712

/-! ## A076925.P2132579532776506771

`A378865(A161847(n+1))`
-/

namespace A076925.P2132579532776506771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (A161847 (n + 1)).toNat

end

end A076925.P2132579532776506771

/-! ## A076925.P10468816298769115891

`A378865(A008578(n+2))`
-/

namespace A076925.P10468816298769115891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (A008578 (n + 2)).toNat

end

end A076925.P10468816298769115891

/-! ## A076925.P7622176707013055908

`A378865(A075643(n+2))`
-/

namespace A076925.P7622176707013055908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378865 (A075643 (n + 2)).toNat

end

end A076925.P7622176707013055908

/-! ## A076925.P11842874817561832168

`gcd(A051426(n+1), A076924(n+1))`
-/

namespace A076925.P11842874817561832168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051426 (n + 1)) (A076924 (n + 1))

end

end A076925.P11842874817561832168

/-!
# A076926: Smallest multiple of n with n distinct prime divisors.

The programs for A076926, the canonical program `A076926.P4980543068874911485` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076926 has offset 1).

The definition of A076926 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076926.P4980543068874911485

`A002110(n+1)*A003557(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A076926

/-- `A002110(n+1)*A003557(n+1)` -/
def P4980543068874911485.Spec : Prop :=
  ∀ n, P4980543068874911485.a n = A076926 (n + 1)

theorem P4980543068874911485.correct : P4980543068874911485.Spec := by
  intro n
  simp only [A076926, Nat.add_sub_cancel]

end A076926

/-! ## A076926.P17473744749115353254

`lcm(n+1, Δ[A143293(n)])`
-/

namespace A076926.P17473744749115353254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A076926.P17473744749115353254

namespace A076926

/-- `lcm(n+1, Δ[A143293(n)])` -/
def P17473744749115353254.Spec : Prop :=
  ∀ n, (P17473744749115353254.a n : ℤ) = A076926 (n + 1)

end A076926

/-! ## A076926.P3306217728851528805

`(n+1)*A076927(n+1)`
-/

namespace A076926.P3306217728851528805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076927 (n + 1)

end

end A076926.P3306217728851528805

namespace A076926

/-- `(n+1)*A076927(n+1)` -/
def P3306217728851528805.Spec : Prop :=
  ∀ n, P3306217728851528805.a n = A076926 (n + 1)

end A076926

/-! ## A076926.P1165406514201650408

`(n+1)/∏{p}[n+1, #]*∏[sqrt(A001248(n+1))]`
-/

namespace A076926.P1165406514201650408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A076926.P1165406514201650408

namespace A076926

/-- `(n+1)/∏{p}[n+1, #]*∏[sqrt(A001248(n+1))]` -/
def P1165406514201650408.Spec : Prop :=
  ∀ n, P1165406514201650408.a n = (A076926 (n + 1) : ℝ)

end A076926

/-! ## A076926.P12313640257838431485

`(n+1)/∏{p}[n+1, #]*∏[record[A014963(n+2)]]`
-/

namespace A076926.P12313640257838431485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A076926.P12313640257838431485

namespace A076926

/-- `(n+1)/∏{p}[n+1, #]*∏[record[A014963(n+2)]]` -/
def P12313640257838431485.Spec : Prop :=
  ∀ n, P12313640257838431485.a n = (A076926 (n + 1) : ℚ)

end A076926

/-! ## A076926.P3236016838484943461

`∏[A000040(n+1)]*A003557(n+1)`
-/

namespace A076926.P3236016838484943461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A003557 (n + 1)

end

end A076926.P3236016838484943461

namespace A076926

/-- `∏[A000040(n+1)]*A003557(n+1)` -/
def P3236016838484943461.Spec : Prop :=
  ∀ n, P3236016838484943461.a n = A076926 (n + 1)

end A076926

/-! ## A076926.P5301197924884275154

`A002110(n+1)/A006530(n+1)*A217434(n+1)`
-/

namespace A076926.P5301197924884275154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ) * (A217434 (n + 1) : ℚ)

end

end A076926.P5301197924884275154

namespace A076926

/-- `A002110(n+1)/A006530(n+1)*A217434(n+1)` -/
def P5301197924884275154.Spec : Prop :=
  ∀ n, P5301197924884275154.a n = (A076926 (n + 1) : ℚ)

end A076926

/-!
# A076927: a(n) = A076926(n)/n.

The programs for A076927, the canonical program `A076927.P14191405464165554135` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076927 has offset 1).

The definition of A076927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076927.P14191405464165554135

`A076926(n+1)/(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076927

/-- `A076926(n+1)/(n+1)` -/
def P14191405464165554135.Spec : Prop :=
  ∀ n, P14191405464165554135.a n = (A076927 (n + 1) : ℚ)

end A076927

/-! ## A076927.P14821206640595364953

`∏[p?[xor(1, n)+1]]/∏{p}[n+1, #]`
-/

namespace A076927.P14821206640595364953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

end

end A076927.P14821206640595364953

namespace A076927

/-- `∏[p?[xor(1, n)+1]]/∏{p}[n+1, #]` -/
def P14821206640595364953.Spec : Prop :=
  ∀ n, P14821206640595364953.a n = (A076927 (n + 1) : ℚ)

end A076927

/-! ## A076927.P8464272614878405547

`∏[p?[n-(-1)^n]]/∏{p}[n+1, #]`
-/

namespace A076927.P8464272614878405547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

end

end A076927.P8464272614878405547

namespace A076927

/-- `∏[p?[n-(-1)^n]]/∏{p}[n+1, #]` -/
def P8464272614878405547.Spec : Prop :=
  ∀ n, P8464272614878405547.a n = (A076927 (n + 1) : ℚ)

end A076927

/-! ## A076927.P12704600713813435861

`A002110(n+1)/∏{p}[n+1, #]`
-/

namespace A076927.P12704600713813435861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A076927.P12704600713813435861

namespace A076927

/-- `A002110(n+1)/∏{p}[n+1, #]` -/
def P12704600713813435861.Spec : Prop :=
  ∀ n, P12704600713813435861.a n = (A076927 (n + 1) : ℚ)

end A076927

/-! ## A076927.P10475910072802201582

`∏[A000040(n+1)]/∏{p}[n+1, #]`
-/

namespace A076927.P10475910072802201582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A076927.P10475910072802201582

namespace A076927

/-- `∏[A000040(n+1)]/∏{p}[n+1, #]` -/
def P10475910072802201582.Spec : Prop :=
  ∀ n, P10475910072802201582.a n = (A076927 (n + 1) : ℚ)

end A076927

/-! ## A076927.P12766343197388709038

`∏[record[A006530(n+2)]]/∏{p}[n+1, #]`
-/

namespace A076927.P12766343197388709038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

end

end A076927.P12766343197388709038

namespace A076927

/-- `∏[record[A006530(n+2)]]/∏{p}[n+1, #]` -/
def P12766343197388709038.Spec : Prop :=
  ∀ n, P12766343197388709038.a n = (A076927 (n + 1) : ℚ)

end A076927

/-! ## A076927.P667099114595701736

`A002110(n+1)/A007947(n+1)`
-/

namespace A076927.P667099114595701736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A076927.P667099114595701736

namespace A076927

/-- `A002110(n+1)/A007947(n+1)` -/
def P667099114595701736.Spec : Prop :=
  ∀ n, P667099114595701736.a n = (A076927 (n + 1) : ℚ)

end A076927

/-! ## A076927.P3893370112001685493

`A034386(A000040(n+1))/A007947(n+1)`
-/

namespace A076927.P3893370112001685493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (A000040 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A076927.P3893370112001685493

namespace A076927

/-- `A034386(A000040(n+1))/A007947(n+1)` -/
def P3893370112001685493.Spec : Prop :=
  ∀ n, P3893370112001685493.a n = (A076927 (n + 1) : ℚ)

end A076927

/-! ## A076927.P12519508499225966526

`A066332(A008864(n+1))/A007947(n+1)`
-/

namespace A076927.P12519508499225966526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066332 (A008864 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A076927.P12519508499225966526

namespace A076927

/-- `A066332(A008864(n+1))/A007947(n+1)` -/
def P12519508499225966526.Spec : Prop :=
  ∀ n, P12519508499225966526.a n = (A076927 (n + 1) : ℚ)

end A076927

/-! ## A076927.P13486520106295496775

`A002110(n+1)/A005117(A336147(n+1))`
-/

namespace A076927.P13486520106295496775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A005117 (A336147 (n + 1)).toNat : ℚ)

end

end A076927.P13486520106295496775

namespace A076927

/-- `A002110(n+1)/A005117(A336147(n+1))` -/
def P13486520106295496775.Spec : Prop :=
  ∀ n, P13486520106295496775.a n = (A076927 (n + 1) : ℚ)

end A076927

/-!
# A076928: a(1) = 1, a(n+1)= a(n)*(n+1) divided by the largest prime divisor of n+1.

The programs for A076928, the canonical program `A076928.P15720987038204925142` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076928 has offset 1).

The definition of A076928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076928.P14095638198251222137

`∏[A052126(n+1)]`
-/

namespace A076928.P14095638198251222137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076928.P14095638198251222137

namespace A076928

/-- `∏[A052126(n+1)]` -/
def P14095638198251222137.Spec : Prop :=
  ∀ n, P14095638198251222137.a n = A076928 (n + 1)

theorem P14095638198251222137.correct : P14095638198251222137.Spec := by
  intro n
  simp only [A076928, Nat.add_sub_cancel, A076928.P14095638198251222137.f1, A076928.P14095638198251222137.a, A076928.P15720987038204925142.f1, A076928.P15720987038204925142.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076928

/-! ## A076928.P15720987038204925142

`∏[1-A171462(n+1)+n]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A076928

/-- `∏[1-A171462(n+1)+n]` -/
def P15720987038204925142.Spec : Prop :=
  ∀ n, P15720987038204925142.a n = A076928 (n + 1)

theorem P15720987038204925142.correct : P15720987038204925142.Spec := by
  intro n
  simp only [A076928, Nat.add_sub_cancel]

end A076928

/-! ## A076928.P13085340260655252755

`∏[A335876(n+1)-(n+1)]`
-/

namespace A076928.P13085340260655252755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335876 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076928.P13085340260655252755

namespace A076928

/-- `∏[A335876(n+1)-(n+1)]` -/
def P13085340260655252755.Spec : Prop :=
  ∀ n, P13085340260655252755.a n = A076928 (n + 1)

theorem P13085340260655252755.correct : P13085340260655252755.Spec := by
  intro n
  simp only [A076928, Nat.add_sub_cancel, A076928.P13085340260655252755.f1, A076928.P13085340260655252755.a, A076928.P15720987038204925142.f1, A076928.P15720987038204925142.a, A171462, A171462.P186066025836437895.a, A335876, A335876.P3249295182234954832.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076928

/-! ## A076928.P7433509031717326951

`∏[A269304(n+1)-(n+2)]`
-/

namespace A076928.P7433509031717326951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269304 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076928.P7433509031717326951

namespace A076928

/-- `∏[A269304(n+1)-(n+2)]` -/
def P7433509031717326951.Spec : Prop :=
  ∀ n, P7433509031717326951.a n = A076928 (n + 1)

theorem P7433509031717326951.correct : P7433509031717326951.Spec := by
  intro n
  simp only [A076928, Nat.add_sub_cancel, A076928.P7433509031717326951.f1, A076928.P7433509031717326951.a, A076928.P15720987038204925142.f1, A076928.P15720987038204925142.a, A171462, A171462.P186066025836437895.a, A269304, A269304.P13577493983909923936.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076928

/-! ## A076928.P14949484056203301376

`∏[(n+1)/A006530(n+1)]`
-/

namespace A076928.P14949484056203301376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076928.P14949484056203301376

namespace A076928

/-- `∏[(n+1)/A006530(n+1)]` -/
def P14949484056203301376.Spec : Prop :=
  ∀ n, P14949484056203301376.a n = (A076928 (n + 1) : ℚ)

end A076928

/-! ## A076928.P16863914907432306376

`A034386(n+1)/A104350(n+1)*A049614(n+1)`
-/

namespace A076928.P16863914907432306376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A104350 (n + 1) : ℚ) * (A049614 (n + 1) : ℚ)

end

end A076928.P16863914907432306376

namespace A076928

/-- `A034386(n+1)/A104350(n+1)*A049614(n+1)` -/
def P16863914907432306376.Spec : Prop :=
  ∀ n, P16863914907432306376.a n = (A076928 (n + 1) : ℚ)

end A076928

/-! ## A076928.P2466362042700138785

`A048855(n+1)/A104354(n+1)`
-/

namespace A076928.P2466362042700138785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048855 (n + 1) : ℚ) / (A104354 (n + 1) : ℚ)

end

end A076928.P2466362042700138785

namespace A076928

/-- `A048855(n+1)/A104354(n+1)` -/
def P2466362042700138785.Spec : Prop :=
  ∀ n, P2466362042700138785.a n = (A076928 (n + 1) : ℚ)

end A076928

/-! ## A076928.P10574124797022602682

`A000142(n+1)/A104350(n+1)`
-/

namespace A076928.P10574124797022602682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A104350 (n + 1) : ℚ)

end

end A076928.P10574124797022602682

namespace A076928

/-- `A000142(n+1)/A104350(n+1)` -/
def P10574124797022602682.Spec : Prop :=
  ∀ n, P10574124797022602682.a n = (A076928 (n + 1) : ℚ)

end A076928

/-!
# A076929: a(1) = 1, a(n+1)= a(n)*(n+1) divided by the smallest prime divisor of n+1.

The programs for A076929, there is no canonical definition to state claims against.
-/

/-! ## A076929.P9679122441213926944

`∏[A032742(n+1)]`
-/

namespace A076929.P9679122441213926944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076929.P9679122441213926944

/-! ## A076929.P1999347324691694873

`∏[A143111(∑[n+1])]`
-/

namespace A076929.P1999347324691694873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143111 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076929.P1999347324691694873

/-! ## A076929.P8153174981269337265

`∏[A054576(2*(n+1))]`
-/

namespace A076929.P8153174981269337265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076929.P8153174981269337265

/-! ## A076929.P15518021809663221777

`∏[A117358(4*(n+1))]`
-/

namespace A076929.P15518021809663221777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076929.P15518021809663221777

/-!
# A076930: Smallest k such that n*k is an n-th power.

The programs for A076930, the canonical program `A076930.P16490374542533461625` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076930 has offset 1).

The definition of A076930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076930.P16490374542533461625

`A007947(n+1)^(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076930

/-- `A007947(n+1)^(n+1)/(n+1)` -/
def P16490374542533461625.Spec : Prop :=
  ∀ n, P16490374542533461625.a n = (A076930 (n + 1) : ℚ)

end A076930

/-! ## A076930.P7259394286612211780

`∏{p}[n+1, #]^n/A003557(n+1)`
-/

namespace A076930.P7259394286612211780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p) ^ n : ℕ) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A076930.P7259394286612211780

namespace A076930

/-- `∏{p}[n+1, #]^n/A003557(n+1)` -/
def P7259394286612211780.Spec : Prop :=
  ∀ n, P7259394286612211780.a n = (A076930 (n + 1) : ℚ)

end A076930

/-! ## A076930.P5358363333976742910

`∏{p}[n+1, #^(n+1)]/(n+1)`
-/

namespace A076930.P5358363333976742910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p ^ (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A076930.P5358363333976742910

namespace A076930

/-- `∏{p}[n+1, #^(n+1)]/(n+1)` -/
def P5358363333976742910.Spec : Prop :=
  ∀ n, P5358363333976742910.a n = (A076930 (n + 1) : ℚ)

end A076930

/-! ## A076930.P16066270740927870

`A015052(n+1)^(n+1)/(n+1)`
-/

namespace A076930.P16066270740927870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015052 (n + 1) ^ (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076930.P16066270740927870

namespace A076930

/-- `A015052(n+1)^(n+1)/(n+1)` -/
def P16066270740927870.Spec : Prop :=
  ∀ n, P16066270740927870.a n = (A076930 (n + 1) : ℚ)

end A076930

/-! ## A076930.P7686296181293527147

`A015053(n+1)^(n+1)/(n+1)`
-/

namespace A076930.P7686296181293527147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015053 (n + 1) ^ (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076930.P7686296181293527147

namespace A076930

/-- `A015053(n+1)^(n+1)/(n+1)` -/
def P7686296181293527147.Spec : Prop :=
  ∀ n, P7686296181293527147.a n = (A076930 (n + 1) : ℚ)

end A076930

/-!
# A076931: Smallest k such that n*k has n divisors.

The programs for A076931, there is no canonical definition to state claims against.
-/

/-! ## A076931.P6608114204008581017

`A073904(n+1)/(n+1)`
-/

namespace A076931.P6608114204008581017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073904 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076931.P6608114204008581017

/-! ## A076931.P6969988261555973670

`A020639(n+1)^(n-1)^and(5, n-3)`
-/

namespace A076931.P6969988261555973670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℝ) ^ (((n : ℤ) - 1 : ℚ) ^ (Int.land 5 ((n : ℤ) - 3) : ℤ) : ℝ)

end

end A076931.P6969988261555973670

/-! ## A076931.P12778655929041804338

`A006530(n+1)^(n-1)^and(5, n-3)-char[5]`
-/

namespace A076931.P12778655929041804338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℝ) ^ (((n : ℤ) - 1 : ℚ) ^ (Int.land 5 ((n : ℤ) - 3) : ℤ) : ℝ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)

end

end A076931.P12778655929041804338

/-!
# A076932: Largest k such that n*k has n divisors, or 0 if there are no possibilities for k or infinitely many.

The programs for A076932, there is no canonical definition to state claims against.
-/

/-! ## A076932.P13789313022006881674

`A006530(n+1)^(n-1)^and(5, n-3)`
-/

namespace A076932.P13789313022006881674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℝ) ^ (((n : ℤ) - 1 : ℚ) ^ (Int.land 5 ((n : ℤ) - 3) : ℤ) : ℝ)

end

end A076932.P13789313022006881674

/-! ## A076932.P1567797978108220038

`char[5]+A020639(n+1)^(n-1)^and(5, n-3)`
-/

namespace A076932.P1567797978108220038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + (A020639 (n + 1) : ℝ) ^ (((n : ℤ) - 1 : ℚ) ^ (Int.land 5 ((n : ℤ) - 3) : ℤ) : ℝ)

end

end A076932.P1567797978108220038

/-! ## A076932.P5632039402224654009

`A244083(A099146(n+2))`
-/

namespace A076932.P5632039402224654009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244083 (A099146 (n + 2)).toNat

end

end A076932.P5632039402224654009

/-!
# A076933: Final number obtained when n is divided by its divisors starting from the smallest one in increasing order until one no longer gets an integer.

The programs for A076933, there is no canonical definition to state claims against.
-/

/-! ## A076933.P2618927729497910323

`(n+1)/A135875(gcd(n+1, A135875(n+1)))`
-/

namespace A076933.P2618927729497910323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A135875 (Int.gcd (n + 1 : ℤ) (A135875 (n + 1))) : ℚ)

end

end A076933.P2618927729497910323

/-! ## A076933.P4926432055977166103

`A056554(A060789(n+1)^A046660(n+1))`
-/

namespace A076933.P4926432055977166103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (SequenceMachineLib.roundAway ((A060789 (n + 1) : ℚ) ^ (A046660 (n + 1) : ℤ))).toNat

end

end A076933.P4926432055977166103

/-! ## A076933.P2670355647475719841

`A056554(A060789(n+1)^A048105(n+1))`
-/

namespace A076933.P2670355647475719841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (SequenceMachineLib.roundAway ((A060789 (n + 1) : ℚ) ^ (A048105 (n + 1) : ℤ))).toNat

end

end A076933.P2670355647475719841

/-! ## A076933.P11602337036600118430

`A056554(A060789(n+1)^A183094(n+1))`
-/

namespace A076933.P11602337036600118430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (SequenceMachineLib.roundAway ((A060789 (n + 1) : ℚ) ^ (A183094 (n + 1) : ℤ))).toNat

end

end A076933.P11602337036600118430

/-! ## A076933.P7883986953426855803

`A336643(A090395(n+1)^A005361(n+1))`
-/

namespace A076933.P7883986953426855803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (SequenceMachineLib.roundAway ((A090395 (n + 1) : ℚ) ^ (A005361 (n + 1) : ℤ))).toNat

end

end A076933.P7883986953426855803

/-!
# A076934: Smallest integer of the form n/k!.

The programs for A076934, the canonical program `A076934.P8649763762299317029` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076934 has offset 1).

The definition of A076934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076934.P8649763762299317029

`(n+1)/A055881(n+1)!`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076934

/-- `(n+1)/A055881(n+1)!` -/
def P8649763762299317029.Spec : Prop :=
  ∀ n, P8649763762299317029.a n = (A076934 (n + 1) : ℚ)

end A076934

/-! ## A076934.P11420301577610555374

`(n+1)/A055770(n+1)`
-/

namespace A076934.P11420301577610555374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055770 (n + 1) : ℚ)

end

end A076934.P11420301577610555374

namespace A076934

/-- `(n+1)/A055770(n+1)` -/
def P11420301577610555374.Spec : Prop :=
  ∀ n, P11420301577610555374.a n = (A076934 (n + 1) : ℚ)

end A076934

/-! ## A076934.P11483574663370647893

`(n+1)/A257686(A073575(n+1))`
-/

namespace A076934.P11483574663370647893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A257686 (A073575 (n + 1)).toNat : ℚ)

end

end A076934.P11483574663370647893

namespace A076934

/-- `(n+1)/A257686(A073575(n+1))` -/
def P11483574663370647893.Spec : Prop :=
  ∀ n, P11483574663370647893.a n = (A076934 (n + 1) : ℚ)

end A076934

/-! ## A076934.P15569120729442209177

`(n+1)/Δ[A060832(n)]!`
-/

namespace A076934.P15569120729442209177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060832 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A076934.P15569120729442209177

namespace A076934

/-- `(n+1)/Δ[A060832(n)]!` -/
def P15569120729442209177.Spec : Prop :=
  ∀ n, P15569120729442209177.a n = (A076934 (n + 1) : ℚ)

end A076934

/-! ## A076934.P12324181421813690855

`A000027(n+1)/A276951(A073575(n+1))`
-/

namespace A076934.P12324181421813690855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A276951 (A073575 (n + 1)).toNat : ℚ)

end

end A076934.P12324181421813690855

namespace A076934

/-- `A000027(n+1)/A276951(A073575(n+1))` -/
def P12324181421813690855.Spec : Prop :=
  ∀ n, P12324181421813690855.a n = (A076934 (n + 1) : ℚ)

end A076934

/-! ## A076934.P2950079983891102252

`A010766(A055770(n+1)+∑[n])`
-/

namespace A076934.P2950079983891102252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A055770 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A076934.P2950079983891102252

namespace A076934

/-- `A010766(A055770(n+1)+∑[n])` -/
def P2950079983891102252.Spec : Prop :=
  ∀ n, P2950079983891102252.a n = A076934 (n + 1)

end A076934

/-! ## A076934.P12682396114800286090

`A051537(A055770(n+1)+A000217(n))`
-/

namespace A076934.P12682396114800286090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A055770 (n + 1) + A000217 n).toNat

end

end A076934.P12682396114800286090

namespace A076934

/-- `A051537(A055770(n+1)+A000217(n))` -/
def P12682396114800286090.Spec : Prop :=
  ∀ n, P12682396114800286090.a n = A076934 (n + 1)

end A076934

/-! ## A076934.P8274537879099031530

`A126988(A055770(n+1)+A000217(n))`
-/

namespace A076934.P8274537879099031530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A055770 (n + 1) + A000217 n).toNat

end

end A076934.P8274537879099031530

namespace A076934

/-- `A126988(A055770(n+1)+A000217(n))` -/
def P8274537879099031530.Spec : Prop :=
  ∀ n, P8274537879099031530.a n = A076934 (n + 1)

end A076934

/-! ## A076934.P6936260907029976302

`(n+1)/A000119(A073575(n+1)²)`
-/

namespace A076934.P6936260907029976302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000119 (A073575 (n + 1) ^ 2).toNat : ℚ)

end

end A076934.P6936260907029976302

namespace A076934

/-- `(n+1)/A000119(A073575(n+1)²)` -/
def P6936260907029976302.Spec : Prop :=
  ∀ n, P6936260907029976302.a n = (A076934 (n + 1) : ℚ)

end A076934

/-!
# A076935: a(1)=1, a(n)=n-a(n-1)+a(a(n-1))-a(a(a(n-1)))+a(a(a(a(n-1))))-a(a(a(a(a(n-1))))).

The programs for A076935, there is no canonical definition to state claims against.
-/

/-! ## A076935.P196091899702858888

`A089885(A034541(n+1))+A060143(n)`
-/

namespace A076935.P196091899702858888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089885 (A034541 (n + 1)).toNat + A060143 n

end

end A076935.P196091899702858888

/-! ## A076935.P11209529782817325624

`A057363(n)+A010892(A185284(n))`
-/

namespace A076935.P11209529782817325624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 n + A010892 (A185284 n).toNat

end

end A076935.P11209529782817325624

/-! ## A076935.P12245627475767034919

`floor(8*n/13)%A335703(n)+1`
-/

namespace A076935.P12245627475767034919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊8 * ((n : ℚ) / 13)⌋ (A335703 n) + 1

end

end A076935.P12245627475767034919

/-! ## A076935.P6184819972212579901

`A057363(n)+A054977(A190939(n))`
-/

namespace A076935.P6184819972212579901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 n + A054977 (A190939 n).toNat

end

end A076935.P6184819972212579901

/-!
# A076936: a(1) = 1; then the smallest number different from its predecessor such that the n-th partial product is an n-th power.

The programs for A076936, the canonical program `A076936.P14071532336239768322` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076936 has offset 1).

The definition of A076936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076936.P14071532336239768322

`2^A014682(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076936

/-- `2^A014682(n)` -/
def P14071532336239768322.Spec : Prop :=
  ∀ n, P14071532336239768322.a n = (A076936 (n + 1) : ℚ)

end A076936

/-! ## A076936.P6756778683085345605

`2^Δ[n*floor(n/2)]`
-/

namespace A076936.P6756778683085345605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A076936.P6756778683085345605

namespace A076936

/-- `2^Δ[n*floor(n/2)]` -/
def P6756778683085345605.Spec : Prop :=
  ∀ n, P6756778683085345605.a n = (A076936 (n + 1) : ℚ)

end A076936

/-! ## A076936.P16835010316496057544

`abs((-2)^(lcm(2, n)-floor(n/2)))`
-/

namespace A076936.P16835010316496057544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-2 : ℚ) ^ ((Nat.lcm 2 n : ℤ) - ⌊(n : ℚ) / 2⌋ : ℤ)|

end

end A076936.P16835010316496057544

namespace A076936

/-- `abs((-2)^(lcm(2, n)-floor(n/2)))` -/
def P16835010316496057544.Spec : Prop :=
  ∀ n, P16835010316496057544.a n = (A076936 (n + 1) : ℚ)

end A076936

/-! ## A076936.P14974034136143010935

`abs((-2)^(∑[2*n]%Δ[n²]))`
-/

namespace A076936.P14974034136143010935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-2 : ℚ) ^ (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) : ℤ)|

end

end A076936.P14974034136143010935

namespace A076936

/-- `abs((-2)^(∑[2*n]%Δ[n²]))` -/
def P14974034136143010935.Spec : Prop :=
  ∀ n, P14974034136143010935.a n = (A076936 (n + 1) : ℚ)

end A076936

/-! ## A076936.P18110111005878181668

`2*a(n-2)*a(n%2)` with `a(0)=1, a(1)=4`
-/

namespace A076936.P18110111005878181668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (a (n - 2) * a (n % 2))

end

end A076936.P18110111005878181668

namespace A076936

/-- `2*a(n-2)*a(n%2)` -/
def P18110111005878181668.Spec : Prop :=
  ∀ n, (P18110111005878181668.a n : ℤ) = A076936 (n + 1)

end A076936

/-! ## A076936.P4752700113625945810

`(2^(∑[n]%(n+1)))²*2^floor(n/2)`
-/

namespace A076936.P4752700113625945810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))) ^ 2 : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A076936.P4752700113625945810

namespace A076936

/-- `(2^(∑[n]%(n+1)))²*2^floor(n/2)` -/
def P4752700113625945810.Spec : Prop :=
  ∀ n, P4752700113625945810.a n = (A076936 (n + 1) : ℚ)

end A076936

/-! ## A076936.P7457253075073116173

`A000079(Δ[n*floor(n/2)])`
-/

namespace A076936.P7457253075073116173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat

end

end A076936.P7457253075073116173

namespace A076936

/-- `A000079(Δ[n*floor(n/2)])` -/
def P7457253075073116173.Spec : Prop :=
  ∀ n, P7457253075073116173.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P4546276621344478194

`A060546(A347365(n))`
-/

namespace A076936.P4546276621344478194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A347365 n).toNat

end

end A076936.P4546276621344478194

namespace A076936

/-- `A060546(A347365(n))` -/
def P4546276621344478194.Spec : Prop :=
  ∀ n, P4546276621344478194.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P5266804630766574360

`A262699(A165998(n))`
-/

namespace A076936.P5266804630766574360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262699 (A165998 n).toNat

end

end A076936.P5266804630766574360

namespace A076936

/-- `A262699(A165998(n))` -/
def P5266804630766574360.Spec : Prop :=
  ∀ n, P5266804630766574360.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P6805776665842587638

`A011782(A014682(n)+1)`
-/

namespace A076936.P6805776665842587638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014682 n + 1).toNat

end

end A076936.P6805776665842587638

namespace A076936

/-- `A011782(A014682(n)+1)` -/
def P6805776665842587638.Spec : Prop :=
  ∀ n, P6805776665842587638.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P13255984748864601135

`A011782(A064455(n+1))`
-/

namespace A076936.P13255984748864601135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A064455 (n + 1)).toNat

end

end A076936.P13255984748864601135

namespace A076936

/-- `A011782(A064455(n+1))` -/
def P13255984748864601135.Spec : Prop :=
  ∀ n, P13255984748864601135.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P3505906261300450635

`A016116(A347365(n)+1)`
-/

namespace A076936.P3505906261300450635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A347365 n + 1).toNat

end

end A076936.P3505906261300450635

namespace A076936

/-- `A016116(A347365(n)+1)` -/
def P3505906261300450635.Spec : Prop :=
  ∀ n, P3505906261300450635.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P4075645769914319698

`A200675(A153285(n+2))`
-/

namespace A076936.P4075645769914319698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200675 (A153285 (n + 2)).toNat

end

end A076936.P4075645769914319698

namespace A076936

/-- `A200675(A153285(n+2))` -/
def P4075645769914319698.Spec : Prop :=
  ∀ n, P4075645769914319698.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P1696250435221985514

`A016116(2*A014682(n))`
-/

namespace A076936.P1696250435221985514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A014682 n).toNat

end

end A076936.P1696250435221985514

namespace A076936

/-- `A016116(2*A014682(n))` -/
def P1696250435221985514.Spec : Prop :=
  ∀ n, P1696250435221985514.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P14621326092242849186

`A200675(4*A014682(n))`
-/

namespace A076936.P14621326092242849186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200675 (4 * A014682 n).toNat

end

end A076936.P14621326092242849186

namespace A076936

/-- `A200675(4*A014682(n))` -/
def P14621326092242849186.Spec : Prop :=
  ∀ n, P14621326092242849186.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P9212627786834551795

`A016116(A266437(n)+n)`
-/

namespace A076936.P9212627786834551795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A266437 n + (n : ℤ)).toNat

end

end A076936.P9212627786834551795

namespace A076936

/-- `A016116(A266437(n)+n)` -/
def P9212627786834551795.Spec : Prop :=
  ∀ n, P9212627786834551795.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P15459442363149293638

`A060546(n*A010684(n))`
-/

namespace A076936.P15459442363149293638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 ((n : ℤ) * A010684 n).toNat

end

end A076936.P15459442363149293638

namespace A076936

/-- `A060546(n*A010684(n))` -/
def P15459442363149293638.Spec : Prop :=
  ∀ n, P15459442363149293638.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P11688204136966290217

`A011782(∑[1-A038608(n)])`
-/

namespace A076936.P11688204136966290217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076936.P11688204136966290217

namespace A076936

/-- `A011782(∑[1-A038608(n)])` -/
def P11688204136966290217.Spec : Prop :=
  ∀ n, P11688204136966290217.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P8382323530769563737

`A011782(A001057(n)+n+1)`
-/

namespace A076936.P8382323530769563737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A001057 n + (n + 1 : ℤ)).toNat

end

end A076936.P8382323530769563737

namespace A076936

/-- `A011782(A001057(n)+n+1)` -/
def P8382323530769563737.Spec : Prop :=
  ∀ n, P8382323530769563737.a n = A076936 (n + 1)

end A076936

/-! ## A076936.P16889305779990023868

`A034008(A001057(n)+n+2)`
-/

namespace A076936.P16889305779990023868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A001057 n + (n + 2 : ℤ)).toNat

end

end A076936.P16889305779990023868

namespace A076936

/-- `A034008(A001057(n)+n+2)` -/
def P16889305779990023868.Spec : Prop :=
  ∀ n, P16889305779990023868.a n = A076936 (n + 1)

end A076936

/-!
# A076941: a(n) = 2^A066657(n) * 3^A066658(n).

The programs for A076941, there is no canonical definition to state claims against.
-/

/-! ## A076941.P15584421376280126261

`2^A066657(n)*3^A066658(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076941.P15584421376280126261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A066657 n : ℤ) * (3 : ℚ) ^ (A066658 n : ℤ)

end

end A076941.P15584421376280126261

/-! ## A076941.P5831379930439984007

`A000079(A066657(n))*A000244(A066658(n))`
-/

namespace A076941.P5831379930439984007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A066657 n).toNat * A000244 (A066658 n).toNat

end

end A076941.P5831379930439984007

/-!
# A076942: Smallest k > 0 such that n*k+1 is a square.

The programs for A076942, there is no canonical definition to state claims against.
-/

/-! ## A076942.P14514488194707970906

`(A215653(n+1)²-1)/(n+1)`
-/

namespace A076942.P14514488194707970906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215653 (n + 1) ^ 2 - 1 : ℚ) / (n + 1 : ℚ)

end

end A076942.P14514488194707970906

/-! ## A076942.P15834219693236558989

`(A061369(n+1)-1)/(n+1)`
-/

namespace A076942.P15834219693236558989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061369 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A076942.P15834219693236558989

/-! ## A076942.P15030497585887254831

`A132411(A215653(n+1))/(n+1)`
-/

namespace A076942.P15030497585887254831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132411 (A215653 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A076942.P15030497585887254831

/-! ## A076942.P10237823180303344787

`A132411(sqrt(A061369(n+1)))/(n+1)`
-/

namespace A076942.P10237823180303344787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132411 (SequenceMachineLib.roundAway (Real.sqrt (A061369 (n + 1) : ℝ))).toNat : ℚ) / (n + 1 : ℚ)

end

end A076942.P10237823180303344787

/-! ## A076942.P1190976085408982332

`A132411(A070667(n+1)+C(2, n²))/(n+1)`
-/

namespace A076942.P1190976085408982332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132411 (A070667 (n + 1) + (Nat.choose 2 (n ^ 2) : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A076942.P1190976085408982332

/-! ## A076942.P10149671201708601093

`A132411(A070667((n+1)*C(2, n+1)+n+1))/(n+1)`
-/

namespace A076942.P10149671201708601093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132411 (A070667 ((n + 1) * Nat.choose 2 (n + 1) + n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A076942.P10149671201708601093

/-! ## A076942.P7707106696029192660

`A054000(A215653(n+1))/A004277(n+1)`
-/

namespace A076942.P7707106696029192660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054000 (A215653 (n + 1)).toNat : ℚ) / (A004277 (n + 1) : ℚ)

end

end A076942.P7707106696029192660

/-! ## A076942.P11776192356000803863

`A023443(A061369(n+1))/(n+1)`
-/

namespace A076942.P11776192356000803863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (A061369 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A076942.P11776192356000803863

/-!
# A076943: Smallest k > 0 such that n*k + 1 is an n-th power.

The programs for A076943, there is no canonical definition to state claims against.
-/

/-! ## A076943.P6338910302081280807

`(A076944(n+1)-1)/(n+1)`
-/

namespace A076943.P6338910302081280807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076944 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A076943.P6338910302081280807

/-! ## A076943.P16227532955876181291

`A087156(n+1)+A083502(n+1)`
-/

namespace A076943.P16227532955876181291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A083502 (n + 1)

end

end A076943.P16227532955876181291

/-! ## A076943.P10719237954001888360

`A083502(n+1)+char[A193592(n)]+n`
-/

namespace A076943.P10719237954001888360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083502 (n + 1) + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n : ℕ) : ℤ)

end

end A076943.P10719237954001888360

/-! ## A076943.P4691633735414510164

`(A074792(n+1)-1)*A110739(n+1)`
-/

namespace A076943.P4691633735414510164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074792 (n + 1) - 1) * A110739 (n + 1)

end

end A076943.P4691633735414510164

/-! ## A076943.P14441707083527321955

`A023443(A074792(n+1))*A110739(n+1)`
-/

namespace A076943.P14441707083527321955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074792 (n + 1)).toNat * A110739 (n + 1)

end

end A076943.P14441707083527321955

/-!
# A076944: Least number such that n*k+1 is an n-th power.

The programs for A076944, there is no canonical definition to state claims against.
-/

/-! ## A076944.P9191105545795781772

`(n+1)*A076943(n+1)+1`
-/

namespace A076944.P9191105545795781772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076943 (n + 1) + 1

end

end A076944.P9191105545795781772

/-! ## A076944.P14934600461041431645

`A074792(n+1)^(n+1)`
-/

namespace A076944.P14934600461041431645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074792 (n + 1) ^ (n + 1)

end

end A076944.P14934600461041431645

/-! ## A076944.P16374225955076893246

`(A083503(n+1)-floor(acot(n)))^(n+1)`
-/

namespace A076944.P16374225955076893246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083503 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ^ (n + 1)

end

end A076944.P16374225955076893246

/-! ## A076944.P12343210457289172749

`(A083503(n+1)-A000007(n))^(n+1)`
-/

namespace A076944.P12343210457289172749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083503 (n + 1) - A000007 n) ^ (n + 1)

end

end A076944.P12343210457289172749

/-! ## A076944.P11938191362930058152

`(A083503(n+1)-and(1, A000010(n+2)))^(n+1)`
-/

namespace A076944.P11938191362930058152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083503 (n + 1) - Int.land 1 (A000010 (n + 2))) ^ (n + 1)

end

end A076944.P11938191362930058152

/-!
# A076946: Smallest k such that n*(n+1)*(n+2)...*(n+k) >= n^n.

The programs for A076946, there is no canonical definition to state claims against.
-/

/-! ## A076946.P960240594226384465

`round(n-A211520(n+1)/A276112(n+1))`
-/

namespace A076946.P960240594226384465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (A211520 (n + 1) : ℚ) / (A276112 (n + 1) : ℚ))

end

end A076946.P960240594226384465

/-! ## A076946.P17548073554138487045

`1-A285481(A319837(n+1))+n`
-/

namespace A076946.P17548073554138487045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A285481 (A319837 (n + 1)).toNat + (n : ℤ)

end

end A076946.P17548073554138487045

/-! ## A076946.P7639658746507914279

`floor(∑[A226331(n+8)/A226329(n+6)])`
-/

namespace A076946.P7639658746507914279
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226331 (n + 8) : ℚ) / (A226329 (n + 6) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A076946.P7639658746507914279

/-! ## A076946.P6869754095695817995

`A276611(A177339(2*n+3)+round(n*(2*n²+3*n-11)/66))`
-/

namespace A076946.P6869754095695817995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A177339 (2 * n + 3) + SequenceMachineLib.roundAway ((n : ℚ) * (((2 * n ^ 2 + 3 * n : ℤ) - 11 : ℚ) / 66))).toNat

end

end A076946.P6869754095695817995

/-! ## A076946.P3154223687623984859

`round(log2(A255061(n+5)))-3`
-/

namespace A076946.P3154223687623984859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A255061 (n + 5) : ℝ)) - 3

end

end A076946.P3154223687623984859

/-!
# A076947: Smallest k > 0 such that nk+1 is a cube.

The programs for A076947, there is no canonical definition to state claims against.
-/

/-! ## A076947.P18285035694035291514

`(A076989(n+1)-1)/(n+1)`
-/

namespace A076947.P18285035694035291514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076989 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A076947.P18285035694035291514

/-! ## A076947.P3298665211239573242

`(A091733(n+1)^3-1)/(n+1)`
-/

namespace A076947.P3298665211239573242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091733 (n + 1) ^ 3 - 1 : ℚ) / (n + 1 : ℚ)

end

end A076947.P3298665211239573242

/-! ## A076947.P1462775365778985760

`(A028310(A091733(n+1)²)²/A091733(n+1)-1)/(n+1)`
-/

namespace A076947.P1462775365778985760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028310 (A091733 (n + 1) ^ 2).toNat ^ 2 : ℚ) / (A091733 (n + 1) : ℚ) - 1) / (n + 1 : ℚ)

end

end A076947.P1462775365778985760

/-! ## A076947.P577671481516062227

`A023443(A076989(n+1))/(n+1)`
-/

namespace A076947.P577671481516062227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (A076989 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A076947.P577671481516062227

/-!
# A076948: Smallest k such that nk-1 is a square, or 0 if no such number exists.

The programs for A076948, there is no canonical definition to state claims against.
-/

/-! ## A076948.P12666906265120550593

`and(2-char[n²], A155757(A155755(n)))`
-/

namespace A076948.P12666906265120550593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A155757 (A155755 n).toNat)

end

end A076948.P12666906265120550593

/-! ## A076948.P17553409317723631636

`and(A155757(A155755(n)), A169695(n))`
-/

namespace A076948.P17553409317723631636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155757 (A155755 n).toNat) (A169695 n)

end

end A076948.P17553409317723631636

/-! ## A076948.P16683275990973628018

`and(A169695(n), A181496(A181499(n)))`
-/

namespace A076948.P16683275990973628018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169695 n) (A181496 (A181499 n).toNat)

end

end A076948.P16683275990973628018

/-! ## A076948.P5175882249096096298

`A060128(A000089(n+1)^A060143(n))`
-/

namespace A076948.P5175882249096096298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (SequenceMachineLib.roundAway ((A000089 (n + 1) : ℚ) ^ (A060143 n : ℤ))).toNat

end

end A076948.P5175882249096096298

/-! ## A076948.P10088209469836371823

`and(A033630(n), A325680(n))`
-/

namespace A076948.P10088209469836371823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033630 n) (A325680 n)

end

end A076948.P10088209469836371823

/-!
# A076950: Smallest k such that nk-1 is a cube.

The programs for A076950, there is no canonical definition to state claims against.
-/

/-! ## A076950.P9320115830290767988

`((1-n)²+n)%A335485(A329739(n))`
-/

namespace A076950.P9320115830290767988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) (A335485 (A329739 n).toNat)

end

end A076950.P9320115830290767988

/-! ## A076950.P3319909512288824407

`A002061(n)%A080257(A199943(3*n+4))`
-/

namespace A076950.P3319909512288824407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002061 n) (A080257 (A199943 (3 * n + 4)).toNat)

end

end A076950.P3319909512288824407

/-!
# A076951: Smallest k > 0 such that nk-1 is an n-th power, or 0 if no such number exists.

The programs for A076951, there is no canonical definition to state claims against.
-/

/-! ## A076951.P15087871037467721257

`floor((A076952(n+1)+1)/(n+1))`
-/

namespace A076951.P15087871037467721257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076952 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A076951.P15087871037467721257

/-! ## A076951.P6138718317247605755

`C(A093411(A081209(n)), floor(n^(n+1)/(n+1)))`
-/

namespace A076951.P6138718317247605755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A093411 (A081209 n).toNat).toNat ⌊(n ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A076951.P6138718317247605755

/-! ## A076951.P9599870694006700745

`C(A081209(n), A048994(A266380(n)))`
-/

namespace A076951.P9599870694006700745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A081209 n).toNat (A048994 (A266380 n).toNat).toNat

end

end A076951.P9599870694006700745

/-!
# A076952: n-th power associated with A076951, or 0 if no such number exists.

The programs for A076952, there is no canonical definition to state claims against.
-/

/-! ## A076952.P7269483884603788316

`A130891(n)^A032555(A109395(n+1))`
-/

namespace A076952.P7269483884603788316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130891 n : ℚ) ^ (A032555 (A109395 (n + 1)).toNat : ℤ)

end

end A076952.P7269483884603788316

/-! ## A076952.P7957604748475528357

`A130891(n)^A006530(A032555(n+1))`
-/

namespace A076952.P7957604748475528357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130891 n : ℚ) ^ (A006530 (A032555 (n + 1)).toNat : ℤ)

end

end A076952.P7957604748475528357

/-! ## A076952.P878598966831984608

`A130891(n)^A006530(A032559(n+1))`
-/

namespace A076952.P878598966831984608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130891 n : ℚ) ^ (A006530 (A032559 (n + 1)).toNat : ℤ)

end

end A076952.P878598966831984608

/-! ## A076952.P12269544922973235553

`A130891(n)^A014963(A276142(n+1))`
-/

namespace A076952.P12269544922973235553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130891 n : ℚ) ^ (A014963 (A276142 (n + 1)).toNat : ℤ)

end

end A076952.P12269544922973235553

/-!
# A076953: Array T(m,n) = phi(mn)-phi(m)phi(n) (m,n >= 1), read by antidiagonals.

The programs for A076953, the canonical program `A076953.P18252334485820112232` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076953 has offset 1).

The definition of A076953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076953.P18252334485820112232

`A000010(A003990(n+1))*A051953(A003989(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076953

/-- `A000010(A003990(n+1))*A051953(A003989(n+1))` -/
def P18252334485820112232.Spec : Prop :=
  ∀ n, P18252334485820112232.a n = A076953 (n + 1)

theorem P18252334485820112232.correct : P18252334485820112232.Spec := by
  intro n
  simp only [A076953, Nat.add_sub_cancel]

end A076953

/-! ## A076953.P7677227235407382228

`A000010(A003991(n+1))-A054526(n+1)*A106476(n)`
-/

namespace A076953.P7677227235407382228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003991 (n + 1)).toNat - A054526 (n + 1) * A106476 n

end

end A076953.P7677227235407382228

namespace A076953

/-- `A000010(A003991(n+1))-A054526(n+1)*A106476(n)` -/
def P7677227235407382228.Spec : Prop :=
  ∀ n, P7677227235407382228.a n = A076953 (n + 1)

end A076953

/-! ## A076953.P14629027733276756561

`A000010(A003991(n+1))-A113793(n+1)`
-/

namespace A076953.P14629027733276756561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003991 (n + 1)).toNat - A113793 (n + 1)

end

end A076953.P14629027733276756561

namespace A076953

/-- `A000010(A003991(n+1))-A113793(n+1)` -/
def P14629027733276756561.Spec : Prop :=
  ∀ n, P14629027733276756561.a n = A076953 (n + 1)

end A076953

/-! ## A076953.P12761037658754637600

`A003989(n+1)-A008683(A202917(n))`
-/

namespace A076953.P12761037658754637600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1) - A008683 (A202917 n).toNat

end

end A076953.P12761037658754637600

namespace A076953

/-- `A003989(n+1)-A008683(A202917(n))` -/
def P12761037658754637600.Spec : Prop :=
  ∀ n, P12761037658754637600.a n = A076953 (n + 1)

end A076953

/-! ## A076953.P8033494007769988441

`A287957(n+1)-A008683(A202917(n))`
-/

namespace A076953.P8033494007769988441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287957 (n + 1) - A008683 (A202917 n).toNat

end

end A076953.P8033494007769988441

namespace A076953

/-- `A287957(n+1)-A008683(A202917(n))` -/
def P8033494007769988441.Spec : Prop :=
  ∀ n, P8033494007769988441.a n = A076953 (n + 1)

end A076953

/-!
# A076954: a(n) = Product_{i=1..n} prime(i)^i.

The programs for A076954, there is no canonical definition to state claims against.
-/

/-! ## A076954.P644472546751168717

`∏[A307539(n)]`
-/

namespace A076954.P644472546751168717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076954.P644472546751168717

/-! ## A076954.P474844876310472048

`A344530(2^n-1)`
-/

namespace A076954.P474844876310472048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344530 (2 ^ n - 1)

end

end A076954.P474844876310472048

/-! ## A076954.P12485021236683545865

`∏[record[A090884(n+1)]]`
-/

namespace A076954.P12485021236683545865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090884 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076954.P12485021236683545865

/-! ## A076954.P13219601457892405199

`∏[record[A006530(n+1)]^n]`
-/

namespace A076954.P13219601457892405199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076954.P13219601457892405199

/-! ## A076954.P9826265098411859725

`∏[record[A020639(n+1)]^n]`
-/

namespace A076954.P9826265098411859725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076954.P9826265098411859725

/-!
# A076955: a(n) = Product_{i=1..n} i^prime(i).

The programs for A076955, there is no canonical definition to state claims against.
-/

/-! ## A076955.P17862578883846988445

`∏[A062481(n+1)]`
-/

namespace A076955.P17862578883846988445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076955.P17862578883846988445

/-! ## A076955.P632332036577898540

`∏[(n+1)^A000040(n+1)]`
-/

namespace A076955.P632332036577898540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076955.P632332036577898540

/-! ## A076955.P17032995513950284320

`∏[(n+1)^record[A006530(n+2)]]`
-/

namespace A076955.P17032995513950284320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076955.P17032995513950284320

/-!
# A076956: Smallest k^2 such that there are exactly n primes between k^2 and (k+1)^2.

The programs for A076956, there is no canonical definition to state claims against.
-/

/-! ## A076956.P11453222756336182130

`A076957(n+2)²`
-/

namespace A076956.P11453222756336182130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (n + 2) ^ 2

end

end A076956.P11453222756336182130

/-! ## A076956.P4559293755556502726

`A076957(A020725(n+1))^2`
-/

namespace A076956.P4559293755556502726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (A020725 (n + 1)).toNat ^ 2

end

end A076956.P4559293755556502726

/-! ## A076956.P5255207085330667617

`A076957(n+2)^(2%A010017(n))`
-/

namespace A076956.P5255207085330667617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076957 (n + 2) : ℚ) ^ (Int.tmod 2 (A010017 n) : ℤ)

end

end A076956.P5255207085330667617

/-! ## A076956.P12559713775154338848

`A076957(n+2)^A020639(2*(n+1))`
-/

namespace A076956.P12559713775154338848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076957 (n + 2) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A076956.P12559713775154338848

/-! ## A076956.P6036901369391328299

`A076957(A020725(n+1))*A076957(n+2)`
-/

namespace A076956.P6036901369391328299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (A020725 (n + 1)).toNat * A076957 (n + 2)

end

end A076956.P6036901369391328299

/-! ## A076956.P10386853799799584290

`A076957(n+2)^A000005(A006530(n+1))`
-/

namespace A076956.P10386853799799584290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076957 (n + 2) : ℚ) ^ (A000005 (A006530 (n + 1)).toNat : ℤ)

end

end A076956.P10386853799799584290

/-! ## A076956.P14698483188591456697

`A076957(n+2)^A000005(A000040(n+1))`
-/

namespace A076956.P14698483188591456697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076957 (n + 2) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A076956.P14698483188591456697

/-! ## A076956.P11246082931227141948

`A076957(n+2)^A000005(A106856(n+1))`
-/

namespace A076956.P11246082931227141948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076957 (n + 2) : ℚ) ^ (A000005 (A106856 (n + 1)).toNat : ℤ)

end

end A076956.P11246082931227141948

/-! ## A076956.P9064834094092059154

`A076957(n+2)^A000005(A054805(n+1))`
-/

namespace A076956.P9064834094092059154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076957 (n + 2) : ℚ) ^ (A000005 (A054805 (n + 1)).toNat : ℤ)

end

end A076956.P9064834094092059154

/-! ## A076956.P13349329903227069036

`A076957(n+2)^A000005(A122565(n+1))`
-/

namespace A076956.P13349329903227069036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076957 (n + 2) : ℚ) ^ (A000005 (A122565 (n + 1)).toNat : ℤ)

end

end A076956.P13349329903227069036

/-! ## A076956.P9705785760164092707

`A000290(A076957(2*(n+1)-n))`
-/

namespace A076956.P9705785760164092707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A076957 (2 * (n + 1) - n)).toNat

end

end A076956.P9705785760164092707

/-! ## A076956.P14814374008035778245

`A000290(A076957(n+2)%Δ[A061235(n)])`
-/

namespace A076956.P14814374008035778245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A076957 (n + 2)) (f1 (n + 1) - f1 n)).toNat

end

end A076956.P14814374008035778245

/-! ## A076956.P7332987600155169262

`A076921(2*A076957(n+2))`
-/

namespace A076956.P7332987600155169262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (2 * A076957 (n + 2)).toNat

end

end A076956.P7332987600155169262

/-!
# A076957: Smallest k such that there are exactly n primes strictly between k^2 and (k+1)^2.

The programs for A076957, there is no canonical definition to state claims against.
-/

/-! ## A076957.P1235263815515830124

`sqrt(A076956(n+2))`
-/

namespace A076957.P1235263815515830124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076956 (n + 2) : ℝ)

end

end A076957.P1235263815515830124

/-! ## A076957.P15365924327590834961

`A000027(root(A076956(n+2), 2))`
-/

namespace A076957.P15365924327590834961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A076956 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A076957.P15365924327590834961

/-! ## A076957.P17130305078681055911

`root(A076956(n+2), A000007(n)+2)`
-/

namespace A076957.P17130305078681055911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076956 (n + 2) : ℝ) ^ (1 / (A000007 n + 2 : ℝ))

end

end A076957.P17130305078681055911

/-! ## A076957.P5166469599909820120

`root(A076956(n+2), 2%A187873(n))`
-/

namespace A076957.P5166469599909820120
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076956 (n + 2) : ℝ) ^ (1 / (Int.tmod 2 (A187873 n) : ℝ))

end

end A076957.P5166469599909820120

/-! ## A076957.P13092276854659121030

`root(A076956(n+2), gcd(2, A005843(n)))`
-/

namespace A076957.P13092276854659121030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076956 (n + 2) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A076957.P13092276854659121030

/-! ## A076957.P17544845859899273038

`root(A076956(n+2), A010017(n)%3)`
-/

namespace A076957.P17544845859899273038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076956 (n + 2) : ℝ) ^ (1 / (Int.tmod (A010017 n) 3 : ℝ))

end

end A076957.P17544845859899273038

/-! ## A076957.P4170555930971238920

`A000006(A000720(A076956(n+2))+1)`
-/

namespace A076957.P4170555930971238920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A000720 (A076956 (n + 2)).toNat + 1).toNat

end

end A076957.P4170555930971238920

/-!
# A076958: Number of primes p with 2^n < p < 3^n.

The programs for A076958, there is no canonical definition to state claims against.
-/

/-! ## A076958.P3472241736446492682

`A163825(n+1)%(3^n)`
-/

namespace A076958.P3472241736446492682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163825 (n + 1)) (3 ^ n : ℤ)

end

end A076958.P3472241736446492682

/-! ## A076958.P13260043297965619190

`A163825(n+1)-A000007(n)`
-/

namespace A076958.P13260043297965619190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163825 (n + 1) - A000007 n

end

end A076958.P13260043297965619190

/-! ## A076958.P2888814062442543186

`A163825(n+1)-A088157(n)`
-/

namespace A076958.P2888814062442543186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163825 (n + 1) - A088157 n

end

end A076958.P2888814062442543186

/-! ## A076958.P18186119493235187466

`A163825(n+1)-A097479(n)`
-/

namespace A076958.P18186119493235187466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163825 (n + 1) - A097479 n

end

end A076958.P18186119493235187466

/-! ## A076958.P18022358387725979765

`A163825(n+1)-A112315(n)`
-/

namespace A076958.P18022358387725979765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163825 (n + 1) - A112315 n

end

end A076958.P18022358387725979765

/-!
# A076959: Number of primes between 3^n and 4^n.

The programs for A076959, the canonical program `A076959.P2642211357967656886` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076959 has offset 1).

The definition of A076959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076959.P2642211357967656886

`A086680(n+1)-A055729(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076959

/-- `A086680(n+1)-A055729(n+1)` -/
def P2642211357967656886.Spec : Prop :=
  ∀ n, P2642211357967656886.a n = A076959 (n + 1)

theorem P2642211357967656886.correct : P2642211357967656886.Spec := by
  intro n
  simp only [A076959, Nat.add_sub_cancel]

end A076959

/-! ## A076959.P13353056612360532986

`A000720(4^(n+1))-A000720(3^(n+1))`
-/

namespace A076959.P13353056612360532986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 ^ (n + 1)) - A000720 (3 ^ (n + 1))

end

end A076959.P13353056612360532986

namespace A076959

/-- `A000720(4^(n+1))-A000720(3^(n+1))` -/
def P13353056612360532986.Spec : Prop :=
  ∀ n, P13353056612360532986.a n = A076959 (n + 1)

end A076959

/-! ## A076959.P770916411621384163

`A007053(2*(n+1))-A055729(n+1)`
-/

namespace A076959.P770916411621384163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (2 * (n + 1)) - A055729 (n + 1)

end

end A076959.P770916411621384163

namespace A076959

/-- `A007053(2*(n+1))-A055729(n+1)` -/
def P770916411621384163.Spec : Prop :=
  ∀ n, P770916411621384163.a n = A076959 (n + 1)

end A076959

/-! ## A076959.P12987152330912277788

`A007053(n+1)+A248957(n+1)-A055729(n+1)`
-/

namespace A076959.P12987152330912277788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1) + (A248957 (n + 1) - A055729 (n + 1))

end

end A076959.P12987152330912277788

namespace A076959

/-- `A007053(n+1)+A248957(n+1)-A055729(n+1)` -/
def P12987152330912277788.Spec : Prop :=
  ∀ n, P12987152330912277788.a n = A076959 (n + 1)

end A076959

/-! ## A076959.P7437081952942192998

`A060967(A008574(n+1))-A055729(n+1)`
-/

namespace A076959.P7437081952942192998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (A008574 (n + 1)).toNat - A055729 (n + 1)

end

end A076959.P7437081952942192998

namespace A076959

/-- `A060967(A008574(n+1))-A055729(n+1)` -/
def P7437081952942192998.Spec : Prop :=
  ∀ n, P7437081952942192998.a n = A076959 (n + 1)

end A076959

/-!
# A076960: a(n) is the number of primes between n! and (2n)!.

The programs for A076960, there is no canonical definition to state claims against.
-/

/-! ## A076960.P8399455901389893596

`A003604(A103517(n))-A003604(n+1)`
-/

namespace A076960.P8399455901389893596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (A103517 n).toNat - A003604 (n + 1)

end

end A076960.P8399455901389893596

/-!
# A076961: Smallest multiple of n with prime(n) divisors, or 0 if no such number exists.

The programs for A076961, there is no canonical definition to state claims against.
-/

/-! ## A076961.P4114003586586073788

`(n+1)^A049265(a(n-1))` with `a(0)=2`
-/

namespace A076961.P4114003586586073788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℚ) ^ (A049265 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℤ)

end

end A076961.P4114003586586073788

/-!
# A076962: Smallest multiple of prime(n) with n divisors, or 0 if no such number exists.

The programs for A076962, there is no canonical definition to state claims against.
-/

/-! ## A076962.P5005529800040234796

`A073916(n+1)%A061965(n+1)`
-/

namespace A076962.P5005529800040234796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073916 (n + 1)) (A061965 (n + 1))

end

end A076962.P5005529800040234796

/-!
# A076963: Lexicographically earliest increasing sequence of relatively prime numbers with nondecreasing number of divisors. a(0) = 1, tau(a(n+1)) >= tau(a(n)) and GCD(a(n),a(n+1)) = 1.

The programs for A076963, there is no canonical definition to state claims against.
-/

/-! ## A076963.P1688690927054984758

`A324802(A128570(n+2))+A098548(n+1)`
-/

namespace A076963.P1688690927054984758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (A128570 (n + 2)).toNat + A098548 (n + 1)

end

end A076963.P1688690927054984758

/-!
# A076965: a(1) = 2; thereafter a(n) is the smallest number coprime to a(n-1) and having a(n-1) divisors.

The programs for A076965, there is no canonical definition to state claims against.
-/

/-! ## A076965.P3412947641107849741

`A136641(a(n-1))` with `a(0)=2`
-/

namespace A076965.P3412947641107849741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A136641 (a (n - 1)).toNat

end

end A076965.P3412947641107849741

/-!
# A076966: Perfect powers (index > 1) whose digits can be arranged in ascending order or as a substring of 123456789012345678901234567890123...

The programs for A076966, there is no canonical definition to state claims against.
-/

/-! ## A076966.P15250481276170743748

`∩[A001597(n+1), A376300(n+1)]`
-/

namespace A076966.P15250481276170743748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076966.P15250481276170743748

/-! ## A076966.P4890236054432648650

`∩[A075309(n+1), A376300(n+1)]`
-/

namespace A076966.P4890236054432648650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076966.P4890236054432648650

/-! ## A076966.P11608963684642411608

`∩[A090516(n+1), A376300(n+1)]`
-/

namespace A076966.P11608963684642411608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076966.P11608963684642411608

/-! ## A076966.P9220624843333416288

`∩[A075309(n+1), A252490(n+1)]`
-/

namespace A076966.P9220624843333416288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076966.P9220624843333416288

/-! ## A076966.P2461627201801722184

`filter[A376300(n+2), A075802(#)]`
-/

namespace A076966.P2461627201801722184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A076966.P2461627201801722184

/-!
# A076967: a(1) = 1, a(n+1) is the smallest square greater than the n-th partial sum.

The programs for A076967, the canonical program `A076967.P5800900216230900987` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076967 has offset 1).

The definition of A076967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076967.P5502493762702927551

`A076968(n+1)²`
-/

namespace A076967.P5502493762702927551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (n + 1) ^ 2

end

end A076967.P5502493762702927551

namespace A076967

/-- `A076968(n+1)²` -/
def P5502493762702927551.Spec : Prop :=
  ∀ n, P5502493762702927551.a n = A076967 (n + 1)

end A076967

/-! ## A076967.P15028195596075157842

`A076968(2*(n+1)-(n+1))^2`
-/

namespace A076967.P15028195596075157842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (2 * (n + 1) - (n + 1)) ^ 2

end

end A076967.P15028195596075157842

namespace A076967

/-- `A076968(2*(n+1)-(n+1))^2` -/
def P15028195596075157842.Spec : Prop :=
  ∀ n, P15028195596075157842.a n = A076967 (n + 1)

end A076967

/-! ## A076967.P16846456587233509361

`A076968(A000027(n+1))*A076968(n+1)`
-/

namespace A076967.P16846456587233509361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076968 (A000027 (n + 1)).toNat * A076968 (n + 1)

end

end A076967.P16846456587233509361

namespace A076967

/-- `A076968(A000027(n+1))*A076968(n+1)` -/
def P16846456587233509361.Spec : Prop :=
  ∀ n, P16846456587233509361.a n = A076967 (n + 1)

end A076967

/-! ## A076967.P5461910619272003749

`A076968(n+1)%A258889(n+1)*A076968(n+1)`
-/

namespace A076967.P5461910619272003749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076968 (n + 1)) (A258889 (n + 1)) * A076968 (n + 1)

end

end A076967.P5461910619272003749

namespace A076967

/-- `A076968(n+1)%A258889(n+1)*A076968(n+1)` -/
def P5461910619272003749.Spec : Prop :=
  ∀ n, P5461910619272003749.a n = A076967 (n + 1)

end A076967

/-! ## A076967.P16698104760153460389

`(A219839(A000040(n+1))+A076968(n+1))*A076968(n+1)`
-/

namespace A076967.P16698104760153460389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A219839 (A000040 (n + 1)).toNat + A076968 (n + 1)) * A076968 (n + 1)

end

end A076967.P16698104760153460389

namespace A076967

/-- `(A219839(A000040(n+1))+A076968(n+1))*A076968(n+1)` -/
def P16698104760153460389.Spec : Prop :=
  ∀ n, P16698104760153460389.a n = A076967 (n + 1)

end A076967

/-! ## A076967.P5800900216230900987

`Δ[a(n-1)+ceil(sqrt(a(n-1)))²]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076967

/-- `Δ[a(n-1)+ceil(sqrt(a(n-1)))²]` -/
def P5800900216230900987.Spec : Prop :=
  ∀ n, P5800900216230900987.a n = A076967 (n + 1)

theorem P5800900216230900987.correct : P5800900216230900987.Spec := by
  intro n
  simp only [A076967, Nat.add_sub_cancel]

end A076967

/-!
# A076968: a(n) = sqrt(A076967(n)).

The programs for A076968, the canonical program `A076968.P6330857276184368086` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076968 has offset 1).

The definition of A076968 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076967, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076968.P6330857276184368086

`sqrt(A076967(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A076968

/-- `sqrt(A076967(n+1))` -/
def P6330857276184368086.Spec : Prop :=
  ∀ n, P6330857276184368086.a n = (A076968 (n + 1) : ℝ)

end A076968

/-! ## A076968.P7976512701666261455

`root(A076967(n+1), A000034(2*n+1))`
-/

namespace A076968.P7976512701666261455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076967 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A076968.P7976512701666261455

namespace A076968

/-- `root(A076967(n+1), A000034(2*n+1))` -/
def P7976512701666261455.Spec : Prop :=
  ∀ n, P7976512701666261455.a n = (A076968 (n + 1) : ℝ)

end A076968

/-! ## A076968.P5948970368912732300

`root(A076967(n+1), A010673(2*n+1))`
-/

namespace A076968.P5948970368912732300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076967 (n + 1) : ℝ) ^ (1 / (A010673 (2 * n + 1) : ℝ))

end

end A076968.P5948970368912732300

namespace A076968

/-- `root(A076967(n+1), A010673(2*n+1))` -/
def P5948970368912732300.Spec : Prop :=
  ∀ n, P5948970368912732300.a n = (A076968 (n + 1) : ℝ)

end A076968

/-! ## A076968.P6325263522634088201

`root(A076967(n+1), A001316(A001316(n)))`
-/

namespace A076968.P6325263522634088201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076967 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A076968.P6325263522634088201

namespace A076968

/-- `root(A076967(n+1), A001316(A001316(n)))` -/
def P6325263522634088201.Spec : Prop :=
  ∀ n, P6325263522634088201.a n = (A076968 (n + 1) : ℝ)

end A076968

/-!
# A076969: a(1) = 1, a(n+1)= smallest cube greater than the n-th partial sum.

The programs for A076969, there is no canonical definition to state claims against.
-/

/-! ## A076969.P3645939242659617283

`A076970(n+1)^3`
-/

namespace A076969.P3645939242659617283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076970 (n + 1) ^ 3

end

end A076969.P3645939242659617283

/-! ## A076969.P6461289641274597418

`A076970(A000027(n+1))²*A076970(n+1)`
-/

namespace A076969.P6461289641274597418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076970 (A000027 (n + 1)).toNat ^ 2 * A076970 (n + 1)

end

end A076969.P6461289641274597418

/-! ## A076969.P17648487724438179622

`A000578(A076970(n+1))`
-/

namespace A076969.P17648487724438179622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A076970 (n + 1)).toNat

end

end A076969.P17648487724438179622

/-! ## A076969.P17087019619449195220

`∑[A105224(2*A225393(n))]^3`
-/

namespace A076969.P17087019619449195220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (2 * A225393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A076969.P17087019619449195220

/-! ## A076969.P10702394334671826365

`A055086(A100482(n+1)+n)^3`
-/

namespace A076969.P10702394334671826365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A100482 (n + 1) + (n : ℤ)).toNat ^ 3

end

end A076969.P10702394334671826365

/-!
# A076970: a(n) = A076969(n)^(1/3).

The programs for A076970, there is no canonical definition to state claims against.
-/

/-! ## A076970.P7988951851138021105

`A076969(n+1)^(1/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076970.P7988951851138021105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076969 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A076970.P7988951851138021105

/-! ## A076970.P17416476031155318815

`root(A076969(n+1), 3)`
-/

namespace A076970.P17416476031155318815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076969 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A076970.P17416476031155318815

/-! ## A076970.P4366851385359241079

`∑[A105224(2*A225393(n))]`
-/

namespace A076970.P4366851385359241079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (2 * A225393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076970.P4366851385359241079

/-! ## A076970.P757924988164986168

`A055086(A100482(n+1)+n)`
-/

namespace A076970.P757924988164986168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A100482 (n + 1) + (n : ℤ)).toNat

end

end A076970.P757924988164986168

/-! ## A076970.P9641926155973440400

`A003056(A265075(n))`
-/

namespace A076970.P9641926155973440400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A265075 n).toNat

end

end A076970.P9641926155973440400

/-!
# A076971: a(1) = 1, a(n+1)= smallest triangular number greater than the n-th partial sum.

The programs for A076971, there is no canonical definition to state claims against.
-/

/-! ## A076971.P18386780196366335110

`C(A076972(n+1)+1, 2)`
-/

namespace A076971.P18386780196366335110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A076972 (n + 1) + 1).toNat 2

end

end A076971.P18386780196366335110

/-! ## A076971.P14614708877265319712

`A000217(A076972(n+1))`
-/

namespace A076971.P14614708877265319712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A076972 (n + 1)).toNat

end

end A076971.P14614708877265319712

/-! ## A076971.P3638986265457002450

`A161680(A076972(n+1)+1)`
-/

namespace A076971.P3638986265457002450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A076972 (n + 1) + 1).toNat

end

end A076971.P3638986265457002450

/-! ## A076971.P9211354145663848711

`A179865(A076972(n+1)+1)`
-/

namespace A076971.P9211354145663848711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A076972 (n + 1) + 1).toNat

end

end A076971.P9211354145663848711

/-! ## A076971.P17559944450214150150

`A000124(A076972(n+1))-A007318(∑[n])`
-/

namespace A076971.P17559944450214150150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A076972 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076971.P17559944450214150150

/-!
# A076972: a(n) = index of the triangular number A076971(n).

The programs for A076972, there is no canonical definition to state claims against.
-/

/-! ## A076972.P4310405807291038592

`floor(sqrt(∑[A076971(n+1)]))`
-/

namespace A076972.P4310405807291038592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076972.P4310405807291038592

/-! ## A076972.P4614845276247633418

`A195119(a(n-2))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A076972.P4614845276247633418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A195119 (a (n - 2)).toNat + a (n - 1)

end

end A076972.P4614845276247633418

/-! ## A076972.P11088880055393294898

`A080098(A076971(n+1))`
-/

namespace A076972.P11088880055393294898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A076971 (n + 1)).toNat

end

end A076972.P11088880055393294898

/-! ## A076972.P15907089859976851505

`floor(sqrt(sqrt(A091411(2*n+3))))`
-/

namespace A076972.P15907089859976851505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A091411 (2 * n + 3) : ℝ))⌋

end

end A076972.P15907089859976851505

/-! ## A076972.P3813341348421376870

`A172471(A265381(n))`
-/

namespace A076972.P3813341348421376870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A265381 n).toNat

end

end A076972.P3813341348421376870

/-!
# A076973: Starting with 2, largest prime divisor of the sum of all previous terms.

The programs for A076973, the canonical program `A076973.P10635609584503843541` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076973 has offset 1).

The definition of A076973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076973.P10635609584503843541

`A007918(A076272(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A076973

/-- `A007918(A076272(n+1))` -/
def P10635609584503843541.Spec : Prop :=
  ∀ n, P10635609584503843541.a n = A076973 (n + 1)

theorem P10635609584503843541.correct : P10635609584503843541.Spec := by
  intro n
  simp only [A076973, Nat.add_sub_cancel]

end A076973

/-! ## A076973.P12770997187426363483

`A076272(A028310(n)+1)`
-/

namespace A076973.P12770997187426363483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A028310 n + 1).toNat

end

end A076973.P12770997187426363483

namespace A076973

/-- `A076272(A028310(n)+1)` -/
def P12770997187426363483.Spec : Prop :=
  ∀ n, P12770997187426363483.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P9663552580821058679

`A076272(A348776(n+1))`
-/

namespace A076973.P9663552580821058679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A348776 (n + 1)).toNat

end

end A076973.P9663552580821058679

namespace A076973

/-- `A076272(A348776(n+1))` -/
def P9663552580821058679.Spec : Prop :=
  ∀ n, P9663552580821058679.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P3765759838998992597

`A076272(A054977(n)+n)`
-/

namespace A076973.P3765759838998992597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A054977 n + (n : ℤ)).toNat

end

end A076973.P3765759838998992597

namespace A076973

/-- `A076272(A054977(n)+n)` -/
def P3765759838998992597.Spec : Prop :=
  ∀ n, P3765759838998992597.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P4762419738208659221

`A006530(2*A076272(n+1))`
-/

namespace A076973.P4762419738208659221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A076272 (n + 1)).toNat

end

end A076973.P4762419738208659221

namespace A076973

/-- `A006530(2*A076272(n+1))` -/
def P4762419738208659221.Spec : Prop :=
  ∀ n, P4762419738208659221.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P9787206248113860564

`A006530(lcm(2, A076272(n+1)))`
-/

namespace A076973.P9787206248113860564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A076272 (n + 1)))

end

end A076973.P9787206248113860564

namespace A076973

/-- `A006530(lcm(2, A076272(n+1)))` -/
def P9787206248113860564.Spec : Prop :=
  ∀ n, P9787206248113860564.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P15312566078931504252

`A076272(n+1)+A000007(n)`
-/

namespace A076973.P15312566078931504252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (n + 1) + A000007 n

end

end A076973.P15312566078931504252

namespace A076973

/-- `A076272(n+1)+A000007(n)` -/
def P15312566078931504252.Spec : Prop :=
  ∀ n, P15312566078931504252.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P2337793885241893963

`A076272(A004280(n+1)+2-n)`
-/

namespace A076973.P2337793885241893963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A004280 (n + 1) + (2 - (n : ℤ))).toNat

end

end A076973.P2337793885241893963

namespace A076973

/-- `A076272(A004280(n+1)+2-n)` -/
def P2337793885241893963.Spec : Prop :=
  ∀ n, P2337793885241893963.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P17073882371202124085

`A076272(A051755(n+2)-(n+1))`
-/

namespace A076973.P17073882371202124085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A051755 (n + 2) - (n + 1 : ℤ)).toNat

end

end A076973.P17073882371202124085

namespace A076973

/-- `A076272(A051755(n+2)-(n+1))` -/
def P17073882371202124085.Spec : Prop :=
  ∀ n, P17073882371202124085.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P16537791485151922785

`A076272(∏{p}[2*A076272(n+1), #])`
-/

namespace A076973.P16537791485151922785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A076973.P16537791485151922785

namespace A076973

/-- `A076272(∏{p}[2*A076272(n+1), #])` -/
def P16537791485151922785.Spec : Prop :=
  ∀ n, P16537791485151922785.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P17714873657018577041

`A006530(A076272(n+1)+A076272(n+1))`
-/

namespace A076973.P17714873657018577041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076272 (n + 1) + A076272 (n + 1)).toNat

end

end A076973.P17714873657018577041

namespace A076973

/-- `A006530(A076272(n+1)+A076272(n+1))` -/
def P17714873657018577041.Spec : Prop :=
  ∀ n, P17714873657018577041.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P9774265995164737549

`A000010(A036441(n+1)-A076271(n+1))+1`
-/

namespace A076973.P9774265995164737549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A036441 (n + 1) - A076271 (n + 1)).toNat + 1

end

end A076973.P9774265995164737549

namespace A076973

/-- `A000010(A036441(n+1)-A076271(n+1))+1` -/
def P9774265995164737549.Spec : Prop :=
  ∀ n, P9774265995164737549.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P3053874410814805431

`A014683(2*A076272(n+1))-A076272(n+1)`
-/

namespace A076973.P3053874410814805431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (2 * A076272 (n + 1)).toNat - A076272 (n + 1)

end

end A076973.P3053874410814805431

namespace A076973

/-- `A014683(2*A076272(n+1))-A076272(n+1)` -/
def P3053874410814805431.Spec : Prop :=
  ∀ n, P3053874410814805431.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P14513137831355066027

`A000010(gcd(A036441(n+1), A076271(n+1)))+1`
-/

namespace A076973.P14513137831355066027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (A036441 (n + 1)) (A076271 (n + 1))) + 1

end

end A076973.P14513137831355066027

namespace A076973

/-- `A000010(gcd(A036441(n+1), A076271(n+1)))+1` -/
def P14513137831355066027.Spec : Prop :=
  ∀ n, P14513137831355066027.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P7911383088376700761

`A076272(A254667(n+1))`
-/

namespace A076973.P7911383088376700761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A254667 (n + 1)).toNat

end

end A076973.P7911383088376700761

namespace A076973

/-- `A076272(A254667(n+1))` -/
def P7911383088376700761.Spec : Prop :=
  ∀ n, P7911383088376700761.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P4978938364203002338

`Δ[A076271(n+1)%A076292(n+1)]`
-/

namespace A076973.P4978938364203002338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076271 (n + 1)) (A076292 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076973.P4978938364203002338

namespace A076973

/-- `Δ[A076271(n+1)%A076292(n+1)]` -/
def P4978938364203002338.Spec : Prop :=
  ∀ n, P4978938364203002338.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P10804367172487807777

`A076272(n+1)+A036441(n+2)-A123581(n+1)`
-/

namespace A076973.P10804367172487807777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (n + 1) + (A036441 (n + 2) - A123581 (n + 1))

end

end A076973.P10804367172487807777

namespace A076973

/-- `A076272(n+1)+A036441(n+2)-A123581(n+1)` -/
def P10804367172487807777.Spec : Prop :=
  ∀ n, P10804367172487807777.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P4607858469045783233

`A185012(n+2)+A076272(n+1)`
-/

namespace A076973.P4607858469045783233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 2) + A076272 (n + 1)

end

end A076973.P4607858469045783233

namespace A076973

/-- `A185012(n+2)+A076272(n+1)` -/
def P4607858469045783233.Spec : Prop :=
  ∀ n, P4607858469045783233.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P14946310779642065315

`A051664(2*A076272(n+1))`
-/

namespace A076973.P14946310779642065315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (2 * A076272 (n + 1)).toNat

end

end A076973.P14946310779642065315

namespace A076973

/-- `A051664(2*A076272(n+1))` -/
def P14946310779642065315.Spec : Prop :=
  ∀ n, P14946310779642065315.a n = A076973 (n + 1)

end A076973

/-! ## A076973.P5336635933015137059

`A233583(A076272(n+1)+1)`
-/

namespace A076973.P5336635933015137059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A076272 (n + 1) + 1).toNat

end

end A076973.P5336635933015137059

namespace A076973

/-- `A233583(A076272(n+1)+1)` -/
def P5336635933015137059.Spec : Prop :=
  ∀ n, P5336635933015137059.a n = A076973 (n + 1)

end A076973

/-!
# A076974: Increasing sequence where each number is unequal to 2 mod all previous numbers.

The programs for A076974, there is no canonical definition to state claims against.
-/

/-! ## A076974.P10499233093543538347

`A238327(n)+A008683(record[A004248(n)])`
-/

namespace A076974.P10499233093543538347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238327 n + A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076974.P10499233093543538347

/-! ## A076974.P9790934547856960856

`A387853(a(n-1))+2` with `a(0)=2, a(1)=3`
-/

namespace A076974.P9790934547856960856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A387853 (a (n - 1)).toNat + 2

end

end A076974.P9790934547856960856

/-! ## A076974.P15950914873903978177

`A238327(n)+A008683(A118655(n+1))`
-/

namespace A076974.P15950914873903978177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238327 n + A008683 (A118655 (n + 1)).toNat

end

end A076974.P15950914873903978177

/-! ## A076974.P4276998848507802749

`A238327(n)-A008683(A006470(n+1))`
-/

namespace A076974.P4276998848507802749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238327 n - A008683 (A006470 (n + 1)).toNat

end

end A076974.P4276998848507802749

/-! ## A076974.P307362964322543608

`A238327(n)+A008683(A080951(A202305(n)))`
-/

namespace A076974.P307362964322543608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238327 n + A008683 (A080951 (A202305 n).toNat).toNat

end

end A076974.P307362964322543608

/-!
# A076975: a(1) = 1, a(2n) = smallest composite number > (2n-1)-th partial sum of the sequence itself and a(2n+1) = smallest prime > 2n-th partial sum of the sequence.

The programs for A076975, there is no canonical definition to state claims against.
-/

/-! ## A076975.P15539743784669747745

`A323022(A152335(n+1))+A267604(n)`
-/

namespace A076975.P15539743784669747745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A152335 (n + 1)).toNat + A267604 n

end

end A076975.P15539743784669747745

/-! ## A076975.P13266652402966439135

`A323022(A152346(n+1))+A267604(n)`
-/

namespace A076975.P13266652402966439135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A152346 (n + 1)).toNat + A267604 n

end

end A076975.P13266652402966439135

/-! ## A076975.P8641285779693384747

`A323022(A152643(n+1))+A267604(n)`
-/

namespace A076975.P8641285779693384747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A152643 (n + 1)).toNat + A267604 n

end

end A076975.P8641285779693384747

/-! ## A076975.P15004370080757892951

`A057367(n)+Δ[A054846(A219136(n+1))]`
-/

namespace A076975.P15004370080757892951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A219136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 n + (f1 (n + 1) - f1 n)

end

end A076975.P15004370080757892951

/-!
# A076976: Product of the smallest prime divisors of composite numbers between successive primes.

The programs for A076976, there is no canonical definition to state claims against.
-/

/-! ## A076976.P6370393353526738549

`A056819(Δ[record[A138117(n+1)]])`
-/

namespace A076976.P6370393353526738549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056819 (f1 (n + 1) - f1 n).toNat

end

end A076976.P6370393353526738549

/-! ## A076976.P12891420388281900981

`A081125(Δ[record[A138117(n+1)]])`
-/

namespace A076976.P12891420388281900981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (f1 (n + 1) - f1 n).toNat

end

end A076976.P12891420388281900981

/-! ## A076976.P11127744428147281624

`A263572(Δ[record[A138117(n+1)]])`
-/

namespace A076976.P11127744428147281624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263572 (f1 (n + 1) - f1 n).toNat

end

end A076976.P11127744428147281624

/-! ## A076976.P9964676470571089006

`A081125(Δ[record[A338657(n+1)]])`
-/

namespace A076976.P9964676470571089006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338657 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081125 (f1 (n + 1) - f1 n).toNat

end

end A076976.P9964676470571089006

/-! ## A076976.P4271365043561010122

`A309233(Δ[record[A138117(n+1)]])`
-/

namespace A076976.P4271365043561010122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309233 (f1 (n + 1) - f1 n).toNat

end

end A076976.P4271365043561010122

/-!
# A076978: Product of the distinct primes dividing the product of composite numbers between consecutive primes.

The programs for A076978, there is no canonical definition to state claims against.
-/

/-! ## A076978.P13235920556162237032

`A007947(A061214(n+1))`
-/

namespace A076978.P13235920556162237032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A061214 (n + 1)).toNat

end

end A076978.P13235920556162237032

/-! ## A076978.P11078381663401570025

`gcd(A002110(A066530(n)), A061214(n+1))`
-/

namespace A076978.P11078381663401570025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A066530 n).toNat) (A061214 (n + 1))

end

end A076978.P11078381663401570025

/-! ## A076978.P10778049641019204064

`gcd(A002110(A136548(n+1)), A072472(n+1))`
-/

namespace A076978.P10778049641019204064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A136548 (n + 1)).toNat) (A072472 (n + 1))

end

end A076978.P10778049641019204064

/-! ## A076978.P16897235119253204107

`gcd(A002110(n), A061214(n+1))`
-/

namespace A076978.P16897235119253204107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A061214 (n + 1))

end

end A076978.P16897235119253204107

/-! ## A076978.P12926118114034147600

`gcd(A074167(n+1)+A002110(n), A074167(n+1))`
-/

namespace A076978.P12926118114034147600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074167 (n + 1) + A002110 n) (A074167 (n + 1))

end

end A076978.P12926118114034147600

/-! ## A076978.P2850991229278685106

`gcd(A002110(n+1), A074167(n+1))`
-/

namespace A076978.P2850991229278685106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (n + 1)) (A074167 (n + 1))

end

end A076978.P2850991229278685106

/-!
# A076979: Deleting exactly one digit yields a prime.

The programs for A076979, there is no canonical definition to state claims against.
-/

/-! ## A076979.P11266028745337864761

`1-A001478(comp[A034894(n)-1])`
-/

namespace A076979.P11266028745337864761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076979.P11266028745337864761

/-! ## A076979.P2510081053778513569

`1-A001489(comp[A034894(n)-1])`
-/

namespace A076979.P2510081053778513569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076979.P2510081053778513569

/-! ## A076979.P3034647787585471665

`A008619(2*comp[A034894(n)-1])`
-/

namespace A076979.P3034647787585471665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076979.P3034647787585471665

/-! ## A076979.P10427670743218205959

`A028242(2*comp[A034894(n)-1])`
-/

namespace A076979.P10427670743218205959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076979.P10427670743218205959

/-! ## A076979.P579183794158882583

`A029579(2*comp[A034894(n)-1])`
-/

namespace A076979.P579183794158882583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076979.P579183794158882583

/-! ## A076979.P15858138538181570804

`A008611(3*comp[A034894(n)-1])`
-/

namespace A076979.P15858138538181570804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076979.P15858138538181570804

/-! ## A076979.P4034591019773205874

`A008620(3*comp[A034894(n)-1])`
-/

namespace A076979.P4034591019773205874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076979.P4034591019773205874

/-! ## A076979.P17220421740038334754

`A008612(6*comp[A034894(n)-1])`
-/

namespace A076979.P17220421740038334754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034894 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076979.P17220421740038334754

/-!
# A076981: Smallest k such that n*(n+1)*(n+2)*...*(n+k) is divisible by the product of primes up to n.

The programs for A076981, there is no canonical definition to state claims against.
-/

/-! ## A076981.P2917446028006712489

`A075365(A028310(n))-floor(atan(n))`
-/

namespace A076981.P2917446028006712489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075365 (A028310 n).toNat - ⌊Real.arctan (n : ℝ)⌋

end

end A076981.P2917446028006712489

/-! ## A076981.P2010284420453374315

`A028310(A075365(round(sqrt(n²+1))))-1`
-/

namespace A076981.P2010284420453374315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A075365 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat - 1

end

end A076981.P2010284420453374315

/-! ## A076981.P14066364874982827259

`A075365(A028310(n))+-1%A000010(n+1)`
-/

namespace A076981.P14066364874982827259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075365 (A028310 n).toNat + Int.tmod (-1) (A000010 (n + 1))

end

end A076981.P14066364874982827259

/-! ## A076981.P17675230774046725688

`A075365(A028310(n))+A057428(A230980(n))`
-/

namespace A076981.P17675230774046725688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075365 (A028310 n).toNat + A057428 (A230980 n).toNat

end

end A076981.P17675230774046725688

/-! ## A076981.P10394556842111106626

`A075365(A028310(n))-(A297999(n)-A297826(n))`
-/

namespace A076981.P10394556842111106626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075365 (A028310 n).toNat - (A297999 n - A297826 n)

end

end A076981.P10394556842111106626

/-! ## A076981.P18020601733957301678

`(A075365(A028310(n))+A057428(n))%A192806(n)`
-/

namespace A076981.P18020601733957301678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075365 (A028310 n).toNat + A057428 n) (A192806 n)

end

end A076981.P18020601733957301678

/-!
# A076982: Number of triangular numbers that divide the n-th triangular number.

The programs for A076982, the canonical program `A076982.P9269232331312112831` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076982 has offset 1).

The definition of A076982 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007862, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076982.P9269232331312112831

`A007862(A000217(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076982

/-- `A007862(A000217(n+1))` -/
def P9269232331312112831.Spec : Prop :=
  ∀ n, P9269232331312112831.a n = A076982 (n + 1)

theorem P9269232331312112831.correct : P9269232331312112831.Spec := by
  intro n
  simp only [A076982, Nat.add_sub_cancel]

end A076982

/-! ## A076982.P11289007688179872119

`A129308(A002378(n+1))`
-/

namespace A076982.P11289007688179872119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (A002378 (n + 1)).toNat

end

end A076982.P11289007688179872119

namespace A076982

/-- `A129308(A002378(n+1))` -/
def P11289007688179872119.Spec : Prop :=
  ∀ n, P11289007688179872119.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P9688197974501875052

`A325334(∑[n+1])+1`
-/

namespace A076982.P9688197974501875052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A076982.P9688197974501875052

namespace A076982

/-- `A325334(∑[n+1])+1` -/
def P9688197974501875052.Spec : Prop :=
  ∀ n, P9688197974501875052.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P9988098769428531271

`∑{d}[∑[n+1], A073423(#)]`
-/

namespace A076982.P9988098769428531271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073423 d

end

end A076982.P9988098769428531271

namespace A076982

/-- `∑{d}[∑[n+1], A073423(#)]` -/
def P9988098769428531271.Spec : Prop :=
  ∀ n, P9988098769428531271.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P3035000704037930625

`∑{d}[∑[n+1], A010054(#%A000217(n+1))]`
-/

namespace A076982.P3035000704037930625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 (Int.tmod (d : ℤ) (A000217 (n + 1))).toNat

end

end A076982.P3035000704037930625

namespace A076982

/-- `∑{d}[∑[n+1], A010054(#%A000217(n+1))]` -/
def P3035000704037930625.Spec : Prop :=
  ∀ n, P3035000704037930625.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P1401699381140727089

`∑{d}[Δ[A210440(n)], A003982(#)]`
-/

namespace A076982.P1401699381140727089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003982 d

end

end A076982.P1401699381140727089

namespace A076982

/-- `∑{d}[Δ[A210440(n)], A003982(#)]` -/
def P1401699381140727089.Spec : Prop :=
  ∀ n, P1401699381140727089.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P3178263398772584877

`∑{d}[A046092(n+1), A003982(#)]`
-/

namespace A076982.P3178263398772584877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003982 d

end

end A076982.P3178263398772584877

namespace A076982

/-- `∑{d}[A046092(n+1), A003982(#)]` -/
def P3178263398772584877.Spec : Prop :=
  ∀ n, P3178263398772584877.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P1641899526243773542

`∑{d}[A106232(n+2), A003982(#)]`
-/

namespace A076982.P1641899526243773542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106232 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003982 d

end

end A076982.P1641899526243773542

namespace A076982

/-- `∑{d}[A106232(n+2), A003982(#)]` -/
def P1641899526243773542.Spec : Prop :=
  ∀ n, P1641899526243773542.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P9031509081208618058

`∑{d}[A226725(2*(n+1)), A003982(#)]`
-/

namespace A076982.P9031509081208618058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226725 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003982 d

end

end A076982.P9031509081208618058

namespace A076982

/-- `∑{d}[A226725(2*(n+1)), A003982(#)]` -/
def P9031509081208618058.Spec : Prop :=
  ∀ n, P9031509081208618058.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P18200295600764404622

`∑{d}[A001972(A004767(n)), A003982(#)]`
-/

namespace A076982.P18200295600764404622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003982 d

end

end A076982.P18200295600764404622

namespace A076982

/-- `∑{d}[A001972(A004767(n)), A003982(#)]` -/
def P18200295600764404622.Spec : Prop :=
  ∀ n, P18200295600764404622.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P7474740284826991582

`∑{d}[∑[n+1], A073424(#)]`
-/

namespace A076982.P7474740284826991582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073424 d

end

end A076982.P7474740284826991582

namespace A076982

/-- `∑{d}[∑[n+1], A073424(#)]` -/
def P7474740284826991582.Spec : Prop :=
  ∀ n, P7474740284826991582.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P4757547556601829854

`∑{d}[∑[n+1], floor(1/A002260(#+1))]`
-/

namespace A076982.P4757547556601829854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊1 / (A002260 (d + 1) : ℚ)⌋

end

end A076982.P4757547556601829854

namespace A076982

/-- `∑{d}[∑[n+1], floor(1/A002260(#+1))]` -/
def P4757547556601829854.Spec : Prop :=
  ∀ n, P4757547556601829854.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P5081356518652891237

`A007862(∑[n+1])`
-/

namespace A076982.P5081356518652891237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076982.P5081356518652891237

namespace A076982

/-- `A007862(∑[n+1])` -/
def P5081356518652891237.Spec : Prop :=
  ∀ n, P5081356518652891237.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P5390800183099834107

`A343407(∑[n+1])+1`
-/

namespace A076982.P5390800183099834107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343407 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A076982.P5390800183099834107

namespace A076982

/-- `A343407(∑[n+1])+1` -/
def P5390800183099834107.Spec : Prop :=
  ∀ n, P5390800183099834107.a n = A076982 (n + 1)

end A076982

/-! ## A076982.P15413428671805546351

`∑{d}[∑[n+1], A010054(#)]`
-/

namespace A076982.P15413428671805546351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 d

end

end A076982.P15413428671805546351

namespace A076982

/-- `∑{d}[∑[n+1], A010054(#)]` -/
def P15413428671805546351.Spec : Prop :=
  ∀ n, P15413428671805546351.a n = A076982 (n + 1)

end A076982

/-!
# A076983: Smallest triangular number divisible by exactly n triangular numbers.

The programs for A076983, there is no canonical definition to state claims against.
-/

/-! ## A076983.P7762939246787563376

`A000217(A368855(n+1))`
-/

namespace A076983.P7762939246787563376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A368855 (n + 1)).toNat

end

end A076983.P7762939246787563376

/-! ## A076983.P12072414596335665834

`∩[A345167(2*(n+1))-n, ∑[n]]`
-/

namespace A076983.P12072414596335665834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (2 * (n + 1)) - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A076983.P12072414596335665834

/-!
# A076984: Number of Fibonacci numbers that are divisors of the n-th Fibonacci number.

The programs for A076984, the canonical program `A076984.P13104546406193990713` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076984 has offset 1).

The definition of A076984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076984.P13104546406193990713

`A023645(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076984

/-- `A023645(n+1)+1` -/
def P13104546406193990713.Spec : Prop :=
  ∀ n, P13104546406193990713.a n = A076984 (n + 1)

theorem P13104546406193990713.correct : P13104546406193990713.Spec := by
  intro n
  simp only [A076984, Nat.add_sub_cancel]

end A076984

/-! ## A076984.P17249484743287265530

`A000005(n+1)+(n+1)%2-1`
-/

namespace A076984.P17249484743287265530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (((n + 1) % 2 : ℕ) : ℤ) - 1

end

end A076984.P17249484743287265530

namespace A076984

/-- `A000005(n+1)+(n+1)%2-1` -/
def P17249484743287265530.Spec : Prop :=
  ∀ n, P17249484743287265530.a n = A076984 (n + 1)

theorem P17249484743287265530.correct : P17249484743287265530.Spec := by
  intro n
  simp only [A076984, Nat.add_sub_cancel, A076984.P17249484743287265530.a, A076984.P13104546406193990713.a, A000005, A000005.P16091521709108585461.a, A023645, A023645.P14181426108447540437.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076984

/-! ## A076984.P496564604239530001

`A000005(n+1)-A059841(n+1)`
-/

namespace A076984.P496564604239530001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A059841 (n + 1)

end

end A076984.P496564604239530001

namespace A076984

/-- `A000005(n+1)-A059841(n+1)` -/
def P496564604239530001.Spec : Prop :=
  ∀ n, P496564604239530001.a n = A076984 (n + 1)

theorem P496564604239530001.correct : P496564604239530001.Spec := by
  intro n
  simp only [A076984, Nat.add_sub_cancel, A076984.P496564604239530001.a, A076984.P13104546406193990713.a, A000005, A000005.P16091521709108585461.a, A023645, A023645.P14181426108447540437.a, A059841, A059841.P7264174615531153985.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076984

/-! ## A076984.P3033068582865428121

`∑{d}[n+1, (1-C(2, #))²]`
-/

namespace A076984.P3033068582865428121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (Nat.choose 2 d : ℤ)) ^ 2

end

end A076984.P3033068582865428121

namespace A076984

/-- `∑{d}[n+1, (1-C(2, #))²]` -/
def P3033068582865428121.Spec : Prop :=
  ∀ n, P3033068582865428121.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P8614657190269521053

`∑{d}[n+1, 2%#/2]+1`
-/

namespace A076984.P8614657190269521053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((2 % d : ℕ) : ℚ) / 2 + 1

end

end A076984.P8614657190269521053

namespace A076984

/-- `∑{d}[n+1, 2%#/2]+1` -/
def P8614657190269521053.Spec : Prop :=
  ∀ n, P8614657190269521053.a n = (A076984 (n + 1) : ℚ)

end A076984

/-! ## A076984.P16079265276039507077

`∏{e}[n+1, #+1]-and(1, n)`
-/

namespace A076984.P16079265276039507077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - (Nat.land 1 n : ℤ)

end

end A076984.P16079265276039507077

namespace A076984

/-- `∏{e}[n+1, #+1]-and(1, n)` -/
def P16079265276039507077.Spec : Prop :=
  ∀ n, P16079265276039507077.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P3754289190106518133

`∏{e}[n+1, #+1]-Δ[floor(n/2)]`
-/

namespace A076984.P3754289190106518133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A076984.P3754289190106518133

namespace A076984

/-- `∏{e}[n+1, #+1]-Δ[floor(n/2)]` -/
def P3754289190106518133.Spec : Prop :=
  ∀ n, P3754289190106518133.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P11436108566773878927

`A062558(n+1)-1`
-/

namespace A076984.P11436108566773878927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (n + 1) - 1

end

end A076984.P11436108566773878927

namespace A076984

/-- `A062558(n+1)-1` -/
def P11436108566773878927.Spec : Prop :=
  ∀ n, P11436108566773878927.a n = A076984 (n + 1)

theorem P11436108566773878927.correct : P11436108566773878927.Spec := by
  intro n
  simp only [A076984, Nat.add_sub_cancel, A076984.P11436108566773878927.a, A076984.P13104546406193990713.a, A023645, A023645.P14181426108447540437.a, A062558, A062558.P7608322866353480072.a, A000005, A000005.P16091521709108585461.a, A000035, A000035.P2023072528413494694.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076984

/-! ## A076984.P9911237191580835801

`A000005(n+1)-n%2`
-/

namespace A076984.P9911237191580835801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A076984.P9911237191580835801

namespace A076984

/-- `A000005(n+1)-n%2` -/
def P9911237191580835801.Spec : Prop :=
  ∀ n, P9911237191580835801.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P5962951022662809199

`or(1, n)-A049820(n+1)`
-/

namespace A076984.P5962951022662809199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - A049820 (n + 1)

end

end A076984.P5962951022662809199

namespace A076984

/-- `or(1, n)-A049820(n+1)` -/
def P5962951022662809199.Spec : Prop :=
  ∀ n, P5962951022662809199.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P13928837309800493817

`∑{d}[n+1, A000040(#)²%3]`
-/

namespace A076984.P13928837309800493817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000040 d ^ 2) 3

end

end A076984.P13928837309800493817

namespace A076984

/-- `∑{d}[n+1, A000040(#)²%3]` -/
def P13928837309800493817.Spec : Prop :=
  ∀ n, P13928837309800493817.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P2787262014121660505

`A296966(n+1)/(n+1)+1`
-/

namespace A076984.P2787262014121660505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296966 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A076984.P2787262014121660505

namespace A076984

/-- `A296966(n+1)/(n+1)+1` -/
def P2787262014121660505.Spec : Prop :=
  ∀ n, P2787262014121660505.a n = (A076984 (n + 1) : ℚ)

end A076984

/-! ## A076984.P1426299283207818677

`A092338(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A076984.P1426299283207818677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092338 (n + 1) - a (n - 1)

end

end A076984.P1426299283207818677

namespace A076984

/-- `A092338(n+1)-a(n-1)` -/
def P1426299283207818677.Spec : Prop :=
  ∀ n, P1426299283207818677.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P6565512335773144989

`A000005(C(n+1, n))-and(1, n)`
-/

namespace A076984.P6565512335773144989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (n + 1) n) - (Nat.land 1 n : ℤ)

end

end A076984.P6565512335773144989

namespace A076984

/-- `A000005(C(n+1, n))-and(1, n)` -/
def P6565512335773144989.Spec : Prop :=
  ∀ n, P6565512335773144989.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P17395876199311926133

`A000005(2*n+1-n)-and(1, n)`
-/

namespace A076984.P17395876199311926133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1 - n) - (Nat.land 1 n : ℤ)

end

end A076984.P17395876199311926133

namespace A076984

/-- `A000005(2*n+1-n)-and(1, n)` -/
def P17395876199311926133.Spec : Prop :=
  ∀ n, P17395876199311926133.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P1157670560637657477

`A000005(2*n-(n-1))-and(1, n)²`
-/

namespace A076984.P1157670560637657477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 1 n ^ 2 : ℤ)

end

end A076984.P1157670560637657477

namespace A076984

/-- `A000005(2*n-(n-1))-and(1, n)²` -/
def P1157670560637657477.Spec : Prop :=
  ∀ n, P1157670560637657477.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P14205035134224323175

`A003056(A337362(n+1))`
-/

namespace A076984.P14205035134224323175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A337362 (n + 1)).toNat

end

end A076984.P14205035134224323175

namespace A076984

/-- `A003056(A337362(n+1))` -/
def P14205035134224323175.Spec : Prop :=
  ∀ n, P14205035134224323175.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P12456440599125615702

`A291179(A062558(n+1))`
-/

namespace A076984.P12456440599125615702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291179 (A062558 (n + 1)).toNat

end

end A076984.P12456440599125615702

namespace A076984

/-- `A291179(A062558(n+1))` -/
def P12456440599125615702.Spec : Prop :=
  ∀ n, P12456440599125615702.a n = A076984 (n + 1)

end A076984

/-! ## A076984.P14640363867881477332

`A014430(A348665(n+1))`
-/

namespace A076984.P14640363867881477332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A348665 (n + 1)).toNat

end

end A076984.P14640363867881477332

namespace A076984

/-- `A014430(A348665(n+1))` -/
def P14640363867881477332.Spec : Prop :=
  ∀ n, P14640363867881477332.a n = A076984 (n + 1)

end A076984

/-!
# A076985: Smallest Fibonacci numbers having exactly n Fibonacci divisors.

The programs for A076985, there is no canonical definition to state claims against.
-/

/-! ## A076985.P6286608131767447976

`A000045(A105802(n+1))`
-/

namespace A076985.P6286608131767447976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105802 (n + 1)).toNat

end

end A076985.P6286608131767447976

/-! ## A076985.P4439581208216435564

`A105800(2*A105802(n+1))`
-/

namespace A076985.P4439581208216435564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * A105802 (n + 1)).toNat

end

end A076985.P4439581208216435564

/-! ## A076985.P16752453839622537401

`A105800(A105802(n+1)+A105802(n+1))`
-/

namespace A076985.P16752453839622537401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (A105802 (n + 1) + A105802 (n + 1)).toNat

end

end A076985.P16752453839622537401

/-! ## A076985.P7622374863035389757

`A105809(C(A105802(n+1), 2))`
-/

namespace A076985.P7622374863035389757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (Nat.choose (A105802 (n + 1)).toNat 2)

end

end A076985.P7622374863035389757

/-!
# A076986: Smallest squarefree number of the form n*k + 1.

The programs for A076986, there is no canonical definition to state claims against.
-/

/-! ## A076986.P15420416800722672346

`A000005(2^n)*A345951(n+2)+n+2`
-/

namespace A076986.P15420416800722672346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) * A345951 (n + 2) + (n + 2 : ℤ)

end

end A076986.P15420416800722672346

/-! ## A076986.P18084819779640531280

`gcd(A000005(2^(n+1)), A008683(n+2))+n+1`
-/

namespace A076986.P18084819779640531280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (2 ^ (n + 1))) (A008683 (n + 2)) + (n + 1)

end

end A076986.P18084819779640531280

/-! ## A076986.P14995973126595030921

`∏{e}[n+2, A000005(#^(n+1))]+n+1`
-/

namespace A076986.P14995973126595030921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p ^ (n + 1)) + (n + 1 : ℤ)

end

end A076986.P14995973126595030921

/-! ## A076986.P16056174797341118937

`∑{e}[n+2, A001222(#^(n+1))]+n+2`
-/

namespace A076986.P16056174797341118937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 (Nat.factorization (f1 n) p ^ (n + 1)) + (n + 2 : ℤ)

end

end A076986.P16056174797341118937

/-! ## A076986.P4896259822308937196

`A001222(∏{e}[n+2, #^(n+1)])+n+2`
-/

namespace A076986.P4896259822308937196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ (n + 1)) + (n + 2 : ℤ)

end

end A076986.P4896259822308937196

/-!
# A076988: Smallest Fibonacci number of the form n*k + 1 with k>0.

The programs for A076988, there is no canonical definition to state claims against.
-/

/-! ## A076988.P16697761121648940428

`A000045(A264105(n+1)+2)`
-/

namespace A076988.P16697761121648940428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A264105 (n + 1) + 2).toNat

end

end A076988.P16697761121648940428

/-! ## A076988.P1445488182196294737

`A020695(A264105(n+1)-1)`
-/

namespace A076988.P1445488182196294737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A264105 (n + 1) - 1).toNat

end

end A076988.P1445488182196294737

/-! ## A076988.P5113074392877075180

`A212804(A264105(n+1)+3)`
-/

namespace A076988.P5113074392877075180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A264105 (n + 1) + 3).toNat

end

end A076988.P5113074392877075180

/-! ## A076988.P17469645652957657151

`A123231(2*A264105(n+1))`
-/

namespace A076988.P17469645652957657151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (2 * A264105 (n + 1)).toNat

end

end A076988.P17469645652957657151

/-! ## A076988.P8953471511026394469

`A035513(A000124(A264105(n+1)))`
-/

namespace A076988.P8953471511026394469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (A000124 (A264105 (n + 1)).toNat).toNat

end

end A076988.P8953471511026394469

/-!
# A076989: Smallest cube of the form n*k + 1 with k>0.

The programs for A076989, there is no canonical definition to state claims against.
-/

/-! ## A076989.P13602065747397355582

`A076947(n+1)*(n+1)+1`
-/

namespace A076989.P13602065747397355582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076947 (n + 1) * (n + 1 : ℤ) + 1

end

end A076989.P13602065747397355582

/-! ## A076989.P5301514194968992643

`A091733(n+1)^3`
-/

namespace A076989.P5301514194968992643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (n + 1) ^ 3

end

end A076989.P5301514194968992643

/-! ## A076989.P17953761765215989822

`A091733(A000027(n+1))²*A091733(n+1)`
-/

namespace A076989.P17953761765215989822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (A000027 (n + 1)).toNat ^ 2 * A091733 (n + 1)

end

end A076989.P17953761765215989822

/-! ## A076989.P5452222653192400071

`A091733(sqrt(A000290(n+1)))²*A091733(n+1)`
-/

namespace A076989.P5452222653192400071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (SequenceMachineLib.roundAway (Real.sqrt (A000290 (n + 1) : ℝ))).toNat ^ 2 * A091733 (n + 1)

end

end A076989.P5452222653192400071

/-! ## A076989.P12500474516379649284

`A000578(A091733(n+1))`
-/

namespace A076989.P12500474516379649284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A091733 (n + 1)).toNat

end

end A076989.P12500474516379649284

/-! ## A076989.P11716692158948898116

`A091733(A110654(2*(n+1)))²*A091733(n+1)`
-/

namespace A076989.P11716692158948898116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (A110654 (2 * (n + 1))).toNat ^ 2 * A091733 (n + 1)

end

end A076989.P11716692158948898116

/-! ## A076989.P2507560269708678372

`A000290(A091733(n+1)²)/A091733(n+1)`
-/

namespace A076989.P2507560269708678372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A091733 (n + 1) ^ 2).toNat : ℚ) / (A091733 (n + 1) : ℚ)

end

end A076989.P2507560269708678372

/-! ## A076989.P15176874900160890883

`A001489(A091733(n+1)²)²/A091733(n+1)`
-/

namespace A076989.P15176874900160890883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001489 (A091733 (n + 1) ^ 2).toNat ^ 2 : ℚ) / (A091733 (n + 1) : ℚ)

end

end A076989.P15176874900160890883

/-! ## A076989.P12394752246589245627

`A028310(A091733(n+1)²)²/A091733(n+1)`
-/

namespace A076989.P12394752246589245627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (A091733 (n + 1) ^ 2).toNat ^ 2 : ℚ) / (A091733 (n + 1) : ℚ)

end

end A076989.P12394752246589245627

/-!
# A076991: a(1) = 1, a(2) = 2, a(n) = smallest positive integer not occurring earlier such that the sum of three successive terms is a square.

The programs for A076991, there is no canonical definition to state claims against.
-/

/-! ## A076991.P4705994997925759191

`lt[A158787(n+1), 10]+1`
-/

namespace A076991.P4705994997925759191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158787 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076991.P4705994997925759191

/-! ## A076991.P279671234852127186

`A130205(A032555(n+1))`
-/

namespace A076991.P279671234852127186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130205 (A032555 (n + 1)).toNat

end

end A076991.P279671234852127186

/-! ## A076991.P1812971067070101986

`A130205(A032559(n+1))`
-/

namespace A076991.P1812971067070101986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130205 (A032559 (n + 1)).toNat

end

end A076991.P1812971067070101986

/-! ## A076991.P3781853930329634448

`A130205(A077739(n+1))`
-/

namespace A076991.P3781853930329634448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130205 (A077739 (n + 1)).toNat

end

end A076991.P3781853930329634448

/-! ## A076991.P8063465814931061888

`A130205(A078213(n+1))`
-/

namespace A076991.P8063465814931061888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130205 (A078213 (n + 1)).toNat

end

end A076991.P8063465814931061888

/-!
# A076994: a(1) = 2, a(n+1) is the largest squarefree number < 2*a(n).

The programs for A076994, there is no canonical definition to state claims against.
-/

/-! ## A076994.P7302690821644501244

`A005117(A013928(2*a(n-1)))` with `a(0)=2`
-/

namespace A076994.P7302690821644501244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005117 (A013928 (2 * a (n - 1)).toNat).toNat

end

end A076994.P7302690821644501244

/-! ## A076994.P11729813082750805303

`A285719(2*a(n-1))` with `a(0)=2`
-/

namespace A076994.P11729813082750805303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A285719 (2 * a (n - 1)).toNat

end

end A076994.P11729813082750805303

/-! ## A076994.P5610789578247791866

`A070321(2*a(n-1)-1)` with `a(0)=2`
-/

namespace A076994.P5610789578247791866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070321 (2 * a (n - 1) - 1).toNat

end

end A076994.P5610789578247791866

/-! ## A076994.P14087550268799900623

`A070321(a(n-1)+a(n-1)-1)` with `a(0)=2`
-/

namespace A076994.P14087550268799900623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070321 (a (n - 1) + (a (n - 1) - 1)).toNat

end

end A076994.P14087550268799900623

/-! ## A076994.P15112741979048143460

`A070321(a(n-1)-(1-a(n-1)))` with `a(0)=2`
-/

namespace A076994.P15112741979048143460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070321 (a (n - 1) - (1 - a (n - 1))).toNat

end

end A076994.P15112741979048143460

/-!
# A076995: a(1) = 4, a(n+1) is the largest composite number < 2a(n).

The programs for A076995, there is no canonical definition to state claims against.
-/

/-! ## A076995.P2488723209595507957

`A018252(A065896(a(n-1)))` with `a(0)=4`
-/

namespace A076995.P2488723209595507957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A018252 (A065896 (a (n - 1)).toNat).toNat

end

end A076995.P2488723209595507957

/-! ## A076995.P8046722903500887933

`A014684(2*a(n-1)-1)` with `a(0)=4`
-/

namespace A076995.P8046722903500887933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A014684 (2 * a (n - 1) - 1).toNat

end

end A076995.P8046722903500887933

/-! ## A076995.P1382377248416194471

`A179278(2*a(n-1)-1)` with `a(0)=4`
-/

namespace A076995.P1382377248416194471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A179278 (2 * a (n - 1) - 1).toNat

end

end A076995.P1382377248416194471

/-! ## A076995.P14340814092749274453

`A014684(a(n-1)+a(n-1)-1)` with `a(0)=4`
-/

namespace A076995.P14340814092749274453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A014684 (a (n - 1) + (a (n - 1) - 1)).toNat

end

end A076995.P14340814092749274453

/-! ## A076995.P3047155642150823838

`A014684(a(n-1)-(1-a(n-1)))` with `a(0)=4`
-/

namespace A076995.P3047155642150823838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A014684 (a (n - 1) - (1 - a (n - 1))).toNat

end

end A076995.P3047155642150823838

/-!
# A076997: a(1) = 1, a(n+1) is the largest square <= n*a(n).

The programs for A076997, the canonical program `A076997.P16841246702372633019` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076997 has offset 1).

The definition of A076997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076997.P16841246702372633019

`floor(sqrt(n*a(n-1)))²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076997

/-- `floor(sqrt(n*a(n-1)))²` -/
def P16841246702372633019.Spec : Prop :=
  ∀ n, (P16841246702372633019.a n : ℤ) = A076997 (n + 1)

theorem P16841246702372633019.correct : P16841246702372633019.Spec := by
  intro n
  simp only [A076997, Nat.add_sub_cancel]

end A076997

/-! ## A076997.P197642092595330216

`floor(root(n*a(n-1), 2))²` with `a(0)=1`
-/

namespace A076997.P197642092595330216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n : ℤ) * a (n - 1) : ℝ) ^ (1 / (2 : ℝ))⌋ ^ 2

end

end A076997.P197642092595330216

namespace A076997

/-- `floor(root(n*a(n-1), 2))²` -/
def P197642092595330216.Spec : Prop :=
  ∀ n, P197642092595330216.a n = A076997 (n + 1)

end A076997

/-! ## A076997.P3004996746300550430

`floor(sqrt(n*a(n-1)))^2` with `a(0)=1`
-/

namespace A076997.P3004996746300550430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.sqrt (n * a (n - 1)) ^ 2

end

end A076997.P3004996746300550430

namespace A076997

/-- `floor(sqrt(n*a(n-1)))^2` -/
def P3004996746300550430.Spec : Prop :=
  ∀ n, (P3004996746300550430.a n : ℤ) = A076997 (n + 1)

theorem P3004996746300550430.correct : P3004996746300550430.Spec := by
  intro n
  simp only [A076997, Nat.add_sub_cancel, A076997.P3004996746300550430.a, A076997.P16841246702372633019.a, SequenceMachineLib.memo_apply]

end A076997

/-! ## A076997.P326286446419906830

`floor((n*a(n-1))^(1/2))²` with `a(0)=1`
-/

namespace A076997.P326286446419906830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n : ℤ) * a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ ^ 2

end

end A076997.P326286446419906830

namespace A076997

/-- `floor((n*a(n-1))^(1/2))²` -/
def P326286446419906830.Spec : Prop :=
  ∀ n, P326286446419906830.a n = A076997 (n + 1)

end A076997

/-! ## A076997.P9465083102442500883

`floor(sqrt(a(n-1)/n^-1))²` with `a(0)=1`
-/

namespace A076997.P9465083102442500883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.sqrt ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ) : ℝ)⌋ ^ 2

end

end A076997.P9465083102442500883

namespace A076997

/-- `floor(sqrt(a(n-1)/n^-1))²` -/
def P9465083102442500883.Spec : Prop :=
  ∀ n, P9465083102442500883.a n = A076997 (n + 1)

end A076997

/-!
# A076998: Difference between cubefree and squarefree components of n.

The programs for A076998, the canonical program `A076998.P17388172569221754780` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076998 has offset 1).

The definition of A076998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076998.P17388172569221754780

`A007948(n+1)-A007947(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076998

/-- `A007948(n+1)-A007947(n+1)` -/
def P17388172569221754780.Spec : Prop :=
  ∀ n, P17388172569221754780.a n = A076998 (n + 1)

theorem P17388172569221754780.correct : P17388172569221754780.Spec := by
  intro n
  simp only [A076998, Nat.add_sub_cancel]

end A076998

/-! ## A076998.P16459498647197529099

`∏{p}[n+1, gcd(n+1, #²)]-∏{p}[n+1, #]`
-/

namespace A076998.P16459498647197529099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A076998.P16459498647197529099

namespace A076998

/-- `∏{p}[n+1, gcd(n+1, #²)]-∏{p}[n+1, #]` -/
def P16459498647197529099.Spec : Prop :=
  ∀ n, P16459498647197529099.a n = A076998 (n + 1)

end A076998

/-! ## A076998.P7980049508035299288

`A066503(A007948(n+1))`
-/

namespace A076998.P7980049508035299288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (A007948 (n + 1)).toNat

end

end A076998.P7980049508035299288

namespace A076998

/-- `A066503(A007948(n+1))` -/
def P7980049508035299288.Spec : Prop :=
  ∀ n, P7980049508035299288.a n = A076998 (n + 1)

end A076998

/-! ## A076998.P2516792305204207152

`A097377(n+1)-A076618(n+1)`
-/

namespace A076998.P2516792305204207152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (n + 1) - A076618 (n + 1)

end

end A076998.P2516792305204207152

namespace A076998

/-- `A097377(n+1)-A076618(n+1)` -/
def P2516792305204207152.Spec : Prop :=
  ∀ n, P2516792305204207152.a n = A076998 (n + 1)

theorem P2516792305204207152.correct : P2516792305204207152.Spec := by
  intro n
  simp only [A076998, Nat.add_sub_cancel, A076998.P2516792305204207152.a, A076998.P17388172569221754780.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A007948, A007948.P9205423498154585874.a, A076618, A076618.P8099091245670450071.a, A097377, A097377.P4336530497269463132.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076998

/-! ## A076998.P11932166715098269338

`A097377(n+1)-(A007947(n+1)+1)`
-/

namespace A076998.P11932166715098269338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (n + 1) - (A007947 (n + 1) + 1)

end

end A076998.P11932166715098269338

namespace A076998

/-- `A097377(n+1)-(A007947(n+1)+1)` -/
def P11932166715098269338.Spec : Prop :=
  ∀ n, P11932166715098269338.a n = A076998 (n + 1)

theorem P11932166715098269338.correct : P11932166715098269338.Spec := by
  intro n
  simp only [A076998, Nat.add_sub_cancel, A076998.P11932166715098269338.a, A076998.P17388172569221754780.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A007948, A007948.P9205423498154585874.a, A097377, A097377.P4336530497269463132.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076998

/-! ## A076998.P5276768978053305926

`(A071773(n+1)-1)*A007947(n+1)`
-/

namespace A076998.P5276768978053305926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071773 (n + 1) - 1) * A007947 (n + 1)

end

end A076998.P5276768978053305926

namespace A076998

/-- `(A071773(n+1)-1)*A007947(n+1)` -/
def P5276768978053305926.Spec : Prop :=
  ∀ n, P5276768978053305926.a n = A076998 (n + 1)

theorem P5276768978053305926.correct : P5276768978053305926.Spec := by
  intro n
  simp only [A076998, Nat.add_sub_cancel, A076998.P5276768978053305926.a, A076998.P17388172569221754780.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A007948, A007948.P9205423498154585874.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076998

/-! ## A076998.P11150597743695908754

`A097377(n+1)-A097377(A007947(n+1))`
-/

namespace A076998.P11150597743695908754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (n + 1) - A097377 (A007947 (n + 1)).toNat

end

end A076998.P11150597743695908754

namespace A076998

/-- `A097377(n+1)-A097377(A007947(n+1))` -/
def P11150597743695908754.Spec : Prop :=
  ∀ n, P11150597743695908754.a n = A076998 (n + 1)

end A076998

/-! ## A076998.P5353038048962882463

`A066503((n+1)/A003557(A003557(n+1)))`
-/

namespace A076998.P5353038048962882463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A076998.P5353038048962882463

namespace A076998

/-- `A066503((n+1)/A003557(A003557(n+1)))` -/
def P5353038048962882463.Spec : Prop :=
  ∀ n, P5353038048962882463.a n = A076998 (n + 1)

end A076998

/-! ## A076998.P3000907656511600267

`A003557(n+1)+A007948(n+1)-A076332(n+1)`
-/

namespace A076998.P3000907656511600267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A007948 (n + 1) - A076332 (n + 1))

end

end A076998.P3000907656511600267

namespace A076998

/-- `A003557(n+1)+A007948(n+1)-A076332(n+1)` -/
def P3000907656511600267.Spec : Prop :=
  ∀ n, P3000907656511600267.a n = A076998 (n + 1)

theorem P3000907656511600267.correct : P3000907656511600267.Spec := by
  intro n
  simp only [A076998, Nat.add_sub_cancel, A076998.P3000907656511600267.a, A076998.P17388172569221754780.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A007948, A007948.P9205423498154585874.a, A076332, A076332.P10547228136457690679.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076998

/-! ## A076998.P2642219008431202941

`A007948(n+1)+A326142(n+1)-A000203(n+1)`
-/

namespace A076998.P2642219008431202941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) + (A326142 (n + 1) - A000203 (n + 1))

end

end A076998.P2642219008431202941

namespace A076998

/-- `A007948(n+1)+A326142(n+1)-A000203(n+1)` -/
def P2642219008431202941.Spec : Prop :=
  ∀ n, P2642219008431202941.a n = A076998 (n + 1)

theorem P2642219008431202941.correct : P2642219008431202941.Spec := by
  intro n
  simp only [A076998, Nat.add_sub_cancel, A076998.P2642219008431202941.a, A076998.P17388172569221754780.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A007948, A007948.P9205423498154585874.a, A326142, A326142.P15415912859726343761.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A076998

/-! ## A076998.P13274063488794468153

`A007948(n+1)-A007948(n+1)/A071773(n+1)`
-/

namespace A076998.P13274063488794468153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) - (A007948 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A076998.P13274063488794468153

namespace A076998

/-- `A007948(n+1)-A007948(n+1)/A071773(n+1)` -/
def P13274063488794468153.Spec : Prop :=
  ∀ n, P13274063488794468153.a n = (A076998 (n + 1) : ℚ)

end A076998

/-! ## A076998.P11149254054891252184

`A078615(n+1)/A055231(n+1)-A007947(n+1)`
-/

namespace A076998.P11149254054891252184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ) - (A007947 (n + 1) : ℚ)

end

end A076998.P11149254054891252184

namespace A076998

/-- `A078615(n+1)/A055231(n+1)-A007947(n+1)` -/
def P11149254054891252184.Spec : Prop :=
  ∀ n, P11149254054891252184.a n = (A076998 (n + 1) : ℚ)

end A076998

/-! ## A076998.P3612212110961121862

`A007948(n+1)-A331737(A007948(n+1)²)`
-/

namespace A076998.P3612212110961121862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) - A331737 (A007948 (n + 1) ^ 2).toNat

end

end A076998.P3612212110961121862

namespace A076998

/-- `A007948(n+1)-A331737(A007948(n+1)²)` -/
def P3612212110961121862.Spec : Prop :=
  ∀ n, P3612212110961121862.a n = A076998 (n + 1)

end A076998

/-! ## A076998.P8400093690245797696

`A007948(n+1)-A071773((n+1)²)`
-/

namespace A076998.P8400093690245797696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) - A071773 ((n + 1) ^ 2)

end

end A076998.P8400093690245797696

namespace A076998

/-- `A007948(n+1)-A071773((n+1)²)` -/
def P8400093690245797696.Spec : Prop :=
  ∀ n, P8400093690245797696.a n = A076998 (n + 1)

end A076998

/-!
# A076999: a(1) = 1, a(n+1) is the largest Fibonacci number <= n*a(n).

The programs for A076999, there is no canonical definition to state claims against.
-/

/-! ## A076999.P10699251509300743942

`A000045(A077000(n+1))`
-/

namespace A076999.P10699251509300743942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A077000 (n + 1)).toNat

end

end A076999.P10699251509300743942

/-! ## A076999.P4738185904695566972

`A212804(A077000(n+1)+1)`
-/

namespace A076999.P4738185904695566972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A077000 (n + 1) + 1).toNat

end

end A076999.P4738185904695566972

/-! ## A076999.P6357896228037530040

`A053602(2*A077000(n+1))`
-/

namespace A076999.P6357896228037530040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A077000 (n + 1)).toNat

end

end A076999.P6357896228037530040

/-! ## A076999.P16747573742895099445

`A103609(2*A077000(n+1))`
-/

namespace A076999.P16747573742895099445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A077000 (n + 1)).toNat

end

end A076999.P16747573742895099445

/-! ## A076999.P12815228915316551726

`A302126(2*A077000(n+1))`
-/

namespace A076999.P12815228915316551726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A077000 (n + 1)).toNat

end

end A076999.P12815228915316551726

