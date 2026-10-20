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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A000300: 4th power of rooted tree enumerator: linear forests of 4 rooted trees.

The programs for A000300, there is no canonical definition to state claims against.
-/

/-! ## A000300.P10542285366864223667

`A339067(A052905(n)+9)`
-/

namespace A000300.P10542285366864223667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A052905 n + 9).toNat

end

end A000300.P10542285366864223667

/-! ## A000300.P10643867273929622756

`A339067(A055999(n)+10)`
-/

namespace A000300.P10643867273929622756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A055999 n + 10).toNat

end

end A000300.P10643867273929622756

/-! ## A000300.P12710128759169613857

`A339067(Δ[A008778(n)]+6)`
-/

namespace A000300.P12710128759169613857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (f1 (n + 1) - f1 n + 6).toNat

end

end A000300.P12710128759169613857

/-! ## A000300.P1620982269950779394

`A339067(A167614(n+2)+1)`
-/

namespace A000300.P1620982269950779394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A167614 (n + 2) + 1).toNat

end

end A000300.P1620982269950779394

/-! ## A000300.P8139203318867100957

`A339067(A166136(n+2)-2)`
-/

namespace A000300.P8139203318867100957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A166136 (n + 2) - 2).toNat

end

end A000300.P8139203318867100957

/-! ## A000300.P15061527841185446141

`A339067(A000124(n+3)+3)`
-/

namespace A000300.P15061527841185446141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A000124 (n + 3) + 3).toNat

end

end A000300.P15061527841185446141

/-! ## A000300.P6395204792133920998

`A339067(A166136(n+1)+1+n)`
-/

namespace A000300.P6395204792133920998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A000300.P6395204792133920998

/-! ## A000300.P7323533336047800113

`A339067(Δ[A023545(n+1)-n²])`
-/

namespace A000300.P7323533336047800113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (f1 (n + 1) - f1 n).toNat

end

end A000300.P7323533336047800113

/-!
# A000301: a(n) = a(n-1)*a(n-2) with a(0) = 1, a(1) = 2; also a(n) = 2^Fibonacci(n).

The programs for A000301, the canonical program `A000301.P5806820431762043218` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000301 has offset 0).

The definition of A000301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A000301.P5806820431762043218`, by `A000301.P5806820431762043218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000301.P5806820431762043218

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000301

/-- `a(n-1)*a(n-2)` -/
def P5806820431762043218.Spec : Prop :=
  ∀ n, (P5806820431762043218.a n : ℤ) = A000301 n

theorem P5806820431762043218.correct : P5806820431762043218.Spec := by
  intro n
  simp only [A000301]

end A000301

/-! ## A000301.P5904291080134878892

`A000304(n+3)/A010098(n+1)`
-/

namespace A000301.P5904291080134878892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000304 (n + 3) : ℚ) / (A010098 (n + 1) : ℚ)

end

end A000301.P5904291080134878892

namespace A000301

/-- `A000304(n+3)/A010098(n+1)` -/
def P5904291080134878892.Spec : Prop :=
  ∀ n, P5904291080134878892.a n = (A000301 n : ℚ)

end A000301

/-! ## A000301.P13954980693866331265

`2^round(ϕ^n/sqrt(5))`
-/

namespace A000301.P13954980693866331265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ)

end

end A000301.P13954980693866331265

namespace A000301

/-- `2^round(ϕ^n/sqrt(5))` -/
def P13954980693866331265.Spec : Prop :=
  ∀ n, P13954980693866331265.a n = (A000301 n : ℚ)

end A000301

/-! ## A000301.P11175154985400598189

`a(n-1)²/a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A000301.P11175154985400598189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) ^ 2 / a (n - 3)

end

end A000301.P11175154985400598189

namespace A000301

/-- `a(n-1)²/a(n-3)` -/
def P11175154985400598189.Spec : Prop :=
  ∀ n, P11175154985400598189.a n = (A000301 n : ℚ)

end A000301

/-! ## A000301.P9364479798055442370

`a(n-1)/a(n-2)^(-1)` with `a(0)=1, a(1)=2`
-/

namespace A000301.P9364479798055442370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A000301.P9364479798055442370

namespace A000301

/-- `a(n-1)/a(n-2)^(-1)` -/
def P9364479798055442370.Spec : Prop :=
  ∀ n, P9364479798055442370.a n = (A000301 n : ℚ)

end A000301

/-!
# A000302: Powers of 4: a(n) = 4^n.

The programs for A000302, the canonical program `A000302.P5166485833484575275` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000302 has offset 0).

The definition of A000302 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n` (program `A000302.P5166485833484575275`, by `A000302.P5166485833484575275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000302.P5166485833484575275

`4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000302

/-- `4^n` -/
def P5166485833484575275.Spec : Prop :=
  ∀ n, (P5166485833484575275.a n : ℤ) = A000302 n

theorem P5166485833484575275.correct : P5166485833484575275.Spec := by
  intro n
  simp only [A000302]

end A000302

/-!
# A000303: Number of permutations of [n] in which the longest increasing run has length 2.

The programs for A000303, there is no canonical definition to state claims against.
-/

/-! ## A000303.P657049226928525107

`∑[abs(Δ[A049774(n)])]`
-/

namespace A000303.P657049226928525107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049774 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000303.P657049226928525107

/-! ## A000303.P1969908577279066692

`A049774(n+1)-1`
-/

namespace A000303.P1969908577279066692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049774 (n + 1) - 1

end

end A000303.P1969908577279066692

/-! ## A000303.P8979895863724128486

`A242784(A052905(n+2)+1)-1`
-/

namespace A000303.P8979895863724128486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A052905 (n + 2) + 1).toNat - 1

end

end A000303.P8979895863724128486

/-! ## A000303.P9716497740499263411

`A087960(94*or(1, n))+A049774(n+1)`
-/

namespace A000303.P9716497740499263411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (94 * Nat.lor 1 n) + A049774 (n + 1)

end

end A000303.P9716497740499263411

/-! ## A000303.P11733136833786503066

`A162975(A022856(n+3))-1`
-/

namespace A000303.P11733136833786503066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A022856 (n + 3)).toNat - 1

end

end A000303.P11733136833786503066

/-! ## A000303.P218656806677153133

`A162975(A133263(n)-n)-1`
-/

namespace A000303.P218656806677153133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162975 (A133263 n - (n : ℤ)).toNat - 1

end

end A000303.P218656806677153133

/-! ## A000303.P4427906574221255328

`∑[Δ[A049774(n)]%A177519(n+1)]`
-/

namespace A000303.P4427906574221255328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049774 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A177519 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000303.P4427906574221255328

/-! ## A000303.P12076749912335768117

`A008304(A133263(n))-A000007(n)`
-/

namespace A000303.P12076749912335768117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A133263 n).toNat - A000007 n

end

end A000303.P12076749912335768117

/-! ## A000303.P4918546759534125649

`and(A008304(A133263(n)), A057428(n))`
-/

namespace A000303.P4918546759534125649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008304 (A133263 n).toNat) (A057428 n)

end

end A000303.P4918546759534125649

/-!
# A000304: a(n) = a(n-1)*a(n-2).

The programs for A000304, the canonical program `A000304.P8261237825016685867` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000304 has offset 2).

The definition of A000304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A000304.P8261237825016685867`, by `A000304.P8261237825016685867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000304.P8261237825016685867

`a(n-1)*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000304

/-- `a(n-1)*a(n-2)` -/
def P8261237825016685867.Spec : Prop :=
  ∀ n, (P8261237825016685867.a n : ℤ) = A000304 (n + 2)

theorem P8261237825016685867.correct : P8261237825016685867.Spec := by
  intro n
  simp only [A000304, Nat.add_sub_cancel]

end A000304

/-! ## A000304.P2136352265296191165

`a(n-1)/tan(acot(a(n-2)))` with `a(0)=2, a(1)=3`
-/

namespace A000304.P2136352265296191165
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (a (n - 2)))

end

end A000304.P2136352265296191165

namespace A000304

/-- `a(n-1)/tan(acot(a(n-2)))` -/
def P2136352265296191165.Spec : Prop :=
  ∀ n, P2136352265296191165.a n = (A000304 (n + 2) : ℝ)

end A000304

/-! ## A000304.P11804792289012416019

`a(n-1)/a(n-2)^(-1)` with `a(0)=2, a(1)=3`
-/

namespace A000304.P11804792289012416019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A000304.P11804792289012416019

namespace A000304

/-- `a(n-1)/a(n-2)^(-1)` -/
def P11804792289012416019.Spec : Prop :=
  ∀ n, P11804792289012416019.a n = (A000304 (n + 2) : ℚ)

end A000304

/-! ## A000304.P13712067443356630631

`a(n-1)/abs(1/a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A000304.P13712067443356630631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) / |1 / a (n - 2)|

end

end A000304.P13712067443356630631

namespace A000304

/-- `a(n-1)/abs(1/a(n-2))` -/
def P13712067443356630631.Spec : Prop :=
  ∀ n, P13712067443356630631.a n = (A000304 (n + 2) : ℚ)

end A000304

/-! ## A000304.P7030322653835047545

`a(n-2)/(2/a(n-1)-1/a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A000304.P7030322653835047545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) / (2 / a (n - 1) - 1 / a (n - 1))

end

end A000304.P7030322653835047545

namespace A000304

/-- `a(n-2)/(2/a(n-1)-1/a(n-1))` -/
def P7030322653835047545.Spec : Prop :=
  ∀ n, P7030322653835047545.a n = (A000304 (n + 2) : ℚ)

end A000304

/-!
# A000305: Number of certain rooted planar maps.

The programs for A000305, there is no canonical definition to state claims against.
-/

/-! ## A000305.P6232572026979295201

`record[A128033(n)]+n!*∑[1/n!]`
-/

namespace A000305.P6232572026979295201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128033 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A000305.P6232572026979295201

/-!
# A000306: Number of trees of diameter 8.

The programs for A000306, there is no canonical definition to state claims against.
-/

/-! ## A000306.P2946117759385160394

`A034853(∑[n]+6*(n+5))`
-/

namespace A000306.P2946117759385160394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034853 (∑ j ∈ Finset.range (n + 1), f1 j + 6 * (n + 5))

end

end A000306.P2946117759385160394

/-!
# A000307: Number of 4-level labeled rooted trees with n leaves.

The programs for A000307, there is no canonical definition to state claims against.
-/

/-! ## A000307.P2747318725378186238

`A039812(∑[abs(1-n)])`
-/

namespace A000307.P2747318725378186238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039812 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000307.P2747318725378186238

/-! ## A000307.P1997774306263919408

`A111672(∑[n+3])`
-/

namespace A000307.P1997774306263919408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111672 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000307.P1997774306263919408

/-! ## A000307.P2913099032407914222

`A144150(∑[n+3]+n+3)`
-/

namespace A000307.P2913099032407914222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A000307.P2913099032407914222

/-! ## A000307.P3287795571477321715

`A130706(3*n+2)+A111672(A165157(2*(n+1)))`
-/

namespace A000307.P3287795571477321715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (3 * n + 2) + A111672 (A165157 (2 * (n + 1))).toNat

end

end A000307.P3287795571477321715

/-! ## A000307.P4267651019802927943

`A153277(∑[n+2]-1)`
-/

namespace A000307.P4267651019802927943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153277 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000307.P4267651019802927943

/-!
# A000308: a(n) = a(n-1)*a(n-2)*a(n-3) with a(1)=1, a(2)=2 and a(3)=3.

The programs for A000308, the canonical program `A000308.P6575646423949330704` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000308 has offset 1).

The definition of A000308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)` (program `A000308.P6575646423949330704`, by `A000308.P6575646423949330704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000308.P6575646423949330704

`a(n-1)*a(n-2)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000308

/-- `a(n-1)*a(n-2)*a(n-3)` -/
def P6575646423949330704.Spec : Prop :=
  ∀ n, (P6575646423949330704.a n : ℤ) = A000308 (n + 1)

theorem P6575646423949330704.correct : P6575646423949330704.Spec := by
  intro n
  simp only [A000308, Nat.add_sub_cancel]

end A000308

/-! ## A000308.P10550825037765025765

`2^A001590(n)*3^A000073(n)`
-/

namespace A000308.P10550825037765025765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001590 n : ℤ) * (3 : ℚ) ^ (A000073 n : ℤ)

end

end A000308.P10550825037765025765

namespace A000308

/-- `2^A001590(n)*3^A000073(n)` -/
def P10550825037765025765.Spec : Prop :=
  ∀ n, P10550825037765025765.a n = (A000308 (n + 1) : ℚ)

end A000308

/-! ## A000308.P10346630563212848268

`a(n-1)²/a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A000308.P10346630563212848268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  a (n - 1) ^ 2 / a (n - 4)

end

end A000308.P10346630563212848268

namespace A000308

/-- `a(n-1)²/a(n-4)` -/
def P10346630563212848268.Spec : Prop :=
  ∀ n, P10346630563212848268.a n = (A000308 (n + 1) : ℚ)

end A000308

/-! ## A000308.P8753744030466914852

`∏{digits}[A065841(n+1), #]`
-/

namespace A000308.P8753744030466914852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A000308.P8753744030466914852

namespace A000308

/-- `∏{digits}[A065841(n+1), #]` -/
def P8753744030466914852.Spec : Prop :=
  ∀ n, (P8753744030466914852.a n : ℤ) = A000308 (n + 1)

end A000308

/-! ## A000308.P1051794758161791796

`∏{digits}[A065842(n+1), #]`
-/

namespace A000308.P1051794758161791796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A000308.P1051794758161791796

namespace A000308

/-- `∏{digits}[A065842(n+1), #]` -/
def P1051794758161791796.Spec : Prop :=
  ∀ n, (P1051794758161791796.a n : ℤ) = A000308 (n + 1)

end A000308

/-!
# A000309: Number of rooted planar bridgeless cubic maps with 2n nodes.

The programs for A000309, the canonical program `A000309.P5637351620675163237` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000309 has offset 0).

The definition of A000309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000309.P14621920719844003789

`2^(n-1)*A000139(n)`
-/

namespace A000309.P14621920719844003789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000139 n : ℚ)

end

end A000309.P14621920719844003789

namespace A000309

/-- `2^(n-1)*A000139(n)` -/
def P14621920719844003789.Spec : Prop :=
  ∀ n, P14621920719844003789.a n = (A000309 n : ℚ)

end A000309

/-! ## A000309.P10249020971600984563

`4*a(n-1)*C(3*n, 3)/C(2*n+2, 3)` with `a(0)=1`
-/

namespace A000309.P10249020971600984563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) * (Nat.choose (3 * n) 3 : ℚ) / (Nat.choose (2 * n + 2) 3 : ℚ)

end

end A000309.P10249020971600984563

namespace A000309

/-- `4*a(n-1)*C(3*n, 3)/C(2*n+2, 3)` -/
def P10249020971600984563.Spec : Prop :=
  ∀ n, P10249020971600984563.a n = (A000309 n : ℚ)

end A000309

/-! ## A000309.P5637351620675163237

`2^n*(3*n)!/((n+1)!*(2*n+1)!)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000309

/-- `2^n*(3*n)!/((n+1)!*(2*n+1)!)` -/
def P5637351620675163237.Spec : Prop :=
  ∀ n, P5637351620675163237.a n = (A000309 n : ℚ)

end A000309

/-! ## A000309.P8367694524486658962

`2^n/(n+1)*A001764(n)`
-/

namespace A000309.P8367694524486658962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A000309.P8367694524486658962

namespace A000309

/-- `2^n/(n+1)*A001764(n)` -/
def P8367694524486658962.Spec : Prop :=
  ∀ n, P8367694524486658962.a n = (A000309 n : ℚ)

end A000309

/-! ## A000309.P6434255143807128970

`A000139(A028310(n))*A011782(n)`
-/

namespace A000309.P6434255143807128970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000139 (A028310 n).toNat * A011782 n

end

end A000309.P6434255143807128970

namespace A000309

/-- `A000139(A028310(n))*A011782(n)` -/
def P6434255143807128970.Spec : Prop :=
  ∀ n, P6434255143807128970.a n = A000309 n

end A000309

/-! ## A000309.P4186487821299796251

`A001764(n)/A000217(n+1)*A001792(n)`
-/

namespace A000309.P4186487821299796251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n : ℚ) / (A000217 (n + 1) : ℚ) * (A001792 n : ℚ)

end

end A000309.P4186487821299796251

namespace A000309

/-- `A001764(n)/A000217(n+1)*A001792(n)` -/
def P4186487821299796251.Spec : Prop :=
  ∀ n, P4186487821299796251.a n = (A000309 n : ℚ)

end A000309

/-! ## A000309.P4400455600072608458

`A153231(n)/(n+1)`
-/

namespace A000309.P4400455600072608458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153231 n : ℚ) / (n + 1 : ℚ)

end

end A000309.P4400455600072608458

namespace A000309

/-- `A153231(n)/(n+1)` -/
def P4400455600072608458.Spec : Prop :=
  ∀ n, P4400455600072608458.a n = (A000309 n : ℚ)

end A000309

/-! ## A000309.P12319238148339363581

`A000079(n)*A001764(n)/(n+1)`
-/

namespace A000309.P12319238148339363581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A001764 n : ℚ) / (n + 1 : ℚ)

end

end A000309.P12319238148339363581

namespace A000309

/-- `A000079(n)*A001764(n)/(n+1)` -/
def P12319238148339363581.Spec : Prop :=
  ∀ n, P12319238148339363581.a n = (A000309 n : ℚ)

end A000309

/-! ## A000309.P5305605278451011403

`A228484(n)/A000217(2*n+1)`
-/

namespace A000309.P5305605278451011403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228484 n : ℚ) / (A000217 (2 * n + 1) : ℚ)

end

end A000309.P5305605278451011403

namespace A000309

/-- `A228484(n)/A000217(2*n+1)` -/
def P5305605278451011403.Spec : Prop :=
  ∀ n, P5305605278451011403.a n = (A000309 n : ℚ)

end A000309

/-! ## A000309.P9773596413586613578

`A006335(n)/A000079(n)`
-/

namespace A000309.P9773596413586613578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006335 n : ℚ) / (A000079 n : ℚ)

end

end A000309.P9773596413586613578

namespace A000309

/-- `A006335(n)/A000079(n)` -/
def P9773596413586613578.Spec : Prop :=
  ∀ n, P9773596413586613578.a n = (A000309 n : ℚ)

end A000309

/-!
# A000310: Coefficients of iterated exponentials.

The programs for A000310, there is no canonical definition to state claims against.
-/

/-! ## A000310.P17948341185137516372

`abs(A039816(∑[n]+1))`
-/

namespace A000310.P17948341185137516372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A000310.P17948341185137516372

/-! ## A000310.P13373576742786399486

`record[A039816(n+1)/A130595(n)]`
-/

namespace A000310.P13373576742786399486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039816 (n + 1) : ℚ) / (A130595 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000310.P13373576742786399486

/-! ## A000310.P14823633812294272524

`record[gcd(A039816(n+1), A175779(n))]`
-/

namespace A000310.P14823633812294272524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039816 (n + 1)) (A175779 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000310.P14823633812294272524

/-! ## A000310.P3063248994808958473

`record[abs(A039816(n+1)/A008277(n+1))]`
-/

namespace A000310.P3063248994808958473
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A039816 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000310.P3063248994808958473

/-! ## A000310.P15910910604480500794

`A033999(n)*A039816(A000124(n))`
-/

namespace A000310.P15910910604480500794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A039816 (A000124 n).toNat

end

end A000310.P15910910604480500794

/-! ## A000310.P3672010509927035778

`gcd(A000038(n), A039816(A000124(n)))`
-/

namespace A000310.P3672010509927035778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A039816 (A000124 n).toNat)

end

end A000310.P3672010509927035778

/-! ## A000310.P14086733399220811919

`lcm(A020985(n), A039816(A000124(n)))`
-/

namespace A000310.P14086733399220811919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A039816 (A000124 n).toNat)

end

end A000310.P14086733399220811919

/-! ## A000310.P13009273625745114848

`A111933(eq[3, A193592(n)])`
-/

namespace A000310.P13009273625745114848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000310.P13009273625745114848

/-! ## A000310.P13526836971675998548

`A111933(eq[8, A327549(n)])`
-/

namespace A000310.P13526836971675998548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000310.P13526836971675998548

/-! ## A000310.P16070214656563002897

`A111933(A167614(n+1)+A005843(n)+1)`
-/

namespace A000310.P16070214656563002897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (A167614 (n + 1) + (A005843 n + 1)).toNat

end

end A000310.P16070214656563002897

/-!
# A000311: Schroeder's fourth problem; also series-reduced rooted trees with n labeled leaves; also number of total partitions of n.

The programs for A000311, there is no canonical definition to state claims against.
-/

/-! ## A000311.P14493067561362238822

`A339780(A103517(n)+∑[n])`
-/

namespace A000311.P14493067561362238822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A103517 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A000311.P14493067561362238822

/-! ## A000311.P4305222947517991598

`A339780(A134869(n+1)+n)`
-/

namespace A000311.P4305222947517991598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A134869 (n + 1) + (n : ℤ)).toNat

end

end A000311.P4305222947517991598

/-! ## A000311.P136101197487941332

`A339780(A253145(n)+1+n)`
-/

namespace A000311.P136101197487941332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A253145 n + 1 + (n : ℤ)).toNat

end

end A000311.P136101197487941332

/-! ## A000311.P13015317356656257129

`A339780(A133263(n)+2*n)`
-/

namespace A000311.P13015317356656257129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A133263 n + (2 * n : ℤ)).toNat

end

end A000311.P13015317356656257129

/-! ## A000311.P5488424844138023031

`A339780(A133263(n)+n+n)`
-/

namespace A000311.P5488424844138023031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A133263 n + (n : ℤ) + (n : ℤ)).toNat

end

end A000311.P5488424844138023031

/-! ## A000311.P8112588833988269943

`A339780(A057427(n)+A034856(n+1))`
-/

namespace A000311.P8112588833988269943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A057427 n + A034856 (n + 1)).toNat

end

end A000311.P8112588833988269943

/-! ## A000311.P14204039770297408192

`A339780(A152950(n+1)+A004273(n))`
-/

namespace A000311.P14204039770297408192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A152950 (n + 1) + A004273 n).toNat

end

end A000311.P14204039770297408192

/-! ## A000311.P17250173861568264880

`A339780(A161680(n+1)+A103517(n))`
-/

namespace A000311.P17250173861568264880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339780 (A161680 (n + 1) + A103517 n).toNat

end

end A000311.P17250173861568264880

/-! ## A000311.P6081958649885682036

`A060576(n+1)*A339780(A000096(n+1))`
-/

namespace A000311.P6081958649885682036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) * A339780 (A000096 (n + 1)).toNat

end

end A000311.P6081958649885682036

/-!
# A000312: a(n) = n^n; number of labeled mappings from n points to themselves (endofunctions).

The programs for A000312, the canonical program `A000312.P3932771318196185165` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000312 has offset 0).

The definition of A000312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n` (program `A000312.P3932771318196185165`, by `A000312.P3932771318196185165.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000312.P3932771318196185165

`n^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000312

/-- `n^n` -/
def P3932771318196185165.Spec : Prop :=
  ∀ n, (P3932771318196185165.a n : ℤ) = A000312 n

theorem P3932771318196185165.correct : P3932771318196185165.Spec := by
  intro n
  simp only [A000312]

end A000312

/-!
# A000313: Number of permutations of length n with 3 consecutive ascending pairs.

The programs for A000313, there is no canonical definition to state claims against.
-/

/-! ## A000313.P16497151229229268407

`A065087(abs(1-n))/3`
-/

namespace A000313.P16497151229229268407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065087 |1 - (n : ℤ)|.toNat : ℚ) / 3

end

end A000313.P16497151229229268407

/-! ## A000313.P3584163413505483350

`n/3*A000274(A028310(n))`
-/

namespace A000313.P3584163413505483350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A000274 (A028310 n).toNat : ℚ)

end

end A000313.P3584163413505483350

/-! ## A000313.P6192201722683734947

`(A000274(n+1)-A000387(n))/3`
-/

namespace A000313.P6192201722683734947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000274 (n + 1) - A000387 n : ℚ) / 3

end

end A000313.P6192201722683734947

/-! ## A000313.P5445280323827304133

`4/(n+1)*A001260(n+2)`
-/

namespace A000313.P5445280323827304133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A001260 (n + 2) : ℚ)

end

end A000313.P5445280323827304133

/-! ## A000313.P3638047345176006189

`((n²-n)*A000261(n+1))%A000255(n)`
-/

namespace A000313.P3638047345176006189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n ^ 2 : ℤ) - (n : ℤ)) * A000261 (n + 1)) (A000255 n)

end

end A000313.P3638047345176006189

/-!
# A000314: Number of mixed Husimi trees with n nodes; or labeled polygonal cacti with bridges.

The programs for A000314, there is no canonical definition to state claims against.
-/

/-! ## A000314.P6916162392432049843

`A035351(A028310(n))/A028310(n)`
-/

namespace A000314.P6916162392432049843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035351 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A000314.P6916162392432049843

/-! ## A000314.P17778148814412490890

`A035351(A233583(n+1))/A233583(n+1)`
-/

namespace A000314.P17778148814412490890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035351 (A233583 (n + 1)).toNat : ℚ) / (A233583 (n + 1) : ℚ)

end

end A000314.P17778148814412490890

/-!
# A000315: Number of reduced Latin squares of order n; also number of labeled loops (quasigroups with an identity element) with a fixed identity element.

The programs for A000315, there is no canonical definition to state claims against.
-/

/-! ## A000315.P16757570057147834172

`A000479(n+1)/n!`
-/

namespace A000315.P16757570057147834172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000479 (n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A000315.P16757570057147834172

/-! ## A000315.P12289069775087879498

`A002860(n+1)/((n+1)!*n!)`
-/

namespace A000315.P12289069775087879498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002860 (n + 1) : ℚ) / (Nat.factorial (n + 1) * Nat.factorial n : ℚ)

end

end A000315.P12289069775087879498

/-! ## A000315.P6014515874620883566

`A001009(∑[n+1])`
-/

namespace A000315.P6014515874620883566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001009 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000315.P6014515874620883566

/-! ## A000315.P13859237865653684335

`A000479(n+1)/A000142(n)`
-/

namespace A000315.P13859237865653684335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000479 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A000315.P13859237865653684335

/-! ## A000315.P10259208531442028462

`A002860(n+1)/((n+1)*A000142(n)²)`
-/

namespace A000315.P10259208531442028462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002860 (n + 1) : ℚ) / ((n + 1 : ℤ) * A000142 n ^ 2 : ℚ)

end

end A000315.P10259208531442028462

/-!
# A000316: Two decks each have n kinds of cards, 2 of each kind. The first deck is laid out in order. The second deck is shuffled and laid out next to the first. A match occurs if a card from the second deck is next to a card of the same kind from the first deck. a(n) is the number of ways of achieving no matches.

The programs for A000316, the canonical program `A000316.P502515888872783753` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000316 has offset 0).

The definition of A000316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000316.P502515888872783753

`A000459(n)*2^n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000316

/-- `A000459(n)*2^n` -/
def P502515888872783753.Spec : Prop :=
  ∀ n, P502515888872783753.a n = A000316 n

theorem P502515888872783753.correct : P502515888872783753.Spec := by
  intro n
  simp only [A000316]

end A000316

/-! ## A000316.P13461137257211580767

`A003471(2*n)`
-/

namespace A000316.P13461137257211580767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003471 (2 * n)

end

end A000316.P13461137257211580767

namespace A000316

/-- `A003471(2*n)` -/
def P13461137257211580767.Spec : Prop :=
  ∀ n, P13461137257211580767.a n = A000316 n

end A000316

/-! ## A000316.P638906668037948271

`A337302(2*n)`
-/

namespace A000316.P638906668037948271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337302 (2 * n)

end

end A000316.P638906668037948271

namespace A000316

/-- `A337302(2*n)` -/
def P638906668037948271.Spec : Prop :=
  ∀ n, P638906668037948271.a n = A000316 n

end A000316

/-! ## A000316.P988601326520032233

`A000079(n)*A059056(n²)`
-/

namespace A000316.P988601326520032233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A059056 (n ^ 2)

end

end A000316.P988601326520032233

namespace A000316

/-- `A000079(n)*A059056(n²)` -/
def P988601326520032233.Spec : Prop :=
  ∀ n, P988601326520032233.a n = A000316 n

end A000316

/-! ## A000316.P8220453963573697895

`A059057(n²)`
-/

namespace A000316.P8220453963573697895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059057 (n ^ 2)

end

end A000316.P8220453963573697895

namespace A000316

/-- `A059057(n²)` -/
def P8220453963573697895.Spec : Prop :=
  ∀ n, P8220453963573697895.a n = A000316 n

end A000316

/-!
# A000317: a(n+1) = a(n)^2 - a(n)*a(n-1) + a(n-1)^2.

The programs for A000317, the canonical program `A000317.P555975750645890865` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000317 has offset 1).

The definition of A000317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000317.P555975750645890865

`a(n-1)²-a(n-1)*a(n-2)+a(n-2)²` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000317

/-- `a(n-1)²-a(n-1)*a(n-2)+a(n-2)²` -/
def P555975750645890865.Spec : Prop :=
  ∀ n, P555975750645890865.a n = A000317 (n + 1)

theorem P555975750645890865.correct : P555975750645890865.Spec := by
  intro n
  simp only [A000317, Nat.add_sub_cancel]

end A000317

/-! ## A000317.P14109672434258045493

`(a(n-1)-a(n-2))²+a(n-1)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A000317.P14109672434258045493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - a (n - 2)) ^ 2 + a (n - 1) * a (n - 2)

end

end A000317.P14109672434258045493

namespace A000317

/-- `(a(n-1)-a(n-2))²+a(n-1)*a(n-2)` -/
def P14109672434258045493.Spec : Prop :=
  ∀ n, P14109672434258045493.a n = A000317 (n + 1)

