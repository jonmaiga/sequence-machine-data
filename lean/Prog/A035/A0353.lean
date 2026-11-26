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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C051
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
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A035300: Expansion of Sum_{n>=0} (q^n / Product_{k=1..n+4} (1 - q^k)).

The programs for A035300, there is no canonical definition to state claims against.
-/

/-! ## A035300.P2635384842195078489

`A000041(n+4)-round((n+7)²/12)`
-/

namespace A035300.P2635384842195078489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 4) - SequenceMachineLib.roundAway (((n + 7) ^ 2 : ℚ) / 12)

end

end A035300.P2635384842195078489

/-! ## A035300.P10210413251063582325

`abs(A001399(n+4)-A000041(n+4))`
-/

namespace A035300.P10210413251063582325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001399 (n + 4) - A000041 (n + 4)|

end

end A035300.P10210413251063582325

/-! ## A035300.P10607845974361634775

`∑[A187219(n+4)-A103221(n+4)]`
-/

namespace A035300.P10607845974361634775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 4) - A103221 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035300.P10607845974361634775

/-! ## A035300.P2820646490879228236

`A058399(∑[3+n]+7)`
-/

namespace A035300.P2820646490879228236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A035300.P2820646490879228236

/-! ## A035300.P5790999289474769014

`record[A058399(A038722(A027379(n)))]`
-/

namespace A035300.P5790999289474769014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058399 (A038722 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035300.P5790999289474769014

/-!
# A035301: Expansion of Sum_{n>=0} (q^n / Product_{k=1..n+5} (1 - q^k)).

The programs for A035301, the canonical program `A035301.P12625187651966574987` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035301 has offset 0).

The definition of A035301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035301.P12625187651966574987

`A058399(C(n+5, 2)+5)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035301

/-- `A058399(C(n+5, 2)+5)` -/
def P12625187651966574987.Spec : Prop :=
  ∀ n, P12625187651966574987.a n = A035301 n

theorem P12625187651966574987.correct : P12625187651966574987.Spec := by
  intro n
  simp only [A035301]

end A035301

/-! ## A035301.P415605389734223193

`A317141(A005015(n))`
-/

namespace A035301.P415605389734223193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A005015 n).toNat

end

end A035301.P415605389734223193

namespace A035301

/-- `A317141(A005015(n))` -/
def P415605389734223193.Spec : Prop :=
  ∀ n, P415605389734223193.a n = A035301 n

end A035301

/-! ## A035301.P13061715312855197657

`A135662(A263587(n+2))`
-/

namespace A035301.P13061715312855197657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A263587 (n + 2)).toNat

end

end A035301.P13061715312855197657

namespace A035301

/-- `A135662(A263587(n+2))` -/
def P13061715312855197657.Spec : Prop :=
  ∀ n, P13061715312855197657.a n = A035301 n

end A035301

/-! ## A035301.P9079012310764520955

`A191291(A001925(n+1))`
-/

namespace A035301.P9079012310764520955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A001925 (n + 1)).toNat

end

end A035301.P9079012310764520955

namespace A035301

/-- `A191291(A001925(n+1))` -/
def P9079012310764520955.Spec : Prop :=
  ∀ n, P9079012310764520955.a n = A035301 n

end A035301

/-! ## A035301.P2648818797162526569

`A219227(A003403(n+1))`
-/

namespace A035301.P2648818797162526569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219227 (A003403 (n + 1)).toNat

end

end A035301.P2648818797162526569

namespace A035301

/-- `A219227(A003403(n+1))` -/
def P2648818797162526569.Spec : Prop :=
  ∀ n, P2648818797162526569.a n = A035301 n

end A035301

/-!
# A035302: a(n+1)=2a(n)-4a(n-1)+4a(n-2).

The programs for A035302, the canonical program `A035302.P8640394127865923831` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035302 has offset 0).

The definition of A035302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035302.P8640394127865923831

`ogf((x-4x^2)/(1-2x+4x^2-4x^3))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035302

/-- `ogf((x-4x^2)/(1-2x+4x^2-4x^3))` -/
def P8640394127865923831.Spec : Prop :=
  ∀ n, P8640394127865923831.a n = A035302 n

theorem P8640394127865923831.correct : P8640394127865923831.Spec := by
  intro n
  simp only [A035302]

end A035302

/-! ## A035302.P3671141003408646330

`Δ[A007420(n)]-3*A007420(n)`
-/

namespace A035302.P3671141003408646330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3 * A007420 n

end

end A035302.P3671141003408646330

namespace A035302

/-- `Δ[A007420(n)]-3*A007420(n)` -/
def P3671141003408646330.Spec : Prop :=
  ∀ n, P3671141003408646330.a n = A035302 n

end A035302

/-! ## A035302.P10051671366741946801

`A007420(n+2)-(A178885(n)+1)`
-/

namespace A035302.P10051671366741946801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007420 (n + 2) - (A178885 n + 1)

end

end A035302.P10051671366741946801

namespace A035302

/-- `A007420(n+2)-(A178885(n)+1)` -/
def P10051671366741946801.Spec : Prop :=
  ∀ n, P10051671366741946801.a n = A035302 n

end A035302

/-! ## A035302.P14081810321125746839

`A007420(n+1)-4*A007420(n)`
-/

namespace A035302.P14081810321125746839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007420 (n + 1) - 4 * A007420 n

end

end A035302.P14081810321125746839

namespace A035302

/-- `A007420(n+1)-4*A007420(n)` -/
def P14081810321125746839.Spec : Prop :=
  ∀ n, P14081810321125746839.a n = A035302 n

end A035302

/-! ## A035302.P7921205277437875484

`Δ[A178885(n+1)]-(A178885(n)+1)`
-/

namespace A035302.P7921205277437875484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A178885 n + 1)

end

end A035302.P7921205277437875484

namespace A035302

/-- `Δ[A178885(n+1)]-(A178885(n)+1)` -/
def P7921205277437875484.Spec : Prop :=
  ∀ n, P7921205277437875484.a n = A035302 n

end A035302

/-!
# A035303: Divisors of 3600.

The programs for A035303, there is no canonical definition to state claims against.
-/

/-! ## A035303.P16348362520583412292

`record[A106608(A178863(n+1))]`
-/

namespace A035303.P16348362520583412292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A178863 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035303.P16348362520583412292

/-! ## A035303.P11841415047330179715

`filter[A178863(n+1), A109720(#)]`
-/

namespace A035303.P11841415047330179715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A035303.P11841415047330179715

/-! ## A035303.P11801712283997954441

`record[gcd(A249674(n)², A008619(n))]`
-/

namespace A035303.P11801712283997954441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A249674 n ^ 2) (A008619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035303.P11801712283997954441

/-! ## A035303.P14597144641448006219

`record[A106615(2*A178863(n+1))]`
-/

namespace A035303.P14597144641448006219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (2 * A178863 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035303.P14597144641448006219

/-! ## A035303.P18139772321665348824

`∩[A047304(n+1), A178863(n+1)]`
-/

namespace A035303.P18139772321665348824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035303.P18139772321665348824

/-!
# A035306: List prime factors of each number in order (each prime factor is followed by its power). Start with 1 = {1,1}.

The programs for A035306, there is no canonical definition to state claims against.
-/

/-! ## A035306.P17185009424687599651

`A327931(gcd(A018565(n+1), A103530(n+1)))`
-/

namespace A035306.P17185009424687599651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327931 (Int.gcd (A018565 (n + 1)) (A103530 (n + 1)))

end

end A035306.P17185009424687599651

/-! ## A035306.P11583352067984752079

`A027748(C(A268448(n+1), A352822(n+2)))`
-/

namespace A035306.P11583352067984752079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (Nat.choose (A268448 (n + 1)).toNat (A352822 (n + 2)).toNat)

end

end A035306.P11583352067984752079

/-! ## A035306.P9224139792782608237

`A323347(gcd(A062003(n), A124108(n)))`
-/

namespace A035306.P9224139792782608237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 (Int.gcd (A062003 n) (A124108 n))

end

end A035306.P9224139792782608237

/-! ## A035306.P17258598631568324102

`A209918(A072123(n+1))`
-/

namespace A035306.P17258598631568324102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209918 (A072123 (n + 1)).toNat

end

end A035306.P17258598631568324102

/-! ## A035306.P8143275558575903015

`A333416(A397884(n+2))`
-/

namespace A035306.P8143275558575903015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333416 (A397884 (n + 2)).toNat

end

end A035306.P8143275558575903015

/-!
# A035310: Let f(n) = number of ways to factor n = A001055(n); a(n) = sum of f(k) over all terms k in A025487 that have n factors.

The programs for A035310, there is no canonical definition to state claims against.
-/

/-! ## A035310.P11851523563446858198

`A172002(A321679(2*n))+A138364(n)`
-/

namespace A035310.P11851523563446858198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (A321679 (2 * n)).toNat + A138364 n

end

end A035310.P11851523563446858198

/-!
# A035311: First column of the Zorach additive triangle A035312.

The programs for A035311, there is no canonical definition to state claims against.
-/

/-! ## A035311.P16314966224449496896

`fo[A072039(n+1)-1]+1`
-/

namespace A035311.P16314966224449496896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072039 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A035311.P16314966224449496896

/-! ## A035311.P700118245558960435

`∑{#}[n, (-1)^(n-#)*C(n, #)*A035313(#)]`
-/

namespace A035311.P700118245558960435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A035313 k : ℚ)

end

end A035311.P700118245558960435

/-! ## A035311.P8919774692202163183

`A035312(∑[n])`
-/

namespace A035311.P8919774692202163183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035311.P8919774692202163183

/-! ## A035311.P8219973883886389724

`A035312(A000124(n+1))-A035312(A000217(n+1))`
-/

namespace A035311.P8219973883886389724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (A000124 (n + 1)).toNat - A035312 (A000217 (n + 1)).toNat

end

end A035311.P8219973883886389724

/-! ## A035311.P15515245739261709746

`A073158(A077168(n))`
-/

namespace A035311.P15515245739261709746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073158 (A077168 n).toNat

end

end A035311.P15515245739261709746

/-!
# A035312: Zorach additive triangle, read by rows.

The programs for A035312, there is no canonical definition to state claims against.
-/

/-! ## A035312.P1744454344724618026

`fo[A035358(n+1)-1]+1`
-/

namespace A035312.P1744454344724618026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035358 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A035312.P1744454344724618026

/-!
# A035313: (Largest) diagonal of the Zorach additive triangle A035312.

The programs for A035313, there is no canonical definition to state claims against.
-/

/-! ## A035313.P11755365468154394273

`∑{#}[n, C(n, #)*A035311(#)]`
-/

namespace A035313.P11755365468154394273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A035311 k

end

end A035313.P11755365468154394273

/-! ## A035313.P11629018978465072823

`A035312(∑[n]+n)`
-/

namespace A035313.P11629018978465072823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A035313.P11629018978465072823

/-! ## A035313.P15263170028457649166

`record[gcd(A002262(n+1), A035312(n))]`
-/

namespace A035313.P15263170028457649166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A035312 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035313.P15263170028457649166

/-!
# A035316: Sum of the square divisors of n.

The programs for A035316, the canonical program `A035316.P17845884678165723091` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035316 has offset 1).

The definition of A035316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035316.P8296417530574027598

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], #²]`
-/

namespace A035316.P8296417530574027598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A035316.P8296417530574027598

namespace A035316

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], #²]` -/
def P8296417530574027598.Spec : Prop :=
  ∀ n, (P8296417530574027598.a n : ℤ) = A035316 (n + 1)

end A035316

/-! ## A035316.P14798749237569527011

`A071326(1+n)+1`
-/

namespace A035316.P14798749237569527011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071326 (1 + n) + 1

end

end A035316.P14798749237569527011

namespace A035316

/-- `A071326(1+n)+1` -/
def P14798749237569527011.Spec : Prop :=
  ∀ n, P14798749237569527011.a n = A035316 (n + 1)

end A035316

/-! ## A035316.P14340463444093677080

`∑{d}[A000188(1+n), #²]`
-/

namespace A035316.P14340463444093677080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A035316.P14340463444093677080

namespace A035316

/-- `∑{d}[A000188(1+n), #²]` -/
def P14340463444093677080.Spec : Prop :=
  ∀ n, (P14340463444093677080.a n : ℤ) = A035316 (n + 1)

end A035316

/-! ## A035316.P17845884678165723091

`∑{d}[n+1, A037213(#)²]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035316

/-- `∑{d}[n+1, A037213(#)²]` -/
def P17845884678165723091.Spec : Prop :=
  ∀ n, P17845884678165723091.a n = A035316 (n + 1)

theorem P17845884678165723091.correct : P17845884678165723091.Spec := by
  intro n
  simp only [A035316, Nat.add_sub_cancel]

end A035316

/-! ## A035316.P2185265169273909795

`1-A326058(n+1)+n`
-/

namespace A035316.P2185265169273909795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326058 (n + 1) + (n : ℤ)

end

end A035316.P2185265169273909795

namespace A035316

/-- `1-A326058(n+1)+n` -/
def P2185265169273909795.Spec : Prop :=
  ∀ n, P2185265169273909795.a n = A035316 (n + 1)

theorem P2185265169273909795.correct : P2185265169273909795.Spec := by
  intro n
  simp only [A035316, Nat.add_sub_cancel, A035316.P2185265169273909795.a, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A326058, A326058.P945554037685919267.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035316

/-! ## A035316.P16275949860851834410

`∑{d}[n+1, #*A010052(#)]`
-/

namespace A035316.P16275949860851834410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010052 d

end

end A035316.P16275949860851834410

namespace A035316

/-- `∑{d}[n+1, #*A010052(#)]` -/
def P16275949860851834410.Spec : Prop :=
  ∀ n, P16275949860851834410.a n = A035316 (n + 1)

end A035316

/-! ## A035316.P10760298238094648423

`∑{d}[sqrt(A008833(n+1)), #²]`
-/

namespace A035316.P10760298238094648423
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A035316.P10760298238094648423

namespace A035316

/-- `∑{d}[sqrt(A008833(n+1)), #²]` -/
def P10760298238094648423.Spec : Prop :=
  ∀ n, (P10760298238094648423.a n : ℤ) = A035316 (n + 1)

end A035316

/-! ## A035316.P6362279635582194454

`∑{d}[A057918(n+1)+1, #²]`
-/

namespace A035316.P6362279635582194454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A035316.P6362279635582194454

namespace A035316

/-- `∑{d}[A057918(n+1)+1, #²]` -/
def P6362279635582194454.Spec : Prop :=
  ∀ n, (P6362279635582194454.a n : ℤ) = A035316 (n + 1)

end A035316

/-! ## A035316.P7020034430791539357

`∑{d}[A337101(2*(n+1)), #²]`
-/

namespace A035316.P7020034430791539357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A035316.P7020034430791539357

namespace A035316

/-- `∑{d}[A337101(2*(n+1)), #²]` -/
def P7020034430791539357.Spec : Prop :=
  ∀ n, (P7020034430791539357.a n : ℤ) = A035316 (n + 1)

end A035316

/-! ## A035316.P4181383039659611062

`∑{d}[n+1, #*A061020((n+1)/#)]`
-/

namespace A035316.P4181383039659611062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035316.P4181383039659611062

namespace A035316

/-- `∑{d}[n+1, #*A061020((n+1)/#)]` -/
def P4181383039659611062.Spec : Prop :=
  ∀ n, P4181383039659611062.a n = A035316 (n + 1)

end A035316

/-! ## A035316.P8433510090570873620

`A001157(A000188(n+1))`
-/

namespace A035316.P8433510090570873620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A000188 (n + 1)).toNat

end

end A035316.P8433510090570873620

namespace A035316

/-- `A001157(A000188(n+1))` -/
def P8433510090570873620.Spec : Prop :=
  ∀ n, P8433510090570873620.a n = A035316 (n + 1)

end A035316

/-! ## A035316.P16506499985692811822

`A076752(A008833(n+1))`
-/

namespace A035316.P16506499985692811822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076752 (A008833 (n + 1)).toNat

end

end A035316.P16506499985692811822

namespace A035316

/-- `A076752(A008833(n+1))` -/
def P16506499985692811822.Spec : Prop :=
  ∀ n, P16506499985692811822.a n = A035316 (n + 1)

end A035316

/-! ## A035316.P13569719396987817644

`∑{d}[A019554(A003557(n+1)), #²]`
-/

namespace A035316.P13569719396987817644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A003557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A035316.P13569719396987817644

namespace A035316

/-- `∑{d}[A019554(A003557(n+1)), #²]` -/
def P13569719396987817644.Spec : Prop :=
  ∀ n, (P13569719396987817644.a n : ℤ) = A035316 (n + 1)

end A035316

/-! ## A035316.P5988049554039557494

`A053807(A000188(n+1)+1)+1`
-/

namespace A035316.P5988049554039557494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053807 (A000188 (n + 1) + 1).toNat + 1

end

end A035316.P5988049554039557494

namespace A035316

/-- `A053807(A000188(n+1)+1)+1` -/
def P5988049554039557494.Spec : Prop :=
  ∀ n, P5988049554039557494.a n = A035316 (n + 1)

end A035316

/-! ## A035316.P9760246362507394678

`A000203(n+1)-A285309(n+1)`
-/

namespace A035316.P9760246362507394678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A285309 (n + 1)

end

end A035316.P9760246362507394678

namespace A035316

/-- `A000203(n+1)-A285309(n+1)` -/
def P9760246362507394678.Spec : Prop :=
  ∀ n, P9760246362507394678.a n = A035316 (n + 1)

theorem P9760246362507394678.correct : P9760246362507394678.Spec := by
  intro n
  simp only [A035316, Nat.add_sub_cancel, A035316.P9760246362507394678.a, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035316

/-! ## A035316.P4397329807642292313

`A001065(n+1)-A326059(n+1)`
-/

namespace A035316.P4397329807642292313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A326059 (n + 1)

end

end A035316.P4397329807642292313

namespace A035316

/-- `A001065(n+1)-A326059(n+1)` -/
def P4397329807642292313.Spec : Prop :=
  ∀ n, P4397329807642292313.a n = A035316 (n + 1)

theorem P4397329807642292313.correct : P4397329807642292313.Spec := by
  intro n
  simp only [A035316, Nat.add_sub_cancel, A035316.P4397329807642292313.a, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A001065, A001065.P4097147489331274860.a, A037213, A037213.P7544062464691828526.a, A326059, A326059.P8887039783102292576.a, A000196, A000196.P15434771586934192083.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A285309, A285309.P12080858862407877190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035316

/-! ## A035316.P5795479033087983275

`A349330(n+1)-A056595(n+1)`
-/

namespace A035316.P5795479033087983275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349330 (n + 1) - A056595 (n + 1)

end

end A035316.P5795479033087983275

namespace A035316

/-- `A349330(n+1)-A056595(n+1)` -/
def P5795479033087983275.Spec : Prop :=
  ∀ n, P5795479033087983275.a n = A035316 (n + 1)

theorem P5795479033087983275.correct : P5795479033087983275.Spec := by
  intro n
  simp only [A035316, Nat.add_sub_cancel, A035316.P5795479033087983275.a, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A056595, A056595.P14242287842452137538.a, A349330, A349330.P17425887972492855764.a, A000005, A000005.P16091521709108585461.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A046951, A046951.P12586408086602964063.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035316

/-! ## A035316.P4733645253955822220

`A344460(n+1)-A401866(n+1)`
-/

namespace A035316.P4733645253955822220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344460 (n + 1) - A401866 (n + 1)

end

end A035316.P4733645253955822220

namespace A035316

/-- `A344460(n+1)-A401866(n+1)` -/
def P4733645253955822220.Spec : Prop :=
  ∀ n, P4733645253955822220.a n = A035316 (n + 1)

end A035316

/-! ## A035316.P12536283215479437986

`A088580(n+1)-(A285309(n+1)+1)`
-/

namespace A035316.P12536283215479437986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A285309 (n + 1) + 1)

end

end A035316.P12536283215479437986

namespace A035316

/-- `A088580(n+1)-(A285309(n+1)+1)` -/
def P12536283215479437986.Spec : Prop :=
  ∀ n, P12536283215479437986.a n = A035316 (n + 1)

theorem P12536283215479437986.correct : P12536283215479437986.Spec := by
  intro n
  simp only [A035316, Nat.add_sub_cancel, A035316.P12536283215479437986.a, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A088580, A088580.P3089093194242277422.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035316

/-! ## A035316.P2110883690245806661

`∑{d}[n+1, A000203(#)*A061019((n+1)/#)]`
-/

namespace A035316.P2110883690245806661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035316.P2110883690245806661

namespace A035316

/-- `∑{d}[n+1, A000203(#)*A061019((n+1)/#)]` -/
def P2110883690245806661.Spec : Prop :=
  ∀ n, P2110883690245806661.a n = A035316 (n + 1)

end A035316

/-!
# A035317: Pascal-like triangle associated with A000670.

The programs for A035317, the canonical program `A035317.P15945536660630351488` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035317 has offset 0).

The definition of A035317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035317.P15262268809458662789

`C(∑[abs(T(n-1,k))], col(n))-T(n-1,k-1)` with `a(0)=1`
-/

namespace A035317.P15262268809458662789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.triCol n) : ℤ) - SequenceMachineLib.triUpLeft a n

end

end A035317.P15262268809458662789

namespace A035317

/-- `C(∑[abs(T(n-1,k))], col(n))-T(n-1,k-1)` -/
def P15262268809458662789.Spec : Prop :=
  ∀ n, P15262268809458662789.a n = A035317 n

end A035317

/-! ## A035317.P8553430928152015328

`C(row(n)+1, col(n))-T(n-1,k-1)` with `a(0)=1`
-/

namespace A035317.P8553430928152015328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℤ) - SequenceMachineLib.triUpLeft a n

end

end A035317.P8553430928152015328

namespace A035317

/-- `C(row(n)+1, col(n))-T(n-1,k-1)` -/
def P8553430928152015328.Spec : Prop :=
  ∀ n, P8553430928152015328.a n = A035317 n

end A035317

/-! ## A035317.P7559063111647849348

`T(col(n)-2*T(n-1,k-1), T(n-1,k))+T(n-1,k-1)+T(n-1,k)` with `a(0)=1`
-/

namespace A035317.P7559063111647849348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triCol n : ℤ) - (2 * SequenceMachineLib.triUpLeft a n : ℤ)) ((SequenceMachineLib.triUp a n : ℕ) : ℤ) + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A035317.P7559063111647849348

namespace A035317

/-- `T(col(n)-2*T(n-1,k-1), T(n-1,k))+T(n-1,k-1)+T(n-1,k)` -/
def P7559063111647849348.Spec : Prop :=
  ∀ n, (P7559063111647849348.a n : ℤ) = A035317 n

