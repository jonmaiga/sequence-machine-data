import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C020
import Seq.Opaque.C022

/-!
# A041202: Numerators of continued fraction convergents to sqrt(112).

The programs for A041202, there is no canonical definition to state claims against.
-/

/-! ## A041202.P106668928488903586

`A061375(A042576(n)-1)`
-/

namespace A041202.P106668928488903586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (A042576 n - 1).toNat

end

end A041202.P106668928488903586

/-!
# A041203: Denominators of continued fraction convergents to sqrt(112).

The programs for A041203, there is no canonical definition to state claims against.
-/

/-! ## A041203.P9293545380331093664

`A041517(n)-A004526(A042577(n)-A041517(n))`
-/

namespace A041203.P9293545380331093664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041517 n - A004526 (A042577 n - A041517 n).toNat

end

end A041203.P9293545380331093664

/-! ## A041203.P834619748069577478

`∑[A128097(A062399(or(1, n)+n))]`
-/

namespace A041203.P834619748069577478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128097 (A062399 (Nat.lor 1 n + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041203.P834619748069577478

/-!
# A041205: Denominators of continued fraction convergents to sqrt(113).

The programs for A041205, the canonical program `A041205.P13895527145540682249` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041205 has offset 0).

The definition of A041205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041205.P13895527145540682249

`a(n-2)+a(n-1)*A010178(n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041205

/-- `a(n-2)+a(n-1)*A010178(n)` -/
def P13895527145540682249.Spec : Prop :=
  ∀ n, P13895527145540682249.a n = A041205 n

theorem P13895527145540682249.correct : P13895527145540682249.Spec := by
  intro n
  simp only [A041205]

end A041205

/-!
# A041209: Denominators of continued fraction convergents to sqrt(115).

The programs for A041209, there is no canonical definition to state claims against.
-/

/-! ## A041209.P12765764349519879355

`A000032(C(n, 8)^n+n)`
-/

namespace A041209.P12765764349519879355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose n 8 ^ n + n)

end

end A041209.P12765764349519879355

/-! ## A041209.P13004209114065404214

`A000032(C(n², 8*n)+n)`
-/

namespace A041209.P13004209114065404214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose (n ^ 2) (8 * n) + n)

end

end A041209.P13004209114065404214

/-! ## A041209.P6930999116655536621

`A000032(∏{e}[A363285(n), #])`
-/

namespace A041209.P6930999116655536621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A041209.P6930999116655536621

/-! ## A041209.P2105892849032996268

`A000032(A327509(n)²+n)`
-/

namespace A041209.P2105892849032996268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A327509 n ^ 2 + (n : ℤ)).toNat

end

end A041209.P2105892849032996268

/-!
# A041215: Denominators of continued fraction convergents to sqrt(118).

The programs for A041215, there is no canonical definition to state claims against.
-/

/-! ## A041215.P9561032192694278764

`A007203(∑[A001006(n)²])`
-/

namespace A041215.P9561032192694278764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041215.P9561032192694278764

/-!
# A041216: Numerators of continued fraction convergents to sqrt(119).

The programs for A041216, there is no canonical definition to state claims against.
-/

/-! ## A041216.P13961707246422966403

`a(n-2)+a(n-1)*A010184(n)` with `a(0)=10, a(1)=11`
-/

namespace A041216.P13961707246422966403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 11] fun n a =>
  a (n - 2) + a (n - 1) * A010184 n

end

end A041216.P13961707246422966403

/-!
# A041217: Denominators of continued fraction convergents to sqrt(119).

The programs for A041217, there is no canonical definition to state claims against.
-/

/-! ## A041217.P4152170793285574771

`a(n-2)+a(n-1)*A010184(n)` with `a(0)=1, a(1)=1`
-/

namespace A041217.P4152170793285574771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A010184 n

end

end A041217.P4152170793285574771

/-!
# A041218: Numerators of continued fraction convergents to sqrt(120).

The programs for A041218, the canonical program `A041218.P15663122427427302237` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041218 has offset 0).

The definition of A041218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041218.P8568794480878967589

`ogf((10+11x+10x^2-x^3)/(1-22x^2+x^4))`
-/

namespace A041218.P8568794480878967589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, 11, 10, -1] [1, 0, -22, 0, 1] n

end

end A041218.P8568794480878967589

namespace A041218

/-- `ogf((10+11x+10x^2-x^3)/(1-22x^2+x^4))` -/
def P8568794480878967589.Spec : Prop :=
  ∀ n, P8568794480878967589.a n = A041218 n

end A041218

/-! ## A041218.P15663122427427302237

`22*a(n-2)-a(n-4)` with `a(0)=10, a(1)=11, a(2)=230, a(3)=241`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041218

/-- `22*a(n-2)-a(n-4)` -/
def P15663122427427302237.Spec : Prop :=
  ∀ n, P15663122427427302237.a n = A041218 n

theorem P15663122427427302237.correct : P15663122427427302237.Spec := by
  intro n
  simp only [A041218]

end A041218

/-! ## A041218.P13934647016210536698

`gcd(2, n)*A041048(n)`
-/

namespace A041218.P13934647016210536698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041048 n

end

end A041218.P13934647016210536698

namespace A041218

/-- `gcd(2, n)*A041048(n)` -/
def P13934647016210536698.Spec : Prop :=
  ∀ n, P13934647016210536698.a n = A041218 n

end A041218

/-! ## A041218.P13706883929036714074

`lcm(Δ[A052938(n)], A041048(n))`
-/

namespace A041218.P13706883929036714074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A041048 n)

end

end A041218.P13706883929036714074

namespace A041218

/-- `lcm(Δ[A052938(n)], A041048(n))` -/
def P13706883929036714074.Spec : Prop :=
  ∀ n, (P13706883929036714074.a n : ℤ) = A041218 n

end A041218

/-! ## A041218.P5208597499663688006

`A000034(n+1)*A041048(n)`
-/

namespace A041218.P5208597499663688006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041048 n

end

end A041218.P5208597499663688006

namespace A041218

/-- `A000034(n+1)*A041048(n)` -/
def P5208597499663688006.Spec : Prop :=
  ∀ n, P5208597499663688006.a n = A041218 n

end A041218

/-! ## A041218.P13680618927652833017

`2/A000034(n)*A041048(n)`
-/

namespace A041218.P13680618927652833017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041048 n : ℚ)

end

end A041218.P13680618927652833017

namespace A041218

/-- `2/A000034(n)*A041048(n)` -/
def P13680618927652833017.Spec : Prop :=
  ∀ n, P13680618927652833017.a n = (A041218 n : ℚ)

end A041218

/-! ## A041218.P14343407318615153938

`A041048(n)*A266303(A266303(n))`
-/

namespace A041218.P14343407318615153938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041048 n * A266303 (A266303 n).toNat

end

end A041218.P14343407318615153938

namespace A041218

/-- `A041048(n)*A266303(A266303(n))` -/
def P14343407318615153938.Spec : Prop :=
  ∀ n, P14343407318615153938.a n = A041218 n

end A041218

/-! ## A041218.P12325320605167719245

`A019426(A269906(n))*A041048(n)`
-/

namespace A041218.P12325320605167719245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A269906 n).toNat * A041048 n

end

end A041218.P12325320605167719245

namespace A041218

/-- `A019426(A269906(n))*A041048(n)` -/
def P12325320605167719245.Spec : Prop :=
  ∀ n, P12325320605167719245.a n = A041218 n

end A041218

/-!
# A041219: Denominators of continued fraction convergents to sqrt(120).

The programs for A041219, the canonical program `A041219.P850706542352028515` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041219 has offset 0).

The definition of A041219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041219.P7771673507488579002

`ogf((1+x-x^2)/(1-22x^2+x^4))`
-/

namespace A041219.P7771673507488579002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -22, 0, 1] n

end

end A041219.P7771673507488579002

namespace A041219

/-- `ogf((1+x-x^2)/(1-22x^2+x^4))` -/
def P7771673507488579002.Spec : Prop :=
  ∀ n, P7771673507488579002.a n = A041219 n

end A041219

/-! ## A041219.P850706542352028515

`22*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=21, a(3)=22`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041219

/-- `22*a(n-2)-a(n-4)` -/
def P850706542352028515.Spec : Prop :=
  ∀ n, P850706542352028515.a n = A041219 n

theorem P850706542352028515.correct : P850706542352028515.Spec := by
  intro n
  simp only [A041219]

end A041219

/-! ## A041219.P2186007158277097774

`lcm(2, A041049(n))/2`
-/

namespace A041219.P2186007158277097774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041049 n) : ℚ) / 2

end

end A041219.P2186007158277097774

namespace A041219

/-- `lcm(2, A041049(n))/2` -/
def P2186007158277097774.Spec : Prop :=
  ∀ n, P2186007158277097774.a n = (A041219 n : ℚ)

end A041219

/-! ## A041219.P11869177383895792691

`A041049(n)/A000034(n)`
-/

namespace A041219.P11869177383895792691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 n : ℚ) / (A000034 n : ℚ)

end

end A041219.P11869177383895792691

namespace A041219

/-- `A041049(n)/A000034(n)` -/
def P11869177383895792691.Spec : Prop :=
  ∀ n, P11869177383895792691.a n = (A041219 n : ℚ)

end A041219

/-! ## A041219.P4588812136404046785

`A041049(n)/A055396(A139606(n))`
-/

namespace A041219.P4588812136404046785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 n : ℚ) / (A055396 (A139606 n).toNat : ℚ)

end

end A041219.P4588812136404046785

namespace A041219

/-- `A041049(n)/A055396(A139606(n))` -/
def P4588812136404046785.Spec : Prop :=
  ∀ n, P4588812136404046785.a n = (A041219 n : ℚ)

end A041219

/-! ## A041219.P12455430107734956533

`A041049(n)/A020639(A266303(n))`
-/

namespace A041219.P12455430107734956533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 n : ℚ) / (A020639 (A266303 n).toNat : ℚ)

end

end A041219.P12455430107734956533

namespace A041219

/-- `A041049(n)/A020639(A266303(n))` -/
def P12455430107734956533.Spec : Prop :=
  ∀ n, P12455430107734956533.a n = (A041219 n : ℚ)

end A041219

/-! ## A041219.P11673719508680970435

`A041049(n)/A014963(A006519(n+1))`
-/

namespace A041219.P11673719508680970435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A041219.P11673719508680970435

namespace A041219

/-- `A041049(n)/A014963(A006519(n+1))` -/
def P11673719508680970435.Spec : Prop :=
  ∀ n, P11673719508680970435.a n = (A041219 n : ℚ)

end A041219

/-! ## A041219.P6521280372450806980

`A041049(n)/A266303(A266303(n+1))`
-/

namespace A041219.P6521280372450806980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 n : ℚ) / (A266303 (A266303 (n + 1)).toNat : ℚ)

end

end A041219.P6521280372450806980

namespace A041219

/-- `A041049(n)/A266303(A266303(n+1))` -/
def P6521280372450806980.Spec : Prop :=
  ∀ n, P6521280372450806980.a n = (A041219 n : ℚ)

end A041219

/-! ## A041219.P885160527041876406

`A041049(n)/A041097(n)*A041419(n)`
-/

namespace A041219.P885160527041876406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 n : ℚ) / (A041097 n : ℚ) * (A041419 n : ℚ)

end

end A041219.P885160527041876406

namespace A041219

/-- `A041049(n)/A041097(n)*A041419(n)` -/
def P885160527041876406.Spec : Prop :=
  ∀ n, P885160527041876406.a n = (A041219 n : ℚ)

end A041219

/-! ## A041219.P11702892335058259993

`A041049(n)/gcd(2, A041041(n))`
-/

namespace A041219.P11702892335058259993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 n : ℚ) / (Int.gcd 2 (A041041 n) : ℚ)

end

end A041219.P11702892335058259993

namespace A041219

/-- `A041049(n)/gcd(2, A041041(n))` -/
def P11702892335058259993.Spec : Prop :=
  ∀ n, P11702892335058259993.a n = (A041219 n : ℚ)

end A041219

/-! ## A041219.P4574874098108689566

`A041049(n)/A006519(n²+1)`
-/

namespace A041219.P4574874098108689566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041049 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041219.P4574874098108689566

namespace A041219

/-- `A041049(n)/A006519(n²+1)` -/
def P4574874098108689566.Spec : Prop :=
  ∀ n, P4574874098108689566.a n = (A041219 n : ℚ)

end A041219

/-!
# A041220: Numerators of continued fraction convergents to sqrt(122).

The programs for A041220, the canonical program `A041220.P11159118918413616512` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041220 has offset 0).

The definition of A041220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041220.P14970539285158047783

`ogf((11+x)/(1-22x-x^2))`
-/