theorem P14109672434258045493.correct : P14109672434258045493.Spec := by
  intro n
  simp only [A000317, Nat.add_sub_cancel, A000317.P14109672434258045493.a, A000317.P555975750645890865.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000317

/-! ## A000317.P17372652492692287106

`a(n-1)²-(a(n-1)-a(n-2))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A000317.P17372652492692287106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) ^ 2 - (a (n - 1) - a (n - 2)) * a (n - 2)

end

end A000317.P17372652492692287106

namespace A000317

/-- `a(n-1)²-(a(n-1)-a(n-2))*a(n-2)` -/
def P17372652492692287106.Spec : Prop :=
  ∀ n, P17372652492692287106.a n = A000317 (n + 1)

theorem P17372652492692287106.correct : P17372652492692287106.Spec := by
  intro n
  simp only [A000317, Nat.add_sub_cancel, A000317.P17372652492692287106.a, A000317.P555975750645890865.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000317

/-! ## A000317.P2472687556955227338

`a(n-1)*a(n-1)+(a(n-2)-a(n-1))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A000317.P2472687556955227338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (n - 1) + (a (n - 2) - a (n - 1)) * a (n - 2)

end

end A000317.P2472687556955227338

namespace A000317

/-- `a(n-1)*a(n-1)+(a(n-2)-a(n-1))*a(n-2)` -/
def P2472687556955227338.Spec : Prop :=
  ∀ n, P2472687556955227338.a n = A000317 (n + 1)

theorem P2472687556955227338.correct : P2472687556955227338.Spec := by
  intro n
  simp only [A000317, Nat.add_sub_cancel, A000317.P2472687556955227338.a, A000317.P555975750645890865.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000317

/-!
# A000318: Generalized tangent numbers d(4,n).

The programs for A000318, there is no canonical definition to state claims against.
-/

/-! ## A000318.P4060921817835521645

`2^(4*(n+1)-2)*A000182(n+1)`
-/

namespace A000318.P4060921817835521645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((4 * (n + 1) : ℤ) - 2 : ℤ) * (A000182 (n + 1) : ℚ)

end

end A000318.P4060921817835521645

/-! ## A000318.P2889830834034571511

`A349264(2*n+1)`
-/

namespace A000318.P2889830834034571511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349264 (2 * n + 1)

end

end A000318.P2889830834034571511

/-! ## A000318.P3659918733836426521

`A000302(n+1)*A253165(n)`
-/

namespace A000318.P3659918733836426521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (n + 1) * A253165 n

end

end A000318.P3659918733836426521

/-! ## A000318.P10482673917442656896

`A253122(Δ[n²])*A253165(n)`
-/

namespace A000318.P10482673917442656896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253122 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A253165 n

end

end A000318.P10482673917442656896

/-!
# A000320: Generalized tangent numbers d(5,n).

The programs for A000320, there is no canonical definition to state claims against.
-/

/-! ## A000320.P2735263443050641085

`A349265(Δ[n²])`
-/

namespace A000320.P2735263443050641085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349265 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A000320.P2735263443050641085

/-! ## A000320.P2415838037167291461

`A235606(∑[n+5]+6)`
-/

namespace A000320.P2415838037167291461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235606 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A000320.P2415838037167291461

/-!
# A000321: H_n(-1/2), where H_n(x) is Hermite polynomial of degree n.

The programs for A000321, the canonical program `A000321.P13617519385814076427` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000321 has offset 0).

The definition of A000321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000321.P13617519385814076427

`-(a(n-1)+2*(n-1)*a(n-2))` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000321

/-- `-(a(n-1)+2*(n-1)*a(n-2))` -/
def P13617519385814076427.Spec : Prop :=
  ∀ n, P13617519385814076427.a n = A000321 n

theorem P13617519385814076427.correct : P13617519385814076427.Spec := by
  intro n
  simp only [A000321]

end A000321

/-! ## A000321.P1646775105188493239

`(-1)^n*A293604(n)`
-/

namespace A000321.P1646775105188493239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293604 n

end

end A000321.P1646775105188493239

namespace A000321

/-- `(-1)^n*A293604(n)` -/
def P1646775105188493239.Spec : Prop :=
  ∀ n, P1646775105188493239.a n = A000321 n

end A000321

/-! ## A000321.P15284784611579495136

`A293604(n)/A033999(n)`
-/

namespace A000321.P15284784611579495136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293604 n : ℚ) / (A033999 n : ℚ)

end

end A000321.P15284784611579495136

namespace A000321

/-- `A293604(n)/A033999(n)` -/
def P15284784611579495136.Spec : Prop :=
  ∀ n, P15284784611579495136.a n = (A000321 n : ℚ)

end A000321

/-! ## A000321.P917141186983474875

`A122833(∑[n])`
-/

namespace A000321.P917141186983474875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122833 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000321.P917141186983474875

namespace A000321

/-- `A122833(∑[n])` -/
def P917141186983474875.Spec : Prop :=
  ∀ n, P917141186983474875.a n = A000321 n

end A000321

/-! ## A000321.P281138231762091180

`A293604(n)/A105794(A000217(n))`
-/

namespace A000321.P281138231762091180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293604 n : ℚ) / (A105794 (A000217 n).toNat : ℚ)

end

end A000321.P281138231762091180

namespace A000321

/-- `A293604(n)/A105794(A000217(n))` -/
def P281138231762091180.Spec : Prop :=
  ∀ n, P281138231762091180.a n = (A000321 n : ℚ)

end A000321

/-! ## A000321.P4833359235486935495

`A334561(∑[n+2]-1)`
-/

namespace A000321.P4833359235486935495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334561 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A000321.P4833359235486935495

namespace A000321

/-- `A334561(∑[n+2]-1)` -/
def P4833359235486935495.Spec : Prop :=
  ∀ n, P4833359235486935495.a n = A000321 n

end A000321

/-!
# A000322: Pentanacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) + a(n-5) with a(0) = a(1) = a(2) = a(3) = a(4) = 1.

The programs for A000322, the canonical program `A000322.P11799606258614685425` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000322 has offset 0).

The definition of A000322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A000322.P11799606258614685425`, by `A000322.P11799606258614685425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000322.P11799606258614685425

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000322

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P11799606258614685425.Spec : Prop :=
  ∀ n, (P11799606258614685425.a n : ℤ) = A000322 n

theorem P11799606258614685425.correct : P11799606258614685425.Spec := by
  intro n
  simp only [A000322]

end A000322

/-! ## A000322.P12466225936367436125

`4*A001949(n)+1`
-/

namespace A000322.P12466225936367436125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001949 n + 1

end

end A000322.P12466225936367436125

namespace A000322

/-- `4*A001949(n)+1` -/
def P12466225936367436125.Spec : Prop :=
  ∀ n, P12466225936367436125.a n = A000322 n

end A000322

/-! ## A000322.P15452633178779217631

`4*(∑[A001591(n)]-A001591(n))+1`
-/

namespace A000322.P15452633178779217631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - A001591 n) + 1

end

end A000322.P15452633178779217631

namespace A000322

/-- `4*(∑[A001591(n)]-A001591(n))+1` -/
def P15452633178779217631.Spec : Prop :=
  ∀ n, P15452633178779217631.a n = A000322 n

end A000322

/-! ## A000322.P8886157339265705704

`(A135056(n)-A135055(n))/2`
-/

namespace A000322.P8886157339265705704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135056 n - A135055 n : ℚ) / 2

end

end A000322.P8886157339265705704

namespace A000322

/-- `(A135056(n)-A135055(n))/2` -/
def P8886157339265705704.Spec : Prop :=
  ∀ n, P8886157339265705704.a n = (A000322 n : ℚ)

end A000322

/-! ## A000322.P1753875841979397013

`A145029(n+1)-A135056(n)`
-/

namespace A000322.P1753875841979397013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145029 (n + 1) - A135056 n

end

end A000322.P1753875841979397013

namespace A000322

/-- `A145029(n+1)-A135056(n)` -/
def P1753875841979397013.Spec : Prop :=
  ∀ n, P1753875841979397013.a n = A000322 n

end A000322

/-! ## A000322.P15195222282186681943

`A135493(n+1)-A023424(n)`
-/

namespace A000322.P15195222282186681943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135493 (n + 1) - A023424 n

end

end A000322.P15195222282186681943

namespace A000322

/-- `A135493(n+1)-A023424(n)` -/
def P15195222282186681943.Spec : Prop :=
  ∀ n, P15195222282186681943.a n = A000322 n

end A000322

/-! ## A000322.P12737795980330768590

`A135493(n+1)-A074048(n+1)`
-/

namespace A000322.P12737795980330768590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135493 (n + 1) - A074048 (n + 1)

end

end A000322.P12737795980330768590

namespace A000322

/-- `A135493(n+1)-A074048(n+1)` -/
def P12737795980330768590.Spec : Prop :=
  ∀ n, P12737795980330768590.a n = A000322 n

end A000322

/-! ## A000322.P5836784638297546119

`or(4*A001949(n), A048004(∑[n]))`
-/

namespace A000322.P5836784638297546119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A001949 n) (A048004 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A000322.P5836784638297546119

namespace A000322

/-- `or(4*A001949(n), A048004(∑[n]))` -/
def P5836784638297546119.Spec : Prop :=
  ∀ n, P5836784638297546119.a n = A000322 n

end A000322

/-!
# A000323: Let A(n) = #{(i,j): i^2 + j^2 <= n}, V(n) = Pi*n, P(n) = A(n) - V(n); A000099 gives values of n where |P(n)| sets a new record; sequence gives A(A000099(n)).

The programs for A000323, there is no canonical definition to state claims against.
-/

/-! ## A000323.P10439219610511470273

`A057655(A000099(n+1))`
-/

namespace A000323.P10439219610511470273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057655 (A000099 (n + 1)).toNat

end

end A000323.P10439219610511470273

/-!
# A000324: A nonlinear recurrence: a(0) = 1, a(1) = 5, a(n) = a(n-1)^2 - 4*a(n-1) + 4 for n>1.

The programs for A000324, the canonical program `A000324.P6600401866894707908` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000324 has offset 0).

The definition of A000324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-4*a(n-1)+4` (program `A000324.P6600401866894707908`, by `A000324.P6600401866894707908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000324.P6600401866894707908

`a(n-1)²-4*a(n-1)+4` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000324

/-- `a(n-1)²-4*a(n-1)+4` -/
def P6600401866894707908.Spec : Prop :=
  ∀ n, P6600401866894707908.a n = A000324 n

theorem P6600401866894707908.correct : P6600401866894707908.Spec := by
  intro n
  simp only [A000324]

end A000324

/-! ## A000324.P13773497605100384587

`(2-a(n-1))²` with `a(0)=1, a(1)=5`
-/

namespace A000324.P13773497605100384587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (2 - a (n - 1)) ^ 2

end

end A000324.P13773497605100384587

namespace A000324

/-- `(2-a(n-1))²` -/
def P13773497605100384587.Spec : Prop :=
  ∀ n, P13773497605100384587.a n = A000324 n

theorem P13773497605100384587.correct : P13773497605100384587.Spec := by
  intro n
  simp only [A000324, Nat.add_sub_cancel, A000324.P13773497605100384587.a, A000324.P6600401866894707908.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000324

/-! ## A000324.P11493435417050368747

`(2-a(n-1))^2` with `a(0)=1, a(1)=5`
-/

namespace A000324.P11493435417050368747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (2 - a (n - 1)) ^ 2

end

end A000324.P11493435417050368747

namespace A000324

/-- `(2-a(n-1))^2` -/
def P11493435417050368747.Spec : Prop :=
  ∀ n, P11493435417050368747.a n = A000324 n

theorem P11493435417050368747.correct : P11493435417050368747.Spec := by
  intro n
  simp only [A000324, Nat.add_sub_cancel, A000324.P11493435417050368747.a, A000324.P6600401866894707908.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000324

/-! ## A000324.P15605355925028995923

`(a(n-1)-4)*a(n-1)+4` with `a(0)=1, a(1)=5`
-/

namespace A000324.P15605355925028995923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (a (n - 1) - 4) * a (n - 1) + 4

end

end A000324.P15605355925028995923

namespace A000324

/-- `(a(n-1)-4)*a(n-1)+4` -/
def P15605355925028995923.Spec : Prop :=
  ∀ n, P15605355925028995923.a n = A000324 n

theorem P15605355925028995923.correct : P15605355925028995923.Spec := by
  intro n
  simp only [A000324, Nat.add_sub_cancel, A000324.P15605355925028995923.a, A000324.P6600401866894707908.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000324

/-! ## A000324.P5964123602338103240

`4-(4-a(n-1))*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A000324.P5964123602338103240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 - (4 - a (n - 1)) * a (n - 1)

end

end A000324.P5964123602338103240

namespace A000324

/-- `4-(4-a(n-1))*a(n-1)` -/
def P5964123602338103240.Spec : Prop :=
  ∀ n, P5964123602338103240.a n = A000324 n

theorem P5964123602338103240.correct : P5964123602338103240.Spec := by
  intro n
  simp only [A000324, Nat.add_sub_cancel, A000324.P5964123602338103240.a, A000324.P6600401866894707908.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000324

/-!
# A000325: a(n) = 2^n - n.

The programs for A000325, the canonical program `A000325.P17729744711211405807` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000325 has offset 0).

The definition of A000325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n` (program `A000325.P17729744711211405807`, by `A000325.P17729744711211405807.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000325.P17729744711211405807

`2^n-n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000325

/-- `2^n-n` -/
def P17729744711211405807.Spec : Prop :=
  ∀ n, P17729744711211405807.a n = A000325 n

theorem P17729744711211405807.correct : P17729744711211405807.Spec := by
  intro n
  simp only [A000325]

end A000325

/-!
# A000326: Pentagonal numbers: a(n) = n*(3*n-1)/2.

The programs for A000326, the canonical program `A000326.P15785277619453972366` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000326 has offset 0).

The definition of A000326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000326.P15785277619453972366

`C(n, 2)+n²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000326

/-- `C(n, 2)+n²` -/
def P15785277619453972366.Spec : Prop :=
  ∀ n, (P15785277619453972366.a n : ℤ) = A000326 n

theorem P15785277619453972366.correct : P15785277619453972366.Spec := by
  intro n
  simp only [A000326]

end A000326

/-! ## A000326.P11452193567591193277

`C(3*n, 2)/3`
-/

namespace A000326.P11452193567591193277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℚ) / 3

end

end A000326.P11452193567591193277

namespace A000326

/-- `C(3*n, 2)/3` -/
def P11452193567591193277.Spec : Prop :=
  ∀ n, P11452193567591193277.a n = (A000326 n : ℚ)

end A000326

/-! ## A000326.P3816959874637172477

`n*(3*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000326.P3816959874637172477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((3 * n : ℤ) - 1) : ℚ) / 2

end

end A000326.P3816959874637172477

namespace A000326

/-- `n*(3*n-1)/2` -/
def P3816959874637172477.Spec : Prop :=
  ∀ n, P3816959874637172477.a n = (A000326 n : ℚ)

end A000326

/-! ## A000326.P8465219589256551979

`a(n-1)+3*n-2` with `a(0)=0`
-/

namespace A000326.P8465219589256551979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (3 * n : ℤ) - 2

end

end A000326.P8465219589256551979

namespace A000326

/-- `a(n-1)+3*n-2` -/
def P8465219589256551979.Spec : Prop :=
  ∀ n, P8465219589256551979.a n = A000326 n

end A000326

/-! ## A000326.P15500271494738416709

`A005449(n)-n`
-/

namespace A000326.P15500271494738416709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - (n : ℤ)

end

end A000326.P15500271494738416709

namespace A000326

/-- `A005449(n)-n` -/
def P15500271494738416709.Spec : Prop :=
  ∀ n, P15500271494738416709.a n = A000326 n

end A000326

/-! ## A000326.P16155143415483666949

`3*A000217(n)-2*n`
-/

namespace A000326.P16155143415483666949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000217 n - (2 * n : ℤ)

end

end A000326.P16155143415483666949

namespace A000326

/-- `3*A000217(n)-2*n` -/
def P16155143415483666949.Spec : Prop :=
  ∀ n, P16155143415483666949.a n = A000326 n

end A000326

/-! ## A000326.P12550198991236140989

`A142150(n)+A191967(n)`
-/

namespace A000326.P12550198991236140989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A191967 n

end

end A000326.P12550198991236140989

namespace A000326

/-- `A142150(n)+A191967(n)` -/
def P12550198991236140989.Spec : Prop :=
  ∀ n, P12550198991236140989.a n = A000326 n

end A000326

/-! ## A000326.P14534173020831541023

`A033991(n)-A005476(n)`
-/

namespace A000326.P14534173020831541023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n - A005476 n

end

end A000326.P14534173020831541023

namespace A000326

/-- `A033991(n)-A005476(n)` -/
def P14534173020831541023.Spec : Prop :=
  ∀ n, P14534173020831541023.a n = A000326 n

end A000326

/-! ## A000326.P6446847247876424674

`A049452(n)-A022266(n)`
-/

namespace A000326.P6446847247876424674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n - A022266 n

end

end A000326.P6446847247876424674

namespace A000326

/-- `A049452(n)-A022266(n)` -/
def P6446847247876424674.Spec : Prop :=
  ∀ n, P6446847247876424674.a n = A000326 n

end A000326

/-! ## A000326.P5278195235585676568

`3*C(n, 2)+n`
-/

namespace A000326.P5278195235585676568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2 + n

end

end A000326.P5278195235585676568

namespace A000326

/-- `3*C(n, 2)+n` -/
def P5278195235585676568.Spec : Prop :=
  ∀ n, (P5278195235585676568.a n : ℤ) = A000326 n

end A000326

/-! ## A000326.P11681410378978514169

`∑[record[lcm(2, n)]-n]`
-/

namespace A000326.P11681410378978514169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000326.P11681410378978514169

namespace A000326

/-- `∑[record[lcm(2, n)]-n]` -/
def P11681410378978514169.Spec : Prop :=
  ∀ n, P11681410378978514169.a n = A000326 n

end A000326

/-! ## A000326.P17326915106810516974

`∑[comp[gcd(3, n)+n]]`
-/

namespace A000326.P17326915106810516974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000326.P17326915106810516974

namespace A000326

/-- `∑[comp[gcd(3, n)+n]]` -/
def P17326915106810516974.Spec : Prop :=
  ∀ n, (P17326915106810516974.a n : ℤ) = A000326 n

end A000326

/-! ## A000326.P9700296573322873316

`Δ[(n-1)*C(n, 2)]`
-/

namespace A000326.P9700296573322873316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000326.P9700296573322873316

namespace A000326

/-- `Δ[(n-1)*C(n, 2)]` -/
def P9700296573322873316.Spec : Prop :=
  ∀ n, P9700296573322873316.a n = A000326 n

end A000326

/-! ## A000326.P15777806001365903767

`∑[eq[n, n*n%3]]`
-/

namespace A000326.P15777806001365903767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000326.P15777806001365903767

namespace A000326

/-- `∑[eq[n, n*n%3]]` -/
def P15777806001365903767.Spec : Prop :=
  ∀ n, (P15777806001365903767.a n : ℤ) = A000326 n

end A000326

/-! ## A000326.P7975530806609725594

`∑[record[n-dr(3*n)]]`
-/

namespace A000326.P7975530806609725594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (3 * n : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000326.P7975530806609725594

namespace A000326

/-- `∑[record[n-dr(3*n)]]` -/
def P7975530806609725594.Spec : Prop :=
  ∀ n, P7975530806609725594.a n = A000326 n

end A000326

/-! ## A000326.P1128037567931384893

`∑[a(n-1)+3]` with `a(0)=0, a(1)=1`
-/

namespace A000326.P1128037567931384893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000326.P1128037567931384893

namespace A000326

/-- `∑[a(n-1)+3]` -/
def P1128037567931384893.Spec : Prop :=
  ∀ n, (P1128037567931384893.a n : ℤ) = A000326 n

end A000326

/-! ## A000326.P2849001729421539677

`A245288(2*n)`
-/

namespace A000326.P2849001729421539677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (2 * n)

end

end A000326.P2849001729421539677

namespace A000326

/-- `A245288(2*n)` -/
def P2849001729421539677.Spec : Prop :=
  ∀ n, P2849001729421539677.a n = A000326 n

end A000326

/-!
# A000327: Number of partitions into non-integral powers.

The programs for A000327, there is no canonical definition to state claims against.
-/

/-! ## A000327.P841011840203134974

`A000148(n+3)-floor(((n+3)/2)^(3/2))`
-/

namespace A000327.P841011840203134974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000148 (n + 3) - ⌊((n + 3 : ℚ) / 2 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋

end

end A000327.P841011840203134974

/-! ## A000327.P7325077232466623026

`record[A259449(floor(ϕ*(n+1)))]`
-/

namespace A000327.P7325077232466623026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259449 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000327.P7325077232466623026

/-! ## A000327.P6032594179009324396

`A003056((3*∑[C(n, 2)+1]-2)*(∑[n+2]-1))`
-/

namespace A000327.P6032594179009324396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 2) * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)).toNat

end

end A000327.P6032594179009324396

/-! ## A000327.P11082234845920252615

`A103128(A050404(n))`
-/

namespace A000327.P11082234845920252615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A050404 n).toNat

end

end A000327.P11082234845920252615

/-!
# A000328: Number of points of norm <= n^2 in square lattice.

The programs for A000328, the canonical program `A000328.P3563522184609365216` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000328 has offset 0).

The definition of A000328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000328.P1490758283389097709

`4*A000603(n)-(4*n+3)`
-/

namespace A000328.P1490758283389097709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000603 n - (4 * n + 3 : ℤ)

end

end A000328.P1490758283389097709

namespace A000328

/-- `4*A000603(n)-(4*n+3)` -/
def P1490758283389097709.Spec : Prop :=
  ∀ n, P1490758283389097709.a n = A000328 n

end A000328

/-! ## A000328.P3563522184609365216

`A057655(n²)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A000328

/-- `A057655(n²)` -/
def P3563522184609365216.Spec : Prop :=
  ∀ n, P3563522184609365216.a n = A000328 n

theorem P3563522184609365216.correct : P3563522184609365216.Spec := by
  intro n
  simp only [A000328]

end A000328

/-! ## A000328.P11243792509890249407

`∑[A036693(n)]`
-/

namespace A000328.P11243792509890249407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000328.P11243792509890249407

namespace A000328

/-- `∑[A036693(n)]` -/
def P11243792509890249407.Spec : Prop :=
  ∀ n, P11243792509890249407.a n = A000328 n

end A000328

/-! ## A000328.P13176283581776735049

`4*A036698(n)+1`
-/

namespace A000328.P13176283581776735049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036698 n + 1

end

end A000328.P13176283581776735049

namespace A000328

/-- `4*A036698(n)+1` -/
def P13176283581776735049.Spec : Prop :=
  ∀ n, P13176283581776735049.a n = A000328 n

end A000328

/-! ## A000328.P16713174569809619413

`∑[4*A036694(n)]+1`
-/

namespace A000328.P16713174569809619413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000328.P16713174569809619413

namespace A000328

/-- `∑[4*A036694(n)]+1` -/
def P16713174569809619413.Spec : Prop :=
  ∀ n, P16713174569809619413.a n = A000328 n

end A000328

/-! ## A000328.P6729576985211399237

`∑[2*(A036696(n)-1)]+1`
-/

namespace A000328.P6729576985211399237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036696 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000328.P6729576985211399237

namespace A000328

/-- `∑[2*(A036696(n)-1)]+1` -/
def P6729576985211399237.Spec : Prop :=
  ∀ n, P6729576985211399237.a n = A000328 n

end A000328

/-! ## A000328.P12585564215131599588

`A119677(n)+A016813(n)`
-/

namespace A000328.P12585564215131599588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119677 n + A016813 n

end

end A000328.P12585564215131599588

namespace A000328

/-- `A119677(n)+A016813(n)` -/
def P12585564215131599588.Spec : Prop :=
  ∀ n, P12585564215131599588.a n = A000328 n

end A000328

/-! ## A000328.P6512824756957577012

`A049744(n)-A333167(n)`
-/

namespace A000328.P6512824756957577012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049744 n - A333167 n

end

end A000328.P6512824756957577012

namespace A000328

/-- `A049744(n)-A333167(n)` -/
def P6512824756957577012.Spec : Prop :=
  ∀ n, P6512824756957577012.a n = A000328 n

end A000328

/-! ## A000328.P905346339660746744

`4*(A036695(n)-A000603(n))+1`
-/

namespace A000328.P905346339660746744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A036695 n - A000603 n) + 1

end

end A000328.P905346339660746744

namespace A000328

/-- `4*(A036695(n)-A000603(n))+1` -/
def P905346339660746744.Spec : Prop :=
  ∀ n, P905346339660746744.a n = A000328 n

end A000328

/-! ## A000328.P5009914898717883874

`∑[A008574(A036694(n))]`
-/

namespace A000328.P5009914898717883874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A036694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000328.P5009914898717883874

namespace A000328

/-- `∑[A008574(A036694(n))]` -/
def P5009914898717883874.Spec : Prop :=
  ∀ n, P5009914898717883874.a n = A000328 n

end A000328

/-! ## A000328.P4682286480108770444

`A053411(2*n)`
-/

namespace A000328.P4682286480108770444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n)

end

end A000328.P4682286480108770444

namespace A000328

/-- `A053411(2*n)` -/
def P4682286480108770444.Spec : Prop :=
  ∀ n, P4682286480108770444.a n = A000328 n

end A000328

/-! ## A000328.P8498330605943479014

`∑[A005843(A036696(n)-1)]+1`
-/

namespace A000328.P8498330605943479014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A036696 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A000328.P8498330605943479014

namespace A000328

/-- `∑[A005843(A036696(n)-1)]+1` -/
def P8498330605943479014.Spec : Prop :=
  ∀ n, P8498330605943479014.a n = A000328 n

end A000328

/-! ## A000328.P11268398226499216875

`A051132(n)+A046109(n)`
-/

namespace A000328.P11268398226499216875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n + A046109 n

end

end A000328.P11268398226499216875

namespace A000328

/-- `A051132(n)+A046109(n)` -/
def P11268398226499216875.Spec : Prop :=
  ∀ n, P11268398226499216875.a n = A000328 n

end A000328

/-! ## A000328.P17810861709324352700

`A051132(n+1)-(A232705(2*n+1)+A232705(2*(n+1)))`
-/

namespace A000328.P17810861709324352700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - (A232705 (2 * n + 1) + A232705 (2 * (n + 1)))

end

end A000328.P17810861709324352700

namespace A000328

/-- `A051132(n+1)-(A232705(2*n+1)+A232705(2*(n+1)))` -/
def P17810861709324352700.Spec : Prop :=
  ∀ n, P17810861709324352700.a n = A000328 n

end A000328

/-! ## A000328.P8409479838290427446

`A053456(2*n)+A046109(n)`
-/

namespace A000328.P8409479838290427446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (2 * n) + A046109 n

end

end A000328.P8409479838290427446

namespace A000328

/-- `A053456(2*n)+A046109(n)` -/
def P8409479838290427446.Spec : Prop :=
  ∀ n, P8409479838290427446.a n = A000328 n

end A000328

/-! ## A000328.P1173367096691074948

`A051132(n+1)-A077770(n)`
-/

namespace A000328.P1173367096691074948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - A077770 n

end

end A000328.P1173367096691074948

namespace A000328

/-- `A051132(n+1)-A077770(n)` -/
def P1173367096691074948.Spec : Prop :=
  ∀ n, P1173367096691074948.a n = A000328 n

end A000328

/-! ## A000328.P13816330145273692543

`A333572(A004277(n))+1`
-/

namespace A000328.P13816330145273692543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333572 (A004277 n).toNat + 1

end

end A000328.P13816330145273692543

namespace A000328

/-- `A333572(A004277(n))+1` -/
def P13816330145273692543.Spec : Prop :=
  ∀ n, P13816330145273692543.a n = A000328 n

end A000328

/-! ## A000328.P16745911886966081125

`A333572(A028310(2*n))+1`
-/

namespace A000328.P16745911886966081125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333572 (A028310 (2 * n)).toNat + 1

end

end A000328.P16745911886966081125

namespace A000328

/-- `A333572(A028310(2*n))+1` -/
def P16745911886966081125.Spec : Prop :=
  ∀ n, P16745911886966081125.a n = A000328 n

end A000328

/-! ## A000328.P2152902528524867879

`A057961(A047808(n))`
-/

namespace A000328.P2152902528524867879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057961 (A047808 n).toNat

end

end A000328.P2152902528524867879

namespace A000328

/-- `A057961(A047808(n))` -/
def P2152902528524867879.Spec : Prop :=
  ∀ n, P2152902528524867879.a n = A000328 n

end A000328

/-!
# A000329: Nearest integer to b(n), where b(n) = tan(b(n-1)), b(0) = 1.

The programs for A000329, there is no canonical definition to state claims against.
-/

/-! ## A000329.P1501011338033614092

`A022932(A282464(n))+A000319(n)`
-/

namespace A000329.P1501011338033614092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022932 (A282464 n).toNat + A000319 n

end

end A000329.P1501011338033614092

/-! ## A000329.P4409065178072866331

`A354896(A075929(n))+A000319(n)`
-/

namespace A000329.P4409065178072866331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354896 (A075929 n).toNat + A000319 n

end

end A000329.P4409065178072866331

/-! ## A000329.P8301415466919269707

`A006822(A153198(3*n))+A000319(n)`
-/

namespace A000329.P8301415466919269707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006822 (A153198 (3 * n)).toNat + A000319 n

end

end A000329.P8301415466919269707

/-!
# A000330: Square pyramidal numbers: a(n) = 0^2 + 1^2 + 2^2 + ... + n^2 = n*(n+1)*(2*n+1)/6.

The programs for A000330, the canonical program `A000330.P6574240937923917945` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000330 has offset 0).

The definition of A000330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(2*n+1)/6` (program `A000330.P8501875878107717583`, by `A000330.P8501875878107717583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000330.P6574240937923917945

`a(n-1)+n²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000330

/-- `a(n-1)+n²` -/
def P6574240937923917945.Spec : Prop :=
  ∀ n, (P6574240937923917945.a n : ℤ) = A000330 n

theorem P6574240937923917945.correct : P6574240937923917945.Spec := by
  intro n
  simp only [A000330]

end A000330

/-! ## A000330.P3749277426939812355

`C(n+2, 3)+C(n+1, 3)`
-/

namespace A000330.P3749277426939812355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + Nat.choose (n + 1) 3

end

end A000330.P3749277426939812355

namespace A000330

/-- `C(n+2, 3)+C(n+1, 3)` -/
def P3749277426939812355.Spec : Prop :=
  ∀ n, (P3749277426939812355.a n : ℤ) = A000330 n

end A000330

/-! ## A000330.P8501875878107717583

`n*(n+1)*(2*n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000330.P8501875878107717583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (2 * n + 1) : ℚ) / 6

end

end A000330.P8501875878107717583

namespace A000330

/-- `n*(n+1)*(2*n+1)/6` -/
def P8501875878107717583.Spec : Prop :=
  ∀ n, P8501875878107717583.a n = (A000330 n : ℚ)

theorem P8501875878107717583.correct : P8501875878107717583.Spec := by
  intro n
  induction n with
  | zero => simp [A000330, A000330.P8501875878107717583.a, A000330.P6574240937923917945.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A000330, Nat.add_sub_cancel, A000330.P8501875878107717583.a, A000330.P6574240937923917945.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A000330

/-! ## A000330.P2852069383374101900

`2*n-1-a(n-2)+2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A000330.P2852069383374101900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℤ) - 1 - a (n - 2) + 2 * a (n - 1)

end

end A000330.P2852069383374101900

namespace A000330

/-- `2*n-1-a(n-2)+2*a(n-1)` -/
def P2852069383374101900.Spec : Prop :=
  ∀ n, P2852069383374101900.a n = A000330 n

end A000330

/-! ## A000330.P8138678667062455856

`sqrt(A271535(n))`
-/

namespace A000330.P8138678667062455856
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A271535 n : ℝ)

end

end A000330.P8138678667062455856

namespace A000330

/-- `sqrt(A271535(n))` -/
def P8138678667062455856.Spec : Prop :=
  ∀ n, P8138678667062455856.a n = (A000330 n : ℝ)

end A000330

/-! ## A000330.P12516706477269884196

`A000578(n+1)-A002412(n+1)`
-/

namespace A000330.P12516706477269884196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - A002412 (n + 1)

end

end A000330.P12516706477269884196

namespace A000330

/-- `A000578(n+1)-A002412(n+1)` -/
def P12516706477269884196.Spec : Prop :=
  ∀ n, P12516706477269884196.a n = A000330 n

end A000330

/-! ## A000330.P2909083857222977757

`A000217(n)+A007290(n+1)`
-/

namespace A000330.P2909083857222977757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A007290 (n + 1)