end A035317

/-! ## A035317.P2826716134154090916

`A059259(n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A035317.P2826716134154090916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059259 n + SequenceMachineLib.triUpLeft a n

end

end A035317.P2826716134154090916

namespace A035317

/-- `A059259(n)+T(n-1,k-1)` -/
def P2826716134154090916.Spec : Prop :=
  ∀ n, P2826716134154090916.a n = A035317 n

end A035317

/-! ## A035317.P9782719251096033725

`A074909(n)-T(n-1,k-1)` with `a(0)=1`
-/

namespace A035317.P9782719251096033725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074909 n - SequenceMachineLib.triUpLeft a n

end

end A035317.P9782719251096033725

namespace A035317

/-- `A074909(n)-T(n-1,k-1)` -/
def P9782719251096033725.Spec : Prop :=
  ∀ n, P9782719251096033725.a n = A035317 n

end A035317

/-! ## A035317.P6150956632113887249

`A029656(n+1)-A181971(n)`
-/

namespace A035317.P6150956632113887249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A181971 n

end

end A035317.P6150956632113887249

namespace A035317

/-- `A029656(n+1)-A181971(n)` -/
def P6150956632113887249.Spec : Prop :=
  ∀ n, P6150956632113887249.a n = A035317 n

end A035317

/-! ## A035317.P15945536660630351488

`A128176(A038722(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035317

/-- `A128176(A038722(n+1))` -/
def P15945536660630351488.Spec : Prop :=
  ∀ n, P15945536660630351488.a n = A035317 n

theorem P15945536660630351488.correct : P15945536660630351488.Spec := by
  intro n
  simp only [A035317]

end A035317

/-! ## A035317.P6996394872644652179

`A059259(comp[∑[n-1]])`
-/

namespace A035317.P6996394872644652179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A035317.P6996394872644652179

namespace A035317

/-- `A059259(comp[∑[n-1]])` -/
def P6996394872644652179.Spec : Prop :=
  ∀ n, P6996394872644652179.a n = A035317 n

end A035317

/-! ## A035317.P13025658118326838150

`A059260(2*A004736(n+1)+n)`
-/

namespace A035317.P13025658118326838150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A035317.P13025658118326838150

namespace A035317

/-- `A059260(2*A004736(n+1)+n)` -/
def P13025658118326838150.Spec : Prop :=
  ∀ n, P13025658118326838150.a n = A035317 n

end A035317

/-! ## A035317.P12261446944794935578

`A108561(lt[1, A025581(n)])`
-/

namespace A035317.P12261446944794935578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A035317.P12261446944794935578

namespace A035317

/-- `A108561(lt[1, A025581(n)])` -/
def P12261446944794935578.Spec : Prop :=
  ∀ n, P12261446944794935578.a n = A035317 n

end A035317

/-!
# A035318: Right-hand diagonal of A035309.

The programs for A035318, there is no canonical definition to state claims against.
-/

/-! ## A035318.P15432784858563697893

`A035309(∑[a(n-2)+1]-1)` with `a(0)=1, a(1)=1`
-/

namespace A035318.P15432784858563697893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035309 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A035318.P15432784858563697893

/-!
# A035319: Number of rooted maps of genus n with one vertex and one face; the maps are considered on orientable surfaces and contain 2n edges.

The programs for A035319, the canonical program `A035319.P17598320388168911366` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035319 has offset 0).

The definition of A035319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035319.P586165554857978813

`A035318(2*n)`
-/

namespace A035319.P586165554857978813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035318 (2 * n)

end

end A035319.P586165554857978813

namespace A035319

/-- `A035318(2*n)` -/
def P586165554857978813.Spec : Prop :=
  ∀ n, P586165554857978813.a n = A035319 n

end A035319

/-! ## A035319.P17598320388168911366

`A001147(2*n)/(2*n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035319

/-- `A001147(2*n)/(2*n+1)` -/
def P17598320388168911366.Spec : Prop :=
  ∀ n, P17598320388168911366.a n = (A035319 n : ℚ)

end A035319

/-! ## A035319.P16519911191691036366

`(4*n)!/((2*n+1)!*4^n)`
-/

namespace A035319.P16519911191691036366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) : ℚ) / (Nat.factorial (2 * n + 1) * 4 ^ n : ℚ)

end

end A035319.P16519911191691036366

namespace A035319

/-- `(4*n)!/((2*n+1)!*4^n)` -/
def P16519911191691036366.Spec : Prop :=
  ∀ n, P16519911191691036366.a n = (A035319 n : ℚ)

end A035319

/-! ## A035319.P9556305806501792323

`record[∏[1-2*n]]/(2*n+1)`
-/

namespace A035319.P9556305806501792323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (2 * n + 1 : ℚ)

end

end A035319.P9556305806501792323

namespace A035319

/-- `record[∏[1-2*n]]/(2*n+1)` -/
def P9556305806501792323.Spec : Prop :=
  ∀ n, P9556305806501792323.a n = (A035319 n : ℚ)

end A035319

/-! ## A035319.P8960216242834989460

`A035309(n*(n+2))`
-/

namespace A035319.P8960216242834989460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035309 (n * (n + 2))

end

end A035319.P8960216242834989460

namespace A035319

/-- `A035309(n*(n+2))` -/
def P8960216242834989460.Spec : Prop :=
  ∀ n, P8960216242834989460.a n = A035319 n

end A035319

/-!
# A035320: Right-hand diagonal of odd numbered rows in A035309.

The programs for A035320, there is no canonical definition to state claims against.
-/

/-! ## A035320.P17554270538217671331

`A035318(2*n+1)`
-/

namespace A035320.P17554270538217671331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035318 (2 * n + 1)

end

end A035320.P17554270538217671331

/-! ## A035320.P5769591782205432434

`A035318(record[xor(1, n)])`
-/

namespace A035320.P5769591782205432434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035318 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A035320.P5769591782205432434

/-! ## A035320.P15504662581348301103

`record[A035318(n%2*n)]`
-/

namespace A035320.P15504662581348301103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035318 (n % 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035320.P15504662581348301103

/-! ## A035320.P10053712874720406485

`record[A035318(A004442(n))]`
-/

namespace A035320.P10053712874720406485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035318 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035320.P10053712874720406485

/-! ## A035320.P1772779730750967689

`record[A035318(A026741(n))]`
-/

namespace A035320.P1772779730750967689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035318 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035320.P1772779730750967689

/-!
# A035321: Sum of composite divisors of n that are not primes nor prime powers.

The programs for A035321, the canonical program `A035321.P4575920609227555381` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035321 has offset 1).

The definition of A035321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035321.P16297908977023406063

`A178637(n+1)-1`
-/

namespace A035321.P16297908977023406063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178637 (n + 1) - 1

end

end A035321.P16297908977023406063

namespace A035321

/-- `A178637(n+1)-1` -/
def P16297908977023406063.Spec : Prop :=
  ∀ n, P16297908977023406063.a n = A035321 (n + 1)

theorem P16297908977023406063.correct : P16297908977023406063.Spec := by
  intro n
  simp only [A035321, Nat.add_sub_cancel, A035321.P16297908977023406063.a, A035321.P4575920609227555381.f1, A035321.P4575920609227555381.a, A074591, A074591.P7866340962004254295.a, A178637, A178637.P1570303736559003244.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035321

/-! ## A035321.P4575920609227555381

`∑{d}[1+n, A074591(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035321

/-- `∑{d}[1+n, A074591(#)]` -/
def P4575920609227555381.Spec : Prop :=
  ∀ n, P4575920609227555381.a n = A035321 (n + 1)

theorem P4575920609227555381.correct : P4575920609227555381.Spec := by
  intro n
  simp only [A035321, Nat.add_sub_cancel]

end A035321

/-! ## A035321.P3324531003292151712

`∑{d}[1+n, #*A143731(#)]`
-/

namespace A035321.P3324531003292151712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A143731 d

end

end A035321.P3324531003292151712

namespace A035321

/-- `∑{d}[1+n, #*A143731(#)]` -/
def P3324531003292151712.Spec : Prop :=
  ∀ n, P3324531003292151712.a n = A035321 (n + 1)

end A035321

/-! ## A035321.P7270648270991135771

`A074591(n+1)+A035322(n+1)`
-/

namespace A035321.P7270648270991135771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1) + A035322 (n + 1)

end

end A035321.P7270648270991135771

namespace A035321

/-- `A074591(n+1)+A035322(n+1)` -/
def P7270648270991135771.Spec : Prop :=
  ∀ n, P7270648270991135771.a n = A035321 (n + 1)

theorem P7270648270991135771.correct : P7270648270991135771.Spec := by
  intro n
  simp only [A035321, Nat.add_sub_cancel, A035321.P7270648270991135771.a, A035321.P4575920609227555381.f1, A035321.P4575920609227555381.a, A035322, A035322.P14766267427097087689.f1, A035322.P14766267427097087689.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035321

/-! ## A035321.P530174357210391450

`A000203(n+1)-A023888(n+1)`
-/

namespace A035321.P530174357210391450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A023888 (n + 1)

end

end A035321.P530174357210391450

namespace A035321

/-- `A000203(n+1)-A023888(n+1)` -/
def P530174357210391450.Spec : Prop :=
  ∀ n, P530174357210391450.a n = A035321 (n + 1)

theorem P530174357210391450.correct : P530174357210391450.Spec := by
  intro n
  simp only [A035321, Nat.add_sub_cancel, A035321.P530174357210391450.a, A035321.P4575920609227555381.f1, A035321.P4575920609227555381.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023888, A023888.P17873500436284849145.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035321

/-! ## A035321.P15622057931235633595

`A039653(n+1)-A023889(n+1)`
-/

namespace A035321.P15622057931235633595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - A023889 (n + 1)

end

end A035321.P15622057931235633595

namespace A035321

/-- `A039653(n+1)-A023889(n+1)` -/
def P15622057931235633595.Spec : Prop :=
  ∀ n, P15622057931235633595.a n = A035321 (n + 1)

end A035321

/-! ## A035321.P499690379467208919

`A023891(n+1)-A284117(n+1)`
-/

namespace A035321.P499690379467208919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (n + 1) - A284117 (n + 1)

end

end A035321.P499690379467208919

namespace A035321

/-- `A023891(n+1)-A284117(n+1)` -/
def P499690379467208919.Spec : Prop :=
  ∀ n, P499690379467208919.a n = A035321 (n + 1)

end A035321

/-! ## A035321.P3602984340595507313

`A326988(n+1)-A284233(n+1)`
-/

namespace A035321.P3602984340595507313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326988 (n + 1) - A284233 (n + 1)

end

end A035321.P3602984340595507313

namespace A035321

/-- `A326988(n+1)-A284233(n+1)` -/
def P3602984340595507313.Spec : Prop :=
  ∀ n, P3602984340595507313.a n = A035321 (n + 1)

end A035321

/-! ## A035321.P12325368471808018894

`A000203(n+1)-(A023889(n+1)+1)`
-/

namespace A035321.P12325368471808018894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A023889 (n + 1) + 1)

end

end A035321.P12325368471808018894

namespace A035321

/-- `A000203(n+1)-(A023889(n+1)+1)` -/
def P12325368471808018894.Spec : Prop :=
  ∀ n, P12325368471808018894.a n = A035321 (n + 1)

theorem P12325368471808018894.correct : P12325368471808018894.Spec := by
  intro n
  simp only [A035321, Nat.add_sub_cancel, A035321.P12325368471808018894.a, A035321.P4575920609227555381.f1, A035321.P4575920609227555381.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023889, A023889.P17073280978498141665.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, A023888, A023888.P17873500436284849145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035321

/-! ## A035321.P17690034038767089378

`A088580(n+1)-(A023888(n+1)+1)`
-/

namespace A035321.P17690034038767089378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A023888 (n + 1) + 1)

end

end A035321.P17690034038767089378

namespace A035321

/-- `A088580(n+1)-(A023888(n+1)+1)` -/
def P17690034038767089378.Spec : Prop :=
  ∀ n, P17690034038767089378.a n = A035321 (n + 1)

theorem P17690034038767089378.correct : P17690034038767089378.Spec := by
  intro n
  simp only [A035321, Nat.add_sub_cancel, A035321.P17690034038767089378.a, A035321.P4575920609227555381.f1, A035321.P4575920609227555381.a, A023888, A023888.P17873500436284849145.a, A074591, A074591.P7866340962004254295.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035321

/-! ## A035321.P17776484118163970205

`A023890(n+1)-(A284117(n+1)+1)`
-/

namespace A035321.P17776484118163970205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - (A284117 (n + 1) + 1)

end

end A035321.P17776484118163970205

namespace A035321

/-- `A023890(n+1)-(A284117(n+1)+1)` -/
def P17776484118163970205.Spec : Prop :=
  ∀ n, P17776484118163970205.a n = A035321 (n + 1)

end A035321

/-! ## A035321.P12533725788897791829

`A001065(n+1)-A023889(n+1)+n`
-/

namespace A035321.P12533725788897791829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A023889 (n + 1) + (n : ℤ)

end

end A035321.P12533725788897791829

namespace A035321

/-- `A001065(n+1)-A023889(n+1)+n` -/
def P12533725788897791829.Spec : Prop :=
  ∀ n, P12533725788897791829.a n = A035321 (n + 1)

theorem P12533725788897791829.correct : P12533725788897791829.Spec := by
  intro n
  simp only [A035321, Nat.add_sub_cancel, A035321.P12533725788897791829.a, A035321.P4575920609227555381.f1, A035321.P4575920609227555381.a, A001065, A001065.P4097147489331274860.a, A023889, A023889.P17073280978498141665.a, A074591, A074591.P7866340962004254295.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, A023888, A023888.P17873500436284849145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035321

/-! ## A035321.P6467392681012836057

`A245092(2*n+1)-(A023889(n+1)+1)`
-/

namespace A035321.P6467392681012836057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - (A023889 (n + 1) + 1)

end

end A035321.P6467392681012836057

namespace A035321

/-- `A245092(2*n+1)-(A023889(n+1)+1)` -/
def P6467392681012836057.Spec : Prop :=
  ∀ n, P6467392681012836057.a n = A035321 (n + 1)

end A035321

/-! ## A035321.P10253227622645750543

`A008475(n+1)+A167515(n+1)-A023888(n+1)`
-/

namespace A035321.P10253227622645750543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (A167515 (n + 1) - A023888 (n + 1))

end

end A035321.P10253227622645750543

namespace A035321

/-- `A008475(n+1)+A167515(n+1)-A023888(n+1)` -/
def P10253227622645750543.Spec : Prop :=
  ∀ n, P10253227622645750543.a n = A035321 (n + 1)

theorem P10253227622645750543.correct : P10253227622645750543.Spec := by
  intro n
  simp only [A035321, Nat.add_sub_cancel, A035321.P10253227622645750543.a, A035321.P4575920609227555381.f1, A035321.P4575920609227555381.a, A008475, A008475.P2912436043946083167.f1, A008475.P2912436043946083167.a, A023888, A023888.P17873500436284849145.a, A074591, A074591.P7866340962004254295.a, A167515, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035321

/-! ## A035321.P8640506825997914330

`A159077(n+1)+A178636(n+1)-A023888(n+1)`
-/

namespace A035321.P8640506825997914330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) + (A178636 (n + 1) - A023888 (n + 1))

end

end A035321.P8640506825997914330

namespace A035321

/-- `A159077(n+1)+A178636(n+1)-A023888(n+1)` -/
def P8640506825997914330.Spec : Prop :=
  ∀ n, P8640506825997914330.a n = A035321 (n + 1)

theorem P8640506825997914330.correct : P8640506825997914330.Spec := by
  intro n
  simp only [A035321, Nat.add_sub_cancel, A035321.P8640506825997914330.a, A035321.P4575920609227555381.f1, A035321.P4575920609227555381.a, A023888, A023888.P17873500436284849145.a, A074591, A074591.P7866340962004254295.a, A159077, A159077.P14146349899783805996.a, A178636, A178636.P5283396583048980149.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P2912436043946083167.f1, A008475.P2912436043946083167.a, A010055, A010055.P13257247064813316035.f1, A010055.P13257247064813316035.a, A167515, A167515.P2764876312369213402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035321

/-! ## A035321.P7533588916613475220

`A023443(A178637(n+1))`
-/

namespace A035321.P7533588916613475220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A178637 (n + 1)).toNat

end

end A035321.P7533588916613475220

namespace A035321

/-- `A023443(A178637(n+1))` -/
def P7533588916613475220.Spec : Prop :=
  ∀ n, P7533588916613475220.a n = A035321 (n + 1)

end A035321

/-!
# A035322: Sum of composite divisors of n that are less than n and are not primes nor prime powers.

The programs for A035322, the canonical program `A035322.P14766267427097087689` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035322 has offset 1).

The definition of A035322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035322.P10122682805156545055

`∑{d}[n+1, (#%(n+1))%A291784(#)]`
-/

namespace A035322.P10122682805156545055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((d % (n + 1) : ℕ) : ℤ) (A291784 d)

end

end A035322.P10122682805156545055

namespace A035322

/-- `∑{d}[n+1, (#%(n+1))%A291784(#)]` -/
def P10122682805156545055.Spec : Prop :=
  ∀ n, P10122682805156545055.a n = A035322 (n + 1)

end A035322

/-! ## A035322.P101355639569978392

`A035321(1+n)-A074591(n+1)`
-/

namespace A035322.P101355639569978392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035321 (1 + n) - A074591 (n + 1)

end

end A035322.P101355639569978392

namespace A035322

/-- `A035321(1+n)-A074591(n+1)` -/
def P101355639569978392.Spec : Prop :=
  ∀ n, P101355639569978392.a n = A035322 (n + 1)

end A035322

/-! ## A035322.P14766267427097087689

`∑{d}[n+1, A074591(#)]-A074591(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035322

/-- `∑{d}[n+1, A074591(#)]-A074591(n+1)` -/
def P14766267427097087689.Spec : Prop :=
  ∀ n, P14766267427097087689.a n = A035322 (n + 1)

theorem P14766267427097087689.correct : P14766267427097087689.Spec := by
  intro n
  simp only [A035322, Nat.add_sub_cancel]

end A035322

/-! ## A035322.P9232399007320345449

`∑{d}[n+1, A035321(#)*A157658((n+1)/#)]`
-/

namespace A035322.P9232399007320345449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035321 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035322.P9232399007320345449

namespace A035322

/-- `∑{d}[n+1, A035321(#)*A157658((n+1)/#)]` -/
def P9232399007320345449.Spec : Prop :=
  ∀ n, P9232399007320345449.a n = A035322 (n + 1)

end A035322

/-! ## A035322.P10422422171608135991

`A048050(n+1)-A023889(A048671(n+1))`
-/

namespace A035322.P10422422171608135991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) - A023889 (A048671 (n + 1)).toNat

end

end A035322.P10422422171608135991

namespace A035322

/-- `A048050(n+1)-A023889(A048671(n+1))` -/
def P10422422171608135991.Spec : Prop :=
  ∀ n, P10422422171608135991.a n = A035322 (n + 1)

end A035322

/-! ## A035322.P11408104313058481343

`∑{d}[n+1, lcm(#, A343653(#))%(n+1)]`
-/

namespace A035322.P11408104313058481343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lcm (d : ℤ) (A343653 d) % (n + 1)

end

end A035322.P11408104313058481343

namespace A035322

/-- `∑{d}[n+1, lcm(#, A343653(#))%(n+1)]` -/
def P11408104313058481343.Spec : Prop :=
  ∀ n, (P11408104313058481343.a n : ℤ) = A035322 (n + 1)

end A035322

/-!
# A035323: Related to deca-factorial numbers A045757.

The programs for A035323, there is no canonical definition to state claims against.
-/

/-! ## A035323.P8502181477511979740

`10^n*A045757(n+1)/(n+1)!`
-/

namespace A035323.P8502181477511979740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) * A045757 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A035323.P8502181477511979740

/-! ## A035323.P6151281638118937165

`A035308(n+1)/10`
-/

namespace A035323.P6151281638118937165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035308 (n + 1) : ℚ) / 10

end

end A035323.P6151281638118937165

/-! ## A035323.P2755603799898699588

`Δ[∑[A035308(n)]/10]`
-/

namespace A035323.P2755603799898699588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035308 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035323.P2755603799898699588

/-!
# A035324: A convolution triangle of numbers, generalizing Pascal's triangle A007318.

The programs for A035324, there is no canonical definition to state claims against.
-/

/-! ## A035324.P8614443819651190992

`A075435(2+n)/(2*A059268(n))`
-/

namespace A035324.P8614443819651190992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075435 (2 + n) : ℚ) / (2 * A059268 n : ℚ)

end

end A035324.P8614443819651190992

/-! ## A035324.P5990229342753697504

`A075435(n+2)/A000079(A002260(n+1))`
-/

namespace A035324.P5990229342753697504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075435 (n + 2) : ℚ) / (A000079 (A002260 (n + 1)).toNat : ℚ)

end

end A035324.P5990229342753697504

/-! ## A035324.P12553577877547317417

`A033184(n+1)/A001497(n)*A035342(n+1)`
-/

namespace A035324.P12553577877547317417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033184 (n + 1) : ℚ) / (A001497 n : ℚ) * (A035342 (n + 1) : ℚ)

end

end A035324.P12553577877547317417

/-! ## A035324.P593343292538123228

`A030523(n+1)/A046089(n+1)*A035342(n+1)`
-/

namespace A035324.P593343292538123228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030523 (n + 1) : ℚ) / (A046089 (n + 1) : ℚ) * (A035342 (n + 1) : ℚ)

end

end A035324.P593343292538123228

/-! ## A035324.P7162778615516749183

`A075435(n+2)/A004277(A059268(n))`
-/

namespace A035324.P7162778615516749183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075435 (n + 2) : ℚ) / (A004277 (A059268 n).toNat : ℚ)

end

end A035324.P7162778615516749183

/-! ## A035324.P16214997126371848686

`2*A116395(n)-A090285(n)`
-/

namespace A035324.P16214997126371848686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116395 n - A090285 n

end

end A035324.P16214997126371848686

/-!
# A035326: Beginning of last prime pattern of length n to appear among positive integers.

The programs for A035326, there is no canonical definition to state claims against.
-/

/-! ## A035326.P3836788168874412098

`A280418(n+1)+A000038(n)-n`
-/

namespace A035326.P3836788168874412098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280418 (n + 1) + (A000038 n - (n : ℤ))

end

end A035326.P3836788168874412098

/-! ## A035326.P3252802321143214676

`A030296(n+1)+A010051(A000949(n))`
-/

namespace A035326.P3252802321143214676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (n + 1) + A010051 (A000949 n).toNat

end

