import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A385601: Expansion of e.g.f. cosh(x)^2*(x+x^2/2).

The programs for A385601, there is no canonical definition to state claims against.
-/

/-! ## A385601.P11949656117758872336

`A386227(n)-A199573(n)`
-/

namespace A385601.P11949656117758872336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386227 n - A199573 n

end

end A385601.P11949656117758872336

/-! ## A385601.P13354365185664445707

`A239963(A150083(n+1))`
-/

namespace A385601.P13354365185664445707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239963 (A150083 (n + 1)).toNat

end

end A385601.P13354365185664445707

/-! ## A385601.P11134784369780345636

`A000045(n)*A355663(A289975(n))`
-/

namespace A385601.P11134784369780345636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A355663 (A289975 n).toNat

end

end A385601.P11134784369780345636

/-!
# A385604: Number of compositions of n such that the odd parts are weakly increasing.

The programs for A385604, there is no canonical definition to state claims against.
-/

/-! ## A385604.P13649518098603247104

`A080595(A303204(n+1))`
-/

namespace A385604.P13649518098603247104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A303204 (n + 1)).toNat

end

end A385604.P13649518098603247104

/-! ## A385604.P5975737408083120876

`A333382(A155515(2*(n+1)))+A235684(n)`
-/

namespace A385604.P5975737408083120876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A155515 (2 * (n + 1))).toNat + A235684 n

end

end A385604.P5975737408083120876

/-! ## A385604.P790015535977341677

`A226143(A078481(n+1))+A000720(A364350(n))`
-/

namespace A385604.P790015535977341677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A078481 (n + 1)).toNat + A000720 (A364350 n).toNat

end

end A385604.P790015535977341677

/-! ## A385604.P2968433827792436009

`A325097(A061255(n))`
-/

namespace A385604.P2968433827792436009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325097 (A061255 n).toNat

end

end A385604.P2968433827792436009

/-! ## A385604.P1467347264817118387

`A182210(A148235(n+1))`
-/

namespace A385604.P1467347264817118387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (A148235 (n + 1)).toNat

end

end A385604.P1467347264817118387

/-!
# A385605: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(4*n+1,k).

The programs for A385605, there is no canonical definition to state claims against.
-/

/-! ## A385605.P5680372136210645899

`A106516(A125201(n+1))`
-/

namespace A385605.P5680372136210645899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A125201 (n + 1)).toNat

end

end A385605.P5680372136210645899

/-!
# A385606: Diagonal of the rational function 1/(1 - (v^3 + w^3 + x^3 + y^3 + z^3 + v*w*x*y*z)).

The programs for A385606, there is no canonical definition to state claims against.
-/

/-! ## A385606.P8350236434362782446

`A293507(A370688(n+2))`
-/

namespace A385606.P8350236434362782446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293507 (A370688 (n + 2)).toNat

end

end A385606.P8350236434362782446

/-! ## A385606.P2451831415672897988

`A361703(eq[1, A329691(n)])`
-/

namespace A385606.P2451831415672897988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A385606.P2451831415672897988

/-!
# A385608: a(n) = 2-adic valuation of A003266(n).

The programs for A385608, the canonical program `A385608.P4247405361952693431` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385608 has offset 0).

The definition of A385608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385608.P4247405361952693431

`2*floor(n/3)+floor(n/6)-A000120(floor(n/3))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A385608

/-- `2*floor(n/3)+floor(n/6)-A000120(floor(n/3))` -/
def P4247405361952693431.Spec : Prop :=
  ∀ n, P4247405361952693431.a n = A385608 n

theorem P4247405361952693431.correct : P4247405361952693431.Spec := by
  intro n
  simp only [A385608]

end A385608

/-! ## A385608.P15629987340592241491

`∑[A337923(A028310(n))]`
-/

namespace A385608.P15629987340592241491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385608.P15629987340592241491

namespace A385608

/-- `∑[A337923(A028310(n))]` -/
def P15629987340592241491.Spec : Prop :=
  ∀ n, P15629987340592241491.a n = A385608 n

end A385608

/-! ## A385608.P4299282674241799866

`∑[A337923(n+1)]-A337923(n+1)`
-/

namespace A385608.P4299282674241799866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337923 (n + 1)

end

end A385608.P4299282674241799866

namespace A385608

/-- `∑[A337923(n+1)]-A337923(n+1)` -/
def P4299282674241799866.Spec : Prop :=
  ∀ n, P4299282674241799866.a n = A385608 n

end A385608

/-! ## A385608.P2223203452904500541

`∑[val(A324969(n+1), 2)]`
-/

namespace A385608.P2223203452904500541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324969 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385608.P2223203452904500541

namespace A385608

/-- `∑[val(A324969(n+1), 2)]` -/
def P2223203452904500541.Spec : Prop :=
  ∀ n, (P2223203452904500541.a n : ℤ) = A385608 n

end A385608

/-! ## A385608.P14278980215009865596

`∑[val(A097135(n), 2)]`
-/

namespace A385608.P14278980215009865596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A097135 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385608.P14278980215009865596

namespace A385608

/-- `∑[val(A097135(n), 2)]` -/
def P14278980215009865596.Spec : Prop :=
  ∀ n, (P14278980215009865596.a n : ℤ) = A385608 n

end A385608

/-! ## A385608.P16636157835461514336

`∑[val(A117591(n), 2)]`
-/

namespace A385608.P16636157835461514336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A117591 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385608.P16636157835461514336

namespace A385608

/-- `∑[val(A117591(n), 2)]` -/
def P16636157835461514336.Spec : Prop :=
  ∀ n, (P16636157835461514336.a n : ℤ) = A385608 n

end A385608

/-! ## A385608.P6736982900059812208

`A152467(n)+A073750(n)`
-/

namespace A385608.P6736982900059812208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 n + A073750 n

end

end A385608.P6736982900059812208

namespace A385608

/-- `A152467(n)+A073750(n)` -/
def P6736982900059812208.Spec : Prop :=
  ∀ n, P6736982900059812208.a n = A385608 n

end A385608

/-!
# A385609: Partial sums of A090740.

The programs for A385609, the canonical program `A385609.P15216289614139377740` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385609 has offset 1).

The definition of A385609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385609.P15216289614139377740

`2*(n+1)+floor((n+1)/2)-A000120(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A385609

/-- `2*(n+1)+floor((n+1)/2)-A000120(n+1)` -/
def P15216289614139377740.Spec : Prop :=
  ∀ n, P15216289614139377740.a n = A385609 (n + 1)

theorem P15216289614139377740.correct : P15216289614139377740.Spec := by
  intro n
  simp only [A385609, Nat.add_sub_cancel]

end A385609

/-! ## A385609.P17464066988134490404

`A385608((n+1)*3)`
-/

namespace A385609.P17464066988134490404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385608 ((n + 1) * 3)

end

end A385609.P17464066988134490404

namespace A385609

/-- `A385608((n+1)*3)` -/
def P17464066988134490404.Spec : Prop :=
  ∀ n, P17464066988134490404.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P5118906749902782841

`∑[val(n+1, 2)+gcd(2, n+1)]`
-/

namespace A385609.P5118906749902782841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385609.P5118906749902782841

namespace A385609

/-- `∑[val(n+1, 2)+gcd(2, n+1)]` -/
def P5118906749902782841.Spec : Prop :=
  ∀ n, (P5118906749902782841.a n : ℤ) = A385609 (n + 1)

end A385609

/-! ## A385609.P16063772618742477854

`∑[A090740(n+1)]`
-/

namespace A385609.P16063772618742477854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385609.P16063772618742477854

namespace A385609

/-- `∑[A090740(n+1)]` -/
def P16063772618742477854.Spec : Prop :=
  ∀ n, P16063772618742477854.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P3019350863887853457

`∑[log2(A074723(n+1))]`
-/

namespace A385609.P3019350863887853457
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A074723 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385609.P3019350863887853457

namespace A385609

/-- `∑[log2(A074723(n+1))]` -/
def P3019350863887853457.Spec : Prop :=
  ∀ n, P3019350863887853457.a n = (A385609 (n + 1) : ℝ)

end A385609

/-! ## A385609.P4210439291150248987

`A283208(n)+A080513(n)`
-/

namespace A385609.P4210439291150248987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 n + A080513 n

end

end A385609.P4210439291150248987

namespace A385609

/-- `A283208(n)+A080513(n)` -/
def P4210439291150248987.Spec : Prop :=
  ∀ n, P4210439291150248987.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P5039494231530777203

`A113474(n+1)+A007494(n)`
-/

namespace A385609.P5039494231530777203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113474 (n + 1) + A007494 n

end

end A385609.P5039494231530777203

namespace A385609

/-- `A113474(n+1)+A007494(n)` -/
def P5039494231530777203.Spec : Prop :=
  ∀ n, P5039494231530777203.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P7746705990782953983

`A047209(n+1)-A048881(n)`
-/

namespace A385609.P7746705990782953983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) - A048881 n