namespace A041220.P14970539285158047783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 1] [1, -22, -1] n

end

end A041220.P14970539285158047783

namespace A041220

/-- `ogf((11+x)/(1-22x-x^2))` -/
def P14970539285158047783.Spec : Prop :=
  ∀ n, P14970539285158047783.a n = A041220 n

end A041220

/-! ## A041220.P11159118918413616512

`22*a(n-1)+a(n-2)` with `a(0)=11, a(1)=243`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041220

/-- `22*a(n-1)+a(n-2)` -/
def P11159118918413616512.Spec : Prop :=
  ∀ n, (P11159118918413616512.a n : ℤ) = A041220 n

theorem P11159118918413616512.correct : P11159118918413616512.Spec := by
  intro n
  simp only [A041220]

end A041220

/-! ## A041220.P10547567225984901384

`A090313(n+1)/2`
-/

namespace A041220.P10547567225984901384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090313 (n + 1) : ℚ) / 2

end

end A041220.P10547567225984901384

namespace A041220

/-- `A090313(n+1)/2` -/
def P10547567225984901384.Spec : Prop :=
  ∀ n, P10547567225984901384.a n = (A041220 n : ℚ)

end A041220

/-! ## A041220.P2323503174224354378

`lcm(2, A041930(n))/2`
-/

namespace A041220.P2323503174224354378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041930 n) : ℚ) / 2

end

end A041220.P2323503174224354378

namespace A041220

/-- `lcm(2, A041930(n))/2` -/
def P2323503174224354378.Spec : Prop :=
  ∀ n, P2323503174224354378.a n = (A041220 n : ℚ)

end A041220

/-! ## A041220.P9484475958628233228

`Δ[∑[A090313(n)]/2]`
-/

namespace A041220.P9484475958628233228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090313 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A041220.P9484475958628233228

namespace A041220

/-- `Δ[∑[A090313(n)]/2]` -/
def P9484475958628233228.Spec : Prop :=
  ∀ n, P9484475958628233228.a n = (A041220 n : ℚ)

end A041220

/-! ## A041220.P7156545937620654331

`A041930(n)/A000034(n+1)`
-/

namespace A041220.P7156545937620654331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041930 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041220.P7156545937620654331

namespace A041220

/-- `A041930(n)/A000034(n+1)` -/
def P7156545937620654331.Spec : Prop :=
  ∀ n, P7156545937620654331.a n = (A041220 n : ℚ)

end A041220

/-! ## A041220.P95258744870675746

`A000034(n)/2*A041930(n)`
-/

namespace A041220.P95258744870675746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041930 n : ℚ)

end

end A041220.P95258744870675746

namespace A041220

/-- `A000034(n)/2*A041930(n)` -/
def P95258744870675746.Spec : Prop :=
  ∀ n, P95258744870675746.a n = (A041220 n : ℚ)

end A041220

/-! ## A041220.P5661236675843452137

`A041930(n)/gcd(2, A041206(n))`
-/

namespace A041220.P5661236675843452137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041930 n : ℚ) / (Int.gcd 2 (A041206 n) : ℚ)

end

end A041220.P5661236675843452137

namespace A041220

/-- `A041930(n)/gcd(2, A041206(n))` -/
def P5661236675843452137.Spec : Prop :=
  ∀ n, P5661236675843452137.a n = (A041220 n : ℚ)

end A041220

/-!
# A041221: Denominators of continued fraction convergents to sqrt(122).

The programs for A041221, the canonical program `A041221.P3510875629754326734` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041221 has offset 0).

The definition of A041221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041221.P5221758624000968575

`ogf(1/(1-22x-x^2))`
-/

namespace A041221.P5221758624000968575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -22, -1] n

end

end A041221.P5221758624000968575

namespace A041221

/-- `ogf(1/(1-22x-x^2))` -/
def P5221758624000968575.Spec : Prop :=
  ∀ n, P5221758624000968575.a n = A041221 n

end A041221

/-! ## A041221.P3510875629754326734

`22*a(n-1)+a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041221

/-- `22*a(n-1)+a(n-2)` -/
def P3510875629754326734.Spec : Prop :=
  ∀ n, (P3510875629754326734.a n : ℤ) = A041221 n

theorem P3510875629754326734.correct : P3510875629754326734.Spec := by
  intro n
  simp only [A041221]

end A041221

/-! ## A041221.P8327980910839174518

`gcd(2, n+1)*A041931(n)`
-/

namespace A041221.P8327980910839174518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A041931 n

end

end A041221.P8327980910839174518

namespace A041221

/-- `gcd(2, n+1)*A041931(n)` -/
def P8327980910839174518.Spec : Prop :=
  ∀ n, P8327980910839174518.a n = A041221 n

end A041221

/-! ## A041221.P88896368577956310

`A000034(n)*A041931(n)`
-/

namespace A041221.P88896368577956310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041931 n

end

end A041221.P88896368577956310

namespace A041221

/-- `A000034(n)*A041931(n)` -/
def P88896368577956310.Spec : Prop :=
  ∀ n, P88896368577956310.a n = A041221 n

end A041221

/-! ## A041221.P13221001343019399561

`Δ[A032766(n)]*A041931(n)`
-/

namespace A041221.P13221001343019399561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041931 n

end

end A041221.P13221001343019399561

namespace A041221

/-- `Δ[A032766(n)]*A041931(n)` -/
def P13221001343019399561.Spec : Prop :=
  ∀ n, P13221001343019399561.a n = A041221 n

end A041221

/-! ## A041221.P4575502301224005111

`(A000035(n)+1)*A041931(n)`
-/

namespace A041221.P4575502301224005111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041931 n

end

end A041221.P4575502301224005111

namespace A041221

/-- `(A000035(n)+1)*A041931(n)` -/
def P4575502301224005111.Spec : Prop :=
  ∀ n, P4575502301224005111.a n = A041221 n

end A041221

/-! ## A041221.P8103719313369758021

`A006519(n²+1)*A041931(n)`
-/

namespace A041221.P8103719313369758021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041931 n

end

end A041221.P8103719313369758021

namespace A041221

/-- `A006519(n²+1)*A041931(n)` -/
def P8103719313369758021.Spec : Prop :=
  ∀ n, P8103719313369758021.a n = A041221 n

end A041221

/-! ## A041221.P6376498239845373377

`A014963(A006519(n+1))*A041931(n)`
-/

namespace A041221.P6376498239845373377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1)).toNat * A041931 n

end

end A041221.P6376498239845373377

namespace A041221

/-- `A014963(A006519(n+1))*A041931(n)` -/
def P6376498239845373377.Spec : Prop :=
  ∀ n, P6376498239845373377.a n = A041221 n

end A041221

/-!
# A041228: Numerators of continued fraction convergents to sqrt(126).

The programs for A041228, there is no canonical definition to state claims against.
-/

/-! ## A041228.P14636168408303905361

`lcm(2, A041962(n))/2`
-/

namespace A041228.P14636168408303905361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041962 n) : ℚ) / 2

end

end A041228.P14636168408303905361

/-! ## A041228.P590129239983181513

`A041962(n)/A000034(n+1)`
-/

namespace A041228.P590129239983181513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041962 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041228.P590129239983181513

/-! ## A041228.P16795558287214979882

`A041962(n)/(2-A000035(n))`
-/

namespace A041228.P16795558287214979882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041962 n : ℚ) / (2 - A000035 n : ℚ)

end

end A041228.P16795558287214979882

/-! ## A041228.P14439736257468873750

`A000034(n)/2*A041962(n)`
-/

namespace A041228.P14439736257468873750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041962 n : ℚ)

end

end A041228.P14439736257468873750

/-! ## A041228.P1399566478780318060

`A041962(n)/gcd(2, A017510(n))`
-/

namespace A041228.P1399566478780318060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041962 n : ℚ) / (Int.gcd 2 (A017510 n) : ℚ)

end

end A041228.P1399566478780318060

/-!
# A041229: Denominators of continued fraction convergents to sqrt(126).

The programs for A041229, there is no canonical definition to state claims against.
-/

/-! ## A041229.P10826153954932590806

`A000034(n)*A041963(n)`
-/

namespace A041229.P10826153954932590806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041963 n

end

end A041229.P10826153954932590806

/-! ## A041229.P799748164446196648

`Δ[A032766(n)]*A041963(n)`
-/

namespace A041229.P799748164446196648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041963 n

end

end A041229.P799748164446196648

/-! ## A041229.P8361775225913743830

`A001511(A053438(n))*A041963(n)`
-/

namespace A041229.P8361775225913743830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A053438 n).toNat * A041963 n

end

end A041229.P8361775225913743830

/-! ## A041229.P3167626166445767142

`A006530(A006519(n+1))*A041963(n)`
-/

namespace A041229.P3167626166445767142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006519 (n + 1)).toNat * A041963 n

end

end A041229.P3167626166445767142

/-! ## A041229.P6779176415137983842

`A006519(n²+1)*A041963(n)`
-/

namespace A041229.P6779176415137983842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041963 n

end

end A041229.P6779176415137983842

/-!
# A041231: Denominators of continued fraction convergents to sqrt(127).

The programs for A041231, there is no canonical definition to state claims against.
-/

/-! ## A041231.P1579065611596339760

`A263342(A066183(n+1))+n`
-/

namespace A041231.P1579065611596339760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263342 (A066183 (n + 1)).toNat + (n : ℤ)

end

end A041231.P1579065611596339760

/-!
# A041235: Denominators of continued fraction convergents to sqrt(129).

The programs for A041235, there is no canonical definition to state claims against.
-/

/-! ## A041235.P13695461248795453799

`A297112(n+1)+A020652(A323870(n+1))`
-/

namespace A041235.P13695461248795453799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (n + 1) + A020652 (A323870 (n + 1)).toNat

end

end A041235.P13695461248795453799

/-!
# A041236: Numerators of continued fraction convergents to sqrt(130).

The programs for A041236, there is no canonical definition to state claims against.
-/

/-! ## A041236.P1340633923166240804

`A041994(n)/A000034(n+1)`
-/

namespace A041236.P1340633923166240804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041994 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041236.P1340633923166240804

/-! ## A041236.P6566718067970384447

`A041994(n)/A040001(n+2)`
-/

namespace A041236.P6566718067970384447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041994 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041236.P6566718067970384447

/-! ## A041236.P1472762471785008815

`A041994(n)/(2-A000035(n))`
-/

namespace A041236.P1472762471785008815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041994 n : ℚ) / (2 - A000035 n : ℚ)

end

end A041236.P1472762471785008815

/-! ## A041236.P7903530700254614375

`A000034(n)/2*A041994(n)`
-/

namespace A041236.P7903530700254614375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041994 n : ℚ)

end

end A041236.P7903530700254614375

/-! ## A041236.P3422210258144645903

`A041994(n)/A014695(2*(n+1))`
-/

namespace A041236.P3422210258144645903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041994 n : ℚ) / (A014695 (2 * (n + 1)) : ℚ)

end

end A041236.P3422210258144645903

/-! ## A041236.P16147420387099585879

`A041994(n)/A006519(A326810(n))`
-/

namespace A041236.P16147420387099585879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041994 n : ℚ) / (A006519 (A326810 n).toNat : ℚ)

end

end A041236.P16147420387099585879

/-! ## A041236.P17886903056024586999

`A041994(n)/A006519(A006519(n+1)+1)`
-/

namespace A041236.P17886903056024586999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041994 n : ℚ) / (A006519 (A006519 (n + 1) + 1).toNat : ℚ)

end

end A041236.P17886903056024586999

/-!
# A041237: Denominators of continued fraction convergents to sqrt(130).

The programs for A041237, the canonical program `A041237.P10328301136668872099` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041237 has offset 0).

The definition of A041237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041237.P10328301136668872099

`114*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=112, a(4)=229, a(5)=570`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041237

/-- `114*a(n-3)+a(n-6)` -/
def P10328301136668872099.Spec : Prop :=
  ∀ n, (P10328301136668872099.a n : ℤ) = A041237 n

theorem P10328301136668872099.correct : P10328301136668872099.Spec := by
  intro n
  simp only [A041237]

end A041237

/-! ## A041237.P266818752950932321

`A000034(n)*A041995(n)`
-/

namespace A041237.P266818752950932321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041995 n

end

end A041237.P266818752950932321

namespace A041237

/-- `A000034(n)*A041995(n)` -/
def P266818752950932321.Spec : Prop :=
  ∀ n, P266818752950932321.a n = A041237 n

end A041237

/-! ## A041237.P4388499987182246430

`ratio[A000079(A008619(n))]*A041995(n)`
-/

namespace A041237.P4388499987182246430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008619 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A041995 n : ℚ)

end

end A041237.P4388499987182246430

namespace A041237

/-- `ratio[A000079(A008619(n))]*A041995(n)` -/
def P4388499987182246430.Spec : Prop :=
  ∀ n, P4388499987182246430.a n = (A041237 n : ℚ)

end A041237

/-! ## A041237.P14712769425805085471

`A020639(A006519(n+1))*A041995(n)`
-/

namespace A041237.P14712769425805085471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006519 (n + 1)).toNat * A041995 n

end

end A041237.P14712769425805085471

namespace A041237

/-- `A020639(A006519(n+1))*A041995(n)` -/
def P14712769425805085471.Spec : Prop :=
  ∀ n, P14712769425805085471.a n = A041237 n

end A041237

/-! ## A041237.P12507306462454180264

`A007318(Δ[A008851(n+1)])*A041995(n)`
-/

namespace A041237.P12507306462454180264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat * A041995 n

end

end A041237.P12507306462454180264

namespace A041237

/-- `A007318(Δ[A008851(n+1)])*A041995(n)` -/
def P12507306462454180264.Spec : Prop :=
  ∀ n, P12507306462454180264.a n = A041237 n

end A041237

/-! ## A041237.P9078597191964755005

`A014963(Δ[A008851(n+1)])*A041995(n)`
-/

namespace A041237.P9078597191964755005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (n + 1) - f1 n).toNat * A041995 n

end

end A041237.P9078597191964755005

namespace A041237

/-- `A014963(Δ[A008851(n+1)])*A041995(n)` -/
def P9078597191964755005.Spec : Prop :=
  ∀ n, P9078597191964755005.a n = A041237 n

end A041237

/-! ## A041237.P5337244636806456792

`A006519(n²+1)*A041995(n)`
-/

namespace A041237.P5337244636806456792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A041995 n

end

end A041237.P5337244636806456792

namespace A041237

/-- `A006519(n²+1)*A041995(n)` -/
def P5337244636806456792.Spec : Prop :=
  ∀ n, P5337244636806456792.a n = A041237 n

end A041237

/-!
# A041240: Numerators of continued fraction convergents to sqrt(132).

The programs for A041240, the canonical program `A041240.P15452028649011719003` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041240 has offset 0).

The definition of A041240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041240.P15452028649011719003

`ogf((11+23x+11x^2-x^3)/(1-46x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041240

/-- `ogf((11+23x+11x^2-x^3)/(1-46x^2+x^4))` -/
def P15452028649011719003.Spec : Prop :=
  ∀ n, P15452028649011719003.a n = A041240 n

theorem P15452028649011719003.correct : P15452028649011719003.Spec := by
  intro n
  simp only [A041240]

end A041240

/-! ## A041240.P17031134240347840421

`lcm(2, A042010(n))/2`
-/

namespace A041240.P17031134240347840421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A042010 n) : ℚ) / 2