end

end A000330.P2909083857222977757

namespace A000330

/-- `A000217(n)+A007290(n+1)` -/
def P2909083857222977757.Spec : Prop :=
  ∀ n, P2909083857222977757.a n = A000330 n

end A000330

/-! ## A000330.P7751043354979021084

`A000332(n+3)-A000332(n+1)`
-/

namespace A000330.P7751043354979021084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 3) - A000332 (n + 1)

end

end A000330.P7751043354979021084

namespace A000330

/-- `A000332(n+3)-A000332(n+1)` -/
def P7751043354979021084.Spec : Prop :=
  ∀ n, P7751043354979021084.a n = A000330 n

end A000330

/-! ## A000330.P2455981384068777411

`∑[lcm(n, n*n)]`
-/

namespace A000330.P2455981384068777411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000330.P2455981384068777411

namespace A000330

/-- `∑[lcm(n, n*n)]` -/
def P2455981384068777411.Spec : Prop :=
  ∀ n, (P2455981384068777411.a n : ℤ) = A000330 n

end A000330

/-! ## A000330.P6728339942827369400

`Δ[C(n², 2)/6]`
-/

namespace A000330.P6728339942827369400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000330.P6728339942827369400

namespace A000330

/-- `Δ[C(n², 2)/6]` -/
def P6728339942827369400.Spec : Prop :=
  ∀ n, P6728339942827369400.a n = (A000330 n : ℚ)

end A000330

/-! ## A000330.P3171753265652730983

`∑[gcd(n², n^10)]`
-/

namespace A000330.P3171753265652730983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (n ^ 10)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000330.P3171753265652730983

namespace A000330

/-- `∑[gcd(n², n^10)]` -/
def P3171753265652730983.Spec : Prop :=
  ∀ n, (P3171753265652730983.a n : ℤ) = A000330 n

end A000330

/-! ## A000330.P9578168007094753642

`∑[C(n, 2)]+∑[∑[n]]`
-/

namespace A000330.P9578168007094753642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A000330.P9578168007094753642

namespace A000330

/-- `∑[C(n, 2)]+∑[∑[n]]` -/
def P9578168007094753642.Spec : Prop :=
  ∀ n, (P9578168007094753642.a n : ℤ) = A000330 n

end A000330

/-! ## A000330.P3630069201797300756

`∑[n^ceil(atan(n))]-1`
-/

namespace A000330.P3630069201797300756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A000330.P3630069201797300756

namespace A000330

/-- `∑[n^ceil(atan(n))]-1` -/
def P3630069201797300756.Spec : Prop :=
  ∀ n, P3630069201797300756.a n = (A000330 n : ℚ)

end A000330

/-! ## A000330.P2894737888501003888

`∑[ceil(n/acot(n))]-n`
-/

namespace A000330.P2894737888501003888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A000330.P2894737888501003888

namespace A000330

/-- `∑[ceil(n/acot(n))]-n` -/
def P2894737888501003888.Spec : Prop :=
  ∀ n, P2894737888501003888.a n = A000330 n

end A000330

/-! ## A000330.P16135265729369055289

`∑[n²%((n+1)^10)]`
-/

namespace A000330.P16135265729369055289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (n + 1) ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000330.P16135265729369055289

namespace A000330

/-- `∑[n²%((n+1)^10)]` -/
def P16135265729369055289.Spec : Prop :=
  ∀ n, (P16135265729369055289.a n : ℤ) = A000330 n

end A000330

/-! ## A000330.P5573920398049537470

`n*∑[n]-∑[C(n, 2)]`
-/

namespace A000330.P5573920398049537470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A000330.P5573920398049537470

namespace A000330

/-- `n*∑[n]-∑[C(n, 2)]` -/
def P5573920398049537470.Spec : Prop :=
  ∀ n, P5573920398049537470.a n = A000330 n

end A000330

/-! ## A000330.P18152405728377709597

`n+a(n-1)+(n-1)*n` with `a(0)=0`
-/

namespace A000330.P18152405728377709597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) + a (n - 1) + ((n : ℤ) - 1) * (n : ℤ)

end

end A000330.P18152405728377709597

namespace A000330

/-- `n+a(n-1)+(n-1)*n` -/
def P18152405728377709597.Spec : Prop :=
  ∀ n, P18152405728377709597.a n = A000330 n

end A000330

/-!
# A000331: Related to zeros of Bessel function.

The programs for A000331, there is no canonical definition to state claims against.
-/

/-! ## A000331.P4392650134759998924

`record[A158616(record[A225660(3*n+1)])]`
-/

namespace A000331.P4392650134759998924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225660 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158616 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000331.P4392650134759998924

/-!
# A000332: Binomial coefficient binomial(n,4) = n*(n-1)*(n-2)*(n-3)/24.

The programs for A000332, the canonical program `A000332.P5946310388023661265` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000332 has offset 0).

The definition of A000332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 4)` (program `A000332.P5946310388023661265`, by `A000332.P5946310388023661265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000332.P5946310388023661265

`C(n, 4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000332

/-- `C(n, 4)` -/
def P5946310388023661265.Spec : Prop :=
  ∀ n, (P5946310388023661265.a n : ℤ) = A000332 n

theorem P5946310388023661265.correct : P5946310388023661265.Spec := by
  intro n
  simp only [A000332]

end A000332

/-! ## A000332.P15235428580634754790

`n*a(n-1)/(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A000332.P15235428580634754790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  (n : ℚ) * a (n - 1) / ((n : ℤ) - 4 : ℚ)

end

end A000332.P15235428580634754790

namespace A000332

/-- `n*a(n-1)/(n-4)` -/
def P15235428580634754790.Spec : Prop :=
  ∀ n, P15235428580634754790.a n = (A000332 n : ℚ)

end A000332

/-! ## A000332.P3449767539218394029

`n*(n-1)*(n-2)*(n-3)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000332.P3449767539218394029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n : ℤ) - 3) : ℚ) / 24

end

end A000332.P3449767539218394029

namespace A000332

/-- `n*(n-1)*(n-2)*(n-3)/24` -/
def P3449767539218394029.Spec : Prop :=
  ∀ n, P3449767539218394029.a n = (A000332 n : ℚ)

end A000332

/-! ## A000332.P10109532709053435560

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A000332.P10109532709053435560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A000332.P10109532709053435560

namespace A000332

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10109532709053435560.Spec : Prop :=
  ∀ n, P10109532709053435560.a n = A000332 n

end A000332

/-! ## A000332.P14385137738010639205

`A006008(n)-(A006008(n)+A006003(n))/2`
-/

namespace A000332.P14385137738010639205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006008 n : ℚ) - (A006008 n + A006003 n : ℚ) / 2

end

end A000332.P14385137738010639205

namespace A000332

/-- `A006008(n)-(A006008(n)+A006003(n))/2` -/
def P14385137738010639205.Spec : Prop :=
  ∀ n, P14385137738010639205.a n = (A000332 n : ℚ)

end A000332

/-! ## A000332.P15705092981219335408

`∑[∑[∑[a(n-1)+1]]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A000332.P15705092981219335408
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000332.P15705092981219335408

namespace A000332

/-- `∑[∑[∑[a(n-1)+1]]]` -/
def P15705092981219335408.Spec : Prop :=
  ∀ n, (P15705092981219335408.a n : ℤ) = A000332 n

end A000332

/-! ## A000332.P9819859230527381998

`∑[∑[a(n-1)-(3-n)]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A000332.P9819859230527381998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 1) - (3 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000332.P9819859230527381998

namespace A000332

/-- `∑[∑[a(n-1)-(3-n)]]` -/
def P9819859230527381998.Spec : Prop :=
  ∀ n, P9819859230527381998.a n = A000332 n

end A000332

/-! ## A000332.P17732713883375835978

`A014626(n)-n`
-/

namespace A000332.P17732713883375835978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014626 n - (n : ℤ)

end

end A000332.P17732713883375835978

namespace A000332

/-- `A014626(n)-n` -/
def P17732713883375835978.Spec : Prop :=
  ∀ n, P17732713883375835978.a n = A000332 n

end A000332

/-! ## A000332.P10816534542332259436

`∑{d}[n, A346761(#)]`
-/

namespace A000332.P10816534542332259436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346761 d

end

end A000332.P10816534542332259436

namespace A000332

/-- `∑{d}[n, A346761(#)]` -/
def P10816534542332259436.Spec : Prop :=
  ∀ n, P10816534542332259436.a n = A000332 n

end A000332

/-! ## A000332.P14427040243774236616

`∑[A050407(n)]-n`
-/

namespace A000332.P14427040243774236616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A000332.P14427040243774236616

namespace A000332

/-- `∑[A050407(n)]-n` -/
def P14427040243774236616.Spec : Prop :=
  ∀ n, P14427040243774236616.a n = A000332 n

end A000332

/-! ## A000332.P8427496616401960114

`A011930(n)-A011795(n)`
-/

namespace A000332.P8427496616401960114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011930 n - A011795 n

end

end A000332.P8427496616401960114

namespace A000332

/-- `A011930(n)-A011795(n)` -/
def P8427496616401960114.Spec : Prop :=
  ∀ n, P8427496616401960114.a n = A000332 n

end A000332

/-! ## A000332.P6906314107312115508

`A008911(n)-A086602(n)`
-/

namespace A000332.P6906314107312115508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n - A086602 n

end

end A000332.P6906314107312115508

namespace A000332

/-- `A008911(n)-A086602(n)` -/
def P6906314107312115508.Spec : Prop :=
  ∀ n, P6906314107312115508.a n = A000332 n

end A000332

/-! ## A000332.P4949300971343506855

`A058923(n)-A080956(n)`
-/

namespace A000332.P4949300971343506855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058923 n - A080956 n

end

end A000332.P4949300971343506855

namespace A000332

/-- `A058923(n)-A080956(n)` -/
def P4949300971343506855.Spec : Prop :=
  ∀ n, P4949300971343506855.a n = A000332 n

end A000332

/-! ## A000332.P4930795855543926050

`A008498(n)-A132366(n)`
-/

namespace A000332.P4930795855543926050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n - A132366 n

end

end A000332.P4930795855543926050

namespace A000332

/-- `A008498(n)-A132366(n)` -/
def P4930795855543926050.Spec : Prop :=
  ∀ n, P4930795855543926050.a n = A000332 n

end A000332

/-! ## A000332.P15240951552716274795

`A050534(n)-A117662(n)`
-/

namespace A000332.P15240951552716274795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n - A117662 n

end

end A000332.P15240951552716274795

namespace A000332

/-- `A050534(n)-A117662(n)` -/
def P15240951552716274795.Spec : Prop :=
  ∀ n, P15240951552716274795.a n = A000332 n

end A000332

/-! ## A000332.P1448553555249469549

`A103290(n)-A090809(n)`
-/

namespace A000332.P1448553555249469549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n - A090809 n

end

end A000332.P1448553555249469549

namespace A000332

/-- `A103290(n)-A090809(n)` -/
def P1448553555249469549.Spec : Prop :=
  ∀ n, P1448553555249469549.a n = A000332 n

end A000332

/-! ## A000332.P17392038764471140609

`A037270(n)-A179095(n)`
-/

namespace A000332.P17392038764471140609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037270 n - A179095 n

end

end A000332.P17392038764471140609

namespace A000332

/-- `A037270(n)-A179095(n)` -/
def P17392038764471140609.Spec : Prop :=
  ∀ n, P17392038764471140609.a n = A000332 n

end A000332

/-!
# A000333: Number of partitions into non-integral powers.

The programs for A000333, there is no canonical definition to state claims against.
-/

/-! ## A000333.P2772889933843582929

`∑[A319618(2*n)]+n`
-/

namespace A000333.P2772889933843582929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319618 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A000333.P2772889933843582929

/-! ## A000333.P5288638811378509748

`floor(sqrt(A278291(6^n+n^3+n)))`
-/

namespace A000333.P5288638811378509748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A278291 (6 ^ n + (n ^ 3 + n)))

end

end A000333.P5288638811378509748

/-!
# A000334: Number of 4-dimensional partitions of n.

The programs for A000334, there is no canonical definition to state claims against.
-/

/-! ## A000334.P1495852154604692435

`A000335(n+1)-A007327(n+1)`
-/

namespace A000334.P1495852154604692435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000335 (n + 1) - A007327 (n + 1)

end

end A000334.P1495852154604692435

/-! ## A000334.P12781758197891473065

`A293551(A052905(n+3))-A007327(n+1)`
-/

namespace A000334.P12781758197891473065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (n + 3)).toNat - A007327 (n + 1)

end

end A000334.P12781758197891473065

/-! ## A000334.P2250379353597726451

`A293551(eq[8, A185782(n+1)])-A007327(n+1)`
-/

namespace A000334.P2250379353597726451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A007327 (n + 1)

end

end A000334.P2250379353597726451

/-! ## A000334.P14052887589920609578

`A293551(Δ[A023551(n+1)]+1)-A007327(n+1)`
-/

namespace A000334.P14052887589920609578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (f1 (n + 1) - f1 n + 1).toNat - A007327 (n + 1)

end

end A000334.P14052887589920609578

/-! ## A000334.P16328365767582176099

`A096751(A052905(n+3))`
-/

namespace A000334.P16328365767582176099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 (A052905 (n + 3)).toNat

end

end A000334.P16328365767582176099

/-!
# A000335: Euler transform of A000292.

The programs for A000335, there is no canonical definition to state claims against.
-/

/-! ## A000335.P7833406334613527511

`A293551(A052905(n+3))`
-/

namespace A000335.P7833406334613527511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (n + 3)).toNat

end

end A000335.P7833406334613527511

/-! ## A000335.P1333453348293775030

`A293551(Δ[A023551(n+1)]+1)`
-/

namespace A000335.P1333453348293775030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (f1 (n + 1) - f1 n + 1).toNat

end

end A000335.P1333453348293775030

/-! ## A000335.P13345755636170969544

`record[A293551(A052905(A002262(n)))]`
-/

namespace A000335.P13345755636170969544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000335.P13345755636170969544

/-! ## A000335.P1696118920424695558

`record[A293551(A052905(A008611(n)))]`
-/

namespace A000335.P1696118920424695558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000335.P1696118920424695558

/-! ## A000335.P14103197414112984401

`record[A293551(A052905(A008615(n)))]`
-/

namespace A000335.P14103197414112984401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000335.P14103197414112984401

/-! ## A000335.P586829248544110937

`record[A293551(A052905(A008616(n)))]`
-/

namespace A000335.P586829248544110937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (A008616 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000335.P586829248544110937

/-! ## A000335.P7073571317745389452

`record[A293551(A052905(A008624(n)))]`
-/

namespace A000335.P7073571317745389452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000335.P7073571317745389452

/-! ## A000335.P2861214577560877136

`record[A293551(A052905(A028242(n)))]`
-/

namespace A000335.P2861214577560877136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A052905 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000335.P2861214577560877136

/-!
# A000336: a(n) = a(n-1)*a(n-2)*a(n-3)*a(n-4); for n < 5, a(n) = n.

The programs for A000336, the canonical program `A000336.P12445536847669117190` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000336 has offset 1).

The definition of A000336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)*a(n-4)` (program `A000336.P12445536847669117190`, by `A000336.P12445536847669117190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000336.P17973875989266609103

`a(n-1)²/a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=24`
-/

namespace A000336.P17973875989266609103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 3, 4, 24] fun n a =>
  a (n - 1) ^ 2 / a (n - 5)

end

end A000336.P17973875989266609103

namespace A000336

/-- `a(n-1)²/a(n-5)` -/
def P17973875989266609103.Spec : Prop :=
  ∀ n, P17973875989266609103.a n = (A000336 (n + 1) : ℚ)

end A000336

/-! ## A000336.P12445536847669117190

`a(n-1)*a(n-2)*a(n-3)*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000336

/-- `a(n-1)*a(n-2)*a(n-3)*a(n-4)` -/
def P12445536847669117190.Spec : Prop :=
  ∀ n, (P12445536847669117190.a n : ℤ) = A000336 (n + 1)

theorem P12445536847669117190.correct : P12445536847669117190.Spec := by
  intro n
  simp only [A000336, Nat.add_sub_cancel]

end A000336

/-! ## A000336.P3953005952393117591

`2^A251656(n+1)*3^A001631(n)`
-/

namespace A000336.P3953005952393117591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A251656 (n + 1) : ℤ) * (3 : ℚ) ^ (A001631 n : ℤ)

end

end A000336.P3953005952393117591

namespace A000336

/-- `2^A251656(n+1)*3^A001631(n)` -/
def P3953005952393117591.Spec : Prop :=
  ∀ n, P3953005952393117591.a n = (A000336 (n + 1) : ℚ)

end A000336

/-!
# A000337: a(n) = (n-1)*2^n + 1.

The programs for A000337, the canonical program `A000337.P10298485350018343423` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000337 has offset 0).

The definition of A000337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*2^n+1` (program `A000337.P10298485350018343423`, by `A000337.P10298485350018343423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000337.P1810679823216073303

`1+(n-1)*2^n`
-/

namespace A000337.P1810679823216073303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) - 1) * (2 ^ n : ℤ)

end

end A000337.P1810679823216073303

namespace A000337

/-- `1+(n-1)*2^n` -/
def P1810679823216073303.Spec : Prop :=
  ∀ n, P1810679823216073303.a n = A000337 n

theorem P1810679823216073303.correct : P1810679823216073303.Spec := by
  intro n
  simp only [A000337, Nat.add_sub_cancel, A000337.P1810679823216073303.a, A000337.P10298485350018343423.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000337

/-! ## A000337.P10298485350018343423

`(n-1)*2^n+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000337

/-- `(n-1)*2^n+1` -/
def P10298485350018343423.Spec : Prop :=
  ∀ n, P10298485350018343423.a n = A000337 n

theorem P10298485350018343423.correct : P10298485350018343423.Spec := by
  intro n
  simp only [A000337]

end A000337

/-! ## A000337.P12960232673595870802

`∑[ogf(x/(1-4x+4x^2))]`
-/

namespace A000337.P12960232673595870802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P12960232673595870802

namespace A000337

/-- `∑[ogf(x/(1-4x+4x^2))]` -/
def P12960232673595870802.Spec : Prop :=
  ∀ n, P12960232673595870802.a n = A000337 n

end A000337

/-! ## A000337.P10174292044997704237

`ogf(x/(1-5x+8x^2-4x^3))`
-/

namespace A000337.P10174292044997704237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 8, -4] n

end

end A000337.P10174292044997704237

namespace A000337

/-- `ogf(x/(1-5x+8x^2-4x^3))` -/
def P10174292044997704237.Spec : Prop :=
  ∀ n, P10174292044997704237.a n = A000337 n

end A000337

/-! ## A000337.P13977101503363826748

`xor(1, abs((n-1)*2^n))`
-/

namespace A000337.P13977101503363826748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |((n : ℤ) - 1) * (2 ^ n : ℤ)|

end

end A000337.P13977101503363826748

namespace A000337

/-- `xor(1, abs((n-1)*2^n))` -/
def P13977101503363826748.Spec : Prop :=
  ∀ n, P13977101503363826748.a n = A000337 n

end A000337

/-! ## A000337.P3455989662506881843

`∑[2*n*a(n-1)/(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A000337.P3455989662506881843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (2 * n : ℚ) * (f1 (n - 1) / ((n : ℤ) - 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P3455989662506881843

namespace A000337

/-- `∑[2*n*a(n-1)/(n-1)]` -/
def P3455989662506881843.Spec : Prop :=
  ∀ n, P3455989662506881843.a n = (A000337 n : ℚ)

end A000337

/-! ## A000337.P961396476783914205

`∑[A001787(n)]`
-/

namespace A000337.P961396476783914205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P961396476783914205

namespace A000337

/-- `∑[A001787(n)]` -/
def P961396476783914205.Spec : Prop :=
  ∀ n, P961396476783914205.a n = A000337 n

end A000337

/-! ## A000337.P294363720311497944

`∑[abs(A118442(n))]`
-/

namespace A000337.P294363720311497944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118442 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P294363720311497944

namespace A000337

/-- `∑[abs(A118442(n))]` -/
def P294363720311497944.Spec : Prop :=
  ∀ n, P294363720311497944.a n = A000337 n

end A000337

/-! ## A000337.P13569520662989393552

`∑[A097067(n+1)]`
-/

namespace A000337.P13569520662989393552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P13569520662989393552

namespace A000337

/-- `∑[A097067(n+1)]` -/
def P13569520662989393552.Spec : Prop :=
  ∀ n, P13569520662989393552.a n = A000337 n

end A000337

/-! ## A000337.P13870426907813157649

`∑[A139756(n+1)]`
-/

namespace A000337.P13870426907813157649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P13870426907813157649

namespace A000337

/-- `∑[A139756(n+1)]` -/
def P13870426907813157649.Spec : Prop :=
  ∀ n, P13870426907813157649.a n = A000337 n

end A000337

/-! ## A000337.P17934045246688961705

`∑[A005183(n)-1]`
-/

namespace A000337.P17934045246688961705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P17934045246688961705

namespace A000337

/-- `∑[A005183(n)-1]` -/
def P17934045246688961705.Spec : Prop :=
  ∀ n, P17934045246688961705.a n = A000337 n

end A000337

/-! ## A000337.P6102221487445210375

`∑[A036289(n)/2]`
-/

namespace A000337.P6102221487445210375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036289 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P6102221487445210375

namespace A000337

/-- `∑[A036289(n)/2]` -/
def P6102221487445210375.Spec : Prop :=
  ∀ n, P6102221487445210375.a n = (A000337 n : ℚ)

end A000337

/-! ## A000337.P4844190682627543208

`∑[A215149(n)-n]`
-/

namespace A000337.P4844190682627543208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215149 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P4844190682627543208

namespace A000337

/-- `∑[A215149(n)-n]` -/
def P4844190682627543208.Spec : Prop :=
  ∀ n, P4844190682627543208.a n = A000337 n

end A000337

/-! ## A000337.P13323103421504209898

`∑[n*A011782(n)]`
-/

namespace A000337.P13323103421504209898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P13323103421504209898

namespace A000337

/-- `∑[n*A011782(n)]` -/
def P13323103421504209898.Spec : Prop :=
  ∀ n, P13323103421504209898.a n = A000337 n

end A000337

/-! ## A000337.P16029580734245852042

`∑[n*A131577(n)]`
-/

namespace A000337.P16029580734245852042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P16029580734245852042

namespace A000337

/-- `∑[n*A131577(n)]` -/
def P16029580734245852042.Spec : Prop :=
  ∀ n, P16029580734245852042.a n = A000337 n

end A000337

/-! ## A000337.P17364540364344639433

`∑[abs(A085750(n+1))]`
-/

namespace A000337.P17364540364344639433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085750 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P17364540364344639433

namespace A000337

/-- `∑[abs(A085750(n+1))]` -/
def P17364540364344639433.Spec : Prop :=
  ∀ n, P17364540364344639433.a n = A000337 n

end A000337

/-! ## A000337.P3597663496286449879

`∑[∑[A049610(n+1)]]`
-/

namespace A000337.P3597663496286449879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P3597663496286449879

namespace A000337

/-- `∑[∑[A049610(n+1)]]` -/
def P3597663496286449879.Spec : Prop :=
  ∀ n, P3597663496286449879.a n = A000337 n

end A000337

/-! ## A000337.P7683702120426331438

`∑[∑[A336102(2*n)]]`
-/

namespace A000337.P7683702120426331438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P7683702120426331438

namespace A000337

/-- `∑[∑[A336102(2*n)]]` -/
def P7683702120426331438.Spec : Prop :=
  ∀ n, P7683702120426331438.a n = A000337 n

end A000337

/-! ## A000337.P4772606622300886480

`∑[∑[A349050(2*n)]]`
-/

namespace A000337.P4772606622300886480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349050 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P4772606622300886480

namespace A000337

/-- `∑[∑[A349050(2*n)]]` -/
def P4772606622300886480.Spec : Prop :=
  ∀ n, P4772606622300886480.a n = A000337 n

end A000337

/-! ## A000337.P10117240521673069233

`∑[record[A329033(n+1)]]`
-/

namespace A000337.P10117240521673069233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329033 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000337.P10117240521673069233

namespace A000337

/-- `∑[record[A329033(n+1)]]` -/
def P10117240521673069233.Spec : Prop :=
  ∀ n, P10117240521673069233.a n = A000337 n

end A000337

/-!
# A000338: Expansion of x^3*(5-2*x)*(1-x^3)/(1-x)^4.

The programs for A000338, the canonical program `A000338.P6241714926593175692` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000338 has offset 3).

The definition of A000338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5-2x-5x^3+2x^4)/(1-4x+6x^2-4x^3+x^4))` (program `A000338.P6241714926593175692`, by `A000338.P6241714926593175692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000338.P6241714926593175692

`ogf((5-2x-5x^3+2x^4)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000338

/-- `ogf((5-2x-5x^3+2x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P6241714926593175692.Spec : Prop :=
  ∀ n, P6241714926593175692.a n = A000338 (n + 3)

theorem P6241714926593175692.correct : P6241714926593175692.Spec := by
  intro n
  simp only [A000338, Nat.add_sub_cancel]

end A000338

/-! ## A000338.P10691664145443153031

`∑[ogf((5+3x+3x^2-2x^3)/(1-2x+x^2))]`
-/

namespace A000338.P10691664145443153031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 3, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000338.P10691664145443153031

namespace A000338

/-- `∑[ogf((5+3x+3x^2-2x^3)/(1-2x+x^2))]` -/
def P10691664145443153031.Spec : Prop :=
  ∀ n, P10691664145443153031.a n = A000338 (n + 3)

end A000338

/-! ## A000338.P9396283168156870469

`abs(1-n)+∑[9*n+3]+2*n+1`
-/

namespace A000338.P9396283168156870469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + ((∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) : ℕ) : ℤ)

end

end A000338.P9396283168156870469

namespace A000338

/-- `abs(1-n)+∑[9*n+3]+2*n+1` -/
def P9396283168156870469.Spec : Prop :=
  ∀ n, P9396283168156870469.a n = A000338 (n + 3)

end A000338

/-! ## A000338.P12192632629737142986

`record[abs(A000217(3*n)-4)+1]`
-/

namespace A000338.P12192632629737142986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (3 * n) - 4| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000338.P12192632629737142986

namespace A000338

/-- `record[abs(A000217(3*n)-4)+1]` -/
def P12192632629737142986.Spec : Prop :=
  ∀ n, P12192632629737142986.a n = A000338 (n + 3)

end A000338

/-! ## A000338.P18080220019690719758

`∑[A122709(n+1)-C(2, n²)]`
-/

namespace A000338.P18080220019690719758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000338.P18080220019690719758

namespace A000338

/-- `∑[A122709(n+1)-C(2, n²)]` -/
def P18080220019690719758.Spec : Prop :=
  ∀ n, P18080220019690719758.a n = A000338 (n + 3)

end A000338

/-! ## A000338.P12477539904002301842

`record[round(A027379(A001651(n+1))/a(n-1))]` with `a(0)=5`
-/

namespace A000338.P12477539904002301842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  SequenceMachineLib.roundAway ((A027379 (A001651 (n + 1)).toNat : ℚ) / (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000338.P12477539904002301842

namespace A000338

/-- `record[round(A027379(A001651(n+1))/a(n-1))]` -/
def P12477539904002301842.Spec : Prop :=
  ∀ n, P12477539904002301842.a n = A000338 (n + 3)

end A000338

/-! ## A000338.P1716418871485686682

`A101882(6*n+3+A008486(n))`
-/

namespace A000338.P1716418871485686682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101882 ((6 * n + 3 : ℤ) + A008486 n).toNat

end

end A000338.P1716418871485686682

namespace A000338

/-- `A101882(6*n+3+A008486(n))` -/
def P1716418871485686682.Spec : Prop :=
  ∀ n, P1716418871485686682.a n = A000338 (n + 3)

end A000338

/-! ## A000338.P13697232179143363917

`A101882(A168101(2*n+1)-(n+2))`
-/

namespace A000338.P13697232179143363917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101882 (A168101 (2 * n + 1) - (n + 2 : ℤ)).toNat

end

end A000338.P13697232179143363917

namespace A000338

/-- `A101882(A168101(2*n+1)-(n+2))` -/
def P13697232179143363917.Spec : Prop :=
  ∀ n, P13697232179143363917.a n = A000338 (n + 3)

end A000338

/-! ## A000338.P7153877951552900039

`A061702(∑[n+2]+3)`
-/

namespace A000338.P7153877951552900039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061702 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000338.P7153877951552900039

namespace A000338

/-- `A061702(∑[n+2]+3)` -/
def P7153877951552900039.Spec : Prop :=
  ∀ n, P7153877951552900039.a n = A000338 (n + 3)

end A000338

/-! ## A000338.P8108245782341925013

`A007494(A032765(3*n+2)+A028310(n))`
-/

namespace A000338.P8108245782341925013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A032765 (3 * n + 2) + A028310 n).toNat

end

end A000338.P8108245782341925013

namespace A000338

/-- `A007494(A032765(3*n+2)+A028310(n))` -/
def P8108245782341925013.Spec : Prop :=
  ∀ n, P8108245782341925013.a n = A000338 (n + 3)

end A000338

/-!
# A000339: Number of partitions into non-integral powers.

The programs for A000339, there is no canonical definition to state claims against.
-/

/-! ## A000339.P13013374535079885250

`A259448(∑[n+1]+2)`
-/

namespace A000339.P13013374535079885250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259448 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A000339.P13013374535079885250

/-! ## A000339.P18434271831133299064

`record[gcd(A096651(n), A259448(n+2))]`
-/

namespace A000339.P18434271831133299064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096651 n) (A259448 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000339.P18434271831133299064

/-! ## A000339.P7669166244733045442

`record[gcd(A259448(n+3), A259475(n))]`
-/

namespace A000339.P7669166244733045442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259448 (n + 3)) (A259475 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000339.P7669166244733045442

/-! ## A000339.P2672630150137264715

`record[C(A259448(n+1), A230049(n))]`
-/

namespace A000339.P2672630150137264715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A259448 (n + 1)).toNat (A230049 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000339.P2672630150137264715

/-! ## A000339.P3516974438142227488

`record[C(A259448(n+1), A269948(n))]`
-/

namespace A000339.P3516974438142227488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A259448 (n + 1)).toNat (A269948 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000339.P3516974438142227488

/-!
# A000340: a(0)=1, a(n) = 3*a(n-1) + n + 1.

The programs for A000340, the canonical program `A000340.P8002258449431788932` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000340 has offset 0).

The definition of A000340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+3*a(n-1)+n` (program `A000340.P8002258449431788932`, by `A000340.P8002258449431788932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000340.P8002258449431788932

`1+3*a(n-1)+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000340

/-- `1+3*a(n-1)+n` -/
def P8002258449431788932.Spec : Prop :=
  ∀ n, (P8002258449431788932.a n : ℤ) = A000340 n

theorem P8002258449431788932.correct : P8002258449431788932.Spec := by
  intro n
  simp only [A000340]

end A000340

/-! ## A000340.P5869490219193672358

`3*a(n-1)+n+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000340.P5869490219193672358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + n + 1

end

end A000340.P5869490219193672358

namespace A000340

/-- `3*a(n-1)+n+1` -/
def P5869490219193672358.Spec : Prop :=
  ∀ n, (P5869490219193672358.a n : ℤ) = A000340 n

theorem P5869490219193672358.correct : P5869490219193672358.Spec := by
  intro n
  simp only [A000340, Nat.add_sub_cancel, A000340.P5869490219193672358.a, A000340.P8002258449431788932.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000340

/-! ## A000340.P17199794261053570507

`(3^(n+2)-2*n-5)/4`
-/

namespace A000340.P17199794261053570507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 2) : ℤ) - (2 * n : ℤ) - 5 : ℚ) / 4

end

end A000340.P17199794261053570507

namespace A000340

/-- `(3^(n+2)-2*n-5)/4` -/
def P17199794261053570507.Spec : Prop :=
  ∀ n, P17199794261053570507.a n = (A000340 n : ℚ)

theorem P17199794261053570507.correct : P17199794261053570507.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A000340, Nat.add_sub_cancel, A000340.P17199794261053570507.a, A000340.P8002258449431788932.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A000340, Nat.add_sub_cancel, A000340.P17199794261053570507.a, A000340.P8002258449431788932.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000340

/-! ## A000340.P16406412532429009343

`∑[ogf(1/(1-4x+3x^2))]`
-/

namespace A000340.P16406412532429009343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000340.P16406412532429009343

namespace A000340

/-- `∑[ogf(1/(1-4x+3x^2))]` -/
def P16406412532429009343.Spec : Prop :=
  ∀ n, P16406412532429009343.a n = A000340 n

end A000340

/-! ## A000340.P8820562892202897433

`ogf(1/(1-5x+7x^2-3x^3))`
-/

namespace A000340.P8820562892202897433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 7, -3] n

end

end A000340.P8820562892202897433

namespace A000340

/-- `ogf(1/(1-5x+7x^2-3x^3))` -/
def P8820562892202897433.Spec : Prop :=
  ∀ n, P8820562892202897433.a n = A000340 n

end A000340

/-! ## A000340.P4851092387890302357

`∑[∑[3*a(n-1)]]` with `a(0)=1`
-/

namespace A000340.P4851092387890302357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000340.P4851092387890302357

namespace A000340

/-- `∑[∑[3*a(n-1)]]` -/
def P4851092387890302357.Spec : Prop :=
  ∀ n, (P4851092387890302357.a n : ℤ) = A000340 n

end A000340

/-! ## A000340.P16808762841300319260

`4-(3*(1-a(n-1))-n)` with `a(0)=1`
-/

namespace A000340.P16808762841300319260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 - (3 * (1 - a (n - 1)) - (n : ℤ))

end

end A000340.P16808762841300319260

namespace A000340

/-- `4-(3*(1-a(n-1))-n)` -/
def P16808762841300319260.Spec : Prop :=
  ∀ n, P16808762841300319260.a n = A000340 n

end A000340

/-! ## A000340.P1554668985477649174

`a(n-1)/(1-2/3)+n+1` with `a(0)=1`
-/

namespace A000340.P1554668985477649174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (2 : ℚ) / 3) + (n + 1 : ℚ)

end

end A000340.P1554668985477649174

namespace A000340

/-- `a(n-1)/(1-2/3)+n+1` -/
def P1554668985477649174.Spec : Prop :=
  ∀ n, P1554668985477649174.a n = (A000340 n : ℚ)

end A000340

/-! ## A000340.P8689713044678783998

`3^(n+1)-(a(n-1)+2+n)` with `a(0)=1`
-/

namespace A000340.P8689713044678783998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ (n + 1) : ℤ) - (a (n - 1) + 2 + (n : ℤ))

end

end A000340.P8689713044678783998

namespace A000340

/-- `3^(n+1)-(a(n-1)+2+n)` -/
def P8689713044678783998.Spec : Prop :=
  ∀ n, P8689713044678783998.a n = A000340 n

end A000340

/-! ## A000340.P9300956230885352047

`a(n-1)+1+a(n-1)+a(n-1)+n` with `a(0)=1`
-/

namespace A000340.P9300956230885352047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) + n))

end

end A000340.P9300956230885352047

namespace A000340

/-- `a(n-1)+1+a(n-1)+a(n-1)+n` -/
def P9300956230885352047.Spec : Prop :=
  ∀ n, (P9300956230885352047.a n : ℤ) = A000340 n

theorem P9300956230885352047.correct : P9300956230885352047.Spec := by
  intro n
  simp only [A000340, Nat.add_sub_cancel, A000340.P9300956230885352047.a, A000340.P8002258449431788932.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000340

/-! ## A000340.P15162587808507629145

`2-floor(1-a(n-1)-a(n-1)-a(n-1)-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A000340.P15162587808507629145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (1 - a (n - 1) - a (n - 1) - a (n - 1) - (n : ℤ))

end

end A000340.P15162587808507629145

namespace A000340

/-- `2-floor(1-a(n-1)-a(n-1)-a(n-1)-n)` -/
def P15162587808507629145.Spec : Prop :=
  ∀ n, P15162587808507629145.a n = A000340 n

end A000340

/-! ## A000340.P10785333556621269436

`∑[∑[A000244(n)]]`
-/

namespace A000340.P10785333556621269436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000340.P10785333556621269436

namespace A000340

/-- `∑[∑[A000244(n)]]` -/
def P10785333556621269436.Spec : Prop :=
  ∀ n, P10785333556621269436.a n = A000340 n

end A000340

/-! ## A000340.P2387936644960643975

`∑[record[A140313(n)]]`
-/

namespace A000340.P2387936644960643975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000340.P2387936644960643975

namespace A000340

/-- `∑[record[A140313(n)]]` -/
def P2387936644960643975.Spec : Prop :=
  ∀ n, P2387936644960643975.a n = A000340 n

end A000340

/-! ## A000340.P3609111457879362636

`∑[A003462(n+1)]`
-/

namespace A000340.P3609111457879362636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000340.P3609111457879362636

namespace A000340

/-- `∑[A003462(n+1)]` -/
def P3609111457879362636.Spec : Prop :=
  ∀ n, P3609111457879362636.a n = A000340 n

end A000340

/-! ## A000340.P13981457425508107215

`∑[A261547(n+1)]`
-/

namespace A000340.P13981457425508107215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000340.P13981457425508107215

namespace A000340

/-- `∑[A261547(n+1)]` -/
def P13981457425508107215.Spec : Prop :=
  ∀ n, P13981457425508107215.a n = A000340 n

end A000340

/-! ## A000340.P17474667170904953785

`∑[A052993(2*n)]`
-/

namespace A000340.P17474667170904953785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052993 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000340.P17474667170904953785

namespace A000340

/-- `∑[A052993(2*n)]` -/
def P17474667170904953785.Spec : Prop :=
  ∀ n, P17474667170904953785.a n = A000340 n

end A000340

/-! ## A000340.P13471778823960662484

`∑[A094025(2*n)]`
-/

namespace A000340.P13471778823960662484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094025 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000340.P13471778823960662484

namespace A000340

/-- `∑[A094025(2*n)]` -/
def P13471778823960662484.Spec : Prop :=
  ∀ n, P13471778823960662484.a n = A000340 n

end A000340

/-! ## A000340.P4286720745737667226

`∑[A123109(n)]+n`
-/

namespace A000340.P4286720745737667226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A000340.P4286720745737667226

namespace A000340

/-- `∑[A123109(n)]+n` -/
def P4286720745737667226.Spec : Prop :=
  ∀ n, P4286720745737667226.a n = A000340 n

end A000340

/-! ## A000340.P16657625287474625760

`A111277(n+2)-1`
-/

namespace A000340.P16657625287474625760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 (n + 2) - 1

end

end A000340.P16657625287474625760

namespace A000340

/-- `A111277(n+2)-1` -/
def P16657625287474625760.Spec : Prop :=
  ∀ n, P16657625287474625760.a n = A000340 n

end A000340

/-!
# A000341: Number of ways to pair up {1..2n} so sum of each pair is prime.

The programs for A000341, there is no canonical definition to state claims against.
-/

/-! ## A000341.P5526433188472171371

`record[sqrt(A073364(n))]`
-/

namespace A000341.P5526433188472171371
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073364 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000341.P5526433188472171371

/-! ## A000341.P16697243178300139727

`sqrt(A073364(2*(n+1)))`
-/

namespace A000341.P16697243178300139727
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073364 (2 * (n + 1)) : ℝ)

end

end A000341.P16697243178300139727

/-! ## A000341.P8142213639449465942

`record[root(A073364(n+2), 2)]`
-/

namespace A000341.P8142213639449465942
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073364 (n + 2) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000341.P8142213639449465942

/-! ## A000341.P10348665360214659854

`record[∏[A103687(n+1)/A073364(n+1)]]`
-/

namespace A000341.P10348665360214659854
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103687 (n + 1) : ℚ) / (A073364 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000341.P10348665360214659854

/-!
# A000342: Number of n-node rooted trees of height 5.

The programs for A000342, there is no canonical definition to state claims against.
-/

/-! ## A000342.P14870661591646524746

`A001385(n+1)-A001384(n+1)`
-/

namespace A000342.P14870661591646524746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 (n + 1) - A001384 (n + 1)

end

end A000342.P14870661591646524746

/-! ## A000342.P7977467934119571389

`A001385(n+1)-(A001383(n+1)+A000299(n+1))`
-/

namespace A000342.P7977467934119571389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001385 (n + 1) - (A001383 (n + 1) + A000299 (n + 1))

end

end A000342.P7977467934119571389

/-! ## A000342.P2422827104353361539

`A034823(n+1)-(A001384(n+1)+A000393(n+1))`
-/

namespace A000342.P2422827104353361539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034823 (n + 1) - (A001384 (n + 1) + A000393 (n + 1))

end

end A000342.P2422827104353361539

/-! ## A000342.P14139008539455662137

`A036644(A043316(n+1))`
-/

namespace A000342.P14139008539455662137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036644 (A043316 (n + 1)).toNat

end

end A000342.P14139008539455662137

/-! ## A000342.P17331845195098196121

`A036644(A044913(n+1))`
-/

namespace A000342.P17331845195098196121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036644 (A044913 (n + 1)).toNat

end

end A000342.P17331845195098196121

/-!
# A000343: 5th power of rooted tree enumerator; number of linear forests of 5 rooted trees.

The programs for A000343, there is no canonical definition to state claims against.
-/

/-! ## A000343.P12036963562325684760

`A339067(A167499(n+3))`
-/

namespace A000343.P12036963562325684760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A167499 (n + 3)).toNat

end

end A000343.P12036963562325684760

/-! ## A000343.P15066293255485708169

`A339067(A000124(n+4)+4)`
-/

namespace A000343.P15066293255485708169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A000124 (n + 4) + 4).toNat

end

end A000343.P15066293255485708169

/-! ## A000343.P51286917994211582

`A339067(A000217(n+4)+5)`
-/

namespace A000343.P51286917994211582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A000217 (n + 4) + 5).toNat