end

end A385609.P7746705990782953983

namespace A385609

/-- `A047209(n+1)-A048881(n)` -/
def P7746705990782953983.Spec : Prop :=
  ∀ n, P7746705990782953983.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P6631106314287796578

`∑[A093051(n+1)-n]`
-/

namespace A385609.P6631106314287796578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093051 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385609.P6631106314287796578

namespace A385609

/-- `∑[A093051(n+1)-n]` -/
def P6631106314287796578.Spec : Prop :=
  ∀ n, P6631106314287796578.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P786591920323425697

`∑[A093052(n+1)-(n+1)]`
-/

namespace A385609.P786591920323425697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093052 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385609.P786591920323425697

namespace A385609

/-- `∑[A093052(n+1)-(n+1)]` -/
def P786591920323425697.Spec : Prop :=
  ∀ n, P786591920323425697.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P977089099234983070

`A005187(n+1)+A004526(n+1)`
-/

namespace A385609.P977089099234983070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + A004526 (n + 1)

end

end A385609.P977089099234983070

namespace A385609

/-- `A005187(n+1)+A004526(n+1)` -/
def P977089099234983070.Spec : Prop :=
  ∀ n, P977089099234983070.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P4690548345487068198

`∑[A158572(2*(n+1))]`
-/

namespace A385609.P4690548345487068198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158572 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385609.P4690548345487068198

namespace A385609

/-- `∑[A158572(2*(n+1))]` -/
def P4690548345487068198.Spec : Prop :=
  ∀ n, P4690548345487068198.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P15826827949654584417

`∑[A337923(3*(n+1))]`
-/

namespace A385609.P15826827949654584417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385609.P15826827949654584417

namespace A385609

/-- `∑[A337923(3*(n+1))]` -/
def P15826827949654584417.Spec : Prop :=
  ∀ n, P15826827949654584417.a n = A385609 (n + 1)

end A385609

/-! ## A385609.P5575923942497086417

`∑[val(3^(n+1)-1, 2)]`
-/

namespace A385609.P5575923942497086417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((3 ^ (n + 1) : ℤ) - 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385609.P5575923942497086417

namespace A385609

/-- `∑[val(3^(n+1)-1, 2)]` -/
def P5575923942497086417.Spec : Prop :=
  ∀ n, (P5575923942497086417.a n : ℤ) = A385609 (n + 1)

end A385609

/-!
# A385610: Galileo sequence with ratio k = 2: a(1) = 1, a(2) = k, a(2*n-1) = floor(((k + 1)*a(n) -1)/2), and a(2*n) = floor((k + 1)*a(n)/2) + 1 for n > 2.

The programs for A385610, the canonical program `A385610.P4272775089795650141` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385610 has offset 1).

The definition of A385610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385610.P4272775089795650141

`A006368(2*a(floor(n/2))-(-1)^n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A385610

/-- `A006368(2*a(floor(n/2))-(-1)^n)` -/
def P4272775089795650141.Spec : Prop :=
  ∀ n, P4272775089795650141.a n = A385610 (n + 1)

theorem P4272775089795650141.correct : P4272775089795650141.Spec := by
  intro n
  simp only [A385610, Nat.add_sub_cancel]

end A385610

/-! ## A385610.P16150167181111476992

`A100480(A055246(n+1))`
-/

namespace A385610.P16150167181111476992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (A055246 (n + 1)).toNat

end

end A385610.P16150167181111476992

namespace A385610

/-- `A100480(A055246(n+1))` -/
def P16150167181111476992.Spec : Prop :=
  ∀ n, P16150167181111476992.a n = A385610 (n + 1)

end A385610

/-! ## A385610.P6238641380987561738

`A006997(A190640(n+1))`
-/

namespace A385610.P6238641380987561738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 (A190640 (n + 1)).toNat

end

end A385610.P6238641380987561738

namespace A385610

/-- `A006997(A190640(n+1))` -/
def P6238641380987561738.Spec : Prop :=
  ∀ n, P6238641380987561738.a n = A385610 (n + 1)

end A385610

/-! ## A385610.P14250567923958706784

`A006997(2*A003278(2*n+1))`
-/

namespace A385610.P14250567923958706784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 (2 * A003278 (2 * n + 1)).toNat

end

end A385610.P14250567923958706784

namespace A385610

/-- `A006997(2*A003278(2*n+1))` -/
def P14250567923958706784.Spec : Prop :=
  ∀ n, P14250567923958706784.a n = A385610 (n + 1)

end A385610

/-! ## A385610.P8468620674726043535

`A358551(A326512(2*a(floor(n/2))-(-1)^n))` with `a(0)=1`
-/

namespace A385610.P8468620674726043535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A358551 (A326512 (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n).toNat).toNat

end

end A385610.P8468620674726043535

namespace A385610

/-- `A358551(A326512(2*a(floor(n/2))-(-1)^n))` -/
def P8468620674726043535.Spec : Prop :=
  ∀ n, P8468620674726043535.a n = A385610 (n + 1)

end A385610

/-!
# A385614: Numbers of the form x^x + y^y, 1 < x < y.

The programs for A385614, the canonical program `A385614.P9354234976025821991` is in `Seq.B011.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385614 has offset 1).

The definition of A385614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385614.P6630618625819801880

`A218346(comp[∑[n]]+1)`
-/

namespace A385614.P6630618625819801880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218346 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A385614.P6630618625819801880

namespace A385614

/-- `A218346(comp[∑[n]]+1)` -/
def P6630618625819801880.Spec : Prop :=
  ∀ n, P6630618625819801880.a n = A385614 (n + 1)

end A385614

/-! ## A385614.P9354234976025821991

`A066846(lt[1, A173075(n)])`

The canonical program, it is in `Seq.B011.C001`.
-/

namespace A385614

/-- `A066846(lt[1, A173075(n)])` -/
def P9354234976025821991.Spec : Prop :=
  ∀ n, P9354234976025821991.a n = A385614 (n + 1)

theorem P9354234976025821991.correct : P9354234976025821991.Spec := by
  intro n
  simp only [A385614, Nat.add_sub_cancel]

end A385614

/-! ## A385614.P12224489204701955791

`∩[A385232(n+1), A066846(n)]`
-/

namespace A385614.P12224489204701955791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385614.P12224489204701955791

namespace A385614

/-- `∩[A385232(n+1), A066846(n)]` -/
def P12224489204701955791.Spec : Prop :=
  ∀ n, (P12224489204701955791.a n : ℤ) = A385614 (n + 1)

end A385614

/-! ## A385614.P12239525368409082728

`∩[A218346(n+1), A385232(n+1)]`
-/

namespace A385614.P12239525368409082728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385614.P12239525368409082728

namespace A385614

/-- `∩[A218346(n+1), A385232(n+1)]` -/
def P12239525368409082728.Spec : Prop :=
  ∀ n, (P12239525368409082728.a n : ℤ) = A385614 (n + 1)

end A385614

/-! ## A385614.P12347625473974427626

`∩[A218347(n+1), A385232(n+1)]`
-/

namespace A385614.P12347625473974427626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385614.P12347625473974427626

namespace A385614

/-- `∩[A218347(n+1), A385232(n+1)]` -/
def P12347625473974427626.Spec : Prop :=
  ∀ n, (P12347625473974427626.a n : ℤ) = A385614 (n + 1)

end A385614

/-!
# A385615: Star numbers corresponding to the point numbers in A385330.

The programs for A385615, there is no canonical definition to state claims against.
-/

/-! ## A385615.P15601845702991750731

`A334440(A033849(n+2))`
-/

namespace A385615.P15601845702991750731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A033849 (n + 2)).toNat

end

end A385615.P15601845702991750731

/-! ## A385615.P4930196991994525545

`A194285(A333492(n+1))+A000120(n)`
-/

namespace A385615.P4930196991994525545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A333492 (n + 1)).toNat + A000120 n

end

end A385615.P4930196991994525545

/-! ## A385615.P2931496734672751355

`A382288(A352525(n+3))+A124768(n)`
-/

namespace A385615.P2931496734672751355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382288 (A352525 (n + 3)).toNat + A124768 n

end

end A385615.P2931496734672751355

/-! ## A385615.P8295387186767992038