end

end A041240.P17031134240347840421

namespace A041240

/-- `lcm(2, A042010(n))/2` -/
def P17031134240347840421.Spec : Prop :=
  ∀ n, P17031134240347840421.a n = (A041240 n : ℚ)

end A041240

/-! ## A041240.P1079276303151390851

`A042010(n)/A000034(n+1)`
-/

namespace A041240.P1079276303151390851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042010 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041240.P1079276303151390851

namespace A041240

/-- `A042010(n)/A000034(n+1)` -/
def P1079276303151390851.Spec : Prop :=
  ∀ n, P1079276303151390851.a n = (A041240 n : ℚ)

end A041240

/-! ## A041240.P9363522162667271256

`A042010(n)/A040001(n+2)`
-/

namespace A041240.P9363522162667271256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042010 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041240.P9363522162667271256

namespace A041240

/-- `A042010(n)/A040001(n+2)` -/
def P9363522162667271256.Spec : Prop :=
  ∀ n, P9363522162667271256.a n = (A041240 n : ℚ)

end A041240

/-! ## A041240.P15098963123251114034

`A042010(n)/A134451(n+2)`
-/

namespace A041240.P15098963123251114034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042010 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041240.P15098963123251114034

namespace A041240

/-- `A042010(n)/A134451(n+2)` -/
def P15098963123251114034.Spec : Prop :=
  ∀ n, P15098963123251114034.a n = (A041240 n : ℚ)

end A041240

/-! ## A041240.P11296023918528448934

`A000034(n)/2*A042010(n)`
-/

namespace A041240.P11296023918528448934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042010 n : ℚ)

end

end A041240.P11296023918528448934

namespace A041240

/-- `A000034(n)/2*A042010(n)` -/
def P11296023918528448934.Spec : Prop :=
  ∀ n, P11296023918528448934.a n = (A041240 n : ℚ)

end A041240

/-! ## A041240.P15224260039376890745

`A042010(n)/A126773(2*(n+1))`
-/

namespace A041240.P15224260039376890745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042010 n : ℚ) / (A126773 (2 * (n + 1)) : ℚ)

end

end A041240.P15224260039376890745

namespace A041240

/-- `A042010(n)/A126773(2*(n+1))` -/
def P15224260039376890745.Spec : Prop :=
  ∀ n, P15224260039376890745.a n = (A041240 n : ℚ)

end A041240

/-! ## A041240.P16083278818025594472

`A042010(n)/A266303(A266303(n))`
-/

namespace A041240.P16083278818025594472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042010 n : ℚ) / (A266303 (A266303 n).toNat : ℚ)

end

end A041240.P16083278818025594472

namespace A041240

/-- `A042010(n)/A266303(A266303(n))` -/
def P16083278818025594472.Spec : Prop :=
  ∀ n, P16083278818025594472.a n = (A041240 n : ℚ)

end A041240

/-! ## A041240.P1687846485740844167

`A042011(n+1)/A041241(n+1)*A042010(n)`
-/

namespace A041240.P1687846485740844167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042011 (n + 1) : ℚ) / (A041241 (n + 1) : ℚ) * (A042010 n : ℚ)

end

end A041240.P1687846485740844167

namespace A041240

/-- `A042011(n+1)/A041241(n+1)*A042010(n)` -/
def P1687846485740844167.Spec : Prop :=
  ∀ n, P1687846485740844167.a n = (A041240 n : ℚ)

end A041240

/-!
# A041241: Denominators of continued fraction convergents to sqrt(132).

The programs for A041241, the canonical program `A041241.P10604670515868450582` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041241 has offset 0).

The definition of A041241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041241.P9744755201912413018

`ogf((1+2x-x^2)/(1-46x^2+x^4))`
-/

namespace A041241.P9744755201912413018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -46, 0, 1] n

end

end A041241.P9744755201912413018

namespace A041241

/-- `ogf((1+2x-x^2)/(1-46x^2+x^4))` -/
def P9744755201912413018.Spec : Prop :=
  ∀ n, P9744755201912413018.a n = A041241 n

end A041241

/-! ## A041241.P10604670515868450582

`46*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=45, a(3)=92`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041241

/-- `46*a(n-2)-a(n-4)` -/
def P10604670515868450582.Spec : Prop :=
  ∀ n, P10604670515868450582.a n = A041241 n

theorem P10604670515868450582.correct : P10604670515868450582.Spec := by
  intro n
  simp only [A041241]

end A041241

/-! ## A041241.P2555686958766297033

`∑[A041055(A042948(n))]`
-/

namespace A041241.P2555686958766297033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041055 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041241.P2555686958766297033

namespace A041241

/-- `∑[A041055(A042948(n))]` -/
def P2555686958766297033.Spec : Prop :=
  ∀ n, P2555686958766297033.a n = A041241 n

end A041241

/-! ## A041241.P4657095871950479664

`A000034(n)*A042011(n)`
-/

namespace A041241.P4657095871950479664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042011 n

end

end A041241.P4657095871950479664

namespace A041241

/-- `A000034(n)*A042011(n)` -/
def P4657095871950479664.Spec : Prop :=
  ∀ n, P4657095871950479664.a n = A041241 n

end A041241

/-! ## A041241.P1639481619299781281

`A040001(n+1)*A042011(n)`
-/

namespace A041241.P1639481619299781281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A042011 n

end

end A041241.P1639481619299781281

namespace A041241

/-- `A040001(n+1)*A042011(n)` -/
def P1639481619299781281.Spec : Prop :=
  ∀ n, P1639481619299781281.a n = A041241 n

end A041241

/-! ## A041241.P17644914009408598660

`A042011(n)*A134451(n+1)`
-/

namespace A041241.P17644914009408598660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042011 n * A134451 (n + 1)

end

end A041241.P17644914009408598660

namespace A041241

/-- `A042011(n)*A134451(n+1)` -/
def P17644914009408598660.Spec : Prop :=
  ∀ n, P17644914009408598660.a n = A041241 n

end A041241

/-! ## A041241.P16899516732100650707

`∑[A041055(A004525(A047470(n+1)))]`
-/

namespace A041241.P16899516732100650707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041055 (A004525 (A047470 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041241.P16899516732100650707

namespace A041241

/-- `∑[A041055(A004525(A047470(n+1)))]` -/
def P16899516732100650707.Spec : Prop :=
  ∀ n, P16899516732100650707.a n = A041241 n

end A041241

/-! ## A041241.P11117642331626015549

`A048788(n+1)/A002530(n+1)*A042011(n)`
-/

namespace A041241.P11117642331626015549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 (n + 1) : ℚ) / (A002530 (n + 1) : ℚ) * (A042011 n : ℚ)

end

end A041241.P11117642331626015549

namespace A041241

/-- `A048788(n+1)/A002530(n+1)*A042011(n)` -/
def P11117642331626015549.Spec : Prop :=
  ∀ n, P11117642331626015549.a n = (A041241 n : ℚ)

end A041241

/-! ## A041241.P5093874605579389313

`A042010(n+1)/A041240(n+1)*A042011(n)`
-/

namespace A041241.P5093874605579389313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042010 (n + 1) : ℚ) / (A041240 (n + 1) : ℚ) * (A042011 n : ℚ)

end

end A041241.P5093874605579389313

namespace A041241

/-- `A042010(n+1)/A041240(n+1)*A042011(n)` -/
def P5093874605579389313.Spec : Prop :=
  ∀ n, P5093874605579389313.a n = (A041241 n : ℚ)

end A041241

/-!
# A041246: Numerators of continued fraction convergents to sqrt(135).

The programs for A041246, there is no canonical definition to state claims against.
-/

/-! ## A041246.P3633884863107245055

`∑[A000194((2-(4/2-a(n-1)-a(n-2)))²)]` with `a(0)=11, a(1)=1, a(2)=11`
-/

namespace A041246.P3633884863107245055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11, 1, 11] fun n f1 =>
  A000194 (SequenceMachineLib.roundAway ((2 - ((4 : ℚ) / 2 - (f1 (n - 1) : ℚ) - (f1 (n - 2) : ℚ))) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041246.P3633884863107245055

/-! ## A041246.P9199333958832413982

`A022101(∑[A361705(n)])`
-/

namespace A041246.P9199333958832413982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041246.P9199333958832413982

/-! ## A041246.P10448003942530665386

`A054404(A022401(n+1))`
-/

namespace A041246.P10448003942530665386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A022401 (n + 1)).toNat

end

end A041246.P10448003942530665386

/-!
# A041247: Denominators of continued fraction convergents to sqrt(135).

The programs for A041247, there is no canonical definition to state claims against.
-/

/-! ## A041247.P3506653872204620352

`∑[A134810(round(ϕ*a(n-1)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A041247.P3506653872204620352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  A134810 (SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041247.P3506653872204620352

/-! ## A041247.P8922599130315914221

`A175105(A008930(n))+A000071(n+1)`
-/

namespace A041247.P8922599130315914221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175105 (A008930 n).toNat + A000071 (n + 1)

end

end A041247.P8922599130315914221

/-! ## A041247.P4976637118510861039

`A192189(A287022(n))+A000071(n+1)`
-/

namespace A041247.P4976637118510861039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192189 (A287022 n).toNat + A000071 (n + 1)

end

end A041247.P4976637118510861039

/-! ## A041247.P3985117573264218069

`A098256(A165878(2*n+3))+A000071(n+1)`
-/

namespace A041247.P3985117573264218069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098256 (A165878 (2 * n + 3)).toNat + A000071 (n + 1)

end

end A041247.P3985117573264218069

/-!
# A041248: Numerators of continued fraction convergents to sqrt(136).

The programs for A041248, the canonical program `A041248.P17081085038956953483` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041248 has offset 0).

The definition of A041248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041248.P17081085038956953483

`ogf((11+12x+23x^2+35x^3+23x^4-12x^5+11x^6-x^7)/(1-70x^4+x^8))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041248

/-- `ogf((11+12x+23x^2+35x^3+23x^4-12x^5+11x^6-x^7)/(1-70x^4+x^8))` -/
def P17081085038956953483.Spec : Prop :=
  ∀ n, P17081085038956953483.a n = A041248 n

theorem P17081085038956953483.correct : P17081085038956953483.Spec := by
  intro n
  simp only [A041248]

end A041248

/-!
# A041249: Denominators of continued fraction convergents to sqrt(136).

The programs for A041249, the canonical program `A041249.P1294498132012613068` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041249 has offset 0).