end

end A000343.P51286917994211582

/-! ## A000343.P1630537812460028482

`A339067(Δ[A034857(n+1)]+8)`
-/

namespace A000343.P1630537812460028482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (f1 (n + 1) - f1 n + 8).toNat

end

end A000343.P1630537812460028482

/-! ## A000343.P5448644577159050070

`A339067(A055999(n+3)-2*n)`
-/

namespace A000343.P5448644577159050070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A000343.P5448644577159050070

/-! ## A000343.P2395908400908718622

`A339067(A167614(n+1)+A020705(n)+n+5)`
-/

namespace A000343.P2395908400908718622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A167614 (n + 1) + A020705 n + (n + 5 : ℤ)).toNat

end

end A000343.P2395908400908718622

/-! ## A000343.P2133112026337660969

`A339067(A038722(Δ[A023545(n+1)]))`
-/

namespace A000343.P2133112026337660969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A000343.P2133112026337660969

/-!
# A000344: a(n) = 5*binomial(2n, n-2)/(n+3).

The programs for A000344, the canonical program `A000344.P14231163545056280941` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000344 has offset 2).

The definition of A000344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000344.P14231163545056280941

`A000108(n+4)-3*A000108(n+3)+A000108(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000344

/-- `A000108(n+4)-3*A000108(n+3)+A000108(n+2)` -/
def P14231163545056280941.Spec : Prop :=
  ∀ n, P14231163545056280941.a n = A000344 (n + 2)

theorem P14231163545056280941.correct : P14231163545056280941.Spec := by
  intro n
  simp only [A000344, Nat.add_sub_cancel]

end A000344

/-! ## A000344.P11465194458468571911

`5*C(2*(n+2), n)/(n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000344.P11465194458468571911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose (2 * (n + 2)) n : ℚ) / (n + 5 : ℚ)

end

end A000344.P11465194458468571911

namespace A000344

/-- `5*C(2*(n+2), n)/(n+5)` -/
def P11465194458468571911.Spec : Prop :=
  ∀ n, P11465194458468571911.a n = (A000344 (n + 2) : ℚ)

end A000344

/-! ## A000344.P332153224642611461

`record[abs(A115144(n))]`
-/

namespace A000344.P332153224642611461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115144 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000344.P332153224642611461

namespace A000344

/-- `record[abs(A115144(n))]` -/
def P332153224642611461.Spec : Prop :=
  ∀ n, P332153224642611461.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P15337872045274848606

`∑[A026013(n+1)]`
-/

namespace A000344.P15337872045274848606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000344.P15337872045274848606

namespace A000344

/-- `∑[A026013(n+1)]` -/
def P15337872045274848606.Spec : Prop :=
  ∀ n, P15337872045274848606.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P14032584427970289573

`Δ[A143955(n+2)]`
-/

namespace A000344.P14032584427970289573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000344.P14032584427970289573

namespace A000344

/-- `Δ[A143955(n+2)]` -/
def P14032584427970289573.Spec : Prop :=
  ∀ n, P14032584427970289573.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P2230064443199143486

`A268329(n+5)/2`
-/

namespace A000344.P2230064443199143486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268329 (n + 5) : ℚ) / 2

end

end A000344.P2230064443199143486

namespace A000344

/-- `A268329(n+5)/2` -/
def P2230064443199143486.Spec : Prop :=
  ∀ n, P2230064443199143486.a n = (A000344 (n + 2) : ℚ)

end A000344

/-! ## A000344.P7361152186222142078

`A390965(n)+A071741(n)`
-/

namespace A000344.P7361152186222142078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390965 n + A071741 n

end

end A000344.P7361152186222142078

namespace A000344

/-- `A390965(n)+A071741(n)` -/
def P7361152186222142078.Spec : Prop :=
  ∀ n, P7361152186222142078.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P14344968696197569516

`∑[A099376(n)+A032952(n)]`
-/

namespace A000344.P14344968696197569516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A032952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000344.P14344968696197569516

namespace A000344

/-- `∑[A099376(n)+A032952(n)]` -/
def P14344968696197569516.Spec : Prop :=
  ∀ n, P14344968696197569516.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P14901242082708467025

`A120989(n+1)-A002057(n)`
-/

namespace A000344.P14901242082708467025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120989 (n + 1) - A002057 n

end

end A000344.P14901242082708467025

namespace A000344

/-- `A120989(n+1)-A002057(n)` -/
def P14901242082708467025.Spec : Prop :=
  ∀ n, P14901242082708467025.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P13169727568374869540

`2*A001559(n)-A001558(n)`
-/

namespace A000344.P13169727568374869540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001559 n - A001558 n

end

end A000344.P13169727568374869540

namespace A000344

/-- `2*A001559(n)-A001558(n)` -/
def P13169727568374869540.Spec : Prop :=
  ∀ n, P13169727568374869540.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P3253285804396126079

`∑[A002057(n)+A000588(n+1)]`
-/

namespace A000344.P3253285804396126079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000344.P3253285804396126079

namespace A000344

/-- `∑[A002057(n)+A000588(n+1)]` -/
def P3253285804396126079.Spec : Prop :=
  ∀ n, P3253285804396126079.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P12896558701300361933

`Δ[A114277(n)-A001453(n+2)]`
-/

namespace A000344.P12896558701300361933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114277 n - A001453 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000344.P12896558701300361933

namespace A000344

/-- `Δ[A114277(n)-A001453(n+2)]` -/
def P12896558701300361933.Spec : Prop :=
  ∀ n, P12896558701300361933.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P16645384895557229768

`A002057(n)-Δ[A120009(n+2)]`
-/

namespace A000344.P16645384895557229768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120009 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - (f1 (n + 1) - f1 n)

end

end A000344.P16645384895557229768

namespace A000344

/-- `A002057(n)-Δ[A120009(n+2)]` -/
def P16645384895557229768.Spec : Prop :=
  ∀ n, P16645384895557229768.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P14261612078325562597

`A070859(n+1)-A000108(n+1)`
-/

namespace A000344.P14261612078325562597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070859 (n + 1) - A000108 (n + 1)

end

end A000344.P14261612078325562597

namespace A000344

/-- `A070859(n+1)-A000108(n+1)` -/
def P14261612078325562597.Spec : Prop :=
  ∀ n, P14261612078325562597.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P17072948242340840552

`A070857(n+1)-A002057(n+1)`
-/

namespace A000344.P17072948242340840552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070857 (n + 1) - A002057 (n + 1)

end

end A000344.P17072948242340840552

namespace A000344

/-- `A070857(n+1)-A002057(n+1)` -/
def P17072948242340840552.Spec : Prop :=
  ∀ n, P17072948242340840552.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P13501124421290773190

`A071719(n+1)-A071722(n+1)`
-/

namespace A000344.P13501124421290773190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071719 (n + 1) - A071722 (n + 1)

end

end A000344.P13501124421290773190

namespace A000344

/-- `A071719(n+1)-A071722(n+1)` -/
def P13501124421290773190.Spec : Prop :=
  ∀ n, P13501124421290773190.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P7676319358611694933

`A071729(n+1)-A071732(n+1)`
-/

namespace A000344.P7676319358611694933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071729 (n + 1) - A071732 (n + 1)

end

end A000344.P7676319358611694933

namespace A000344

/-- `A071729(n+1)-A071732(n+1)` -/
def P7676319358611694933.Spec : Prop :=
  ∀ n, P7676319358611694933.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P2752448527076172125

`A002057(n+1)-A000245(n+2)`
-/

namespace A000344.P2752448527076172125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 1) - A000245 (n + 2)

end

end A000344.P2752448527076172125

namespace A000344

/-- `A002057(n+1)-A000245(n+2)` -/
def P2752448527076172125.Spec : Prop :=
  ∀ n, P2752448527076172125.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P5577083479683687811

`A002057(n+1)-A071724(n+2)`
-/

namespace A000344.P5577083479683687811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 1) - A071724 (n + 2)

end

end A000344.P5577083479683687811

namespace A000344

/-- `A002057(n+1)-A071724(n+2)` -/
def P5577083479683687811.Spec : Prop :=
  ∀ n, P5577083479683687811.a n = A000344 (n + 2)

end A000344

/-! ## A000344.P8939000285080498206

`A071723(n+1)-A026016(n+2)`
-/

namespace A000344.P8939000285080498206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071723 (n + 1) - A026016 (n + 2)

end

end A000344.P8939000285080498206

namespace A000344

/-- `A071723(n+1)-A026016(n+2)` -/
def P8939000285080498206.Spec : Prop :=
  ∀ n, P8939000285080498206.a n = A000344 (n + 2)

end A000344

/-!
# A000345: Number of partitions into non-integral powers.

The programs for A000345, there is no canonical definition to state claims against.
-/

/-! ## A000345.P5503378410021337359

`A259448(∑[n+2]+4)`
-/

namespace A000345.P5503378410021337359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259448 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A000345.P5503378410021337359

/-! ## A000345.P10895012465390146179

`record[gcd(A259448(n+4), A259475(n))]`
-/

namespace A000345.P10895012465390146179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259448 (n + 4)) (A259475 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000345.P10895012465390146179

/-! ## A000345.P18174134592100095033

`or(floor(acot(n)), A259448(A167614(n+1)))`
-/

namespace A000345.P18174134592100095033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A259448 (A167614 (n + 1)).toNat)

end

end A000345.P18174134592100095033

/-! ## A000345.P7360464420187510531

`A259448(A167614(n+1))+A243833(n)`
-/

namespace A000345.P7360464420187510531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259448 (A167614 (n + 1)).toNat + A243833 n

end

end A000345.P7360464420187510531

/-!
# A000346: a(n) = 2^(2*n+1) - binomial(2*n+1, n+1).

The programs for A000346, the canonical program `A000346.P4731855781935229292` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000346 has offset 0).

The definition of A000346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n+1)-C(2*n+1, n)` (program `A000346.P4731855781935229292`, by `A000346.P4731855781935229292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000346.P13453431485271774812

`A045621(2*n+1)`
-/

namespace A000346.P13453431485271774812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n + 1)

end

end A000346.P13453431485271774812

namespace A000346

/-- `A045621(2*n+1)` -/
def P13453431485271774812.Spec : Prop :=
  ∀ n, P13453431485271774812.a n = A000346 n

end A000346

/-! ## A000346.P17065910636267210755

`1/2*A068551(n+1)`
-/

namespace A000346.P17065910636267210755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A068551 (n + 1) : ℚ)

end

end A000346.P17065910636267210755

namespace A000346

/-- `1/2*A068551(n+1)` -/
def P17065910636267210755.Spec : Prop :=
  ∀ n, P17065910636267210755.a n = (A000346 n : ℚ)

end A000346

/-! ## A000346.P16470751448384223744

`A000302(n)+A008549(n)`
-/

namespace A000346.P16470751448384223744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + A008549 n

end

end A000346.P16470751448384223744

namespace A000346

/-- `A000302(n)+A008549(n)` -/
def P16470751448384223744.Spec : Prop :=
  ∀ n, P16470751448384223744.a n = A000346 n

end A000346

/-! ## A000346.P4731855781935229292

`2^(2*n+1)-C(2*n+1, n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000346

/-- `2^(2*n+1)-C(2*n+1, n)` -/
def P4731855781935229292.Spec : Prop :=
  ∀ n, P4731855781935229292.a n = A000346 n

theorem P4731855781935229292.correct : P4731855781935229292.Spec := by
  intro n
  simp only [A000346]

end A000346

/-! ## A000346.P17608668686047465864

`2^(2*n+1)-C(2*n+1, n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A000346.P17608668686047465864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * n + 1) : ℤ) - (Nat.choose (2 * n + 1) (n + 1) : ℤ)

end

end A000346.P17608668686047465864

namespace A000346

/-- `2^(2*n+1)-C(2*n+1, n+1)` -/
def P17608668686047465864.Spec : Prop :=
  ∀ n, P17608668686047465864.a n = A000346 n

end A000346

/-! ## A000346.P11121575865673215840

`4^n+4^n-∏[4-2/(n+1)]/2`
-/

namespace A000346.P11121575865673215840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) + ((4 ^ n : ℚ) - (∏ j ∈ Finset.range (n + 1), f1 j) / 2)

end

end A000346.P11121575865673215840

namespace A000346

/-- `4^n+4^n-∏[4-2/(n+1)]/2` -/
def P11121575865673215840.Spec : Prop :=
  ∀ n, P11121575865673215840.a n = (A000346 n : ℚ)

end A000346

/-! ## A000346.P13635890233181070328

`Δ[A191394(2*n)]`
-/

namespace A000346.P13635890233181070328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191394 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000346.P13635890233181070328

namespace A000346

/-- `Δ[A191394(2*n)]` -/
def P13635890233181070328.Spec : Prop :=
  ∀ n, P13635890233181070328.a n = A000346 n

end A000346

/-! ## A000346.P13902326247208865765

`A058622(2*(n+1))`
-/

namespace A000346.P13902326247208865765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (2 * (n + 1))

end

end A000346.P13902326247208865765

namespace A000346

/-- `A058622(2*(n+1))` -/
def P13902326247208865765.Spec : Prop :=
  ∀ n, P13902326247208865765.a n = A000346 n

end A000346

/-! ## A000346.P11392331948732347293

`A191391(2*(n+1))`
-/

namespace A000346.P11392331948732347293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191391 (2 * (n + 1))

end

end A000346.P11392331948732347293

namespace A000346

/-- `A191391(2*(n+1))` -/
def P11392331948732347293.Spec : Prop :=
  ∀ n, P11392331948732347293.a n = A000346 n

end A000346

/-! ## A000346.P2094133979831726645

`A294175(2*(n+1))`
-/

namespace A000346.P2094133979831726645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (2 * (n + 1))

end

end A000346.P2094133979831726645

namespace A000346

/-- `A294175(2*(n+1))` -/
def P2094133979831726645.Spec : Prop :=
  ∀ n, P2094133979831726645.a n = A000346 n

end A000346

/-! ## A000346.P17975315923655976123

`A068551(n+1)/2`
-/

namespace A000346.P17975315923655976123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068551 (n + 1) : ℚ) / 2

end

end A000346.P17975315923655976123

namespace A000346

/-- `A068551(n+1)/2` -/
def P17975315923655976123.Spec : Prop :=
  ∀ n, P17975315923655976123.a n = (A000346 n : ℚ)

end A000346

/-! ## A000346.P11405238807818449151

`A007008(2*n+3)`
-/

namespace A000346.P11405238807818449151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007008 (2 * n + 3)

end

end A000346.P11405238807818449151

namespace A000346

/-- `A007008(2*n+3)` -/
def P11405238807818449151.Spec : Prop :=
  ∀ n, P11405238807818449151.a n = A000346 n

end A000346

/-! ## A000346.P4959509396795001710

`A202736(2*(n+1))/2`
-/

namespace A000346.P4959509396795001710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202736 (2 * (n + 1)) : ℚ) / 2

end

end A000346.P4959509396795001710

namespace A000346

/-- `A202736(2*(n+1))/2` -/
def P4959509396795001710.Spec : Prop :=
  ∀ n, P4959509396795001710.a n = (A000346 n : ℚ)

end A000346

/-! ## A000346.P18069526812175534905

`A307768(2*(n+1))/2`
-/

namespace A000346.P18069526812175534905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307768 (2 * (n + 1)) : ℚ) / 2

end

end A000346.P18069526812175534905

namespace A000346

/-- `A307768(2*(n+1))/2` -/
def P18069526812175534905.Spec : Prop :=
  ∀ n, P18069526812175534905.a n = (A000346 n : ℚ)

end A000346

/-! ## A000346.P5375152400583379316

`A048896(n)*A120778(n)`
-/

namespace A000346.P5375152400583379316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A120778 n

end

end A000346.P5375152400583379316

namespace A000346

/-- `A048896(n)*A120778(n)` -/
def P5375152400583379316.Spec : Prop :=
  ∀ n, P5375152400583379316.a n = A000346 n

end A000346

/-! ## A000346.P7380846779569982382

`xor(A010763(n), A083420(n))`
-/

namespace A000346.P7380846779569982382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010763 n) (A083420 n)

end

end A000346.P7380846779569982382

namespace A000346

/-- `xor(A010763(n), A083420(n))` -/
def P7380846779569982382.Spec : Prop :=
  ∀ n, P7380846779569982382.a n = A000346 n

end A000346

/-! ## A000346.P10192076531125109613

`∑[A032443(n)+A008549(n)]`
-/

namespace A000346.P10192076531125109613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032443 n + A008549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000346.P10192076531125109613

namespace A000346

/-- `∑[A032443(n)+A008549(n)]` -/
def P10192076531125109613.Spec : Prop :=
  ∀ n, P10192076531125109613.a n = A000346 n

end A000346

/-! ## A000346.P13254667549513026018

`Δ[A000975(2*n)-A124642(2*n)]`
-/

namespace A000346.P13254667549513026018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n) - A124642 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000346.P13254667549513026018

namespace A000346

/-- `Δ[A000975(2*n)-A124642(2*n)]` -/
def P13254667549513026018.Spec : Prop :=
  ∀ n, P13254667549513026018.a n = A000346 n

end A000346

/-! ## A000346.P3267053729735487427

`∑[A117186(2*n+1)-A117186(2*n)]`
-/

namespace A000346.P3267053729735487427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117186 (2 * n + 1) - A117186 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000346.P3267053729735487427

namespace A000346

/-- `∑[A117186(2*n+1)-A117186(2*n)]` -/
def P3267053729735487427.Spec : Prop :=
  ∀ n, P3267053729735487427.a n = A000346 n

end A000346

/-! ## A000346.P4901413348335373818

`A002023(n)%A212403(n+1)`
-/

namespace A000346.P4901413348335373818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002023 n) (A212403 (n + 1))

end

end A000346.P4901413348335373818

namespace A000346

/-- `A002023(n)%A212403(n+1)` -/
def P4901413348335373818.Spec : Prop :=
  ∀ n, P4901413348335373818.a n = A000346 n

end A000346

/-!
# A000347: Number of partitions into non-integral powers.

The programs for A000347, there is no canonical definition to state claims against.
-/

/-! ## A000347.P3900439589544012871

`A259448(A141214(n)+7)`
-/

namespace A000347.P3900439589544012871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259448 (A141214 n + 7).toNat

end

end A000347.P3900439589544012871

/-! ## A000347.P10053538285636897193

`A259448(A052905(n)+9)`
-/

namespace A000347.P10053538285636897193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259448 (A052905 n + 9).toNat

end

end A000347.P10053538285636897193

/-! ## A000347.P7390056965629820070

`A259448(A055999(n)+10)`
-/

namespace A000347.P7390056965629820070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259448 (A055999 n + 10).toNat

end

end A000347.P7390056965629820070

/-!
# A000348: Number of ways to pair up {1^2, 2^2, ..., (2n)^2 } so sum of each pair is prime.

The programs for A000348, there is no canonical definition to state claims against.
-/

/-! ## A000348.P14766964355508846013

`sqrt(A321610(2*(n+1)))`
-/

namespace A000348.P14766964355508846013
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A321610 (2 * (n + 1)) : ℝ)

end

end A000348.P14766964355508846013

/-! ## A000348.P16278653384144532934

`root(A321610(2*n+2), 4)²`
-/

namespace A000348.P16278653384144532934
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A321610 (2 * n + 2) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A000348.P16278653384144532934

/-! ## A000348.P6753385309311834420

`A321610(A103517(n))^(1/2)`
-/

namespace A000348.P6753385309311834420
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A321610 (A103517 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A000348.P6753385309311834420

/-! ## A000348.P8709822418714299793

`root(A321610(2*(n+1)), ratio[A000079(n)])`
-/

namespace A000348.P8709822418714299793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A321610 (2 * (n + 1)) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A000348.P8709822418714299793

/-!
# A000349: One-half the number of permutations of length n with exactly 2 rising or falling successions.

The programs for A000349, there is no canonical definition to state claims against.
-/

/-! ## A000349.P1921283236870004191

`A086853(n)/2`
-/

namespace A000349.P1921283236870004191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086853 n : ℚ) / 2

end

end A000349.P1921283236870004191

/-! ## A000349.P7613383003373489857

`A086856(∑[abs(1-(char[2]+n))]+1)`
-/

namespace A000349.P7613383003373489857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086856 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A000349.P7613383003373489857

/-! ## A000349.P8668247788470173407

`A001100(A238531(n)+1)/2`
-/

namespace A000349.P8668247788470173407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001100 (A238531 n + 1).toNat : ℚ) / 2

end

end A000349.P8668247788470173407

/-! ## A000349.P13998718601068980773

`A014682(A086853(n))`
-/

namespace A000349.P13998718601068980773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A086853 n).toNat

end

end A000349.P13998718601068980773

/-! ## A000349.P15611945500314648528

`A249122(A086853(n)+1)`
-/

namespace A000349.P15611945500314648528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A086853 n + 1).toNat