`A001222(lcm(A112859(n+1), A286383(n+1)))`
-/

namespace A385615.P8295387186767992038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A112859 (n + 1)) (A286383 (n + 1)))

end

end A385615.P8295387186767992038

/-! ## A385615.P8565897098761734722

`A001222(A153376(3*n+1)*A286383(n+1))`
-/

namespace A385615.P8565897098761734722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A153376 (3 * n + 1) * A286383 (n + 1)).toNat

end

end A385615.P8565897098761734722

/-!
# A385617: G.f. A(x) satisfies A(x) = 1/( 1 - x*(A(x) + A(2*x)) ).

The programs for A385617, there is no canonical definition to state claims against.
-/

/-! ## A385617.P9284949076888350442

`∑[A342527(A321042(n))]`
-/

namespace A385617.P9284949076888350442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342527 (A321042 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385617.P9284949076888350442

/-!
# A385621: E.g.f. A(x) satisfies A(x) = exp( x*(A(x) + A(3*x))/2 ).

The programs for A385621, there is no canonical definition to state claims against.
-/

/-! ## A385621.P9566835785848946640

`A151703(A037004(n+1)*A210669(2*n))`
-/

namespace A385621.P9566835785848946640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151703 (A037004 (n + 1) * A210669 (2 * n)).toNat

end

end A385621.P9566835785848946640

/-!
# A385622: G.f. A(x) satisfies A(x) = 1/( 1 - x*(A(x) + A(3*x))/2 ).

The programs for A385622, there is no canonical definition to state claims against.
-/

/-! ## A385622.P9368825340519979809

`A254790(n!²)`
-/

namespace A385622.P9368825340519979809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254790 (Nat.factorial n ^ 2)

end

end A385622.P9368825340519979809

/-!
# A385623: Array read by ascending antidiagonals: A(n,k) is the number obtained by concatenation of n with k in that order, with k >= 0.

The programs for A385623, there is no canonical definition to state claims against.
-/

/-! ## A385623.P6995122391915556012

`A065253(A349551(n))`
-/

namespace A385623.P6995122391915556012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065253 (A349551 n).toNat

end

end A385623.P6995122391915556012

/-! ## A385623.P10637871430907468520

`A036188(A036561(n))`
-/

namespace A385623.P10637871430907468520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036188 (A036561 n).toNat

end

end A385623.P10637871430907468520

/-!
# A385625: Sum of the divisors d of n with an odd number of primes not exceeding d.

The programs for A385625, there is no canonical definition to state claims against.
-/

/-! ## A385625.P10793235537831519173

`A000203(n+1)-A385628(n+1)`
-/

namespace A385625.P10793235537831519173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A385628 (n + 1)

end

end A385625.P10793235537831519173

/-! ## A385625.P5943636555805310011

`∑{d}[n+1, #*A071986(#)]`
-/

namespace A385625.P5943636555805310011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A071986 d

end

end A385625.P5943636555805310011

/-! ## A385625.P5913518035171038836

`∑{d}[n+1, #*A131378(#)]`
-/

namespace A385625.P5913518035171038836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A131378 d

end

end A385625.P5913518035171038836

/-!
# A385626: Table read by rows: T(n, k) = binomial(n, k) * fibonomial(n, k).

The programs for A385626, there is no canonical definition to state claims against.
-/

/-! ## A385626.P7272575164064222006

`A007318(n)*A010048(n)`
-/

namespace A385626.P7272575164064222006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A010048 n

end

end A385626.P7272575164064222006

/-! ## A385626.P13214422773437952329

`sqrt(A008459(n))*A010048(n)`
-/

namespace A385626.P13214422773437952329
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A010048 n : ℝ)

end

end A385626.P13214422773437952329

/-! ## A385626.P8874555179056827643

`A324504(A286331(n))`
-/

namespace A385626.P8874555179056827643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324504 (A286331 n).toNat

end

end A385626.P8874555179056827643

/-! ## A385626.P808388271887828212

`A173881(A004918(n+1))`
-/

namespace A385626.P808388271887828212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173881 (A004918 (n + 1)).toNat

end

end A385626.P808388271887828212

/-! ## A385626.P5798375303264977291

`A173881(n)+A000122(A173875(n+1))`
-/

namespace A385626.P5798375303264977291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173881 n + A000122 (A173875 (n + 1)).toNat

end

end A385626.P5798375303264977291

/-!
# A385627: Table read by rows: T(n, k) = (binomial(n, k) * fibonomial(n, k)) mod 2.

The programs for A385627, there is no canonical definition to state claims against.
-/

/-! ## A385627.P5049950031636320738

`A047999(n)*A385456(n)`
-/

namespace A385627.P5049950031636320738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A385456 n

end

end A385627.P5049950031636320738

/-! ## A385627.P9677465877217004243

`and(A010048(n), A047999(n))`
-/

namespace A385627.P9677465877217004243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010048 n) (A047999 n)

end

end A385627.P9677465877217004243

/-! ## A385627.P16409869870708851333

`and(A034801(n), A047999(n))`
-/

namespace A385627.P16409869870708851333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034801 n) (A047999 n)

end

end A385627.P16409869870708851333

/-! ## A385627.P11514199768707209220

`and(A047999(n), A055870(n))`
-/

namespace A385627.P11514199768707209220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A055870 n)

end

end A385627.P11514199768707209220

/-! ## A385627.P9023571220535558581

`and(A047999(n), A156600(n))`
-/

namespace A385627.P9023571220535558581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A156600 n)

end

end A385627.P9023571220535558581

/-! ## A385627.P10806759686866304699

`and(A047999(n), A156602(n))`
-/

namespace A385627.P10806759686866304699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047999 n) (A156602 n)

end

end A385627.P10806759686866304699

/-! ## A385627.P17540518755237102724

`and(A007318(n), A385456(n))`
-/

namespace A385627.P17540518755237102724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A385456 n)

end

end A385627.P17540518755237102724

/-! ## A385627.P17804282448038490550

`and(A008459(n), A385456(n))`
-/

namespace A385627.P17804282448038490550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008459 n) (A385456 n)

end

end A385627.P17804282448038490550

/-! ## A385627.P8468883671505419884

`and(A015117(n), A385456(n))`
-/

namespace A385627.P8468883671505419884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015117 n) (A385456 n)

end

end A385627.P8468883671505419884

/-! ## A385627.P4580205518629379578

`and(A015121(n), A385456(n))`
-/

namespace A385627.P4580205518629379578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015121 n) (A385456 n)

end

end A385627.P4580205518629379578

/-!
# A385628: Sum of the divisors d of n with an even number of primes not exceeding d.

The programs for A385628, there is no canonical definition to state claims against.
-/

/-! ## A385628.P11518130741313387055

`A000203(n+1)-A385625(n+1)`
-/

namespace A385628.P11518130741313387055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A385625 (n + 1)

end

end A385628.P11518130741313387055

/-! ## A385628.P15604652949672043725

`∑{d}[n+1, #*A131377(#)]`
-/

namespace A385628.P15604652949672043725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A131377 d

end

end A385628.P15604652949672043725

/-!
# A385629: Number of equivalence classes of connected 4-regular graphs on n unlabeled nodes up to local complementation.

The programs for A385629, there is no canonical definition to state claims against.
-/

/-! ## A385629.P13807569982357285707

`A002262(A245147(n+10)+A014371(n))`
-/

namespace A385629.P13807569982357285707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A245147 (n + 10) + A014371 n).toNat

end

end A385629.P13807569982357285707

/-! ## A385629.P15944523064275788150

`C(A329143(A051841(n+1)), A008284(n+1))`
-/

namespace A385629.P15944523064275788150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329143 (A051841 (n + 1)).toNat).toNat (A008284 (n + 1)).toNat

end

end A385629.P15944523064275788150

/-!
# A385630: a(n) = n! * Prod_{k=1..n} Fibonacci(k).

The programs for A385630, there is no canonical definition to state claims against.
-/

/-! ## A385630.P9106547572551949126

`A000142(n)*A003266(n)`
-/

namespace A385630.P9106547572551949126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003266 n

end

end A385630.P9106547572551949126

/-! ## A385630.P18274050423257614219

`a(n-1)*A045925(n)` with `a(0)=1`
-/

namespace A385630.P18274050423257614219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A045925 n

end

end A385630.P18274050423257614219

/-! ## A385630.P16095246728602995028

`n*a(n-1)*A000045(n)` with `a(0)=1`
-/

namespace A385630.P16095246728602995028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) * A000045 n)

end

end A385630.P16095246728602995028

/-! ## A385630.P9264432521220143221