end A035326.P3252802321143214676

/-! ## A035326.P3716317869245621797

`A090173(A000142(n))+A030296(n+1)`
-/

namespace A035326.P3716317869245621797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090173 (A000142 n).toNat + A030296 (n + 1)

end

end A035326.P3716317869245621797

/-! ## A035326.P5762909546308010134

`A030296(n+1)+A030260(A288196(n))`
-/

namespace A035326.P5762909546308010134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030296 (n + 1) + A030260 (A288196 n).toNat

end

end A035326.P5762909546308010134

/-!
# A035327: Write n in binary, interchange 0's and 1's, convert back to decimal.

The programs for A035327, the canonical program `A035327.P258997810375859489` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035327 has offset 0).

The definition of A035327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035327.P10083728142665560616

`2*a(floor(n/2))+1-n%2` with `a(0)=1, a(1)=0`
-/

namespace A035327.P10083728142665560616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + 1 - ((n % 2 : ℕ) : ℤ)

end

end A035327.P10083728142665560616

namespace A035327

/-- `2*a(floor(n/2))+1-n%2` -/
def P10083728142665560616.Spec : Prop :=
  ∀ n, P10083728142665560616.a n = A035327 n

end A035327

/-! ## A035327.P258997810375859489

`abs(2*A053644(n)-n-1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035327

/-- `abs(2*A053644(n)-n-1)` -/
def P258997810375859489.Spec : Prop :=
  ∀ n, P258997810375859489.a n = A035327 n

theorem P258997810375859489.correct : P258997810375859489.Spec := by
  intro n
  simp only [A035327]

end A035327

/-! ## A035327.P13304621721606522712

`2^(1+A000523(max(n, 1)))-1-n`
-/

namespace A035327.P13304621721606522712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + A000523 (max n 1) : ℤ) - 1 - (n : ℚ)

end

end A035327.P13304621721606522712

namespace A035327

/-- `2^(1+A000523(max(n, 1)))-1-n` -/
def P13304621721606522712.Spec : Prop :=
  ∀ n, P13304621721606522712.a n = (A035327 n : ℚ)

end A035327

/-! ## A035327.P9763196235668479946

`fp[and(n+1, -n)]-n`
-/

namespace A035327.P9763196235668479946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - (n : ℤ)

end

end A035327.P9763196235668479946

namespace A035327

/-- `fp[and(n+1, -n)]-n` -/
def P9763196235668479946.Spec : Prop :=
  ∀ n, P9763196235668479946.a n = A035327 n

end A035327

/-! ## A035327.P8665480576240144432

`(n-1+a(n-1))%n` with `a(0)=1`
-/

namespace A035327.P8665480576240144432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - 1 + a (n - 1)) (n : ℤ)

end

end A035327.P8665480576240144432

namespace A035327

/-- `(n-1+a(n-1))%n` -/
def P8665480576240144432.Spec : Prop :=
  ∀ n, P8665480576240144432.a n = A035327 n

end A035327

/-! ## A035327.P16337493149601787030

`(n-(1-a(n-1)))%n` with `a(0)=1`
-/

namespace A035327.P16337493149601787030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n : ℤ) - (1 - a (n - 1))) (n : ℤ)

end

end A035327.P16337493149601787030

namespace A035327

/-- `(n-(1-a(n-1)))%n` -/
def P16337493149601787030.Spec : Prop :=
  ∀ n, P16337493149601787030.a n = A035327 n

end A035327

/-! ## A035327.P3541040183690560418

`abs(or(n, -a(n-1)))-1` with `a(0)=1`
-/

namespace A035327.P3541040183690560418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |Int.lor (n : ℤ) (-a (n - 1))| - 1

end

end A035327.P3541040183690560418

namespace A035327

/-- `abs(or(n, -a(n-1)))-1` -/
def P3541040183690560418.Spec : Prop :=
  ∀ n, P3541040183690560418.a n = A035327 n

end A035327

/-! ## A035327.P2461786688880514590

`fp[2^val(n+2, 2)]-(n-1)`
-/

namespace A035327.P2461786688880514590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => n < f1 j) 0 : ℤ) - ((n : ℤ) - 1)

end

end A035327.P2461786688880514590

namespace A035327

/-- `fp[2^val(n+2, 2)]-(n-1)` -/
def P2461786688880514590.Spec : Prop :=
  ∀ n, P2461786688880514590.a n = A035327 n

end A035327

/-! ## A035327.P6490875699210785772

`fp[or(n, n+2)-n]-(n-1)`
-/

namespace A035327.P6490875699210785772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - ((n : ℤ) - 1)

end

end A035327.P6490875699210785772

namespace A035327

/-- `fp[or(n, n+2)-n]-(n-1)` -/
def P6490875699210785772.Spec : Prop :=
  ∀ n, P6490875699210785772.a n = A035327 n

end A035327

/-! ## A035327.P3671095623439466654

`fp[xor(n, n+2)-n]-(n-1)`
-/

namespace A035327.P3671095623439466654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 2) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - ((n : ℤ) - 1)

end

end A035327.P3671095623439466654

namespace A035327

/-- `fp[xor(n, n+2)-n]-(n-1)` -/
def P3671095623439466654.Spec : Prop :=
  ∀ n, P3671095623439466654.a n = A035327 n

end A035327

/-! ## A035327.P11763699779818864047

`or(n, a(n-1)+n-1)-n` with `a(0)=1`
-/

namespace A035327.P11763699779818864047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (n : ℤ) (a (n - 1) + ((n : ℤ) - 1)) - (n : ℤ)

end

end A035327.P11763699779818864047

namespace A035327

/-- `or(n, a(n-1)+n-1)-n` -/
def P11763699779818864047.Spec : Prop :=
  ∀ n, P11763699779818864047.a n = A035327 n

end A035327

/-! ## A035327.P14685346560482161212

`log2(gcd(2, n))+2*a(floor(n/2))` with `a(0)=1, a(1)=0`
-/

namespace A035327.P14685346560482161212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A035327.P14685346560482161212

namespace A035327

/-- `log2(gcd(2, n))+2*a(floor(n/2))` -/
def P14685346560482161212.Spec : Prop :=
  ∀ n, P14685346560482161212.a n = (A035327 n : ℝ)

end A035327

/-! ## A035327.P6155897377819833850

`and(a(n-1)+n-1, -(n+1))` with `a(0)=1`
-/

namespace A035327.P6155897377819833850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1) + ((n : ℤ) - 1)) (-(n + 1 : ℤ))

end

end A035327.P6155897377819833850

namespace A035327

/-- `and(a(n-1)+n-1, -(n+1))` -/
def P6155897377819833850.Spec : Prop :=
  ∀ n, P6155897377819833850.a n = A035327 n

end A035327

/-! ## A035327.P9450383714727633357

`fp[n+1-and(n+1, n-1)]-n`
-/

namespace A035327.P9450383714727633357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 : ℤ) - (n : ℤ)

end

end A035327.P9450383714727633357

namespace A035327

/-- `fp[n+1-and(n+1, n-1)]-n` -/
def P9450383714727633357.Spec : Prop :=
  ∀ n, P9450383714727633357.a n = A035327 n

end A035327

/-! ## A035327.P16812941326102727018

`n-1-and(n-a(n-1), 2*n)` with `a(0)=1`
-/

namespace A035327.P16812941326102727018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 1 - Int.land ((n : ℤ) - a (n - 1)) (2 * n : ℤ)

end

end A035327.P16812941326102727018

namespace A035327

/-- `n-1-and(n-a(n-1), 2*n)` -/
def P16812941326102727018.Spec : Prop :=
  ∀ n, P16812941326102727018.a n = A035327 n

end A035327

/-! ## A035327.P8153682038634211038

`n*floor(1/(a(n-1)+1))+a(n-1)-1` with `a(0)=1`
-/

namespace A035327.P8153682038634211038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ⌊1 / (a (n - 1) + 1 : ℚ)⌋ + (a (n - 1) - 1)

end

end A035327.P8153682038634211038

namespace A035327

/-- `n*floor(1/(a(n-1)+1))+a(n-1)-1` -/
def P8153682038634211038.Spec : Prop :=
  ∀ n, P8153682038634211038.a n = A035327 n

end A035327

/-! ## A035327.P12053216325855917378

`floor(1/(a(n-1)+1/n)+a(n-1)-1)` with `a(0)=1`
-/

namespace A035327.P12053216325855917378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊1 / ((a (n - 1) : ℚ) + 1 / (n : ℚ)) + (a (n - 1) - 1 : ℚ)⌋

end

end A035327.P12053216325855917378

namespace A035327

/-- `floor(1/(a(n-1)+1/n)+a(n-1)-1)` -/
def P12053216325855917378.Spec : Prop :=
  ∀ n, P12053216325855917378.a n = A035327 n

end A035327

/-! ## A035327.P6058890871206586400

`a(n-1)-1-n*floor((a(n-1)-1)/n)` with `a(0)=1`
-/

namespace A035327.P6058890871206586400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 1 - (n : ℤ) * ⌊(a (n - 1) - 1 : ℚ) / (n : ℚ)⌋

end

end A035327.P6058890871206586400

namespace A035327

/-- `a(n-1)-1-n*floor((a(n-1)-1)/n)` -/
def P6058890871206586400.Spec : Prop :=
  ∀ n, P6058890871206586400.a n = A035327 n

end A035327

/-! ## A035327.P8640989607568431282

`A003817(or(1, n))-n`
-/

namespace A035327.P8640989607568431282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (Nat.lor 1 n) - (n : ℤ)

end

end A035327.P8640989607568431282

namespace A035327

/-- `A003817(or(1, n))-n` -/
def P8640989607568431282.Spec : Prop :=
  ∀ n, P8640989607568431282.a n = A035327 n

end A035327

/-!
# A035328: a(n) = n*(2*n-1)*(2*n+1).

The programs for A035328, the canonical program `A035328.P8981633171215695012` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035328 has offset 0).

The definition of A035328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n-1)*(2*n+1)` (program `A035328.P8981633171215695012`, by `A035328.P8981633171215695012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A035328.P16605799161865916938

`ogf((3x+18x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A035328.P16605799161865916938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 18, 3] [1, -4, 6, -4, 1] n

end

end A035328.P16605799161865916938

namespace A035328

/-- `ogf((3x+18x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P16605799161865916938.Spec : Prop :=
  ∀ n, P16605799161865916938.a n = A035328 n

end A035328

/-! ## A035328.P8981633171215695012

`n*(2*n-1)*(2*n+1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035328

/-- `n*(2*n-1)*(2*n+1)` -/
def P8981633171215695012.Spec : Prop :=
  ∀ n, P8981633171215695012.a n = A035328 n

theorem P8981633171215695012.correct : P8981633171215695012.Spec := by
  intro n
  simp only [A035328]

end A035328

/-! ## A035328.P10111955047232567296

`3*C(Δ[n²], 3)`
-/

namespace A035328.P10111955047232567296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3

end

end A035328.P10111955047232567296

namespace A035328

/-- `3*C(Δ[n²], 3)` -/
def P10111955047232567296.Spec : Prop :=
  ∀ n, (P10111955047232567296.a n : ℤ) = A035328 n

end A035328

/-! ## A035328.P4565232778118991028

`lcm(1-(2*n)², n)`
-/

namespace A035328.P4565232778118991028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((2 * n) ^ 2 : ℤ)) (n : ℤ)

end

end A035328.P4565232778118991028

namespace A035328

/-- `lcm(1-(2*n)², n)` -/
def P4565232778118991028.Spec : Prop :=
  ∀ n, (P4565232778118991028.a n : ℤ) = A035328 n

end A035328

/-! ## A035328.P8187720917782386857

`C(2*n+1, 3)*3`
-/

namespace A035328.P8187720917782386857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 3 * 3

end

end A035328.P8187720917782386857

namespace A035328

/-- `C(2*n+1, 3)*3` -/
def P8187720917782386857.Spec : Prop :=
  ∀ n, (P8187720917782386857.a n : ℤ) = A035328 n

theorem P8187720917782386857.correct : P8187720917782386857.Spec := by
  intro n
  simp only [A035328, Nat.add_sub_cancel, A035328.P8187720917782386857.a, A035328.P8981633171215695012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035328

/-! ## A035328.P12665481709914340448

`n*or(1, (2*n)²-1)`
-/

namespace A035328.P12665481709914340448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 (((2 * n) ^ 2 : ℤ) - 1)

end

end A035328.P12665481709914340448

namespace A035328

/-- `n*or(1, (2*n)²-1)` -/
def P12665481709914340448.Spec : Prop :=
  ∀ n, P12665481709914340448.a n = A035328 n

end A035328

/-! ## A035328.P3035307106957482526

`n*xor(1, (2*n)²-2)`
-/

namespace A035328.P3035307106957482526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 (((2 * n) ^ 2 : ℤ) - 2)

end

end A035328.P3035307106957482526

namespace A035328

/-- `n*xor(1, (2*n)²-2)` -/
def P3035307106957482526.Spec : Prop :=
  ∀ n, P3035307106957482526.a n = A035328 n

end A035328

/-! ## A035328.P266739276343836390

`n*(Δ[C(2*n, 3)]-1)`
-/

namespace A035328.P266739276343836390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1)

end

end A035328.P266739276343836390

namespace A035328

/-- `n*(Δ[C(2*n, 3)]-1)` -/
def P266739276343836390.Spec : Prop :=
  ∀ n, P266739276343836390.a n = A035328 n

theorem P266739276343836390.correct : P266739276343836390.Spec := by
  intro n
  simp only [A035328, Nat.add_sub_cancel, A035328.P266739276343836390.f1, A035328.P266739276343836390.a, A035328.P8981633171215695012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035328

/-! ## A035328.P17292597684202187688

`∑[3*comp[lcm(2, n+1)]²]`
-/

namespace A035328.P17292597684202187688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035328.P17292597684202187688

namespace A035328

/-- `∑[3*comp[lcm(2, n+1)]²]` -/
def P17292597684202187688.Spec : Prop :=
  ∀ n, (P17292597684202187688.a n : ℤ) = A035328 n

end A035328

/-! ## A035328.P8722866348715548937

`abs(n*or(1, -(2*n)²))`
-/

namespace A035328.P8722866348715548937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor 1 (-((2 * n) ^ 2 : ℤ))|

end

end A035328.P8722866348715548937

namespace A035328

/-- `abs(n*or(1, -(2*n)²))` -/
def P8722866348715548937.Spec : Prop :=
  ∀ n, P8722866348715548937.a n = A035328 n

end A035328

/-! ## A035328.P15666270647748228720

`-(n*or(1, -(2*n)²))`
-/

namespace A035328.P15666270647748228720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor 1 (-((2 * n) ^ 2 : ℤ)))

end

end A035328.P15666270647748228720

namespace A035328

/-- `-(n*or(1, -(2*n)²))` -/
def P15666270647748228720.Spec : Prop :=
  ∀ n, P15666270647748228720.a n = A035328 n

end A035328

/-! ## A035328.P11456712940948555520

`abs(n*xor(1, -(2*n)²))`
-/

namespace A035328.P11456712940948555520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor 1 (-((2 * n) ^ 2 : ℤ))|

end

end A035328.P11456712940948555520

namespace A035328

/-- `abs(n*xor(1, -(2*n)²))` -/
def P11456712940948555520.Spec : Prop :=
  ∀ n, P11456712940948555520.a n = A035328 n

end A035328

/-! ## A035328.P16986462759867412689

`-(n*xor(1, -(2*n)²))`
-/

namespace A035328.P16986462759867412689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.xor 1 (-((2 * n) ^ 2 : ℤ)))

end

end A035328.P16986462759867412689

namespace A035328

/-- `-(n*xor(1, -(2*n)²))` -/
def P16986462759867412689.Spec : Prop :=
  ∀ n, P16986462759867412689.a n = A035328 n

end A035328

/-! ## A035328.P4357100297222749702

`n*(3-∑[a(n-1)-8])` with `a(0)=4`
-/

namespace A035328.P4357100297222749702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035328.P4357100297222749702

namespace A035328

/-- `n*(3-∑[a(n-1)-8])` -/
def P4357100297222749702.Spec : Prop :=
  ∀ n, P4357100297222749702.a n = A035328 n

end A035328

/-! ## A035328.P16902246181371347588

`((2*n)²-1)*gcd(n, 2*n)`
-/

namespace A035328.P16902246181371347588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n) ^ 2 : ℤ) - 1) * (Nat.gcd n (2 * n) : ℤ)

end

end A035328.P16902246181371347588

namespace A035328

/-- `((2*n)²-1)*gcd(n, 2*n)` -/
def P16902246181371347588.Spec : Prop :=
  ∀ n, P16902246181371347588.a n = A035328 n

theorem P16902246181371347588.correct : P16902246181371347588.Spec := by
  intro n
  simp only [A035328, Nat.add_sub_cancel, A035328.P16902246181371347588.a, A035328.P8981633171215695012.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A035328

/-! ## A035328.P13995054190366549912

`n*record[lcm(n+2, 2*n)/2]`
-/

namespace A035328.P13995054190366549912
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035328.P13995054190366549912

namespace A035328

/-- `n*record[lcm(n+2, 2*n)/2]` -/
def P13995054190366549912.Spec : Prop :=
  ∀ n, P13995054190366549912.a n = (A035328 n : ℚ)

end A035328

/-! ## A035328.P6582283088602941906

`n*record[(n+2)*xor(1, n-1)]`
-/

namespace A035328.P6582283088602941906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.xor 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035328.P6582283088602941906

namespace A035328

/-- `n*record[(n+2)*xor(1, n-1)]` -/
def P6582283088602941906.Spec : Prop :=
  ∀ n, P6582283088602941906.a n = A035328 n

end A035328

/-! ## A035328.P5388219968599624874

`Δ[lcm(n², (n-1)²)-∑[n-1]]`
-/

namespace A035328.P5388219968599624874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n ^ 2 : ℤ) (((n : ℤ) - 1) ^ 2) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035328.P5388219968599624874

namespace A035328

/-- `Δ[lcm(n², (n-1)²)-∑[n-1]]` -/
def P5388219968599624874.Spec : Prop :=
  ∀ n, P5388219968599624874.a n = A035328 n

end A035328

/-! ## A035328.P16064758395949319106

`A033430(n)-n`
-/

namespace A035328.P16064758395949319106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 n - (n : ℤ)

end

end A035328.P16064758395949319106

namespace A035328

/-- `A033430(n)-n` -/
def P16064758395949319106.Spec : Prop :=
  ∀ n, P16064758395949319106.a n = A035328 n

theorem P16064758395949319106.correct : P16064758395949319106.Spec := by
  intro n
  simp only [A035328, Nat.add_sub_cancel, A035328.P16064758395949319106.a, A035328.P8981633171215695012.a, A033430, A033430.P5214425656551841819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035328

/-! ## A035328.P1930965690390705543

`sqrt(n*A069073(n))`
-/

namespace A035328.P1930965690390705543
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n : ℤ) * A069073 n : ℝ)

end

end A035328.P1930965690390705543

namespace A035328

/-- `sqrt(n*A069073(n))` -/
def P1930965690390705543.Spec : Prop :=
  ∀ n, P1930965690390705543.a n = (A035328 n : ℝ)

end A035328

/-!
# A035329: a(n) = n*(2*n+5)*(2*n+7).

The programs for A035329, the canonical program `A035329.P9356025672772963888` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035329 has offset 0).

The definition of A035329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n+5)*(2*n+7)` (program `A035329.P9356025672772963888`, by `A035329.P9356025672772963888.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A035329.P10518870415657330057