end

end A000349.P15611945500314648528

/-!
# A000350: Numbers m such that Fibonacci(m) ends with m.

The programs for A000350, there is no canonical definition to state claims against.
-/

/-! ## A000350.P8119191934508283925

`eq[A003100(n), A105471(n)]`
-/

namespace A000350.P8119191934508283925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000350.P8119191934508283925

/-! ## A000350.P14740137356792208355

`eq[A022998(n), A105471(n)]`
-/

namespace A000350.P14740137356792208355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000350.P14740137356792208355

/-! ## A000350.P16578082230992274618

`eq[A065530(n), A105471(n)]`
-/

namespace A000350.P16578082230992274618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000350.P16578082230992274618

/-! ## A000350.P14415536951265035193

`eq[A065679(n), A105471(n)]`
-/

namespace A000350.P14415536951265035193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000350.P14415536951265035193

/-! ## A000350.P8858696872317188884

`eq[A105471(n), A118757(n)]`
-/

namespace A000350.P8858696872317188884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000350.P8858696872317188884

/-!
# A000351: Powers of 5: a(n) = 5^n.

The programs for A000351, the canonical program `A000351.P3157381177678935815` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000351 has offset 0).

The definition of A000351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n` (program `A000351.P3157381177678935815`, by `A000351.P3157381177678935815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000351.P3157381177678935815

`5^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000351

/-- `5^n` -/
def P3157381177678935815.Spec : Prop :=
  ∀ n, (P3157381177678935815.a n : ℤ) = A000351 n

theorem P3157381177678935815.correct : P3157381177678935815.Spec := by
  intro n
  simp only [A000351]

end A000351

/-!
# A000352: One half of the number of permutations of [n] such that the differences have three runs with the same signs.

The programs for A000352, the canonical program `A000352.P16191452763790617390` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000352 has offset 4).

The definition of A000352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000352.P16191452763790617390

`(3^(n+4)-4*2^(n+4)-2*(n+4)+11)/4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000352

/-- `(3^(n+4)-4*2^(n+4)-2*(n+4)+11)/4` -/
def P16191452763790617390.Spec : Prop :=
  ∀ n, P16191452763790617390.a n = (A000352 (n + 4) : ℚ)

end A000352

/-! ## A000352.P12400398233274511197

`∑[∑[ogf((5-6x)/(1-5x+6x^2))]]`
-/

namespace A000352.P12400398233274511197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6] [1, -5, 6] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P12400398233274511197

namespace A000352

/-- `∑[∑[ogf((5-6x)/(1-5x+6x^2))]]` -/
def P12400398233274511197.Spec : Prop :=
  ∀ n, P12400398233274511197.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P10548271156552695843

`∑[∑[2^(n+1)+3*a(n-1)]]` with `a(0)=5`
-/

namespace A000352.P10548271156552695843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  2 ^ (n + 1) + 3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P10548271156552695843

namespace A000352

/-- `∑[∑[2^(n+1)+3*a(n-1)]]` -/
def P10548271156552695843.Spec : Prop :=
  ∀ n, (P10548271156552695843.a n : ℤ) = A000352 (n + 4)

end A000352

/-! ## A000352.P11443430204286021310

`∑[∑[a(n-1)+a(n-1)+3^(n+1)]]` with `a(0)=5`
-/

namespace A000352.P11443430204286021310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + 3 ^ (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P11443430204286021310

namespace A000352

/-- `∑[∑[a(n-1)+a(n-1)+3^(n+1)]]` -/
def P11443430204286021310.Spec : Prop :=
  ∀ n, (P11443430204286021310.a n : ℤ) = A000352 (n + 4)

end A000352

/-! ## A000352.P7801333617141752938

`∑[∑[A001047(n+2)]]`
-/

namespace A000352.P7801333617141752938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P7801333617141752938

namespace A000352

/-- `∑[∑[A001047(n+2)]]` -/
def P7801333617141752938.Spec : Prop :=
  ∀ n, P7801333617141752938.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P3541599068852735667

`∑[A000392(n+4)-1]`
-/

namespace A000352.P3541599068852735667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 4) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P3541599068852735667

namespace A000352

/-- `∑[A000392(n+4)-1]` -/
def P3541599068852735667.Spec : Prop :=
  ∀ n, P3541599068852735667.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P16500955670509189154

`∑[A134063(n+3)-2]`
-/

namespace A000352.P16500955670509189154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P16500955670509189154

namespace A000352

/-- `∑[A134063(n+3)-2]` -/
def P16500955670509189154.Spec : Prop :=
  ∀ n, P16500955670509189154.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P14069110321480309230

`A249999(n+1)-(n+2)`
-/

namespace A000352.P14069110321480309230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249999 (n + 1) - (n + 2 : ℤ)

end

end A000352.P14069110321480309230

namespace A000352

/-- `A249999(n+1)-(n+2)` -/
def P14069110321480309230.Spec : Prop :=
  ∀ n, P14069110321480309230.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P5538626458490444450

`∑[∑[A304973(2*n+5)]]`
-/

namespace A000352.P5538626458490444450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P5538626458490444450

namespace A000352

/-- `∑[∑[A304973(2*n+5)]]` -/
def P5538626458490444450.Spec : Prop :=
  ∀ n, P5538626458490444450.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P10539303128797609206

`∑[A029858(n+2)+A028243(n+3)]`
-/

namespace A000352.P10539303128797609206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 2) + A028243 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P10539303128797609206

namespace A000352

/-- `∑[A029858(n+2)+A028243(n+3)]` -/
def P10539303128797609206.Spec : Prop :=
  ∀ n, P10539303128797609206.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P9297281986150881457

`∑[A053156(n+3)-A048578(n+1)]`
-/

namespace A000352.P9297281986150881457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053156 (n + 3) - A048578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P9297281986150881457

namespace A000352

/-- `∑[A053156(n+3)-A048578(n+1)]` -/
def P9297281986150881457.Spec : Prop :=
  ∀ n, P9297281986150881457.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P3177748443690601161

`A285361(n+1)+∑[∑[A033484(n+1)]]`
-/

namespace A000352.P3177748443690601161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285361 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P3177748443690601161

namespace A000352

/-- `A285361(n+1)+∑[∑[A033484(n+1)]]` -/
def P3177748443690601161.Spec : Prop :=
  ∀ n, P3177748443690601161.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P14344643527631573589

`∑[∑[A281773(n+2)+A033484(n+1)]]`
-/

namespace A000352.P14344643527631573589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281773 (n + 2) + A033484 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P14344643527631573589

namespace A000352

/-- `∑[∑[A281773(n+2)+A033484(n+1)]]` -/
def P14344643527631573589.Spec : Prop :=
  ∀ n, P14344643527631573589.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P14185622504951438038

`∑[∑[A024025(n+2)-A024012(n+2)]]`
-/

namespace A000352.P14185622504951438038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024025 (n + 2) - A024012 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P14185622504951438038

namespace A000352

/-- `∑[∑[A024025(n+2)-A024012(n+2)]]` -/
def P14185622504951438038.Spec : Prop :=
  ∀ n, P14185622504951438038.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P13704664186398064967

`∑[∑[A193857(∑[n+1])]]`
-/

namespace A000352.P13704664186398064967
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P13704664186398064967

namespace A000352

/-- `∑[∑[A193857(∑[n+1])]]` -/
def P13704664186398064967.Spec : Prop :=
  ∀ n, P13704664186398064967.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P10837757114406811557

`∑[∑[A193861(∑[n+1])]]`
-/

namespace A000352.P10837757114406811557
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193861 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P10837757114406811557

namespace A000352

/-- `∑[∑[A193861(∑[n+1])]]` -/
def P10837757114406811557.Spec : Prop :=
  ∀ n, P10837757114406811557.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P17462410322464033902

`∑[∑[A193856(∑[n+2])]]`
-/

namespace A000352.P17462410322464033902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P17462410322464033902

namespace A000352

/-- `∑[∑[A193856(∑[n+2])]]` -/
def P17462410322464033902.Spec : Prop :=
  ∀ n, P17462410322464033902.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P8464488653448477518

`∑[∑[A193860(∑[n+2])]]`
-/

namespace A000352.P8464488653448477518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193860 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P8464488653448477518

namespace A000352

/-- `∑[∑[A193860(∑[n+2])]]` -/
def P8464488653448477518.Spec : Prop :=
  ∀ n, P8464488653448477518.a n = A000352 (n + 4)

end A000352

/-! ## A000352.P3455812720572103948

`∑[∑[A016149(n+1)/A000079(n+1)]]`
-/

namespace A000352.P3455812720572103948
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016149 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000352.P3455812720572103948

namespace A000352

/-- `∑[∑[A016149(n+1)/A000079(n+1)]]` -/
def P3455812720572103948.Spec : Prop :=
  ∀ n, P3455812720572103948.a n = (A000352 (n + 4) : ℚ)

end A000352

/-!
# A000353: Primes p == 7, 19, 23 (mod 40) such that (p-1)/2 is also prime.

The programs for A000353, there is no canonical definition to state claims against.
-/

/-! ## A000353.P8320404079193669467

`2*A000355(n+1)+1`
-/

namespace A000353.P8320404079193669467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000355 (n + 1) + 1

end

end A000353.P8320404079193669467

/-! ## A000353.P11696085239864618880

`A000355(n+1)+A000355(n+1)+A309873(n+1)²`
-/

namespace A000353.P11696085239864618880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000355 (n + 1) + (A000355 (n + 1) + A309873 (n + 1) ^ 2)

end

end A000353.P11696085239864618880

/-! ## A000353.P17337440171834889552

`A000355(n+1)+A054977(n+1)+A000355(n+1)`
-/

namespace A000353.P17337440171834889552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000355 (n + 1) + (A054977 (n + 1) + A000355 (n + 1))

end

end A000353.P17337440171834889552

/-! ## A000353.P7823564431980704327

`∩[A005385(n+1), A129727(n+1)]`
-/

namespace A000353.P7823564431980704327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P7823564431980704327

/-! ## A000353.P639239736802346564

`∩[A048184(n+1), A129727(n+1)]`
-/

namespace A000353.P639239736802346564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P639239736802346564

/-! ## A000353.P5146241519214242030

`∩[A065966(n+1), A129727(n+1)]`
-/

namespace A000353.P5146241519214242030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P5146241519214242030

/-! ## A000353.P15313563717961307209

`∩[A079148(n+1), A129727(n+1)]`
-/

namespace A000353.P15313563717961307209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P15313563717961307209

/-! ## A000353.P3680862030562797041

`∩[A129727(n+1), A179401(n+1)]`
-/

namespace A000353.P3680862030562797041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P3680862030562797041

/-! ## A000353.P13156762273678011713

`∩[A129727(n+1), A395563(n+1)]`
-/

namespace A000353.P13156762273678011713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P13156762273678011713

/-! ## A000353.P8664928358214356070

`∩[A129727(n+1), A396478(n+1)]`
-/

namespace A000353.P8664928358214356070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P8664928358214356070

/-! ## A000353.P802645440242446632

`∩[A129727(n+1), A396480(n+1)]`
-/

namespace A000353.P802645440242446632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P802645440242446632

/-! ## A000353.P15189244286549428068

`∩[A001913(n+1), A005385(n+1)]`
-/

namespace A000353.P15189244286549428068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P15189244286549428068

/-! ## A000353.P4713926238783561072

`∩[A005385(n+1), A006883(n+1)]`
-/

namespace A000353.P4713926238783561072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P4713926238783561072

/-! ## A000353.P10238315703170894920

`∩[A001913(n+1), A065966(n+1)]`
-/

namespace A000353.P10238315703170894920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P10238315703170894920

/-! ## A000353.P137239853058699966

`∩[A006883(n+1), A065966(n+1)]`
-/

namespace A000353.P137239853058699966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P137239853058699966

/-! ## A000353.P5758970702379820841

`∩[A001913(n+1), A079148(n+1)]`
-/

namespace A000353.P5758970702379820841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P5758970702379820841

/-! ## A000353.P13304024968504026750

`∩[A001913(n+1), A129727(n+1)]`
-/

namespace A000353.P13304024968504026750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P13304024968504026750

/-! ## A000353.P14423064287166317626

`∩[A006883(n+1), A129727(n+1)]`
-/

namespace A000353.P14423064287166317626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P14423064287166317626

/-! ## A000353.P18267842174322951517

`∩[A005385(n+1), A306355(n+1)]`
-/

namespace A000353.P18267842174322951517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P18267842174322951517

/-! ## A000353.P18005741498248118905

`∩[A065966(n+1), A306355(n+1)]`
-/

namespace A000353.P18005741498248118905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A000353.P18005741498248118905

/-!
# A000354: Expansion of e.g.f. exp(-x)/(1-2*x).

The programs for A000354, the canonical program `A000354.P3859898258667447657` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000354 has offset 0).

The definition of A000354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000354.P15437767919612642037

`round(2^n*n!/exp(1/2))`
-/

namespace A000354.P15437767919612642037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n * Nat.factorial n : ℝ) / Real.exp ((1 : ℚ) / 2 : ℝ))

end

end A000354.P15437767919612642037

namespace A000354

/-- `round(2^n*n!/exp(1/2))` -/
def P15437767919612642037.Spec : Prop :=
  ∀ n, P15437767919612642037.a n = A000354 n

end A000354

/-! ## A000354.P3859898258667447657

`2*n*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000354

/-- `2*n*a(n-1)+(-1)^n` -/
def P3859898258667447657.Spec : Prop :=
  ∀ n, P3859898258667447657.a n = A000354 n

theorem P3859898258667447657.correct : P3859898258667447657.Spec := by
  intro n
  simp only [A000354]

end A000354

/-! ## A000354.P2504122576000373505

`or(2, 2*n*a(n-1))-1` with `a(0)=1`
-/

namespace A000354.P2504122576000373505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 2 ((2 * n : ℤ) * a (n - 1)) - 1

end

end A000354.P2504122576000373505

namespace A000354

/-- `or(2, 2*n*a(n-1))-1` -/
def P2504122576000373505.Spec : Prop :=
  ∀ n, P2504122576000373505.a n = A000354 n

end A000354

/-! ## A000354.P1363300145555282750

`(-1)^n+2*n*a(n-1)` with `a(0)=1`
-/

namespace A000354.P1363300145555282750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-1) ^ n + 2 * ((n : ℤ) * a (n - 1))

end

end A000354.P1363300145555282750

namespace A000354

/-- `(-1)^n+2*n*a(n-1)` -/
def P1363300145555282750.Spec : Prop :=
  ∀ n, P1363300145555282750.a n = A000354 n

theorem P1363300145555282750.correct : P1363300145555282750.Spec := by
  intro n
  simp only [A000354, Nat.add_sub_cancel, A000354.P1363300145555282750.a, A000354.P3859898258667447657.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A000354

/-! ## A000354.P6784865847091184868

`4*floor(n/2*a(n-1))+1` with `a(0)=1`
-/

namespace A000354.P6784865847091184868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ⌊(n : ℚ) / 2 * (a (n - 1) : ℚ)⌋ + 1

end

end A000354.P6784865847091184868

namespace A000354

/-- `4*floor(n/2*a(n-1))+1` -/
def P6784865847091184868.Spec : Prop :=
  ∀ n, P6784865847091184868.a n = A000354 n

end A000354

/-! ## A000354.P2860660200419292870

`2*(n*a(n-1)-n%2)+1` with `a(0)=1`
-/

namespace A000354.P2860660200419292870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) * a (n - 1) - ((n % 2 : ℕ) : ℤ)) + 1

end

end A000354.P2860660200419292870

namespace A000354

/-- `2*(n*a(n-1)-n%2)+1` -/
def P2860660200419292870.Spec : Prop :=
  ∀ n, P2860660200419292870.a n = A000354 n

end A000354

/-! ## A000354.P1647267902234211553

`2*(n*a(n-1)-and(1, n))+1` with `a(0)=1`
-/

namespace A000354.P1647267902234211553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) * a (n - 1) - (Nat.land 1 n : ℤ)) + 1

end

end A000354.P1647267902234211553

namespace A000354

/-- `2*(n*a(n-1)-and(1, n))+1` -/
def P1647267902234211553.Spec : Prop :=
  ∀ n, P1647267902234211553.a n = A000354 n

end A000354

/-! ## A000354.P6944571680866091111

`A342381(∑[n])`
-/

namespace A000354.P6944571680866091111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342381 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000354.P6944571680866091111

namespace A000354

/-- `A342381(∑[n])` -/
def P6944571680866091111.Spec : Prop :=
  ∀ n, P6944571680866091111.a n = A000354 n

end A000354

/-! ## A000354.P14028213759471671639

`A334578(2*n)`
-/

namespace A000354.P14028213759471671639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334578 (2 * n)

end

end A000354.P14028213759471671639

namespace A000354

/-- `A334578(2*n)` -/
def P14028213759471671639.Spec : Prop :=
  ∀ n, P14028213759471671639.a n = A000354 n

end A000354

/-!
# A000355: Primes p == 3, 9, 11 (mod 20) such that 2p+1 is also prime.

The programs for A000355, there is no canonical definition to state claims against.
-/

/-! ## A000355.P10224344749019202517

`floor(A000353(n+1)/2)`
-/

namespace A000355.P10224344749019202517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000353 (n + 1) : ℚ) / 2⌋

end

end A000355.P10224344749019202517

/-! ## A000355.P471749541527324093

`A006530((A000353(n+1)-1)/2)`
-/

namespace A000355.P471749541527324093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000353 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A000355.P471749541527324093

/-! ## A000355.P3995831367391135678

`p?[record[A087000(n+1)]]`
-/

namespace A000355.P3995831367391135678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087000 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A000355.P3995831367391135678

/-! ## A000355.P1393547270184750243

`p?[record[A240665(n+1)]]`
-/

namespace A000355.P1393547270184750243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240665 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A000355.P1393547270184750243

/-! ## A000355.P6555175501620260315

`p?[record[A238106(n+3)]]`
-/

namespace A000355.P6555175501620260315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238106 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A000355.P6555175501620260315

/-! ## A000355.P126495902991186745

`record[p?[A385222(n+3)]]`
-/

namespace A000355.P126495902991186745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385222 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000355.P126495902991186745

/-! ## A000355.P932887615179678718

`p?[record[A068958(n+4)]]`
-/

namespace A000355.P932887615179678718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068958 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A000355.P932887615179678718

/-! ## A000355.P5211183568655972576

`A006530(A000353(n+1)-1)`
-/

namespace A000355.P5211183568655972576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000353 (n + 1) - 1).toNat

end

end A000355.P5211183568655972576

/-! ## A000355.P18219518461108765001

`A014682(A000353(n+1)-1)`
-/

namespace A000355.P18219518461108765001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000353 (n + 1) - 1).toNat

end

end A000355.P18219518461108765001

/-! ## A000355.P3365361505298056326

`A000010(A000353(n+1)-1)+1`
-/

namespace A000355.P3365361505298056326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000353 (n + 1) - 1).toNat + 1

end

end A000355.P3365361505298056326

/-! ## A000355.P14375180975105453177

`A006530(A000010(A000353(n+1)))`
-/

namespace A000355.P14375180975105453177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A000353 (n + 1)).toNat).toNat

end

end A000355.P14375180975105453177

/-! ## A000355.P11868909996193841809

`A000217(A000353(n+1)-1)/A000353(n+1)`
-/

namespace A000355.P11868909996193841809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A000353 (n + 1) - 1).toNat : ℚ) / (A000353 (n + 1) : ℚ)

end

end A000355.P11868909996193841809

/-! ## A000355.P11779089525014060795

`(A000353(n+1)-A060576(A044385(n+1)))/2`
-/

namespace A000355.P11779089525014060795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000353 (n + 1) - A060576 (A044385 (n + 1)).toNat : ℚ) / 2

end

end A000355.P11779089525014060795

/-!
# A000356: Number of rooted cubic maps with 2n nodes and a distinguished Hamiltonian cycle: (2n)!(2n+1)! / (n!^2*(n+1)!(n+2)!).

The programs for A000356, the canonical program `A000356.P12493363725147780613` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000356 has offset 1).

The definition of A000356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000356.P12493363725147780613

`(2*(n+1))!*(2*(n+1)+1)!/((n+1)!²*(n+2)!*(n+3)!)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000356

/-- `(2*(n+1))!*(2*(n+1)+1)!/((n+1)!²*(n+2)!*(n+3)!)` -/
def P12493363725147780613.Spec : Prop :=
  ∀ n, P12493363725147780613.a n = (A000356 (n + 1) : ℚ)

end A000356

/-! ## A000356.P8997501929074562665

`A234040(n+1)*A234040(n)`
-/

namespace A000356.P8997501929074562665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234040 (n + 1) * A234040 n

end

end A000356.P8997501929074562665

namespace A000356

/-- `A234040(n+1)*A234040(n)` -/
def P8997501929074562665.Spec : Prop :=
  ∀ n, P8997501929074562665.a n = A000356 (n + 1)

end A000356

/-! ## A000356.P16680360701657461733

`∏[A002054(n+1)/A088218(n)]`
-/

namespace A000356.P16680360701657461733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002054 (n + 1) : ℚ) / (A088218 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A000356.P16680360701657461733

namespace A000356

/-- `∏[A002054(n+1)/A088218(n)]` -/
def P16680360701657461733.Spec : Prop :=
  ∀ n, P16680360701657461733.a n = (A000356 (n + 1) : ℚ)

end A000356

/-! ## A000356.P915157629222518473

`A000108(n+1)/2*A000108(n+2)`
-/

namespace A000356.P915157629222518473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / 2 * (A000108 (n + 2) : ℚ)

end

end A000356.P915157629222518473

namespace A000356

/-- `A000108(n+1)/2*A000108(n+2)` -/
def P915157629222518473.Spec : Prop :=
  ∀ n, P915157629222518473.a n = (A000356 (n + 1) : ℚ)

end A000356

/-! ## A000356.P10004018253031615944

`A001246(n+1)+n/3*A186264(n)`
-/

namespace A000356.P10004018253031615944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001246 (n + 1) : ℚ) + (n : ℚ) / 3 * (A186264 n : ℚ)

end

end A000356.P10004018253031615944

namespace A000356

/-- `A001246(n+1)+n/3*A186264(n)` -/
def P10004018253031615944.Spec : Prop :=
  ∀ n, P10004018253031615944.a n = (A000356 (n + 1) : ℚ)

end A000356

/-! ## A000356.P17427550444479233455

`A000984(n+1)/A046092(n+2)*A000984(n+2)`
-/

namespace A000356.P17427550444479233455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) / (A046092 (n + 2) : ℚ) * (A000984 (n + 2) : ℚ)

end

end A000356.P17427550444479233455

namespace A000356

/-- `A000984(n+1)/A046092(n+2)*A000984(n+2)` -/
def P17427550444479233455.Spec : Prop :=
  ∀ n, P17427550444479233455.a n = (A000356 (n + 1) : ℚ)

end A000356

/-! ## A000356.P16902365298547026991

`A005568(n+1)/2`
-/

namespace A000356.P16902365298547026991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005568 (n + 1) : ℚ) / 2

end

end A000356.P16902365298547026991

namespace A000356

/-- `A005568(n+1)/2` -/
def P16902365298547026991.Spec : Prop :=
  ∀ n, P16902365298547026991.a n = (A000356 (n + 1) : ℚ)

end A000356

/-! ## A000356.P12148566487180558097

`A005817(2*(n+1))/2`
-/

namespace A000356.P12148566487180558097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005817 (2 * (n + 1)) : ℚ) / 2

end

end A000356.P12148566487180558097

namespace A000356

/-- `A005817(2*(n+1))/2` -/
def P12148566487180558097.Spec : Prop :=
  ∀ n, P12148566487180558097.a n = (A000356 (n + 1) : ℚ)

end A000356

/-! ## A000356.P615827437741775602

`A302093(2*(n+1))/2`
-/

namespace A000356.P615827437741775602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302093 (2 * (n + 1)) : ℚ) / 2

end

end A000356.P615827437741775602

namespace A000356

/-- `A302093(2*(n+1))/2` -/
def P615827437741775602.Spec : Prop :=
  ∀ n, P615827437741775602.a n = (A000356 (n + 1) : ℚ)

end A000356

/-! ## A000356.P6284304042182461075

`A052175((n+1)²)/2`
-/

namespace A000356.P6284304042182461075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052175 ((n + 1) ^ 2) : ℚ) / 2

end

end A000356.P6284304042182461075

namespace A000356

/-- `A052175((n+1)²)/2` -/
def P6284304042182461075.Spec : Prop :=
  ∀ n, P6284304042182461075.a n = (A000356 (n + 1) : ℚ)

end A000356

/-!
# A000357: Number of 5-level labeled rooted trees with n leaves.

The programs for A000357, there is no canonical definition to state claims against.
-/

/-! ## A000357.P13757342350547556795

`A039813(∑[abs(1-n)])`
-/

namespace A000357.P13757342350547556795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039813 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000357.P13757342350547556795

/-! ## A000357.P14052122900792613744

`A144150(A052905(n+2))`
-/

namespace A000357.P14052122900792613744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A052905 (n + 2)).toNat

end

end A000357.P14052122900792613744

/-! ## A000357.P452228863646395591

`A144150(eq[3, A212551(n)])`
-/

namespace A000357.P452228863646395591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000357.P452228863646395591

/-! ## A000357.P3384531079314297199

`A144150(eq[4, A025581(n)])`
-/

namespace A000357.P3384531079314297199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000357.P3384531079314297199

/-! ## A000357.P8435871954106843801

`A144150(Δ[A055831(n+4)])`
-/

namespace A000357.P8435871954106843801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (f1 (n + 1) - f1 n).toNat

end

end A000357.P8435871954106843801

/-! ## A000357.P265481112466719811

`A144150(A000217(n+5)-5)`
-/

namespace A000357.P265481112466719811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A000217 (n + 5) - 5).toNat

end

end A000357.P265481112466719811

/-! ## A000357.P8344888471298371845

`A144150(A000124(n+5)-6)`
-/

namespace A000357.P8344888471298371845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A000124 (n + 5) - 6).toNat

end

end A000357.P8344888471298371845

/-! ## A000357.P458730720995613828

`A144150(A167487(n)+A016825(n))`
-/

namespace A000357.P458730720995613828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A167487 n + A016825 n).toNat

end

end A000357.P458730720995613828

/-!
# A000358: Number of binary necklaces of length n with no subsequence 00, excluding the necklace "0".

The programs for A000358, there is no canonical definition to state claims against.
-/

/-! ## A000358.P7405128074083719582

`A032190(n+1)+1`
-/

namespace A000358.P7405128074083719582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (n + 1) + 1

end

end A000358.P7405128074083719582

/-! ## A000358.P12025888969014246484

`A274017(n+1)-1`
-/

namespace A000358.P12025888969014246484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274017 (n + 1) - 1

end

end A000358.P12025888969014246484

/-! ## A000358.P17174165661650489687

`∑{d}[n+1, A006206(#)]`
-/

namespace A000358.P17174165661650489687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006206 d

end

end A000358.P17174165661650489687

/-! ## A000358.P14966319372113009191

`A032189(n+1)+A000035(n)`
-/

namespace A000358.P14966319372113009191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 (n + 1) + A000035 n

end

end A000358.P14966319372113009191

/-! ## A000358.P6073849751300288105

`A059841(n+1)+A032189(n+1)`
-/

namespace A000358.P6073849751300288105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A032189 (n + 1)

end

end A000358.P6073849751300288105

/-! ## A000358.P13032259254182003395

`A316660(n+1)+A011655(n+1)`
-/

namespace A000358.P13032259254182003395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316660 (n + 1) + A011655 (n + 1)

end

end A000358.P13032259254182003395

/-! ## A000358.P4421116604761564402

`A208773(n+1)-A208723(n+1)`
-/

namespace A000358.P4421116604761564402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208773 (n + 1) - A208723 (n + 1)

end

end A000358.P4421116604761564402

/-! ## A000358.P17665858996769350037

`A322057(∑[n+2])`
-/

namespace A000358.P17665858996769350037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000358.P17665858996769350037

/-!
# A000359: Coefficients of iterated exponentials.

The programs for A000359, there is no canonical definition to state claims against.
-/

/-! ## A000359.P909859488916230731

`abs(A039817(∑[n]+1))`
-/

namespace A000359.P909859488916230731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039817 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A000359.P909859488916230731

/-! ## A000359.P3696239183284178732

`lcm(A039817(A000124(n)), A309873(n+1))`
-/

namespace A000359.P3696239183284178732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039817 (A000124 n).toNat) (A309873 (n + 1))

end

end A000359.P3696239183284178732

/-! ## A000359.P4655779533039225781

`A111933(A046691(n+3))`
-/

namespace A000359.P4655779533039225781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (A046691 (n + 3)).toNat

end

end A000359.P4655779533039225781

/-! ## A000359.P11818409937903896219

`A111933(eq[4, A193592(n)])`
-/

namespace A000359.P11818409937903896219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000359.P11818409937903896219

/-! ## A000359.P11421672489612420134

`A111933(A152947(n+7)-5)`
-/

namespace A000359.P11421672489612420134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (A152947 (n + 7) - 5).toNat

end

end A000359.P11421672489612420134

/-! ## A000359.P13456921446180145715

`A111933(A005449(n+3)-(n+2)²)`
-/

namespace A000359.P13456921446180145715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (A005449 (n + 3) - ((n + 2) ^ 2 : ℤ)).toNat

end

end A000359.P13456921446180145715

/-! ## A000359.P6225495248866548682

`A111933(A167614(n+2)+A005843(n+1))`
-/

namespace A000359.P6225495248866548682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (A167614 (n + 2) + A005843 (n + 1)).toNat

end

end A000359.P6225495248866548682

/-!
# A000360: Distribution of nonempty triangles inside a fractal rep-4-tile.

The programs for A000360, the canonical program `A000360.P16123140622544761321` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000360 has offset 0).

The definition of A000360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000360.P16123140622544761321