The definition of A041249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041249.P1294498132012613068

`70*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=68, a(5)=71, a(6)=139, a(7)=210`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041249

/-- `70*a(n-4)-a(n-8)` -/
def P1294498132012613068.Spec : Prop :=
  ∀ n, P1294498132012613068.a n = A041249 n

theorem P1294498132012613068.correct : P1294498132012613068.Spec := by
  intro n
  simp only [A041249]

end A041249

/-! ## A041249.P8417229575559812711

`ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-70x^4+x^8))`
-/

namespace A041249.P8417229575559812711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 3, -2, 1, -1] [1, 0, 0, 0, -70, 0, 0, 0, 1] n

end

end A041249.P8417229575559812711

namespace A041249

/-- `ogf((1+x+2x^2+3x^3-2x^4+x^5-x^6)/(1-70x^4+x^8))` -/
def P8417229575559812711.Spec : Prop :=
  ∀ n, P8417229575559812711.a n = A041249 n

end A041249

/-! ## A041249.P16700523355897714209

`A004525(A041401(n)+A041133(n))`
-/

namespace A041249.P16700523355897714209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041401 n + A041133 n).toNat

end

end A041249.P16700523355897714209

namespace A041249

/-- `A004525(A041401(n)+A041133(n))` -/
def P16700523355897714209.Spec : Prop :=
  ∀ n, P16700523355897714209.a n = A041249 n

end A041249

/-!
# A041252: Numerators of continued fraction convergents to sqrt(138).

The programs for A041252, the canonical program `A041252.P7205048217987027397` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041252 has offset 0).

The definition of A041252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041252.P7205048217987027397

`ogf((11+12x+35x^2+47x^3+35x^4-12x^5+11x^6-x^7)/(1-94x^4+x^8))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041252

/-- `ogf((11+12x+35x^2+47x^3+35x^4-12x^5+11x^6-x^7)/(1-94x^4+x^8))` -/
def P7205048217987027397.Spec : Prop :=
  ∀ n, P7205048217987027397.a n = A041252 n

theorem P7205048217987027397.correct : P7205048217987027397.Spec := by
  intro n
  simp only [A041252]

end A041252

/-!
# A041253: Denominators of continued fraction convergents to sqrt(138).

The programs for A041253, the canonical program `A041253.P2493662563062590019` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041253 has offset 0).

The definition of A041253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041253.P2493662563062590019

`94*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=91, a(5)=95, a(6)=281, a(7)=376`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041253

/-- `94*a(n-4)-a(n-8)` -/
def P2493662563062590019.Spec : Prop :=
  ∀ n, P2493662563062590019.a n = A041253 n

theorem P2493662563062590019.correct : P2493662563062590019.Spec := by
  intro n
  simp only [A041253]

end A041253

/-! ## A041253.P16576011829152734218

`ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-94x^4+x^8))`
-/

namespace A041253.P16576011829152734218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 4, -3, 1, -1] [1, 0, 0, 0, -94, 0, 0, 0, 1] n

end

end A041253.P16576011829152734218

namespace A041253

/-- `ogf((1+x+3x^2+4x^3-3x^4+x^5-x^6)/(1-94x^4+x^8))` -/
def P16576011829152734218.Spec : Prop :=
  ∀ n, P16576011829152734218.a n = A041253 n

end A041253

/-! ## A041253.P7332806515826438276

`A001281(A041465(n)+A041105(n))`
-/

namespace A041253.P7332806515826438276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041465 n + A041105 n).toNat

end

end A041253.P7332806515826438276

namespace A041253

/-- `A001281(A041465(n)+A041105(n))` -/
def P7332806515826438276.Spec : Prop :=
  ∀ n, P7332806515826438276.a n = A041253 n

end A041253

/-!
# A041255: Denominators of continued fraction convergents to sqrt(139).

The programs for A041255, there is no canonical definition to state claims against.
-/

/-! ## A041255.P1532406439932222823

`A264832(a(n-2))+4` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A041255.P1532406439932222823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A264832 (a (n - 2)).toNat + 4

end

end A041255.P1532406439932222823

/-!
# A041256: Numerators of continued fraction convergents to sqrt(140).

The programs for A041256, there is no canonical definition to state claims against.
-/

/-! ## A041256.P16038151350138837026

`A001281(A041258(n)+A041252(n))`
-/

namespace A041256.P16038151350138837026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041258 n + A041252 n).toNat

end

end A041256.P16038151350138837026

/-!
# A041257: Denominators of continued fraction convergents to sqrt(140).

The programs for A041257, the canonical program `A041257.P10780056327384786627` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041257 has offset 0).

The definition of A041257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041257.P10780056327384786627

`142*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6, a(4)=137, a(5)=143, a(6)=709, a(7)=852`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041257

/-- `142*a(n-4)-a(n-8)` -/
def P10780056327384786627.Spec : Prop :=
  ∀ n, P10780056327384786627.a n = A041257 n

theorem P10780056327384786627.correct : P10780056327384786627.Spec := by
  intro n
  simp only [A041257]

end A041257

/-! ## A041257.P3125684463667604369

`A004526(A041601(n)+A041057(n))`
-/

namespace A041257.P3125684463667604369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A041601 n + A041057 n).toNat

end

end A041257.P3125684463667604369

namespace A041257

/-- `A004526(A041601(n)+A041057(n))` -/
def P3125684463667604369.Spec : Prop :=
  ∀ n, P3125684463667604369.a n = A041257 n

end A041257

/-! ## A041257.P1845692433362069984

`A004277(A041601(n))-A042089(n)`
-/

namespace A041257.P1845692433362069984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041601 n).toNat - A042089 n

end

end A041257.P1845692433362069984

namespace A041257

/-- `A004277(A041601(n))-A042089(n)` -/
def P1845692433362069984.Spec : Prop :=
  ∀ n, P1845692433362069984.a n = A041257 n

end A041257

/-!
# A041258: Numerators of continued fraction convergents to sqrt(141).

The programs for A041258, there is no canonical definition to state claims against.
-/

/-! ## A041258.P17013289590729000977

`A001281(A041260(n)+A041252(n))`
-/

namespace A041258.P17013289590729000977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041260 n + A041252 n).toNat

end

end A041258.P17013289590729000977

/-!
# A041259: Denominators of continued fraction convergents to sqrt(141).

The programs for A041259, there is no canonical definition to state claims against.
-/

/-! ## A041259.P17217305379360292820

`A001281(A041473(n)+A041109(n))`
-/

namespace A041259.P17217305379360292820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041473 n + A041109 n).toNat

end

end A041259.P17217305379360292820

/-! ## A041259.P5151423071489795460

`A001281(A041751(n)+A041023(n))`
-/

namespace A041259.P5151423071489795460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A041751 n + A041023 n).toNat

end

end A041259.P5151423071489795460

/-! ## A041259.P1485626062140920833

`A004525(A041473(n)+A041109(n))`
-/

namespace A041259.P1485626062140920833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041473 n + A041109 n).toNat

end

end A041259.P1485626062140920833

/-!
# A041260: Numerators of continued fraction convergents to sqrt(142).

The programs for A041260, there is no canonical definition to state claims against.
-/

/-! ## A041260.P8230552146820877153

`A004277(A041258(n))-A041252(n)`
-/

namespace A041260.P8230552146820877153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041258 n).toNat - A041252 n

end

end A041260.P8230552146820877153

/-!
# A041261: Denominators of continued fraction convergents to sqrt(142).

The programs for A041261, there is no canonical definition to state claims against.
-/

/-! ## A041261.P10692600100402074876

`A000108(24*a(n-2)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=11, a(3)=12, a(4)=275, a(5)=287`
-/

namespace A041261.P10692600100402074876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 11, 12, 275, 287] fun n a =>
  A000108 (24 * a (n - 2) - a (n - 4)).toNat

end

end A041261.P10692600100402074876

/-!
# A041262: Numerators of continued fraction convergents to sqrt(143).

The programs for A041262, the canonical program `A041262.P5676863224015797848` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041262 has offset 0).

The definition of A041262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041262.P13940358670125493516

`ogf((11+12x+11x^2-x^3)/(1-24x^2+x^4))`
-/

namespace A041262.P13940358670125493516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 12, 11, -1] [1, 0, -24, 0, 1] n

end

end A041262.P13940358670125493516

namespace A041262

/-- `ogf((11+12x+11x^2-x^3)/(1-24x^2+x^4))` -/
def P13940358670125493516.Spec : Prop :=
  ∀ n, P13940358670125493516.a n = A041262 n

end A041262

/-! ## A041262.P5676863224015797848

`24*a(n-2)-a(n-4)` with `a(0)=11, a(1)=12, a(2)=275, a(3)=287`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041262

/-- `24*a(n-2)-a(n-4)` -/
def P5676863224015797848.Spec : Prop :=
  ∀ n, P5676863224015797848.a n = A041262 n

theorem P5676863224015797848.correct : P5676863224015797848.Spec := by
  intro n
  simp only [A041262]

end A041262

/-! ## A041262.P12746397171732154865

`∪[A077424(n+1), Δ[A077424(n)]]`
-/

namespace A041262.P12746397171732154865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077424 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A041262.P12746397171732154865

namespace A041262

/-- `∪[A077424(n+1), Δ[A077424(n)]]` -/
def P12746397171732154865.Spec : Prop :=
  ∀ n, (P12746397171732154865.a n : ℤ) = A041262 n

end A041262

/-!
# A041263: Denominators of continued fraction convergents to sqrt(143).

The programs for A041263, the canonical program `A041263.P432317245744957817` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041263 has offset 0).

The definition of A041263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041263.P7727862407337142429

`ogf((1+x-x^2)/(1-24x^2+x^4))`
-/

namespace A041263.P7727862407337142429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -24, 0, 1] n

end

end A041263.P7727862407337142429

namespace A041263

/-- `ogf((1+x-x^2)/(1-24x^2+x^4))` -/
def P7727862407337142429.Spec : Prop :=
  ∀ n, P7727862407337142429.a n = A041263 n

end A041263

/-! ## A041263.P432317245744957817

`24*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=23, a(3)=24`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041263

/-- `24*a(n-2)-a(n-4)` -/
def P432317245744957817.Spec : Prop :=
  ∀ n, P432317245744957817.a n = A041263 n

theorem P432317245744957817.correct : P432317245744957817.Spec := by
  intro n
  simp only [A041263]

end A041263

/-!
# A041264: Numerators of continued fraction convergents to sqrt(145).

The programs for A041264, the canonical program `A041264.P15008732142144828960` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041264 has offset 0).

The definition of A041264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041264.P17059573755828207112

`ogf((12+x)/(1-24x-x^2))`
-/

namespace A041264.P17059573755828207112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 1] [1, -24, -1] n

end

end A041264.P17059573755828207112

namespace A041264

/-- `ogf((12+x)/(1-24x-x^2))` -/
def P17059573755828207112.Spec : Prop :=
  ∀ n, P17059573755828207112.a n = A041264 n

end A041264

/-! ## A041264.P15008732142144828960

`24*a(n-1)+a(n-2)` with `a(0)=12, a(1)=289`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041264

/-- `24*a(n-1)+a(n-2)` -/
def P15008732142144828960.Spec : Prop :=
  ∀ n, (P15008732142144828960.a n : ℤ) = A041264 n

theorem P15008732142144828960.correct : P15008732142144828960.Spec := by
  intro n
  simp only [A041264]

end A041264

/-! ## A041264.P8300344175992213578

`A090316(n+1)/2`
-/

namespace A041264.P8300344175992213578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090316 (n + 1) : ℚ) / 2

end

end A041264.P8300344175992213578

namespace A041264

/-- `A090316(n+1)/2` -/
def P8300344175992213578.Spec : Prop :=
  ∀ n, P8300344175992213578.a n = (A041264 n : ℚ)

end A041264

/-! ## A041264.P15913025734454052482

`lcm(2, A042110(n))/2`
-/

namespace A041264.P15913025734454052482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A042110 n) : ℚ) / 2

end

end A041264.P15913025734454052482

namespace A041264

/-- `lcm(2, A042110(n))/2` -/
def P15913025734454052482.Spec : Prop :=
  ∀ n, P15913025734454052482.a n = (A041264 n : ℚ)

end A041264

/-! ## A041264.P14980677677260638121

`Δ[∑[A090316(n)]/2]`
-/

namespace A041264.P14980677677260638121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090316 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A041264.P14980677677260638121

namespace A041264

/-- `Δ[∑[A090316(n)]/2]` -/
def P14980677677260638121.Spec : Prop :=
  ∀ n, P14980677677260638121.a n = (A041264 n : ℚ)

end A041264

/-! ## A041264.P15601688901884106912

`A042110(n)/A000034(n+1)`
-/

namespace A041264.P15601688901884106912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042110 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041264.P15601688901884106912

namespace A041264

/-- `A042110(n)/A000034(n+1)` -/
def P15601688901884106912.Spec : Prop :=
  ∀ n, P15601688901884106912.a n = (A041264 n : ℚ)

end A041264

/-! ## A041264.P13081969684464860820

`A000034(n)/2*A042110(n)`
-/

namespace A041264.P13081969684464860820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042110 n : ℚ)

end

end A041264.P13081969684464860820

namespace A041264

/-- `A000034(n)/2*A042110(n)` -/
def P13081969684464860820.Spec : Prop :=
  ∀ n, P13081969684464860820.a n = (A041264 n : ℚ)

end A041264

/-!
# A041265: Denominators of continued fraction convergents to sqrt(145).

The programs for A041265, the canonical program `A041265.P4867592435535228165` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041265 has offset 0).

The definition of A041265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041265.P13052808644915957067

`ogf(1/(1-24x-x^2))`
-/

namespace A041265.P13052808644915957067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -24, -1] n

end

end A041265.P13052808644915957067

namespace A041265

/-- `ogf(1/(1-24x-x^2))` -/
def P13052808644915957067.Spec : Prop :=
  ∀ n, P13052808644915957067.a n = A041265 n

end A041265

/-! ## A041265.P4867592435535228165

`24*a(n-1)+a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041265

/-- `24*a(n-1)+a(n-2)` -/
def P4867592435535228165.Spec : Prop :=
  ∀ n, (P4867592435535228165.a n : ℤ) = A041265 n

theorem P4867592435535228165.correct : P4867592435535228165.Spec := by
  intro n
  simp only [A041265]

end A041265

/-! ## A041265.P2780489543701121758

`gcd(2, n+1)*A042111(n)`
-/

namespace A041265.P2780489543701121758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A042111 n

end

end A041265.P2780489543701121758

namespace A041265

/-- `gcd(2, n+1)*A042111(n)` -/
def P2780489543701121758.Spec : Prop :=
  ∀ n, P2780489543701121758.a n = A041265 n

end A041265

/-! ## A041265.P11226176924115686080

`A000034(n)*A042111(n)`
-/

namespace A041265.P11226176924115686080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042111 n

end

end A041265.P11226176924115686080

namespace A041265

/-- `A000034(n)*A042111(n)` -/
def P11226176924115686080.Spec : Prop :=
  ∀ n, P11226176924115686080.a n = A041265 n

end A041265

/-! ## A041265.P11961529821285244589

`A042111(n)*A125916(A016861(n))`
-/

namespace A041265.P11961529821285244589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042111 n * A125916 (A016861 n).toNat

end

end A041265.P11961529821285244589

namespace A041265

/-- `A042111(n)*A125916(A016861(n))` -/
def P11961529821285244589.Spec : Prop :=
  ∀ n, P11961529821285244589.a n = A041265 n

end A041265

/-! ## A041265.P13334513322357871516

`A041264(n+1)%A042111(n+1)`
-/

namespace A041265.P13334513322357871516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041264 (n + 1)) (A042111 (n + 1))