`n*(A000071(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A385630.P9264432521220143221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((A000071 n + 1) * a (n - 1))

end

end A385630.P9264432521220143221

/-! ## A385630.P13003050775448841428

`n*a(n-1)*A212804(n+1)` with `a(0)=1`
-/

namespace A385630.P13003050775448841428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) * A212804 (n + 1))

end

end A385630.P13003050775448841428

/-!
# A385631: Products of five consecutive integers whose prime divisors are consecutive primes starting at 2.

The programs for A385631, there is no canonical definition to state claims against.
-/

/-! ## A385631.P2306202783183083040

`A008590(A151974(n+1))`
-/

namespace A385631.P2306202783183083040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A151974 (n + 1)).toNat

end

end A385631.P2306202783183083040

/-! ## A385631.P8268339348062571288

`filter[A052787(n), A091247(#)]`
-/

namespace A385631.P8268339348062571288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A385631.P8268339348062571288

/-! ## A385631.P5866111206707178073

`filter[A052787(n), A178226(#)]`
-/

namespace A385631.P5866111206707178073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A385631.P5866111206707178073

/-!
# A385633: a(n) = a(n-1) + a(n-3), with a(0) = 1, a(1) = 4, a(2) = 8.

The programs for A385633, the canonical program `A385633.P2007147361525603576` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385633 has offset 0).

The definition of A385633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)` (program `A385633.P2007147361525603576`, by `A385633.P2007147361525603576.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385633.P2007147361525603576

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A385633

/-- `a(n-1)+a(n-3)` -/
def P2007147361525603576.Spec : Prop :=
  ∀ n, (P2007147361525603576.a n : ℤ) = A385633 n

theorem P2007147361525603576.correct : P2007147361525603576.Spec := by
  intro n
  simp only [A385633]

end A385633

/-! ## A385633.P16878431036578280083

`ogf((1+3x+4x^2)/(1-x-x^3))`
-/

namespace A385633.P16878431036578280083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, -1, 0, -1] n

end

end A385633.P16878431036578280083

namespace A385633

/-- `ogf((1+3x+4x^2)/(1-x-x^3))` -/
def P16878431036578280083.Spec : Prop :=
  ∀ n, P16878431036578280083.a n = A385633 n

end A385633

/-! ## A385633.P5771670846024285425

`A001634(n+1)+A001634(n)-A000930(n)`
-/

namespace A385633.P5771670846024285425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001634 (n + 1) + (A001634 n - A000930 n)

end

end A385633.P5771670846024285425

namespace A385633

/-- `A001634(n+1)+A001634(n)-A000930(n)` -/
def P5771670846024285425.Spec : Prop :=
  ∀ n, P5771670846024285425.a n = A385633 n

end A385633

/-! ## A385633.P374052879735904100

`A011761(n+1)+A011761(n)-A068921(n+1)`
-/

namespace A385633.P374052879735904100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011761 (n + 1) + (A011761 n - A068921 (n + 1))

end

end A385633.P374052879735904100

namespace A385633

/-- `A011761(n+1)+A011761(n)-A068921(n+1)` -/
def P374052879735904100.Spec : Prop :=
  ∀ n, P374052879735904100.a n = A385633 n

end A385633

/-! ## A385633.P8532980371656752719

`A001609(n+1)+A001609(n+2)-A000930(n)`
-/

namespace A385633.P8532980371656752719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (n + 1) + (A001609 (n + 2) - A000930 n)

end

end A385633.P8532980371656752719

namespace A385633

/-- `A001609(n+1)+A001609(n+2)-A000930(n)` -/
def P8532980371656752719.Spec : Prop :=
  ∀ n, P8532980371656752719.a n = A385633 n

end A385633

/-!
# A385639: a(n) = Sum_{k=0..n} binomial(4*n+1,k) * binomial(2*n-k,n-k).

The programs for A385639, there is no canonical definition to state claims against.
-/

/-! ## A385639.P1734164483389706276

`A188481(∑[4*n])`
-/

namespace A385639.P1734164483389706276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188481 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A385639.P1734164483389706276

/-!
# A385640: Numbers k such that the sum of the digits of k divides k and the sum of the digits of k^2 divides k^2.

The programs for A385640, the canonical program `A385640.P9288820387589926577` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385640 has offset 1).

The definition of A385640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385640.P9288820387589926577

`filter[A385656(n+1), A188641(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385640

/-- `filter[A385656(n+1), A188641(#)]` -/
def P9288820387589926577.Spec : Prop :=
  ∀ n, P9288820387589926577.a n = A385640 (n + 1)

theorem P9288820387589926577.correct : P9288820387589926577.Spec := by
  intro n
  simp only [A385640, Nat.add_sub_cancel]

end A385640

/-!
# A385641: Partial sums of A097893.

The programs for A385641, the canonical program `A385641.P16422059336115816604` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385641 has offset 0).

The definition of A385641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211278, A247287, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385641.P6270526608670068808

`a(n-2)-1+2*A383527(n)` with `a(0)=1, a(1)=3`
-/

namespace A385641.P6270526608670068808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - 1 + 2 * A383527 n

end

end A385641.P6270526608670068808

namespace A385641

/-- `a(n-2)-1+2*A383527(n)` -/
def P6270526608670068808.Spec : Prop :=
  ∀ n, P6270526608670068808.a n = A385641 n

end A385641

/-! ## A385641.P16422059336115816604

`A211278(n)+A247287(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A385641

/-- `A211278(n)+A247287(n)` -/
def P16422059336115816604.Spec : Prop :=
  ∀ n, P16422059336115816604.a n = A385641 n

theorem P16422059336115816604.correct : P16422059336115816604.Spec := by
  intro n
  simp only [A385641]

end A385641

/-! ## A385641.P11039557469619715585

`∑[A097893(n)]`
-/

namespace A385641.P11039557469619715585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385641.P11039557469619715585

namespace A385641

/-- `∑[A097893(n)]` -/
def P11039557469619715585.Spec : Prop :=
  ∀ n, P11039557469619715585.a n = A385641 n

end A385641

/-! ## A385641.P10568183762590911020

`∑[∑[A002426(n)]]`
-/

namespace A385641.P10568183762590911020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385641.P10568183762590911020

namespace A385641

/-- `∑[∑[A002426(n)]]` -/
def P10568183762590911020.Spec : Prop :=
  ∀ n, P10568183762590911020.a n = A385641 n

end A385641

/-! ## A385641.P4104566442156287085

`∑[∑[A005213(2*n)]]`
-/

namespace A385641.P4104566442156287085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385641.P4104566442156287085

namespace A385641

/-- `∑[∑[A005213(2*n)]]` -/
def P4104566442156287085.Spec : Prop :=
  ∀ n, P4104566442156287085.a n = A385641 n

end A385641

/-! ## A385641.P8019433645090039108

`∑[∑[2*A257520(n)-1]]`
-/

namespace A385641.P8019433645090039108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257520 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385641.P8019433645090039108

namespace A385641

/-- `∑[∑[2*A257520(n)-1]]` -/
def P8019433645090039108.Spec : Prop :=
  ∀ n, P8019433645090039108.a n = A385641 n

end A385641

/-! ## A385641.P9198549481601752860

`∑[∑[∑[(1-n)*A168058(n)]]]`
-/

namespace A385641.P9198549481601752860
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A168058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385641.P9198549481601752860

namespace A385641

/-- `∑[∑[∑[(1-n)*A168058(n)]]]` -/
def P9198549481601752860.Spec : Prop :=
  ∀ n, P9198549481601752860.a n = A385641 n

end A385641

/-! ## A385641.P12202688812666274195

`∑[∑[A025178(n)+a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A385641.P12202688812666274195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A025178 n + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385641.P12202688812666274195

namespace A385641

/-- `∑[∑[A025178(n)+a(n-1)]]` -/
def P12202688812666274195.Spec : Prop :=
  ∀ n, P12202688812666274195.a n = A385641 n

end A385641

/-! ## A385641.P2622833651517969030

`∑[∑[A114422(∑[n])]]`
-/

namespace A385641.P2622833651517969030
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114422 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385641.P2622833651517969030

namespace A385641

/-- `∑[∑[A114422(∑[n])]]` -/
def P2622833651517969030.Spec : Prop :=
  ∀ n, P2622833651517969030.a n = A385641 n

end A385641

/-!
# A385646: a(n) is the number of distinct sums of distinct prime factors of n.

The programs for A385646, there is no canonical definition to state claims against.
-/

/-! ## A385646.P6927633997509633861

`A305611(∏{p}[n+1, #])`
-/

namespace A385646.P6927633997509633861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A385646.P6927633997509633861

/-! ## A385646.P13995908982061977625

`A305611(A007947(n+1))`
-/

namespace A385646.P13995908982061977625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (A007947 (n + 1)).toNat

end

end A385646.P13995908982061977625

/-! ## A385646.P2523426448606359987

`A304793(A328878(n+1))`
-/

namespace A385646.P2523426448606359987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A328878 (n + 1)).toNat

end

end A385646.P2523426448606359987

/-! ## A385646.P10490191465317382963

`A304793(A118759(∏{p}[n+1, #]))`
-/

namespace A385646.P10490191465317382963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (A118759 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A385646.P10490191465317382963

/-! ## A385646.P875491330194968650

`A337322(∏{p}[n+1, #])`
-/

namespace A385646.P875491330194968650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A385646.P875491330194968650

/-! ## A385646.P9865294422672760754

`A337322(A053166(n+1))`
-/

namespace A385646.P9865294422672760754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (A053166 (n + 1)).toNat

end

end A385646.P9865294422672760754

/-! ## A385646.P6365442530586675173

`A337322(A062759(n+1))`
-/

namespace A385646.P6365442530586675173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (A062759 (n + 1)).toNat

end

end A385646.P6365442530586675173

/-! ## A385646.P72458222860275101

`A337322(A259445(n+1))`
-/

namespace A385646.P72458222860275101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (A259445 (n + 1)).toNat

end

end A385646.P72458222860275101

/-! ## A385646.P5963868004882221570

`A337322(A327937(n+1))`
-/

namespace A385646.P5963868004882221570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (A327937 (n + 1)).toNat

end

end A385646.P5963868004882221570

/-! ## A385646.P17238844979697852198

`A337322(A348036(n+1))`
-/

namespace A385646.P17238844979697852198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337322 (A348036 (n + 1)).toNat

end

end A385646.P17238844979697852198

/-!
# A385647: Decimal expansion of 1 - log(2)/2.

The programs for A385647, there is no canonical definition to state claims against.
-/

/-! ## A385647.P11238990965938295392

`9-A016655(n)`
-/

namespace A385647.P11238990965938295392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A016655 (n + 1)

end

end A385647.P11238990965938295392

/-!
# A385653: Least k such that A385652(k) = n.

The programs for A385653, there is no canonical definition to state claims against.
-/

/-! ## A385653.P535536022700840711

`A115511(A063996(n+1))`
-/

namespace A385653.P535536022700840711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115511 (A063996 (n + 1)).toNat

end

end A385653.P535536022700840711

/-! ## A385653.P10182232896929135727

`A115511(A065119(n+1))`
-/

namespace A385653.P10182232896929135727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115511 (A065119 (n + 1)).toNat

end

end A385653.P10182232896929135727

/-! ## A385653.P1900316576143247700

`∩[A206928(n+1), A381402(n+1)]`
-/

namespace A385653.P1900316576143247700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385653.P1900316576143247700

/-!
# A385654: Greatest prime factor of A385653(n).

The programs for A385654, there is no canonical definition to state claims against.
-/

/-! ## A385654.P15961737599184592616

`A006530(A385653(n+1))`
-/

namespace A385654.P15961737599184592616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A385653 (n + 1)).toNat

end

end A385654.P15961737599184592616

/-! ## A385654.P10707506752917956022

`A056813(A028796(n+2))`
-/

namespace A385654.P10707506752917956022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A028796 (n + 2)).toNat

end

end A385654.P10707506752917956022

/-! ## A385654.P4565405707185224546

`A130791(A372475(n+1)%A270890(n+3))`
-/

namespace A385654.P4565405707185224546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (Int.tmod (A372475 (n + 1)) (A270890 (n + 3))).toNat

end

end A385654.P4565405707185224546

/-! ## A385654.P14430143159713056959

`A068549(A346126(n+1))`
-/

namespace A385654.P14430143159713056959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068549 ((A346126 (n + 1)).toNat + 10)

end

end A385654.P14430143159713056959

/-!
# A385656: Numbers k such that the sum of the decimal digits of k^2 divides k^2.

The programs for A385656, the canonical program `A385656.P8934032101623162455` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385656 has offset 1).