`A002487(1+n)-A284556(1+n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A000360

/-- `A002487(1+n)-A284556(1+n)` -/
def P16123140622544761321.Spec : Prop :=
  ∀ n, P16123140622544761321.a n = A000360 n

theorem P16123140622544761321.correct : P16123140622544761321.Spec := by
  intro n
  simp only [A000360]

end A000360

/-! ## A000360.P15220427072722605733

`A001222(A284553(1+n))`
-/

namespace A000360.P15220427072722605733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284553 (1 + n)).toNat

end

end A000360.P15220427072722605733

namespace A000360

/-- `A001222(A284553(1+n))` -/
def P15220427072722605733.Spec : Prop :=
  ∀ n, P15220427072722605733.a n = A000360 n

end A000360

/-! ## A000360.P1202141418822891919

`A284565(n)-a(n-1)` with `a(0)=1`
-/

namespace A000360.P1202141418822891919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284565 n - a (n - 1)

end

end A000360.P1202141418822891919

namespace A000360

/-- `A284565(n)-a(n-1)` -/
def P1202141418822891919.Spec : Prop :=
  ∀ n, P1202141418822891919.a n = A000360 n

end A000360

/-! ## A000360.P3665382351180734112

`(A049347(n)+A002487(n+1))/2`
-/

namespace A000360.P3665382351180734112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 n + A002487 (n + 1) : ℚ) / 2

end

end A000360.P3665382351180734112

namespace A000360

/-- `(A049347(n)+A002487(n+1))/2` -/
def P3665382351180734112.Spec : Prop :=
  ∀ n, P3665382351180734112.a n = (A000360 n : ℚ)

end A000360

/-! ## A000360.P2804832164960789549

`A284556(n)+A284565(n)-A002487(n)`
-/

namespace A000360.P2804832164960789549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 n + (A284565 n - A002487 n)

end

end A000360.P2804832164960789549

namespace A000360

/-- `A284556(n)+A284565(n)-A002487(n)` -/
def P2804832164960789549.Spec : Prop :=
  ∀ n, P2804832164960789549.a n = A000360 n

end A000360

/-! ## A000360.P14163164531461217800

`A284556(n+1)+A049347(n)`
-/

namespace A000360.P14163164531461217800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (n + 1) + A049347 n

end

end A000360.P14163164531461217800

namespace A000360

/-- `A284556(n+1)+A049347(n)` -/
def P14163164531461217800.Spec : Prop :=
  ∀ n, P14163164531461217800.a n = A000360 n

end A000360

/-! ## A000360.P8472027812893805783

`A284556(n+1)+A102283(n+1)`
-/

namespace A000360.P8472027812893805783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (n + 1) + A102283 (n + 1)

end

end A000360.P8472027812893805783

namespace A000360

/-- `A284556(n+1)+A102283(n+1)` -/
def P8472027812893805783.Spec : Prop :=
  ∀ n, P8472027812893805783.a n = A000360 n

end A000360

/-! ## A000360.P16449525112806939525

`A284556(n+1)-A057078(n+2)`
-/

namespace A000360.P16449525112806939525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (n + 1) - A057078 (n + 2)

end

end A000360.P16449525112806939525

namespace A000360

/-- `A284556(n+1)-A057078(n+2)` -/
def P16449525112806939525.Spec : Prop :=
  ∀ n, P16449525112806939525.a n = A000360 n

end A000360

/-! ## A000360.P15300833252788484912

`A110654(A102283(n+1)+A002487(n+1))`
-/

namespace A000360.P15300833252788484912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A102283 (n + 1) + A002487 (n + 1)).toNat

end

end A000360.P15300833252788484912

namespace A000360

/-- `A110654(A102283(n+1)+A002487(n+1))` -/
def P15300833252788484912.Spec : Prop :=
  ∀ n, P15300833252788484912.a n = A000360 n

end A000360

/-! ## A000360.P6284981852109156580

`A057078(n+1)+A284556(n+1)+A057078(n)`
-/

namespace A000360.P6284981852109156580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (n + 1) + (A284556 (n + 1) + A057078 n)

end

end A000360.P6284981852109156580

namespace A000360

/-- `A057078(n+1)+A284556(n+1)+A057078(n)` -/
def P6284981852109156580.Spec : Prop :=
  ∀ n, P6284981852109156580.a n = A000360 n

end A000360

/-! ## A000360.P742631355357053090

`A287729(n+1)+A287730(n+1)-A284556(n+1)`
-/

namespace A000360.P742631355357053090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (n + 1) + (A287730 (n + 1) - A284556 (n + 1))

end

end A000360.P742631355357053090

namespace A000360

/-- `A287729(n+1)+A287730(n+1)-A284556(n+1)` -/
def P742631355357053090.Spec : Prop :=
  ∀ n, P742631355357053090.a n = A000360 n

end A000360

/-! ## A000360.P15818341919617590824

`A284556(A054429(n+1)+1)`
-/

namespace A000360.P15818341919617590824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A054429 (n + 1) + 1).toNat

end

end A000360.P15818341919617590824

namespace A000360

/-- `A284556(A054429(n+1)+1)` -/
def P15818341919617590824.Spec : Prop :=
  ∀ n, P15818341919617590824.a n = A000360 n

end A000360

/-! ## A000360.P8181385050343952652

`A284556(A064680(n+1))`
-/

namespace A000360.P8181385050343952652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A064680 (n + 1)).toNat

end

end A000360.P8181385050343952652

namespace A000360

/-- `A284556(A064680(n+1))` -/
def P8181385050343952652.Spec : Prop :=
  ∀ n, P8181385050343952652.a n = A000360 n

end A000360

/-! ## A000360.P17802325015556750153

`A284556(A073675(n+1))`
-/

namespace A000360.P17802325015556750153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A073675 (n + 1)).toNat

end

end A000360.P17802325015556750153

namespace A000360

/-- `A284556(A073675(n+1))` -/
def P17802325015556750153.Spec : Prop :=
  ∀ n, P17802325015556750153.a n = A000360 n

end A000360

/-! ## A000360.P7035535009959273446

`A284556(A274611(n+1))`
-/

namespace A000360.P7035535009959273446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A274611 (n + 1)).toNat

end

end A000360.P7035535009959273446

namespace A000360

/-- `A284556(A274611(n+1))` -/
def P7035535009959273446.Spec : Prop :=
  ∀ n, P7035535009959273446.a n = A000360 n

end A000360

/-! ## A000360.P6610285046184576017

`A284565(2*n)-A002487(n)`
-/

namespace A000360.P6610285046184576017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 (2 * n) - A002487 n

end

end A000360.P6610285046184576017

namespace A000360

/-- `A284565(2*n)-A002487(n)` -/
def P6610285046184576017.Spec : Prop :=
  ∀ n, P6610285046184576017.a n = A000360 n

end A000360

/-! ## A000360.P11111144228700418475

`A284565(n)-A284556(2*n)`
-/

namespace A000360.P11111144228700418475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 n - A284556 (2 * n)

end

end A000360.P11111144228700418475

namespace A000360

/-- `A284565(n)-A284556(2*n)` -/
def P11111144228700418475.Spec : Prop :=
  ∀ n, P11111144228700418475.a n = A000360 n

end A000360

/-! ## A000360.P5793780358079485260

`A007306(n+1)-A284566(2*n)`
-/

namespace A000360.P5793780358079485260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (n + 1) - A284566 (2 * n)

end

end A000360.P5793780358079485260

namespace A000360

/-- `A007306(n+1)-A284566(2*n)` -/
def P5793780358079485260.Spec : Prop :=
  ∀ n, P5793780358079485260.a n = A000360 n

end A000360

/-! ## A000360.P9661152168902386150

`A284566(2*n+1)-A284566(n)`
-/

namespace A000360.P9661152168902386150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284566 (2 * n + 1) - A284566 n

end

end A000360.P9661152168902386150

namespace A000360

/-- `A284566(2*n+1)-A284566(n)` -/
def P9661152168902386150.Spec : Prop :=
  ∀ n, P9661152168902386150.a n = A000360 n

end A000360

/-! ## A000360.P12771723653007529211

`(A010892(2*n+1)+A002487(n+1))/2`
-/

namespace A000360.P12771723653007529211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010892 (2 * n + 1) + A002487 (n + 1) : ℚ) / 2

end

end A000360.P12771723653007529211

namespace A000360

/-- `(A010892(2*n+1)+A002487(n+1))/2` -/
def P12771723653007529211.Spec : Prop :=
  ∀ n, P12771723653007529211.a n = (A000360 n : ℚ)

end A000360

/-!
# A000362: Generalized class numbers c_(n,2).

The programs for A000362, there is no canonical definition to state claims against.
-/

/-! ## A000362.P16653467979300554877

`A235605(A167614(n+1))`
-/

namespace A000362.P16653467979300554877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (A167614 (n + 1)).toNat

end

end A000362.P16653467979300554877

/-! ## A000362.P8847337943798972567

`A235605(A167499(n)+n)`
-/

namespace A000362.P8847337943798972567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (A167499 n + (n : ℤ)).toNat

end

end A000362.P8847337943798972567

/-! ## A000362.P14206500306083252237

`A235605(A134869(n+2)+2)`
-/

namespace A000362.P14206500306083252237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (A134869 (n + 2) + 2).toNat

end

end A000362.P14206500306083252237

/-! ## A000362.P9178334908870755056

`A235605(eq[4, A131818(n+1)])`
-/

namespace A000362.P9178334908870755056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000362.P9178334908870755056

/-! ## A000362.P9370349126983166825

`A235605(A000217(n+3)-n)`
-/

namespace A000362.P9370349126983166825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235605 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A000362.P9370349126983166825

/-!
# A000363: Number of permutations of [n] with exactly 2 increasing runs of length at least 2.

The programs for A000363, the canonical program `A000363.P2544441615486606981` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000363 has offset 4).

The definition of A000363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000363.P2544441615486606981

`(5^(n+4)-(2*(n+4)-1)*3^(n+4)+2*(n+4)²-2*(n+4)-2)/16`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000363

/-- `(5^(n+4)-(2*(n+4)-1)*3^(n+4)+2*(n+4)²-2*(n+4)-2)/16` -/
def P2544441615486606981.Spec : Prop :=
  ∀ n, P2544441615486606981.a n = (A000363 (n + 4) : ℚ)

end A000363

/-! ## A000363.P8583279302227641146

`A008971(eq[2, A055087(n)])`
-/

namespace A000363.P8583279302227641146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008971 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000363.P8583279302227641146

namespace A000363

/-- `A008971(eq[2, A055087(n)])` -/
def P8583279302227641146.Spec : Prop :=
  ∀ n, P8583279302227641146.a n = A000363 (n + 4)

end A000363

/-! ## A000363.P16478234238800201038

`record[root(A008971(n+5), A008971(n+3))]`
-/

namespace A000363.P16478234238800201038
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008971 (n + 5) : ℝ) ^ (1 / (A008971 (n + 3) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000363.P16478234238800201038

namespace A000363

/-- `record[root(A008971(n+5), A008971(n+3))]` -/
def P16478234238800201038.Spec : Prop :=
  ∀ n, P16478234238800201038.a n = (A000363 (n + 4) : ℝ)

end A000363

/-!
# A000364: Euler (or secant or "Zig") numbers: e.g.f. (even powers only) sec(x) = 1/cos(x).

The programs for A000364, there is no canonical definition to state claims against.
-/

/-! ## A000364.P13757137637022777810

`abs(A028296(n))`
-/

namespace A000364.P13757137637022777810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028296 n|

end

end A000364.P13757137637022777810

/-! ## A000364.P5271471626000802271

`A125053(n²)`
-/

namespace A000364.P5271471626000802271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (n ^ 2)

end

end A000364.P5271471626000802271

/-! ## A000364.P12412740663772027962

`A060074(∑[n])`
-/

namespace A000364.P12412740663772027962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000364.P12412740663772027962

/-! ## A000364.P1792611541250495322

`A086646(∑[n])`
-/

namespace A000364.P1792611541250495322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086646 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000364.P1792611541250495322

/-! ## A000364.P15505046471715085683

`A210111(∑[n])`
-/

namespace A000364.P15505046471715085683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210111 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000364.P15505046471715085683

/-!
# A000365: Number of genus 0 rooted planar maps with 4 faces and n vertices.

The programs for A000365, there is no canonical definition to state claims against.
-/

/-! ## A000365.P6964839399242925923

`A269920(∑[n+3]+6)`
-/

namespace A000365.P6964839399242925923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269920 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A000365.P6964839399242925923

/-! ## A000365.P10775009298687864879

`or(A108563(n²), A269920(A000217(n+4)-4))`
-/

namespace A000365.P10775009298687864879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108563 (n ^ 2)) (A269920 (A000217 (n + 4) - 4).toNat)

end

end A000365.P10775009298687864879

/-! ## A000365.P1790534149287400463

`lcm(A105609(2*n), A269920(A000217(n+4)-4))`
-/

namespace A000365.P1790534149287400463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105609 (2 * n)) (A269920 (A000217 (n + 4) - 4).toNat)

end

end A000365.P1790534149287400463

/-! ## A000365.P1869946470622313815

`A057979(2*n)*A269920(A000217(n+3)+n)`
-/

namespace A000365.P1869946470622313815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A269920 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A000365.P1869946470622313815

/-! ## A000365.P7289135731340869798

`A189723(3*(n+1))*A269920(A000217(n+3)+n)`
-/

namespace A000365.P7289135731340869798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (3 * (n + 1)) * A269920 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A000365.P7289135731340869798

/-! ## A000365.P17227173395006606197

`A057427(A050320(n+1)²)*A269920(A000217(n+3)+n)`
-/

namespace A000365.P17227173395006606197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A050320 (n + 1) ^ 2).toNat * A269920 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A000365.P17227173395006606197

/-!
# A000366: Genocchi numbers of second kind (A005439) divided by 2^(n-1).

The programs for A000366, there is no canonical definition to state claims against.
-/

/-! ## A000366.P18183482798639906473

`A014784(∑[n])`
-/

namespace A000366.P18183482798639906473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000366.P18183482798639906473

/-! ## A000366.P15155990106557900481

`A211183(∑[n+1]+1)`
-/

namespace A000366.P15155990106557900481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211183 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000366.P15155990106557900481

/-! ## A000366.P1033283174883724741

`A000034(2*n)*A014784(A000217(n))`
-/

namespace A000366.P1033283174883724741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A014784 (A000217 n).toNat

end

end A000366.P1033283174883724741

/-! ## A000366.P14649717608216977016

`lcm(A014784(A179865(n+1)), A033999(n))`
-/

namespace A000366.P14649717608216977016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014784 (A179865 (n + 1)).toNat) (A033999 n)

end

end A000366.P14649717608216977016

/-! ## A000366.P9281503264844759166

`round(A054348(n)/2)*A014784(A000217(n))`
-/

namespace A000366.P9281503264844759166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A054348 n : ℚ) / 2) * A014784 (A000217 n).toNat

end

end A000366.P9281503264844759166

/-! ## A000366.P17238926639227367552

`A309873(n+1)²*A014784(A179865(n+1))`
-/

namespace A000366.P17238926639227367552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) ^ 2 * A014784 (A179865 (n + 1)).toNat

end

end A000366.P17238926639227367552

/-! ## A000366.P15812742826401609354

`A014784(A179865(n+1))*A309873(A056710(n+1))`
-/

namespace A000366.P15812742826401609354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014784 (A179865 (n + 1)).toNat * A309873 (A056710 (n + 1)).toNat

end

end A000366.P15812742826401609354

/-! ## A000366.P16071720241506395313

`A014784(A179865(n+1))*A309873(A163096(n+1))`
-/

namespace A000366.P16071720241506395313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014784 (A179865 (n + 1)).toNat * A309873 (A163096 (n + 1)).toNat

end

end A000366.P16071720241506395313

/-!
# A000367: Numerators of Bernoulli numbers B_2n.

The programs for A000367, there is no canonical definition to state claims against.
-/

/-! ## A000367.P9877332166620193456

`A027641(2*n)`
-/

namespace A000367.P9877332166620193456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (2 * n)

end

end A000367.P9877332166620193456

/-! ## A000367.P13854065485471489010

`A164555(2*n)`
-/

namespace A000367.P13854065485471489010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 (2 * n)

end

end A000367.P13854065485471489010

/-! ## A000367.P16278851090163598916

`A176327(2*n)`
-/

namespace A000367.P16278851090163598916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 (2 * n)

end

end A000367.P16278851090163598916

/-! ## A000367.P8687360554406291159

`A162298(n*Δ[n²])`
-/

namespace A000367.P8687360554406291159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162298 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A000367.P8687360554406291159

/-! ## A000367.P4570977980138843339

`-A051716(2*n+1)`
-/

namespace A000367.P4570977980138843339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A051716 (2 * n + 1)

end

end A000367.P4570977980138843339

/-! ## A000367.P4245042802740659690

`A111008(n)*A141590(n)`
-/

namespace A000367.P4245042802740659690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111008 n * A141590 n

end

end A000367.P4245042802740659690

/-! ## A000367.P2176704115413894182

`A257935(2*n)+A228838(n)`
-/

namespace A000367.P2176704115413894182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257935 (2 * n) + A228838 n

end

end A000367.P2176704115413894182

/-! ## A000367.P5308464353187601480

`A164558(2*n)-A164877(n)`
-/

namespace A000367.P5308464353187601480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164558 (2 * n) - A164877 n

end

end A000367.P5308464353187601480

/-! ## A000367.P14460217169215402669

`A000007(n+1)-A051716(2*n+1)`
-/

namespace A000367.P14460217169215402669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A051716 (2 * n + 1)

end

end A000367.P14460217169215402669

/-! ## A000367.P8044917937498640310

`A063524(n+2)-A051716(2*n+1)`
-/

namespace A000367.P8044917937498640310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 2) - A051716 (2 * n + 1)

end

end A000367.P8044917937498640310

/-!
# A000368: Number of connected graphs with one cycle of length 4.

The programs for A000368, there is no canonical definition to state claims against.
-/

/-! ## A000368.P13462397133035210489

`A058879(∑[n+1]+n+3)`
-/

namespace A000368.P13462397133035210489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058879 (∑ j ∈ Finset.range (n + 1), f1 j + n + 3)

end

end A000368.P13462397133035210489

/-! ## A000368.P17297236320411611953

`A217781(A052905(n)+9)`
-/

namespace A000368.P17297236320411611953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217781 (A052905 n + 9).toNat

end

end A000368.P17297236320411611953

/-! ## A000368.P2624736049353177332

`A217781(A055999(n)+10)`
-/

namespace A000368.P2624736049353177332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217781 (A055999 n + 10).toNat

end

end A000368.P2624736049353177332

/-! ## A000368.P18312571817964689328

`A217781(Δ[A008778(n)]+6)`
-/

namespace A000368.P18312571817964689328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217781 (f1 (n + 1) - f1 n + 6).toNat

end

end A000368.P18312571817964689328

/-! ## A000368.P1519964168001295723

`A217781(A167614(n+2)+1)`
-/

namespace A000368.P1519964168001295723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217781 (A167614 (n + 2) + 1).toNat

end

end A000368.P1519964168001295723

/-!
# A000369: Triangle of numbers related to triangle A049213; generalization of Stirling numbers of second kind A008277, Bessel triangle A001497.

The programs for A000369, there is no canonical definition to state claims against.
-/

/-! ## A000369.P7000222771442890747

`A143173(A024647(n+1))`
-/

namespace A000369.P7000222771442890747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143173 (A024647 (n + 1)).toNat

end

end A000369.P7000222771442890747

/-! ## A000369.P11885304869562298763

`A143173(A024648(n+1))`
-/

namespace A000369.P11885304869562298763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143173 (A024648 (n + 1)).toNat

end

end A000369.P11885304869562298763

/-! ## A000369.P14516106110478373888

`A143173(A024649(n+1))`
-/

namespace A000369.P14516106110478373888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143173 (A024649 (n + 1)).toNat

end

end A000369.P14516106110478373888

/-!
# A000370: Number of NPN-equivalence classes of Boolean functions of n or fewer variables.

The programs for A000370, there is no canonical definition to state claims against.
-/

/-! ## A000370.P17603374431940033309

`∑[A000618(n)-A317795(n)]`
-/

namespace A000370.P17603374431940033309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000618 n - A317795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000370.P17603374431940033309

/-! ## A000370.P17398844746580752430

`∑[A000618(n)]-A317794(n)`
-/

namespace A000370.P17398844746580752430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A317794 n

end

end A000370.P17398844746580752430

/-!
# A000371: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(n,k)*2^(2^k).

The programs for A000371, there is no canonical definition to state claims against.
-/

/-! ## A000371.P7261793959946502696

`2*A003465(n)`
-/

namespace A000371.P7261793959946502696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003465 n

end

end A000371.P7261793959946502696

/-! ## A000371.P5010455224857689118

`and(-2, A318130(n))`
-/

namespace A000371.P5010455224857689118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A318130 n)

end

end A000371.P5010455224857689118

/-! ## A000371.P5695627719690398342

`2*A054244(or(1, 2^n-1))`
-/

namespace A000371.P5695627719690398342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054244 (Int.lor 1 ((2 ^ n : ℤ) - 1)).toNat

end

end A000371.P5695627719690398342

/-! ## A000371.P18111088542514148654

`2*A054244(∑[a(floor((n+1)/n))^n])` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A000371.P18111088542514148654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / (n : ℚ)⌋.toNat ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000371.P18111088542514148654

/-! ## A000371.P16871590282756248404

`2*A054244(A255047(n))`
-/

namespace A000371.P16871590282756248404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054244 (A255047 n).toNat

end

end A000371.P16871590282756248404

/-!
# A000372: Dedekind numbers or Dedekind's problem: number of monotone Boolean functions of n variables, number of antichains of subsets of an n-set, number of elements in a free distributive lattice on n generators, number of Sperner families.

The programs for A000372, there is no canonical definition to state claims against.
-/

/-! ## A000372.P149573013084246106

`A132581(2^n)`
-/

namespace A000372.P149573013084246106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132581 (2 ^ n)

end

end A000372.P149573013084246106

/-! ## A000372.P13744661115926372639

`A132582(3*2^n-1)`
-/

namespace A000372.P13744661115926372639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132582 (3 * 2 ^ n - 1)

end

end A000372.P13744661115926372639

/-! ## A000372.P478855869837624789

`A014466(n)+1`
-/

namespace A000372.P478855869837624789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 n + 1

end

end A000372.P478855869837624789

/-! ## A000372.P14892523860557403870

`A007153(n)+2`
-/

namespace A000372.P14892523860557403870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007153 n + 2

end

end A000372.P14892523860557403870

/-! ## A000372.P2020063532222560746

`abs(A014466(n)-A321800(n))`
-/

namespace A000372.P2020063532222560746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014466 n - A321800 n|

end

end A000372.P2020063532222560746

/-!
# A000373: Conjectured dimension of a module associated with the free commutative Moufang loop with n generators.

The programs for A000373, there is no canonical definition to state claims against.
-/

/-! ## A000373.P17686508017822372342

`floor(∑[A024912(4^n)-n]/23)`
-/

namespace A000373.P17686508017822372342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (4 ^ n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 23⌋

end

end A000373.P17686508017822372342

/-! ## A000373.P8742738829753903932

`A002265(A284076(n+2))`
-/

namespace A000373.P8742738829753903932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A284076 (n + 2)).toNat

end

end A000373.P8742738829753903932

/-! ## A000373.P5908167445695019089

`A057354(A150799(n)-A000292(n))`
-/

namespace A000373.P5908167445695019089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A150799 n - A000292 n).toNat

end

end A000373.P5908167445695019089

/-!
# A000374: Number of cycles (mod n) under doubling map.

The programs for A000374, there is no canonical definition to state claims against.
-/

/-! ## A000374.P15009022874768135218

`A091248(floor(n/2^val(n+1, 2))+1)`
-/

namespace A000374.P15009022874768135218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 1).toNat

end

end A000374.P15009022874768135218

/-! ## A000374.P1979275986521316756

`A081844(A025480(n))`
-/

namespace A000374.P1979275986521316756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 (A025480 n).toNat

end

end A000374.P1979275986521316756

/-! ## A000374.P2241974261756203642

`A091248(A000265(n+1))`
-/

namespace A000374.P2241974261756203642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 (A000265 (n + 1)).toNat

end

end A000374.P2241974261756203642

/-! ## A000374.P12262881955802264395

`A081844((A000265(n+1)-1)/2)`
-/

namespace A000374.P12262881955802264395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 (SequenceMachineLib.roundAway ((A000265 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A000374.P12262881955802264395

/-! ## A000374.P14116234908681741359

`A091248((n+1)/A006519(n+1))`
-/

namespace A000374.P14116234908681741359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A000374.P14116234908681741359

/-! ## A000374.P5337442947617821011

`∑{d}[n+1, A088705(#)*A318622((n+1)/#)]`
-/

namespace A000374.P5337442947617821011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A318622 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A000374.P5337442947617821011

/-! ## A000374.P3605496123662973507

`A348888(A005893(n+1)-n)`
-/

namespace A000374.P3605496123662973507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A005893 (n + 1) - (n : ℤ)).toNat

end

end A000374.P3605496123662973507

/-! ## A000374.P6667149981976006888

`A348888(A271624(n+2)-n)`
-/

namespace A000374.P6667149981976006888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A271624 (n + 2) - (n : ℤ)).toNat

end

end A000374.P6667149981976006888

/-! ## A000374.P4406258838585403505

`A348888(A000124(2*n+1)+2)`
-/

namespace A000374.P4406258838585403505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A000124 (2 * n + 1) + 2).toNat

end

end A000374.P4406258838585403505

/-!
# A000375: Topswops (1): start by shuffling n cards labeled 1..n. If top card is m, reverse order of top m cards, then repeat. a(n) is the maximal number of steps before top card is 1.

The programs for A000375, there is no canonical definition to state claims against.
-/

/-! ## A000375.P14037047720527916094

`A114511(A001269(n))+A000376(n+1)`
-/

namespace A000375.P14037047720527916094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114511 (A001269 n).toNat + A000376 (n + 1)

end

end A000375.P14037047720527916094

/-! ## A000375.P3713838735350960823

`A000376(n+1)+A000376(A213001(n+2))`
-/

namespace A000375.P3713838735350960823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000376 (n + 1) + A000376 (A213001 (n + 2)).toNat

end

end A000375.P3713838735350960823

/-! ## A000375.P8159384000270993713

`A000376(∏{p}[n+1, #]^∏{e}[n+1, #])`
-/

namespace A000375.P8159384000270993713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000376 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A000375.P8159384000270993713

/-! ## A000375.P4580342736605414405

`A000376(A062399(n)+1)`
-/

namespace A000375.P4580342736605414405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000376 (A062399 n + 1).toNat

end

end A000375.P4580342736605414405

/-! ## A000375.P1181125406698292537

`A000376(A276633(n)+1)`
-/

namespace A000375.P1181125406698292537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000376 (A276633 n + 1).toNat

end

end A000375.P1181125406698292537

/-!
# A000376: Topswops (2): start by shuffling n cards labeled 1..n. If the top card is m, reverse the order of the top m cards. Repeat until 1 gets to the top, then stop. Suppose the whole deck is now sorted (if not, discard this case). a(n) is the maximal number of steps before 1 got to the top.

The programs for A000376, there is no canonical definition to state claims against.
-/

/-! ## A000376.P14304770031122383980

`A000375(n+1)-A000375(A213001(n+2))`
-/

namespace A000376.P14304770031122383980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000375 (n + 1) - A000375 (A213001 (n + 2)).toNat

end

end A000376.P14304770031122383980

/-!
# A000377: Expansion of f(-q^3) * f(-q^8) * chi(-q^12) / chi(-q) in powers of q where chi(), f() are Ramanujan theta functions.

The programs for A000377, there is no canonical definition to state claims against.
-/

/-! ## A000377.P4615283456179476486

`(-1)^n*A190611(n)`
-/

namespace A000377.P4615283456179476486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A190611 n

end

end A000377.P4615283456179476486

/-! ## A000377.P17733243244299969078

`abs(A190611(n))`
-/

namespace A000377.P17733243244299969078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190611 n|

end

end A000377.P17733243244299969078

/-! ## A000377.P15702380513080608143

`abs(A261122(n))`
-/

namespace A000377.P15702380513080608143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261122 n|

end

end A000377.P15702380513080608143

/-! ## A000377.P184209413050086787

`A192013(C(2, n)+n)`
-/

namespace A000377.P184209413050086787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (Nat.choose 2 n + n)

end

end A000377.P184209413050086787

/-! ## A000377.P7812396721430595414

`A192013(char[n^14]+n)`
-/

namespace A000377.P7812396721430595414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A000377.P7812396721430595414

/-! ## A000377.P15486484111835021043

`A087960(n)*A261122(n)`
-/

namespace A000377.P15486484111835021043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A261122 n

end

end A000377.P15486484111835021043

/-! ## A000377.P558883388614586302

`gcd(A000038(n), A190611(n))`
-/

namespace A000377.P558883388614586302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A190611 n)

end

end A000377.P558883388614586302

/-! ## A000377.P6480026485777549779

`lcm(A020985(n), A190611(n))`
-/

namespace A000377.P6480026485777549779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A190611 n)

end

end A000377.P6480026485777549779

/-! ## A000377.P18083846458268332025

`lcm(A057077(n), A261122(n))`
-/

namespace A000377.P18083846458268332025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A261122 n)

end

end A000377.P18083846458268332025

/-! ## A000377.P11933148732102048571

`∑{d}[A190611(n), A000010(#)]`
-/

namespace A000377.P11933148732102048571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A000377.P11933148732102048571

/-! ## A000377.P18307126560283055310

`(A108563(n)+A046113(n))/2`
-/

namespace A000377.P18307126560283055310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108563 n + A046113 n : ℚ) / 2

end

end A000377.P18307126560283055310

/-! ## A000377.P4917578378930917064

`A057077(n+1)*A261122(n)`
-/

namespace A000377.P4917578378930917064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A261122 n

end

end A000377.P4917578378930917064

/-! ## A000377.P6859425714031384637

`A190611(lcm(2, n))`
-/

namespace A000377.P6859425714031384637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (Nat.lcm 2 n)

end

end A000377.P6859425714031384637

/-! ## A000377.P3265453253460956134

`A190611(A109043(n))`
-/

namespace A000377.P3265453253460956134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (A109043 n).toNat

end

end A000377.P3265453253460956134

/-! ## A000377.P14103060967438837631

`A190611(2*n)`
-/

namespace A000377.P14103060967438837631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (2 * n)

end

end A000377.P14103060967438837631

/-! ## A000377.P10712558704965012784

`A261122(A266491(2*n))`
-/

namespace A000377.P10712558704965012784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (A266491 (2 * n)).toNat

end

end A000377.P10712558704965012784

/-! ## A000377.P12776308000697099973

`A261122(4*n)`
-/

namespace A000377.P12776308000697099973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (4 * n)

end

end A000377.P12776308000697099973

/-! ## A000377.P281231942172582704

`gcd(A003245(n), A261122(n))`
-/

namespace A000377.P281231942172582704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003245 n) (A261122 n)

end

end A000377.P281231942172582704

/-!
# A000378: Sums of three squares: numbers of the form x^2 + y^2 + z^2.

The programs for A000378, there is no canonical definition to state claims against.
-/

/-! ## A000378.P18024739814459393149

`lt[A002828(n), 4]`
-/

namespace A000378.P18024739814459393149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A000378.P18024739814459393149

/-! ## A000378.P18250747833215502297

`comp[A004215(n+1)]`
-/

namespace A000378.P18250747833215502297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000378.P18250747833215502297

/-! ## A000378.P6053767237509253863

`A034045(n+1)/4`
-/

namespace A000378.P6053767237509253863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034045 (n + 1) : ℚ) / 4

end

end A000378.P6053767237509253863

/-! ## A000378.P13307199758910141487

`∪[A214329(n+1), n²]`
-/

namespace A000378.P13307199758910141487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A000378.P13307199758910141487

/-! ## A000378.P13345005823836573761

`A125084(n+1)^(1/3)`
-/

namespace A000378.P13345005823836573761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A125084 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A000378.P13345005823836573761

/-! ## A000378.P3721091958683034535

`∪[A042963(n+1), A004014(n)]`
-/

namespace A000378.P3721091958683034535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000378.P3721091958683034535

/-! ## A000378.P16741733088087673263

`∪[A047449(n+1), A004014(n)]`
-/

namespace A000378.P16741733088087673263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004014 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000378.P16741733088087673263

/-! ## A000378.P13604143956577679561

`∪[A267312(n+1), A003714(n)]`
-/

namespace A000378.P13604143956577679561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000378.P13604143956577679561

/-! ## A000378.P8795997842844238873

`∪[A047449(n+1), A034043(n+1)]`
-/

namespace A000378.P8795997842844238873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000378.P8795997842844238873