`ogf((63x-54x^2+15x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A035329.P10518870415657330057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 63, -54, 15] [1, -4, 6, -4, 1] n

end

end A035329.P10518870415657330057

namespace A035329

/-- `ogf((63x-54x^2+15x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P10518870415657330057.Spec : Prop :=
  ∀ n, P10518870415657330057.a n = A035329 n

end A035329

/-! ## A035329.P9356025672772963888

`n*(2*n+5)*(2*n+7)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035329

/-- `n*(2*n+5)*(2*n+7)` -/
def P9356025672772963888.Spec : Prop :=
  ∀ n, (P9356025672772963888.a n : ℤ) = A035329 n

theorem P9356025672772963888.correct : P9356025672772963888.Spec := by
  intro n
  simp only [A035329]

end A035329

/-! ## A035329.P8703056923997375764

`record[(n-3)*(2*n)²]-n`
-/

namespace A035329.P8703056923997375764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * ((2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A035329.P8703056923997375764

namespace A035329

/-- `record[(n-3)*(2*n)²]-n` -/
def P8703056923997375764.Spec : Prop :=
  ∀ n, P8703056923997375764.a n = A035329 n

end A035329

/-! ## A035329.P11459024607412297235

`-(n*xor(1, -(2*(n+3))²))`
-/

namespace A035329.P11459024607412297235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.xor 1 (-((2 * (n + 3)) ^ 2 : ℤ)))

end

end A035329.P11459024607412297235

namespace A035329

/-- `-(n*xor(1, -(2*(n+3))²))` -/
def P11459024607412297235.Spec : Prop :=
  ∀ n, P11459024607412297235.a n = A035329 n

end A035329

/-! ## A035329.P8648650133719782314

`3*∑[A078371(n)]-15`
-/

namespace A035329.P8648650133719782314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - 15

end

end A035329.P8648650133719782314

namespace A035329

/-- `3*∑[A078371(n)]-15` -/
def P8648650133719782314.Spec : Prop :=
  ∀ n, P8648650133719782314.a n = A035329 n

end A035329

/-! ## A035329.P12893919768981298970

`n*A020739(n)²-n`
-/

namespace A035329.P12893919768981298970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020739 n ^ 2 - (n : ℤ)

end

end A035329.P12893919768981298970

namespace A035329

/-- `n*A020739(n)²-n` -/
def P12893919768981298970.Spec : Prop :=
  ∀ n, P12893919768981298970.a n = A035329 n

theorem P12893919768981298970.correct : P12893919768981298970.Spec := by
  intro n
  simp only [A035329, Nat.add_sub_cancel, A035329.P12893919768981298970.a, A035329.P9356025672772963888.a, A020739, A020739.P2210282862978748125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035329

/-! ## A035329.P13393865881237806185

`lcm(A033537(n), A130861(n+1))`
-/

namespace A035329.P13393865881237806185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033537 n) (A130861 (n + 1))

end

end A035329.P13393865881237806185

namespace A035329

/-- `lcm(A033537(n), A130861(n+1))` -/
def P13393865881237806185.Spec : Prop :=
  ∀ n, (P13393865881237806185.a n : ℤ) = A035329 n

end A035329

/-! ## A035329.P15970270582336823840

`A020739(n)*A139570(n)-n`
-/

namespace A035329.P15970270582336823840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n * A139570 n - (n : ℤ)

end

end A035329.P15970270582336823840

namespace A035329

/-- `A020739(n)*A139570(n)-n` -/
def P15970270582336823840.Spec : Prop :=
  ∀ n, P15970270582336823840.a n = A035329 n

theorem P15970270582336823840.correct : P15970270582336823840.Spec := by
  intro n
  simp only [A035329, Nat.add_sub_cancel, A035329.P15970270582336823840.a, A035329.P9356025672772963888.a, A020739, A020739.P2210282862978748125.a, A139570, A139570.P14891358259735233621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035329

/-! ## A035329.P14276564273968730781

`n*A173960(n+2)-6*n`
-/

namespace A035329.P14276564273968730781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A173960 (n + 2) - (6 * n : ℤ)

end

end A035329.P14276564273968730781

namespace A035329

/-- `n*A173960(n+2)-6*n` -/
def P14276564273968730781.Spec : Prop :=
  ∀ n, P14276564273968730781.a n = A035329 n

theorem P14276564273968730781.correct : P14276564273968730781.Spec := by
  intro n
  simp only [A035329, Nat.add_sub_cancel, A035329.P14276564273968730781.a, A035329.P9356025672772963888.a, A173960, A173960.P13449104019235701913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035329

/-! ## A035329.P8714220167558407641

`n*A004277(n+3)²-n`
-/

namespace A035329.P8714220167558407641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004277 (n + 3) ^ 2 - (n : ℤ)

end

end A035329.P8714220167558407641

namespace A035329

/-- `n*A004277(n+3)²-n` -/
def P8714220167558407641.Spec : Prop :=
  ∀ n, P8714220167558407641.a n = A035329 n

end A035329

/-! ## A035329.P1881177976227055005

`A030440(n+1)+2*A264443(2*n)`
-/

namespace A035329.P1881177976227055005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030440 (n + 1) + 2 * A264443 (2 * n)

end

end A035329.P1881177976227055005

namespace A035329

/-- `A030440(n+1)+2*A264443(2*n)` -/
def P1881177976227055005.Spec : Prop :=
  ∀ n, P1881177976227055005.a n = A035329 n

end A035329

/-! ## A035329.P4488929070075847769

`A020710(2*n)*A028563(2*n)/2`
-/

namespace A035329.P4488929070075847769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020710 (2 * n) * A028563 (2 * n) : ℚ) / 2

end

end A035329.P4488929070075847769

namespace A035329

/-- `A020710(2*n)*A028563(2*n)/2` -/
def P4488929070075847769.Spec : Prop :=
  ∀ n, P4488929070075847769.a n = (A035329 n : ℚ)

theorem P4488929070075847769.correct : P4488929070075847769.Spec := by
  intro n
  simp only [A035329, Nat.add_sub_cancel, A035329.P4488929070075847769.a, A035329.P9356025672772963888.a, A020710, A020710.P12161966585787702209.a, A028563, A028563.P15186121141906373506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035329

/-! ## A035329.P16656879986688299114

`record[(n-3)*record[A198148(n)]]`
-/

namespace A035329.P16656879986688299114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198148 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035329.P16656879986688299114

namespace A035329

/-- `record[(n-3)*record[A198148(n)]]` -/
def P16656879986688299114.Spec : Prop :=
  ∀ n, P16656879986688299114.a n = A035329 n

end A035329

/-! ## A035329.P935898016414276993

`n*(A005563(2*n+5)-1)+n`
-/

namespace A035329.P935898016414276993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005563 (2 * n + 5) - 1) + (n : ℤ)

end

end A035329.P935898016414276993

namespace A035329

/-- `n*(A005563(2*n+5)-1)+n` -/
def P935898016414276993.Spec : Prop :=
  ∀ n, P935898016414276993.a n = A035329 n

theorem P935898016414276993.correct : P935898016414276993.Spec := by
  intro n
  simp only [A035329, Nat.add_sub_cancel, A035329.P935898016414276993.a, A035329.P9356025672772963888.a, A005563, A005563.P13300161655551567421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035329

/-!
# A035330: 5-fold convolution of A001700(n), n >= 0.

The programs for A035330, there is no canonical definition to state claims against.
-/

/-! ## A035330.P834808621150044668

`A035324(C(n+5, 2)+5)`
-/

namespace A035330.P834808621150044668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (Nat.choose (n + 5) 2 + 5)

end

end A035330.P834808621150044668

/-!
# A035331: Base-1000 expansion of Pi.

The programs for A035331, the canonical program `A035331.P6677941572479183768` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035331 has offset 0).

The definition of A035331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035331.P6677941572479183768

`floor(π*10^(3*n))%1000`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035331

/-- `floor(π*10^(3*n))%1000` -/
def P6677941572479183768.Spec : Prop :=
  ∀ n, P6677941572479183768.a n = A035331 n

theorem P6677941572479183768.correct : P6677941572479183768.Spec := by
  intro n
  simp only [A035331]

end A035331

/-!
# A035332: Smallest number not the concatenation of consecutive earlier terms.

The programs for A035332, there is no canonical definition to state claims against.
-/

/-! ## A035332.P14597492487637976762

`lt[A008683(A055932(n+1)), A080465(n)]`
-/

namespace A035332.P14597492487637976762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A055932 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080465 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035332.P14597492487637976762

/-! ## A035332.P16957574442656242809

`lt[A008683(A051037(n+1)), A080465(n)]`
-/

namespace A035332.P16957574442656242809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051037 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080465 (n + 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035332.P16957574442656242809

/-! ## A035332.P3881639621883347352

`lt[A321804(n), A258069(n+1)]+1`
-/

namespace A035332.P3881639621883347352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A035332.P3881639621883347352

/-!
# A035333: Concatenation of two or more consecutive positive integers.

The programs for A035333, there is no canonical definition to state claims against.
-/

/-! ## A035333.P7597101890193481554

`A138141(A055646(n)+10)`
-/

namespace A035333.P7597101890193481554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138141 (A055646 n + 10).toNat

end

end A035333.P7597101890193481554

/-! ## A035333.P9479436597264833188

`eq[A004427(n), A086044(n)]`
-/

namespace A035333.P9479436597264833188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035333.P9479436597264833188

/-! ## A035333.P918606369873563861

`eq[A004430(n), A086044(n)]`
-/

namespace A035333.P918606369873563861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035333.P918606369873563861

/-! ## A035333.P18282194119671202774

`eq[A086044(n), A257295(n)]`
-/

namespace A035333.P18282194119671202774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A035333.P18282194119671202774

/-! ## A035333.P1772722444695632372

`∩[A127957(n+1), A138141(n+1)]`
-/

namespace A035333.P1772722444695632372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035333.P1772722444695632372

/-!
# A035336: a(n) = 2*floor(n*phi) + n - 1, where phi = (1+sqrt(5))/2.

The programs for A035336, the canonical program `A035336.P10076247278200850434` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035336 has offset 1).

The definition of A035336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035336.P15453151967011668578

`2*floor((n+1)*ϕ)+n+1-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A035336.P15453151967011668578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 1 : ℝ) * Real.goldenRatio⌋ + (n + 1 : ℤ) - 1

end

end A035336.P15453151967011668578

namespace A035336

/-- `2*floor((n+1)*ϕ)+n+1-1` -/
def P15453151967011668578.Spec : Prop :=
  ∀ n, P15453151967011668578.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P10076247278200850434

`A022342(A003622(n+1)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035336

/-- `A022342(A003622(n+1)+1)` -/
def P10076247278200850434.Spec : Prop :=
  ∀ n, P10076247278200850434.a n = A035336 (n + 1)

theorem P10076247278200850434.correct : P10076247278200850434.Spec := by
  intro n
  simp only [A035336, Nat.add_sub_cancel]

end A035336

/-! ## A035336.P14155851540894041088

`2*record[floor(abs(ϕ*(n-1)))]+n`
-/

namespace A035336.P14155851540894041088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.goldenRatio * ((n : ℤ) - 1 : ℝ)|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A035336.P14155851540894041088

namespace A035336

/-- `2*record[floor(abs(ϕ*(n-1)))]+n` -/
def P14155851540894041088.Spec : Prop :=
  ∀ n, P14155851540894041088.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P17321408224865664726

`2*∑[runs[floor((n+1)/ϕ)]]+n`
-/

namespace A035336.P17321408224865664726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A035336.P17321408224865664726

namespace A035336

/-- `2*∑[runs[floor((n+1)/ϕ)]]+n` -/
def P17321408224865664726.Spec : Prop :=
  ∀ n, (P17321408224865664726.a n : ℤ) = A035336 (n + 1)

end A035336

/-! ## A035336.P8766749741901355893

`ceil(A035337(n)/ϕ)`
-/

namespace A035336.P8766749741901355893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035337 n : ℝ) / Real.goldenRatio⌉

end

end A035336.P8766749741901355893

namespace A035336

/-- `ceil(A035337(n)/ϕ)` -/
def P8766749741901355893.Spec : Prop :=
  ∀ n, P8766749741901355893.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P5394459163898171090

`A075319(n+1)/2`
-/

namespace A035336.P5394459163898171090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075319 (n + 1) : ℚ) / 2

end

end A035336.P5394459163898171090

namespace A035336

/-- `A075319(n+1)/2` -/
def P5394459163898171090.Spec : Prop :=
  ∀ n, P5394459163898171090.a n = (A035336 (n + 1) : ℚ)

end A035336

/-! ## A035336.P8780619615474895999

`(A035339(n)-n)/4`
-/

namespace A035336.P8780619615474895999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035339 n - (n : ℤ) : ℚ) / 4

end

end A035336.P8780619615474895999

namespace A035336

/-- `(A035339(n)-n)/4` -/
def P8780619615474895999.Spec : Prop :=
  ∀ n, P8780619615474895999.a n = (A035336 (n + 1) : ℚ)

end A035336

/-! ## A035336.P13740678025801321820

`A035338(n)%A035337(n)`
-/

namespace A035336.P13740678025801321820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035338 n) (A035337 n)

end

end A035336.P13740678025801321820

namespace A035336

/-- `A035338(n)%A035337(n)` -/
def P13740678025801321820.Spec : Prop :=
  ∀ n, P13740678025801321820.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P17568955405104174404

`A035339(n)%A035337(n)`
-/

namespace A035336.P17568955405104174404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035339 n) (A035337 n)

end

end A035336.P17568955405104174404

namespace A035336

/-- `A035339(n)%A035337(n)` -/
def P17568955405104174404.Spec : Prop :=
  ∀ n, P17568955405104174404.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P4904888001894989800

`A372302(n+1)%A134860(n+1)`
-/

namespace A035336.P4904888001894989800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372302 (n + 1)) (A134860 (n + 1))

end

end A035336.P4904888001894989800

namespace A035336

/-- `A372302(n+1)%A134860(n+1)` -/
def P4904888001894989800.Spec : Prop :=
  ∀ n, P4904888001894989800.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P8734282647959081550

`∪[A134861(n+1), A134863(n+1)]`
-/

namespace A035336.P8734282647959081550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A035336.P8734282647959081550

namespace A035336

/-- `∪[A134861(n+1), A134863(n+1)]` -/
def P8734282647959081550.Spec : Prop :=
  ∀ n, (P8734282647959081550.a n : ℤ) = A035336 (n + 1)

end A035336

/-! ## A035336.P10052979566606419688

`record[Δ[A026275(n+1)]]`
-/

namespace A035336.P10052979566606419688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026275 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035336.P10052979566606419688

namespace A035336

/-- `record[Δ[A026275(n+1)]]` -/
def P10052979566606419688.Spec : Prop :=
  ∀ n, P10052979566606419688.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P9362438986076578738

`record[A002251(n+1)+n]`
-/

namespace A035336.P9362438986076578738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035336.P9362438986076578738

namespace A035336

/-- `record[A002251(n+1)+n]` -/
def P9362438986076578738.Spec : Prop :=
  ∀ n, P9362438986076578738.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P15794343967099583651

`record[Δ[A026353(n+2)]-2]`
-/

namespace A035336.P15794343967099583651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026353 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035336.P15794343967099583651

namespace A035336

/-- `record[Δ[A026353(n+2)]-2]` -/
def P15794343967099583651.Spec : Prop :=
  ∀ n, P15794343967099583651.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P10251045380414957549

`record[A050411(n+1)-2+n]`
-/

namespace A035336.P10251045380414957549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050411 (n + 1) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035336.P10251045380414957549

namespace A035336

/-- `record[A050411(n+1)-2+n]` -/
def P10251045380414957549.Spec : Prop :=
  ∀ n, P10251045380414957549.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P3570226357721507524

`A001950(∑[A001468(n)])`
-/

namespace A035336.P3570226357721507524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035336.P3570226357721507524

namespace A035336

/-- `A001950(∑[A001468(n)])` -/
def P3570226357721507524.Spec : Prop :=
  ∀ n, P3570226357721507524.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P11655990223312060917

`A057843(A004956(n+1))`
-/

namespace A035336.P11655990223312060917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (A004956 (n + 1)).toNat

end

end A035336.P11655990223312060917

namespace A035336

/-- `A057843(A004956(n+1))` -/
def P11655990223312060917.Spec : Prop :=
  ∀ n, P11655990223312060917.a n = A035336 (n + 1)

end A035336

/-! ## A035336.P4319918529294290087

`∩[A001950(n+1), A057843(n+1)]`
-/

namespace A035336.P4319918529294290087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035336.P4319918529294290087

namespace A035336

/-- `∩[A001950(n+1), A057843(n+1)]` -/
def P4319918529294290087.Spec : Prop :=
  ∀ n, (P4319918529294290087.a n : ℤ) = A035336 (n + 1)

end A035336

/-! ## A035336.P13171624825926862

`∩[A057843(n+1), A327203(n+1)]`
-/

namespace A035336.P13171624825926862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035336.P13171624825926862

namespace A035336

/-- `∩[A057843(n+1), A327203(n+1)]` -/
def P13171624825926862.Spec : Prop :=
  ∀ n, (P13171624825926862.a n : ℤ) = A035336 (n + 1)

end A035336

/-!
# A035337: Third column of Wythoff array.

The programs for A035337, the canonical program `A035337.P15658283184296275475` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035337 has offset 0).

The definition of A035337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035337.P15658283184296275475

`3*floor((n+1)*ϕ)+2*n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035337

/-- `3*floor((n+1)*ϕ)+2*n` -/
def P15658283184296275475.Spec : Prop :=
  ∀ n, P15658283184296275475.a n = A035337 n

theorem P15658283184296275475.correct : P15658283184296275475.Spec := by
  intro n
  simp only [A035337]

end A035337

/-! ## A035337.P17734044390621010835

`floor(A035338(n)/ϕ)`
-/

namespace A035337.P17734044390621010835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035338 n : ℝ) / Real.goldenRatio⌋

end

end A035337.P17734044390621010835

namespace A035337

/-- `floor(A035338(n)/ϕ)` -/
def P17734044390621010835.Spec : Prop :=
  ∀ n, P17734044390621010835.a n = A035337 n

end A035337

/-! ## A035337.P17698600526524865917

`abs(1-A134860(n+1))`
-/

namespace A035337.P17698600526524865917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A134860 (n + 1)|

end

end A035337.P17698600526524865917

namespace A035337

/-- `abs(1-A134860(n+1))` -/
def P17698600526524865917.Spec : Prop :=
  ∀ n, P17698600526524865917.a n = A035337 n

end A035337

/-! ## A035337.P16689094209911630877

`floor(ϕ*A035336(n+1))`
-/

namespace A035337.P16689094209911630877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A035336 (n + 1) : ℝ)⌋

end

end A035337.P16689094209911630877

namespace A035337

/-- `floor(ϕ*A035336(n+1))` -/
def P16689094209911630877.Spec : Prop :=
  ∀ n, P16689094209911630877.a n = A035337 n

end A035337

/-! ## A035337.P12740163258132666357

`abs(2-ceil(ϕ*A003623(n+1)))`
-/

namespace A035337.P12740163258132666357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ⌈Real.goldenRatio * (A003623 (n + 1) : ℝ)⌉|

end

end A035337.P12740163258132666357

namespace A035337

/-- `abs(2-ceil(ϕ*A003623(n+1)))` -/
def P12740163258132666357.Spec : Prop :=
  ∀ n, P12740163258132666357.a n = A035337 n

end A035337

/-! ## A035337.P3339140297243454587

`A035339(n)%A035338(n)`
-/

namespace A035337.P3339140297243454587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035339 n) (A035338 n)

end

end A035337.P3339140297243454587

namespace A035337

/-- `A035339(n)%A035338(n)` -/
def P3339140297243454587.Spec : Prop :=
  ∀ n, P3339140297243454587.a n = A035337 n

end A035337

/-! ## A035337.P17363100675533782383

`A035340(n)%A035338(n)`
-/

namespace A035337.P17363100675533782383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035340 n) (A035338 n)

end

end A035337.P17363100675533782383

namespace A035337

/-- `A035340(n)%A035338(n)` -/
def P17363100675533782383.Spec : Prop :=
  ∀ n, P17363100675533782383.a n = A035337 n

end A035337

/-! ## A035337.P40893129025592906

`A003623(floor((n+1)*ϕ))`
-/

namespace A035337.P40893129025592906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 ⌊(n + 1 : ℝ) * Real.goldenRatio⌋.toNat

end

end A035337.P40893129025592906

namespace A035337

/-- `A003623(floor((n+1)*ϕ))` -/
def P40893129025592906.Spec : Prop :=
  ∀ n, P40893129025592906.a n = A035337 n

end A035337

/-! ## A035337.P17783289609223668357

`A188018(A096270(n)+2*n+1)`
-/

namespace A035337.P17783289609223668357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (A096270 n + (2 * n + 1 : ℤ)).toNat

end

end A035337.P17783289609223668357

namespace A035337

/-- `A188018(A096270(n)+2*n+1)` -/
def P17783289609223668357.Spec : Prop :=
  ∀ n, P17783289609223668357.a n = A035337 n

end A035337

/-! ## A035337.P12397997864969678584

`A004957(A003622(n+1))`
-/

namespace A035337.P12397997864969678584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A003622 (n + 1)).toNat

end

end A035337.P12397997864969678584

namespace A035337

/-- `A004957(A003622(n+1))` -/
def P12397997864969678584.Spec : Prop :=
  ∀ n, P12397997864969678584.a n = A035337 n

end A035337

/-! ## A035337.P14910967997501507646

`A026274(A001950(n+1)-1)`
-/

namespace A035337.P14910967997501507646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (A001950 (n + 1) - 1).toNat

end

end A035337.P14910967997501507646

namespace A035337

/-- `A026274(A001950(n+1)-1)` -/
def P14910967997501507646.Spec : Prop :=
  ∀ n, P14910967997501507646.a n = A035337 n

end A035337

/-! ## A035337.P3954699199514358002

`A026352(A001950(n+1)-1)`
-/

namespace A035337.P3954699199514358002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (A001950 (n + 1) - 1).toNat

end

end A035337.P3954699199514358002

namespace A035337

/-- `A026352(A001950(n+1)-1)` -/
def P3954699199514358002.Spec : Prop :=
  ∀ n, P3954699199514358002.a n = A035337 n

end A035337

/-! ## A035337.P17897973004716922617

`A184657(A001950(n+1)-1)`
-/

namespace A035337.P17897973004716922617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184657 (A001950 (n + 1) - 1).toNat

end

end A035337.P17897973004716922617

namespace A035337

/-- `A184657(A001950(n+1)-1)` -/
def P17897973004716922617.Spec : Prop :=
  ∀ n, P17897973004716922617.a n = A035337 n

end A035337

/-! ## A035337.P18235353019643592725

`A187952(A283233(n+1))`
-/

namespace A035337.P18235353019643592725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (A283233 (n + 1)).toNat

end

end A035337.P18235353019643592725

namespace A035337

/-- `A187952(A283233(n+1))` -/
def P18235353019643592725.Spec : Prop :=
  ∀ n, P18235353019643592725.a n = A035337 n

end A035337

/-! ## A035337.P1098715396075643510

`A188190(A054770(n+1))`
-/

namespace A035337.P1098715396075643510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188190 (A054770 (n + 1)).toNat

end

end A035337.P1098715396075643510

namespace A035337

/-- `A188190(A054770(n+1))` -/
def P1098715396075643510.Spec : Prop :=
  ∀ n, P1098715396075643510.a n = A035337 n

end A035337

/-! ## A035337.P7967666599401141635

`A000201(A035336(n+1))`
-/

namespace A035337.P7967666599401141635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A035336 (n + 1)).toNat

end

end A035337.P7967666599401141635

namespace A035337

/-- `A000201(A035336(n+1))` -/
def P7967666599401141635.Spec : Prop :=
  ∀ n, P7967666599401141635.a n = A035337 n

end A035337

/-! ## A035337.P13160567990726924814

`A007067(A003623(n+1)-1)`
-/

namespace A035337.P13160567990726924814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A003623 (n + 1) - 1).toNat

end

end A035337.P13160567990726924814

namespace A035337

/-- `A007067(A003623(n+1)-1)` -/
def P13160567990726924814.Spec : Prop :=
  ∀ n, P13160567990726924814.a n = A035337 n

end A035337

/-! ## A035337.P1145381907057971096

`A022342(A003623(n+1))`
-/

namespace A035337.P1145381907057971096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A003623 (n + 1)).toNat

end

end A035337.P1145381907057971096

namespace A035337

/-- `A022342(A003623(n+1))` -/
def P1145381907057971096.Spec : Prop :=
  ∀ n, P1145381907057971096.a n = A035337 n

end A035337

/-! ## A035337.P10891949304667795326

`A188010(A075318(n+1))`
-/

namespace A035337.P10891949304667795326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (A075318 (n + 1)).toNat

end

end A035337.P10891949304667795326

namespace A035337

/-- `A188010(A075318(n+1))` -/
def P10891949304667795326.Spec : Prop :=
  ∀ n, P10891949304667795326.a n = A035337 n

end A035337

/-!
# A035338: 4th column of Wythoff array.

The programs for A035338, the canonical program `A035338.P2157780946682709003` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035338 has offset 0).

The definition of A035338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035338.P2157780946682709003