end

end A041265.P13334513322357871516

namespace A041265

/-- `A041264(n+1)%A042111(n+1)` -/
def P13334513322357871516.Spec : Prop :=
  ∀ n, P13334513322357871516.a n = A041265 n

end A041265

/-! ## A041265.P1429066478129116865

`A090316(n+2)%A042111(n+2)`
-/

namespace A041265.P1429066478129116865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090316 (n + 2)) (A042111 (n + 2))

end

end A041265.P1429066478129116865

namespace A041265

/-- `A090316(n+2)%A042111(n+2)` -/
def P1429066478129116865.Spec : Prop :=
  ∀ n, P1429066478129116865.a n = A041265 n

end A041265

/-!
# A041266: Numerators of continued fraction convergents to sqrt(146).

The programs for A041266, there is no canonical definition to state claims against.
-/

/-! ## A041266.P11580684815911381509

`A042118(n)/gcd(2, n)`
-/

namespace A041266.P11580684815911381509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042118 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041266.P11580684815911381509

/-! ## A041266.P13846806451130254747

`A042118(n)/Δ[A007494(n)]`
-/

namespace A041266.P13846806451130254747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042118 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041266.P13846806451130254747

/-! ## A041266.P10811696221471126334

`A042118(n)/A000034(n+1)`
-/

namespace A041266.P10811696221471126334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042118 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041266.P10811696221471126334

/-! ## A041266.P7818574668586580681

`A000034(n)/2*A042118(n)`
-/

namespace A041266.P7818574668586580681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042118 n : ℚ)

end

end A041266.P7818574668586580681

/-! ## A041266.P3111477203559092060

`A042118(n)/A080425(A001651(n+1))`
-/

namespace A041266.P3111477203559092060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042118 n : ℚ) / (A080425 (A001651 (n + 1)).toNat : ℚ)

end

end A041266.P3111477203559092060

/-! ## A041266.P17692934128614091547

`A042118(n)/A000688(A033476(n))`
-/

namespace A041266.P17692934128614091547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042118 n : ℚ) / (A000688 (A033476 n).toNat : ℚ)

end

end A041266.P17692934128614091547

/-!
# A041267: Denominators of continued fraction convergents to sqrt(146).

The programs for A041267, there is no canonical definition to state claims against.
-/

/-! ## A041267.P6525388991151145788

`A000034(n)*A042119(n)`
-/

namespace A041267.P6525388991151145788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042119 n

end

end A041267.P6525388991151145788

/-! ## A041267.P10270111060014108304

`gcd(2, A042127(n))*A042119(n)`
-/

namespace A041267.P10270111060014108304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A042127 n) : ℤ) * A042119 n

end

end A041267.P10270111060014108304

/-! ## A041267.P14014084508807205530

`A001221(A033476(n))*A042119(n)`
-/

namespace A041267.P14014084508807205530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A033476 n).toNat * A042119 n

end

end A041267.P14014084508807205530

/-! ## A041267.P3690021131409109894

`A041333(n-A052928(n))*A042119(n)`
-/

namespace A041267.P3690021131409109894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041333 ((n : ℤ) - A052928 n).toNat * A042119 n

end

end A041267.P3690021131409109894

/-!
# A041268: Numerators of continued fraction convergents to sqrt(147).

The programs for A041268, there is no canonical definition to state claims against.
-/

/-! ## A041268.P6099397629079892272

`A259593(A047398(n+1))`
-/

namespace A041268.P6099397629079892272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (A047398 (n + 1)).toNat

end

end A041268.P6099397629079892272

/-! ## A041268.P17650009068982859391

`A259593(A047470(n+1)+3)`
-/

namespace A041268.P17650009068982859391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (A047470 (n + 1) + 3).toNat

end

end A041268.P17650009068982859391

/-! ## A041268.P4177656389939366407

`A259593(A047270(n+1)+n)`
-/

namespace A041268.P4177656389939366407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (A047270 (n + 1) + (n : ℤ)).toNat

end

end A041268.P4177656389939366407

/-! ## A041268.P9208541313787059887

`A042126(n)/A000034(n+1)`
-/

namespace A041268.P9208541313787059887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042126 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041268.P9208541313787059887

/-! ## A041268.P4615877107563065719

`A000034(n)/2*A042126(n)`
-/

namespace A041268.P4615877107563065719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042126 n : ℚ)

end

end A041268.P4615877107563065719

/-! ## A041268.P8935177825668478505

`A259593(A047235(n+1)+1+n)`
-/

namespace A041268.P8935177825668478505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (A047235 (n + 1) + 1 + (n : ℤ)).toNat

end

end A041268.P8935177825668478505

/-! ## A041268.P13422793219507806121

`A259593(or(A000034(n), A016825(n)))`
-/

namespace A041268.P13422793219507806121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (Int.lor (A000034 n) (A016825 n)).toNat

end

end A041268.P13422793219507806121

/-! ## A041268.P16762460068241078381

`A259593(A016825(n)+2-A000034(n))`
-/

namespace A041268.P16762460068241078381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (A016825 n + (2 - A000034 n)).toNat

end

end A041268.P16762460068241078381

/-! ## A041268.P16359142864386564499

`A259593(2-(A000034(n)-A016825(n)))`
-/

namespace A041268.P16359142864386564499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (2 - (A000034 n - A016825 n)).toNat

end

end A041268.P16359142864386564499

/-! ## A041268.P8337127813667576224

`A259593(or(A006519(n+1), A016825(n)))`
-/

namespace A041268.P8337127813667576224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259593 (Int.lor (A006519 (n + 1)) (A016825 n)).toNat

end

end A041268.P8337127813667576224

/-!
# A041269: Denominators of continued fraction convergents to sqrt(147).

The programs for A041269, there is no canonical definition to state claims against.
-/

/-! ## A041269.P5532444619313115163

`A000034(n)*A042127(n)`
-/

namespace A041269.P5532444619313115163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042127 n

end

end A041269.P5532444619313115163

/-! ## A041269.P14855930506220996338

`A010673(n)!*A042127(n)`
-/

namespace A041269.P14855930506220996338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010673 n).toNat : ℤ) * A042127 n

end

end A041269.P14855930506220996338

/-! ## A041269.P12535100396752829506

`A040001(n+1)*A042127(n)`
-/

namespace A041269.P12535100396752829506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A042127 n

end

end A041269.P12535100396752829506

/-! ## A041269.P11728901646702105078

`A001075(n)%3*A042127(n)`
-/

namespace A041269.P11728901646702105078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001075 n) 3 * A042127 n

end

end A041269.P11728901646702105078

/-! ## A041269.P2111906751146607994

`A006519(n²+1)*A042127(n)`
-/

namespace A041269.P2111906751146607994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A042127 n

end

end A041269.P2111906751146607994

/-! ## A041269.P41714031120080961

`A001511(A002522(n))*A042127(n)`
-/

namespace A041269.P41714031120080961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002522 n).toNat * A042127 n

end

end A041269.P41714031120080961

/-! ## A041269.P12186066416356150352

`A000032(∑[A033999(n)])*A042127(n)`
-/

namespace A041269.P12186066416356150352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A042127 n

end

end A041269.P12186066416356150352

/-! ## A041269.P17682401289198823457

`∑[A033999(A014681(n))]*A042127(n)`
-/

namespace A041269.P17682401289198823457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A042127 n

end

end A041269.P17682401289198823457

/-! ## A041269.P10825410974165606588

`A014963(A006519(n+1))*A042127(n)`
-/

namespace A041269.P10825410974165606588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1)).toNat * A042127 n

end

end A041269.P10825410974165606588

/-! ## A041269.P6695574548309309711

`A041449(n)/A042859(n)*A042127(n)`
-/

namespace A041269.P6695574548309309711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041449 n : ℚ) / (A042859 n : ℚ) * (A042127 n : ℚ)

end

end A041269.P6695574548309309711

/-!
# A041270: Numerators of continued fraction convergents to sqrt(148).

The programs for A041270, there is no canonical definition to state claims against.
-/

/-! ## A041270.P12054635792036082077

`lcm(2, A042134(n))/2`
-/

namespace A041270.P12054635792036082077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A042134 n) : ℚ) / 2

end

end A041270.P12054635792036082077

/-! ## A041270.P8726943496985934681

`gcd(2, n)*A041060(n)`
-/

namespace A041270.P8726943496985934681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041060 n

end

end A041270.P8726943496985934681

/-! ## A041270.P3482235534735579305

`A000034(n+1)*A041060(n)`
-/

namespace A041270.P3482235534735579305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041060 n

end

end A041270.P3482235534735579305

/-! ## A041270.P7023116525731228487

`A042134(n)/A000034(n+1)`
-/

namespace A041270.P7023116525731228487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042134 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041270.P7023116525731228487

/-! ## A041270.P15929874481885515691

`A086928(n+1)/A000034(n)`
-/

namespace A041270.P15929874481885515691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086928 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A041270.P15929874481885515691

/-! ## A041270.P2353953295342254125

`A042134(n)/A040001(n+2)`
-/

namespace A041270.P2353953295342254125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042134 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041270.P2353953295342254125

/-! ## A041270.P8880860909926011305

`2*A041628(n)-A042134(n)`
-/

namespace A041270.P8880860909926011305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041628 n - A042134 n

end

end A041270.P8880860909926011305