/-! ## A000378.P2138977643982699511

`eq[0, A064873(n)]`
-/

namespace A000378.P2138977643982699511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000378.P2138977643982699511

/-! ## A000378.P12828272305843776295

`eq[0, A072401(n)]`
-/

namespace A000378.P12828272305843776295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000378.P12828272305843776295

/-! ## A000378.P9650408993568414287

`lt[0, A000164(n)]`
-/

namespace A000378.P9650408993568414287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000378.P9650408993568414287

/-! ## A000378.P16848525824543678421

`lt[0, A002102(n)]`
-/

namespace A000378.P16848525824543678421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000378.P16848525824543678421

/-! ## A000378.P4583025961010683355

`lt[0, A283273(n)]`
-/

namespace A000378.P4583025961010683355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000378.P4583025961010683355

/-! ## A000378.P9515641322897962102

`lt[0, A261904(n)+1]`
-/

namespace A000378.P9515641322897962102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000378.P9515641322897962102

/-! ## A000378.P9609975913695430321

`lt[0, A261915(n)+1]`
-/

namespace A000378.P9609975913695430321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A000378.P9609975913695430321

/-! ## A000378.P10504328674979301032

`eq[1, A002828(A000164(n)²)]`
-/

namespace A000378.P10504328674979301032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A000164 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000378.P10504328674979301032

/-! ## A000378.P9796477701073513783

`eq[1, A071374(n)]`
-/

namespace A000378.P9796477701073513783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000378.P9796477701073513783

/-! ## A000378.P1518085748871548896

`eq[A064874(n), A375202(n)]`
-/

namespace A000378.P1518085748871548896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375202 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A000378.P1518085748871548896

/-!
# A000379: Numbers where total number of 1-bits in the exponents of their prime factorization is even; a 2-way classification of integers: complement of A000028.

The programs for A000379, the canonical program `A000379.P2146762870191125064` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000379 has offset 1).

The definition of A000379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000379.P2146762870191125064

`eq[1, A064179(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A000379

/-- `eq[1, A064179(n+1)]+1` -/
def P2146762870191125064.Spec : Prop :=
  ∀ n, (P2146762870191125064.a n : ℤ) = A000379 (n + 1)

theorem P2146762870191125064.correct : P2146762870191125064.Spec := by
  intro n
  simp only [A000379, Nat.add_sub_cancel]

end A000379

/-! ## A000379.P7430934202595724217

`comp[A000028(n+1)-1]+1`
-/

namespace A000379.P7430934202595724217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A000379.P7430934202595724217

namespace A000379

/-- `comp[A000028(n+1)-1]+1` -/
def P7430934202595724217.Spec : Prop :=
  ∀ n, (P7430934202595724217.a n : ℤ) = A000379 (n + 1)

end A000379

/-! ## A000379.P17486919075517630444

`eq[1, (A046645(n+1)+1)%2]+1`
-/

namespace A000379.P17486919075517630444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046645 (n + 1) + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A000379.P17486919075517630444

namespace A000379

/-- `eq[1, (A046645(n+1)+1)%2]+1` -/
def P17486919075517630444.Spec : Prop :=
  ∀ n, (P17486919075517630444.a n : ℤ) = A000379 (n + 1)

end A000379

/-! ## A000379.P17565827344396637744

`record[n+1-n*A007814(A046645(n+1)+1)]`
-/

namespace A000379.P17565827344396637744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (n : ℤ) * A007814 (A046645 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000379.P17565827344396637744

namespace A000379

/-- `record[n+1-n*A007814(A046645(n+1)+1)]` -/
def P17565827344396637744.Spec : Prop :=
  ∀ n, P17565827344396637744.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P5612860103900854655

`filter[A174891(n+1), A359464(#)]`
-/

namespace A000379.P5612860103900854655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P5612860103900854655

namespace A000379

/-- `filter[A174891(n+1), A359464(#)]` -/
def P5612860103900854655.Spec : Prop :=
  ∀ n, P5612860103900854655.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P7941311341315339330

`filter[A018252(n+1), A359464(#)]`
-/

namespace A000379.P7941311341315339330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P7941311341315339330

namespace A000379

/-- `filter[A018252(n+1), A359464(#)]` -/
def P7941311341315339330.Spec : Prop :=
  ∀ n, P7941311341315339330.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P9414001269313632843

`filter[A056653(n+1), A359464(#)]`
-/

namespace A000379.P9414001269313632843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P9414001269313632843

namespace A000379

/-- `filter[A056653(n+1), A359464(#)]` -/
def P9414001269313632843.Spec : Prop :=
  ∀ n, P9414001269313632843.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P14155230412974257833

`filter[A065090(n+1), A359464(#)]`
-/

namespace A000379.P14155230412974257833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P14155230412974257833

namespace A000379

/-- `filter[A065090(n+1), A359464(#)]` -/
def P14155230412974257833.Spec : Prop :=
  ∀ n, P14155230412974257833.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P15406597134056356661

`filter[A141468(n+2), A359464(#)]`
-/

namespace A000379.P15406597134056356661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P15406597134056356661

namespace A000379

/-- `filter[A141468(n+2), A359464(#)]` -/
def P15406597134056356661.Spec : Prop :=
  ∀ n, P15406597134056356661.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P6339353734215272308

`filter[A222307(2*n+1), A359464(#)]`
-/

namespace A000379.P6339353734215272308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P6339353734215272308

namespace A000379

/-- `filter[A222307(2*n+1), A359464(#)]` -/
def P6339353734215272308.Spec : Prop :=
  ∀ n, P6339353734215272308.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P12622864295448929242

`filter[A171581(n+1), A359464(#)]`
-/

namespace A000379.P12622864295448929242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P12622864295448929242

namespace A000379

/-- `filter[A171581(n+1), A359464(#)]` -/
def P12622864295448929242.Spec : Prop :=
  ∀ n, P12622864295448929242.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P17261903233213776160

`filter[A173905(n+2), A359464(#)]`
-/

namespace A000379.P17261903233213776160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P17261903233213776160

namespace A000379

/-- `filter[A173905(n+2), A359464(#)]` -/
def P17261903233213776160.Spec : Prop :=
  ∀ n, P17261903233213776160.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P184851856122477138

`filter[A338924(n+1), A359464(#)]`
-/

namespace A000379.P184851856122477138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P184851856122477138

namespace A000379

/-- `filter[A338924(n+1), A359464(#)]` -/
def P184851856122477138.Spec : Prop :=
  ∀ n, P184851856122477138.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P3147180140142248829

`filter[A073900(n+1), A359464(#)]`
-/

namespace A000379.P3147180140142248829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P3147180140142248829

namespace A000379

/-- `filter[A073900(n+1), A359464(#)]` -/
def P3147180140142248829.Spec : Prop :=
  ∀ n, P3147180140142248829.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P15548571193090758586

`filter[A073899(n+1), A359464(#)]`
-/

namespace A000379.P15548571193090758586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P15548571193090758586

namespace A000379

/-- `filter[A073899(n+1), A359464(#)]` -/
def P15548571193090758586.Spec : Prop :=
  ∀ n, P15548571193090758586.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P17485585599946689005

`filter[A171085(n+1), A359464(#)]`
-/

namespace A000379.P17485585599946689005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P17485585599946689005

namespace A000379

/-- `filter[A171085(n+1), A359464(#)]` -/
def P17485585599946689005.Spec : Prop :=
  ∀ n, P17485585599946689005.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P9673888356374143649

`filter[A121543(n+1), A359464(#)]`
-/

namespace A000379.P9673888356374143649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P9673888356374143649

namespace A000379

/-- `filter[A121543(n+1), A359464(#)]` -/
def P9673888356374143649.Spec : Prop :=
  ∀ n, P9673888356374143649.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P75133983047830023

`filter[A379053(n+1), A359464(#)]`
-/

namespace A000379.P75133983047830023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P75133983047830023

namespace A000379

/-- `filter[A379053(n+1), A359464(#)]` -/
def P75133983047830023.Spec : Prop :=
  ∀ n, P75133983047830023.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P7928738762705626262

`filter[A101513(n+1), A359464(#)]`
-/

namespace A000379.P7928738762705626262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P7928738762705626262

namespace A000379

/-- `filter[A101513(n+1), A359464(#)]` -/
def P7928738762705626262.Spec : Prop :=
  ∀ n, P7928738762705626262.a n = A000379 (n + 1)

end A000379

/-! ## A000379.P12964188847809480053

`filter[A089088(n), A359464(#)]`
-/

namespace A000379.P12964188847809480053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A000379.P12964188847809480053

namespace A000379

/-- `filter[A089088(n), A359464(#)]` -/
def P12964188847809480053.Spec : Prop :=
  ∀ n, P12964188847809480053.a n = A000379 (n + 1)

end A000379

/-!
# A000380: Number of permutations of an n-sequence discordant with three given permutations (see reference) in n-3 places.

The programs for A000380, there is no canonical definition to state claims against.
-/

/-! ## A000380.P17756161208306936603

`A094315(eq[3, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A000380.P17756161208306936603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000380.P17756161208306936603

/-! ## A000380.P8970602505320356485

`A094315(A167614(n+2))`
-/

namespace A000380.P8970602505320356485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (A167614 (n + 2)).toNat

end

end A000380.P8970602505320356485

/-!
# A000382: Restricted permutations.

The programs for A000382, the canonical program `A000382.P14335297894561442918` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000382 has offset 4).

The definition of A000382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000382.P14335297894561442918

`a(n-1)+a(n-2)+a(n-3)-2` with `a(0)=6, a(1)=11, a(2)=20, a(3)=36`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000382

/-- `a(n-1)+a(n-2)+a(n-3)-2` -/
def P14335297894561442918.Spec : Prop :=
  ∀ n, P14335297894561442918.a n = A000382 (n + 4)

theorem P14335297894561442918.correct : P14335297894561442918.Spec := by
  intro n
  simp only [A000382, Nat.add_sub_cancel]

end A000382

/-! ## A000382.P7098459104160720269

`A057427(n)+A020992(n+4)`
-/

namespace A000382.P7098459104160720269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A020992 (n + 4)

end

end A000382.P7098459104160720269

namespace A000382

/-- `A057427(n)+A020992(n+4)` -/
def P7098459104160720269.Spec : Prop :=
  ∀ n, P7098459104160720269.a n = A000382 (n + 4)

end A000382

/-! ## A000382.P10882414228648987840

`A020992(n+4)+char[A014682(n+1)]`
-/

namespace A000382.P10882414228648987840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 4) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000382.P10882414228648987840

namespace A000382

/-- `A020992(n+4)+char[A014682(n+1)]` -/
def P10882414228648987840.Spec : Prop :=
  ∀ n, P10882414228648987840.a n = A000382 (n + 4)

end A000382

/-! ## A000382.P10972240654367934319

`A020992(n+4)+char[A258746(n+1)]`
-/

namespace A000382.P10972240654367934319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 4) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A000382.P10972240654367934319

namespace A000382

/-- `A020992(n+4)+char[A258746(n+1)]` -/
def P10972240654367934319.Spec : Prop :=
  ∀ n, P10972240654367934319.a n = A000382 (n + 4)

end A000382

/-! ## A000382.P8452289439286381070

`A020992(A020705(n))-A057428(n)`
-/

namespace A000382.P8452289439286381070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (A020705 n).toNat - A057428 n

end

end A000382.P8452289439286381070

namespace A000382

/-- `A020992(A020705(n))-A057428(n)` -/
def P8452289439286381070.Spec : Prop :=
  ∀ n, P8452289439286381070.a n = A000382 (n + 4)

end A000382

/-! ## A000382.P5424213824839202255

`A020992(n+4)+A000035(A110923(n+1))`
-/

namespace A000382.P5424213824839202255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 4) + A000035 (A110923 (n + 1)).toNat

end

end A000382.P5424213824839202255

namespace A000382

/-- `A020992(n+4)+A000035(A110923(n+1))` -/
def P5424213824839202255.Spec : Prop :=
  ∀ n, P5424213824839202255.a n = A000382 (n + 4)

end A000382

/-! ## A000382.P5270233965203367323

`A214826(n+3)-A306357(n+2)`
-/

namespace A000382.P5270233965203367323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214826 (n + 3) - A306357 (n + 2)

end

end A000382.P5270233965203367323

namespace A000382

/-- `A214826(n+3)-A306357(n+2)` -/
def P5270233965203367323.Spec : Prop :=
  ∀ n, P5270233965203367323.a n = A000382 (n + 4)

end A000382

/-! ## A000382.P9874334178392902078

`A000496(n+4)/4`
-/

namespace A000382.P9874334178392902078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000496 (n + 4) : ℚ) / 4

end

end A000382.P9874334178392902078

namespace A000382

/-- `A000496(n+4)/4` -/
def P9874334178392902078.Spec : Prop :=
  ∀ n, P9874334178392902078.a n = (A000382 (n + 4) : ℚ)

end A000382

/-!
# A000383: Hexanacci numbers with a(0) = ... = a(5) = 1.

The programs for A000383, the canonical program `A000383.P18280553795721487493` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000383 has offset 0).

The definition of A000383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A000383.P18280553795721487493

`5*(∑[A001592(n)]-A001592(n))+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000383

/-- `5*(∑[A001592(n)]-A001592(n))+1` -/
def P18280553795721487493.Spec : Prop :=
  ∀ n, P18280553795721487493.a n = A000383 n

theorem P18280553795721487493.correct : P18280553795721487493.Spec := by
  intro n
  simp only [A000383]

end A000383

/-! ## A000383.P6092106406424795640

`A016861(∑[A001592(n)]-A001592(n))`
-/

namespace A000383.P6092106406424795640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (∑ j ∈ Finset.range (n + 1), f1 j - A001592 n).toNat

end

end A000383.P6092106406424795640

namespace A000383

/-- `A016861(∑[A001592(n)]-A001592(n))` -/
def P6092106406424795640.Spec : Prop :=
  ∀ n, P6092106406424795640.a n = A000383 n

end A000383

/-! ## A000383.P6203123226861953682

`A008619(∏[Δ[(n+2)*ceil((n+1)/7)]])`
-/

namespace A000383.P6203123226861953682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈(n + 1 : ℚ) / 7⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000383.P6203123226861953682

namespace A000383

/-- `A008619(∏[Δ[(n+2)*ceil((n+1)/7)]])` -/
def P6203123226861953682.Spec : Prop :=
  ∀ n, P6203123226861953682.a n = A000383 n

end A000383

/-! ## A000383.P7103463494634307222

`A029579(∏[A138999(n+1)])`
-/

namespace A000383.P7103463494634307222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000383.P7103463494634307222

namespace A000383

/-- `A029579(∏[A138999(n+1)])` -/
def P7103463494634307222.Spec : Prop :=
  ∀ n, P7103463494634307222.a n = A000383 n

end A000383

/-! ## A000383.P14704211545985778225

`A106466(∏[A138999(n+1)])`
-/

namespace A000383.P14704211545985778225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A000383.P14704211545985778225

namespace A000383

/-- `A106466(∏[A138999(n+1)])` -/
def P14704211545985778225.Spec : Prop :=
  ∀ n, P14704211545985778225.a n = A000383 n

end A000383

/-!
# A000384: Hexagonal numbers: a(n) = n*(2*n-1).

The programs for A000384, the canonical program `A000384.P5392390561999168282` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000384 has offset 0).

The definition of A000384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n-1)` (program `A000384.P5392390561999168282`, by `A000384.P5392390561999168282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000384.P17383607346477900416

`C(2*n, 2)`
-/

namespace A000384.P17383607346477900416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

end

end A000384.P17383607346477900416

namespace A000384

/-- `C(2*n, 2)` -/
def P17383607346477900416.Spec : Prop :=
  ∀ n, (P17383607346477900416.a n : ℤ) = A000384 n

end A000384

/-! ## A000384.P5392390561999168282

`n*(2*n-1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000384

/-- `n*(2*n-1)` -/
def P5392390561999168282.Spec : Prop :=
  ∀ n, P5392390561999168282.a n = A000384 n

theorem P5392390561999168282.correct : P5392390561999168282.Spec := by
  intro n
  simp only [A000384]

end A000384

/-! ## A000384.P1625160730824240000

`lcm(n, 1-(n+n))`
-/

namespace A000384.P1625160730824240000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (n + n : ℤ))

end

end A000384.P1625160730824240000

namespace A000384

/-- `lcm(n, 1-(n+n))` -/
def P1625160730824240000.Spec : Prop :=
  ∀ n, (P1625160730824240000.a n : ℤ) = A000384 n

end A000384

/-! ## A000384.P5725630382766726677

`record[C(and(n, n+1), 2)]`
-/

namespace A000384.P5725630382766726677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land n (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000384.P5725630382766726677

namespace A000384

/-- `record[C(and(n, n+1), 2)]` -/
def P5725630382766726677.Spec : Prop :=
  ∀ n, (P5725630382766726677.a n : ℤ) = A000384 n

end A000384

/-! ## A000384.P14805835708472778116

`∑[eq[n, n*and(3, n)]]`
-/

namespace A000384.P14805835708472778116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000384.P14805835708472778116

namespace A000384

/-- `∑[eq[n, n*and(3, n)]]` -/
def P14805835708472778116.Spec : Prop :=
  ∀ n, (P14805835708472778116.a n : ℤ) = A000384 n

end A000384

/-! ## A000384.P16793770460653094710

`∑[a(n-1)+4]` with `a(0)=0, a(1)=1`
-/

namespace A000384.P16793770460653094710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000384.P16793770460653094710

namespace A000384

/-- `∑[a(n-1)+4]` -/
def P16793770460653094710.Spec : Prop :=
  ∀ n, (P16793770460653094710.a n : ℤ) = A000384 n

end A000384

/-! ## A000384.P2625038829577911693

`abs(n*or(1, -(2*n)))`
-/

namespace A000384.P2625038829577911693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor 1 (-(2 * n : ℤ))|

end

end A000384.P2625038829577911693

namespace A000384

/-- `abs(n*or(1, -(2*n)))` -/
def P2625038829577911693.Spec : Prop :=
  ∀ n, P2625038829577911693.a n = A000384 n

end A000384

/-! ## A000384.P3349049791660870022

`-(n*or(1, -(2*n)))`
-/

namespace A000384.P3349049791660870022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor 1 (-(2 * n : ℤ)))

end

end A000384.P3349049791660870022

namespace A000384

/-- `-(n*or(1, -(2*n)))` -/
def P3349049791660870022.Spec : Prop :=
  ∀ n, P3349049791660870022.a n = A000384 n

end A000384

/-! ## A000384.P3310082437836681695

`abs(n*xor(1, -(2*n)))`
-/

namespace A000384.P3310082437836681695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.xor 1 (-(2 * n : ℤ))|

end

end A000384.P3310082437836681695

namespace A000384

/-- `abs(n*xor(1, -(2*n)))` -/
def P3310082437836681695.Spec : Prop :=
  ∀ n, P3310082437836681695.a n = A000384 n

end A000384

/-! ## A000384.P16177925212079958042

`-(n*xor(1, -(2*n)))`
-/

namespace A000384.P16177925212079958042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.xor 1 (-(2 * n : ℤ)))

end

end A000384.P16177925212079958042

namespace A000384

/-- `-(n*xor(1, -(2*n)))` -/
def P16177925212079958042.Spec : Prop :=
  ∀ n, P16177925212079958042.a n = A000384 n

end A000384

/-! ## A000384.P12266784208099667998

`∑[ogf((x+3x^2)/(1-2x+x^2))]`
-/

namespace A000384.P12266784208099667998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000384.P12266784208099667998

namespace A000384

/-- `∑[ogf((x+3x^2)/(1-2x+x^2))]` -/
def P12266784208099667998.Spec : Prop :=
  ∀ n, P12266784208099667998.a n = A000384 n

end A000384

/-! ## A000384.P12323977331947976987

`ogf((x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A000384.P12323977331947976987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -3, 3, -1] n

end

end A000384.P12323977331947976987

namespace A000384

/-- `ogf((x+3x^2)/(1-3x+3x^2-x^3))` -/
def P12323977331947976987.Spec : Prop :=
  ∀ n, P12323977331947976987.a n = A000384 n

end A000384

/-! ## A000384.P4839710595232227299

`∑[eq[n, n*val(n+1, 2)]]`
-/

namespace A000384.P4839710595232227299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000384.P4839710595232227299

namespace A000384

/-- `∑[eq[n, n*val(n+1, 2)]]` -/
def P4839710595232227299.Spec : Prop :=
  ∀ n, (P4839710595232227299.a n : ℤ) = A000384 n

end A000384

/-! ## A000384.P5366851027882051645

`round(2/acot(n)²-(n+1))`
-/

namespace A000384.P5366851027882051645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n : ℝ) ^ 2 - (n + 1 : ℝ))

end

end A000384.P5366851027882051645

namespace A000384

/-- `round(2/acot(n)²-(n+1))` -/
def P5366851027882051645.Spec : Prop :=
  ∀ n, P5366851027882051645.a n = A000384 n

end A000384

/-! ## A000384.P6076886554065711334

`n-∑[a(n-1)-4]` with `a(0)=0, a(1)=0`
-/

namespace A000384.P6076886554065711334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000384.P6076886554065711334

namespace A000384

/-- `n-∑[a(n-1)-4]` -/
def P6076886554065711334.Spec : Prop :=
  ∀ n, P6076886554065711334.a n = A000384 n

end A000384

/-! ## A000384.P8039202741594367502

`a(n-1)+a(n-1)+4-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A000384.P8039202741594367502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 1) + 4) - a (n - 2)

end

end A000384.P8039202741594367502

namespace A000384

/-- `a(n-1)+a(n-1)+4-a(n-2)` -/
def P8039202741594367502.Spec : Prop :=
  ∀ n, P8039202741594367502.a n = A000384 n

theorem P8039202741594367502.correct : P8039202741594367502.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A000384, Nat.add_sub_cancel, A000384.P8039202741594367502.a, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A000384, Nat.add_sub_cancel, A000384.P8039202741594367502.a, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000384

/-! ## A000384.P10842621074476474912

`a(n-1)-(a(n-2)-a(n-1)-4)` with `a(0)=0, a(1)=1`
-/

namespace A000384.P10842621074476474912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - 4)

end

end A000384.P10842621074476474912

namespace A000384

/-- `a(n-1)-(a(n-2)-a(n-1)-4)` -/
def P10842621074476474912.Spec : Prop :=
  ∀ n, P10842621074476474912.a n = A000384 n

theorem P10842621074476474912.correct : P10842621074476474912.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A000384, Nat.add_sub_cancel, A000384.P10842621074476474912.a, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A000384, Nat.add_sub_cancel, A000384.P10842621074476474912.a, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A000384

/-! ## A000384.P11501632543885517683

`1-A110325(n)`
-/

namespace A000384.P11501632543885517683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A110325 n

end

end A000384.P11501632543885517683

namespace A000384

/-- `1-A110325(n)` -/
def P11501632543885517683.Spec : Prop :=
  ∀ n, P11501632543885517683.a n = A000384 n

end A000384

/-! ## A000384.P7473734384824083474

`A130883(n)-1`
-/

namespace A000384.P7473734384824083474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n - 1

end

end A000384.P7473734384824083474

namespace A000384

/-- `A130883(n)-1` -/
def P7473734384824083474.Spec : Prop :=
  ∀ n, P7473734384824083474.a n = A000384 n

end A000384

/-! ## A000384.P8715664994221434390

`A002939(n)/2`
-/

namespace A000384.P8715664994221434390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002939 n : ℚ) / 2

end

end A000384.P8715664994221434390

namespace A000384

/-- `A002939(n)/2` -/
def P8715664994221434390.Spec : Prop :=
  ∀ n, P8715664994221434390.a n = (A000384 n : ℚ)

end A000384

/-!
# A000385: Convolution of A000203 with itself.

The programs for A000385, the canonical program `A000385.P3212751932130924220` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000385 has offset 1).

The definition of A000385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A000385.P3212751932130924220

`5/12*A001158(n+2)-(5+6*(n+1))/12*A000203(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000385

/-- `5/12*A001158(n+2)-(5+6*(n+1))/12*A000203(n+2)` -/
def P3212751932130924220.Spec : Prop :=
  ∀ n, P3212751932130924220.a n = (A000385 (n + 1) : ℚ)

end A000385

/-! ## A000385.P6246930539007273401

`2/(n+2)*A000441(n+2)`
-/

namespace A000385.P6246930539007273401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 2 : ℚ) * (A000441 (n + 2) : ℚ)

end

end A000385.P6246930539007273401

namespace A000385

/-- `2/(n+2)*A000441(n+2)` -/
def P6246930539007273401.Spec : Prop :=
  ∀ n, P6246930539007273401.a n = (A000385 (n + 1) : ℚ)

end A000385

/-! ## A000385.P4361054139823753330

`A319083(∑[n+2]+3)`
-/

namespace A000385.P4361054139823753330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000385.P4361054139823753330

namespace A000385

/-- `A319083(∑[n+2]+3)` -/
def P4361054139823753330.Spec : Prop :=
  ∀ n, P4361054139823753330.a n = A000385 (n + 1)

end A000385

/-! ## A000385.P13941735353834855549

`or(A000007(n), A319083(A055998(n)+5))`
-/

namespace A000385.P13941735353834855549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A319083 (A055998 n + 5).toNat)

end

end A000385.P13941735353834855549

namespace A000385

/-- `or(A000007(n), A319083(A055998(n)+5))` -/
def P13941735353834855549.Spec : Prop :=
  ∀ n, P13941735353834855549.a n = A000385 (n + 1)

end A000385

/-! ## A000385.P14352214916810051718

`A319083(A055998(n)+5)^A087960(n)²`
-/

namespace A000385.P14352214916810051718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319083 (A055998 n + 5).toNat : ℚ) ^ (A087960 n ^ 2 : ℤ)

end

end A000385.P14352214916810051718

namespace A000385

/-- `A319083(A055998(n)+5)^A087960(n)²` -/
def P14352214916810051718.Spec : Prop :=
  ∀ n, P14352214916810051718.a n = (A000385 (n + 1) : ℚ)

end A000385

/-! ## A000385.P2561795951965842867

`A319083(A055998(n)+5)+A000007(n+1)`
-/

namespace A000385.P2561795951965842867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 (A055998 n + 5).toNat + A000007 (n + 1)

end

end A000385.P2561795951965842867

namespace A000385

/-- `A319083(A055998(n)+5)+A000007(n+1)` -/
def P2561795951965842867.Spec : Prop :=
  ∀ n, P2561795951965842867.a n = A000385 (n + 1)

end A000385

/-! ## A000385.P16916357152429000673

`A319083(A055998(n)+5)+A000122(or(2, n))`
-/

namespace A000385.P16916357152429000673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 (A055998 n + 5).toNat + A000122 (Nat.lor 2 n)

end

end A000385.P16916357152429000673

namespace A000385

/-- `A319083(A055998(n)+5)+A000122(or(2, n))` -/
def P16916357152429000673.Spec : Prop :=
  ∀ n, P16916357152429000673.a n = A000385 (n + 1)

end A000385

/-! ## A000385.P3682300743827870277

`A055396(2*(n+1))*A319083(A055998(n)+5)`
-/

namespace A000385.P3682300743827870277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * (n + 1)) * A319083 (A055998 n + 5).toNat

end

end A000385.P3682300743827870277

namespace A000385

/-- `A055396(2*(n+1))*A319083(A055998(n)+5)` -/
def P3682300743827870277.Spec : Prop :=
  ∀ n, P3682300743827870277.a n = A000385 (n + 1)

end A000385

/-! ## A000385.P9114598013537324536

`A319083(A055998(n)+5)^A000005(ceil(2/(n+1)))`
-/

namespace A000385.P9114598013537324536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319083 (A055998 n + 5).toNat : ℚ) ^ (A000005 ⌈2 / (n + 1 : ℚ)⌉.toNat : ℤ)

end

end A000385.P9114598013537324536

namespace A000385

/-- `A319083(A055998(n)+5)^A000005(ceil(2/(n+1)))` -/
def P9114598013537324536.Spec : Prop :=
  ∀ n, P9114598013537324536.a n = (A000385 (n + 1) : ℚ)

end A000385

/-!
# A000386: a(n) = A058057(n,n-3).

The programs for A000386, there is no canonical definition to state claims against.
-/

/-! ## A000386.P3491988857507678691

`A156368(A152950(n+1))-A091225(A002093(n+1))`
-/

namespace A000386.P3491988857507678691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A152950 (n + 1)).toNat - A091225 (A002093 (n + 1)).toNat

end

end A000386.P3491988857507678691

/-! ## A000386.P1561733453190823275

`A156368(A152950(n+1))%A012150(n)`
-/

namespace A000386.P1561733453190823275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156368 (A152950 (n + 1)).toNat) (A012150 n)

end

end A000386.P1561733453190823275

/-! ## A000386.P6718665507450617619

`A130514(C(floor((n/2)²), 2))`
-/

namespace A000386.P6718665507450617619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130514 (Nat.choose ⌊((n : ℚ) / 2) ^ 2⌋.toNat 2)

end

end A000386.P6718665507450617619

/-!
# A000387: Rencontres numbers: number of permutations of [n] with exactly two fixed points.

The programs for A000387, the canonical program `A000387.P2539177425630704068` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000387 has offset 0).

The definition of A000387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000387.P2539177425630704068