`5*floor((n+1)*ϕ)+3*n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035338

/-- `5*floor((n+1)*ϕ)+3*n` -/
def P2157780946682709003.Spec : Prop :=
  ∀ n, P2157780946682709003.a n = A035338 n

theorem P2157780946682709003.correct : P2157780946682709003.Spec := by
  intro n
  simp only [A035338]

end A035338

/-! ## A035338.P14699993993049073031

`round(ϕ*A035337(n))`
-/

namespace A035338.P14699993993049073031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A035337 n : ℝ))

end

end A035338.P14699993993049073031

namespace A035338

/-- `round(ϕ*A035337(n))` -/
def P14699993993049073031.Spec : Prop :=
  ∀ n, P14699993993049073031.a n = A035338 n

end A035338

/-! ## A035338.P15133397322618093007

`ceil(A035339(n)/ϕ)`
-/

namespace A035338.P15133397322618093007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035339 n : ℝ) / Real.goldenRatio⌉

end

end A035338.P15133397322618093007

namespace A035338

/-- `ceil(A035339(n)/ϕ)` -/
def P15133397322618093007.Spec : Prop :=
  ∀ n, P15133397322618093007.a n = A035338 n

end A035338

/-! ## A035338.P8287091379516229476

`(5*A035336(n+1)+n)/2`
-/

namespace A035338.P8287091379516229476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A035336 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A035338.P8287091379516229476

namespace A035338

/-- `(5*A035336(n+1)+n)/2` -/
def P8287091379516229476.Spec : Prop :=
  ∀ n, P8287091379516229476.a n = (A035338 n : ℚ)

end A035338

/-! ## A035338.P4100235685529815236

`floor((A134859(n+1)+1)*ϕ²)`
-/

namespace A035338.P4100235685529815236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134859 (n + 1) + 1 : ℝ) * Real.goldenRatio ^ 2⌋

end

end A035338.P4100235685529815236

namespace A035338

/-- `floor((A134859(n+1)+1)*ϕ²)` -/
def P4100235685529815236.Spec : Prop :=
  ∀ n, P4100235685529815236.a n = A035338 n

end A035338

/-! ## A035338.P9164242882772478145

`A035340(n)%A035339(n)`
-/

namespace A035338.P9164242882772478145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035340 n) (A035339 n)

end

end A035338.P9164242882772478145

namespace A035338

/-- `A035340(n)%A035339(n)` -/
def P9164242882772478145.Spec : Prop :=
  ∀ n, P9164242882772478145.a n = A035338 n

end A035338

/-! ## A035338.P15548609910976260812

`record[A134863(A339914(n+1))-2]`
-/

namespace A035338.P15548609910976260812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134863 (A339914 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035338.P15548609910976260812

namespace A035338

/-- `record[A134863(A339914(n+1))-2]` -/
def P15548609910976260812.Spec : Prop :=
  ∀ n, P15548609910976260812.a n = A035338 n

end A035338

/-! ## A035338.P1600822192161778262

`A188434(comp[floor(ϕ*n)])`
-/

namespace A035338.P1600822192161778262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A035338.P1600822192161778262

namespace A035338

/-- `A188434(comp[floor(ϕ*n)])` -/
def P1600822192161778262.Spec : Prop :=
  ∀ n, P1600822192161778262.a n = A035338 n

end A035338

/-! ## A035338.P3944132092735987815

`A101345(A003622(n+1))`
-/

namespace A035338.P3944132092735987815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (A003622 (n + 1)).toNat

end

end A035338.P3944132092735987815

namespace A035338

/-- `A101345(A003622(n+1))` -/
def P3944132092735987815.Spec : Prop :=
  ∀ n, P3944132092735987815.a n = A035338 n

end A035338

/-! ## A035338.P8563676225677716239

`A187949(A283233(n+1))`
-/

namespace A035338.P8563676225677716239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (A283233 (n + 1)).toNat

end

end A035338.P8563676225677716239

namespace A035338

/-- `A187949(A283233(n+1))` -/
def P8563676225677716239.Spec : Prop :=
  ∀ n, P8563676225677716239.a n = A035338 n

end A035338

/-! ## A035338.P3571332874761778852

`A001950(A035336(n+1))`
-/

namespace A035338.P3571332874761778852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A035336 (n + 1)).toNat

end

end A035338.P3571332874761778852

namespace A035338

/-- `A001950(A035336(n+1))` -/
def P3571332874761778852.Spec : Prop :=
  ∀ n, P3571332874761778852.a n = A035338 n

end A035338

/-! ## A035338.P14005567750300887669

`A022413(A134859(n+1))`
-/

namespace A035338.P14005567750300887669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A134859 (n + 1)).toNat

end

end A035338.P14005567750300887669

namespace A035338

/-- `A022413(A134859(n+1))` -/
def P14005567750300887669.Spec : Prop :=
  ∀ n, P14005567750300887669.a n = A035338 n

end A035338

/-! ## A035338.P10421182645743598623

`A004937(A003623(n+1)-1)`
-/

namespace A035338.P10421182645743598623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A003623 (n + 1) - 1).toNat

end

end A035338.P10421182645743598623

namespace A035338

/-- `A004937(A003623(n+1)-1)` -/
def P10421182645743598623.Spec : Prop :=
  ∀ n, P10421182645743598623.a n = A035338 n

end A035338

/-! ## A035338.P1977687304276445874

`A188468(A075318(n+1))`
-/

namespace A035338.P1977687304276445874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (A075318 (n + 1)).toNat

end

end A035338.P1977687304276445874

namespace A035338

/-- `A188468(A075318(n+1))` -/
def P1977687304276445874.Spec : Prop :=
  ∀ n, P1977687304276445874.a n = A035338 n

end A035338

/-! ## A035338.P12758837483374250772

`A187951(A035337(n)-n)`
-/

namespace A035338.P12758837483374250772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187951 (A035337 n - (n : ℤ)).toNat

end

end A035338.P12758837483374250772

namespace A035338

/-- `A187951(A035337(n)-n)` -/
def P12758837483374250772.Spec : Prop :=
  ∀ n, P12758837483374250772.a n = A035338 n

end A035338

/-! ## A035338.P4030738857250617515

`∩[A095279(n+1), A190459(n+1)]`
-/

namespace A035338.P4030738857250617515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A035338.P4030738857250617515

namespace A035338

/-- `∩[A095279(n+1), A190459(n+1)]` -/
def P4030738857250617515.Spec : Prop :=
  ∀ n, (P4030738857250617515.a n : ℤ) = A035338 n

end A035338

/-! ## A035338.P13027211947125797878

`A002251(A035337(n))`
-/

namespace A035338.P13027211947125797878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A035337 n).toNat

end

end A035338.P13027211947125797878

namespace A035338

/-- `A002251(A035337(n))` -/
def P13027211947125797878.Spec : Prop :=
  ∀ n, P13027211947125797878.a n = A035338 n

end A035338

/-! ## A035338.P1927627574068761850

`A022342(A134860(n+1))`
-/

namespace A035338.P1927627574068761850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A134860 (n + 1)).toNat

end

end A035338.P1927627574068761850

namespace A035338

/-- `A022342(A134860(n+1))` -/
def P1927627574068761850.Spec : Prop :=
  ∀ n, P1927627574068761850.a n = A035338 n

end A035338

/-! ## A035338.P11109816459481597049

`A101864(A000201(n+1))`
-/

namespace A035338.P11109816459481597049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101864 (A000201 (n + 1)).toNat

end

end A035338.P11109816459481597049

namespace A035338

/-- `A101864(A000201(n+1))` -/
def P11109816459481597049.Spec : Prop :=
  ∀ n, P11109816459481597049.a n = A035338 n

end A035338

/-! ## A035338.P11713076998914950835

`A072061(A075319(n+1))`
-/

namespace A035338.P11713076998914950835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (A075319 (n + 1)).toNat

end

end A035338.P11713076998914950835

namespace A035338

/-- `A072061(A075319(n+1))` -/
def P11713076998914950835.Spec : Prop :=
  ∀ n, P11713076998914950835.a n = A035338 n

end A035338

/-!
# A035339: 5th column of Wythoff array.

The programs for A035339, the canonical program `A035339.P690890145645417241` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035339 has offset 0).

The definition of A035339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035339.P690890145645417241

`4*(2*floor(ϕ*(n+1))+n)+n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035339

/-- `4*(2*floor(ϕ*(n+1))+n)+n` -/
def P690890145645417241.Spec : Prop :=
  ∀ n, P690890145645417241.a n = A035339 n

theorem P690890145645417241.correct : P690890145645417241.Spec := by
  intro n
  simp only [A035339]

end A035339

/-! ## A035339.P14215465920151093731

`floor(ϕ*A035338(n))`
-/

namespace A035339.P14215465920151093731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A035338 n : ℝ)⌋

end

end A035339.P14215465920151093731

namespace A035339

/-- `floor(ϕ*A035338(n))` -/
def P14215465920151093731.Spec : Prop :=
  ∀ n, P14215465920151093731.a n = A035339 n

end A035339

/-! ## A035339.P10797106022039152217

`A101642(A003622(n+1))`
-/

namespace A035339.P10797106022039152217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (A003622 (n + 1)).toNat

end

end A035339.P10797106022039152217

namespace A035339

/-- `A101642(A003622(n+1))` -/
def P10797106022039152217.Spec : Prop :=
  ∀ n, P10797106022039152217.a n = A035339 n

end A035339

/-! ## A035339.P1341300550381791118

`A003249(A003247(A000201(n+1)))`
-/

namespace A035339.P1341300550381791118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (A003247 (A000201 (n + 1)).toNat).toNat

end

end A035339.P1341300550381791118

namespace A035339

/-- `A003249(A003247(A000201(n+1)))` -/
def P1341300550381791118.Spec : Prop :=
  ∀ n, P1341300550381791118.a n = A035339 n

end A035339

/-! ## A035339.P15165141754422797783

`abs(5-A134864(n+1))`
-/

namespace A035339.P15165141754422797783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A134864 (n + 1)|

end

end A035339.P15165141754422797783

namespace A035339

/-- `abs(5-A134864(n+1))` -/
def P15165141754422797783.Spec : Prop :=
  ∀ n, P15165141754422797783.a n = A035339 n

end A035339

/-! ## A035339.P8080829054820118171

`A188012(eq[1, runs[floor(n/ϕ)]])`
-/

namespace A035339.P8080829054820118171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035339.P8080829054820118171

namespace A035339

/-- `A188012(eq[1, runs[floor(n/ϕ)]])` -/
def P8080829054820118171.Spec : Prop :=
  ∀ n, P8080829054820118171.a n = A035339 n

end A035339

/-! ## A035339.P13657812111495663344

`A188438(A001950(n+1)-1)`
-/

namespace A035339.P13657812111495663344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188438 (A001950 (n + 1) - 1).toNat

end

end A035339.P13657812111495663344

namespace A035339

/-- `A188438(A001950(n+1)-1)` -/
def P13657812111495663344.Spec : Prop :=
  ∀ n, P13657812111495663344.a n = A035339 n

end A035339

/-! ## A035339.P16157138030036211938

`A188293(A283233(n+1))`
-/

namespace A035339.P16157138030036211938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188293 (A283233 (n + 1)).toNat

end

end A035339.P16157138030036211938

namespace A035339

/-- `A188293(A283233(n+1))` -/
def P16157138030036211938.Spec : Prop :=
  ∀ n, P16157138030036211938.a n = A035339 n

end A035339

/-! ## A035339.P9856034640621732469

`A003623(A035336(n+1))`
-/

namespace A035339.P9856034640621732469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (A035336 (n + 1)).toNat

end

end A035339.P9856034640621732469

namespace A035339

/-- `A003623(A035336(n+1))` -/
def P9856034640621732469.Spec : Prop :=
  ∀ n, P9856034640621732469.a n = A035339 n

end A035339

/-! ## A035339.P10010398350927499898

`A004976(A276885(n+2)-2)`
-/

namespace A035339.P10010398350927499898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (A276885 (n + 2) - 2).toNat

end

end A035339.P10010398350927499898

namespace A035339

/-- `A004976(A276885(n+2)-2)` -/
def P10010398350927499898.Spec : Prop :=
  ∀ n, P10010398350927499898.a n = A035339 n

end A035339

/-! ## A035339.P14945963235077885483

`A188018(A075318(n+1))`
-/

namespace A035339.P14945963235077885483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (A075318 (n + 1)).toNat

end

end A035339.P14945963235077885483

namespace A035339

/-- `A188018(A075318(n+1))` -/
def P14945963235077885483.Spec : Prop :=
  ∀ n, P14945963235077885483.a n = A035339 n

end A035339

/-! ## A035339.P16963463806031483839

`A004937(A035337(n))`
-/

namespace A035339.P16963463806031483839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A035337 n).toNat

end

end A035339.P16963463806031483839

namespace A035339

/-- `A004937(A035337(n))` -/
def P16963463806031483839.Spec : Prop :=
  ∀ n, P16963463806031483839.a n = A035339 n

end A035339

/-! ## A035339.P13275196266030529965

`A022413(A134861(n+1))`
-/

namespace A035339.P13275196266030529965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A134861 (n + 1)).toNat

end

end A035339.P13275196266030529965

namespace A035339

/-- `A022413(A134861(n+1))` -/
def P13275196266030529965.Spec : Prop :=
  ∀ n, P13275196266030529965.a n = A035339 n

end A035339

/-! ## A035339.P2333533466076738079

`A187952(2*A035336(n+1))`
-/

namespace A035339.P2333533466076738079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (2 * A035336 (n + 1)).toNat

end

end A035339.P2333533466076738079

namespace A035339

/-- `A187952(2*A035336(n+1))` -/
def P2333533466076738079.Spec : Prop :=
  ∀ n, P2333533466076738079.a n = A035339 n

end A035339

/-! ## A035339.P1271287928467673870

`A058066(A075319(n+1))`
-/

namespace A035339.P1271287928467673870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (A075319 (n + 1)).toNat

end

end A035339.P1271287928467673870

namespace A035339

/-- `A058066(A075319(n+1))` -/
def P1271287928467673870.Spec : Prop :=
  ∀ n, P1271287928467673870.a n = A035339 n

end A035339

/-! ## A035339.P810968815430108302

`A000201(A035338(n))`
-/

namespace A035339.P810968815430108302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A035338 n).toNat

end

end A035339.P810968815430108302

namespace A035339

/-- `A000201(A035338(n))` -/
def P810968815430108302.Spec : Prop :=
  ∀ n, P810968815430108302.a n = A035339 n

end A035339

/-! ## A035339.P17062729739362890175

`A022342(A035338(n)+1)`
-/

namespace A035339.P17062729739362890175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A035338 n + 1).toNat

end

end A035339.P17062729739362890175

namespace A035339

/-- `A022342(A035338(n)+1)` -/
def P17062729739362890175.Spec : Prop :=
  ∀ n, P17062729739362890175.a n = A035339 n

end A035339

/-! ## A035339.P5406899803950596104

`A066096(A101864(A066096(n+1)))`
-/

namespace A035339.P5406899803950596104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A101864 (A066096 (n + 1)).toNat).toNat

end

end A035339.P5406899803950596104

namespace A035339

/-- `A066096(A101864(A066096(n+1)))` -/
def P5406899803950596104.Spec : Prop :=
  ∀ n, P5406899803950596104.a n = A035339 n

end A035339

/-! ## A035339.P202123341497109960

`A023447(A134864(n+1))`
-/

namespace A035339.P202123341497109960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A134864 (n + 1)).toNat

end

end A035339.P202123341497109960

namespace A035339

/-- `A023447(A134864(n+1))` -/
def P202123341497109960.Spec : Prop :=
  ∀ n, P202123341497109960.a n = A035339 n

end A035339

/-! ## A035339.P2732373069402702322

`A023455(A188026(n+2))`
-/

namespace A035339.P2732373069402702322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023455 (A188026 (n + 2)).toNat

end

end A035339.P2732373069402702322

namespace A035339

/-- `A023455(A188026(n+2))` -/
def P2732373069402702322.Spec : Prop :=
  ∀ n, P2732373069402702322.a n = A035339 n

end A035339

/-!
# A035340: 6th column of Wythoff array.

The programs for A035340, the canonical program `A035340.P342740814694734703` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035340 has offset 0).

The definition of A035340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035340.P6054919215811596670

`ceil(ϕ*(4*(2*floor(ϕ*(n+1))+n)+n))`
-/

namespace A035340.P6054919215811596670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (4 * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)) + (n : ℤ) : ℝ)⌉

end

end A035340.P6054919215811596670

namespace A035340

/-- `ceil(ϕ*(4*(2*floor(ϕ*(n+1))+n)+n))` -/
def P6054919215811596670.Spec : Prop :=
  ∀ n, P6054919215811596670.a n = A035340 n

end A035340

/-! ## A035340.P15558120274170957681

`A035339(n)+A035338(n)`
-/

namespace A035340.P15558120274170957681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035339 n + A035338 n

end

end A035340.P15558120274170957681

namespace A035340

/-- `A035339(n)+A035338(n)` -/
def P15558120274170957681.Spec : Prop :=
  ∀ n, P15558120274170957681.a n = A035340 n

theorem P15558120274170957681.correct : P15558120274170957681.Spec := by
  intro n
  simp only [A035340, Nat.add_sub_cancel, A035340.P15558120274170957681.a, A035340.P342740814694734703.a, A035337, A035337.P15658283184296275475.a, A035338, A035338.P2157780946682709003.a, A035339, A035339.P690890145645417241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035340

/-! ## A035340.P342740814694734703

`A035337(n)+2*A035338(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035340

/-- `A035337(n)+2*A035338(n)` -/
def P342740814694734703.Spec : Prop :=
  ∀ n, P342740814694734703.a n = A035340 n

theorem P342740814694734703.correct : P342740814694734703.Spec := by
  intro n
  simp only [A035340]

end A035340

/-! ## A035340.P3354382150645283192

`2*A035339(n)-A035337(n)`
-/

namespace A035340.P3354382150645283192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035339 n - A035337 n

end

end A035340.P3354382150645283192

namespace A035340

/-- `2*A035339(n)-A035337(n)` -/
def P3354382150645283192.Spec : Prop :=
  ∀ n, P3354382150645283192.a n = A035340 n

theorem P3354382150645283192.correct : P3354382150645283192.Spec := by
  intro n
  simp only [A035340, Nat.add_sub_cancel, A035340.P3354382150645283192.a, A035340.P342740814694734703.a, A035337, A035337.P15658283184296275475.a, A035338, A035338.P2157780946682709003.a, A035339, A035339.P690890145645417241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035340

/-! ## A035340.P4528636676960045790

`A372302(n+1)+A035339(n)-1`
-/

namespace A035340.P4528636676960045790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372302 (n + 1) + (A035339 n - 1)

end

end A035340.P4528636676960045790

namespace A035340

/-- `A372302(n+1)+A035339(n)-1` -/
def P4528636676960045790.Spec : Prop :=
  ∀ n, P4528636676960045790.a n = A035340 n

theorem P4528636676960045790.correct : P4528636676960045790.Spec := by
  intro n
  simp only [A035340, Nat.add_sub_cancel, A035340.P4528636676960045790.a, A035340.P342740814694734703.a, A035337, A035337.P15658283184296275475.a, A035338, A035338.P2157780946682709003.a, A035339, A035339.P690890145645417241.a, A372302, A372302.P1592687612405792873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035340

/-! ## A035340.P11538857850819641913

`A134863(n+1)+A035339(n)-2`
-/

namespace A035340.P11538857850819641913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134863 (n + 1) + (A035339 n - 2)

end

end A035340.P11538857850819641913

namespace A035340

/-- `A134863(n+1)+A035339(n)-2` -/
def P11538857850819641913.Spec : Prop :=
  ∀ n, P11538857850819641913.a n = A035340 n

end A035340

/-! ## A035340.P15043882712069198744

`A035339(n)+A035337(n)+A035336(n+1)`
-/

namespace A035340.P15043882712069198744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035339 n + A035337 n + A035336 (n + 1)

end

end A035340.P15043882712069198744

namespace A035340

/-- `A035339(n)+A035337(n)+A035336(n+1)` -/
def P15043882712069198744.Spec : Prop :=
  ∀ n, P15043882712069198744.a n = A035340 n

end A035340

/-! ## A035340.P9522082777407597760

`A101642(A035336(n+1))`
-/

namespace A035340.P9522082777407597760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101642 (A035336 (n + 1)).toNat

end

end A035340.P9522082777407597760

namespace A035340

/-- `A101642(A035336(n+1))` -/
def P9522082777407597760.Spec : Prop :=
  ∀ n, P9522082777407597760.a n = A035340 n

end A035340

/-! ## A035340.P7189846522109870219

`A134861(A003623(n+1))-2`
-/

namespace A035340.P7189846522109870219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (A003623 (n + 1)).toNat - 2

end

end A035340.P7189846522109870219

namespace A035340

/-- `A134861(A003623(n+1))-2` -/
def P7189846522109870219.Spec : Prop :=
  ∀ n, P7189846522109870219.a n = A035340 n

end A035340

/-! ## A035340.P16476712171099200810

`A035338(floor((n+1)*ϕ²)-1)-5`
-/

namespace A035340.P16476712171099200810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 (⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ - 1).toNat - 5

end

end A035340.P16476712171099200810

namespace A035340

/-- `A035338(floor((n+1)*ϕ²)-1)-5` -/
def P16476712171099200810.Spec : Prop :=
  ∀ n, P16476712171099200810.a n = A035340 n

end A035340

/-! ## A035340.P4936417624969508069

`A101870(Δ[ceil(n/ϕ)]+ceil(n*ϕ²))`
-/

namespace A035340.P4936417624969508069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (f1 (n + 1) - f1 n + ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉).toNat

end

end A035340.P4936417624969508069

namespace A035340

/-- `A101870(Δ[ceil(n/ϕ)]+ceil(n*ϕ²))` -/
def P4936417624969508069.Spec : Prop :=
  ∀ n, P4936417624969508069.a n = A035340 n

end A035340

/-! ## A035340.P11077590746004189783

`A188471(A001950(n+1))`
-/

namespace A035340.P11077590746004189783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188471 (A001950 (n + 1)).toNat

end

end A035340.P11077590746004189783

namespace A035340

/-- `A188471(A001950(n+1))` -/
def P11077590746004189783.Spec : Prop :=
  ∀ n, P11077590746004189783.a n = A035340 n

end A035340

/-! ## A035340.P5306455199925239173

`A134864(A000201(n+1))`
-/

namespace A035340.P5306455199925239173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134864 (A000201 (n + 1)).toNat

end

end A035340.P5306455199925239173

namespace A035340

/-- `A134864(A000201(n+1))` -/
def P5306455199925239173.Spec : Prop :=
  ∀ n, P5306455199925239173.a n = A035340 n

end A035340

/-! ## A035340.P14506489580061254453

`A134859(A134860(n+1))-1`
-/

namespace A035340.P14506489580061254453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (A134860 (n + 1)).toNat - 1

end

end A035340.P14506489580061254453

namespace A035340

/-- `A134859(A134860(n+1))-1` -/
def P14506489580061254453.Spec : Prop :=
  ∀ n, P14506489580061254453.a n = A035340 n

end A035340

/-! ## A035340.P10614196727762548783

`A035337(A134859(n+1))+2`
-/

namespace A035340.P10614196727762548783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 (A134859 (n + 1)).toNat + 2

end

end A035340.P10614196727762548783

namespace A035340

/-- `A035337(A134859(n+1))+2` -/
def P10614196727762548783.Spec : Prop :=
  ∀ n, P10614196727762548783.a n = A035340 n

end A035340

/-! ## A035340.P9192243967775587788

`A372302(n+1)+A035336(A035336(n+1))`
-/

namespace A035340.P9192243967775587788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372302 (n + 1) + A035336 (A035336 (n + 1)).toNat

end

end A035340.P9192243967775587788

namespace A035340

/-- `A372302(n+1)+A035336(A035336(n+1))` -/
def P9192243967775587788.Spec : Prop :=
  ∀ n, P9192243967775587788.a n = A035340 n

end A035340

/-! ## A035340.P4082163032185727344

`A003622(A372302(n+1))-1`
-/

namespace A035340.P4082163032185727344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A372302 (n + 1)).toNat - 1

end

end A035340.P4082163032185727344

namespace A035340

/-- `A003622(A372302(n+1))-1` -/
def P4082163032185727344.Spec : Prop :=
  ∀ n, P4082163032185727344.a n = A035340 n

end A035340

/-! ## A035340.P10948537362549582276

`A004938(A035337(n))`
-/

namespace A035340.P10948537362549582276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (A035337 n).toNat

end

end A035340.P10948537362549582276

namespace A035340

/-- `A004938(A035337(n))` -/
def P10948537362549582276.Spec : Prop :=
  ∀ n, P10948537362549582276.a n = A035340 n

end A035340

/-! ## A035340.P5638040706174977152

`A188434(A134860(n+1))`
-/

namespace A035340.P5638040706174977152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (A134860 (n + 1)).toNat

end

end A035340.P5638040706174977152

namespace A035340

/-- `A188434(A134860(n+1))` -/
def P5638040706174977152.Spec : Prop :=
  ∀ n, P5638040706174977152.a n = A035340 n

end A035340

/-! ## A035340.P5735095199576919524

`A187949(A075319(n+1))`
-/

namespace A035340.P5735095199576919524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (A075319 (n + 1)).toNat

end

end A035340.P5735095199576919524

namespace A035340

/-- `A187949(A075319(n+1))` -/
def P5735095199576919524.Spec : Prop :=
  ∀ n, P5735095199576919524.a n = A035340 n

end A035340

/-!
# A035341: Sum of ordered factorizations over all prime signatures with n factors.

The programs for A035341, there is no canonical definition to state claims against.
-/

/-! ## A035341.P15407953893474310645

`A015049(A270665(n))-1`
-/

namespace A035341.P15407953893474310645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015049 (A270665 n).toNat - 1

end

end A035341.P15407953893474310645

/-! ## A035341.P6534884944466230438

`A336336(2*A192131(n))`
-/

namespace A035341.P6534884944466230438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336336 (2 * A192131 n).toNat

end

end A035341.P6534884944466230438

/-!
# A035342: The convolution matrix of the double factorial of odd numbers (A001147).

The programs for A035342, the canonical program `A035342.P11718429247646624328` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035342 has offset 1).

The definition of A035342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035342.P11718429247646624328

`T(n-1,k-1)+(2*row(n)+col(n)+1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035342

/-- `T(n-1,k-1)+(2*row(n)+col(n)+1)*T(n-1,k)` -/
def P11718429247646624328.Spec : Prop :=
  ∀ n, (P11718429247646624328.a n : ℤ) = A035342 (n + 1)

theorem P11718429247646624328.correct : P11718429247646624328.Spec := by
  intro n
  simp only [A035342, Nat.add_sub_cancel]

end A035342

/-! ## A035342.P3782595763145141208

`A035324(n+1)/A033184(n+1)*A001497(n)`
-/

namespace A035342.P3782595763145141208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035324 (n + 1) : ℚ) / (A033184 (n + 1) : ℚ) * (A001497 n : ℚ)

end

end A035342.P3782595763145141208

namespace A035342

/-- `A035324(n+1)/A033184(n+1)*A001497(n)` -/
def P3782595763145141208.Spec : Prop :=
  ∀ n, P3782595763145141208.a n = (A035342 (n + 1) : ℚ)

end A035342

/-! ## A035342.P16850437880027055247

`A134144(n+1)`
-/

namespace A035342.P16850437880027055247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134144 (n + 1)

end

end A035342.P16850437880027055247

namespace A035342

/-- `A134144(n+1)` -/
def P16850437880027055247.Spec : Prop :=
  ∀ n, P16850437880027055247.a n = A035342 (n + 1)

end A035342

/-!
# A035344: Expansion of 1/((1 - x)*(1 - 4*x + 2 * x^2)).

The programs for A035344, the canonical program `A035344.P8340960210987108350` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035344 has offset 0).