/-! ## A041270.P17789223670105457496

`2/A000034(n)*A041060(n)`
-/

namespace A041270.P17789223670105457496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041060 n : ℚ)

end

end A041270.P17789223670105457496

/-! ## A041270.P5573047207760504956

`A000034(n)/2*A042134(n)`
-/

namespace A041270.P5573047207760504956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042134 n : ℚ)

end

end A041270.P5573047207760504956

/-! ## A041270.P12722924521515364243

`A041060(n)*A106524(A106524(n))`
-/

namespace A041270.P12722924521515364243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041060 n * A106524 (A106524 n).toNat

end

end A041270.P12722924521515364243

/-!
# A041271: Denominators of continued fraction convergents to sqrt(148).

The programs for A041271, the canonical program `A041271.P13733652415608658387` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041271 has offset 0).

The definition of A041271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041271.P13733652415608658387

`146*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=145, a(3)=876`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041271

/-- `146*a(n-2)-a(n-4)` -/
def P13733652415608658387.Spec : Prop :=
  ∀ n, P13733652415608658387.a n = A041271 n

theorem P13733652415608658387.correct : P13733652415608658387.Spec := by
  intro n
  simp only [A041271]

end A041271

/-! ## A041271.P5011419983442258718

`lcm(2, A041061(n))/2`
-/

namespace A041271.P5011419983442258718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041061 n) : ℚ) / 2

end

end A041271.P5011419983442258718

namespace A041271

/-- `lcm(2, A041061(n))/2` -/
def P5011419983442258718.Spec : Prop :=
  ∀ n, P5011419983442258718.a n = (A041271 n : ℚ)

end A041271

/-! ## A041271.P6983162928373700705

`A000034(n)*A042135(n)`
-/

namespace A041271.P6983162928373700705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042135 n

end

end A041271.P6983162928373700705

namespace A041271

/-- `A000034(n)*A042135(n)` -/
def P6983162928373700705.Spec : Prop :=
  ∀ n, P6983162928373700705.a n = A041271 n

end A041271

/-! ## A041271.P5955445914846795213

`A041061(n)/A000034(n)`
-/

namespace A041271.P5955445914846795213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (A000034 n : ℚ)

end

end A041271.P5955445914846795213

namespace A041271

/-- `A041061(n)/A000034(n)` -/
def P5955445914846795213.Spec : Prop :=
  ∀ n, P5955445914846795213.a n = (A041271 n : ℚ)

end A041271

/-! ## A041271.P11128379108900131585

`A041061(n)/A010673(n)!`
-/

namespace A041271.P11128379108900131585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A041271.P11128379108900131585

namespace A041271

/-- `A041061(n)/A010673(n)!` -/
def P11128379108900131585.Spec : Prop :=
  ∀ n, P11128379108900131585.a n = (A041271 n : ℚ)

end A041271

/-! ## A041271.P12925189115059914718

`A041061(n)/(A000035(n)+1)`
-/

namespace A041271.P12925189115059914718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041271.P12925189115059914718

namespace A041271

/-- `A041061(n)/(A000035(n)+1)` -/
def P12925189115059914718.Spec : Prop :=
  ∀ n, P12925189115059914718.a n = (A041271 n : ℚ)

end A041271

/-! ## A041271.P7535203869795737839

`A041061(n)/gcd(2, A016777(n))`
-/

namespace A041271.P7535203869795737839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041061 n : ℚ) / (Int.gcd 2 (A016777 n) : ℚ)

end

end A041271.P7535203869795737839

namespace A041271

/-- `A041061(n)/gcd(2, A016777(n))` -/
def P7535203869795737839.Spec : Prop :=
  ∀ n, P7535203869795737839.a n = (A041271 n : ℚ)

end A041271

/-! ## A041271.P17812979101595955793

`(Δ[A008619(n)]+1)*A042135(n)`
-/

namespace A041271.P17812979101595955793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A042135 n

end

end A041271.P17812979101595955793

namespace A041271

/-- `(Δ[A008619(n)]+1)*A042135(n)` -/
def P17812979101595955793.Spec : Prop :=
  ∀ n, P17812979101595955793.a n = A041271 n

end A041271

/-! ## A041271.P8212271335091100148

`A001511(A106524(n))*A042135(n)`
-/

namespace A041271.P8212271335091100148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A106524 n).toNat * A042135 n

end

end A041271.P8212271335091100148

namespace A041271

/-- `A001511(A106524(n))*A042135(n)` -/
def P8212271335091100148.Spec : Prop :=
  ∀ n, P8212271335091100148.a n = A041271 n

end A041271

/-! ## A041271.P11078931202857231627

`A042135(n)*A077943(Δ[A008619(n)])`
-/

namespace A041271.P11078931202857231627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042135 n * A077943 (f1 (n + 1) - f1 n).toNat

end

end A041271.P11078931202857231627

namespace A041271

/-- `A042135(n)*A077943(Δ[A008619(n)])` -/
def P11078931202857231627.Spec : Prop :=
  ∀ n, P11078931202857231627.a n = A041271 n

end A041271

/-!
# A041273: Denominators of continued fraction convergents to sqrt(149).

The programs for A041273, there is no canonical definition to state claims against.
-/

/-! ## A041273.P7534711662569446857

`A247208(n+1)+A065716(A008416(n))`
-/

namespace A041273.P7534711662569446857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247208 (n + 1) + A065716 (A008416 n).toNat

end

end A041273.P7534711662569446857

/-!
# A041274: Numerators of continued fraction convergents to sqrt(150).

The programs for A041274, the canonical program `A041274.P3447649029243336935` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041274 has offset 0).

The definition of A041274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041274.P3447649029243336935

`ogf((12+49x+12x^2-x^3)/(1-98x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041274

/-- `ogf((12+49x+12x^2-x^3)/(1-98x^2+x^4))` -/
def P3447649029243336935.Spec : Prop :=
  ∀ n, P3447649029243336935.a n = A041274 n

theorem P3447649029243336935.correct : P3447649029243336935.Spec := by
  intro n
  simp only [A041274]

end A041274

/-! ## A041274.P5051065599560649717

`A042150(n)/gcd(2, n)`
-/

namespace A041274.P5051065599560649717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042150 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041274.P5051065599560649717

namespace A041274

/-- `A042150(n)/gcd(2, n)` -/
def P5051065599560649717.Spec : Prop :=
  ∀ n, P5051065599560649717.a n = (A041274 n : ℚ)

end A041274

/-! ## A041274.P10540543370888465559

`A042150(n)/Δ[A007494(n)]`
-/

namespace A041274.P10540543370888465559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042150 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041274.P10540543370888465559

namespace A041274

/-- `A042150(n)/Δ[A007494(n)]` -/
def P10540543370888465559.Spec : Prop :=
  ∀ n, P10540543370888465559.a n = (A041274 n : ℚ)

end A041274

/-! ## A041274.P2152144921294455785

`A042150(n)/A000034(n+1)`
-/

namespace A041274.P2152144921294455785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042150 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041274.P2152144921294455785

namespace A041274

/-- `A042150(n)/A000034(n+1)` -/
def P2152144921294455785.Spec : Prop :=
  ∀ n, P2152144921294455785.a n = (A041274 n : ℚ)

end A041274

/-! ## A041274.P1659011955704589774

`A000034(n)/2*A042150(n)`
-/

namespace A041274.P1659011955704589774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042150 n : ℚ)

end

end A041274.P1659011955704589774

namespace A041274

/-- `A000034(n)/2*A042150(n)` -/
def P1659011955704589774.Spec : Prop :=
  ∀ n, P1659011955704589774.a n = (A041274 n : ℚ)

end A041274

/-! ## A041274.P14380667266939420982

`A042150(n)/A000045(A020639(3*(n+1)))`
-/

namespace A041274.P14380667266939420982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042150 n : ℚ) / (A000045 (A020639 (3 * (n + 1))).toNat : ℚ)

end

end A041274.P14380667266939420982

namespace A041274

/-- `A042150(n)/A000045(A020639(3*(n+1)))` -/
def P14380667266939420982.Spec : Prop :=
  ∀ n, P14380667266939420982.a n = (A041274 n : ℚ)

end A041274

/-!
# A041275: Denominators of continued fraction convergents to sqrt(150).

The programs for A041275, the canonical program `A041275.P8845619507041156250` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041275 has offset 0).

The definition of A041275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041275.P18591336102146422

`ogf((1+4x-x^2)/(1-98x^2+x^4))`
-/

namespace A041275.P18591336102146422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -1] [1, 0, -98, 0, 1] n

end

end A041275.P18591336102146422

namespace A041275

/-- `ogf((1+4x-x^2)/(1-98x^2+x^4))` -/
def P18591336102146422.Spec : Prop :=
  ∀ n, P18591336102146422.a n = A041275 n

end A041275

/-! ## A041275.P8845619507041156250

`98*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=97, a(3)=392`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041275

/-- `98*a(n-2)-a(n-4)` -/
def P8845619507041156250.Spec : Prop :=
  ∀ n, P8845619507041156250.a n = A041275 n

theorem P8845619507041156250.correct : P8845619507041156250.Spec := by
  intro n
  simp only [A041275]

end A041275

/-! ## A041275.P8937844794861510320

`(and(1, n)+1)*A042151(n)`
-/

namespace A041275.P8937844794861510320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1 : ℤ) * A042151 n

end

end A041275.P8937844794861510320

namespace A041275

/-- `(and(1, n)+1)*A042151(n)` -/
def P8937844794861510320.Spec : Prop :=
  ∀ n, P8937844794861510320.a n = A041275 n

end A041275

/-! ## A041275.P8991343999787258417

`A040001(n+1)*A042151(n)`
-/

namespace A041275.P8991343999787258417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A042151 n

end

end A041275.P8991343999787258417

namespace A041275

/-- `A040001(n+1)*A042151(n)` -/
def P8991343999787258417.Spec : Prop :=
  ∀ n, P8991343999787258417.a n = A041275 n

end A041275

/-! ## A041275.P162187262513561568

`A000005(gcd(n+1, 2*n))*A042151(n)`
-/

namespace A041275.P162187262513561568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (n + 1) (2 * n)) * A042151 n

end

end A041275.P162187262513561568

namespace A041275

/-- `A000005(gcd(n+1, 2*n))*A042151(n)` -/
def P162187262513561568.Spec : Prop :=
  ∀ n, P162187262513561568.a n = A041275 n

end A041275

/-! ## A041275.P3176156414760705336

`gcd(A042151(n)², A042151(2*n+1))`
-/

namespace A041275.P3176156414760705336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A042151 n ^ 2) (A042151 (2 * n + 1))

end

end A041275.P3176156414760705336

namespace A041275

/-- `gcd(A042151(n)², A042151(2*n+1))` -/
def P3176156414760705336.Spec : Prop :=
  ∀ n, (P3176156414760705336.a n : ℤ) = A041275 n

end A041275

/-!
# A041278: Numerators of continued fraction convergents to sqrt(152).

The programs for A041278, the canonical program `A041278.P3923362779940342146` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041278 has offset 0).

The definition of A041278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A041278.P3923362779940342146

`gcd(2, n)*A041062(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A041278

/-- `gcd(2, n)*A041062(n)` -/
def P3923362779940342146.Spec : Prop :=
  ∀ n, P3923362779940342146.a n = A041278 n

theorem P3923362779940342146.correct : P3923362779940342146.Spec := by
  intro n
  simp only [A041278]

end A041278

/-! ## A041278.P8695302810732913704

`A000034(n+1)*A041062(n)`
-/

namespace A041278.P8695302810732913704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041062 n

end

end A041278.P8695302810732913704

namespace A041278

/-- `A000034(n+1)*A041062(n)` -/
def P8695302810732913704.Spec : Prop :=
  ∀ n, P8695302810732913704.a n = A041278 n

end A041278

/-! ## A041278.P11832078608166931547

`A040001(n+2)*A041062(n)`
-/

namespace A041278.P11832078608166931547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041062 n

end

end A041278.P11832078608166931547

namespace A041278

/-- `A040001(n+2)*A041062(n)` -/
def P11832078608166931547.Spec : Prop :=
  ∀ n, P11832078608166931547.a n = A041278 n

end A041278

/-! ## A041278.P874185346900282175

`A041062(n)*A134451(n+2)`
-/

namespace A041278.P874185346900282175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041062 n * A134451 (n + 2)

end

end A041278.P874185346900282175

namespace A041278

/-- `A041062(n)*A134451(n+2)` -/
def P874185346900282175.Spec : Prop :=
  ∀ n, P874185346900282175.a n = A041278 n

end A041278

/-! ## A041278.P15464386205994485494

`(2-A000035(n))*A041062(n)`
-/

namespace A041278.P15464386205994485494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A041062 n

end

end A041278.P15464386205994485494

namespace A041278

/-- `(2-A000035(n))*A041062(n)` -/
def P15464386205994485494.Spec : Prop :=
  ∀ n, P15464386205994485494.a n = A041278 n

end A041278

/-! ## A041278.P697066148072380652

`2/A000034(n)*A041062(n)`
-/

namespace A041278.P697066148072380652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041062 n : ℚ)