The definition of A385656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385656.P8934032101623162455

`lt[(n+1)²%A004159(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A385656

/-- `lt[(n+1)²%A004159(n+1), 1]+1` -/
def P8934032101623162455.Spec : Prop :=
  ∀ n, (P8934032101623162455.a n : ℤ) = A385656 (n + 1)

theorem P8934032101623162455.correct : P8934032101623162455.Spec := by
  intro n
  simp only [A385656, Nat.add_sub_cancel]

end A385656

/-! ## A385656.P2743671642470471984

`A056926(A118547(n+1))`
-/

namespace A385656.P2743671642470471984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A118547 (n + 1)).toNat

end

end A385656.P2743671642470471984

namespace A385656

/-- `A056926(A118547(n+1))` -/
def P2743671642470471984.Spec : Prop :=
  ∀ n, P2743671642470471984.a n = A385656 (n + 1)

end A385656

/-! ## A385656.P13799297868955489877

`A000196(A118547(n+1)+A000007(n))`
-/

namespace A385656.P13799297868955489877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A118547 (n + 1) + A000007 n).toNat

end

end A385656.P13799297868955489877

namespace A385656

/-- `A000196(A118547(n+1)+A000007(n))` -/
def P13799297868955489877.Spec : Prop :=
  ∀ n, P13799297868955489877.a n = A385656 (n + 1)

end A385656

/-! ## A385656.P12849928229958306664

`A000196(A118547(n+1)+A000122(n))`
-/

namespace A385656.P12849928229958306664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A118547 (n + 1) + A000122 n).toNat

end

end A385656.P12849928229958306664

namespace A385656

/-- `A000196(A118547(n+1)+A000122(n))` -/
def P12849928229958306664.Spec : Prop :=
  ∀ n, P12849928229958306664.a n = A385656 (n + 1)

end A385656

/-! ## A385656.P4624430521468967109

`A000196(A118547(n+1)%A005009(n))`
-/

namespace A385656.P4624430521468967109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A118547 (n + 1)) (A005009 n)).toNat

end

end A385656.P4624430521468967109

namespace A385656

/-- `A000196(A118547(n+1)%A005009(n))` -/
def P4624430521468967109.Spec : Prop :=
  ∀ n, P4624430521468967109.a n = A385656 (n + 1)

end A385656

/-!
# A385660: Numbers k such that prime(k+1)-prime(k) divides k.

The programs for A385660, the canonical program `A385660.P17485724804406826863` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385660 has offset 1).

The definition of A385660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385660.P17485724804406826863

`lt[(n+1)%A001223(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A385660

/-- `lt[(n+1)%A001223(n+1), 1]+1` -/
def P17485724804406826863.Spec : Prop :=
  ∀ n, (P17485724804406826863.a n : ℤ) = A385660 (n + 1)

theorem P17485724804406826863.correct : P17485724804406826863.Spec := by
  intro n
  simp only [A385660, Nat.add_sub_cancel]

end A385660

/-!
# A385662: Number of divisors d of n such that d^d == (-d)^d (mod n).

The programs for A385662, there is no canonical definition to state claims against.
-/

/-! ## A385662.P5636418578616734506

`A000005(n+1)+A386310(n+1)-A386930(n+1)`
-/

namespace A385662.P5636418578616734506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A386310 (n + 1) - A386930 (n + 1))

end

end A385662.P5636418578616734506

/-! ## A385662.P9295641732840779587

`gcd(A000010(A101945(n)), A036459(n+1))`
-/

namespace A385662.P9295641732840779587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A101945 n).toNat) (A036459 (n + 1))

end

end A385662.P9295641732840779587

/-! ## A385662.P6590876393622975944

`or(A081373(n+1), A151666(A371789(n)))`
-/

namespace A385662.P6590876393622975944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081373 (n + 1)) (A151666 (A371789 n).toNat)

end

end A385662.P6590876393622975944

/-! ## A385662.P5937338980574709460

`A353760(A275674(n+2))+A081373(n+1)`
-/

namespace A385662.P5937338980574709460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (A275674 (n + 2)).toNat + A081373 (n + 1)

end

end A385662.P5937338980574709460

/-! ## A385662.P11617563270666271493

`or(A081373(n+1), A087436(A334470(n+1)))`
-/

namespace A385662.P11617563270666271493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081373 (n + 1)) (A087436 (A334470 (n + 1)).toNat)

end

end A385662.P11617563270666271493

/-!
# A385663: Binary numbers with an even number of 1s.

The programs for A385663, the canonical program `A385663.P12077718086945892519` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385663 has offset 1).