The definition of A035344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+6x^2-2x^3))` (program `A035344.P8340960210987108350`, by `A035344.P8340960210987108350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A035344.P8340960210987108350

`ogf(1/(1-5x+6x^2-2x^3))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035344

/-- `ogf(1/(1-5x+6x^2-2x^3))` -/
def P8340960210987108350.Spec : Prop :=
  ∀ n, P8340960210987108350.a n = A035344 n

theorem P8340960210987108350.correct : P8340960210987108350.Spec := by
  intro n
  simp only [A035344]

end A035344

/-! ## A035344.P18352733229731918862

`2*A007052(n)-1`
-/

namespace A035344.P18352733229731918862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007052 n - 1

end

end A035344.P18352733229731918862

namespace A035344

/-- `2*A007052(n)-1` -/
def P18352733229731918862.Spec : Prop :=
  ∀ n, P18352733229731918862.a n = A035344 n

end A035344

/-! ## A035344.P4283356507479425848

`1+4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A035344.P4283356507479425848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  1 + (4 * a (n - 1) - 2 * a (n - 2))

end

end A035344.P4283356507479425848

namespace A035344

/-- `1+4*a(n-1)-2*a(n-2)` -/
def P4283356507479425848.Spec : Prop :=
  ∀ n, P4283356507479425848.a n = A035344 n

end A035344

/-! ## A035344.P12163008616707664592

`∑[ogf(1/(1-4x+2x^2))]`
-/

namespace A035344.P12163008616707664592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P12163008616707664592

namespace A035344

/-- `∑[ogf(1/(1-4x+2x^2))]` -/
def P12163008616707664592.Spec : Prop :=
  ∀ n, P12163008616707664592.a n = A035344 n

end A035344

/-! ## A035344.P3263874838644792441

`∑[ceil((2+sqrt(2))*a(n-1))]` with `a(0)=1`
-/

namespace A035344.P3263874838644792441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(2 + Real.sqrt (2 : ℝ)) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P3263874838644792441

namespace A035344

/-- `∑[ceil((2+sqrt(2))*a(n-1))]` -/
def P3263874838644792441.Spec : Prop :=
  ∀ n, P3263874838644792441.a n = A035344 n

end A035344

/-! ## A035344.P9225504101395103904

`round((sqrt(2)+2)*a(n-1))+2` with `a(0)=1`
-/

namespace A035344.P9225504101395103904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)) + 2

end

end A035344.P9225504101395103904

namespace A035344

/-- `round((sqrt(2)+2)*a(n-1))+2` -/
def P9225504101395103904.Spec : Prop :=
  ∀ n, P9225504101395103904.a n = A035344 n

end A035344

/-! ## A035344.P18210903334368396161

`or(1, floor((sqrt(2)+2)*a(n-1))+2)` with `a(0)=1`
-/

namespace A035344.P18210903334368396161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ + 2)

end

end A035344.P18210903334368396161

namespace A035344

/-- `or(1, floor((sqrt(2)+2)*a(n-1))+2)` -/
def P18210903334368396161.Spec : Prop :=
  ∀ n, P18210903334368396161.a n = A035344 n

end A035344

/-! ## A035344.P8116996604170925005

`∑[2*(2*a(n-1)-a(n-2))]` with `a(0)=1, a(1)=4`
-/

namespace A035344.P8116996604170925005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * (2 * f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P8116996604170925005

namespace A035344

/-- `∑[2*(2*a(n-1)-a(n-2))]` -/
def P8116996604170925005.Spec : Prop :=
  ∀ n, P8116996604170925005.a n = A035344 n

end A035344

/-! ## A035344.P16419408046928718042

`1-2*(a(n-2)-2*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A035344.P16419408046928718042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  1 - 2 * (a (n - 2) - 2 * a (n - 1))

end

end A035344.P16419408046928718042

namespace A035344

/-- `1-2*(a(n-2)-2*a(n-1))` -/
def P16419408046928718042.Spec : Prop :=
  ∀ n, P16419408046928718042.a n = A035344 n

end A035344

/-! ## A035344.P17051874454829659914

`∑[A007070(n)]`
-/

namespace A035344.P17051874454829659914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P17051874454829659914

namespace A035344

/-- `∑[A007070(n)]` -/
def P17051874454829659914.Spec : Prop :=
  ∀ n, P17051874454829659914.a n = A035344 n

end A035344

/-! ## A035344.P16341469273550694540

`∑[∑[A007052(n)]]`
-/

namespace A035344.P16341469273550694540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P16341469273550694540

namespace A035344

/-- `∑[∑[A007052(n)]]` -/
def P16341469273550694540.Spec : Prop :=
  ∀ n, P16341469273550694540.a n = A035344 n

end A035344

/-! ## A035344.P16444695678417721130

`∑[A204089(n+1)]`
-/

namespace A035344.P16444695678417721130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P16444695678417721130

namespace A035344

/-- `∑[A204089(n+1)]` -/
def P16444695678417721130.Spec : Prop :=
  ∀ n, P16444695678417721130.a n = A035344 n

end A035344

/-! ## A035344.P13059749433098769166

`∑[A068912(2*n)]`
-/

namespace A035344.P13059749433098769166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068912 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P13059749433098769166

namespace A035344

/-- `∑[A068912(2*n)]` -/
def P13059749433098769166.Spec : Prop :=
  ∀ n, P13059749433098769166.a n = A035344 n

end A035344

/-! ## A035344.P5473167448912794413

`∑[A217730(2*n)]`
-/

namespace A035344.P5473167448912794413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217730 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P5473167448912794413

namespace A035344

/-- `∑[A217730(2*n)]` -/
def P5473167448912794413.Spec : Prop :=
  ∀ n, P5473167448912794413.a n = A035344 n

end A035344

/-! ## A035344.P17371693015400954436

`∑[abs(Δ[A006012(n)])]`
-/

namespace A035344.P17371693015400954436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P17371693015400954436

namespace A035344

/-- `∑[abs(Δ[A006012(n)])]` -/
def P17371693015400954436.Spec : Prop :=
  ∀ n, P17371693015400954436.a n = A035344 n

end A035344

/-! ## A035344.P4269808082811966726

`∑[∑[∑[A003480(n)]]]`
-/

namespace A035344.P4269808082811966726
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P4269808082811966726

namespace A035344

/-- `∑[∑[∑[A003480(n)]]]` -/
def P4269808082811966726.Spec : Prop :=
  ∀ n, P4269808082811966726.a n = A035344 n

end A035344

/-! ## A035344.P14901600862987973014

`A006012(n+1)-1`
-/

namespace A035344.P14901600862987973014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) - 1

end

end A035344.P14901600862987973014

namespace A035344

/-- `A006012(n+1)-1` -/
def P14901600862987973014.Spec : Prop :=
  ∀ n, P14901600862987973014.a n = A035344 n

end A035344

/-! ## A035344.P3550535261134047613

`A030435(Δ[n²])-1`
-/

namespace A035344.P3550535261134047613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A035344.P3550535261134047613

namespace A035344

/-- `A030435(Δ[n²])-1` -/
def P3550535261134047613.Spec : Prop :=
  ∀ n, P3550535261134047613.a n = A035344 n

end A035344

/-! ## A035344.P12700561946822566047

`∑[∑[A062113(2*n)]]`
-/

namespace A035344.P12700561946822566047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P12700561946822566047

namespace A035344

/-- `∑[∑[A062113(2*n)]]` -/
def P12700561946822566047.Spec : Prop :=
  ∀ n, P12700561946822566047.a n = A035344 n

end A035344

/-! ## A035344.P4326104095551516433

`∑[A007068(2*n+1)]`
-/

namespace A035344.P4326104095551516433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007068 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035344.P4326104095551516433

namespace A035344

/-- `∑[A007068(2*n+1)]` -/
def P4326104095551516433.Spec : Prop :=
  ∀ n, P4326104095551516433.a n = A035344 n

end A035344

/-!
# A035345: Smallest prime > prime(1)*prime(2)*...*prime(n)+1.

The programs for A035345, there is no canonical definition to state claims against.
-/

/-! ## A035345.P2524235337430281100

`A151800(∏[eq[n, ∏{d}[n, #]]]+1)`
-/

namespace A035345.P2524235337430281100
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
  A151800 (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A035345.P2524235337430281100

/-! ## A035345.P13615216328448859702

`A003961(A002110(n)+1)`
-/

namespace A035345.P13615216328448859702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A002110 n + 1).toNat

end

end A035345.P13615216328448859702

/-!
# A035346: Let F(n) = Q(n) - P(n) be the Fortunate numbers (A005235); sequence gives n such that F(n) = prime(n+1).

The programs for A035346, there is no canonical definition to state claims against.
-/

/-! ## A035346.P6378122849556755384

`eq[A005235(n+1), A065091(n+1)]+1`
-/

namespace A035346.P6378122849556755384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A035346.P6378122849556755384

/-! ## A035346.P2305751980666833734

`record[C(A265109(n+2), n)]`
-/

namespace A035346.P2305751980666833734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A265109 (n + 2)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035346.P2305751980666833734

/-! ## A035346.P10898417720360612255

`A000720(A093077(n+1))`
-/

namespace A035346.P10898417720360612255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A093077 (n + 1)).toNat

end

end A035346.P10898417720360612255

/-! ## A035346.P7322163908472293259

`1+eq[1, A090185(n+1)]`
-/

namespace A035346.P7322163908472293259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035346.P7322163908472293259

/-! ## A035346.P16218987296994407434

`eq[1, A348424(n+1)]+1`
-/

namespace A035346.P16218987296994407434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A035346.P16218987296994407434

/-!
# A035348: Triangle of a(n,k) = number of k-member minimal covers of an n-set (n >= k >= 1).

The programs for A035348, there is no canonical definition to state claims against.
-/

/-! ## A035348.P12961566088783060041

`A049055(n+1)/A166350(n+1)`
-/

namespace A035348.P12961566088783060041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049055 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A035348.P12961566088783060041

/-! ## A035348.P10660534177740699260

`A049055(n+1)/A002260(n+1)!`
-/

namespace A035348.P10660534177740699260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049055 (n + 1) : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A035348.P10660534177740699260

/-! ## A035348.P8734662104693238494

`A049055(n+1)/A066667(A112367(n))`
-/

namespace A035348.P8734662104693238494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049055 (n + 1) : ℚ) / (A066667 (A112367 n).toNat : ℚ)

end

end A035348.P8734662104693238494

/-! ## A035348.P15222625500189329880

`A049055(n+1)/A092543(A056011(n+1))!`
-/

namespace A035348.P15222625500189329880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049055 (n + 1) : ℚ) / (Nat.factorial (A092543 (A056011 (n + 1)).toNat).toNat : ℚ)

end

end A035348.P15222625500189329880

/-! ## A035348.P6205670980965998377

`A008275(n+1)/A048594(n+1)*A049055(n+1)`
-/

namespace A035348.P6205670980965998377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A048594 (n + 1) : ℚ) * (A049055 (n + 1) : ℚ)

end

end A035348.P6205670980965998377

/-! ## A035348.P4087717690356618948

`A049055(n+1)/A273666(A059268(n))`
-/

namespace A035348.P4087717690356618948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049055 (n + 1) : ℚ) / (A273666 (A059268 n).toNat : ℚ)

end

end A035348.P4087717690356618948

/-!
# A035349: "DIK" (bracelet, indistinct, unlabeled) transform of A000237.

The programs for A035349, there is no canonical definition to state claims against.
-/

/-! ## A035349.P7230360032383636722

`A112808(n)+A011738(A202059(n))`
-/

namespace A035349.P7230360032383636722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112808 n + A011738 (A202059 n).toNat

end

end A035349.P7230360032383636722

/-! ## A035349.P13688966585827912162

`A270417(A150819(n))+A112808(n)`
-/

namespace A035349.P13688966585827912162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A150819 n).toNat + A112808 n

end

end A035349.P13688966585827912162

/-! ## A035349.P13790139620176347147

`A270417(A150822(n))+A112808(n)`
-/

namespace A035349.P13790139620176347147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A150822 n).toNat + A112808 n

end

end A035349.P13790139620176347147

/-! ## A035349.P1568355856373871451

`A112808(n)+A101638(A112808(n+1))`
-/

namespace A035349.P1568355856373871451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112808 n + A101638 (A112808 (n + 1)).toNat

end

end A035349.P1568355856373871451

/-! ## A035349.P44181470016295931

`A112808(n)+A112765(A112805(2*(n+1)))`
-/

namespace A035349.P44181470016295931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112808 n + A112765 (A112805 (2 * (n + 1))).toNat

end

end A035349.P44181470016295931

/-!
# A035350: "BIK" (reversible, indistinct, unlabeled) transform of A000237.

The programs for A035350, there is no canonical definition to state claims against.
-/

/-! ## A035350.P18403315382245461890

`A124156(A148804(n+1))`
-/

namespace A035350.P18403315382245461890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124156 (A148804 (n + 1)).toNat

end

end A035350.P18403315382245461890

/-! ## A035350.P1508846551868189092

`A103221(A148804(n+1)+1)`
-/

namespace A035350.P1508846551868189092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A148804 (n + 1) + 1).toNat

end

end A035350.P1508846551868189092

/-! ## A035350.P8218070653676236013

`A340763(A340941(n+2))+1`
-/

namespace A035350.P8218070653676236013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A340941 (n + 2)).toNat + 1

end

end A035350.P8218070653676236013

/-!
# A035351: Number of labeled rooted polygonal cacti with bridges (mixed Husimi trees) with n nodes.

The programs for A035351, there is no canonical definition to state claims against.
-/

/-! ## A035351.P4622360669750539427

`(1+n)*A000314(1+n)`
-/

namespace A035351.P4622360669750539427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A000314 (1 + n)

end

end A035351.P4622360669750539427

/-! ## A035351.P14447272857153245624

`A000314(2*n-(n-1))*A080513(2*n)`
-/

namespace A035351.P14447272857153245624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000314 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat * A080513 (2 * n)

end

end A035351.P14447272857153245624

/-! ## A035351.P15217842978092059521

`record[A000314(A008611(n))*A008611(n)]`
-/

namespace A035351.P15217842978092059521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000314 (A008611 n).toNat * A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035351.P15217842978092059521

/-! ## A035351.P1144928508846411423

`A000314(A008611(3*n))*A008611(3*n)`
-/

namespace A035351.P1144928508846411423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000314 (A008611 (3 * n)).toNat * A008611 (3 * n)

end

end A035351.P1144928508846411423

/-! ## A035351.P6521742813946901752

`A000314(A077168(n))*A077168(n)`
-/

namespace A035351.P6521742813946901752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000314 (A077168 n).toNat * A077168 n

end

end A035351.P6521742813946901752

/-!
# A035352: Number of increasing rooted polygonal cacti with bridges (mixed Husimi trees) with n nodes.

The programs for A035352, there is no canonical definition to state claims against.
-/

/-! ## A035352.P5383682984252553062

`A004723(∏[∑[A322366(n)]])`
-/

namespace A035352.P5383682984252553062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004723 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035352.P5383682984252553062

/-! ## A035352.P2923982634405224622

`A004726(∏[∑[A289435(n+2)]])`
-/

namespace A035352.P2923982634405224622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004726 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035352.P2923982634405224622

/-!
# A035353: Number of asymmetric rooted polygonal cacti with bridges (mixed Husimi trees).

The programs for A035353, there is no canonical definition to state claims against.
-/

/-! ## A035353.P2593412377746798393

`A008618(A108480(n)+A082116(n))`
-/

namespace A035353.P2593412377746798393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A108480 n + A082116 n).toNat

end

end A035353.P2593412377746798393

/-! ## A035353.P9947106215312981456

`A126257(A120588(n)+A000196(n))`
-/

namespace A035353.P9947106215312981456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A120588 n + A000196 n).toNat

end

end A035353.P9947106215312981456

/-!
# A035354: "DHK" (bracelet, identity, unlabeled) transform of A035353.

The programs for A035354, there is no canonical definition to state claims against.
-/

/-! ## A035354.P2289384323741854913

`A020913(A380058(n+1))`
-/

namespace A035354.P2289384323741854913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (A380058 (n + 1)).toNat

end

end A035354.P2289384323741854913

/-! ## A035354.P9441755064186315366

`A226190(A398110(n))`
-/

namespace A035354.P9441755064186315366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A398110 n).toNat

end

end A035354.P9441755064186315366

/-! ## A035354.P13755602977566758217

`A194698(lcm(22, A223027(n)))`
-/

namespace A035354.P13755602977566758217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (Int.lcm 22 (A223027 n))

end

end A035354.P13755602977566758217

/-! ## A035354.P2716822196212760570

`A023193(A003430(n)-A337747(n+2))`
-/

namespace A035354.P2716822196212760570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A003430 n - A337747 (n + 2)).toNat

end

end A035354.P2716822196212760570

/-!
# A035355: "BHK" (reversible, identity, unlabeled) transform of A035353.

The programs for A035355, there is no canonical definition to state claims against.
-/

/-! ## A035355.P12281788218585655367

`A087830(A340948(n))`
-/

namespace A035355.P12281788218585655367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087830 (A340948 n).toNat

end

end A035355.P12281788218585655367

/-! ## A035355.P14892333423234520580

`A110266(A346999(n+1))`
-/

namespace A035355.P14892333423234520580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A346999 (n + 1)).toNat

end

end A035355.P14892333423234520580

/-! ## A035355.P426299607453035218

`A307787(n)+A056170(A150554(n))`
-/

namespace A035355.P426299607453035218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307787 n + A056170 (A150554 n).toNat

end

end A035355.P426299607453035218

/-!
# A035356: Number of asymmetric polygonal cacti with bridges (mixed Husimi trees).

The programs for A035356, there is no canonical definition to state claims against.
-/

/-! ## A035356.P6670625773593289113