end

end A041278.P697066148072380652

namespace A041278

/-- `2/A000034(n)*A041062(n)` -/
def P697066148072380652.Spec : Prop :=
  ∀ n, P697066148072380652.a n = (A041278 n : ℚ)

end A041278

/-! ## A041278.P3876370054225859263

`A041062(n)*A266303(A266303(n))`
-/

namespace A041278.P3876370054225859263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041062 n * A266303 (A266303 n).toNat

end

end A041278.P3876370054225859263

namespace A041278

/-- `A041062(n)*A266303(A266303(n))` -/
def P3876370054225859263.Spec : Prop :=
  ∀ n, P3876370054225859263.a n = A041278 n

end A041278

/-! ## A041278.P2658413290076340305

`A000032(Δ[A004526(n)])*A041062(n)`
-/

namespace A041278.P2658413290076340305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f1 (n + 1) - f1 n).toNat * A041062 n

end

end A041278.P2658413290076340305

namespace A041278

/-- `A000032(Δ[A004526(n)])*A041062(n)` -/
def P2658413290076340305.Spec : Prop :=
  ∀ n, P2658413290076340305.a n = A041278 n

end A041278

/-! ## A041278.P9462806820564384165

`A013632(Δ[A004526(n)])*A041062(n)`
-/

namespace A041278.P9462806820564384165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (f1 (n + 1) - f1 n).toNat * A041062 n

end

end A041278.P9462806820564384165

namespace A041278

/-- `A013632(Δ[A004526(n)])*A041062(n)` -/
def P9462806820564384165.Spec : Prop :=
  ∀ n, P9462806820564384165.a n = A041278 n

end A041278

/-! ## A041278.P7444495250367372746

`(A041062(n)+A041062(n))/A040001(n+1)`
-/

namespace A041278.P7444495250367372746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041062 n + A041062 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041278.P7444495250367372746

namespace A041278

/-- `(A041062(n)+A041062(n))/A040001(n+1)` -/
def P7444495250367372746.Spec : Prop :=
  ∀ n, P7444495250367372746.a n = (A041278 n : ℚ)

end A041278

/-!
# A041279: Denominators of continued fraction convergents to sqrt(152).

The programs for A041279, the canonical program `A041279.P17990484177050140652` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041279 has offset 0).

The definition of A041279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041279.P4705071587375238150

`ogf((1+3x-x^2)/(1-74x^2+x^4))`
-/

namespace A041279.P4705071587375238150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1] [1, 0, -74, 0, 1] n

end

end A041279.P4705071587375238150

namespace A041279

/-- `ogf((1+3x-x^2)/(1-74x^2+x^4))` -/
def P4705071587375238150.Spec : Prop :=
  ∀ n, P4705071587375238150.a n = A041279 n

end A041279

/-! ## A041279.P17990484177050140652

`74*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=73, a(3)=222`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041279

/-- `74*a(n-2)-a(n-4)` -/
def P17990484177050140652.Spec : Prop :=
  ∀ n, P17990484177050140652.a n = A041279 n

theorem P17990484177050140652.correct : P17990484177050140652.Spec := by
  intro n
  simp only [A041279]

end A041279

/-! ## A041279.P8696392149609299078

`lcm(2, A041063(n))/2`
-/

namespace A041279.P8696392149609299078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041063 n) : ℚ) / 2

end

end A041279.P8696392149609299078

namespace A041279

/-- `lcm(2, A041063(n))/2` -/
def P8696392149609299078.Spec : Prop :=
  ∀ n, P8696392149609299078.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P12568776868503403745

`A041063(n)/Δ[A032766(n)]`
-/

namespace A041279.P12568776868503403745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041279.P12568776868503403745

namespace A041279

/-- `A041063(n)/Δ[A032766(n)]` -/
def P12568776868503403745.Spec : Prop :=
  ∀ n, P12568776868503403745.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P2775344731864379086

`A041063(n)/(A000035(n)+1)`
-/

namespace A041279.P2775344731864379086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041279.P2775344731864379086

namespace A041279

/-- `A041063(n)/(A000035(n)+1)` -/
def P2775344731864379086.Spec : Prop :=
  ∀ n, P2775344731864379086.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P8442951164706725436

`A041063(n)/A040001(n+1)`
-/

namespace A041279.P8442951164706725436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A041279.P8442951164706725436

namespace A041279

/-- `A041063(n)/A040001(n+1)` -/
def P8442951164706725436.Spec : Prop :=
  ∀ n, P8442951164706725436.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P16884118803490045398

`A041063(n)/(Δ[A004526(n)]+1)`
-/

namespace A041279.P16884118803490045398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A041279.P16884118803490045398

namespace A041279

/-- `A041063(n)/(Δ[A004526(n)]+1)` -/
def P16884118803490045398.Spec : Prop :=
  ∀ n, P16884118803490045398.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P4358479589398458599

`A041063(n)/(Δ[A008619(n)]+1)`
-/

namespace A041279.P4358479589398458599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A041279.P4358479589398458599

namespace A041279

/-- `A041063(n)/(Δ[A008619(n)]+1)` -/
def P4358479589398458599.Spec : Prop :=
  ∀ n, P4358479589398458599.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P119502578805999188

`A041063(n)/A036453(A028920(n))`
-/

namespace A041279.P119502578805999188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A036453 (A028920 n).toNat : ℚ)

end

end A041279.P119502578805999188

namespace A041279

/-- `A041063(n)/A036453(A028920(n))` -/
def P119502578805999188.Spec : Prop :=
  ∀ n, P119502578805999188.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P3144143895847977934

`A041063(n)/A014963(A006519(n+1))`
-/

namespace A041279.P3144143895847977934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A041279.P3144143895847977934

namespace A041279

/-- `A041063(n)/A014963(A006519(n+1))` -/
def P3144143895847977934.Spec : Prop :=
  ∀ n, P3144143895847977934.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P17656650919484654688

`A041063(n)/A001511(A020639(n+1))`
-/

namespace A041279.P17656650919484654688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A001511 (A020639 (n + 1)).toNat : ℚ)

end

end A041279.P17656650919484654688

namespace A041279

/-- `A041063(n)/A001511(A020639(n+1))` -/
def P17656650919484654688.Spec : Prop :=
  ∀ n, P17656650919484654688.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P11525395579743886160

`A041063(n)/A036453(A001511(n+1))`
-/

namespace A041279.P11525395579743886160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A036453 (A001511 (n + 1)).toNat : ℚ)

end

end A041279.P11525395579743886160

namespace A041279

/-- `A041063(n)/A036453(A001511(n+1))` -/
def P11525395579743886160.Spec : Prop :=
  ∀ n, P11525395579743886160.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P6879109153528310930

`A041063(n)/A036453(A115364(n+1))`
-/

namespace A041279.P6879109153528310930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A036453 (A115364 (n + 1)).toNat : ℚ)

end

end A041279.P6879109153528310930

namespace A041279

/-- `A041063(n)/A036453(A115364(n+1))` -/
def P6879109153528310930.Spec : Prop :=
  ∀ n, P6879109153528310930.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P16775167719097972849

`A041063(n)/A001511(n²+1)`
-/

namespace A041279.P16775167719097972849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A001511 (n ^ 2 + 1) : ℚ)

end

end A041279.P16775167719097972849

namespace A041279

/-- `A041063(n)/A001511(n²+1)` -/
def P16775167719097972849.Spec : Prop :=
  ∀ n, P16775167719097972849.a n = (A041279 n : ℚ)

end A041279

/-! ## A041279.P697708847604161781

`A041063(n)/A006519(n²+1)`
-/

namespace A041279.P697708847604161781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041063 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041279.P697708847604161781

namespace A041279

/-- `A041063(n)/A006519(n²+1)` -/
def P697708847604161781.Spec : Prop :=
  ∀ n, P697708847604161781.a n = (A041279 n : ℚ)

end A041279

/-!
# A041280: Numerators of continued fraction convergents to sqrt(153).

The programs for A041280, there is no canonical definition to state claims against.
-/

/-! ## A041280.P2907137100806628252

`A042174(n)/gcd(2, n)`
-/

namespace A041280.P2907137100806628252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042174 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A041280.P2907137100806628252

/-! ## A041280.P393377713073790095

`A042174(n)/A000034(n+1)`
-/

namespace A041280.P393377713073790095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042174 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041280.P393377713073790095

/-! ## A041280.P8191521893592938538

`A042174(n)/A134451(n+2)`
-/

namespace A041280.P8191521893592938538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042174 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041280.P8191521893592938538

/-! ## A041280.P5302976179778878578

`A042174(n)/(2-A000035(n))`
-/

namespace A041280.P5302976179778878578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042174 n : ℚ) / (2 - A000035 n : ℚ)

end

end A041280.P5302976179778878578

/-! ## A041280.P9315530764054262846

`A000034(n)/2*A042174(n)`
-/

namespace A041280.P9315530764054262846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042174 n : ℚ)

end

end A041280.P9315530764054262846

/-!
# A041281: Denominators of continued fraction convergents to sqrt(153).

The programs for A041281, there is no canonical definition to state claims against.
-/

/-! ## A041281.P10593259266996669300

`gcd(2, n+1)*A042175(n)`
-/

namespace A041281.P10593259266996669300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A042175 n

end

end A041281.P10593259266996669300

/-! ## A041281.P8100195998258232988

`A000034(n)*A042175(n)`
-/

namespace A041281.P8100195998258232988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042175 n

end

end A041281.P8100195998258232988

/-! ## A041281.P7142105011818349776

`Δ[A032766(n)]*A042175(n)`
-/

namespace A041281.P7142105011818349776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042175 n

end

end A041281.P7142105011818349776

/-! ## A041281.P11878179557223965870

`(A000035(n)+1)*A042175(n)`
-/

namespace A041281.P11878179557223965870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A042175 n

end

end A041281.P11878179557223965870

/-! ## A041281.P877941314502954586

`Δ[A001651(n+1)]*A042175(n)`
-/

namespace A041281.P877941314502954586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042175 n

end

end A041281.P877941314502954586

/-! ## A041281.P13217352260312196485

`(2-Δ[A110654(n)])*A042175(n)`
-/

namespace A041281.P13217352260312196485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A042175 n

end

end A041281.P13217352260312196485

/-! ## A041281.P7801735095806402444

`A007947(A006519(n+1))*A042175(n)`
-/

namespace A041281.P7801735095806402444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A006519 (n + 1)).toNat * A042175 n

end

end A041281.P7801735095806402444

/-! ## A041281.P16284688132949840620

`A042175(n)+Δ[A110654(n+1)]*A042175(n)`
-/

namespace A041281.P16284688132949840620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042175 n + (f1 (n + 1) - f1 n) * A042175 n

end

end A041281.P16284688132949840620

/-! ## A041281.P180340292858015206

`A014963(A006519(n+1)²)*A042175(n)`
-/

namespace A041281.P180340292858015206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006519 (n + 1) ^ 2).toNat * A042175 n

end

end A041281.P180340292858015206

/-! ## A041281.P2670119707017055585

`A006519(n²+1)*A042175(n)`
-/

namespace A041281.P2670119707017055585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A042175 n

end

end A041281.P2670119707017055585

/-!
# A041284: Numerators of continued fraction convergents to sqrt(155).

The programs for A041284, there is no canonical definition to state claims against.
-/

/-! ## A041284.P839629125441094245

`A042190(n)/Δ[A007494(n)]`
-/

namespace A041284.P839629125441094245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042190 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041284.P839629125441094245

/-! ## A041284.P2752280134652696439

`A042190(n)/A000034(n+1)`
-/

namespace A041284.P2752280134652696439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042190 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A041284.P2752280134652696439

/-! ## A041284.P5060474573305357831

`A000034(n)/2*A042190(n)`
-/

namespace A041284.P5060474573305357831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A042190 n : ℚ)

end

end A041284.P5060474573305357831

/-! ## A041284.P13136112952931486706

`A042190(n)/A014710(2*n)`
-/

namespace A041284.P13136112952931486706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042190 n : ℚ) / (A014710 (2 * n) : ℚ)

end

end A041284.P13136112952931486706

/-! ## A041284.P4029003492894925007

`A042190(n)/(∑[A033999(n)]+1)`
-/

namespace A041284.P4029003492894925007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042190 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ)

end

end A041284.P4029003492894925007

/-! ## A041284.P13791954640971129018