The definition of A385663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385663.P12077718086945892519

`A007088(A001969(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A385663

/-- `A007088(A001969(n+1))` -/
def P12077718086945892519.Spec : Prop :=
  ∀ n, P12077718086945892519.a n = A385663 (n + 1)

theorem P12077718086945892519.correct : P12077718086945892519.Spec := by
  intro n
  simp only [A385663, Nat.add_sub_cancel]

end A385663

/-! ## A385663.P4209590544289077379

`A099820(n)+A010060(n)`
-/

namespace A385663.P4209590544289077379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n + A010060 n

end

end A385663.P4209590544289077379

namespace A385663

/-- `A099820(n)+A010060(n)` -/
def P4209590544289077379.Spec : Prop :=
  ∀ n, P4209590544289077379.a n = A385663 (n + 1)

end A385663

/-! ## A385663.P5830095711618441411

`A007088(A010060(n)+2*n)`
-/

namespace A385663.P5830095711618441411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A010060 n + (2 * n : ℤ)).toNat

end

end A385663.P5830095711618441411

namespace A385663

/-- `A007088(A010060(n)+2*n)` -/
def P5830095711618441411.Spec : Prop :=
  ∀ n, P5830095711618441411.a n = A385663 (n + 1)

end A385663

/-! ## A385663.P18346428839689726727

`A007088(A006364(2*n+1)/2)`
-/

namespace A385663.P18346428839689726727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A006364 (2 * n + 1) : ℚ) / 2)).toNat

end

end A385663.P18346428839689726727

namespace A385663

/-- `A007088(A006364(2*n+1)/2)` -/
def P18346428839689726727.Spec : Prop :=
  ∀ n, P18346428839689726727.a n = A385663 (n + 1)

end A385663

/-! ## A385663.P10018426484829826006

`A014550(A268716(n))`
-/

namespace A385663.P10018426484829826006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (A268716 n).toNat

end

end A385663.P10018426484829826006

namespace A385663

/-- `A014550(A268716(n))` -/
def P10018426484829826006.Spec : Prop :=
  ∀ n, P10018426484829826006.a n = A385663 (n + 1)

end A385663

/-! ## A385663.P2983711273820267685

`A014550(2*A006068(n))`
-/

namespace A385663.P2983711273820267685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014550 (2 * A006068 n).toNat

end

end A385663.P2983711273820267685

namespace A385663

/-- `A014550(2*A006068(n))` -/
def P2983711273820267685.Spec : Prop :=
  ∀ n, P2983711273820267685.a n = A385663 (n + 1)

end A385663

/-! ## A385663.P773675168674851630

`A185544(A125592(n+1))`
-/

namespace A385663.P773675168674851630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A125592 (n + 1)).toNat

end

end A385663.P773675168674851630

namespace A385663

/-- `A185544(A125592(n+1))` -/
def P773675168674851630.Spec : Prop :=
  ∀ n, P773675168674851630.a n = A385663 (n + 1)

end A385663

/-! ## A385663.P9282895855735689130

`A007088(A127245(2*n+1)+2*n)`
-/

namespace A385663.P9282895855735689130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A127245 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A385663.P9282895855735689130

namespace A385663

/-- `A007088(A127245(2*n+1)+2*n)` -/
def P9282895855735689130.Spec : Prop :=
  ∀ n, P9282895855735689130.a n = A385663 (n + 1)

end A385663

/-! ## A385663.P5056210760499697456

`A099821(n+1)-A010059(n)`
-/

namespace A385663.P5056210760499697456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (n + 1) - A010059 n

end

end A385663.P5056210760499697456

namespace A385663

/-- `A099821(n+1)-A010059(n)` -/
def P5056210760499697456.Spec : Prop :=
  ∀ n, P5056210760499697456.a n = A385663 (n + 1)

end A385663

/-! ## A385663.P949849217756432686

`A007089(A074939(n))`
-/

namespace A385663.P949849217756432686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A074939 n).toNat

end

end A385663.P949849217756432686

namespace A385663

/-- `A007089(A074939(n))` -/
def P949849217756432686.Spec : Prop :=
  ∀ n, P949849217756432686.a n = A385663 (n + 1)

end A385663

/-!
# A385665: Triangle read by rows: T(n,k) is the number of 2n-bead balanced bicolor necklaces that can be rotated into their complements in k different ways.

The programs for A385665, the canonical program `A385665.P17067247565846425678` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385665 has offset 1).

The definition of A385665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 528 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385665.P17067247565846425678

`A000048(A054531(n+1))*A051731(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A385665

/-- `A000048(A054531(n+1))*A051731(n+1)` -/
def P17067247565846425678.Spec : Prop :=
  ∀ n, P17067247565846425678.a n = A385665 (n + 1)

theorem P17067247565846425678.correct : P17067247565846425678.Spec := by
  intro n
  simp only [A385665, Nat.add_sub_cancel]

end A385665

/-! ## A385665.P15945750659945368832

`A007302(A168019(n)^A089215(n+1))`
-/

namespace A385665.P15945750659945368832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (SequenceMachineLib.roundAway ((A168019 n : ℚ) ^ (A089215 (n + 1) : ℤ))).toNat

end

end A385665.P15945750659945368832

namespace A385665

/-- `A007302(A168019(n)^A089215(n+1))` -/
def P15945750659945368832.Spec : Prop :=
  ∀ n, P15945750659945368832.a n = A385665 (n + 1)

end A385665

/-! ## A385665.P1115246202797152021

`A000120(A168532(n+1)^A124771(n+2))`
-/

namespace A385665.P1115246202797152021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A168532 (n + 1) : ℚ) ^ (A124771 (n + 2) : ℤ))).toNat

end

end A385665.P1115246202797152021

namespace A385665

/-- `A000120(A168532(n+1)^A124771(n+2))` -/
def P1115246202797152021.Spec : Prop :=
  ∀ n, P1115246202797152021.a n = A385665 (n + 1)

end A385665

/-! ## A385665.P5138402062555558873

`A124767(A168532(n+1)^A124771(n+2))`
-/

namespace A385665.P5138402062555558873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (SequenceMachineLib.roundAway ((A168532 (n + 1) : ℚ) ^ (A124771 (n + 2) : ℤ))).toNat

end

end A385665.P5138402062555558873

namespace A385665

/-- `A124767(A168532(n+1)^A124771(n+2))` -/
def P5138402062555558873.Spec : Prop :=
  ∀ n, P5138402062555558873.a n = A385665 (n + 1)

end A385665

/-!
# A385667: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(3*n+1,k) * binomial(3*n-k,n-k).

The programs for A385667, there is no canonical definition to state claims against.
-/

/-! ## A385667.P13116814272433551489

`A193842(A062725(n))`
-/

namespace A385667.P13116814272433551489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A062725 n).toNat

end

end A385667.P13116814272433551489

/-! ## A385667.P17594449491182149047

`A193843(A062728(n))`
-/

namespace A385667.P17594449491182149047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 (A062728 n).toNat

end

end A385667.P17594449491182149047

/-! ## A385667.P14251756955934408604

`A119673(A051682(n+1))`
-/

namespace A385667.P14251756955934408604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A051682 (n + 1)).toNat

end

end A385667.P14251756955934408604

/-! ## A385667.P13325502930167903170

`A119673(A081271(n)-2*n)`
-/

namespace A385667.P13325502930167903170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A081271 n - (2 * n : ℤ)).toNat

end

end A385667.P13325502930167903170

/-! ## A385667.P1044278523442963218

`A193842(A051682(n+1)-A016777(n))`
-/

namespace A385667.P1044278523442963218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A051682 (n + 1) - A016777 n).toNat

end

end A385667.P1044278523442963218

/-!
# A385668: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(4*n+1,k) * binomial(4*n-k,n-k).

The programs for A385668, there is no canonical definition to state claims against.
-/

/-! ## A385668.P5123314460401939936

`A193842(A139276(n))`
-/

namespace A385668.P5123314460401939936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A139276 n).toNat

end

end A385668.P5123314460401939936

/-! ## A385668.P3940851812560686391

`A193843(A139277(n))`
-/

namespace A385668.P3940851812560686391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 (A139277 n).toNat

end

end A385668.P3940851812560686391

/-! ## A385668.P1181500398434357817

`A193842(A033585(n)+n)`
-/

namespace A385668.P1181500398434357817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (A033585 n + (n : ℤ)).toNat

end

end A385668.P1181500398434357817

/-! ## A385668.P16238230017918004166

`A119673(A194268(n))`
-/

namespace A385668.P16238230017918004166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A194268 n).toNat