`A325785(4*a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A035356.P6670625773593289113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0, 0, 0] fun n a =>
  A325785 (4 * a (n - 1) + 1).toNat

end

end A035356.P6670625773593289113

/-! ## A035356.P9166085162786869406

`A168201(ceil(sqrt(A051789(n))))`
-/

namespace A035356.P9166085162786869406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 ⌈Real.sqrt (A051789 n : ℝ)⌉.toNat

end

end A035356.P9166085162786869406

/-!
# A035357: Number of increasing asymmetric rooted polygonal cacti with bridges (mixed Husimi trees).

The programs for A035357, there is no canonical definition to state claims against.
-/

/-! ## A035357.P7803894885425670862

`or(∏{e}[n+1, #], A110656(((n+2)^(n+1)-1)/(n+1)²))`
-/

namespace A035357.P7803894885425670862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A110656 (SequenceMachineLib.roundAway ((((n + 2) ^ (n + 1) : ℤ) - 1 : ℚ) / ((n + 1) ^ 2 : ℚ))).toNat)

end

end A035357.P7803894885425670862

/-! ## A035357.P9356340458982181586

`abs(A137470(A041581(n)))`
-/

namespace A035357.P9356340458982181586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137470 (A041581 n).toNat|

end

end A035357.P9356340458982181586

/-!
# A035358: k such that A035312(k-1) = n or 0 if there is none.

The programs for A035358, there is no canonical definition to state claims against.
-/

/-! ## A035358.P16088446079339025628

`A000217(A072039(n+1)-1)+A072038(n+1)`
-/

namespace A035358.P16088446079339025628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A072039 (n + 1) - 1).toNat + A072038 (n + 1)

end

end A035358.P16088446079339025628

/-! ## A035358.P5641242634619960956

`A072038(n+1)+C(A072039(n+1), 2)`
-/

namespace A035358.P5641242634619960956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072038 (n + 1) + (Nat.choose (A072039 (n + 1)).toNat 2 : ℤ)

end

end A035358.P5641242634619960956

/-! ## A035358.P17046409715698068403

`A161680(A072039(n+1))+A072038(n+1)`
-/

namespace A035358.P17046409715698068403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A072039 (n + 1)).toNat + A072038 (n + 1)

end

end A035358.P17046409715698068403

/-! ## A035358.P6141389593928114096

`fo[A035312(n)-1]+1`
-/

namespace A035358.P6141389593928114096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035312 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A035358.P6141389593928114096

/-!
# A035359: Number of partitions-into-distinct-parts of n (A000009) is a prime.

The programs for A035359, there is no canonical definition to state claims against.
-/

/-! ## A035359.P17751326533434908020

`eq[1, A258594(n)]`
-/

namespace A035359.P17751326533434908020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035359.P17751326533434908020

/-! ## A035359.P8943141740740584785

`eq[2, A258596(n)]`
-/

namespace A035359.P8943141740740584785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A035359.P8943141740740584785

/-! ## A035359.P1543439638476615819

`lt[A004442(A258594(n)), A057427(n)]`
-/

namespace A035359.P1543439638476615819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A258594 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035359.P1543439638476615819

/-! ## A035359.P17317545563148290815

`lt[A000007(n), A063524(A258594(n))]`
-/

namespace A035359.P17317545563148290815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A258594 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035359.P17317545563148290815

/-! ## A035359.P10098758622023319515

`lt[A000038(n), A063524(A258594(n))]`
-/

namespace A035359.P10098758622023319515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A258594 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A035359.P10098758622023319515

/-!
# A035360: Number of partitions of n into parts 3k or 3k+1.

The programs for A035360, there is no canonical definition to state claims against.
-/

/-! ## A035360.P16414985390139608935

`A035376(abs(1-n)+n+1)`
-/

namespace A035360.P16414985390139608935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035376 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat

end

end A035360.P16414985390139608935

/-! ## A035360.P6643513924191857187

`record[A035376(n+1)+A008619(n)]-n`
-/

namespace A035360.P6643513924191857187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035376 (n + 1) + A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A035360.P6643513924191857187

/-! ## A035360.P3045960112801215895

`record[A035376(n+1)+A004524(n)]-(n-1)`
-/

namespace A035360.P3045960112801215895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035376 (n + 1) + A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1)

end

end A035360.P3045960112801215895

/-! ## A035360.P3996379943975887041

`record[A035376(n+1)+A004526(n)]-(n-1)`
-/

namespace A035360.P3996379943975887041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035376 (n + 1) + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1)

end

end A035360.P3996379943975887041

/-! ## A035360.P10160795341633126864

`or(A012245(n+1), A035376(A004277(n)))`
-/

namespace A035360.P10160795341633126864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012245 (n + 1)) (A035376 (A004277 n).toNat)

end

end A035360.P10160795341633126864

/-! ## A035360.P14027675819061965447

`A035376(A004277(n))+A012245(A004277(n)²)`
-/

namespace A035360.P14027675819061965447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035376 (A004277 n).toNat + A012245 (A004277 n ^ 2).toNat

end

end A035360.P14027675819061965447

/-!
# A035361: Number of partitions of n into parts 3k or 3k+2.

The programs for A035361, there is no canonical definition to state claims against.
-/

/-! ## A035361.P7183617664576222199

`A353414(2^n)`
-/

namespace A035361.P7183617664576222199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353414 (2 ^ n)

end

end A035361.P7183617664576222199

/-!
# A035362: Number of partitions of n into parts 4k or 4k+1.

The programs for A035362, there is no canonical definition to state claims against.
-/

/-! ## A035362.P2321934780425913266

`A035442(2*(n+1))`
-/

namespace A035362.P2321934780425913266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035442 (2 * (n + 1))

end

end A035362.P2321934780425913266

/-! ## A035362.P9190737377914351573

`A035442(A103517(n))+A000007(n)`
-/

namespace A035362.P9190737377914351573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035442 (A103517 n).toNat + A000007 n

end

end A035362.P9190737377914351573

/-! ## A035362.P18192305105658999084

`A035545(n+1)-A035551(n+1)`
-/

namespace A035362.P18192305105658999084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035545 (n + 1) - A035551 (n + 1)

end

end A035362.P18192305105658999084

/-!
# A035363: Number of partitions of n into even parts.

The programs for A035363, there is no canonical definition to state claims against.
-/

/-! ## A035363.P13944618092641660188

`char[2*n]*A119620(n)`
-/

namespace A035363.P13944618092641660188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A119620 n

end

end A035363.P13944618092641660188

/-! ## A035363.P1938936754855179704

`∑[A000041(floor(n/2))/(-1)^n]`
-/

namespace A035363.P1938936754855179704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035363.P1938936754855179704

/-! ## A035363.P12633709563840568173

`A000041(floor(∑[n]/(n+1)))-a(n-1)` with `a(0)=1`
-/

namespace A035363.P12633709563840568173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000041 ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋.toNat - a (n - 1)

end

end A035363.P12633709563840568173

/-! ## A035363.P866707093421402725

`A000009(n)-A282892(n)`
-/

namespace A035363.P866707093421402725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A282892 n

end

end A035363.P866707093421402725

/-! ## A035363.P8633055032742992740

`A351004(n)-A351594(n)`
-/

namespace A035363.P8633055032742992740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 n - A351594 n

end

end A035363.P8633055032742992740

/-! ## A035363.P699260440919586247

`lcm(A119620(n), A166698(n+1))`
-/

namespace A035363.P699260440919586247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A119620 n) (A166698 (n + 1))

end

end A035363.P699260440919586247

/-! ## A035363.P2753257424944124619

`A119620(n+1)*(n+1)%2`
-/

namespace A035363.P2753257424944124619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (n + 1) * (((n + 1) % 2 : ℕ) : ℤ)

end

end A035363.P2753257424944124619

/-! ## A035363.P7904789720146065533

`A000035(n+1)*A000041(A025480(n))`
-/

namespace A035363.P7904789720146065533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A000041 (A025480 n).toNat

end

end A035363.P7904789720146065533

/-! ## A035363.P779875702309097627

`C(A000041(A057979(n+1)), A006519(n+1))`
-/

namespace A035363.P779875702309097627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000041 (A057979 (n + 1)).toNat).toNat (A006519 (n + 1)).toNat

end

end A035363.P779875702309097627

/-! ## A035363.P18198278401337262789

`A347443(n+1)-A027187(n+1)`
-/

namespace A035363.P18198278401337262789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347443 (n + 1) - A027187 (n + 1)

end

end A035363.P18198278401337262789

/-! ## A035363.P15955798426977935334

`A000041(n)-A086543(n)`
-/

namespace A035363.P15955798426977935334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A086543 n

end

end A035363.P15955798426977935334

/-! ## A035363.P17928764594692464988

`A000041(n+1)+A225751(n)-A225751(n+1)`
-/

namespace A035363.P17928764594692464988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A225751 n - A225751 (n + 1))

end

end A035363.P17928764594692464988

/-! ## A035363.P17185286277543091227

`A035444(n*gcd(2, n))`
-/

namespace A035363.P17185286277543091227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (n * Nat.gcd 2 n)

end

end A035363.P17185286277543091227

/-! ## A035363.P1770340140388752980

`A035444(2*n)`
-/

namespace A035363.P1770340140388752980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n)

end

end A035363.P1770340140388752980

/-! ## A035363.P12625171948317152848

`A035444(A004277(n))+A000007(n)`
-/

namespace A035363.P12625171948317152848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A004277 n).toNat + A000007 n

end

end A035363.P12625171948317152848

/-! ## A035363.P7814554488433405483

`A025065(n)-A386638(n+1)`
-/

namespace A035363.P7814554488433405483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n - A386638 (n + 1)

end

end A035363.P7814554488433405483

/-! ## A035363.P7688959813705622426

`Δ[A386638(1+n)]`
-/

namespace A035363.P7688959813705622426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386638 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035363.P7688959813705622426

/-! ## A035363.P15377441035679338709

`A386638(n+2)-A386638(n+1)`
-/

namespace A035363.P15377441035679338709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386638 (n + 2) - A386638 (n + 1)

end

end A035363.P15377441035679338709

/-! ## A035363.P7231552998879111260

`A035377(A006368(n))`
-/

namespace A035363.P7231552998879111260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A006368 n).toNat

end

end A035363.P7231552998879111260

/-! ## A035363.P17971182413635588368

`A119620(2*n)-A086543(n)`
-/

namespace A035363.P17971182413635588368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A086543 n

end

end A035363.P17971182413635588368

/-!
# A035364: Number of partitions of n into parts 4k or 4k+3.

The programs for A035364, there is no canonical definition to state claims against.
-/

/-! ## A035364.P4567922919886267427

`A035446(2*(1+n))`
-/

namespace A035364.P4567922919886267427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035446 (2 * (1 + n))

end

end A035364.P4567922919886267427

/-!
# A035365: Number of partitions of n into parts 4k+1 or 4k+2.

The programs for A035365, there is no canonical definition to state claims against.
-/

/-! ## A035365.P4119550316046222436

`A035455(2*(1+n))`
-/

namespace A035365.P4119550316046222436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035455 (2 * (1 + n))

end

end A035365.P4119550316046222436

/-! ## A035365.P14661284027180465088

`A051755(n+2)+A035455(A051755(n+2))-A317440(n+1)`
-/

namespace A035365.P14661284027180465088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2) + (A035455 (A051755 (n + 2)).toNat - A317440 (n + 1))

end

end A035365.P14661284027180465088

/-! ## A035365.P10022686085061189084

`A167743(A035957(n+1))`
-/

namespace A035365.P10022686085061189084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167743 (A035957 (n + 1)).toNat

end

end A035365.P10022686085061189084

/-!
# A035366: Number of partitions of n into parts 4k+2 or 4k+3.

The programs for A035366, there is no canonical definition to state claims against.
-/

/-! ## A035366.P7415186705753289029

`A035464(2*(1+n))`
-/

namespace A035366.P7415186705753289029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035464 (2 * (1 + n))

end

end A035366.P7415186705753289029

/-!
# A035367: Number of partitions of n into parts 5k or 5k+1.

The programs for A035367, there is no canonical definition to state claims against.
-/

/-! ## A035367.P11794413002626913576

`A035581(1+n)-A035591(n+1)`
-/

namespace A035367.P11794413002626913576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035581 (1 + n) - A035591 (n + 1)

end

end A035367.P11794413002626913576

/-! ## A035367.P16616046540568140484

`A035375(A247419(n+1))`
-/

namespace A035367.P16616046540568140484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035375 (A247419 (n + 1)).toNat

end

end A035367.P16616046540568140484

/-! ## A035367.P12048922719980368993

`A035441(record[A285354(n+1)-A035683(n+1)])`
-/

namespace A035367.P12048922719980368993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285354 (n + 1) - A035683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035367.P12048922719980368993

/-!
# A035368: Number of partitions of n into parts 5k or 5k+2.

The programs for A035368, there is no canonical definition to state claims against.
-/

/-! ## A035368.P11226291979224370459

`A035580(n+1)-A035590(n+1)`
-/

namespace A035368.P11226291979224370459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035580 (n + 1) - A035590 (n + 1)

end

end A035368.P11226291979224370459

/-! ## A035368.P7570767001178965377

`A131576(or(A017924(n), A130824(n)))`
-/

namespace A035368.P7570767001178965377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (Int.lor (A017924 n) (A130824 n)).toNat

end

end A035368.P7570767001178965377

/-! ## A035368.P553682167609922768

`A104638(A029691(n+2)+A000081(n))`
-/

namespace A035368.P553682167609922768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104638 (A029691 (n + 2) + A000081 n).toNat

end

end A035368.P553682167609922768

/-! ## A035368.P8763511062835026264

`A302242(or(A181832(n), A204922(n+1)))`
-/

namespace A035368.P8763511062835026264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (Int.lor (A181832 n) (A204922 (n + 1))).toNat

end

end A035368.P8763511062835026264

/-! ## A035368.P18266652248671120068

`A107286(A018328(n+2)-A014681(n+1))`
-/

namespace A035368.P18266652248671120068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A018328 (n + 2) - A014681 (n + 1)).toNat

end

end A035368.P18266652248671120068

/-!
# A035369: Number of partitions of n into parts 5k or 5k+3.

The programs for A035369, there is no canonical definition to state claims against.
-/

/-! ## A035369.P7333977923743419418

`A035579(1+n)-A035589(n+1)`
-/

namespace A035369.P7333977923743419418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035579 (1 + n) - A035589 (n + 1)

end

end A035369.P7333977923743419418

/-! ## A035369.P18041818525908944965

`val(A323333(A083434(n+1)), 4)`
-/

namespace A035369.P18041818525908944965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A323333 (A083434 (n + 1)).toNat).toNat 4

end

end A035369.P18041818525908944965

/-! ## A035369.P13460420211705259415

`A122924(A065648(n)+A035104(n))`
-/

namespace A035369.P13460420211705259415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122924 (A065648 n + A035104 n).toNat

end

end A035369.P13460420211705259415

/-! ## A035369.P9582582082923033528

`A173920(A339495(n+1)-A163979(n))`
-/

namespace A035369.P9582582082923033528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (A339495 (n + 1) - A163979 n).toNat

end

end A035369.P9582582082923033528

/-! ## A035369.P17526099851917063849

`A153902(A058933(n+1))%A153931(A153904(n))`
-/

namespace A035369.P17526099851917063849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153902 (A058933 (n + 1)).toNat) (A153931 (A153904 n).toNat)

end

end A035369.P17526099851917063849

/-!
# A035370: Number of partitions of n into parts 5k or 5k+4.

The programs for A035370, there is no canonical definition to state claims against.
-/

/-! ## A035370.P12666138643847146144

`A035578(n+1)-A035588(n+1)`
-/

namespace A035370.P12666138643847146144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035578 (n + 1) - A035588 (n + 1)

end

end A035370.P12666138643847146144

/-! ## A035370.P14172632813772272567

`A295260(n+1)-A010060(A005578(n))`
-/

namespace A035370.P14172632813772272567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (n + 1) - A010060 (A005578 n).toNat

end

end A035370.P14172632813772272567

/-! ## A035370.P16219669811688179269

`and(A033930(A000801(n+1)), A214246(n))`
-/

namespace A035370.P16219669811688179269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033930 (A000801 (n + 1)).toNat) (A214246 n)

end

end A035370.P16219669811688179269

/-! ## A035370.P9409717270431993528

`and(A033930(A000801(n+1)), A214248(n))`
-/

namespace A035370.P9409717270431993528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033930 (A000801 (n + 1)).toNat) (A214248 n)

end

end A035370.P9409717270431993528

/-! ## A035370.P1231060515287149629

`and(∑{e}[A042577(n), #], A042581(n))`
-/

namespace A035370.P1231060515287149629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) (A042581 n)

end

end A035370.P1231060515287149629

/-!
# A035371: Number of partitions of n into parts 5k+1 or 5k+2.

The programs for A035371, there is no canonical definition to state claims against.
-/

/-! ## A035371.P12526166576572173296

`A035577(n)-A035587(n)`
-/

namespace A035371.P12526166576572173296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035577 n - A035587 n

end

end A035371.P12526166576572173296

/-! ## A035371.P925135123625384875

`A048766(A011782(n))+A024695(n+1)`
-/

namespace A035371.P925135123625384875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A011782 n).toNat + A024695 (n + 1)

end

end A035371.P925135123625384875

/-! ## A035371.P12497811658430895097

`A035449(A187829(n+1)+A004526(n))`
-/

namespace A035371.P12497811658430895097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035449 (A187829 (n + 1) + A004526 n).toNat

end

end A035371.P12497811658430895097

/-! ## A035371.P11496401670734652367

`A087739(A039840(n))`
-/

namespace A035371.P11496401670734652367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (A039840 n).toNat

end

end A035371.P11496401670734652367

/-!
# A035372: Number of partitions of n into parts 5k+1 or 5k+3.

The programs for A035372, there is no canonical definition to state claims against.
-/

/-! ## A035372.P14187915498524544238

`A035576(n+1)-A035586(n+1)`
-/

namespace A035372.P14187915498524544238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035576 (n + 1) - A035586 (n + 1)

end

end A035372.P14187915498524544238

/-!
# A035373: Number of partitions of n into parts 5k+2 or 5k+4.

The programs for A035373, there is no canonical definition to state claims against.
-/

/-! ## A035373.P13209538837772362403

`A035573(n+1)-A035583(n+1)`
-/

namespace A035373.P13209538837772362403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035573 (n + 1) - A035583 (n + 1)

end

end A035373.P13209538837772362403

/-! ## A035373.P16857221017261868421

`A213911(xor(n, A279718(n)))`
-/

namespace A035373.P16857221017261868421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (Int.xor (n : ℤ) (A279718 n)).toNat

end

end A035373.P16857221017261868421

/-! ## A035373.P2387443074801330668

`A139352(A260239(n)-A074206(n))`
-/

namespace A035373.P2387443074801330668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A260239 n - A074206 n).toNat

end

end A035373.P2387443074801330668

/-! ## A035373.P6770457259003652252

`A037827(A282124(n)+A134560(n+1))`
-/

namespace A035373.P6770457259003652252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A282124 n + A134560 (n + 1)).toNat

end

end A035373.P6770457259003652252

/-! ## A035373.P13341003793071025863

`A048881(A242376(n)+A211097(n+1))`
-/

namespace A035373.P13341003793071025863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A242376 n + A211097 (n + 1)).toNat

end

end A035373.P13341003793071025863

/-!
# A035374: Number of partitions of n into parts 5k+3 or 5k+4.

The programs for A035374, there is no canonical definition to state claims against.
-/

/-! ## A035374.P12253759699966730799

`A035572(1+n)-A035582(n+1)`
-/

namespace A035374.P12253759699966730799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035572 (1 + n) - A035582 (n + 1)

end

end A035374.P12253759699966730799

/-! ## A035374.P2848722722600859222

`A212178(∑[A163590(n)])`
-/

namespace A035374.P2848722722600859222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212178 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035374.P2848722722600859222

/-! ## A035374.P4982108921292058430

`A037811(xor(3, A114226(n)))`
-/

namespace A035374.P4982108921292058430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (Int.xor 3 (A114226 n)).toNat

end

end A035374.P4982108921292058430

/-! ## A035374.P11577670132954308534

`A275849(A206741(n)-A165051(n))`
-/

namespace A035374.P11577670132954308534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A206741 n - A165051 n).toNat

end

end A035374.P11577670132954308534

/-! ## A035374.P2272332263107091994

`A087116(∑[A087116(n)]*A005181(n))`
-/

namespace A035374.P2272332263107091994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 ((∑ j ∈ Finset.range (n + 1), f1 j) * A005181 n).toNat

end

end A035374.P2272332263107091994

/-!
# A035375: Number of partitions of n into parts 6k or 6k+1.

The programs for A035375, there is no canonical definition to state claims against.
-/

/-! ## A035375.P7429781837486553807

`A035441(lt[A027465(n), A183541(n+1)])`
-/

namespace A035375.P7429781837486553807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035375.P7429781837486553807

/-!
# A035376: Number of partitions of n into parts 6k or 6k+2.

The programs for A035376, there is no canonical definition to state claims against.
-/

/-! ## A035376.P649983920638504003

`n%2*A035360(A110654(n))`
-/

namespace A035376.P649983920638504003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A035360 (A110654 n).toNat

end

end A035376.P649983920638504003

/-! ## A035376.P8019368470198875897

`and(1, n)*A035360(A065033(n))`
-/

namespace A035376.P8019368470198875897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A035360 (A065033 n).toNat

end

end A035376.P8019368470198875897

/-! ## A035376.P5637562376387892831

`char[1+2*n]*A035360(A008619(n))`
-/

namespace A035376.P5637562376387892831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A035360 (A008619 n).toNat

end

end A035376.P5637562376387892831

/-! ## A035376.P3341238941068611533

`A000035(n)*A035360(A065033(n))`
-/

namespace A035376.P3341238941068611533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035360 (A065033 n).toNat

end

end A035376.P3341238941068611533

/-! ## A035376.P9830699085598143072

`A000035(n)*A035360(A110654(n))`
-/

namespace A035376.P9830699085598143072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035360 (A110654 n).toNat

end

end A035376.P9830699085598143072

/-! ## A035376.P7578900190249469707

`log2(A000034(n))*A035360(A110654(n))`
-/

namespace A035376.P7578900190249469707
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000034 n : ℝ) * (A035360 (A110654 n).toNat : ℝ)

end

end A035376.P7578900190249469707

/-! ## A035376.P12293256898589480224

`A000035(n)*A035360(∑[A000035(n)])`
-/

namespace A035376.P12293256898589480224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A035360 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035376.P12293256898589480224

/-! ## A035376.P6420157297719989188

`Δ[A004526(n)]*A035360(A110654(n))`
-/

namespace A035376.P6420157297719989188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035360 (A110654 n).toNat

end