`A000166(n)-A003221(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A000387

/-- `A000166(n)-A003221(n)` -/
def P2539177425630704068.Spec : Prop :=
  ∀ n, P2539177425630704068.a n = A000387 n

theorem P2539177425630704068.correct : P2539177425630704068.Spec := by
  intro n
  simp only [A000387]

end A000387

/-! ## A000387.P8207350105447481780

`n*(a(n-1)+gcd(n, n%2))-∑[n]` with `a(0)=0`
-/

namespace A000387.P8207350105447481780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (a (n - 1) + (Nat.gcd n (n % 2) : ℤ)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A000387.P8207350105447481780

namespace A000387

/-- `n*(a(n-1)+gcd(n, n%2))-∑[n]` -/
def P8207350105447481780.Spec : Prop :=
  ∀ n, P8207350105447481780.a n = A000387 n

end A000387

/-! ## A000387.P5116112813261202809

`n*a(n-1)+(-1)^n*n*(n-1)/2` with `a(0)=0`
-/

namespace A000387.P5116112813261202809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * a (n - 1) + ((-1) ^ n : ℚ) * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2))

end

end A000387.P5116112813261202809

namespace A000387

/-- `n*a(n-1)+(-1)^n*n*(n-1)/2` -/
def P5116112813261202809.Spec : Prop :=
  ∀ n, P5116112813261202809.a n = (A000387 n : ℚ)

end A000387

/-! ## A000387.P16048893639608933474

`A145225(∑[n])`
-/

namespace A000387.P16048893639608933474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000387.P16048893639608933474

namespace A000387

/-- `A145225(∑[n])` -/
def P16048893639608933474.Spec : Prop :=
  ∀ n, P16048893639608933474.a n = A000387 n

end A000387

/-! ## A000387.P3375610558067245192

`abs(1-A009281(n))`
-/

namespace A000387.P3375610558067245192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A009281 n|

end

end A000387.P3375610558067245192

namespace A000387

/-- `abs(1-A009281(n))` -/
def P3375610558067245192.Spec : Prop :=
  ∀ n, P3375610558067245192.a n = A000387 n

end A000387

/-! ## A000387.P15925821160653972645

`abs(n-A009574(n))`
-/

namespace A000387.P15925821160653972645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A009574 n|

end

end A000387.P15925821160653972645

namespace A000387

/-- `abs(n-A009574(n))` -/
def P15925821160653972645.Spec : Prop :=
  ∀ n, P15925821160653972645.a n = A000387 n

end A000387

/-! ## A000387.P8420812435263565479

`A008290(∑[C(n, a(n-1))])` with `a(0)=4`
-/

namespace A000387.P8420812435263565479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A000387.P8420812435263565479

namespace A000387

/-- `A008290(∑[C(n, a(n-1))])` -/
def P8420812435263565479.Spec : Prop :=
  ∀ n, P8420812435263565479.a n = A000387 n

end A000387

/-! ## A000387.P4296927378184075121

`A008290(A133263(n)+char[1])`
-/

namespace A000387.P4296927378184075121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A133263 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A000387.P4296927378184075121

namespace A000387

/-- `A008290(A133263(n)+char[1])` -/
def P4296927378184075121.Spec : Prop :=
  ∀ n, P4296927378184075121.a n = A000387 n

end A000387

/-! ## A000387.P15136778112787340960

`A008290(A133263(n-char[1]))`
-/

namespace A000387.P15136778112787340960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A133263 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A000387.P15136778112787340960

namespace A000387

/-- `A008290(A133263(n-char[1]))` -/
def P15136778112787340960.Spec : Prop :=
  ∀ n, P15136778112787340960.a n = A000387 n

end A000387

/-! ## A000387.P806328171544489600

`abs(A182386(n))-A003221(n)`
-/

namespace A000387.P806328171544489600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A003221 n

end

end A000387.P806328171544489600

namespace A000387

/-- `abs(A182386(n))-A003221(n)` -/
def P806328171544489600.Spec : Prop :=
  ∀ n, P806328171544489600.a n = A000387 n

end A000387

/-!
# A000388: Number of permutations of an n-sequence discordant with three given permutations (see reference) in n-2 places.

The programs for A000388, there is no canonical definition to state claims against.
-/

/-! ## A000388.P9045389869223008143

`A094315(A155212(n)+10)`
-/

namespace A000388.P9045389869223008143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094315 (A155212 n + 10).toNat

end

end A000388.P9045389869223008143

/-!
# A000389: Binomial coefficients C(n,5).

The programs for A000389, the canonical program `A000389.P15450220129395289428` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000389 has offset 0).

The definition of A000389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 5)` (program `A000389.P15450220129395289428`, by `A000389.P15450220129395289428.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A000389.P15450220129395289428

`C(n, 5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000389

/-- `C(n, 5)` -/
def P15450220129395289428.Spec : Prop :=
  ∀ n, (P15450220129395289428.a n : ℤ) = A000389 n

theorem P15450220129395289428.correct : P15450220129395289428.Spec := by
  intro n
  simp only [A000389]

end A000389

/-! ## A000389.P11385255125067835076

`n*(n-1)*(n-2)*(n-3)*(n-4)/120`
-/

namespace A000389.P11385255125067835076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n : ℤ) - 3) * ((n : ℤ) - 4) : ℚ) / 120

end

end A000389.P11385255125067835076

namespace A000389

/-- `n*(n-1)*(n-2)*(n-3)*(n-4)/120` -/
def P11385255125067835076.Spec : Prop :=
  ∀ n, P11385255125067835076.a n = (A000389 n : ℚ)

end A000389

/-! ## A000389.P2353386847856544533

`∑[A000332(abs(1-n))]`
-/

namespace A000389.P2353386847856544533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000389.P2353386847856544533

namespace A000389

/-- `∑[A000332(abs(1-n))]` -/
def P2353386847856544533.Spec : Prop :=
  ∀ n, P2353386847856544533.a n = A000389 n

end A000389

/-! ## A000389.P17936931456179904271

`A000332(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A000389.P17936931456179904271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000332 (n - 1) + a (n - 1)

end

end A000389.P17936931456179904271

namespace A000389

/-- `A000332(n-1)+a(n-1)` -/
def P17936931456179904271.Spec : Prop :=
  ∀ n, P17936931456179904271.a n = A000389 n

end A000389

/-! ## A000389.P16140845544990490371

`A179257(n)-A116701(n)`
-/

namespace A000389.P16140845544990490371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179257 n - A116701 n

end

end A000389.P16140845544990490371

namespace A000389

/-- `A179257(n)-A116701(n)` -/
def P16140845544990490371.Spec : Prop :=
  ∀ n, P16140845544990490371.a n = A000389 n

end A000389

/-! ## A000389.P18381009369019282438

`∑[A000332(n)]-A000332(n)`
-/

namespace A000389.P18381009369019282438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000332 n

end

end A000389.P18381009369019282438

namespace A000389

/-- `∑[A000332(n)]-A000332(n)` -/
def P18381009369019282438.Spec : Prop :=
  ∀ n, P18381009369019282438.a n = A000389 n

end A000389

/-! ## A000389.P2254603032800782944

`A006261(n)-Δ[A006261(n)]`
-/

namespace A000389.P2254603032800782944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n - (f1 (n + 1) - f1 n)

end

end A000389.P2254603032800782944

namespace A000389

/-- `A006261(n)-Δ[A006261(n)]` -/
def P2254603032800782944.Spec : Prop :=
  ∀ n, P2254603032800782944.a n = A000389 n

end A000389

/-! ## A000389.P4946539092080661468

`A006261(n)-A000127(n+1)`
-/

namespace A000389.P4946539092080661468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n - A000127 (n + 1)

end

end A000389.P4946539092080661468

namespace A000389

/-- `A006261(n)-A000127(n+1)` -/
def P4946539092080661468.Spec : Prop :=
  ∀ n, P4946539092080661468.a n = A000389 n

end A000389

/-! ## A000389.P12863916793115074801

`A057703(n)-A055795(n+1)`
-/

namespace A000389.P12863916793115074801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 n - A055795 (n + 1)

end

end A000389.P12863916793115074801

namespace A000389

/-- `A057703(n)-A055795(n+1)` -/
def P12863916793115074801.Spec : Prop :=
  ∀ n, P12863916793115074801.a n = A000389 n

end A000389

/-! ## A000389.P13314089355267667519

`gcd(A052787(n), A266387(n+1))`
-/

namespace A000389.P13314089355267667519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052787 n) (A266387 (n + 1))

end

end A000389.P13314089355267667519

namespace A000389

/-- `gcd(A052787(n), A266387(n+1))` -/
def P13314089355267667519.Spec : Prop :=
  ∀ n, (P13314089355267667519.a n : ℤ) = A000389 n

end A000389

/-! ## A000389.P12763848302361798510

`A006261(n+1)-A059173(n+1)`
-/

namespace A000389.P12763848302361798510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 (n + 1) - A059173 (n + 1)

end

end A000389.P12763848302361798510

namespace A000389

/-- `A006261(n+1)-A059173(n+1)` -/
def P12763848302361798510.Spec : Prop :=
  ∀ n, P12763848302361798510.a n = A000389 n

end A000389

/-! ## A000389.P11044708556807152896

`A059174(n+1)-A006261(n+1)`
-/

namespace A000389.P11044708556807152896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 (n + 1) - A006261 (n + 1)

end

end A000389.P11044708556807152896

namespace A000389

/-- `A059174(n+1)-A006261(n+1)` -/
def P11044708556807152896.Spec : Prop :=
  ∀ n, P11044708556807152896.a n = A000389 n

end A000389

/-! ## A000389.P9486191974538093456

`A166799(n+1)-A166817(n+1)`
-/

namespace A000389.P9486191974538093456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166799 (n + 1) - A166817 (n + 1)

end

end A000389.P9486191974538093456

namespace A000389

/-- `A166799(n+1)-A166817(n+1)` -/
def P9486191974538093456.Spec : Prop :=
  ∀ n, P9486191974538093456.a n = A000389 n

end A000389

/-! ## A000389.P15588927245118664351

`A166828(n+1)-A166840(n+1)`
-/

namespace A000389.P15588927245118664351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166828 (n + 1) - A166840 (n + 1)

end

end A000389.P15588927245118664351

namespace A000389

/-- `A166828(n+1)-A166840(n+1)` -/
def P15588927245118664351.Spec : Prop :=
  ∀ n, P15588927245118664351.a n = A000389 n

end A000389

/-! ## A000389.P9119765138700367213

`∑[A052762(n)/24]-A052762(n)/24`
-/

namespace A000389.P9119765138700367213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℚ) / 24

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A052762 n : ℚ) / 24

end

end A000389.P9119765138700367213

namespace A000389

/-- `∑[A052762(n)/24]-A052762(n)/24` -/
def P9119765138700367213.Spec : Prop :=
  ∀ n, P9119765138700367213.a n = (A000389 n : ℚ)

end A000389

/-! ## A000389.P3547872607445044851

`A057703(n)-(A004006(n)+A000332(n))`
-/

namespace A000389.P3547872607445044851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 n - (A004006 n + A000332 n)

end

end A000389.P3547872607445044851

namespace A000389

/-- `A057703(n)-(A004006(n)+A000332(n))` -/
def P3547872607445044851.Spec : Prop :=
  ∀ n, P3547872607445044851.a n = A000389 n

end A000389

/-!
# A000390: Number of 5-dimensional partitions of n.

The programs for A000390, there is no canonical definition to state claims against.
-/

/-! ## A000390.P5976293529321750907

`A000391(n+1)-A007328(n+1)`
-/

namespace A000390.P5976293529321750907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000391 (n + 1) - A007328 (n + 1)

end

end A000390.P5976293529321750907

/-! ## A000390.P13675064127485537071

`A293551(A055999(n+4))-A007328(n+1)`
-/

namespace A000390.P13675064127485537071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (n + 4)).toNat - A007328 (n + 1)

end

end A000390.P13675064127485537071

/-! ## A000390.P3645146972930652105

`A293551(Δ[A023551(n+2)])-A007328(n+1)`
-/

namespace A000390.P3645146972930652105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (f1 (n + 1) - f1 n).toNat - A007328 (n + 1)

end

end A000390.P3645146972930652105

/-! ## A000390.P241416546482911976

`A293551(eq[3, A316074(n+1)])-A007328(n+1)`
-/

namespace A000390.P241416546482911976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A007328 (n + 1)

end

end A000390.P241416546482911976

/-! ## A000390.P9342529248780601919

`A293551(A000124(n+7)-7)%A287038(n+9)-A007328(n+1)`
-/

namespace A000390.P9342529248780601919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293551 (A000124 (n + 7) - 7).toNat) (A287038 (n + 9)) - A007328 (n + 1)

end

end A000390.P9342529248780601919

/-!
# A000391: Euler transform of A000332.

The programs for A000391, there is no canonical definition to state claims against.
-/

/-! ## A000391.P5375469848027151077

`A293551(A055999(n+4))`
-/

namespace A000391.P5375469848027151077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (n + 4)).toNat

end

end A000391.P5375469848027151077

/-! ## A000391.P8003656913346879809

`A293551(Δ[A023551(n+2)])`
-/

namespace A000391.P8003656913346879809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (f1 (n + 1) - f1 n).toNat

end

end A000391.P8003656913346879809

/-! ## A000391.P8031403994683764877

`A293551(eq[3, A316074(n+1)])`
-/

namespace A000391.P8031403994683764877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A000391.P8031403994683764877

/-! ## A000391.P17442376807023881607

`record[A293551(A055999(A008611(n)))]`
-/

namespace A000391.P17442376807023881607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000391.P17442376807023881607

/-! ## A000391.P16037638127334028442

`record[A293551(A055999(A028242(n)))]`
-/

namespace A000391.P16037638127334028442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000391.P16037638127334028442

/-! ## A000391.P17099040152245121380

`record[A293551(A055999(A051162(n)))]`
-/

namespace A000391.P17099040152245121380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (A051162 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000391.P17099040152245121380

/-! ## A000391.P15336382777189248132

`record[A293551(A055999(A077462(n)))]`
-/

namespace A000391.P15336382777189248132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A055999 (A077462 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000391.P15336382777189248132

/-!
# A000392: Stirling numbers of second kind S(n,3).

The programs for A000392, the canonical program `A000392.P9178358504257160679` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000392 has offset 0).

The definition of A000392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000392.P9178358504257160679

`3*a(n-1)+2^(n-2)-1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000392

/-- `3*a(n-1)+2^(n-2)-1` -/
def P9178358504257160679.Spec : Prop :=
  ∀ n, P9178358504257160679.a n = (A000392 n : ℚ)

end A000392

/-! ## A000392.P12597511668153418065

`∑[ogf(-x^3/(-1+5x-6x^2))]`
-/

namespace A000392.P12597511668153418065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000392.P12597511668153418065

namespace A000392

/-- `∑[ogf(-x^3/(-1+5x-6x^2))]` -/
def P12597511668153418065.Spec : Prop :=
  ∀ n, P12597511668153418065.a n = A000392 n

end A000392

/-! ## A000392.P12732663839416366587

`ceil(∑[3^(n-2)])-ceil(2^(n-1))`
-/

namespace A000392.P12732663839416366587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A000392.P12732663839416366587

namespace A000392

/-- `ceil(∑[3^(n-2)])-ceil(2^(n-1))` -/
def P12732663839416366587.Spec : Prop :=
  ∀ n, P12732663839416366587.a n = A000392 n

end A000392

/-! ## A000392.P8585850149997774691

`∑{d}[n, A056279(#)]`
-/

namespace A000392.P8585850149997774691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056279 d

end

end A000392.P8585850149997774691

namespace A000392

/-- `∑{d}[n, A056279(#)]` -/
def P8585850149997774691.Spec : Prop :=
  ∀ n, P8585850149997774691.a n = A000392 n

end A000392

/-! ## A000392.P16368197085514026993

`∑{d}[2*n, A056482(#)]`
-/

namespace A000392.P16368197085514026993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056482 d

end

end A000392.P16368197085514026993

namespace A000392

/-- `∑{d}[2*n, A056482(#)]` -/
def P16368197085514026993.Spec : Prop :=
  ∀ n, P16368197085514026993.a n = A000392 n

end A000392

/-! ## A000392.P1148887987831755562

`A056509(abs(1-2*n))`
-/

namespace A000392.P1148887987831755562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056509 |1 - (2 * n : ℤ)|.toNat

end

end A000392.P1148887987831755562

namespace A000392

/-- `A056509(abs(1-2*n))` -/
def P1148887987831755562.Spec : Prop :=
  ∀ n, P1148887987831755562.a n = A000392 n

end A000392

/-! ## A000392.P10377111507896553651

`∑[A304973(comp[Δ[(n+2)²]-1])]`
-/

namespace A000392.P10377111507896553651
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000392.P10377111507896553651

namespace A000392

/-- `∑[A304973(comp[Δ[(n+2)²]-1])]` -/
def P10377111507896553651.Spec : Prop :=
  ∀ n, P10377111507896553651.a n = A000392 n

end A000392

/-! ## A000392.P6677437525249131286

`∑[A001047(A289207(n))]`
-/

namespace A000392.P6677437525249131286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000392.P6677437525249131286

namespace A000392

/-- `∑[A001047(A289207(n))]` -/
def P6677437525249131286.Spec : Prop :=
  ∀ n, P6677437525249131286.a n = A000392 n

end A000392

/-! ## A000392.P4300167484012043584

`A094033(n)/3`
-/

namespace A000392.P4300167484012043584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094033 n : ℚ) / 3

end

end A000392.P4300167484012043584

namespace A000392

/-- `A094033(n)/3` -/
def P4300167484012043584.Spec : Prop :=
  ∀ n, P4300167484012043584.a n = (A000392 n : ℚ)

end A000392

/-! ## A000392.P2190265286545558723

`floor(A094734(n)/3)`
-/

namespace A000392.P2190265286545558723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094734 n : ℚ) / 3⌋

end

end A000392.P2190265286545558723

namespace A000392

/-- `floor(A094734(n)/3)` -/
def P2190265286545558723.Spec : Prop :=
  ∀ n, P2190265286545558723.a n = A000392 n

end A000392

/-! ## A000392.P6251532988636888191

`∑[A304973(abs(2*(1-n)))]/2`
-/

namespace A000392.P6251532988636888191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A000392.P6251532988636888191

namespace A000392

/-- `∑[A304973(abs(2*(1-n)))]/2` -/
def P6251532988636888191.Spec : Prop :=
  ∀ n, P6251532988636888191.a n = (A000392 n : ℚ)

end A000392

/-! ## A000392.P14753669301722327703

`round((3^(n-1)-A000225(n))/2)`
-/

namespace A000392.P14753669301722327703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A000225 n : ℚ)) / 2)

end

end A000392.P14753669301722327703

namespace A000392

/-- `round((3^(n-1)-A000225(n))/2)` -/
def P14753669301722327703.Spec : Prop :=
  ∀ n, P14753669301722327703.a n = A000392 n

end A000392

/-! ## A000392.P17511075822319636439

`A007051(n)%A085281(n)`
-/

namespace A000392.P17511075822319636439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007051 n) (A085281 n)

end

end A000392.P17511075822319636439

namespace A000392

/-- `A007051(n)%A085281(n)` -/
def P17511075822319636439.Spec : Prop :=
  ∀ n, P17511075822319636439.a n = A000392 n

end A000392

/-! ## A000392.P14104940026369303020

`(A094388(n)-A000079(n))/2`
-/

namespace A000392.P14104940026369303020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094388 n - A000079 n : ℚ) / 2

end

end A000392.P14104940026369303020

namespace A000392

/-- `(A094388(n)-A000079(n))/2` -/
def P14104940026369303020.Spec : Prop :=
  ∀ n, P14104940026369303020.a n = (A000392 n : ℚ)

end A000392

/-! ## A000392.P8020599676186381714

`(A140429(n)-A000225(n))/2`
-/

namespace A000392.P8020599676186381714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140429 n - A000225 n : ℚ) / 2

end

end A000392.P8020599676186381714

namespace A000392

/-- `(A140429(n)-A000225(n))/2` -/
def P8020599676186381714.Spec : Prop :=
  ∀ n, P8020599676186381714.a n = (A000392 n : ℚ)

end A000392

/-! ## A000392.P5458606787211978679

`(Δ[A124302(n)]-A000225(n))/2`
-/

namespace A000392.P5458606787211978679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A000225 n : ℚ) / 2

end

end A000392.P5458606787211978679

namespace A000392

/-- `(Δ[A124302(n)]-A000225(n))/2` -/
def P5458606787211978679.Spec : Prop :=
  ∀ n, P5458606787211978679.a n = (A000392 n : ℚ)

end A000392

/-! ## A000392.P12542093978115443556

`floor(A001117(n)/6)`
-/

namespace A000392.P12542093978115443556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001117 n : ℚ) / 6⌋

end

end A000392.P12542093978115443556

namespace A000392

/-- `floor(A001117(n)/6)` -/
def P12542093978115443556.Spec : Prop :=
  ∀ n, P12542093978115443556.a n = A000392 n

end A000392

/-! ## A000392.P1675019373897269647

`floor(A094729(n)/6)`
-/

namespace A000392.P1675019373897269647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094729 n : ℚ) / 6⌋

end

end A000392.P1675019373897269647

namespace A000392

/-- `floor(A094729(n)/6)` -/
def P1675019373897269647.Spec : Prop :=
  ∀ n, P1675019373897269647.a n = A000392 n

end A000392

/-! ## A000392.P4408063091925029713

`A083313(n)%A060816(n)`
-/

namespace A000392.P4408063091925029713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083313 n) (A060816 n)

end

end A000392.P4408063091925029713

namespace A000392

/-- `A083313(n)%A060816(n)` -/
def P4408063091925029713.Spec : Prop :=
  ∀ n, P4408063091925029713.a n = A000392 n

end A000392

/-! ## A000392.P3738294207204888144

`A053156(n+1)%A053581(n)`
-/

namespace A000392.P3738294207204888144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053156 (n + 1)) (A053581 n)

end

end A000392.P3738294207204888144

namespace A000392

/-- `A053156(n+1)%A053581(n)` -/
def P3738294207204888144.Spec : Prop :=
  ∀ n, P3738294207204888144.a n = A000392 n

end A000392

/-!
# A000393: Number of n-node rooted trees of height 6.

The programs for A000393, there is no canonical definition to state claims against.
-/

/-! ## A000393.P14490226387209438393

`A034823(n+1)-A001385(n+1)`
-/

namespace A000393.P14490226387209438393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034823 (n + 1) - A001385 (n + 1)

end

end A000393.P14490226387209438393

/-! ## A000393.P17378116289961824372

`A034824(n+1)-(A001385(n+1)+A000418(n+1))`
-/

namespace A000393.P17378116289961824372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034824 (n + 1) - (A001385 (n + 1) + A000418 (n + 1))

end

end A000393.P17378116289961824372

/-! ## A000393.P15179363496071256956

`A036645((n+1)^floor(n/6))`
-/

namespace A000393.P15179363496071256956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊(n : ℚ) / 6⌋ : ℤ))).toNat

end

end A000393.P15179363496071256956

/-! ## A000393.P9518822901360846472

`A154125(A036645(n+1))`
-/

namespace A000393.P9518822901360846472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A036645 (n + 1)).toNat

end

end A000393.P9518822901360846472

/-! ## A000393.P17168007958329739070

`filter[A036645(n+1), A098370(#)]`
-/

namespace A000393.P17168007958329739070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098370 (f1 j).toNat = 1) n)

end

end A000393.P17168007958329739070

/-!
# A000394: Numbers of form x^2 + y^2 + 7z^2.

The programs for A000394, there is no canonical definition to state claims against.
-/

/-! ## A000394.P867128857649853681

`comp[A097633(n+1)]`
-/

namespace A000394.P867128857649853681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000394.P867128857649853681

/-! ## A000394.P5605992482468133653

`record[A025480(comp[A306718(n+1)])]`
-/

namespace A000394.P5605992482468133653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306718 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000394.P5605992482468133653

/-! ## A000394.P11909272099000157105

`lt[char[record[A025480(A306718(n+2))]], A057427(3*n+2)]`
-/

namespace A000394.P11909272099000157105
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A306718 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A000394.P11909272099000157105

/-! ## A000394.P760524217682597445

`lt[char[record[A025480(A306718(n+2))]], A097325(10*n+3)]`
-/

namespace A000394.P760524217682597445
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A306718 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (10 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A000394.P760524217682597445

/-! ## A000394.P100500079757443515

`eq[char[A097633(n+1)], A151933(n+4)]`
-/

namespace A000394.P100500079757443515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097633 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A000394.P100500079757443515

/-!
# A000395: 6th power of rooted tree enumerator; number of linear forests of 6 rooted trees.

The programs for A000395, there is no canonical definition to state claims against.
-/

/-! ## A000395.P6022191829139895987

`A339067(A166136(n+4))`
-/

namespace A000395.P6022191829139895987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A166136 (n + 4)).toNat

end

end A000395.P6022191829139895987

/-! ## A000395.P2579443116000347546

`A339067(A000124(n+5)+5)`
-/

namespace A000395.P2579443116000347546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A000124 (n + 5) + 5).toNat

end

end A000395.P2579443116000347546

/-! ## A000395.P1626585659871282349

`A339067(A000217(n+5)+6)`
-/

namespace A000395.P1626585659871282349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A000217 (n + 5) + 6).toNat

end

end A000395.P1626585659871282349

/-! ## A000395.P9327170958897108610

`A339067(A152948(n+7)+4)`
-/

namespace A000395.P9327170958897108610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A152948 (n + 7) + 4).toNat

end

end A000395.P9327170958897108610

/-! ## A000395.P7683157458738257754

`A339067(A052905(n+4)-2-2*n)`
-/

namespace A000395.P7683157458738257754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A052905 (n + 4) - 2 - (2 * n : ℤ)).toNat

end

end A000395.P7683157458738257754

/-! ## A000395.P8908333635005741520

`A339067(A020715(A000217(n+5)))`
-/

namespace A000395.P8908333635005741520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A020715 (A000217 (n + 5)).toNat).toNat

end

end A000395.P8908333635005741520

/-! ## A000395.P11547194193156995708

`A339067(eq[7, A004736(n+1)]-2*n)`
-/

namespace A000395.P11547194193156995708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A000395.P11547194193156995708

/-!
# A000396: Perfect numbers k: k is equal to the sum of the proper divisors of k.

The programs for A000396, there is no canonical definition to state claims against.
-/

/-! ## A000396.P14372105710780027441

`A006516(A000043(n+1))`
-/

namespace A000396.P14372105710780027441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (A000043 (n + 1)).toNat

end

end A000396.P14372105710780027441

/-! ## A000396.P13750498359246396074

`A060286(A016027(n+1))`
-/

namespace A000396.P13750498359246396074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060286 (A016027 (n + 1)).toNat

end

end A000396.P13750498359246396074

/-! ## A000396.P16295390970280507956

`A007691(A153800(n+1))`
-/

namespace A000396.P16295390970280507956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (A153800 (n + 1)).toNat

end

end A000396.P16295390970280507956

/-! ## A000396.P17193527567528862937

`A019279(n+1)*A000668(n+1)`
-/

namespace A000396.P17193527567528862937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1) * A000668 (n + 1)

end

end A000396.P17193527567528862937

/-! ## A000396.P15470467748103015475

`2^A133033(n+1)-2^A090748(n+1)`
-/

namespace A000396.P15470467748103015475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A133033 (n + 1) : ℤ) - (2 : ℚ) ^ (A090748 (n + 1) : ℤ)

end

end A000396.P15470467748103015475

/-!
# A000397: Number of partitions into non-integral powers.

The programs for A000397, there is no canonical definition to state claims against.
-/

/-! ## A000397.P3721729430057080580

`A259450(A077121(n+4))`
-/

namespace A000397.P3721729430057080580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259450 (A077121 (n + 4)).toNat

end

end A000397.P3721729430057080580

/-! ## A000397.P8520794820581720869

`A259450(A000093(n+4)+1)`
-/

namespace A000397.P8520794820581720869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259450 (A000093 (n + 4) + 1).toNat

end

end A000397.P8520794820581720869

/-!
# A000398: Numbers of form x^2 + 2y^2 + 2yz + 4z^2.

The programs for A000398, there is no canonical definition to state claims against.
-/

/-! ## A000398.P13538179888898037722

`comp[A097634(n+1)]`
-/

namespace A000398.P13538179888898037722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A000398.P13538179888898037722

/-! ## A000398.P9464904595594118982

`lt[char[A097634(n+1)], A000035(2*n+1)]`
-/

namespace A000398.P9464904595594118982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097634 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A000398.P9464904595594118982

/-! ## A000398.P11881649008278157219

`lt[A166087(n), A126605(n)]`
-/

namespace A000398.P11881649008278157219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000398.P11881649008278157219

/-! ## A000398.P13629162060216551661

`lt[A338498(2*(n+2)), A338492(2*(n+1))²]`
-/

namespace A000398.P13629162060216551661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338498 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338492 (2 * (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000398.P13629162060216551661

/-! ## A000398.P16044864705597349613

`lt[A053186(n), A324409(A080362(n+1))]`
-/

namespace A000398.P16044864705597349613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324409 (A080362 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A000398.P16044864705597349613

/-!
# A000399: Unsigned Stirling numbers of first kind s(n,3).

The programs for A000399, the canonical program `A000399.P1151223037484697546` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A000399 has offset 3).

The definition of A000399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A000399.P1151223037484697546

`n!+(2*(n+3)-3)*a(n-1)-(n+1)²*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A000399

/-- `n!+(2*(n+3)-3)*a(n-1)-(n+1)²*a(n-2)` -/
def P1151223037484697546.Spec : Prop :=
  ∀ n, P1151223037484697546.a n = A000399 (n + 3)

theorem P1151223037484697546.correct : P1151223037484697546.Spec := by
  intro n
  simp only [A000399, Nat.add_sub_cancel]

end A000399

/-! ## A000399.P10335644245251956372

`abs(A081051(n+2))`
-/

namespace A000399.P10335644245251956372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081051 (n + 2)|

end

end A000399.P10335644245251956372

namespace A000399

/-- `abs(A081051(n+2))` -/
def P10335644245251956372.Spec : Prop :=
  ∀ n, P10335644245251956372.a n = A000399 (n + 3)

end A000399

/-! ## A000399.P16119223984524562528

`A094638(∑[n+3]+1)`
-/

namespace A000399.P16119223984524562528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A000399.P16119223984524562528

namespace A000399

/-- `A094638(∑[n+3]+1)` -/
def P16119223984524562528.Spec : Prop :=
  ∀ n, P16119223984524562528.a n = A000399 (n + 3)

end A000399

/-! ## A000399.P13030866766603082341

`A130534(∑[n+2]+3)`
-/

namespace A000399.P13030866766603082341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A000399.P13030866766603082341

namespace A000399

/-- `A130534(∑[n+2]+3)` -/
def P13030866766603082341.Spec : Prop :=
  ∀ n, P13030866766603082341.a n = A000399 (n + 3)

end A000399

/-! ## A000399.P15307442586583415286

`abs(A008275(∑[n+2]+4))`
-/

namespace A000399.P15307442586583415286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (∑ j ∈ Finset.range (n + 1), f1 j + 4)|

end

end A000399.P15307442586583415286

namespace A000399

/-- `abs(A008275(∑[n+2]+4))` -/
def P15307442586583415286.Spec : Prop :=
  ∀ n, P15307442586583415286.a n = A000399 (n + 3)

end A000399

/-! ## A000399.P2387829845389884323

`A132393(∑[n+2]+n+7)`
-/

namespace A000399.P2387829845389884323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A000399.P2387829845389884323

namespace A000399

/-- `A132393(∑[n+2]+n+7)` -/
def P2387829845389884323.Spec : Prop :=
  ∀ n, P2387829845389884323.a n = A000399 (n + 3)

end A000399

/-! ## A000399.P7384936901537786525

`A151881(n+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A000399.P7384936901537786525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151881 (n + 1) + (n : ℤ) * a (n - 1)

end

end A000399.P7384936901537786525

namespace A000399

/-- `A151881(n+1)+n*a(n-1)` -/
def P7384936901537786525.Spec : Prop :=
  ∀ n, P7384936901537786525.a n = A000399 (n + 3)

end A000399

/-! ## A000399.P4664590976579753153

`record[A132393(A167499(n)-2)]`
-/

namespace A000399.P4664590976579753153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A167499 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000399.P4664590976579753153

namespace A000399

/-- `record[A132393(A167499(n)-2)]` -/
def P4664590976579753153.Spec : Prop :=
  ∀ n, P4664590976579753153.a n = A000399 (n + 3)

end A000399

/-! ## A000399.P7689409855129023840

`record[A132393(A000096(n)+4)]`
-/

namespace A000399.P7689409855129023840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A000096 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000399.P7689409855129023840

namespace A000399

/-- `record[A132393(A000096(n)+4)]` -/
def P7689409855129023840.Spec : Prop :=
  ∀ n, P7689409855129023840.a n = A000399 (n + 3)

end A000399

/-! ## A000399.P12561420349112161151

`abs(A054654(A052905(n+1)+1))`
-/

namespace A000399.P12561420349112161151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 (A052905 (n + 1) + 1).toNat|

end

end A000399.P12561420349112161151

namespace A000399

/-- `abs(A054654(A052905(n+1)+1))` -/
def P12561420349112161151.Spec : Prop :=
  ∀ n, P12561420349112161151.a n = A000399 (n + 3)

end A000399