end

end A385668.P16238230017918004166

/-! ## A385668.P1333362923058548294

`A119673(A056220(2*n+1)-n)`
-/

namespace A385668.P1333362923058548294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119673 (A056220 (2 * n + 1) - (n : ℤ)).toNat

end

end A385668.P1333362923058548294

/-!
# A385673: The smallest number k such that k! contains the string concatenation of 0 to n as a substring.

The programs for A385673, there is no canonical definition to state claims against.
-/

/-! ## A385673.P5119863467856302798

`A023990(A206450(n+2))`
-/

namespace A385673.P5119863467856302798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 (A206450 (n + 2)).toNat

end

end A385673.P5119863467856302798

/-!
# A385674: Triangle read by rows: T(n,n) = 1 and T(n,k) = (T(n-1,k) | T(n-2,k) | ... | T(n-k,k)) + 1, where | is bitwise OR, (0<=k<=n).

The programs for A385674, there is no canonical definition to state claims against.
-/

/-! ## A385674.P5010335442001292710

`and(A172119(n), A177804(n+1))`
-/

namespace A385674.P5010335442001292710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A172119 n) (A177804 (n + 1))

end

end A385674.P5010335442001292710

/-!
# A385679: Numbers k that are not congruent to a square mod sopfr(k).

The programs for A385679, there is no canonical definition to state claims against.
-/

/-! ## A385679.P8292340781982722340

`A296243(n+3)-A304327(A056579(n))`
-/

namespace A385679.P8292340781982722340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 3) - A304327 (A056579 n).toNat

end

end A385679.P8292340781982722340

/-! ## A385679.P8363246633011088196

`lt[A072447(A326625(n+4)), A326850(n)]`
-/

namespace A385679.P8363246633011088196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072447 (A326625 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326850 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385679.P8363246633011088196

/-!
# A385682: a(n) = (n - 1) * Sum_{k=2..n} A000010(k).

The programs for A385682, the canonical program `A385682.P9546998427617128553` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385682 has offset 1).

The definition of A385682 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A385682.P9546998427617128553

`n*(A002088(n+1)-1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A385682

/-- `n*(A002088(n+1)-1)` -/
def P9546998427617128553.Spec : Prop :=
  ∀ n, P9546998427617128553.a n = A385682 (n + 1)

theorem P9546998427617128553.correct : P9546998427617128553.Spec := by
  intro n
  simp only [A385682, Nat.add_sub_cancel]

end A385682

/-! ## A385682.P215283985457388976

`n*A015614(n+1)`
-/

namespace A385682.P215283985457388976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A015614 (n + 1)

end

end A385682.P215283985457388976

namespace A385682

/-- `n*A015614(n+1)` -/
def P215283985457388976.Spec : Prop :=
  ∀ n, P215283985457388976.a n = A385682 (n + 1)

end A385682

/-! ## A385682.P16939074830974081935

`n*(A092249(n+1)-1)`
-/

namespace A385682.P16939074830974081935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092249 (n + 1) - 1)

end

end A385682.P16939074830974081935

namespace A385682

/-- `n*(A092249(n+1)-1)` -/
def P16939074830974081935.Spec : Prop :=
  ∀ n, P16939074830974081935.a n = A385682 (n + 1)

end A385682

/-! ## A385682.P9502218596144274658

`n*(A005728(n+1)-2)`
-/

namespace A385682.P9502218596144274658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005728 (n + 1) - 2)

end

end A385682.P9502218596144274658

namespace A385682

/-- `n*(A005728(n+1)-2)` -/
def P9502218596144274658.Spec : Prop :=
  ∀ n, P9502218596144274658.a n = A385682 (n + 1)

end A385682

/-! ## A385682.P11515778627668312541

`n*(A015613(n+1)+n)`
-/

namespace A385682.P11515778627668312541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A015613 (n + 1) + (n : ℤ))

end

end A385682.P11515778627668312541

namespace A385682

/-- `n*(A015613(n+1)+n)` -/
def P11515778627668312541.Spec : Prop :=
  ∀ n, P11515778627668312541.a n = A385682 (n + 1)

end A385682

/-! ## A385682.P450012467219351956

`n*(A187263(n+1)-(n+1))`
-/

namespace A385682.P450012467219351956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A187263 (n + 1) - (n + 1 : ℤ))

end

end A385682.P450012467219351956

namespace A385682

/-- `n*(A187263(n+1)-(n+1))` -/
def P450012467219351956.Spec : Prop :=
  ∀ n, P450012467219351956.a n = A385682 (n + 1)

end A385682

/-! ## A385682.P16734188523267322769

`A143270(n+1)-A187263(n+1)`
-/

namespace A385682.P16734188523267322769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143270 (n + 1) - A187263 (n + 1)

end

end A385682.P16734188523267322769

namespace A385682

/-- `A143270(n+1)-A187263(n+1)` -/
def P16734188523267322769.Spec : Prop :=
  ∀ n, P16734188523267322769.a n = A385682 (n + 1)

end A385682

/-! ## A385682.P949954018768762413

`n*(A049643(n+1)-2)`
-/

namespace A385682.P949954018768762413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A049643 (n + 1) - 2)

end

end A385682.P949954018768762413

namespace A385682

/-- `n*(A049643(n+1)-2)` -/
def P949954018768762413.Spec : Prop :=
  ∀ n, P949954018768762413.a n = A385682 (n + 1)

end A385682

/-! ## A385682.P6786217257942583920

`n*(A225531(n+1)-3)`
-/

namespace A385682.P6786217257942583920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A225531 (n + 1) - 3)

end

end A385682.P6786217257942583920

namespace A385682

/-- `n*(A225531(n+1)-3)` -/
def P6786217257942583920.Spec : Prop :=
  ∀ n, P6786217257942583920.a n = A385682 (n + 1)

end A385682

/-!
# A385683: Complement of A030511.

The programs for A385683, the canonical program `A385683.P15517185110051809613` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385683 has offset 1).

The definition of A385683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385683.P15517185110051809613

`comp[floor(2/3*n²)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A385683

/-- `comp[floor(2/3*n²)]` -/
def P15517185110051809613.Spec : Prop :=
  ∀ n, (P15517185110051809613.a n : ℤ) = A385683 (n + 1)

theorem P15517185110051809613.correct : P15517185110051809613.Spec := by
  intro n
  simp only [A385683, Nat.add_sub_cancel]

end A385683

/-! ## A385683.P17680529490708750293

`comp[A030511(n+3)-1]+1`
-/

namespace A385683.P17680529490708750293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030511 (n + 3) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385683.P17680529490708750293

namespace A385683

/-- `comp[A030511(n+3)-1]+1` -/
def P17680529490708750293.Spec : Prop :=
  ∀ n, (P17680529490708750293.a n : ℤ) = A385683 (n + 1)

end A385683

/-! ## A385683.P15145657113412282943

`A000027(comp[∑[A063224(n+1)]])`
-/

namespace A385683.P15145657113412282943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063224 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A385683.P15145657113412282943

namespace A385683

/-- `A000027(comp[∑[A063224(n+1)]])` -/
def P15145657113412282943.Spec : Prop :=
  ∀ n, P15145657113412282943.a n = A385683 (n + 1)

end A385683

/-! ## A385683.P4079031481813850823

`A204164(3*n+1)+n`
-/

namespace A385683.P4079031481813850823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (3 * n + 1) + (n : ℤ)

end

end A385683.P4079031481813850823

namespace A385683

/-- `A204164(3*n+1)+n` -/
def P4079031481813850823.Spec : Prop :=
  ∀ n, P4079031481813850823.a n = A385683 (n + 1)

end A385683

/-! ## A385683.P17729685677865575149

`A110654(A163985(n)+A003057(3*n+2))`
-/

namespace A385683.P17729685677865575149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A163985 n + A003057 (3 * n + 2)).toNat

end

end A385683.P17729685677865575149

namespace A385683

/-- `A110654(A163985(n)+A003057(3*n+2))` -/
def P17729685677865575149.Spec : Prop :=
  ∀ n, P17729685677865575149.a n = A385683 (n + 1)

end A385683

/-! ## A385683.P16576510930331951546