end A035376.P6420157297719989188

/-!
# A035377: Number of partitions of n into parts 6k or 6k+3.

The programs for A035377, there is no canonical definition to state claims against.
-/

/-! ## A035377.P11623945993879825643

`A035363(round(2*n/3))`
-/

namespace A035377.P11623945993879825643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A035377.P11623945993879825643

/-! ## A035377.P5560593491063314054

`A035444(comp[4*n-1])`
-/

namespace A035377.P5560593491063314054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A035377.P5560593491063314054

/-! ## A035377.P1071210516966145718

`A000041(floor(n/3))*char[3*n]`
-/

namespace A035377.P1071210516966145718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 3⌋.toNat * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A035377.P1071210516966145718

/-! ## A035377.P3207309585959761361

`(1-n²%3)*A000041(ceil(n/3))`
-/

namespace A035377.P3207309585959761361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n ^ 2 % 3 : ℕ) : ℤ)) * A000041 ⌈(n : ℚ) / 3⌉.toNat

end

end A035377.P3207309585959761361

/-! ## A035377.P14065853966572642150

`A114099(3*n)`
-/

namespace A035377.P14065853966572642150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (3 * n)

end

end A035377.P14065853966572642150

/-! ## A035377.P16450426605584262902

`A035536(n)-A035539(n)`
-/

namespace A035377.P16450426605584262902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035536 n - A035539 n

end

end A035377.P16450426605584262902

/-! ## A035377.P7129984717056886062

`A152140(A171452(n+1))`
-/

namespace A035377.P7129984717056886062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152140 (A171452 (n + 1)).toNat

end

end A035377.P7129984717056886062

/-! ## A035377.P9755404409053284539

`A389343(n)-A390208(n)`
-/

namespace A035377.P9755404409053284539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389343 n - A390208 n

end

end A035377.P9755404409053284539

/-! ## A035377.P9648273302765587434

`Δ[A363947(n)]`
-/

namespace A035377.P9648273302765587434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035377.P9648273302765587434

/-! ## A035377.P9718637117097099868

`A363947(n+1)-A363947(n)`
-/

namespace A035377.P9718637117097099868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363947 (n + 1) - A363947 n

end

end A035377.P9718637117097099868

/-!
# A035379: Number of partitions of n into parts 6k or 6k+5.

The programs for A035379, there is no canonical definition to state claims against.
-/

/-! ## A035379.P18053923669912662817

`A035395(A247419(n+1))`
-/

namespace A035379.P18053923669912662817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035395 (A247419 (n + 1)).toNat

end

end A035379.P18053923669912662817

/-!
# A035380: Number of partitions of n into parts 6k+1 or 6k+2.

The programs for A035380, there is no canonical definition to state claims against.
-/

/-! ## A035380.P10839155005543883007

`A330780(A295857(n+1)+1)`
-/

namespace A035380.P10839155005543883007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 (A295857 (n + 1) + 1).toNat

end

end A035380.P10839155005543883007

/-! ## A035380.P10219912549046446380

`A005708(n)+A000120(floor(∑[2^n/3]))`
-/

namespace A035380.P10219912549046446380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n + A000120 ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋.toNat

end

end A035380.P10219912549046446380

/-! ## A035380.P2010750528688179512

`A005708(n)+A000360(A000079(n))`
-/

namespace A035380.P2010750528688179512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n + A000360 (A000079 n).toNat

end

end A035380.P2010750528688179512

/-! ## A035380.P11221237818755220526

`A005708(n)+A004526(A077168(n))`
-/

namespace A035380.P11221237818755220526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 n + A004526 (A077168 n).toNat

end

end A035380.P11221237818755220526

/-! ## A035380.P7614021454515709202

`A007814(A289769(n))+A005708(n)`
-/

namespace A035380.P7614021454515709202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A289769 n).toNat + A005708 n

end

end A035380.P7614021454515709202

/-!
# A035381: Number of partitions of n into parts 6k+1 or 6k+3.

The programs for A035381, there is no canonical definition to state claims against.
-/

/-! ## A035381.P22360721792556162

`A292547(A022384(n))+A066920(n+1)`
-/

namespace A035381.P22360721792556162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292547 (A022384 n).toNat + A066920 (n + 1)

end

end A035381.P22360721792556162

/-! ## A035381.P5436389472478869514

`or(A032741(A058276(n)), A066920(n+1))`
-/

namespace A035381.P5436389472478869514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A032741 (A058276 n).toNat) (A066920 (n + 1))

end

end A035381.P5436389472478869514

/-! ## A035381.P11257536707771051250

`A185284(A000961(n+1))+A066920(n+1)`
-/

namespace A035381.P11257536707771051250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000961 (n + 1)).toNat + A066920 (n + 1)

end

end A035381.P11257536707771051250

/-! ## A035381.P8747176786669410087

`or(A060862(A056190(n+1)), A066920(n+1))`
-/

namespace A035381.P8747176786669410087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060862 (A056190 (n + 1)).toNat) (A066920 (n + 1))

end

end A035381.P8747176786669410087

/-! ## A035381.P14780870601445272008

`A185284(2*n+1)+A066920(n+1)`
-/

namespace A035381.P14780870601445272008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A066920 (n + 1)

end

end A035381.P14780870601445272008

/-!
# A035382: Number of partitions of n into parts congruent to 1 mod 3.

The programs for A035382, there is no canonical definition to state claims against.
-/

/-! ## A035382.P5938691660869405538

`∑[A277210(n)]`
-/

namespace A035382.P5938691660869405538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035382.P5938691660869405538

/-! ## A035382.P13365766744098399082

`A277210(A153881(n)+n+1)+a(n-1)` with `a(0)=1`
-/

namespace A035382.P13365766744098399082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277210 (A153881 n + (n + 1 : ℤ)).toNat + a (n - 1)

end

end A035382.P13365766744098399082

/-! ## A035382.P8345842608599428545

`A116373(3*A028310(n))`
-/

namespace A035382.P8345842608599428545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116373 (3 * A028310 n).toNat

end

end A035382.P8345842608599428545

/-! ## A035382.P7788316576461107628

`A035535(n)-A035538(n)`
-/

namespace A035382.P7788316576461107628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035535 n - A035538 n

end

end A035382.P7788316576461107628

/-! ## A035382.P9706212307080942875

`A035535(n)+A035538(n)*A153881(n+1)`
-/

namespace A035382.P9706212307080942875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035535 n + A035538 n * A153881 (n + 1)

end

end A035382.P9706212307080942875

/-!
# A035383: Automorphic numbers: n ends with square root of n.

The programs for A035383, there is no canonical definition to state claims against.
-/

/-! ## A035383.P16547781468483119345

`A003226(1+n)²`
-/

namespace A035383.P16547781468483119345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (1 + n) ^ 2

end

end A035383.P16547781468483119345

/-! ## A035383.P129049066119692629

`A003226(n+1)^2`
-/

namespace A035383.P129049066119692629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (n + 1) ^ 2

end

end A035383.P129049066119692629

/-! ## A035383.P11925937953743532200

`record[A003226(A051340(n))²]`
-/

namespace A035383.P11925937953743532200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (A051340 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035383.P11925937953743532200

/-! ## A035383.P1937460185684855169

`record[A003226(A291769(n))]²`
-/

namespace A035383.P1937460185684855169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A035383.P1937460185684855169

/-! ## A035383.P7617740010207852408

`record[A003226(A331300(n))²]`
-/

namespace A035383.P7617740010207852408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (A331300 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035383.P7617740010207852408

/-!
# A035384: Number of partitions of n into parts 6k+2 or 6k+3.

The programs for A035384, there is no canonical definition to state claims against.
-/

/-! ## A035384.P1410895924491188098

`A030290(A029161(n)%A217411(n+1))`
-/

namespace A035384.P1410895924491188098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030290 (Int.tmod (A029161 n) (A217411 (n + 1))).toNat

end

end A035384.P1410895924491188098

/-! ## A035384.P4820783694802973539

`A029161(n)+A025469(A056078(n+1))`
-/

namespace A035384.P4820783694802973539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029161 n + A025469 (A056078 (n + 1)).toNat

end

end A035384.P4820783694802973539

/-! ## A035384.P9902042494738094879

`or(A029161(n), A179801(A062684(n+1)))`
-/

namespace A035384.P9902042494738094879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029161 n) (A179801 (A062684 (n + 1)).toNat)

end

end A035384.P9902042494738094879

/-! ## A035384.P12028018505612201039

`A055641(A002531(n))+A029161(n)`
-/

namespace A035384.P12028018505612201039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A002531 n).toNat + A029161 n

end

end A035384.P12028018505612201039

/-! ## A035384.P5513774338437262079

`A122923(A357308(n))+A103221(n)`
-/

namespace A035384.P5513774338437262079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122923 (A357308 n).toNat + A103221 n

end

end A035384.P5513774338437262079

/-!
# A035385: Number of partitions of n into parts 6k+2 or 6k+4.

The programs for A035385, there is no canonical definition to state claims against.
-/

/-! ## A035385.P1234208559963766251

`char[2*n]*A000726(floor(n/2))`
-/

namespace A035385.P1234208559963766251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A000726 ⌊(n : ℚ) / 2⌋.toNat

end

end A035385.P1234208559963766251

/-! ## A035385.P3859286097109694024

`A000726(n*(1+(-1)^n)/4)-n%2`
-/

namespace A035385.P3859286097109694024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (SequenceMachineLib.roundAway (((n : ℤ) * (1 + (-1) ^ n) : ℚ) / 4)).toNat - ((n % 2 : ℕ) : ℤ)

end

end A035385.P3859286097109694024

/-! ## A035385.P12128503833384157789

`lcm((n+1)%2, A000726(A142150(n)))`
-/

namespace A035385.P12128503833384157789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n + 1) % 2 : ℕ) : ℤ) (A000726 (A142150 n).toNat)

end

end A035385.P12128503833384157789

/-! ## A035385.P18197780880809811262

`∑[A000726(A004526(n))*A033999(n)]`
-/

namespace A035385.P18197780880809811262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (A004526 n).toNat * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035385.P18197780880809811262

/-! ## A035385.P7873058361250616586

`lcm(A000726(A001281(n)), A056594(n))`
-/

namespace A035385.P7873058361250616586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000726 (A001281 n).toNat) (A056594 n)

end

end A035385.P7873058361250616586

/-! ## A035385.P16210798163244989759

`A000726(A001281(n))%A052552(n)`
-/

namespace A035385.P16210798163244989759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000726 (A001281 n).toNat) (A052552 n)

end

end A035385.P16210798163244989759

/-! ## A035385.P17941266222521158166

`A000726(A004525(n))%A052552(n)`
-/

namespace A035385.P17941266222521158166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000726 (A004525 n).toNat) (A052552 n)

end

end A035385.P17941266222521158166

/-! ## A035385.P815919676932927556

`A000726(A004526(n))%A052552(n)`
-/

namespace A035385.P815919676932927556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000726 (A004526 n).toNat) (A052552 n)

end

end A035385.P815919676932927556

/-! ## A035385.P9421175414928798587

`A061197(A093353(n+1))`
-/

namespace A035385.P9421175414928798587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061197 (A093353 (n + 1)).toNat

end

end A035385.P9421175414928798587

/-!
# A035386: Number of partitions of n into parts congruent to 2 mod 3.

The programs for A035386, there is no canonical definition to state claims against.
-/

/-! ## A035386.P7582133676132622545

`A116376(A008486(abs(1-n)+1))`
-/

namespace A035386.P7582133676132622545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116376 (A008486 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A035386.P7582133676132622545

/-! ## A035386.P3072828640848830444

`A035534(n)-A035537(n)`
-/

namespace A035386.P3072828640848830444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035534 n - A035537 n

end

end A035386.P3072828640848830444

/-! ## A035386.P1053875921489035112

`A035534(n)+A035537(n)*A057428(n)`
-/

namespace A035386.P1053875921489035112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035534 n + A035537 n * A057428 n

end

end A035386.P1053875921489035112

/-! ## A035386.P15954822342039081113

`A280152(lt[A213727(n+4), A325169(3*n+4)])`
-/

namespace A035386.P15954822342039081113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035386.P15954822342039081113

/-! ## A035386.P11397007725547309041

`A037827(A000031(n+2)+A000016(n)+1)`
-/

namespace A035386.P11397007725547309041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A000031 (n + 2) + A000016 n + 1).toNat

end

end A035386.P11397007725547309041

/-!
# A035387: Number of partitions of n into parts 6k+3 or 6k+4.

The programs for A035387, there is no canonical definition to state claims against.
-/

/-! ## A035387.P3244476650562471511

`A087116(xor(A008930(n), A118144(n+1)))`
-/

namespace A035387.P3244476650562471511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (Int.xor (A008930 n) (A118144 (n + 1))).toNat

end

end A035387.P3244476650562471511

/-! ## A035387.P14576627721970932095

`A000196(A247311(n+1)%A132997(n+1))`
-/

namespace A035387.P14576627721970932095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A247311 (n + 1)) (A132997 (n + 1))).toNat

end

end A035387.P14576627721970932095

/-!
# A035388: Number of partitions of n into parts 6k+3 or 6k+5.

The programs for A035388, there is no canonical definition to state claims against.
-/

/-! ## A035388.P710406111941509339

`A139352(A305889(n)+A060681(n+1))`
-/

namespace A035388.P710406111941509339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A305889 n + A060681 (n + 1)).toNat

end

end A035388.P710406111941509339

/-! ## A035388.P13311742215274337535

`A196564(A153917(n)-A008612(n))`
-/

namespace A035388.P13311742215274337535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A153917 n - A008612 n).toNat

end

end A035388.P13311742215274337535

/-! ## A035388.P5802628941589734429

`A037800(A000045(n)*A305801(n+4))`
-/

namespace A035388.P5802628941589734429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A000045 n * A305801 (n + 4)).toNat

end

end A035388.P5802628941589734429

/-! ## A035388.P5364522041464255761

`A139352(A270194(2^((n-1)%(n+1))))`
-/

namespace A035388.P5364522041464255761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A270194 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat).toNat

end

end A035388.P5364522041464255761

/-! ## A035388.P12109863370438705760

`A029287(A077168(n))`
-/

namespace A035388.P12109863370438705760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029287 (A077168 n).toNat

end

end A035388.P12109863370438705760

/-!
# A035389: Number of partitions of n into parts 6k+4 or 6k+5.

The programs for A035389, there is no canonical definition to state claims against.
-/

/-! ## A035389.P6363790943195845732

`A124760(A006261(n)+2*n)`
-/

namespace A035389.P6363790943195845732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A006261 n + (2 * n : ℤ)).toNat

end

end A035389.P6363790943195845732

/-!
# A035390: Number of partitions of n into parts 7k or 7k+1.

The programs for A035390, there is no canonical definition to state claims against.
-/

/-! ## A035390.P8691627836299179213

`A035441(A059561(n+1))`
-/

namespace A035390.P8691627836299179213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035441 (A059561 (n + 1)).toNat

end

end A035390.P8691627836299179213

/-! ## A035390.P7632742828648122194

`A035375(A349775(n+1))`
-/

namespace A035390.P7632742828648122194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035375 (A349775 (n + 1)).toNat

end

end A035390.P7632742828648122194

/-!
# A035391: Number of partitions of n into parts 7k or 7k+2.

The programs for A035391, there is no canonical definition to state claims against.
-/

/-! ## A035391.P12050942820185615930

`A240718(A357115(n+1))`
-/

namespace A035391.P12050942820185615930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240718 (A357115 (n + 1)).toNat

end

end A035391.P12050942820185615930

/-! ## A035391.P6557597120174051162

`A008611(A032422(n+3))%A008611(n+2)`
-/

namespace A035391.P6557597120174051162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 (A032422 (n + 3)).toNat) (A008611 (n + 2))

end

end A035391.P6557597120174051162

/-! ## A035391.P8176136966112495045

`A025818(eq[0, A007271(n)])`
-/

namespace A035391.P8176136966112495045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A035391.P8176136966112495045

/-! ## A035391.P6363860992635569082

`A162642(xor(n, A035592(n)))`
-/

namespace A035391.P6363860992635569082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (Int.xor (n : ℤ) (A035592 n)).toNat

end

end A035391.P6363860992635569082

/-! ## A035391.P13648899344496747866

`or(n%2, A031286(A030038(n)))`
-/

namespace A035391.P13648899344496747866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A031286 (A030038 n).toNat)

end

end A035391.P13648899344496747866

/-!
# A035392: Number of partitions of n into parts 7k or 7k+3.

The programs for A035392, there is no canonical definition to state claims against.
-/

/-! ## A035392.P6757237785553086231

`A273129(n)+A046080(A327475(n))`
-/

namespace A035392.P6757237785553086231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273129 n + A046080 (A327475 n).toNat

end

end A035392.P6757237785553086231

/-! ## A035392.P4660882113833588972

`A025847(∑[2^A283666(n+1)])`
-/

namespace A035392.P4660882113833588972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A283666 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025847 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A035392.P4660882113833588972

/-! ## A035392.P6846441594839511427

`A028310(A166578(n))%A035250(n+1)`
-/

namespace A035392.P6846441594839511427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A166578 n).toNat) (A035250 (n + 1))

end

end A035392.P6846441594839511427

/-! ## A035392.P10135311900432063942

`A391441(A010350(n+3)+A010350(n+1))`
-/

namespace A035392.P10135311900432063942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391441 (A010350 (n + 3) + A010350 (n + 1)).toNat

end

end A035392.P10135311900432063942

/-! ## A035392.P3518852242423564444

`A057516(A253587(A001621(n))%A000124(n))`
-/

namespace A035392.P3518852242423564444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057516 (Int.tmod (A253587 (A001621 n).toNat) (A000124 n)).toNat

end

end A035392.P3518852242423564444

/-!
# A035393: Number of partitions of n into parts 7k or 7k+4.

The programs for A035393, there is no canonical definition to state claims against.
-/

/-! ## A035393.P10648990057576936960

`Δ[A029076(n)]*A134451(A000073(n))`
-/

namespace A035393.P10648990057576936960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A134451 (A000073 n).toNat

end

end A035393.P10648990057576936960

/-! ## A035393.P3146423396098209044

`and(-A324697(A051424(n)), A279861(n+1))`
-/

namespace A035393.P3146423396098209044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A324697 (A051424 n).toNat) (A279861 (n + 1))

end

end A035393.P3146423396098209044

/-! ## A035393.P10486753004815830054

`∑{e}[A002094(n+1)+n+1, log2(#)]`
-/

namespace A035393.P10486753004815830054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002094 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.logb 2 (Nat.factorization (f1 n).natAbs p : ℝ)

end

end A035393.P10486753004815830054

/-! ## A035393.P10921072694209860836

`A124760(2*n)*A124760(A000032(n+4))`
-/

namespace A035393.P10921072694209860836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (2 * n) * A124760 (A000032 (n + 4)).toNat

end

end A035393.P10921072694209860836

/-! ## A035393.P154356863794809632

`A370078(A346023(n+1)-A336957(3*(n+1)))`
-/

namespace A035393.P154356863794809632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370078 (A346023 (n + 1) - A336957 (3 * (n + 1))).toNat

end

end A035393.P154356863794809632

/-!
# A035394: Number of partitions of n into parts 7k or 7k+5.

The programs for A035394, there is no canonical definition to state claims against.
-/

/-! ## A035394.P14748543603395303108

`A025886(n+1)*A335208(A335192(n+3))`
-/

namespace A035394.P14748543603395303108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 (n + 1) * A335208 (A335192 (n + 3)).toNat

end

end A035394.P14748543603395303108

/-! ## A035394.P4535958060753033937

`A049321(∑[A270333(2*n)])`
-/

namespace A035394.P4535958060753033937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270333 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035394.P4535958060753033937

/-! ## A035394.P12429621116107181083

`val(A337699(A337713(n+5)), 4)`
-/

namespace A035394.P12429621116107181083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337699 (A337713 (n + 5)).toNat).toNat 4

end

end A035394.P12429621116107181083

/-! ## A035394.P5147568362505232195

`∑{e}[A083217(A339087(2*n+1)), #]`
-/

namespace A035394.P5147568362505232195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083217 (A339087 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A035394.P5147568362505232195

/-! ## A035394.P538627202306643698

`and(A029269(n), A029269(A326023(n)))`
-/

namespace A035394.P538627202306643698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029269 n) (A029269 (A326023 n).toNat)

end

end A035394.P538627202306643698

/-!
# A035396: Number of partitions of n into parts 7k+1 or 7k+2.

The programs for A035396, there is no canonical definition to state claims against.
-/

/-! ## A035396.P8652296820577330652

`A156251(A051424(n+2)-A156258(n+1))`
-/

namespace A035396.P8652296820577330652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A051424 (n + 2) - A156258 (n + 1)).toNat

end

end A035396.P8652296820577330652

/-! ## A035396.P2573326385513627935

`∑[A087116(A000803(n))]-floor(n/2)`
-/

namespace A035396.P2573326385513627935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A000803 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n : ℚ) / 2⌋

end

end A035396.P2573326385513627935

/-! ## A035396.P8381309827972927332

`∑[A043567(∑[2^n])-A185218(n)]`
-/

namespace A035396.P8381309827972927332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043567 (∑ j ∈ Finset.range (n + 1), f2 j) - A185218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035396.P8381309827972927332

/-! ## A035396.P15476370157002545154

`A106486(A024646(n))+A005709(n)`
-/

namespace A035396.P15476370157002545154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (A024646 n).toNat + A005709 n

end

end A035396.P15476370157002545154

/-! ## A035396.P17565135974785155919

`A051903(A122746(n))+A005709(n)`
-/

namespace A035396.P17565135974785155919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A122746 n).toNat + A005709 n

end

end A035396.P17565135974785155919

/-!
# A035399: Limit of the position of the n-th partition without repetition in the list of all integer partitions sorted in reverse lexicographic order.

The programs for A035399, there is no canonical definition to state claims against.
-/

/-! ## A035399.P17053402809201293410

`A035400(n)+a(n-1)` with `a(0)=1`
-/

namespace A035399.P17053402809201293410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035400 n + a (n - 1)

end

end A035399.P17053402809201293410

/-! ## A035399.P3133470525557212050

`∑[A035400(abs(1-n)+1)]`
-/

namespace A035399.P3133470525557212050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035400 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035399.P3133470525557212050

/-! ## A035399.P1838433505591064124

`∑[A035400(n+1)]+1-A035400(n+1)`
-/

namespace A035399.P1838433505591064124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A035400 (n + 1))

end

end A035399.P1838433505591064124

/-! ## A035399.P10995056419504559781

`eq[A115623(n), A238966(n)]+1`
-/

namespace A035399.P10995056419504559781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A035399.P10995056419504559781