`A042190(n)/A000079(∑[(-1)^n])`
-/

namespace A041284.P13791954640971129018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042190 n : ℚ) / (A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A041284.P13791954640971129018

/-!
# A041285: Denominators of continued fraction convergents to sqrt(155).

The programs for A041285, there is no canonical definition to state claims against.
-/

/-! ## A041285.P7841206290857322963

`sqrt(2)^Δ[or(1, n)]*A042191(n)`
-/

namespace A041285.P7841206290857322963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ) * (A042191 n : ℝ)

end

end A041285.P7841206290857322963

/-! ## A041285.P8453784715489266684

`A000034(n)*A042191(n)`
-/

namespace A041285.P8453784715489266684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042191 n

end

end A041285.P8453784715489266684

/-! ## A041285.P9381124992361808455

`Δ[record[A236348(n)]]*A042191(n)`
-/

namespace A041285.P9381124992361808455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A042191 n

end

end A041285.P9381124992361808455

/-! ## A041285.P8940850609379726819

`(Δ[A008619(n)]+1)*A042191(n)`
-/

namespace A041285.P8940850609379726819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A042191 n

end

end A041285.P8940850609379726819

/-! ## A041285.P10519434408621814220

`A000124(Δ[A008619(n)])*A042191(n)`
-/

namespace A041285.P10519434408621814220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (f1 (n + 1) - f1 n).toNat * A042191 n

end

end A041285.P10519434408621814220

/-! ## A041285.P6661268780697916707

`A007947(A006519(n+1))*A042191(n)`
-/

namespace A041285.P6661268780697916707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A006519 (n + 1)).toNat * A042191 n

end

end A041285.P6661268780697916707

/-! ## A041285.P10699353279626708840

`A006519(A020639(n+1))*A042191(n)`
-/

namespace A041285.P10699353279626708840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A020639 (n + 1)).toNat * A042191 n

end

end A041285.P10699353279626708840

/-! ## A041285.P15428213005304070044

`A042191(n)*A263845(n²)`
-/

namespace A041285.P15428213005304070044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042191 n * A263845 (n ^ 2)

end

end A041285.P15428213005304070044

/-! ## A041285.P4387608916648866373

`A006519(n²+1)*A042191(n)`
-/

namespace A041285.P4387608916648866373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A042191 n

end

end A041285.P4387608916648866373

/-!
# A041286: Numerators of continued fraction convergents to sqrt(156).

The programs for A041286, the canonical program `A041286.P11594212536033238534` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041286 has offset 0).

The definition of A041286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041286.P11594212536033238534

`ogf((12+25x+12x^2-x^3)/(1-50x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041286

/-- `ogf((12+25x+12x^2-x^3)/(1-50x^2+x^4))` -/
def P11594212536033238534.Spec : Prop :=
  ∀ n, P11594212536033238534.a n = A041286 n

theorem P11594212536033238534.correct : P11594212536033238534.Spec := by
  intro n
  simp only [A041286]

end A041286

/-! ## A041286.P17851213753462904723

`Δ[A007494(n)]*A041064(n)`
-/

namespace A041286.P17851213753462904723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041064 n

end

end A041286.P17851213753462904723

namespace A041286

/-- `Δ[A007494(n)]*A041064(n)` -/
def P17851213753462904723.Spec : Prop :=
  ∀ n, P17851213753462904723.a n = A041286 n

end A041286

/-! ## A041286.P4798219930589819538

`A042198(n)/Δ[A007494(n)]`
-/

namespace A041286.P4798219930589819538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042198 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041286.P4798219930589819538

namespace A041286

/-- `A042198(n)/Δ[A007494(n)]` -/
def P4798219930589819538.Spec : Prop :=
  ∀ n, P4798219930589819538.a n = (A041286 n : ℚ)

end A041286

/-! ## A041286.P573860060007413300

`A000034(n+1)*A041064(n)`
-/

namespace A041286.P573860060007413300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041064 n

end

end A041286.P573860060007413300

namespace A041286

/-- `A000034(n+1)*A041064(n)` -/
def P573860060007413300.Spec : Prop :=
  ∀ n, P573860060007413300.a n = A041286 n

end A041286

/-! ## A041286.P1364990890153525268

`A042198(n)/A040001(n+2)`
-/

namespace A041286.P1364990890153525268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042198 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A041286.P1364990890153525268

namespace A041286

/-- `A042198(n)/A040001(n+2)` -/
def P1364990890153525268.Spec : Prop :=
  ∀ n, P1364990890153525268.a n = (A041286 n : ℚ)

end A041286

/-! ## A041286.P7158345859951156646

`A042198(n)/A134451(n+2)`
-/

namespace A041286.P7158345859951156646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042198 n : ℚ) / (A134451 (n + 2) : ℚ)

end

end A041286.P7158345859951156646

namespace A041286

/-- `A042198(n)/A134451(n+2)` -/
def P7158345859951156646.Spec : Prop :=
  ∀ n, P7158345859951156646.a n = (A041286 n : ℚ)

end A041286

/-! ## A041286.P611061607521418873

`2/A000034(n)*A041064(n)`
-/

namespace A041286.P611061607521418873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041064 n : ℚ)

end

end A041286.P611061607521418873

namespace A041286

/-- `2/A000034(n)*A041064(n)` -/
def P611061607521418873.Spec : Prop :=
  ∀ n, P611061607521418873.a n = (A041286 n : ℚ)

end A041286

/-!
# A041287: Denominators of continued fraction convergents to sqrt(156).

The programs for A041287, the canonical program `A041287.P748369230420467140` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041287 has offset 0).

The definition of A041287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041287.P12428027385824733992

`ogf((1+2x-x^2)/(1-50x^2+x^4))`
-/

namespace A041287.P12428027385824733992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -50, 0, 1] n

end

end A041287.P12428027385824733992

namespace A041287

/-- `ogf((1+2x-x^2)/(1-50x^2+x^4))` -/
def P12428027385824733992.Spec : Prop :=
  ∀ n, P12428027385824733992.a n = A041287 n

end A041287

/-! ## A041287.P748369230420467140

`50*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=49, a(3)=100`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041287

/-- `50*a(n-2)-a(n-4)` -/
def P748369230420467140.Spec : Prop :=
  ∀ n, P748369230420467140.a n = A041287 n

theorem P748369230420467140.correct : P748369230420467140.Spec := by
  intro n
  simp only [A041287]

end A041287

/-! ## A041287.P12135100393322031730

`gcd(2, n+1)*A042199(n)`
-/

namespace A041287.P12135100393322031730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A042199 n

end

end A041287.P12135100393322031730

namespace A041287

/-- `gcd(2, n+1)*A042199(n)` -/
def P12135100393322031730.Spec : Prop :=
  ∀ n, P12135100393322031730.a n = A041287 n

end A041287

/-! ## A041287.P14915974187925571184

`A000034(n)*A042199(n)`
-/

namespace A041287.P14915974187925571184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A042199 n

end

end A041287.P14915974187925571184

namespace A041287

/-- `A000034(n)*A042199(n)` -/
def P14915974187925571184.Spec : Prop :=
  ∀ n, P14915974187925571184.a n = A041287 n

end A041287

/-! ## A041287.P2205987088746965690

`A040001(n+1)*A042199(n)`
-/

namespace A041287.P2205987088746965690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A042199 n

end

end A041287.P2205987088746965690

namespace A041287

/-- `A040001(n+1)*A042199(n)` -/
def P2205987088746965690.Spec : Prop :=
  ∀ n, P2205987088746965690.a n = A041287 n

end A041287

/-! ## A041287.P12854998507224105805

`A042199(n)*A134451(n+1)`
-/

namespace A041287.P12854998507224105805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042199 n * A134451 (n + 1)

end

end A041287.P12854998507224105805

namespace A041287

/-- `A042199(n)*A134451(n+1)` -/
def P12854998507224105805.Spec : Prop :=
  ∀ n, P12854998507224105805.a n = A041287 n

end A041287

/-! ## A041287.P975289710968767227

`A041065(n)/(A000035(n)+1)`
-/

namespace A041287.P975289710968767227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041065 n : ℚ) / (A000035 n + 1 : ℚ)

end

end A041287.P975289710968767227

namespace A041287

/-- `A041065(n)/(A000035(n)+1)` -/
def P975289710968767227.Spec : Prop :=
  ∀ n, P975289710968767227.a n = (A041287 n : ℚ)

end A041287

/-! ## A041287.P4972429835193988808

`(Δ[A008619(n)]+1)*A042199(n)`
-/

namespace A041287.P4972429835193988808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * A042199 n

end

end A041287.P4972429835193988808

namespace A041287

/-- `(Δ[A008619(n)]+1)*A042199(n)` -/
def P4972429835193988808.Spec : Prop :=
  ∀ n, P4972429835193988808.a n = A041287 n

end A041287

/-! ## A041287.P17688856181120701767

`A041065(n)/(char[A003961(n+1)]+1)`
-/

namespace A041287.P17688856181120701767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041065 n : ℚ) / (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

end

end A041287.P17688856181120701767

namespace A041287

/-- `A041065(n)/(char[A003961(n+1)]+1)` -/
def P17688856181120701767.Spec : Prop :=
  ∀ n, P17688856181120701767.a n = (A041287 n : ℚ)

end A041287

/-! ## A041287.P7167040261493514743

`A042199(n)*A150928(Δ[A008619(n)])`
-/

namespace A041287.P7167040261493514743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042199 n * A150928 (f1 (n + 1) - f1 n).toNat

end

end A041287.P7167040261493514743

namespace A041287

/-- `A042199(n)*A150928(Δ[A008619(n)])` -/
def P7167040261493514743.Spec : Prop :=
  ∀ n, P7167040261493514743.a n = A041287 n

end A041287

/-! ## A041287.P18189245198732871586

`A005811(A006519(n+1))*A042199(n)`
-/

namespace A041287.P18189245198732871586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006519 (n + 1)).toNat * A042199 n

end

end A041287.P18189245198732871586

namespace A041287

/-- `A005811(A006519(n+1))*A042199(n)` -/
def P18189245198732871586.Spec : Prop :=
  ∀ n, P18189245198732871586.a n = A041287 n

end A041287

/-! ## A041287.P10515748089238990856

`A041065(n)/A014963(A006519(n+1))`
-/

namespace A041287.P10515748089238990856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041065 n : ℚ) / (A014963 (A006519 (n + 1)).toNat : ℚ)

end

end A041287.P10515748089238990856

namespace A041287

/-- `A041065(n)/A014963(A006519(n+1))` -/
def P10515748089238990856.Spec : Prop :=
  ∀ n, P10515748089238990856.a n = (A041287 n : ℚ)

end A041287

/-! ## A041287.P13147052392303131034

`A006519(n²+1)*A042199(n)`
-/

namespace A041287.P13147052392303131034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A042199 n

end

end A041287.P13147052392303131034

namespace A041287

/-- `A006519(n²+1)*A042199(n)` -/
def P13147052392303131034.Spec : Prop :=
  ∀ n, P13147052392303131034.a n = A041287 n

end A041287

/-! ## A041287.P7094636022333054758

`A041065(n)/A006519(n²+1)`
-/

namespace A041287.P7094636022333054758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041065 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041287.P7094636022333054758

namespace A041287

/-- `A041065(n)/A006519(n²+1)` -/
def P7094636022333054758.Spec : Prop :=
  ∀ n, P7094636022333054758.a n = (A041287 n : ℚ)

end A041287

/-!
# A041289: Denominators of continued fraction convergents to sqrt(157).

The programs for A041289, there is no canonical definition to state claims against.
-/

/-! ## A041289.P454898205512006417

`a(n-2)+a(n-1)*A010206(n)` with `a(0)=1, a(1)=1`
-/

namespace A041289.P454898205512006417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A010206 n

end

end A041289.P454898205512006417

/-!
# A041291: Denominators of continued fraction convergents to sqrt(158).

The programs for A041291, there is no canonical definition to state claims against.
-/

/-! ## A041291.P11829991933563219925

`A028901(A042805(n))`
-/

namespace A041291.P11829991933563219925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A042805 n).toNat

end

end A041291.P11829991933563219925

/-!
# A041293: Denominators of continued fraction convergents to sqrt(159).

The programs for A041293, there is no canonical definition to state claims against.
-/

/-! ## A041293.P9776927822086838217

`A111706(A000045(n+1)+2)-2`
-/

namespace A041293.P9776927822086838217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A000045 (n + 1) + 2).toNat - 2

end

end A041293.P9776927822086838217

/-! ## A041293.P4062472903794935062

`A108038(A061128(n+1)+∑[A358378(n+1)])`
-/

namespace A041293.P4062472903794935062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108038 (A061128 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041293.P4062472903794935062