`lt[1-2*n%2, A087467(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A385683.P16576510930331951546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (n % 2) : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087467 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385683.P16576510930331951546

namespace A385683

/-- `lt[1-2*n%2, A087467(floor(n/(xor(n, n+1)+1))+1)]` -/
def P16576510930331951546.Spec : Prop :=
  ∀ n, (P16576510930331951546.a n : ℤ) = A385683 (n + 1)

end A385683

/-! ## A385683.P14471107062095808920

`lt[1, A194070(n+1)]`
-/

namespace A385683.P14471107062095808920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A385683.P14471107062095808920

namespace A385683

/-- `lt[1, A194070(n+1)]` -/
def P14471107062095808920.Spec : Prop :=
  ∀ n, (P14471107062095808920.a n : ℤ) = A385683 (n + 1)

end A385683

/-!
# A385684: Numbers k such that (38^k - 3^k)/35 is prime.

The programs for A385684, there is no canonical definition to state claims against.
-/

/-! ## A385684.P10607928354551446290

`A193461(A181956(n))`
-/

namespace A385684.P10607928354551446290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193461 (A181956 n).toNat

end

end A385684.P10607928354551446290

/-!
# A385685: Sequence where k is appended after every k! occurrences of 1, with multiple values following a 1 listed in order.

The programs for A385685, there is no canonical definition to state claims against.
-/

/-! ## A385685.P2504094782858165389

`A001359(A095062(n+1))%A091976(3*(n+1))`
-/

namespace A385685.P2504094782858165389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (A095062 (n + 1)).toNat) (A091976 (3 * (n + 1)))

end

end A385685.P2504094782858165389

/-! ## A385685.P4132976852690657992

`gcd(A230854(A000032(n)), A280738(n+1))`
-/

namespace A385685.P4132976852690657992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230854 (A000032 n).toNat) (A280738 (n + 1))

end

end A385685.P4132976852690657992

/-! ## A385685.P10183324428101580014

`∏{e}[∑[A332280(3*(n+1))], #]`
-/

namespace A385685.P10183324428101580014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A385685.P10183324428101580014

/-! ## A385685.P8637613160036210838

`A005361(xor(A109613(n), A244508(n+2)))`
-/

namespace A385685.P8637613160036210838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (Int.xor (A109613 n) (A244508 (n + 2))).toNat

end

end A385685.P8637613160036210838

/-! ## A385685.P140870419612987958

`A227349(A356867(n+1)+A122111(2*n+5))`
-/

namespace A385685.P140870419612987958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (A356867 (n + 1) + A122111 (2 * n + 5)).toNat

end

end A385685.P140870419612987958

/-!
# A385687: E.g.f. A(x) satisfies A(x) = exp( x*((A(x) + A(-x))/2)^2 ).

The programs for A385687, there is no canonical definition to state claims against.
-/

/-! ## A385687.P9770649791466081039

`A072441(A204451(n))`
-/

namespace A385687.P9770649791466081039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072441 (A204451 n).toNat

end

end A385687.P9770649791466081039

/-! ## A385687.P17371782839198018701

`A351784(2^A001405(n))`
-/

namespace A385687.P17371782839198018701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351784 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001405 n : ℤ))).toNat

end

end A385687.P17371782839198018701

/-!
# A385688: E.g.f. A(x) satisfies A(x) = exp( x*((A(x) + A(-x))/2)^3 ).

The programs for A385688, there is no canonical definition to state claims against.
-/

/-! ## A385688.P17509529971089792072

`A394321(A287993(n+1))`
-/

namespace A385688.P17509529971089792072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394321 (A287993 (n + 1)).toNat

end

end A385688.P17509529971089792072

/-! ## A385688.P6029873096433959151

`A027750(A121413(n)-A199969(n+1))`
-/

namespace A385688.P6029873096433959151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A121413 n - A199969 (n + 1)).toNat

end

end A385688.P6029873096433959151

/-!
# A385689: a(n) = 6*binomial(n,4) + 6*binomial(n,3) + 4*binomial(n,2) + 2*n + 1.

The programs for A385689, the canonical program `A385689.P17703581142400159642` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385689 has offset 0).

The definition of A385689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n, 4)+6*C(n, 3)+4*C(n, 2)+2*n+1` (program `A385689.P17703581142400159642`, by `A385689.P17703581142400159642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385689.P17703581142400159642

`6*C(n, 4)+6*C(n, 3)+4*C(n, 2)+2*n+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A385689

/-- `6*C(n, 4)+6*C(n, 3)+4*C(n, 2)+2*n+1` -/
def P17703581142400159642.Spec : Prop :=
  ∀ n, (P17703581142400159642.a n : ℤ) = A385689 n

theorem P17703581142400159642.correct : P17703581142400159642.Spec := by
  intro n
  simp only [A385689]

end A385689

/-! ## A385689.P7880573746030145924

`1/4*n^4-1/2*n^3+7/4*n²+1/2*n+1`
-/

namespace A385689.P7880573746030145924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (n ^ 4 : ℚ) - (1 : ℚ) / 2 * (n ^ 3 : ℚ) + (7 : ℚ) / 4 * (n ^ 2 : ℚ) + (1 : ℚ) / 2 * (n : ℚ) + 1

end

end A385689.P7880573746030145924

namespace A385689

/-- `1/4*n^4-1/2*n^3+7/4*n²+1/2*n+1` -/
def P7880573746030145924.Spec : Prop :=
  ∀ n, P7880573746030145924.a n = (A385689 n : ℚ)

end A385689

/-! ## A385689.P1284898774259057950

`(A058919(n)+A001844(n))/2`
-/

namespace A385689.P1284898774259057950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058919 n + A001844 n : ℚ) / 2

end

end A385689.P1284898774259057950

namespace A385689

/-- `(A058919(n)+A001844(n))/2` -/
def P1284898774259057950.Spec : Prop :=
  ∀ n, P1284898774259057950.a n = (A385689 n : ℚ)

end A385689

/-! ## A385689.P2519278009054855987

`∑[∑[A033627(A118403(n))]]`
-/

namespace A385689.P2519278009054855987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A118403 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385689.P2519278009054855987

namespace A385689

/-- `∑[∑[A033627(A118403(n))]]` -/
def P2519278009054855987.Spec : Prop :=
  ∀ n, P2519278009054855987.a n = A385689 n

end A385689

/-! ## A385689.P4152336426450923876

`A214661((a(n-1)+1)/2+1)` with `a(0)=1`
-/

namespace A385689.P4152336426450923876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214661 (SequenceMachineLib.roundAway ((a (n - 1) + 1 : ℚ) / 2 + 1)).toNat

end

end A385689.P4152336426450923876

namespace A385689

/-- `A214661((a(n-1)+1)/2+1)` -/
def P4152336426450923876.Spec : Prop :=
  ∀ n, P4152336426450923876.a n = A385689 n

end A385689

/-!
# A385690: E.g.f. A(x) satisfies A(x) = exp( x*A(x)*(A(x) + A(-x))/2 ).

The programs for A385690, there is no canonical definition to state claims against.
-/

/-! ## A385690.P4411548251831873182

`A335036(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A385690.P4411548251831873182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A335036 (a (n - 1)).toNat

end

end A385690.P4411548251831873182

/-!
# A385692: E.g.f. A(x) satisfies A(x) = exp( x*A(x)*(A(x) + A(w*x) + A(w^2*x))/3 ), where w = exp(2*Pi*i/3).

The programs for A385692, there is no canonical definition to state claims against.
-/

/-! ## A385692.P7588820476706990596

`A304708(n^3+3)`
-/

namespace A385692.P7588820476706990596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (n ^ 3 + 3)

end

end A385692.P7588820476706990596

/-!
# A385697: Number of unlabeled simple graphs on n vertices with no induced subgraphs isomorphic to a P5 or complement of a P5, where P5 = path on 5 vertices.

The programs for A385697, there is no canonical definition to state claims against.
-/

/-! ## A385697.P16133985755263141790

`A048688(A079319(n))`
-/

namespace A385697.P16133985755263141790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048688 (A079319 n).toNat

end

end A385697.P16133985755263141790

/-! ## A385697.P6547202101547501562

`A225086(A000108(n)+n)`
-/

namespace A385697.P6547202101547501562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A000108 n + (n : ℤ)).toNat

end

end A385697.P6547202101547501562

/-!
# A385698: E.g.f. A(x) satisfies A(x) = exp( x*(A(x) + A(-x))*(A(x) + A(w*x) + A(w^2*x))/6 ), where w = exp(2*Pi*i/3).

The programs for A385698, there is no canonical definition to state claims against.
-/

/-! ## A385698.P2843627712877286877

`A228939(A009211(n))`
-/

namespace A385698.P2843627712877286877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228939 (A009211 n).toNat

end

end A385698.P2843627712877286877

/-! ## A385698.P12663391541134690623

`A054345(A347601(n)²)`
-/

namespace A385698.P12663391541134690623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054345 (A347601 n ^ 2).toNat

end

end A385698.P12663391541134690623

