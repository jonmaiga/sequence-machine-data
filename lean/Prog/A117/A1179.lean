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
import Seq.B000.C036
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
# A117900: Expansion of (1 + 2*x + 4*x^2 + 4*x^3 + 2*x^4)/((1+x)*(1-x^3)^2).

The programs for A117900, the canonical program `A117900.P4931029659330977014` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117900 has offset 0).

The definition of A117900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117900.P4931029659330977014

`A008619(n)+A004526(A110090(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A117900

/-- `A008619(n)+A004526(A110090(n))` -/
def P4931029659330977014.Spec : Prop :=
  ∀ n, P4931029659330977014.a n = A117900 n

theorem P4931029659330977014.correct : P4931029659330977014.Spec := by
  intro n
  simp only [A117900]

end A117900

/-! ## A117900.P15241391341805016274

`A004526(n)+A004526(A110090(n))+1`
-/

namespace A117900.P15241391341805016274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A004526 (A110090 n).toNat + 1)

end

end A117900.P15241391341805016274

namespace A117900

/-- `A004526(n)+A004526(A110090(n))+1` -/
def P15241391341805016274.Spec : Prop :=
  ∀ n, P15241391341805016274.a n = A117900 n

end A117900

/-! ## A117900.P2030721068858118825

`A142150(1-A008620(n)+n)+A008619(n)`
-/

namespace A117900.P2030721068858118825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (1 - A008620 n + (n : ℤ)).toNat + A008619 n

end

end A117900.P2030721068858118825

namespace A117900

/-- `A142150(1-A008620(n)+n)+A008619(n)` -/
def P2030721068858118825.Spec : Prop :=
  ∀ n, P2030721068858118825.a n = A117900 n

end A117900

/-! ## A117900.P147832953241164680

`Δ[A008130(n)]+∑[and(1, n+1)]`
-/

namespace A117900.P147832953241164680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A117900.P147832953241164680

namespace A117900

/-- `Δ[A008130(n)]+∑[and(1, n+1)]` -/
def P147832953241164680.Spec : Prop :=
  ∀ n, P147832953241164680.a n = A117900 n

end A117900

/-! ## A117900.P8743495373765816761

`A010761(n+2)-A175676(n+2)`
-/

namespace A117900.P8743495373765816761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (n + 2) - A175676 (n + 2)

end

end A117900.P8743495373765816761

namespace A117900

/-- `A010761(n+2)-A175676(n+2)` -/
def P8743495373765816761.Spec : Prop :=
  ∀ n, P8743495373765816761.a n = A117900 n

end A117900

/-! ## A117900.P9258784032095505294

`Δ[A002620(n+1)+A002620(A004396(n))]`
-/

namespace A117900.P9258784032095505294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + A002620 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117900.P9258784032095505294

namespace A117900

/-- `Δ[A002620(n+1)+A002620(A004396(n))]` -/
def P9258784032095505294.Spec : Prop :=
  ∀ n, P9258784032095505294.a n = A117900 n

end A117900

/-! ## A117900.P11644029859814556396

`A004526(A092942(n+1))+A004526(n)+1`
-/

namespace A117900.P11644029859814556396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A092942 (n + 1)).toNat + (A004526 n + 1)

end

end A117900.P11644029859814556396

namespace A117900

/-- `A004526(A092942(n+1))+A004526(n)+1` -/
def P11644029859814556396.Spec : Prop :=
  ∀ n, P11644029859814556396.a n = A117900 n

end A117900

/-! ## A117900.P2456435397804828723

`A010761(n+2)-A004526(Δ[A008620(n+1)²])`
-/

namespace A117900.P2456435397804828723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (n + 2) - A004526 (f1 (n + 1) - f1 n).toNat

end

end A117900.P2456435397804828723

namespace A117900

/-- `A010761(n+2)-A004526(Δ[A008620(n+1)²])` -/
def P2456435397804828723.Spec : Prop :=
  ∀ n, P2456435397804828723.a n = A117900 n

end A117900

/-! ## A117900.P15941815502381744202

`n+1-Δ[A393093(n+1)]`
-/

namespace A117900.P15941815502381744202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A117900.P15941815502381744202

namespace A117900

/-- `n+1-Δ[A393093(n+1)]` -/
def P15941815502381744202.Spec : Prop :=
  ∀ n, P15941815502381744202.a n = A117900 n

end A117900

/-! ## A117900.P15288356738375835374

`A004526(n)+Δ[A006446(n+2)]`
-/

namespace A117900.P15288356738375835374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (f1 (n + 1) - f1 n)

end

end A117900.P15288356738375835374

namespace A117900

/-- `A004526(n)+Δ[A006446(n+2)]` -/
def P15288356738375835374.Spec : Prop :=
  ∀ n, P15288356738375835374.a n = A117900 n

end A117900

/-! ## A117900.P2033632950751858061

`A065033(A087509(2*n+1)+n+1)`
-/

namespace A117900.P2033632950751858061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A087509 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A117900.P2033632950751858061

namespace A117900

/-- `A065033(A087509(2*n+1)+n+1)` -/
def P2033632950751858061.Spec : Prop :=
  ∀ n, P2033632950751858061.a n = A117900 n

end A117900

/-! ## A117900.P10740836942763446130

`A065033(n+1)+Δ[A008737(2*n)]`
-/

namespace A117900.P10740836942763446130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008737 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + (f1 (n + 1) - f1 n)

end

end A117900.P10740836942763446130

namespace A117900

/-- `A065033(n+1)+Δ[A008737(2*n)]` -/
def P10740836942763446130.Spec : Prop :=
  ∀ n, P10740836942763446130.a n = A117900 n

end A117900

/-! ## A117900.P4235930601981971904

`Δ[A002620(A002264(2*n+1))+A002620(n+1)]`
-/

namespace A117900.P4235930601981971904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002264 (2 * n + 1)).toNat + A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117900.P4235930601981971904

namespace A117900

/-- `Δ[A002620(A002264(2*n+1))+A002620(n+1)]` -/
def P4235930601981971904.Spec : Prop :=
  ∀ n, P4235930601981971904.a n = A117900 n

end A117900

/-! ## A117900.P6874714001050529086

`A117905(2*A047230(n+1))-A117905(n)`
-/

namespace A117900.P6874714001050529086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117905 (2 * A047230 (n + 1)).toNat - A117905 n

end

end A117900.P6874714001050529086

namespace A117900

/-- `A117905(2*A047230(n+1))-A117905(n)` -/
def P6874714001050529086.Spec : Prop :=
  ∀ n, P6874714001050529086.a n = A117900 n

end A117900

/-!
# A117901: Inverse of number triangle A117898.

The programs for A117901, there is no canonical definition to state claims against.
-/

/-! ## A117901.P2015725238096053160

`A274661(A339792(3*n+4)+A071251(n+1))`
-/

namespace A117901.P2015725238096053160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 (A339792 (3 * n + 4) + A071251 (n + 1)).toNat

end

end A117901.P2015725238096053160

/-! ## A117901.P12182851716516284263

`A104041(n)+A007949(A022174(n))`
-/

namespace A117901.P12182851716516284263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104041 n + A007949 (A022174 n).toNat

end

end A117901.P12182851716516284263

/-! ## A117901.P2120391845540037319

`A104041(n)+A014707(A177848(n+1))`
-/

namespace A117901.P2120391845540037319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104041 n + A014707 (A177848 (n + 1)).toNat

end

end A117901.P2120391845540037319

/-! ## A117901.P916729415701269892

`A202820(A202812(n+1))+A104041(n)`
-/

namespace A117901.P916729415701269892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202820 (A202812 (n + 1)).toNat + A104041 n

end

end A117901.P916729415701269892

/-!
# A117902: Expansion of (1-x^2-2x^3)/(1-4x^3).

The programs for A117902, the canonical program `A117902.P15507018486432572040` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117902 has offset 0).

The definition of A117902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117902.P15507018486432572040

`4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117902

/-- `4*a(n-3)` -/
def P15507018486432572040.Spec : Prop :=
  ∀ n, P15507018486432572040.a n = A117902 n

theorem P15507018486432572040.correct : P15507018486432572040.Spec := by
  intro n
  simp only [A117902]

end A117902

/-! ## A117902.P12490001103523167233

`a(n-3)/(1/2)²` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=2`
-/

namespace A117902.P12490001103523167233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, -1, 2] fun n a =>
  a (n - 3) / ((1 : ℚ) / 2) ^ 2

end

end A117902.P12490001103523167233

namespace A117902

/-- `a(n-3)/(1/2)²` -/
def P12490001103523167233.Spec : Prop :=
  ∀ n, P12490001103523167233.a n = (A117902 n : ℚ)

end A117902

/-! ## A117902.P14368271376840264902

`A011782(A009947(n))*A128834(2*n+1)`
-/

namespace A117902.P14368271376840264902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A009947 n).toNat * A128834 (2 * n + 1)

end

end A117902.P14368271376840264902

namespace A117902

/-- `A011782(A009947(n))*A128834(2*n+1)` -/
def P14368271376840264902.Spec : Prop :=
  ∀ n, P14368271376840264902.a n = A117902 n

end A117902

/-! ## A117902.P572639340794051630

`ceil(A078029(2*n)/2)`
-/

namespace A117902.P572639340794051630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078029 (2 * n) : ℚ) / 2⌉

end

end A117902.P572639340794051630

namespace A117902

/-- `ceil(A078029(2*n)/2)` -/
def P572639340794051630.Spec : Prop :=
  ∀ n, P572639340794051630.a n = A117902 n

end A117902

/-! ## A117902.P5705138985150915757

`round(A078029(A005843(n))/2)`
-/

namespace A117902.P5705138985150915757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078029 (A005843 n).toNat : ℚ) / 2)

end

end A117902.P5705138985150915757

namespace A117902

/-- `round(A078029(A005843(n))/2)` -/
def P5705138985150915757.Spec : Prop :=
  ∀ n, P5705138985150915757.a n = A117902 n

end A117902

/-! ## A117902.P8917922067956104897

`A078029(2*n)/gcd(2, A078029(n))`
-/

namespace A117902.P8917922067956104897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078029 (2 * n) : ℚ) / (Int.gcd 2 (A078029 n) : ℚ)

end

end A117902.P8917922067956104897

namespace A117902

/-- `A078029(2*n)/gcd(2, A078029(n))` -/
def P8917922067956104897.Spec : Prop :=
  ∀ n, P8917922067956104897.a n = (A117902 n : ℚ)

end A117902

/-! ## A117902.P10310805186989766317

`A078029(2*n)/(n+2-A065033(2*n))`
-/

namespace A117902.P10310805186989766317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078029 (2 * n) : ℚ) / ((n + 2 : ℤ) - A065033 (2 * n) : ℚ)

end

end A117902.P10310805186989766317

namespace A117902

/-- `A078029(2*n)/(n+2-A065033(2*n))` -/
def P10310805186989766317.Spec : Prop :=
  ∀ n, P10310805186989766317.a n = (A117902 n : ℚ)

end A117902

/-! ## A117902.P10969481814769760451

`A078029(2*n)/A020639(A001316(n))`
-/

namespace A117902.P10969481814769760451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078029 (2 * n) : ℚ) / (A020639 (A001316 n).toNat : ℚ)

end

end A117902.P10969481814769760451

namespace A117902

/-- `A078029(2*n)/A020639(A001316(n))` -/
def P10969481814769760451.Spec : Prop :=
  ∀ n, P10969481814769760451.a n = (A117902 n : ℚ)

end A117902

/-!
# A117904: Number triangle [k<=n]*0^abs(L(C(n,2)/3) - L(C(k,2)/3)) where L(j/p) is the Legendre symbol of j and p.

The programs for A117904, the canonical program `A117904.P18293457615269671848` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117904 has offset 0).

The definition of A117904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117904.P18293457615269671848

`2-A117898(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A117904

/-- `2-A117898(n)` -/
def P18293457615269671848.Spec : Prop :=
  ∀ n, P18293457615269671848.a n = A117904 n

theorem P18293457615269671848.correct : P18293457615269671848.Spec := by
  intro n
  simp only [A117904]

end A117904

/-! ## A117904.P6445894937474294306

`A131411(n+1)%2`
-/

namespace A117904.P6445894937474294306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131411 (n + 1)) 2

end

end A117904.P6445894937474294306

namespace A117904

/-- `A131411(n+1)%2` -/
def P6445894937474294306.Spec : Prop :=
  ∀ n, P6445894937474294306.a n = A117904 n

end A117904

/-! ## A117904.P15706153943046169933

`(A329854(n)%3)%2`
-/

namespace A117904.P15706153943046169933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A329854 n) 3) 2

end

end A117904.P15706153943046169933

namespace A117904

/-- `(A329854(n)%3)%2` -/
def P15706153943046169933.Spec : Prop :=
  ∀ n, P15706153943046169933.a n = A117904 n

end A117904

/-! ## A117904.P8477319278689267731

`and(A000328(n), A117898(n))`
-/

namespace A117904.P8477319278689267731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000328 n) (A117898 n)

end

end A117904.P8477319278689267731

namespace A117904

/-- `and(A000328(n), A117898(n))` -/
def P8477319278689267731.Spec : Prop :=
  ∀ n, P8477319278689267731.a n = A117904 n

end A117904

/-! ## A117904.P17173756442074048391

`and(A001513(n), A117898(n))`
-/

namespace A117904.P17173756442074048391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001513 n) (A117898 n)

end

end A117904.P17173756442074048391

namespace A117904

/-- `and(A001513(n), A117898(n))` -/
def P17173756442074048391.Spec : Prop :=
  ∀ n, P17173756442074048391.a n = A117904 n

end A117904

/-! ## A117904.P12058195125976784741

`and(A001535(n), A117898(n))`
-/

namespace A117904.P12058195125976784741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A117898 n)

end

end A117904.P12058195125976784741

namespace A117904

/-- `and(A001535(n), A117898(n))` -/
def P12058195125976784741.Spec : Prop :=
  ∀ n, P12058195125976784741.a n = A117904 n

end A117904

/-! ## A117904.P483297147816136774

`and(A001546(n), A117898(n))`
-/

namespace A117904.P483297147816136774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A117898 n)

end

end A117904.P483297147816136774

namespace A117904

/-- `and(A001546(n), A117898(n))` -/
def P483297147816136774.Spec : Prop :=
  ∀ n, P483297147816136774.a n = A117904 n

end A117904

/-! ## A117904.P8203828524231870454

`and(A001844(n), A117898(n))`
-/

namespace A117904.P8203828524231870454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A117898 n)

end

end A117904.P8203828524231870454

namespace A117904

/-- `and(A001844(n), A117898(n))` -/
def P8203828524231870454.Spec : Prop :=
  ∀ n, P8203828524231870454.a n = A117904 n

end A117904

/-! ## A117904.P9530827760770861555

`and(A001846(n), A117898(n))`
-/

namespace A117904.P9530827760770861555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A117898 n)

end

end A117904.P9530827760770861555

namespace A117904

/-- `and(A001846(n), A117898(n))` -/
def P9530827760770861555.Spec : Prop :=
  ∀ n, P9530827760770861555.a n = A117904 n

end A117904

/-! ## A117904.P16263141603023019274

`and(A001848(n), A117898(n))`
-/

namespace A117904.P16263141603023019274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001848 n) (A117898 n)

end

end A117904.P16263141603023019274

namespace A117904

/-- `and(A001848(n), A117898(n))` -/
def P16263141603023019274.Spec : Prop :=
  ∀ n, P16263141603023019274.a n = A117904 n

end A117904

/-! ## A117904.P18026252490660059745

`and(A003185(n), A117898(n))`
-/

namespace A117904.P18026252490660059745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003185 n) (A117898 n)

end

end A117904.P18026252490660059745

namespace A117904

/-- `and(A003185(n), A117898(n))` -/
def P18026252490660059745.Spec : Prop :=
  ∀ n, P18026252490660059745.a n = A117904 n

end A117904

/-! ## A117904.P10409085670113087411

`and(A004768(n), A117898(n))`
-/

namespace A117904.P10409085670113087411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A117898 n)

end

end A117904.P10409085670113087411

namespace A117904

/-- `and(A004768(n), A117898(n))` -/
def P10409085670113087411.Spec : Prop :=
  ∀ n, P10409085670113087411.a n = A117904 n

end A117904

/-! ## A117904.P9317449543276697909

`and(A007204(n), A117898(n))`
-/

namespace A117904.P9317449543276697909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A117898 n)

end

end A117904.P9317449543276697909

namespace A117904

/-- `and(A007204(n), A117898(n))` -/
def P9317449543276697909.Spec : Prop :=
  ∀ n, P9317449543276697909.a n = A117904 n

end A117904

/-! ## A117904.P2208057210776693251

`and(A008349(n), A117898(n))`
-/

namespace A117904.P2208057210776693251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A117898 n)

end

end A117904.P2208057210776693251

namespace A117904

/-- `and(A008349(n), A117898(n))` -/
def P2208057210776693251.Spec : Prop :=
  ∀ n, P2208057210776693251.a n = A117904 n

end A117904

/-! ## A117904.P13237982125738332754

`and(A008358(n), A117898(n))`
-/

namespace A117904.P13237982125738332754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008358 n) (A117898 n)

end

end A117904.P13237982125738332754

namespace A117904

/-- `and(A008358(n), A117898(n))` -/
def P13237982125738332754.Spec : Prop :=
  ∀ n, P13237982125738332754.a n = A117904 n

end A117904

/-! ## A117904.P12693244760589016876

`and(A008362(n), A117898(n))`
-/

namespace A117904.P12693244760589016876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A117898 n)

end

end A117904.P12693244760589016876

namespace A117904

/-- `and(A008362(n), A117898(n))` -/
def P12693244760589016876.Spec : Prop :=
  ∀ n, P12693244760589016876.a n = A117904 n

end A117904

/-! ## A117904.P1436315361113408683

`and(A008379(n), A117898(n))`
-/

namespace A117904.P1436315361113408683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008379 n) (A117898 n)

end

end A117904.P1436315361113408683

namespace A117904

/-- `and(A008379(n), A117898(n))` -/
def P1436315361113408683.Spec : Prop :=
  ∀ n, P1436315361113408683.a n = A117904 n

end A117904

/-! ## A117904.P9034067433464260054

`and(A008417(n), A117898(n))`
-/

namespace A117904.P9034067433464260054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A117898 n)

end

end A117904.P9034067433464260054

namespace A117904

/-- `and(A008417(n), A117898(n))` -/
def P9034067433464260054.Spec : Prop :=
  ∀ n, P9034067433464260054.a n = A117904 n

end A117904

/-! ## A117904.P4291362328707620233

`and(A008421(n), A117898(n))`
-/

namespace A117904.P4291362328707620233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008421 n) (A117898 n)

end

end A117904.P4291362328707620233

namespace A117904

/-- `and(A008421(n), A117898(n))` -/
def P4291362328707620233.Spec : Prop :=
  ∀ n, P4291362328707620233.a n = A117904 n

end A117904

/-! ## A117904.P1788759562571649484

`and(A008514(n), A117898(n))`
-/

namespace A117904.P1788759562571649484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A117898 n)

end

end A117904.P1788759562571649484

namespace A117904

/-- `and(A008514(n), A117898(n))` -/
def P1788759562571649484.Spec : Prop :=
  ∀ n, P1788759562571649484.a n = A117904 n

end A117904

/-!
# A117905: Expansion of (1+2*x+2*x^2)/((1+x)*(1-x^3)^2).

The programs for A117905, the canonical program `A117905.P10035474210965502491` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117905 has offset 0).

The definition of A117905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117905.P10035474210965502491

`ceil((n+1)/(2*gcd(3, ∑[n])))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117905

/-- `ceil((n+1)/(2*gcd(3, ∑[n])))` -/
def P10035474210965502491.Spec : Prop :=
  ∀ n, P10035474210965502491.a n = A117905 n

theorem P10035474210965502491.correct : P10035474210965502491.Spec := by
  intro n
  simp only [A117905]

end A117905

/-! ## A117905.P16189556764939551966

`ceil((n+1)/gcd(6, n²+n))`
-/

namespace A117905.P16189556764939551966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Nat.gcd 6 (n ^ 2 + n) : ℚ)⌉

end

end A117905.P16189556764939551966

namespace A117905

/-- `ceil((n+1)/gcd(6, n²+n))` -/
def P16189556764939551966.Spec : Prop :=
  ∀ n, P16189556764939551966.a n = A117905 n

end A117905

/-! ## A117905.P4435116210351952485

`A087627(n)-a(n-1)` with `a(0)=1`
-/

namespace A117905.P4435116210351952485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087627 n - a (n - 1)

end

end A117905.P4435116210351952485

namespace A117905

/-- `A087627(n)-a(n-1)` -/
def P4435116210351952485.Spec : Prop :=
  ∀ n, P4435116210351952485.a n = A117905 n

end A117905

/-! ## A117905.P12337596356391163613

`A115357(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A117905.P12337596356391163613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A115357 n + a (n - 3)

end

end A117905.P12337596356391163613

namespace A117905

/-- `A115357(n)+a(n-3)` -/
def P12337596356391163613.Spec : Prop :=
  ∀ n, P12337596356391163613.a n = A117905 n

end A117905

/-! ## A117905.P3451307783162008512

`A063208(n+1)-A009947(n)`
-/

namespace A117905.P3451307783162008512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063208 (n + 1) - A009947 n

end

end A117905.P3451307783162008512

namespace A117905

/-- `A063208(n+1)-A009947(n)` -/
def P3451307783162008512.Spec : Prop :=
  ∀ n, P3451307783162008512.a n = A117905 n

end A117905

/-! ## A117905.P16952285492969279091

`2*A117910(n)-A097992(n)`
-/

namespace A117905.P16952285492969279091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117910 n - A097992 n

end

end A117905.P16952285492969279091

namespace A117905

/-- `2*A117910(n)-A097992(n)` -/
def P16952285492969279091.Spec : Prop :=
  ∀ n, P16952285492969279091.a n = A117905 n

end A117905

/-! ## A117905.P8971813773444966844

`A029578(A066481(n+3))-a(n-1)` with `a(0)=1`
-/

namespace A117905.P8971813773444966844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029578 (A066481 (n + 3)).toNat - a (n - 1)

end

end A117905.P8971813773444966844

namespace A117905

/-- `A029578(A066481(n+3))-a(n-1)` -/
def P8971813773444966844.Spec : Prop :=
  ∀ n, P8971813773444966844.a n = A117905 n

end A117905

/-! ## A117905.P9862890224304840553

`A008619(n)-A004526(A110090(n))`
-/

namespace A117905.P9862890224304840553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A004526 (A110090 n).toNat

end

end A117905.P9862890224304840553

namespace A117905

/-- `A008619(n)-A004526(A110090(n))` -/
def P9862890224304840553.Spec : Prop :=
  ∀ n, P9862890224304840553.a n = A117905 n

end A117905

/-! ## A117905.P6030195942636511450

`A004526(n)+1-A004526(A110090(n))`
-/

namespace A117905.P6030195942636511450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (1 - A004526 (A110090 n).toNat)

end

end A117905.P6030195942636511450

namespace A117905

/-- `A004526(n)+1-A004526(A110090(n))` -/
def P6030195942636511450.Spec : Prop :=
  ∀ n, P6030195942636511450.a n = A117905 n

end A117905

/-! ## A117905.P17585466524585233458

`A026806(n+2)+A175676(n+2)-1`
-/

namespace A117905.P17585466524585233458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (n + 2) + (A175676 (n + 2) - 1)

end

end A117905.P17585466524585233458

namespace A117905

/-- `A026806(n+2)+A175676(n+2)-1` -/
def P17585466524585233458.Spec : Prop :=
  ∀ n, P17585466524585233458.a n = A117905 n

end A117905

/-! ## A117905.P11792429791405571174

`Δ[A002620(n+1)-A002620(A004396(n))]`
-/

namespace A117905.P11792429791405571174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - A002620 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117905.P11792429791405571174

namespace A117905

/-- `Δ[A002620(n+1)-A002620(A004396(n))]` -/
def P11792429791405571174.Spec : Prop :=
  ∀ n, P11792429791405571174.a n = A117905 n

end A117905

/-! ## A117905.P17794977778296962720

`A004526(n)+1-A004526(A092942(n+1))`
-/

namespace A117905.P17794977778296962720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1 - A004526 (A092942 (n + 1)).toNat

end

end A117905.P17794977778296962720

namespace A117905

/-- `A004526(n)+1-A004526(A092942(n+1))` -/
def P17794977778296962720.Spec : Prop :=
  ∀ n, P17794977778296962720.a n = A117905 n

end A117905

/-! ## A117905.P14346629370365036202

`A004526(A047202(n+1))-A004526(A265667(n))`
-/

namespace A117905.P14346629370365036202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047202 (n + 1)).toNat - A004526 (A265667 n).toNat

end

end A117905.P14346629370365036202

namespace A117905

/-- `A004526(A047202(n+1))-A004526(A265667(n))` -/
def P14346629370365036202.Spec : Prop :=
  ∀ n, P14346629370365036202.a n = A117905 n

end A117905

/-! ## A117905.P12213709249506458531

`ceil((n+1)/A129203(2*n))`
-/

namespace A117905.P12213709249506458531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A129203 (2 * n) : ℚ)⌉

end

end A117905.P12213709249506458531

namespace A117905

/-- `ceil((n+1)/A129203(2*n))` -/
def P12213709249506458531.Spec : Prop :=
  ∀ n, P12213709249506458531.a n = A117905 n

end A117905

/-! ## A117905.P6240746727643801748

`A065033(n+1-A087509(2*n+1))`
-/

namespace A117905.P6240746727643801748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ((n + 1 : ℤ) - A087509 (2 * n + 1)).toNat

end

end A117905.P6240746727643801748

namespace A117905

/-- `A065033(n+1-A087509(2*n+1))` -/
def P6240746727643801748.Spec : Prop :=
  ∀ n, P6240746727643801748.a n = A117905 n

end A117905

/-! ## A117905.P18229326670816192705

`A065033(n+1)-Δ[A008737(2*n)]`
-/

namespace A117905.P18229326670816192705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008737 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) - (f1 (n + 1) - f1 n)

end

end A117905.P18229326670816192705

namespace A117905

/-- `A065033(n+1)-Δ[A008737(2*n)]` -/
def P18229326670816192705.Spec : Prop :=
  ∀ n, P18229326670816192705.a n = A117905 n

end A117905

/-! ## A117905.P16605577702939570295

`Δ[A002620(n+1)-A002620(A002264(2*n+1))]`
-/

namespace A117905.P16605577702939570295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - A002620 (A002264 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117905.P16605577702939570295

namespace A117905

/-- `Δ[A002620(n+1)-A002620(A002264(2*n+1))]` -/
def P16605577702939570295.Spec : Prop :=
  ∀ n, P16605577702939570295.a n = A117905 n

end A117905

/-! ## A117905.P16957752284287741380

`A008615(A203648(n+2))`
-/

namespace A117905.P16957752284287741380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A203648 (n + 2)).toNat

end

end A117905.P16957752284287741380

namespace A117905

/-- `A008615(A203648(n+2))` -/
def P16957752284287741380.Spec : Prop :=
  ∀ n, P16957752284287741380.a n = A117905 n

end A117905

/-! ## A117905.P1753166875870465384

`A008615((n+2)*A089128(2*n+1))`
-/

namespace A117905.P1753166875870465384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((n + 2 : ℤ) * A089128 (2 * n + 1)).toNat

end

end A117905.P1753166875870465384

namespace A117905

/-- `A008615((n+2)*A089128(2*n+1))` -/
def P1753166875870465384.Spec : Prop :=
  ∀ n, P1753166875870465384.a n = A117905 n

end A117905

/-!
# A117906: Inverse of number triangle A117904.

The programs for A117906, there is no canonical definition to state claims against.
-/

/-! ## A117906.P9880446136134709707

`A163538(and(3, A117901(n)))`
-/

namespace A117906.P9880446136134709707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (Int.land 3 (A117901 n)).toNat

end

end A117906.P9880446136134709707

/-! ## A117906.P16575254851385807724

`1-A008611(and(3, A117901(n)))`
-/

namespace A117906.P16575254851385807724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008611 (Int.land 3 (A117901 n)).toNat

end

end A117906.P16575254851385807724

/-! ## A117906.P10865742261190599808

`A294448(and(3, A117901(n))+2)`
-/

namespace A117906.P10865742261190599808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (Int.land 3 (A117901 n) + 2).toNat

end

end A117906.P10865742261190599808

/-! ## A117906.P8764064114219311025

`A342562(and(3, A117901(n))+2)`
-/

namespace A117906.P8764064114219311025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342562 (Int.land 3 (A117901 n) + 2).toNat

end

end A117906.P8764064114219311025

/-! ## A117906.P14791903687780656869

`A014893(and(3, A117901(n))+3)`
-/

namespace A117906.P14791903687780656869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014893 (Int.land 3 (A117901 n) + 3).toNat

end

end A117906.P14791903687780656869

/-! ## A117906.P13612244879062642347

`A016213(and(3, A117901(n))+3)`
-/

namespace A117906.P13612244879062642347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016213 (Int.land 3 (A117901 n) + 3).toNat

end

end A117906.P13612244879062642347

/-! ## A117906.P12364416143402275763

`A294448(4-and(3, A117901(n)))`
-/

namespace A117906.P12364416143402275763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (4 - Int.land 3 (A117901 n)).toNat

end

end A117906.P12364416143402275763

/-! ## A117906.P13078177932623992345

`A014893(5-and(3, A117901(n)))`
-/

namespace A117906.P13078177932623992345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014893 (5 - Int.land 3 (A117901 n)).toNat

end

end A117906.P13078177932623992345

/-! ## A117906.P945994808064255487

`1-A002262(and(3, A117901(n))+2)`
-/

namespace A117906.P945994808064255487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002262 (Int.land 3 (A117901 n) + 2).toNat

end

end A117906.P945994808064255487

/-! ## A117906.P13753363694007244301

`2-A002260(and(3, A117901(n))+3)`
-/

namespace A117906.P13753363694007244301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A002260 (Int.land 3 (A117901 n) + 3).toNat

end

end A117906.P13753363694007244301

/-! ## A117906.P2681742259089070048

`A006530(4-and(3, A117901(n)))-2`
-/

namespace A117906.P2681742259089070048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 - Int.land 3 (A117901 n)).toNat - 2

end

end A117906.P2681742259089070048

/-! ## A117906.P1370022464453715586

`A014963(4-and(3, A117901(n)))-2`
-/

namespace A117906.P1370022464453715586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 - Int.land 3 (A117901 n)).toNat - 2

end

end A117906.P1370022464453715586

/-! ## A117906.P14504920699846976989

`A020639(4-and(3, A117901(n)))-2`
-/

namespace A117906.P14504920699846976989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 - Int.land 3 (A117901 n)).toNat - 2

end

end A117906.P14504920699846976989

/-! ## A117906.P3225563619398596768

`A008683(2*(4-and(3, A117901(n))))`
-/

namespace A117906.P3225563619398596768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (4 - Int.land 3 (A117901 n))).toNat

end

end A117906.P3225563619398596768

/-! ## A117906.P6572202381883795020

`∏{d}[4-and(3, A117901(n)), A106459(#)]`
-/

namespace A117906.P6572202381883795020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.land 3 (A117901 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A106459 d

end

end A117906.P6572202381883795020

/-! ## A117906.P9439180153635044581

`A154282(A378626(n+1)²*A378626(n+1))`
-/

namespace A117906.P9439180153635044581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (A378626 (n + 1) ^ 2 * A378626 (n + 1)).toNat

end

end A117906.P9439180153635044581

/-!
# A117907: Expansion of x + (1-x)^2/(1-x^6).

The programs for A117907, there is no canonical definition to state claims against.
-/

/-! ## A117907.P14266695513629640830

`A051881(n+1)*A115360(n)`
-/

namespace A117907.P14266695513629640830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051881 (n + 1) * A115360 n

end

end A117907.P14266695513629640830

/-!
# A117908: Chequered (or checkered) triangle for odd prime p=3.

The programs for A117908, the canonical program `A117908.P10558036824550555127` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117908 has offset 0).

The definition of A117908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117908.P11898113062182062493

`A143211(n+1)%2`
-/

namespace A117908.P11898113062182062493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143211 (n + 1)) 2

end

end A117908.P11898113062182062493

namespace A117908

/-- `A143211(n+1)%2` -/
def P11898113062182062493.Spec : Prop :=
  ∀ n, P11898113062182062493.a n = A117908 n

end A117908

/-! ## A117908.P10558036824550555127

`A051173(n+1)²%3`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117908

/-- `A051173(n+1)²%3` -/
def P10558036824550555127.Spec : Prop :=
  ∀ n, P10558036824550555127.a n = A117908 n

theorem P10558036824550555127.correct : P10558036824550555127.Spec := by
  intro n
  simp only [A117908]

end A117908

/-! ## A117908.P9491282192870555155

`A075362(n+1)²%3`
-/

namespace A117908.P9491282192870555155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075362 (n + 1) ^ 2) 3

end

end A117908.P9491282192870555155

namespace A117908

/-- `A075362(n+1)²%3` -/
def P9491282192870555155.Spec : Prop :=
  ∀ n, P9491282192870555155.a n = A117908 n

end A117908

/-! ## A117908.P10956981248508147904

`A139413(n+1)²%3`
-/

namespace A117908.P10956981248508147904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139413 (n + 1) ^ 2) 3

end

end A117908.P10956981248508147904

namespace A117908

/-- `A139413(n+1)²%3` -/
def P10956981248508147904.Spec : Prop :=
  ∀ n, P10956981248508147904.a n = A117908 n

end A117908

/-! ## A117908.P18248523244783071710

`A143254(n+1)²%3`
-/

namespace A117908.P18248523244783071710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143254 (n + 1) ^ 2) 3

end

end A117908.P18248523244783071710

namespace A117908

/-- `A143254(n+1)²%3` -/
def P18248523244783071710.Spec : Prop :=
  ∀ n, P18248523244783071710.a n = A117908 n

end A117908

/-! ## A117908.P8862006470877888008

`A117904(n)*A204439(n+1)`
-/

namespace A117908.P8862006470877888008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117904 n * A204439 (n + 1)

end

end A117908.P8862006470877888008

namespace A117908

/-- `A117904(n)*A204439(n+1)` -/
def P8862006470877888008.Spec : Prop :=
  ∀ n, P8862006470877888008.a n = A117908 n

end A117908

/-! ## A117908.P16071962627763144382

`and(A104763(n+1), A117904(n))`
-/

namespace A117908.P16071962627763144382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104763 (n + 1)) (A117904 n)

end

end A117908.P16071962627763144382

namespace A117908

/-- `and(A104763(n+1), A117904(n))` -/
def P16071962627763144382.Spec : Prop :=
  ∀ n, P16071962627763144382.a n = A117908 n

end A117908

/-! ## A117908.P7352253234613211990

`and(A104765(n+1), A117904(n))`
-/

namespace A117908.P7352253234613211990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104765 (n + 1)) (A117904 n)

end

end A117908.P7352253234613211990

namespace A117908

/-- `and(A104765(n+1), A117904(n))` -/
def P7352253234613211990.Spec : Prop :=
  ∀ n, P7352253234613211990.a n = A117908 n

end A117908

/-! ## A117908.P14669616279853801658

`and(A111946(n+1), A117904(n))`
-/

namespace A117908.P14669616279853801658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111946 (n + 1)) (A117904 n)

end

end A117908.P14669616279853801658

namespace A117908

/-- `and(A111946(n+1), A117904(n))` -/
def P14669616279853801658.Spec : Prop :=
  ∀ n, P14669616279853801658.a n = A117908 n

end A117908

/-! ## A117908.P14986940731557198985

`and(A111956(n+1), A117904(n))`
-/

namespace A117908.P14986940731557198985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111956 (n + 1)) (A117904 n)

end

end A117908.P14986940731557198985

namespace A117908

/-- `and(A111956(n+1), A117904(n))` -/
def P14986940731557198985.Spec : Prop :=
  ∀ n, P14986940731557198985.a n = A117908 n

end A117908

/-! ## A117908.P17893142400921660207

`and(A117904(n), A131410(n+1))`
-/

namespace A117908.P17893142400921660207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117904 n) (A131410 (n + 1))

end

end A117908.P17893142400921660207

namespace A117908

/-- `and(A117904(n), A131410(n+1))` -/
def P17893142400921660207.Spec : Prop :=
  ∀ n, P17893142400921660207.a n = A117908 n

end A117908

/-! ## A117908.P62427734129248527

`and(A117904(n), A143211(n+1))`
-/

namespace A117908.P62427734129248527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117904 n) (A143211 (n + 1))

end

end A117908.P62427734129248527

namespace A117908

/-- `and(A117904(n), A143211(n+1))` -/
def P62427734129248527.Spec : Prop :=
  ∀ n, P62427734129248527.a n = A117908 n

end A117908

/-! ## A117908.P12621866474822011125

`and(1, A111946(n+1)*A117898(n))`
-/

namespace A117908.P12621866474822011125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A111946 (n + 1) * A117898 n)

end

end A117908.P12621866474822011125

namespace A117908

/-- `and(1, A111946(n+1)*A117898(n))` -/
def P12621866474822011125.Spec : Prop :=
  ∀ n, P12621866474822011125.a n = A117908 n

end A117908

/-! ## A117908.P9878146399155261705

`(A002024(n+1)*A002260(n+1))²%3`
-/

namespace A117908.P9878146399155261705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A002024 (n + 1) * A002260 (n + 1)) ^ 2) 3

end

end A117908.P9878146399155261705

namespace A117908

/-- `(A002024(n+1)*A002260(n+1))²%3` -/
def P9878146399155261705.Spec : Prop :=
  ∀ n, P9878146399155261705.a n = A117908 n

end A117908

/-! ## A117908.P10322918195094352177

`A011655(A110749(n+1))`
-/

namespace A117908.P10322918195094352177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A110749 (n + 1)).toNat

end

end A117908.P10322918195094352177

namespace A117908

/-- `A011655(A110749(n+1))` -/
def P10322918195094352177.Spec : Prop :=
  ∀ n, P10322918195094352177.a n = A117908 n

end A117908

/-! ## A117908.P13632941830196185342

`A011655(A051173(n+1))`
-/

namespace A117908.P13632941830196185342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A051173 (n + 1)).toNat

end

end A117908.P13632941830196185342

namespace A117908

/-- `A011655(A051173(n+1))` -/
def P13632941830196185342.Spec : Prop :=
  ∀ n, P13632941830196185342.a n = A117908 n

end A117908

/-! ## A117908.P18058285454803828130

`A011655(A128228(n+1))`
-/

namespace A117908.P18058285454803828130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A128228 (n + 1)).toNat

end

end A117908.P18058285454803828130

namespace A117908

/-- `A011655(A128228(n+1))` -/
def P18058285454803828130.Spec : Prop :=
  ∀ n, P18058285454803828130.a n = A117908 n

end A117908

/-! ## A117908.P12077091682178933259

`A011655(A075362(n+1))`
-/

namespace A117908.P12077091682178933259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A075362 (n + 1)).toNat

end

end A117908.P12077091682178933259

namespace A117908

/-- `A011655(A075362(n+1))` -/
def P12077091682178933259.Spec : Prop :=
  ∀ n, P12077091682178933259.a n = A117908 n

end A117908

/-! ## A117908.P8844293826402254963

`A011655((A025581(n)+A002260(n+1))*A002260(n+1))`
-/

namespace A117908.P8844293826402254963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((A025581 n + A002260 (n + 1)) * A002260 (n + 1)).toNat

end

end A117908.P8844293826402254963

namespace A117908

/-- `A011655((A025581(n)+A002260(n+1))*A002260(n+1))` -/
def P8844293826402254963.Spec : Prop :=
  ∀ n, P8844293826402254963.a n = A117908 n

end A117908

/-! ## A117908.P5728593053102013647

`A079978(A079978(n)+A063929(n+1))`
-/

namespace A117908.P5728593053102013647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A079978 n + A063929 (n + 1)).toNat

end

end A117908.P5728593053102013647

namespace A117908

/-- `A079978(A079978(n)+A063929(n+1))` -/
def P5728593053102013647.Spec : Prop :=
  ∀ n, P5728593053102013647.a n = A117908 n

end A117908

/-!
# A117909: Count, inserting 0 after every even number.

The programs for A117909, the canonical program `A117909.P12818845387985804234` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117909 has offset 0).

The definition of A117909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117909.P12818845387985804234

`round((lcm(3, n+1)-n)/3)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117909

/-- `round((lcm(3, n+1)-n)/3)` -/
def P12818845387985804234.Spec : Prop :=
  ∀ n, P12818845387985804234.a n = A117909 n

theorem P12818845387985804234.correct : P12818845387985804234.Spec := by
  intro n
  simp only [A117909]

end A117909

/-! ## A117909.P14978293683404090665

`∑[floor(Δ[(n+1)/gcd(3, n)])]`
-/

namespace A117909.P14978293683404090665
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 3 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117909.P14978293683404090665

namespace A117909

/-- `∑[floor(Δ[(n+1)/gcd(3, n)])]` -/
def P14978293683404090665.Spec : Prop :=
  ∀ n, P14978293683404090665.a n = A117909 n

end A117909

/-! ## A117909.P2643161277294235920

`∑[∑[∑[(n+1)%3]]]%(n+2)`
-/

namespace A117909.P2643161277294235920
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)

end

end A117909.P2643161277294235920

namespace A117909

/-- `∑[∑[∑[(n+1)%3]]]%(n+2)` -/
def P2643161277294235920.Spec : Prop :=
  ∀ n, (P2643161277294235920.a n : ℤ) = A117909 n

end A117909

/-! ## A117909.P9613685200866163445

`a(n-3)+2%(a(n-3)+2)` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A117909.P9613685200866163445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  a (n - 3) + 2 % (a (n - 3) + 2)

end

end A117909.P9613685200866163445

namespace A117909

/-- `a(n-3)+2%(a(n-3)+2)` -/
def P9613685200866163445.Spec : Prop :=
  ∀ n, (P9613685200866163445.a n : ℤ) = A117909 n

end A117909

/-! ## A117909.P7413117933753023755

`floor((n+3)/(n-1)*a(n-3))` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A117909.P7413117933753023755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  ⌊(n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ) * (a (n - 3) : ℚ)⌋

end

end A117909.P7413117933753023755

namespace A117909

/-- `floor((n+3)/(n-1)*a(n-3))` -/
def P7413117933753023755.Spec : Prop :=
  ∀ n, P7413117933753023755.a n = A117909 n

end A117909

/-! ## A117909.P11717711019033462577

`a(n-3)+(-1)^a(n-2)+1` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A117909.P11717711019033462577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  a (n - 3) + ((-1 : ℝ) ^ (a (n - 2)) + 1)

end

end A117909.P11717711019033462577

namespace A117909

/-- `a(n-3)+(-1)^a(n-2)+1` -/
def P11717711019033462577.Spec : Prop :=
  ∀ n, P11717711019033462577.a n = (A117909 n : ℝ)

end A117909

/-! ## A117909.P16488949574360201094

`A212972(n)%(n+2)`
-/

namespace A117909.P16488949574360201094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212972 n) (n + 2 : ℤ)

end

end A117909.P16488949574360201094

namespace A117909

/-- `A212972(n)%(n+2)` -/
def P16488949574360201094.Spec : Prop :=
  ∀ n, P16488949574360201094.a n = A117909 n

end A117909

/-! ## A117909.P2900061851165674450

`Δ[A000217(ceil(2*n/3))]`
-/

namespace A117909.P2900061851165674450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈2 * ((n : ℚ) / 3)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117909.P2900061851165674450

namespace A117909

/-- `Δ[A000217(ceil(2*n/3))]` -/
def P2900061851165674450.Spec : Prop :=
  ∀ n, P2900061851165674450.a n = A117909 n

end A117909

/-! ## A117909.P12229661348602690540

`A332057(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A117909.P12229661348602690540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332057 (n + 1) - a (n - 1)

end

end A117909.P12229661348602690540

namespace A117909

/-- `A332057(n+1)-a(n-1)` -/
def P12229661348602690540.Spec : Prop :=
  ∀ n, P12229661348602690540.a n = A117909 n

end A117909

/-! ## A117909.P351683211692745280

`A166711(A091684(n+1))`
-/

namespace A117909.P351683211692745280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (A091684 (n + 1)).toNat

end

end A117909.P351683211692745280

namespace A117909

/-- `A166711(A091684(n+1))` -/
def P351683211692745280.Spec : Prop :=
  ∀ n, P351683211692745280.a n = A117909 n

end A117909

/-! ## A117909.P7181847473822588858

`A131561(n)+A092942(n)`
-/

namespace A117909.P7181847473822588858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 n + A092942 n

end

end A117909.P7181847473822588858

namespace A117909

/-- `A131561(n)+A092942(n)` -/
def P7181847473822588858.Spec : Prop :=
  ∀ n, P7181847473822588858.a n = A117909 n

end A117909

/-! ## A117909.P1387538960686012702

`lcm(A010892(n), A133310(n))`
-/

namespace A117909.P1387538960686012702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 n) (A133310 n)

end

end A117909.P1387538960686012702

namespace A117909

/-- `lcm(A010892(n), A133310(n))` -/
def P1387538960686012702.Spec : Prop :=
  ∀ n, (P1387538960686012702.a n : ℤ) = A117909 n

end A117909

/-! ## A117909.P3859010392092172041

`lcm(A049347(n), A269098(n))`
-/

namespace A117909.P3859010392092172041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049347 n) (A269098 n)

end

end A117909.P3859010392092172041

namespace A117909

/-- `lcm(A049347(n), A269098(n))` -/
def P3859010392092172041.Spec : Prop :=
  ∀ n, (P3859010392092172041.a n : ℤ) = A117909 n

end A117909

/-! ## A117909.P3465142409704870117

`A049347(n)²*A133310(n)`
-/

namespace A117909.P3465142409704870117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n ^ 2 * A133310 n

end

end A117909.P3465142409704870117

namespace A117909

/-- `A049347(n)²*A133310(n)` -/
def P3465142409704870117.Spec : Prop :=
  ∀ n, P3465142409704870117.a n = A117909 n

end A117909

/-! ## A117909.P4899052601910836726

`Δ[A000124(n-A002264(n))]`
-/

namespace A117909.P4899052601910836726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((n : ℤ) - A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117909.P4899052601910836726

namespace A117909

/-- `Δ[A000124(n-A002264(n))]` -/
def P4899052601910836726.Spec : Prop :=
  ∀ n, P4899052601910836726.a n = A117909 n

end A117909

/-! ## A117909.P1973430478883898431

`A010882(n)*A092092(n+1)`
-/

namespace A117909.P1973430478883898431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n * A092092 (n + 1)

end

end A117909.P1973430478883898431

namespace A117909

/-- `A010882(n)*A092092(n+1)` -/
def P1973430478883898431.Spec : Prop :=
  ∀ n, P1973430478883898431.a n = A117909 n

end A117909

/-! ## A117909.P1296923149050552331

`A069705(n)*A092092(n+1)`
-/

namespace A117909.P1296923149050552331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069705 n * A092092 (n + 1)

end

end A117909.P1296923149050552331

namespace A117909

/-- `A069705(n)*A092092(n+1)` -/
def P1296923149050552331.Spec : Prop :=
  ∀ n, P1296923149050552331.a n = A117909 n

end A117909

/-! ## A117909.P15555219823273958879

`A092092(n+1)*A130196(n)`
-/

namespace A117909.P15555219823273958879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (n + 1) * A130196 n

end

end A117909.P15555219823273958879

namespace A117909

/-- `A092092(n+1)*A130196(n)` -/
def P15555219823273958879.Spec : Prop :=
  ∀ n, P15555219823273958879.a n = A117909 n

end A117909

/-! ## A117909.P14812246602664124451

`A092092(n+1)*A131534(n)`
-/

namespace A117909.P14812246602664124451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (n + 1) * A131534 n

end

end A117909.P14812246602664124451

namespace A117909

/-- `A092092(n+1)*A131534(n)` -/
def P14812246602664124451.Spec : Prop :=
  ∀ n, P14812246602664124451.a n = A117909 n

end A117909

/-! ## A117909.P331699103326321693

`A092092(n+1)*A132677(n)`
-/

namespace A117909.P331699103326321693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (n + 1) * A132677 n

end

end A117909.P331699103326321693

namespace A117909

/-- `A092092(n+1)*A132677(n)` -/
def P331699103326321693.Spec : Prop :=
  ∀ n, P331699103326321693.a n = A117909 n

end A117909

/-!
# A117910: Expansion of (1 + x + x^2 + x^4)/((1-x^3)*(1-x^6)).

The programs for A117910, the canonical program `A117910.P1959210365692051347` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117910 has offset 0).

The definition of A117910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117910.P1959210365692051347

`a(n-3)+a(n-6)-a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=1, a(6)=2, a(7)=3, a(8)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117910

/-- `a(n-3)+a(n-6)-a(n-9)` -/
def P1959210365692051347.Spec : Prop :=
  ∀ n, P1959210365692051347.a n = A117910 n

theorem P1959210365692051347.correct : P1959210365692051347.Spec := by
  intro n
  simp only [A117910]

end A117910

/-! ## A117910.P2917569158028189190

`ceil(abs(Δ[n*(1-(n+1)%3)])/6)`
-/

namespace A117910.P2917569158028189190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (((n + 1) % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|f1 (n + 1) - f1 n| : ℚ) / 6⌉

end

end A117910.P2917569158028189190

namespace A117910

/-- `ceil(abs(Δ[n*(1-(n+1)%3)])/6)` -/
def P2917569158028189190.Spec : Prop :=
  ∀ n, P2917569158028189190.a n = A117910 n

end A117910

/-! ## A117910.P8828432951354096639

`A178804(A133310(n))`
-/

namespace A117910.P8828432951354096639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A133310 n).toNat

end

end A117910.P8828432951354096639

namespace A117910

/-- `A178804(A133310(n))` -/
def P8828432951354096639.Spec : Prop :=
  ∀ n, P8828432951354096639.a n = A117910 n

end A117910

/-! ## A117910.P13133616601915473766

`A086159(n)-A307018(n)`
-/

namespace A117910.P13133616601915473766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 n - A307018 n

end

end A117910.P13133616601915473766

namespace A117910

/-- `A086159(n)-A307018(n)` -/
def P13133616601915473766.Spec : Prop :=
  ∀ n, P13133616601915473766.a n = A117910 n

end A117910

/-! ## A117910.P9211564314647959967

`A008619(n)-A004526(A009947(n)+1)`
-/

namespace A117910.P9211564314647959967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A004526 (A009947 n + 1).toNat

end

end A117910.P9211564314647959967

namespace A117910

/-- `A008619(n)-A004526(A009947(n)+1)` -/
def P9211564314647959967.Spec : Prop :=
  ∀ n, P9211564314647959967.a n = A117910 n

end A117910

/-! ## A117910.P11557417306644555681

`A008619(2*A004526(n)-A009947(n))`
-/

namespace A117910.P11557417306644555681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A004526 n - A009947 n).toNat

end

end A117910.P11557417306644555681

namespace A117910

/-- `A008619(2*A004526(n)-A009947(n))` -/
def P11557417306644555681.Spec : Prop :=
  ∀ n, P11557417306644555681.a n = A117910 n

end A117910

/-! ## A117910.P12494861128352656201

`A008619(A004526(n)-(A009947(n)-A004526(n)))`
-/

namespace A117910.P12494861128352656201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004526 n - (A009947 n - A004526 n)).toNat

end

end A117910.P12494861128352656201

namespace A117910

/-- `A008619(A004526(n)-(A009947(n)-A004526(n)))` -/
def P12494861128352656201.Spec : Prop :=
  ∀ n, P12494861128352656201.a n = A117910 n

end A117910

/-! ## A117910.P17682789855672722152

`A065033(A087509(n+4)+A087509(n))`
-/

namespace A117910.P17682789855672722152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A087509 (n + 4) + A087509 n).toNat

end

end A117910.P17682789855672722152

namespace A117910

/-- `A065033(A087509(n+4)+A087509(n))` -/
def P17682789855672722152.Spec : Prop :=
  ∀ n, P17682789855672722152.a n = A117910 n

end A117910

/-! ## A117910.P6966524456140050811

`A008621(A226122(n))`
-/

namespace A117910.P6966524456140050811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A226122 n).toNat

end

end A117910.P6966524456140050811

namespace A117910

/-- `A008621(A226122(n))` -/
def P6966524456140050811.Spec : Prop :=
  ∀ n, P6966524456140050811.a n = A117910 n

end A117910

/-! ## A117910.P15307875620297752493

`A110655(A332057(n+1))`
-/

namespace A117910.P15307875620297752493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A332057 (n + 1)).toNat

end

end A117910.P15307875620297752493

namespace A117910

/-- `A110655(A332057(n+1))` -/
def P15307875620297752493.Spec : Prop :=
  ∀ n, P15307875620297752493.a n = A117910 n

end A117910

/-! ## A117910.P13768068194949796809

`A097992(abs(Δ[n*(1-(n+1)%3)]))`
-/

namespace A117910.P13768068194949796809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - (((n + 1) % 3 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 |f1 (n + 1) - f1 n|.toNat

end

end A117910.P13768068194949796809

namespace A117910

/-- `A097992(abs(Δ[n*(1-(n+1)%3)]))` -/
def P13768068194949796809.Spec : Prop :=
  ∀ n, P13768068194949796809.a n = A117910 n

end A117910

/-! ## A117910.P8790737744580232937

`A011960(A222257(n+1))`
-/

namespace A117910.P8790737744580232937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A222257 (n + 1)).toNat

end

end A117910.P8790737744580232937

namespace A117910

/-- `A011960(A222257(n+1))` -/
def P8790737744580232937.Spec : Prop :=
  ∀ n, P8790737744580232937.a n = A117910 n

end A117910

/-! ## A117910.P8349743901526519213

`A103221(n*A100063(n+2))`
-/

namespace A117910.P8349743901526519213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((n : ℤ) * A100063 (n + 2)).toNat

end

end A117910.P8349743901526519213

namespace A117910

/-- `A103221(n*A100063(n+2))` -/
def P8349743901526519213.Spec : Prop :=
  ∀ n, P8349743901526519213.a n = A117910 n

end A117910

/-! ## A117910.P6158145763089765373

`A008615(A244477(A244477(n+1))+n+1)`
-/

namespace A117910.P6158145763089765373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A244477 (A244477 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A117910.P6158145763089765373

namespace A117910

/-- `A008615(A244477(A244477(n+1))+n+1)` -/
def P6158145763089765373.Spec : Prop :=
  ∀ n, P6158145763089765373.a n = A117910 n

end A117910

/-! ## A117910.P15002744084277846046

`A106466(A008620(2*n)-Δ[A008620(2*n)])`
-/

namespace A117910.P15002744084277846046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A008620 (2 * n) - (f1 (n + 1) - f1 n)).toNat

end

end A117910.P15002744084277846046

namespace A117910

/-- `A106466(A008620(2*n)-Δ[A008620(2*n)])` -/
def P15002744084277846046.Spec : Prop :=
  ∀ n, P15002744084277846046.a n = A117910 n

end A117910

/-! ## A117910.P9138330664051232268

`A008679(2*n)+A008679(2*n+1)*A022003(n+1)`
-/

namespace A117910.P9138330664051232268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (2 * n) + A008679 (2 * n + 1) * A022003 (n + 1)

end

end A117910.P9138330664051232268

namespace A117910

/-- `A008679(2*n)+A008679(2*n+1)*A022003(n+1)` -/
def P9138330664051232268.Spec : Prop :=
  ∀ n, P9138330664051232268.a n = A117910 n

end A117910

/-! ## A117910.P14640473894096075499

`A008615((n+2)*A083039(2*n+1))`
-/

namespace A117910.P14640473894096075499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((n + 2 : ℤ) * A083039 (2 * n + 1)).toNat

end

end A117910.P14640473894096075499

namespace A117910

/-- `A008615((n+2)*A083039(2*n+1))` -/
def P14640473894096075499.Spec : Prop :=
  ∀ n, P14640473894096075499.a n = A117910 n

end A117910

/-! ## A117910.P6105079855648944914

`A110656(Δ[A004773(n+1)]*A004773(n+1))`
-/

namespace A117910.P6105079855648944914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 ((f1 (n + 1) - f1 n) * A004773 (n + 1)).toNat

end

end A117910.P6105079855648944914

namespace A117910

/-- `A110656(Δ[A004773(n+1)]*A004773(n+1))` -/
def P6105079855648944914.Spec : Prop :=
  ∀ n, P6105079855648944914.a n = A117910 n

end A117910

/-! ## A117910.P7008501601311928966

`A008616(A101544(2*n+1)+1)`
-/

namespace A117910.P7008501601311928966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A101544 (2 * n + 1) + 1).toNat

end

end A117910.P7008501601311928966

namespace A117910

/-- `A008616(A101544(2*n+1)+1)` -/
def P7008501601311928966.Spec : Prop :=
  ∀ n, P7008501601311928966.a n = A117910 n

end A117910

/-! ## A117910.P7575389391498371720

`A004526(A212831(A052928(A212831(A225055(n+2)))))`
-/

namespace A117910.P7575389391498371720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A212831 (A052928 (A212831 (A225055 (n + 2)).toNat).toNat).toNat).toNat

end

end A117910.P7575389391498371720

namespace A117910

/-- `A004526(A212831(A052928(A212831(A225055(n+2)))))` -/
def P7575389391498371720.Spec : Prop :=
  ∀ n, P7575389391498371720.a n = A117910 n

end A117910

/-!
# A117912: Lynch-Bell numbers whose digits are all even.

The programs for A117912, there is no canonical definition to state claims against.
-/

/-! ## A117912.P8136150313016150545

`record[A001613(A116960(n+1))]`
-/

namespace A117912.P8136150313016150545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A116960 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117912.P8136150313016150545

/-! ## A117912.P6963805558376182409

`∩[A014263(n+1), A115569(n+1)]`
-/

namespace A117912.P6963805558376182409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117912.P6963805558376182409

/-! ## A117912.P16991874528654315271

`∩[A045926(n+1), A115569(n+1)]`
-/

namespace A117912.P16991874528654315271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117912.P16991874528654315271

/-! ## A117912.P4115863259734993251

`∩[A115569(n+1), A353007(n+1)]`
-/

namespace A117912.P4115863259734993251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117912.P4115863259734993251

/-!
# A117913: Lynch-Bell numbers whose digits are all odd.

The programs for A117913, there is no canonical definition to state claims against.
-/

/-! ## A117913.P15741598464579088400

`record[A093178(A115569(n+1))]`
-/

namespace A117913.P15741598464579088400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A115569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117913.P15741598464579088400

/-! ## A117913.P12553005455993932773

`filter[A115569(n+1), A000035(#)]`
-/

namespace A117913.P12553005455993932773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A117913.P12553005455993932773

/-! ## A117913.P16100375809468185969

`∩[A029740(n+1), A034838(n+1)]`
-/

namespace A117913.P16100375809468185969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117913.P16100375809468185969

/-! ## A117913.P6516878145274290712

`∩[A014261(n+1), A115569(n+1)]`
-/

namespace A117913.P6516878145274290712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117913.P6516878145274290712

/-! ## A117913.P4553595353526141034

`∩[A115569(n+1), A333369(n+1)]`
-/

namespace A117913.P4553595353526141034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117913.P4553595353526141034

/-!
# A117916: a(1) = 4; a(n) is smallest semiprime > 3*a(n-1).

The programs for A117916, there is no canonical definition to state claims against.
-/

/-! ## A117916.P9058697975374706456

`A214206(A155600(n))`
-/

namespace A117916.P9058697975374706456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214206 (A155600 n).toNat

end

end A117916.P9058697975374706456

/-!
# A117917: a(n) = 3*a(n-1) + a(n-2) + n.

The programs for A117917, the canonical program `A117917.P6875446155045098703` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117917 has offset 0).

The definition of A117917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)+n` (program `A117917.P6875446155045098703`, by `A117917.P6875446155045098703.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117917.P6875446155045098703

`3*a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117917

/-- `3*a(n-1)+a(n-2)+n` -/
def P6875446155045098703.Spec : Prop :=
  ∀ n, (P6875446155045098703.a n : ℤ) = A117917 n

theorem P6875446155045098703.correct : P6875446155045098703.Spec := by
  intro n
  simp only [A117917]

end A117917

/-! ## A117917.P6551002404042000789

`4*a(n-1)-(a(n-1)-a(n-2)-n)` with `a(0)=1, a(1)=4`
-/

namespace A117917.P6551002404042000789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - (a (n - 1) - a (n - 2) - (n : ℤ))

end

end A117917.P6551002404042000789

namespace A117917

/-- `4*a(n-1)-(a(n-1)-a(n-2)-n)` -/
def P6551002404042000789.Spec : Prop :=
  ∀ n, P6551002404042000789.a n = A117917 n

end A117917

/-! ## A117917.P12898647709257441942

`a(n-1)+a(n-1)+a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=4`
-/

namespace A117917.P12898647709257441942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 2) + n)))

end

end A117917.P12898647709257441942

namespace A117917

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-2)+n` -/
def P12898647709257441942.Spec : Prop :=
  ∀ n, (P12898647709257441942.a n : ℤ) = A117917 n

theorem P12898647709257441942.correct : P12898647709257441942.Spec := by
  intro n
  simp only [A117917, Nat.add_sub_cancel, A117917.P12898647709257441942.a, A117917.P6875446155045098703.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A117917

/-! ## A117917.P7981862144902861377

`∑[A052924(n)+∑[A006190(n)]]`
-/

namespace A117917.P7981862144902861377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117917.P7981862144902861377

namespace A117917

/-- `∑[A052924(n)+∑[A006190(n)]]` -/
def P7981862144902861377.Spec : Prop :=
  ∀ n, P7981862144902861377.a n = A117917 n

end A117917

/-! ## A117917.P16740493019290070298

`A006190(n+1)+∑[∑[A006190(n)]]`
-/

namespace A117917.P16740493019290070298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117917.P16740493019290070298

namespace A117917

/-- `A006190(n+1)+∑[∑[A006190(n)]]` -/
def P16740493019290070298.Spec : Prop :=
  ∀ n, P16740493019290070298.a n = A117917 n

end A117917

/-!
# A117918: Difference row triangle of the Pell sequence.

The programs for A117918, there is no canonical definition to state claims against.
-/

/-! ## A117918.P18338243124147668031

`A228405(comp[∑[n]])`
-/

namespace A117918.P18338243124147668031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A117918.P18338243124147668031

/-! ## A117918.P17452401241345560650

`A228405(A014132(n+1))-A000007(n+1)`
-/

namespace A117918.P17452401241345560650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A014132 (n + 1)).toNat - A000007 (n + 1)

end

end A117918.P17452401241345560650

/-! ## A117918.P1435015341009516093

`A228405(A014132(n+1)-1)+A228405(n)`
-/

namespace A117918.P1435015341009516093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A014132 (n + 1) - 1).toNat + A228405 n

end

end A117918.P1435015341009516093

/-! ## A117918.P5875388239144249093

`A228405(A014132(n+1))+n*A000007(n)`
-/

namespace A117918.P5875388239144249093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A014132 (n + 1)).toNat + (n : ℤ) * A000007 n

end

end A117918.P5875388239144249093

/-! ## A117918.P2727986146598030996

`A158416(2*n+1)*A228405(A014132(n+1))`
-/

namespace A117918.P2727986146598030996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (2 * n + 1) * A228405 (A014132 (n + 1)).toNat

end

end A117918.P2727986146598030996

/-! ## A117918.P7689157636650656718

`A228405(A014132(n+1))/A000040(n+2)%2`
-/

namespace A117918.P7689157636650656718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228405 (A014132 (n + 1)).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A117918.P7689157636650656718

/-! ## A117918.P3055100096812971008

`A228405(A014132(n+1)+A000007(n))+A000007(n)`
-/

namespace A117918.P3055100096812971008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 (A014132 (n + 1) + A000007 n).toNat + A000007 n

end

end A117918.P3055100096812971008

/-! ## A117918.P13419512864977409023

`A228405(A014132(n+1))%A052542(n+3)`
-/

namespace A117918.P13419512864977409023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228405 (A014132 (n + 1)).toNat) (A052542 (n + 3))

end

end A117918.P13419512864977409023

/-!
# A117919: Triangle read by rows: T(n, k) = 2^floor((k-1)/2)*binomial(n-1, k-1).

The programs for A117919, the canonical program `A117919.P6720816346911839698` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117919 has offset 1).

The definition of A117919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117919.P6720816346911839698

`A007318(n)*A016116(A002262(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A117919

/-- `A007318(n)*A016116(A002262(n))` -/
def P6720816346911839698.Spec : Prop :=
  ∀ n, P6720816346911839698.a n = A117919 (n + 1)

theorem P6720816346911839698.correct : P6720816346911839698.Spec := by
  intro n
  simp only [A117919, Nat.add_sub_cancel]

end A117919

/-! ## A117919.P1166816628815975904

`A013609(n)/A016116(A002260(n+1))`
-/

namespace A117919.P1166816628815975904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A016116 (A002260 (n + 1)).toNat : ℚ)

end

end A117919.P1166816628815975904

namespace A117919

/-- `A013609(n)/A016116(A002260(n+1))` -/
def P1166816628815975904.Spec : Prop :=
  ∀ n, P1166816628815975904.a n = (A117919 (n + 1) : ℚ)

end A117919

/-! ## A117919.P16172822671396426956

`A013609(n)/A016116(A002262(n)+1)`
-/

namespace A117919.P16172822671396426956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A016116 (A002262 n + 1).toNat : ℚ)

end

end A117919.P16172822671396426956

namespace A117919

/-- `A013609(n)/A016116(A002262(n)+1)` -/
def P16172822671396426956.Spec : Prop :=
  ∀ n, P16172822671396426956.a n = (A117919 (n + 1) : ℚ)

end A117919

/-! ## A117919.P744013752963522949

`A007318(n)*A016116(A002260(n+1)-1)`
-/

namespace A117919.P744013752963522949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016116 (A002260 (n + 1) - 1).toNat

end

end A117919.P744013752963522949

namespace A117919

/-- `A007318(n)*A016116(A002260(n+1)-1)` -/
def P744013752963522949.Spec : Prop :=
  ∀ n, P744013752963522949.a n = A117919 (n + 1)

end A117919

/-! ## A117919.P10038238658684733134

`A208906(n+1)+A208906(n+2)-A208521(n+2)`
-/

namespace A117919.P10038238658684733134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208906 (n + 1) + (A208906 (n + 2) - A208521 (n + 2))

end

end A117919.P10038238658684733134

namespace A117919

/-- `A208906(n+1)+A208906(n+2)-A208521(n+2)` -/
def P10038238658684733134.Spec : Prop :=
  ∀ n, P10038238658684733134.a n = A117919 (n + 1)

end A117919

/-! ## A117919.P12345923859648550503

`A133214(n)/A135837(n+1)`
-/

namespace A117919.P12345923859648550503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133214 n : ℚ) / (A135837 (n + 1) : ℚ)

end

end A117919.P12345923859648550503

namespace A117919

/-- `A133214(n)/A135837(n+1)` -/
def P12345923859648550503.Spec : Prop :=
  ∀ n, P12345923859648550503.a n = (A117919 (n + 1) : ℚ)

end A117919

/-! ## A117919.P10582480226366144799

`A007318(n)*A133388(A059268(n))`
-/

namespace A117919.P10582480226366144799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A133388 (A059268 n).toNat

end

end A117919.P10582480226366144799

namespace A117919

/-- `A007318(n)*A133388(A059268(n))` -/
def P10582480226366144799.Spec : Prop :=
  ∀ n, P10582480226366144799.a n = A117919 (n + 1)

end A117919

/-!
# A117920: Number of digits in the decimal expansion of the regular unit fractions 1/A003592.

The programs for A117920, there is no canonical definition to state claims against.
-/

/-! ## A117920.P7296102239797090939

`∑{digits}[A156703(n+1), A007318(A007318(#))]`
-/

namespace A117920.P7296102239797090939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 (A007318 x).toNat).sum

end

end A117920.P7296102239797090939

/-! ## A117920.P10661379497789850328

`A051903(A003592(n+2))`
-/

namespace A117920.P10661379497789850328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003592 (n + 2)).toNat

end

end A117920.P10661379497789850328

/-! ## A117920.P4800903219708863393

`A051903(A158911(n+2)+1)`
-/

namespace A117920.P4800903219708863393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A158911 (n + 2) + 1).toNat

end

end A117920.P4800903219708863393

/-! ## A117920.P1235674153466348465

`A051903(A178335(n+2)/7)`
-/

namespace A117920.P1235674153466348465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A178335 (n + 2) : ℚ) / 7)).toNat

end

end A117920.P1235674153466348465

/-! ## A117920.P7180106052055246067

`A051903(A033846(n+2)/10)`
-/

namespace A117920.P7180106052055246067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A033846 (n + 2) : ℚ) / 10)).toNat

end

end A117920.P7180106052055246067

/-! ## A117920.P15886275839135883783

`A051903(∑[A164768(n+1)]+1)`
-/

namespace A117920.P15886275839135883783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A117920.P15886275839135883783

/-! ## A117920.P4839305406530367813

`A324912(A164768(n+1)+A003592(n+1))`
-/

namespace A117920.P4839305406530367813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (A164768 (n + 1) + A003592 (n + 1)).toNat

end

end A117920.P4839305406530367813

/-! ## A117920.P5571444123646509877

`A051903(A178335(n+2))`
-/

namespace A117920.P5571444123646509877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A178335 (n + 2)).toNat

end

end A117920.P5571444123646509877

/-!
# A117921: Primes of the form (2^k - 1)^3 - 2.

The programs for A117921, there is no canonical definition to state claims against.
-/

/-! ## A117921.P15167616565540441211

`A098878(ceil(sqrt(A098844(2*n+5))))`
-/

namespace A117921.P15167616565540441211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098878 ⌈Real.sqrt (A098844 (2 * n + 5) : ℝ)⌉.toNat

end

end A117921.P15167616565540441211

/-!
# A117922: Inverse of A055265, assuming it is a permutation, as conjectured.

The programs for A117922, there is no canonical definition to state claims against.
-/

/-! ## A117922.P475100293736689415

`A055265(A117924(n+1))`
-/

namespace A117922.P475100293736689415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A117924 (n + 1)).toNat

end

end A117922.P475100293736689415

/-! ## A117922.P14692225500314428635

`A128280(A117924(n+1))-A033999(n)`
-/

namespace A117922.P14692225500314428635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (A117924 (n + 1)).toNat - A033999 n

end

end A117922.P14692225500314428635

/-! ## A117922.P11552556832203848387

`A128280(A117924(n+1))-A087960(n²)`
-/

namespace A117922.P11552556832203848387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (A117924 (n + 1)).toNat - A087960 (n ^ 2)

end

end A117922.P11552556832203848387

/-! ## A117922.P11305892374688979834

`A128280(A117924(n+1))-A009531(2*n+1)`
-/

namespace A117922.P11305892374688979834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (A117924 (n + 1)).toNat - A009531 (2 * n + 1)

end

end A117922.P11305892374688979834

/-! ## A117922.P11937791358477763585

`A282695(A117924(n+1))+A117924(A000027(n+1))`
-/

namespace A117922.P11937791358477763585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (A117924 (n + 1)).toNat + A117924 (A000027 (n + 1)).toNat

end

end A117922.P11937791358477763585

/-! ## A117922.P4230836292336661422

`A117924(A086526(n+1)/2)`
-/

namespace A117922.P4230836292336661422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (SequenceMachineLib.roundAway ((A086526 (n + 1) : ℚ) / 2)).toNat

end

end A117922.P4230836292336661422

/-! ## A117922.P17746972261136962500

`A117924(A282695(n+1)+n+1)`
-/

namespace A117922.P17746972261136962500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (A282695 (n + 1) + (n + 1 : ℤ)).toNat

end

end A117922.P17746972261136962500

/-! ## A117922.P4209004557574064019

`A117924(A128280(n+1)+A033999(n+1))`
-/

namespace A117922.P4209004557574064019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (A128280 (n + 1) + A033999 (n + 1)).toNat

end

end A117922.P4209004557574064019

/-! ## A117922.P9411818164261989756

`A117924(A128280(n+1)-A087960(2*n))`
-/

namespace A117922.P9411818164261989756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117924 (A128280 (n + 1) - A087960 (2 * n)).toNat

end

end A117922.P9411818164261989756

/-!
# A117923: A055265(A055265(n)).

The programs for A117923, there is no canonical definition to state claims against.
-/

/-! ## A117923.P12458415265997909530

`A055265(A055265(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117923.P12458415265997909530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A055265 (n + 1)).toNat

end

end A117923.P12458415265997909530

/-! ## A117923.P4315564498145914834

`A086526(A086526(n+1)/2)/2`
-/

namespace A117923.P4315564498145914834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086526 (SequenceMachineLib.roundAway ((A086526 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A117923.P4315564498145914834

/-! ## A117923.P8590815378046853705

`A055265(A128280(Δ[n²]-n)-(-1)^n)`
-/

namespace A117923.P8590815378046853705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (A128280 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (-1) ^ n).toNat

end

end A117923.P8590815378046853705

/-! ## A117923.P12727886491919905733

`-xor(1, -A128280(A282695(n+1)+1+n))`
-/

namespace A117923.P12727886491919905733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-A128280 (A282695 (n + 1) + 1 + (n : ℤ)).toNat)

end

end A117923.P12727886491919905733

/-! ## A117923.P12591958485108934796

`A128280(A128280(n+1)-(-1)^n)-(-1)^n`
-/

namespace A117923.P12591958485108934796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (A128280 (n + 1) - (-1) ^ n).toNat - (-1) ^ n

end

end A117923.P12591958485108934796

/-! ## A117923.P11666500988546334679

`A128280(A282695(n+1)+1+n)-A033999(n)`
-/

namespace A117923.P11666500988546334679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (A282695 (n + 1) + 1 + (n : ℤ)).toNat - A033999 n

end

end A117923.P11666500988546334679

/-! ## A117923.P6147215758408672265

`A128280(A282695(n+1)+1+n)-A062157(n+1)`
-/

namespace A117923.P6147215758408672265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128280 (A282695 (n + 1) + 1 + (n : ℤ)).toNat - A062157 (n + 1)

end

end A117923.P6147215758408672265

/-! ## A117923.P17403690539688335157

`A282695(A282695(n+1)+1+n)+A282695(n+1)+1+n`
-/

namespace A117923.P17403690539688335157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (A282695 (n + 1) + 1 + (n : ℤ)).toNat + (A282695 (n + 1) + 1 + (n : ℤ))

end

end A117923.P17403690539688335157

/-! ## A117923.P603362900131303894

`A282695(A282695(n+1)+1+n)+A014681(A128280(n+1))`
-/

namespace A117923.P603362900131303894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (A282695 (n + 1) + 1 + (n : ℤ)).toNat + A014681 (A128280 (n + 1)).toNat

end

end A117923.P603362900131303894

/-!
# A117924: A117922(A117922(n)).

The programs for A117924, there is no canonical definition to state claims against.
-/

/-! ## A117924.P7616628132539089015

`A117922(A117922(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A117924.P7616628132539089015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (A117922 (n + 1)).toNat

end

end A117924.P7616628132539089015

/-!
# A117925: Fixed points of A055265, A117922, A117923 and A117924.

The programs for A117925, there is no canonical definition to state claims against.
-/

/-! ## A117925.P11279223742199417131

`record[gcd(n+1, A055265(n+1))]`
-/

namespace A117925.P11279223742199417131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055265 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117925.P11279223742199417131

/-! ## A117925.P10785761717092904257

`eq[1, A282695(n+1)+1]+1`
-/

namespace A117925.P10785761717092904257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282695 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117925.P10785761717092904257

/-! ## A117925.P10378868620357896671

`eq[1, xor(n+1, A128280(n)+1)]`
-/

namespace A117925.P10378868620357896671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A128280 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117925.P10378868620357896671

/-! ## A117925.P18144205801500444327

`A055265(eq[n+1, A055265(n+1)]+1)`
-/

namespace A117925.P18144205801500444327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117925.P18144205801500444327

/-! ## A117925.P11296791678898738320

`A055265(record[n/(A055265(n+1)-n)]+1)`
-/

namespace A117925.P11296791678898738320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A055265 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055265 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A117925.P11296791678898738320

/-! ## A117925.P8406569833264677339

`eq[n+1, A117922(n+1)]+1`
-/

namespace A117925.P8406569833264677339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117925.P8406569833264677339

/-! ## A117925.P13374876092177820865

`A117922(record[(n+1)/(A117922(n+1)-n)])`
-/

namespace A117925.P13374876092177820865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A117922 (n + 1) - (n : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117922 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A117925.P13374876092177820865

/-!
# A117926: a(n) = n^floor(sqrt(n)).

The programs for A117926, the canonical program `A117926.P3350237855805283673` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117926 has offset 1).

The definition of A117926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^floor(sqrt(n+1))` (program `A117926.P3350237855805283673`, by `A117926.P3350237855805283673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117926.P3350237855805283673

`(n+1)^floor(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117926

/-- `(n+1)^floor(sqrt(n+1))` -/
def P3350237855805283673.Spec : Prop :=
  ∀ n, (P3350237855805283673.a n : ℤ) = A117926 (n + 1)

theorem P3350237855805283673.correct : P3350237855805283673.Spec := by
  intro n
  simp only [A117926, Nat.add_sub_cancel]

end A117926

/-! ## A117926.P7546499644840406748

`floor((n+1)^Δ[A022554(n)])`
-/

namespace A117926.P7546499644840406748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌋

end

end A117926.P7546499644840406748

namespace A117926

/-- `floor((n+1)^Δ[A022554(n)])` -/
def P7546499644840406748.Spec : Prop :=
  ∀ n, P7546499644840406748.a n = A117926 (n + 1)

end A117926

/-! ## A117926.P11449666833423907110

`floor((n+1)^(A003059(n+2)-1))`
-/

namespace A117926.P11449666833423907110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) ^ (A003059 (n + 2) - 1 : ℤ)⌋

end

end A117926.P11449666833423907110

namespace A117926

/-- `floor((n+1)^(A003059(n+2)-1))` -/
def P11449666833423907110.Spec : Prop :=
  ∀ n, P11449666833423907110.a n = A117926 (n + 1)

end A117926

/-! ## A117926.P12893870472022714565

`record[(n-C(2, n+1))^A000196(n)]`
-/

namespace A117926.P12893870472022714565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose 2 (n + 1) : ℤ) : ℚ) ^ (A000196 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117926.P12893870472022714565

namespace A117926

/-- `record[(n-C(2, n+1))^A000196(n)]` -/
def P12893870472022714565.Spec : Prop :=
  ∀ n, P12893870472022714565.a n = (A117926 (n + 1) : ℚ)

end A117926

/-! ## A117926.P4772376120682300956

`record[A123108(n)^A319514(n)]`
-/

namespace A117926.P4772376120682300956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 n : ℚ) ^ (A319514 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117926.P4772376120682300956

namespace A117926

/-- `record[A123108(n)^A319514(n)]` -/
def P4772376120682300956.Spec : Prop :=
  ∀ n, P4772376120682300956.a n = (A117926 (n + 1) : ℚ)

end A117926

/-! ## A117926.P1783535718771034628

`record[(n*A157928(n))^A000196(n)]`
-/

namespace A117926.P1783535718771034628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A157928 n : ℚ) ^ (A000196 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117926.P1783535718771034628

namespace A117926

/-- `record[(n*A157928(n))^A000196(n)]` -/
def P1783535718771034628.Spec : Prop :=
  ∀ n, P1783535718771034628.a n = (A117926 (n + 1) : ℚ)

end A117926

/-! ## A117926.P7372482974311011777

`sqrt((n+1)²^A000196(n+1))`
-/

namespace A117926.P7372482974311011777
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 1) ^ 2 : ℚ) ^ (A000196 (n + 1) : ℤ) : ℝ)

end

end A117926.P7372482974311011777

namespace A117926

/-- `sqrt((n+1)²^A000196(n+1))` -/
def P7372482974311011777.Spec : Prop :=
  ∀ n, P7372482974311011777.a n = (A117926 (n + 1) : ℝ)

end A117926

/-! ## A117926.P18036195551730186087

`record[A037213(n)^A255270(n)]`
-/

namespace A117926.P18036195551730186087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037213 n : ℚ) ^ (A255270 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117926.P18036195551730186087

namespace A117926

/-- `record[A037213(n)^A255270(n)]` -/
def P18036195551730186087.Spec : Prop :=
  ∀ n, P18036195551730186087.a n = (A117926 (n + 1) : ℚ)

end A117926

/-!
# A117927: a(n) = binomial(s(n), n) where s(n) = n-th semiprime.

The programs for A117927, the canonical program `A117927.P16314529741067916395` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117927 has offset 1).

The definition of A117927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117927.P16314529741067916395

`C(eq[2, ∑{e}[n, #]], n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117927

/-- `C(eq[2, ∑{e}[n, #]], n+1)` -/
def P16314529741067916395.Spec : Prop :=
  ∀ n, (P16314529741067916395.a n : ℤ) = A117927 (n + 1)

theorem P16314529741067916395.correct : P16314529741067916395.Spec := by
  intro n
  simp only [A117927, Nat.add_sub_cancel]

end A117927

/-! ## A117927.P16041834505747648347

`C(lt[(2-∑{e}[n, #])², 1], n+1)`
-/

namespace A117927.P16041834505747648347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n) (n + 1)

end

end A117927.P16041834505747648347

namespace A117927

/-- `C(lt[(2-∑{e}[n, #])², 1], n+1)` -/
def P16041834505747648347.Spec : Prop :=
  ∀ n, (P16041834505747648347.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P11937171635019128876

`C(A001358(n+1), n+1)`
-/

namespace A117927.P11937171635019128876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001358 (n + 1)).toNat (n + 1)

end

end A117927.P11937171635019128876

namespace A117927

/-- `C(A001358(n+1), n+1)` -/
def P11937171635019128876.Spec : Prop :=
  ∀ n, (P11937171635019128876.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P7927530035548968461

`C(A176540(n+2), n+1)`
-/

namespace A117927.P7927530035548968461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A176540 (n + 2)).toNat (n + 1)

end

end A117927.P7927530035548968461

namespace A117927

/-- `C(A176540(n+2), n+1)` -/
def P7927530035548968461.Spec : Prop :=
  ∀ n, (P7927530035548968461.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P931905878087554153

`C(eq[2, A284289(n)], n+1)`
-/

namespace A117927.P931905878087554153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) (n + 1)

end

end A117927.P931905878087554153

namespace A117927

/-- `C(eq[2, A284289(n)], n+1)` -/
def P931905878087554153.Spec : Prop :=
  ∀ n, (P931905878087554153.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P11226236889456410441

`C(sqrt(A074985(n+1)), n+1)`
-/

namespace A117927.P11226236889456410441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat (n + 1)

end

end A117927.P11226236889456410441

namespace A117927

/-- `C(sqrt(A074985(n+1)), n+1)` -/
def P11226236889456410441.Spec : Prop :=
  ∀ n, (P11226236889456410441.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P12041055832535108977

`C(A186621(n+1)+1, n+1)`
-/

namespace A117927.P12041055832535108977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A186621 (n + 1) + 1).toNat (n + 1)

end

end A117927.P12041055832535108977

namespace A117927

/-- `C(A186621(n+1)+1, n+1)` -/
def P12041055832535108977.Spec : Prop :=
  ∀ n, (P12041055832535108977.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P3450141858254305983

`C(A129767(2*(n+1)), n+1)`
-/

namespace A117927.P3450141858254305983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129767 (2 * (n + 1))).toNat (n + 1)

end

end A117927.P3450141858254305983

namespace A117927

/-- `C(A129767(2*(n+1)), n+1)` -/
def P3450141858254305983.Spec : Prop :=
  ∀ n, (P3450141858254305983.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P13692326772795928368

`C(eq[2, A001055(n+1)]+1, n+1)`
-/

namespace A117927.P13692326772795928368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) (n + 1)

end

end A117927.P13692326772795928368

namespace A117927

/-- `C(eq[2, A001055(n+1)]+1, n+1)` -/
def P13692326772795928368.Spec : Prop :=
  ∀ n, (P13692326772795928368.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P6357365689735503349

`C(eq[2, A001222(n+1)]+1, n+1)`
-/

namespace A117927.P6357365689735503349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) (n + 1)

end

end A117927.P6357365689735503349

namespace A117927

/-- `C(eq[2, A001222(n+1)]+1, n+1)` -/
def P6357365689735503349.Spec : Prop :=
  ∀ n, (P6357365689735503349.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P2130025719924012632

`C(eq[2, A050379(n+1)]+1, n+1)`
-/

namespace A117927.P2130025719924012632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) (n + 1)

end

end A117927.P2130025719924012632

namespace A117927

/-- `C(eq[2, A050379(n+1)]+1, n+1)` -/
def P2130025719924012632.Spec : Prop :=
  ∀ n, (P2130025719924012632.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P9675599779580137120

`C(A100493(n+1)-(n+1), n+1)`
-/

namespace A117927.P9675599779580137120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100493 (n + 1) - (n + 1 : ℤ)).toNat (n + 1)

end

end A117927.P9675599779580137120

namespace A117927

/-- `C(A100493(n+1)-(n+1), n+1)` -/
def P9675599779580137120.Spec : Prop :=
  ∀ n, (P9675599779580137120.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P9748729003663680349

`C(eq[3, A001222(A004277(n))], n+1)`
-/

namespace A117927.P9748729003663680349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) (n + 1)

end

end A117927.P9748729003663680349

namespace A117927

/-- `C(eq[3, A001222(A004277(n))], n+1)` -/
def P9748729003663680349.Spec : Prop :=
  ∀ n, (P9748729003663680349.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P8085225061233106246

`C(A088707(n+1)-1, A175708(n+1))`
-/

namespace A117927.P8085225061233106246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088707 (n + 1) - 1).toNat (A175708 (n + 1)).toNat

end

end A117927.P8085225061233106246

namespace A117927

/-- `C(A088707(n+1)-1, A175708(n+1))` -/
def P8085225061233106246.Spec : Prop :=
  ∀ n, (P8085225061233106246.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P3715461355919104559

`C(A075818(n+1)/2, A175708(n+1))`
-/

namespace A117927.P3715461355919104559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat (A175708 (n + 1)).toNat

end

end A117927.P3715461355919104559

namespace A117927

/-- `C(A075818(n+1)/2, A175708(n+1))` -/
def P3715461355919104559.Spec : Prop :=
  ∀ n, (P3715461355919104559.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P7356515832889229441

`C(eq[2, A008481(n+1)]+1, A175708(n+1))`
-/

namespace A117927.P7356515832889229441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) (A175708 (n + 1)).toNat

end

end A117927.P7356515832889229441

namespace A117927

/-- `C(eq[2, A008481(n+1)]+1, A175708(n+1))` -/
def P7356515832889229441.Spec : Prop :=
  ∀ n, (P7356515832889229441.a n : ℤ) = A117927 (n + 1)

end A117927

/-! ## A117927.P15016030259670897327

`C(eq[2, A033273(n+1)]+1, A175708(n+1))`
-/

namespace A117927.P15016030259670897327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) (A175708 (n + 1)).toNat

end

end A117927.P15016030259670897327

namespace A117927

/-- `C(eq[2, A033273(n+1)]+1, A175708(n+1))` -/
def P15016030259670897327.Spec : Prop :=
  ∀ n, (P15016030259670897327.a n : ℤ) = A117927 (n + 1)

end A117927

/-!
# A117928: Triangle read by rows: T(n,k) = smallest prime of the form (k+1)*prime(n) + k*i for some i>0, 0<=k

The programs for A117928, there is no canonical definition to state claims against.
-/

/-! ## A117928.P3757468171862621129

`A005145(A241016(n+1)%A124462(2*n+1))`
-/

namespace A117928.P3757468171862621129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (Int.tmod (A241016 (n + 1)) (A124462 (2 * n + 1))).toNat

end

end A117928.P3757468171862621129

/-! ## A117928.P1216947873883588939

`p?[A007605(record[A208759(n+1)])]`
-/

namespace A117928.P1216947873883588939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117928.P1216947873883588939

/-!
# A117929: Number of partitions of n into 2 distinct primes.

The programs for A117929, there is no canonical definition to state claims against.
-/

/-! ## A117929.P15860525946888116698

`floor(A073610(n+1)/2)`
-/

namespace A117929.P15860525946888116698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073610 (n + 1) : ℚ) / 2⌋

end

end A117929.P15860525946888116698

/-! ## A117929.P6754336715683400543

`A004526(A073610(n+1))`
-/

namespace A117929.P6754336715683400543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073610 (n + 1)).toNat

end

end A117929.P6754336715683400543

/-! ## A117929.P15448026320034291352

`A002265(2*A073610(n+1))`
-/

namespace A117929.P15448026320034291352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A073610 (n + 1)).toNat

end

end A117929.P15448026320034291352

/-! ## A117929.P4978468358176519456

`A004526(n)-A295630(n+1)`
-/

namespace A117929.P4978468358176519456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A295630 (n + 1)

end

end A117929.P4978468358176519456

/-! ## A117929.P17408343124785334598

`A065033(A073610(n+1)+1)-1`
-/

namespace A117929.P17408343124785334598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A073610 (n + 1) + 1).toNat - 1

end

end A117929.P17408343124785334598

/-! ## A117929.P4475928796932543356

`A110654(A073610(n+1)+1)-1`
-/

namespace A117929.P4475928796932543356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A073610 (n + 1) + 1).toNat - 1

end

end A117929.P4475928796932543356

/-! ## A117929.P14213569885719748748

`A123108(A073610(n+1)+2)-1`
-/

namespace A117929.P14213569885719748748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A073610 (n + 1) + 2).toNat - 1

end

end A117929.P14213569885719748748

/-! ## A117929.P8309996757571603346

`A073610(n+1)-A061358(n+1)`
-/

namespace A117929.P8309996757571603346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (n + 1) - A061358 (n + 1)

end

end A117929.P8309996757571603346

/-! ## A117929.P7720166157924736243

`A294602(n+1)-A302480(n+1)`
-/

namespace A117929.P7720166157924736243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294602 (n + 1) - A302480 (n + 1)

end

end A117929.P7720166157924736243

/-! ## A117929.P3420991636814273233

`A004526(A000720(n+1)-A062602(n+1))`
-/

namespace A117929.P3420991636814273233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000720 (n + 1) - A062602 (n + 1)).toNat

end

end A117929.P3420991636814273233

/-! ## A117929.P13998169565353084046

`A004526(A098983(n+1)-A282318(n+1))`
-/

namespace A117929.P13998169565353084046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A098983 (n + 1) - A282318 (n + 1)).toNat

end

end A117929.P13998169565353084046

/-! ## A117929.P14765415883119441517

`A004526(∑[A010051(n+1)]-A062602(n+1))`
-/

namespace A117929.P14765415883119441517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j - A062602 (n + 1)).toNat

end

end A117929.P14765415883119441517

/-! ## A117929.P8306383139707656774

`A002265(A073610(n+1)+A073610(n+1)+1)`
-/

namespace A117929.P8306383139707656774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A073610 (n + 1) + (A073610 (n + 1) + 1)).toNat

end

end A117929.P8306383139707656774

/-! ## A117929.P14478759316386634560

`A065033(A073610(n+1)+n)%A065033(n)`
-/

namespace A117929.P14478759316386634560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A073610 (n + 1) + (n : ℤ)).toNat) (A065033 n)

end

end A117929.P14478759316386634560

/-!
# A117930: Number of partitions of 2n into factorial parts (0! not allowed, i.e., only one kind of 1 can be a part). Also number of partitions of 2n+1 into factorial parts.

The programs for A117930, there is no canonical definition to state claims against.
-/

/-! ## A117930.P2629812528446375274

`A064986(2*n)`
-/

namespace A117930.P2629812528446375274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (2 * n)

end

end A117930.P2629812528446375274

/-! ## A117930.P11769867934005600866

`record[A064986(round(xor(1, n)/2))]`
-/

namespace A117930.P11769867934005600866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P11769867934005600866

/-! ## A117930.P16488631023538708391

`record[A064986(n)/(-1)^n]`
-/

namespace A117930.P16488631023538708391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064986 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P16488631023538708391

/-! ## A117930.P13041901660277929938

`record[A064986((n-1)^(n%2))]`
-/

namespace A117930.P13041901660277929938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P13041901660277929938

/-! ## A117930.P72973454740785439

`record[A064986(A106608(n))]`
-/

namespace A117930.P72973454740785439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A106608 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P72973454740785439

/-! ## A117930.P4431816804087459878

`record[A064986(n-A289508(n+1))]`
-/

namespace A117930.P4431816804087459878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 ((n : ℤ) - A289508 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P4431816804087459878

/-! ## A117930.P13689957506141867161

`record[A064986(A000265(n+1))]`
-/

namespace A117930.P13689957506141867161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P13689957506141867161

/-! ## A117930.P1128472452688819199

`record[A064986(A076934(n+1))]`
-/

namespace A117930.P1128472452688819199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A076934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P1128472452688819199

/-! ## A117930.P2123601565109701388

`record[A064986(n-A049084(n+1))]`
-/

namespace A117930.P2123601565109701388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 ((n : ℤ) - A049084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P2123601565109701388

/-! ## A117930.P8246330038253752824

`record[A064986(n-A055396(n+1))]`
-/

namespace A117930.P8246330038253752824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 ((n : ℤ) - A055396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P8246330038253752824

/-! ## A117930.P10965918524640880515

`A064985(2*n+1)-A064985(2*n)`
-/

namespace A117930.P10965918524640880515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064985 (2 * n + 1) - A064985 (2 * n)

end

end A117930.P10965918524640880515

/-! ## A117930.P6408718441990132457

`record[A064986(A061395(n+1))]`
-/

namespace A117930.P6408718441990132457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A061395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P6408718441990132457

/-! ## A117930.P13463587607488780035

`record[A064986(A066328(n+1)+1)]`
-/

namespace A117930.P13463587607488780035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A066328 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P13463587607488780035

/-! ## A117930.P11854129492964550270

`record[A064986(A302039(n+1)+1)]`
-/

namespace A117930.P11854129492964550270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A302039 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P11854129492964550270

/-! ## A117930.P5512724108653019654

`record[A064986(A066328(n+1))]`
-/

namespace A117930.P5512724108653019654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A066328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P5512724108653019654

/-! ## A117930.P3696371810677040406

`record[A064986(A302039(n+1))]`
-/

namespace A117930.P3696371810677040406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A302039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P3696371810677040406

/-! ## A117930.P15769075217892840867

`record[A064986(A008611(n))]`
-/

namespace A117930.P15769075217892840867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P15769075217892840867

/-! ## A117930.P11628704028322763199

`record[A064986(A277322(n+1))]`
-/

namespace A117930.P11628704028322763199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A277322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P11628704028322763199

/-! ## A117930.P12634987507635481727

`record[A064986(A263297(n+1))]`
-/

namespace A117930.P12634987507635481727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A263297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P12634987507635481727

/-! ## A117930.P6377324936008994722

`record[A064986(A289508(n+1))]`
-/

namespace A117930.P6377324936008994722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064986 (A289508 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117930.P6377324936008994722

/-!
# A117933: A bisection of A117931.

The programs for A117933, there is no canonical definition to state claims against.
-/

/-! ## A117933.P2035200253081342631

`A117931(2*n+1)`
-/

namespace A117933.P2035200253081342631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117931 (2 * n + 1)

end

end A117933.P2035200253081342631

/-! ## A117933.P4911217438657985661

`record[A117931(n^(n%2))]`
-/

namespace A117933.P4911217438657985661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117931 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117933.P4911217438657985661

/-! ## A117933.P1274127084443417821

`record[A117931(n+1)-char[1]]`
-/

namespace A117933.P1274127084443417821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117931 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117933.P1274127084443417821

/-! ## A117933.P15942890817234643613

`A117931(record[xor(1, n)])+char[38]`
-/

namespace A117933.P15942890817234643613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A117933.P15942890817234643613

/-! ## A117933.P15149864076057930996

`record[A117931(comp[A287222(n)])]`
-/

namespace A117933.P15149864076057930996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287222 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117931 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117933.P15149864076057930996

/-!
# A117934: Perfect powers (A001597) that are close, that is, between consecutive squares.

The programs for A117934, there is no canonical definition to state claims against.
-/

/-! ## A117934.P15619751994111390928

`A032742(lcm(2, A113495(n+5)))`
-/

namespace A117934.P15619751994111390928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.lcm 2 (A113495 (n + 5)))

end

end A117934.P15619751994111390928

/-!
# A117935: Triangle, row terms converge to the Pell sequence.

The programs for A117935, there is no canonical definition to state claims against.
-/

/-! ## A117935.P18222847688843386319

`A120397(A110291(n))`
-/

namespace A117935.P18222847688843386319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (A110291 n).toNat

end

end A117935.P18222847688843386319

/-! ## A117935.P2040523678229722822

`A000005(2^(n-C(∑[char[∑[n]]], 2))^A276837(n))`
-/

namespace A117935.P2040523678229722822
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)) ^ (A276837 n : ℤ))).toNat

end

end A117935.P2040523678229722822

/-! ## A117935.P12715690831271483342

`A000005(A059268(n)^A276837(n))`
-/

namespace A117935.P12715690831271483342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A276837 n : ℤ))).toNat

end

end A117935.P12715690831271483342

/-! ## A117935.P16791617930328684075

`A029931(A059268(n)^A276837(n))`
-/

namespace A117935.P16791617930328684075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A276837 n : ℤ))).toNat

end

end A117935.P16791617930328684075

/-! ## A117935.P18412597400335145585

`A000005(A140995(n)^A276837(n))`
-/

namespace A117935.P18412597400335145585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A140995 n : ℚ) ^ (A276837 n : ℤ))).toNat

end

end A117935.P18412597400335145585

/-!
# A117938: Triangle, columns generated from Lucas Polynomials.

The programs for A117938, there is no canonical definition to state claims against.
-/

/-! ## A117938.P8697125209489664718

`A292630(n)+A025466(A038212(n))`
-/

namespace A117938.P8697125209489664718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 n + A025466 (A038212 n).toNat

end

end A117938.P8697125209489664718

/-! ## A117938.P16273233258510834444

`A292630(n)+A060576(A156953(n))`
-/

namespace A117938.P16273233258510834444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 n + A060576 (A156953 n).toNat

end

end A117938.P16273233258510834444

/-! ## A117938.P11030246634035559859

`A359075(A118981(n+1)%A075956(n))`
-/

namespace A117938.P11030246634035559859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359075 (Int.tmod (A118981 (n + 1)) (A075956 n)).toNat

end

end A117938.P11030246634035559859

/-! ## A117938.P12888331003074805014

`or(A118981(n+1), A307377(A307390(n+1)))`
-/

namespace A117938.P12888331003074805014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118981 (n + 1)) (A307377 (A307390 (n + 1)).toNat)

end

end A117938.P12888331003074805014

/-! ## A117938.P5509889776601570353

`A118981(n+1)+A025466(A319501(2*n+1))`
-/

namespace A117938.P5509889776601570353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118981 (n + 1) + A025466 (A319501 (2 * n + 1)).toNat

end

end A117938.P5509889776601570353

/-!
# A117939: Triangle related to powers of 3 partitions of n.

The programs for A117939, the canonical program `A117939.P7458379872733415547` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117939 has offset 0).

The definition of A117939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117939.P7458379872733415547

`A049347(A014473(n))*A059151(A025581(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A117939

/-- `A049347(A014473(n))*A059151(A025581(n))` -/
def P7458379872733415547.Spec : Prop :=
  ∀ n, P7458379872733415547.a n = A117939 n

theorem P7458379872733415547.correct : P7458379872733415547.Spec := by
  intro n
  simp only [A117939]

end A117939

/-! ## A117939.P17366860811517436192

`A059151(A025581(n))*A102283(A007318(n))`
-/

namespace A117939.P17366860811517436192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 (A025581 n).toNat * A102283 (A007318 n).toNat

end

end A117939.P17366860811517436192

namespace A117939

/-- `A059151(A025581(n))*A102283(A007318(n))` -/
def P17366860811517436192.Spec : Prop :=
  ∀ n, P17366860811517436192.a n = A117939 n

end A117939

/-! ## A117939.P4850392418265270846

`A059151(A025581(n))*A106510(A007318(n)+3)`
-/

namespace A117939.P4850392418265270846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 (A025581 n).toNat * A106510 (A007318 n + 3).toNat

end

end A117939.P4850392418265270846

namespace A117939

/-- `A059151(A025581(n))*A106510(A007318(n)+3)` -/
def P4850392418265270846.Spec : Prop :=
  ∀ n, P4850392418265270846.a n = A117939 n

end A117939

/-! ## A117939.P4480218946968860554

`(A010872(A007318(n)+1)-1)*A059151(A025581(n))`
-/

namespace A117939.P4480218946968860554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010872 (A007318 n + 1).toNat - 1) * A059151 (A025581 n).toNat

end

end A117939.P4480218946968860554

namespace A117939

/-- `(A010872(A007318(n)+1)-1)*A059151(A025581(n))` -/
def P4480218946968860554.Spec : Prop :=
  ∀ n, P4480218946968860554.a n = A117939 n

end A117939

/-! ## A117939.P6440943473146035593

`A059151(A004736(n+1)-1)*A102283(A007318(n))`
-/

namespace A117939.P6440943473146035593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 (A004736 (n + 1) - 1).toNat * A102283 (A007318 n).toNat

end

end A117939.P6440943473146035593

namespace A117939

/-- `A059151(A004736(n+1)-1)*A102283(A007318(n))` -/
def P6440943473146035593.Spec : Prop :=
  ∀ n, P6440943473146035593.a n = A117939 n

end A117939

/-! ## A117939.P11918690306822428004

`(1-A080425(A007318(n)-1))*A059151(A025581(n))`
-/

namespace A117939.P11918690306822428004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080425 (A007318 n - 1).toNat) * A059151 (A025581 n).toNat

end

end A117939.P11918690306822428004

namespace A117939

/-- `(1-A080425(A007318(n)-1))*A059151(A025581(n))` -/
def P11918690306822428004.Spec : Prop :=
  ∀ n, P11918690306822428004.a n = A117939 n

end A117939

/-! ## A117939.P5686659967214710959

`A059151(A025581(n))*A102283(A028313(n))`
-/

namespace A117939.P5686659967214710959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 (A025581 n).toNat * A102283 (A028313 n).toNat

end

end A117939.P5686659967214710959

namespace A117939

/-- `A059151(A025581(n))*A102283(A028313(n))` -/
def P5686659967214710959.Spec : Prop :=
  ∀ n, P5686659967214710959.a n = A117939 n

end A117939

/-! ## A117939.P11964570901880341900

`A059151(A025581(n))*A128834(2*A007318(n))`
-/

namespace A117939.P11964570901880341900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059151 (A025581 n).toNat * A128834 (2 * A007318 n).toNat

end

end A117939.P11964570901880341900

namespace A117939

/-- `A059151(A025581(n))*A128834(2*A007318(n))` -/
def P11964570901880341900.Spec : Prop :=
  ∀ n, P11964570901880341900.a n = A117939 n

end A117939

/-!
# A117940: a(0)=1, thereafter a(3n) = a(3n+1)/3 = a(n), a(3n+2)=0.

The programs for A117940, the canonical program `A117940.P5397637875485440855` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117940 has offset 0).

The definition of A117940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117940.P5397637875485440855

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=3, a(2)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117940

/-- `a(floor(n/3))*a(n%3)` -/
def P5397637875485440855.Spec : Prop :=
  ∀ n, (P5397637875485440855.a n : ℤ) = A117940 n

theorem P5397637875485440855.correct : P5397637875485440855.Spec := by
  intro n
  simp only [A117940]

end A117940

/-! ## A117940.P15200737128452201886

`A117980(2*n)`
-/

namespace A117940.P15200737128452201886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 (2 * n)

end

end A117940.P15200737128452201886

namespace A117940

/-- `A117980(2*n)` -/
def P15200737128452201886.Spec : Prop :=
  ∀ n, P15200737128452201886.a n = A117940 n

end A117940

/-! ## A117940.P6594210949463078998

`A151668(n)^log2(3)`
-/

namespace A117940.P6594210949463078998
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151668 n : ℝ) ^ (Real.logb 2 (3 : ℝ))

end

end A117940.P6594210949463078998

namespace A117940

/-- `A151668(n)^log2(3)` -/
def P6594210949463078998.Spec : Prop :=
  ∀ n, P6594210949463078998.a n = (A117940 n : ℝ)

end A117940

/-! ## A117940.P14407424851330965566

`A006046(A151668(n))`
-/

namespace A117940.P14407424851330965566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A151668 n).toNat

end

end A117940.P14407424851330965566

namespace A117940

/-- `A006046(A151668(n))` -/
def P14407424851330965566.Spec : Prop :=
  ∀ n, P14407424851330965566.a n = A117940 n

end A117940

/-! ## A117940.P1016428017895587275

`A209939(A038574(n))`
-/

namespace A117940.P1016428017895587275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209939 (A038574 n).toNat

end

end A117940.P1016428017895587275

namespace A117940

/-- `A209939(A038574(n))` -/
def P1016428017895587275.Spec : Prop :=
  ∀ n, P1016428017895587275.a n = A117940 n

end A117940

/-! ## A117940.P3468777900318208307

`A259346(A006047(n))`
-/

namespace A117940.P3468777900318208307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A006047 n).toNat

end

end A117940.P3468777900318208307

namespace A117940

/-- `A259346(A006047(n))` -/
def P3468777900318208307.Spec : Prop :=
  ∀ n, P3468777900318208307.a n = A117940 n

end A117940

/-! ## A117940.P10994793604271676838

`A209939(A308364(n))`
-/

namespace A117940.P10994793604271676838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209939 (A308364 n).toNat

end

end A117940.P10994793604271676838

namespace A117940

/-- `A209939(A308364(n))` -/
def P10994793604271676838.Spec : Prop :=
  ∀ n, P10994793604271676838.a n = A117940 n

end A117940

/-! ## A117940.P2218123018613700671

`A005836(A151668(n)+1)`
-/

namespace A117940.P2218123018613700671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A151668 n + 1).toNat

end

end A117940.P2218123018613700671

namespace A117940

/-- `A005836(A151668(n)+1)` -/
def P2218123018613700671.Spec : Prop :=
  ∀ n, P2218123018613700671.a n = A117940 n

end A117940

/-! ## A117940.P4539343505455270381

`A082575(A151668(n)+1)`
-/

namespace A117940.P4539343505455270381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082575 (A151668 n + 1).toNat

end

end A117940.P4539343505455270381

namespace A117940

/-- `A082575(A151668(n)+1)` -/
def P4539343505455270381.Spec : Prop :=
  ∀ n, P4539343505455270381.a n = A117940 n

end A117940

/-! ## A117940.P2584035224234934240

`A039966(n)*A120879(n)`
-/

namespace A117940.P2584035224234934240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A120879 n

end

end A117940.P2584035224234934240

namespace A117940

/-- `A039966(n)*A120879(n)` -/
def P2584035224234934240.Spec : Prop :=
  ∀ n, P2584035224234934240.a n = A117940 n

end A117940

/-! ## A117940.P713381699950498720

`A006047(2*n)*A039966(n)`
-/

namespace A117940.P713381699950498720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (2 * n) * A039966 n

end

end A117940.P713381699950498720

namespace A117940

/-- `A006047(2*n)*A039966(n)` -/
def P713381699950498720.Spec : Prop :=
  ∀ n, P713381699950498720.a n = A117940 n

end A117940

/-! ## A117940.P4560977603497515426

`A006047(2*n)*A088917(2*n)`
-/

namespace A117940.P4560977603497515426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (2 * n) * A088917 (2 * n)

end

end A117940.P4560977603497515426

namespace A117940

/-- `A006047(2*n)*A088917(2*n)` -/
def P4560977603497515426.Spec : Prop :=
  ∀ n, P4560977603497515426.a n = A117940 n

end A117940

/-! ## A117940.P7798077690672619474

`A088917(2*n)*A125562(2*n)`
-/

namespace A117940.P7798077690672619474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (2 * n) * A125562 (2 * n)

end

end A117940.P7798077690672619474

namespace A117940

/-- `A088917(2*n)*A125562(2*n)` -/
def P7798077690672619474.Spec : Prop :=
  ∀ n, P7798077690672619474.a n = A117940 n

end A117940

/-! ## A117940.P192134960740109234

`A084681(A120879(n))`
-/

namespace A117940.P192134960740109234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A120879 n).toNat

end

end A117940.P192134960740109234

namespace A117940

/-- `A084681(A120879(n))` -/
def P192134960740109234.Spec : Prop :=
  ∀ n, P192134960740109234.a n = A117940 n

end A117940

/-! ## A117940.P8530776301140636142

`A084681(A006047(2*n))`
-/

namespace A117940.P8530776301140636142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A006047 (2 * n)).toNat

end

end A117940.P8530776301140636142

namespace A117940

/-- `A084681(A006047(2*n))` -/
def P8530776301140636142.Spec : Prop :=
  ∀ n, P8530776301140636142.a n = A117940 n

end A117940

/-! ## A117940.P16157378800435708774

`A259346(A120879(2*n))`
-/

namespace A117940.P16157378800435708774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A120879 (2 * n)).toNat

end

end A117940.P16157378800435708774

namespace A117940

/-- `A259346(A120879(2*n))` -/
def P16157378800435708774.Spec : Prop :=
  ∀ n, P16157378800435708774.a n = A117940 n

end A117940

/-! ## A117940.P3972460943631779018

`A151665(A023717(n))`
-/

namespace A117940.P3972460943631779018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 (A023717 n).toNat

end

end A117940.P3972460943631779018

namespace A117940

/-- `A151665(A023717(n))` -/
def P3972460943631779018.Spec : Prop :=
  ∀ n, P3972460943631779018.a n = A117940 n

end A117940

/-! ## A117940.P12410637090890958989

`A151665(eq[0, A292373(n)])`
-/

namespace A117940.P12410637090890958989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117940.P12410637090890958989

namespace A117940

/-- `A151665(eq[0, A292373(n)])` -/
def P12410637090890958989.Spec : Prop :=
  ∀ n, P12410637090890958989.a n = A117940 n

end A117940

/-! ## A117940.P6093785346957637166

`A151665(A023713(n+1))`
-/

namespace A117940.P6093785346957637166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 (A023713 (n + 1)).toNat

end

end A117940.P6093785346957637166

namespace A117940

/-- `A151665(A023713(n+1))` -/
def P6093785346957637166.Spec : Prop :=
  ∀ n, P6093785346957637166.a n = A117940 n

end A117940

/-! ## A117940.P12692201234577581929

`A151665(eq[0, A160382(n)])`
-/

namespace A117940.P12692201234577581929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117940.P12692201234577581929

namespace A117940

/-- `A151665(eq[0, A160382(n)])` -/
def P12692201234577581929.Spec : Prop :=
  ∀ n, P12692201234577581929.a n = A117940 n

end A117940

/-!
# A117942: a(n) = a(3n) = -a(3n+1) = -a(3n+2)/2.

The programs for A117942, the canonical program `A117942.P14324521327660345243` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117942 has offset 0).

The definition of A117942 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, A081603, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117942.P14324521327660345243

`2^A081603(n)*(-1)^(A062756(n)+A081603(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117942

/-- `2^A081603(n)*(-1)^(A062756(n)+A081603(n))` -/
def P14324521327660345243.Spec : Prop :=
  ∀ n, P14324521327660345243.a n = (A117942 n : ℚ)

end A117942

/-! ## A117942.P2290038237415897295

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A117942.P2290038237415897295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat * a (n % 3)

end

end A117942.P2290038237415897295

namespace A117942

/-- `a(floor(n/3))*a(n%3)` -/
def P2290038237415897295.Spec : Prop :=
  ∀ n, P2290038237415897295.a n = A117942 n

end A117942

/-! ## A117942.P6394812588390101581

`A125131(A006047(n))`
-/

namespace A117942.P6394812588390101581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (A006047 n).toNat

end

end A117942.P6394812588390101581

namespace A117942

/-- `A125131(A006047(n))` -/
def P6394812588390101581.Spec : Prop :=
  ∀ n, P6394812588390101581.a n = A117942 n

end A117942

/-! ## A117942.P282630183476703424

`∏{digits}[A007089(n), 2-A081606(#+1)]`
-/

namespace A117942.P282630183476703424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - A081606 (x + 1)).prod

end

end A117942.P282630183476703424

namespace A117942

/-- `∏{digits}[A007089(n), 2-A081606(#+1)]` -/
def P282630183476703424.Spec : Prop :=
  ∀ n, P282630183476703424.a n = A117942 n

end A117942

/-! ## A117942.P9881001407589726352

`∏{digits}[A007089(n), A132139(A007448(#))-#]`
-/

namespace A117942.P9881001407589726352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A132139 (A007448 x).toNat - (x : ℤ)).prod

end

end A117942.P9881001407589726352

namespace A117942

/-- `∏{digits}[A007089(n), A132139(A007448(#))-#]` -/
def P9881001407589726352.Spec : Prop :=
  ∀ n, P9881001407589726352.a n = A117942 n

end A117942

/-! ## A117942.P11979996153100288600

`A113421(A120879(n))`
-/

namespace A117942.P11979996153100288600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113421 (A120879 n).toNat

end

end A117942.P11979996153100288600

namespace A117942

/-- `A113421(A120879(n))` -/
def P11979996153100288600.Spec : Prop :=
  ∀ n, P11979996153100288600.a n = A117942 n

end A117942

/-! ## A117942.P4088495704665683005

`∏{e}[A101278(n), 1-A000040(#)]`
-/

namespace A117942.P4088495704665683005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A000040 (Nat.factorization (f1 n).natAbs p))

end

end A117942.P4088495704665683005

namespace A117942

/-- `∏{e}[A101278(n), 1-A000040(#)]` -/
def P4088495704665683005.Spec : Prop :=
  ∀ n, P4088495704665683005.a n = A117942 n

end A117942

/-! ## A117942.P3688009461557556132

`∏{e}[A101278(n), 1-A095320(#)]`
-/

namespace A117942.P3688009461557556132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A095320 (Nat.factorization (f1 n).natAbs p))

end

end A117942.P3688009461557556132

namespace A117942

/-- `∏{e}[A101278(n), 1-A095320(#)]` -/
def P3688009461557556132.Spec : Prop :=
  ∀ n, P3688009461557556132.a n = A117942 n

end A117942

/-! ## A117942.P15430978117492131925

`∏{e}[A101278(n), #-A101278(#)]`
-/

namespace A117942.P15430978117492131925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - A101278 (Nat.factorization (f1 n).natAbs p))

end

end A117942.P15430978117492131925

namespace A117942

/-- `∏{e}[A101278(n), #-A101278(#)]` -/
def P15430978117492131925.Spec : Prop :=
  ∀ n, P15430978117492131925.a n = A117942 n

end A117942

/-! ## A117942.P8648394584234303508

`A257101(A101278(n))`
-/

namespace A117942.P8648394584234303508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257101 (A101278 n).toNat

end

end A117942.P8648394584234303508

namespace A117942

/-- `A257101(A101278(n))` -/
def P8648394584234303508.Spec : Prop :=
  ∀ n, P8648394584234303508.a n = A117942 n

end A117942

/-!
# A117943: a(1) = 0, a(2) = 1; a(3n) = a(n); if every third term (a(3), a(6), a(9), ...) is deleted, this gives back the original sequence.

The programs for A117943, the canonical program `A117943.P17059869879955634528` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117943 has offset 1).

The definition of A117943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117943.P6886546541492759364

`char[A178931(n+1)-1]`
-/

namespace A117943.P6886546541492759364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178931 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A117943.P6886546541492759364

namespace A117943

/-- `char[A178931(n+1)-1]` -/
def P6886546541492759364.Spec : Prop :=
  ∀ n, (P6886546541492759364.a n : ℤ) = A117943 (n + 1)

end A117943

/-! ## A117943.P17329697842018074390

`1-char[A183213(n+1)-1]`
-/

namespace A117943.P17329697842018074390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183213 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A117943.P17329697842018074390

namespace A117943

/-- `1-char[A183213(n+1)-1]` -/
def P17329697842018074390.Spec : Prop :=
  ∀ n, P17329697842018074390.a n = A117943 (n + 1)

end A117943

/-! ## A117943.P10538301057256189052

`Δ[A071996(floor(n-n/(n+1))+1)]`
-/

namespace A117943.P10538301057256189052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117943.P10538301057256189052

namespace A117943

/-- `Δ[A071996(floor(n-n/(n+1))+1)]` -/
def P10538301057256189052.Spec : Prop :=
  ∀ n, P10538301057256189052.a n = A117943 (n + 1)

end A117943

/-! ## A117943.P10447751978175273842

`xor(A189215(n+1), A189222(n+1))`
-/

namespace A117943.P10447751978175273842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A189215 (n + 1)) (A189222 (n + 1))

end

end A117943.P10447751978175273842

namespace A117943

/-- `xor(A189215(n+1), A189222(n+1))` -/
def P10447751978175273842.Spec : Prop :=
  ∀ n, P10447751978175273842.a n = A117943 (n + 1)

end A117943

/-! ## A117943.P6253033955590738617

`A000040(Δ[a(A071996(n))+n])%2` with `a(0)=1`
-/

namespace A117943.P6253033955590738617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A071996 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 2

end

end A117943.P6253033955590738617

namespace A117943

/-- `A000040(Δ[a(A071996(n))+n])%2` -/
def P6253033955590738617.Spec : Prop :=
  ∀ n, P6253033955590738617.a n = A117943 (n + 1)

end A117943

/-! ## A117943.P13108226728577396785

`A071996(n+1)-A071996(A000007(n)+n)`
-/

namespace A117943.P13108226728577396785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071996 (n + 1) - A071996 (A000007 n + (n : ℤ)).toNat

end

end A117943.P13108226728577396785

namespace A117943

/-- `A071996(n+1)-A071996(A000007(n)+n)` -/
def P13108226728577396785.Spec : Prop :=
  ∀ n, P13108226728577396785.a n = A117943 (n + 1)

end A117943

/-! ## A117943.P17059869879955634528

`a(A025480(A131452(n)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117943

/-- `a(A025480(A131452(n)))` -/
def P17059869879955634528.Spec : Prop :=
  ∀ n, (P17059869879955634528.a n : ℤ) = A117943 (n + 1)

theorem P17059869879955634528.correct : P17059869879955634528.Spec := by
  intro n
  simp only [A117943, Nat.add_sub_cancel]

end A117943

/-!
# A117944: Triangle related to powers of 3 partitions of n.

The programs for A117944, the canonical program `A117944.P8296871185845388962` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117944 has offset 0).

The definition of A117944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117944.P12031193751532251490

`abs(A117945(n))`
-/

namespace A117944.P12031193751532251490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117945 n|

end

end A117944.P12031193751532251490

namespace A117944

/-- `abs(A117945(n))` -/
def P12031193751532251490.Spec : Prop :=
  ∀ n, P12031193751532251490.a n = A117944 n

end A117944

/-! ## A117944.P8296871185845388962

`A117939(n)%2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A117944

/-- `A117939(n)%2` -/
def P8296871185845388962.Spec : Prop :=
  ∀ n, P8296871185845388962.a n = A117944 n

theorem P8296871185845388962.correct : P8296871185845388962.Spec := by
  intro n
  simp only [A117944]

end A117944

/-! ## A117944.P14609967961989593107

`and(1, A117941(n))`
-/

namespace A117944.P14609967961989593107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117941 n)

end

end A117944.P14609967961989593107

namespace A117944

/-- `and(1, A117941(n))` -/
def P14609967961989593107.Spec : Prop :=
  ∀ n, P14609967961989593107.a n = A117944 n

end A117944

/-! ## A117944.P14971949447032316087

`A000035(A117939(n)²)`
-/

namespace A117944.P14971949447032316087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A117939 n ^ 2).toNat

end

end A117944.P14971949447032316087

namespace A117944

/-- `A000035(A117939(n)²)` -/
def P14971949447032316087.Spec : Prop :=
  ∀ n, P14971949447032316087.a n = A117944 n

end A117944

/-! ## A117944.P12401578988754260111

`A000035(A117939(n)^2)`
-/

namespace A117944.P12401578988754260111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A117939 n ^ 2).toNat

end

end A117944.P12401578988754260111

namespace A117944

/-- `A000035(A117939(n)^2)` -/
def P12401578988754260111.Spec : Prop :=
  ∀ n, P12401578988754260111.a n = A117944 n

end A117944

/-! ## A117944.P12287277866152140668

`A000045(and(1, A117939(n)))`
-/

namespace A117944.P12287277866152140668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (A117939 n)).toNat

end

end A117944.P12287277866152140668

namespace A117944

/-- `A000045(and(1, A117939(n)))` -/
def P12287277866152140668.Spec : Prop :=
  ∀ n, P12287277866152140668.a n = A117944 n

end A117944

/-! ## A117944.P11397169219472679636

`A000196(and(1, A117939(n)))`
-/

namespace A117944.P11397169219472679636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.land 1 (A117939 n)).toNat

end

end A117944.P11397169219472679636

namespace A117944

/-- `A000196(and(1, A117939(n)))` -/
def P11397169219472679636.Spec : Prop :=
  ∀ n, P11397169219472679636.a n = A117944 n

end A117944

/-! ## A117944.P712998174098413100

`A000292(and(1, A117939(n)))`
-/

namespace A117944.P712998174098413100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.land 1 (A117939 n)).toNat

end

end A117944.P712998174098413100

namespace A117944

/-- `A000292(and(1, A117939(n)))` -/
def P712998174098413100.Spec : Prop :=
  ∀ n, P712998174098413100.a n = A117944 n

end A117944

/-! ## A117944.P9589718995171809775

`A117946(and(1, A117939(n)))`
-/

namespace A117944.P9589718995171809775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117946 (Int.land 1 (A117939 n)).toNat

end

end A117944.P9589718995171809775

namespace A117944

/-- `A117946(and(1, A117939(n)))` -/
def P9589718995171809775.Spec : Prop :=
  ∀ n, P9589718995171809775.a n = A117944 n

end A117944

/-! ## A117944.P17135621428408114580

`A117568(n)*A117945(n)`
-/

namespace A117944.P17135621428408114580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A117945 n

end

end A117944.P17135621428408114580

namespace A117944

/-- `A117568(n)*A117945(n)` -/
def P17135621428408114580.Spec : Prop :=
  ∀ n, P17135621428408114580.a n = A117944 n

end A117944

/-! ## A117944.P6591894762349061704

`A117945(n)*A369736(n)`
-/

namespace A117944.P6591894762349061704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117945 n * A369736 n

end

end A117944.P6591894762349061704

namespace A117944

/-- `A117945(n)*A369736(n)` -/
def P6591894762349061704.Spec : Prop :=
  ∀ n, P6591894762349061704.a n = A117944 n

end A117944

/-! ## A117944.P9234059393309215692

`gcd(A000038(n), A117945(n))`
-/

namespace A117944.P9234059393309215692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A117945 n)

end

end A117944.P9234059393309215692

namespace A117944

/-- `gcd(A000038(n), A117945(n))` -/
def P9234059393309215692.Spec : Prop :=
  ∀ n, (P9234059393309215692.a n : ℤ) = A117944 n

end A117944

/-! ## A117944.P2538478804790824143

`lcm(A005131(n), A117945(n))`
-/

namespace A117944.P2538478804790824143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005131 n) (A117945 n)

end

end A117944.P2538478804790824143

namespace A117944

/-- `lcm(A005131(n), A117945(n))` -/
def P2538478804790824143.Spec : Prop :=
  ∀ n, (P2538478804790824143.a n : ℤ) = A117944 n

end A117944

/-! ## A117944.P6427289868761685520

`and(A031178(n), A117945(n))`
-/

namespace A117944.P6427289868761685520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031178 n) (A117945 n)

end

end A117944.P6427289868761685520

namespace A117944

/-- `and(A031178(n), A117945(n))` -/
def P6427289868761685520.Spec : Prop :=
  ∀ n, P6427289868761685520.a n = A117944 n

end A117944

/-! ## A117944.P7145045030921805783

`and(A058281(n), A117945(n))`
-/

namespace A117944.P7145045030921805783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058281 n) (A117945 n)

end

end A117944.P7145045030921805783

namespace A117944

/-- `and(A058281(n), A117945(n))` -/
def P7145045030921805783.Spec : Prop :=
  ∀ n, P7145045030921805783.a n = A117944 n

end A117944

/-! ## A117944.P14542790468468239045

`and(A060097(n), A117945(n))`
-/

namespace A117944.P14542790468468239045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060097 n) (A117945 n)

end

end A117944.P14542790468468239045

namespace A117944

/-- `and(A060097(n), A117945(n))` -/
def P14542790468468239045.Spec : Prop :=
  ∀ n, P14542790468468239045.a n = A117944 n

end A117944

/-! ## A117944.P14814593697532457442

`and(A060576(n), A117939(n))`
-/

namespace A117944.P14814593697532457442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A117939 n)

end

end A117944.P14814593697532457442

namespace A117944

/-- `and(A060576(n), A117939(n))` -/
def P14814593697532457442.Spec : Prop :=
  ∀ n, P14814593697532457442.a n = A117944 n

end A117944

/-! ## A117944.P12696512751512636243

`and(A060576(n), A117945(n))`
-/

namespace A117944.P12696512751512636243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A117945 n)

end

end A117944.P12696512751512636243

namespace A117944

/-- `and(A060576(n), A117945(n))` -/
def P12696512751512636243.Spec : Prop :=
  ∀ n, P12696512751512636243.a n = A117944 n

end A117944

/-! ## A117944.P6759603056805195673

`and(A071022(n), A117939(n))`
-/

namespace A117944.P6759603056805195673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071022 n) (A117939 n)

end

end A117944.P6759603056805195673

namespace A117944

/-- `and(A071022(n), A117939(n))` -/
def P6759603056805195673.Spec : Prop :=
  ∀ n, P6759603056805195673.a n = A117944 n

end A117944

/-! ## A117944.P13843402756422324647

`and(A071023(n), A117939(n))`
-/

namespace A117944.P13843402756422324647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071023 n) (A117939 n)

end

end A117944.P13843402756422324647

namespace A117944

/-- `and(A071023(n), A117939(n))` -/
def P13843402756422324647.Spec : Prop :=
  ∀ n, P13843402756422324647.a n = A117944 n

end A117944

/-!
# A117945: Triangle related to powers of 3 partitions of n.

The programs for A117945, the canonical program `A117945.P3427762021949423667` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117945 has offset 0).

The definition of A117945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117945.P554373288449921289

`A117941(n)%2`
-/

namespace A117945.P554373288449921289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117941 n) 2

end

end A117945.P554373288449921289

namespace A117945

/-- `A117941(n)%2` -/
def P554373288449921289.Spec : Prop :=
  ∀ n, P554373288449921289.a n = A117945 n

end A117945

/-! ## A117945.P3427762021949423667

`(A109187(n)+1)%3-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A117945

/-- `(A109187(n)+1)%3-1` -/
def P3427762021949423667.Spec : Prop :=
  ∀ n, P3427762021949423667.a n = A117945 n

theorem P3427762021949423667.correct : P3427762021949423667.Spec := by
  intro n
  simp only [A117945]

end A117945

/-! ## A117945.P13478721194320876682

`A117568(n)*A117944(n)`
-/

namespace A117945.P13478721194320876682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A117944 n

end

end A117945.P13478721194320876682

namespace A117945

/-- `A117568(n)*A117944(n)` -/
def P13478721194320876682.Spec : Prop :=
  ∀ n, P13478721194320876682.a n = A117945 n

end A117945

/-! ## A117945.P9474505833082655767

`A117944(n)*A369736(n)`
-/

namespace A117945.P9474505833082655767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117944 n * A369736 n

end

end A117945.P9474505833082655767

namespace A117945

/-- `A117944(n)*A369736(n)` -/
def P9474505833082655767.Spec : Prop :=
  ∀ n, P9474505833082655767.a n = A117945 n

end A117945

/-! ## A117945.P8515232705234708416

`A117944(n)*A130194(n+1)`
-/

namespace A117945.P8515232705234708416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117944 n * A130194 (n + 1)

end

end A117945.P8515232705234708416

namespace A117945

/-- `A117944(n)*A130194(n+1)` -/
def P8515232705234708416.Spec : Prop :=
  ∀ n, P8515232705234708416.a n = A117945 n

end A117945

/-! ## A117945.P5118918222685499979

`A056594(A025581(n))*A117944(n)`
-/

namespace A117945.P5118918222685499979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A025581 n).toNat * A117944 n

end

end A117945.P5118918222685499979

namespace A117945

/-- `A056594(A025581(n))*A117944(n)` -/
def P5118918222685499979.Spec : Prop :=
  ∀ n, P5118918222685499979.a n = A117945 n

end A117945

/-! ## A117945.P2295301032018322113

`A034947(A004736(n+1))*A117944(n)`
-/

namespace A117945.P2295301032018322113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A004736 (n + 1)).toNat * A117944 n

end

end A117945.P2295301032018322113

namespace A117945

/-- `A034947(A004736(n+1))*A117944(n)` -/
def P2295301032018322113.Spec : Prop :=
  ∀ n, P2295301032018322113.a n = A117945 n

end A117945

/-! ## A117945.P5149610643974221656

`A034947(A155151(n+1))*A117944(n)`
-/

namespace A117945.P5149610643974221656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A155151 (n + 1)).toNat * A117944 n

end

end A117945.P5149610643974221656

namespace A117945

/-- `A034947(A155151(n+1))*A117944(n)` -/
def P5149610643974221656.Spec : Prop :=
  ∀ n, P5149610643974221656.a n = A117945 n

end A117945

/-! ## A117945.P15353259894275713615

`A008683(A130330(n))*A117944(n)`
-/

namespace A117945.P15353259894275713615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A130330 n).toNat * A117944 n

end

end A117945.P15353259894275713615

namespace A117945

/-- `A008683(A130330(n))*A117944(n)` -/
def P15353259894275713615.Spec : Prop :=
  ∀ n, P15353259894275713615.a n = A117945 n

end A117945

/-! ## A117945.P14880033931220492261

`A008683(A130330(n)+1-A117944(n))`
-/

namespace A117945.P14880033931220492261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A130330 n + (1 - A117944 n)).toNat

end

end A117945.P14880033931220492261

namespace A117945

/-- `A008683(A130330(n)+1-A117944(n))` -/
def P14880033931220492261.Spec : Prop :=
  ∀ n, P14880033931220492261.a n = A117945 n

end A117945

/-! ## A117945.P10506418083813756480

`A008683(1-(A117944(n)-A130330(n)))`
-/

namespace A117945.P10506418083813756480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (1 - (A117944 n - A130330 n)).toNat

end

end A117945.P10506418083813756480

namespace A117945

/-- `A008683(1-(A117944(n)-A130330(n)))` -/
def P10506418083813756480.Spec : Prop :=
  ∀ n, P10506418083813756480.a n = A117945 n

end A117945

/-! ## A117945.P7679830630834684251

`xor(A117944(n), A120854(n))-A120854(n)`
-/

namespace A117945.P7679830630834684251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A117944 n) (A120854 n) - A120854 n

end

end A117945.P7679830630834684251

namespace A117945

/-- `xor(A117944(n), A120854(n))-A120854(n)` -/
def P7679830630834684251.Spec : Prop :=
  ∀ n, P7679830630834684251.a n = A117945 n

end A117945

/-! ## A117945.P16830563507417311436

`A106470(n*A117944(n))*A117944(n)`
-/

namespace A117945.P16830563507417311436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 ((n : ℤ) * A117944 n).toNat * A117944 n

end

end A117945.P16830563507417311436

namespace A117945

/-- `A106470(n*A117944(n))*A117944(n)` -/
def P16830563507417311436.Spec : Prop :=
  ∀ n, P16830563507417311436.a n = A117945 n

end A117945

/-!
# A117946: a(3n)=0, a(3n+1)/a(1)=a(3n+2)/a(2)=A059151(n).

The programs for A117946, the canonical program `A117946.P16806305034114280741` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117946 has offset 0).

The definition of A117946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117946.P16806305034114280741

`A102283(n)*A120880(A064429(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117946

/-- `A102283(n)*A120880(A064429(n))` -/
def P16806305034114280741.Spec : Prop :=
  ∀ n, P16806305034114280741.a n = A117946 n

theorem P16806305034114280741.correct : P16806305034114280741.Spec := by
  intro n
  simp only [A117946]

end A117946

/-! ## A117946.P14822630325918244378

`A102283(n)*A120880(A244477(n+1))`
-/

namespace A117946.P14822630325918244378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A120880 (A244477 (n + 1)).toNat

end

end A117946.P14822630325918244378

namespace A117946

/-- `A102283(n)*A120880(A244477(n+1))` -/
def P14822630325918244378.Spec : Prop :=
  ∀ n, P14822630325918244378.a n = A117946 n

end A117946

/-! ## A117946.P6210582046105239135

`A102283(n)*A120880(A102283(n)+n)`
-/

namespace A117946.P6210582046105239135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A120880 (A102283 n + (n : ℤ)).toNat

end

end A117946.P6210582046105239135

namespace A117946

/-- `A102283(n)*A120880(A102283(n)+n)` -/
def P6210582046105239135.Spec : Prop :=
  ∀ n, P6210582046105239135.a n = A117946 n

end A117946

/-! ## A117946.P5825382384589406988

`A117939(∑[n]+1)%(n+1)`
-/

namespace A117946.P5825382384589406988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (n + 1 : ℤ)

end

end A117946.P5825382384589406988

namespace A117946

/-- `A117939(∑[n]+1)%(n+1)` -/
def P5825382384589406988.Spec : Prop :=
  ∀ n, P5825382384589406988.a n = A117946 n

end A117946

/-! ## A117946.P2977705270807984834

`A117939(∑[n]+1)-A000038(n)`
-/

namespace A117946.P2977705270807984834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117939 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A000038 n

end

end A117946.P2977705270807984834

namespace A117946

/-- `A117939(∑[n]+1)-A000038(n)` -/
def P2977705270807984834.Spec : Prop :=
  ∀ n, P2977705270807984834.a n = A117946 n

end A117946

/-! ## A117946.P3532762803925966552

`A057427(n)*A117939(∑[n]+1)`
-/

namespace A117946.P3532762803925966552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A117939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117946.P3532762803925966552

namespace A117946

/-- `A057427(n)*A117939(∑[n]+1)` -/
def P3532762803925966552.Spec : Prop :=
  ∀ n, P3532762803925966552.a n = A117946 n

end A117946

/-! ## A117946.P2228496947102856321

`A057428(n)²*A117939(∑[n]+1)`
-/

namespace A117946.P2228496947102856321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A117939 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A117946.P2228496947102856321

namespace A117946

/-- `A057428(n)²*A117939(∑[n]+1)` -/
def P2228496947102856321.Spec : Prop :=
  ∀ n, P2228496947102856321.a n = A117946 n

end A117946

/-! ## A117946.P3018636960810974908

`floor(atan(n+1))*A117939(A000124(n))`
-/

namespace A117946.P3018636960810974908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ * A117939 (A000124 n).toNat

end

end A117946.P3018636960810974908

namespace A117946

/-- `floor(atan(n+1))*A117939(A000124(n))` -/
def P3018636960810974908.Spec : Prop :=
  ∀ n, P3018636960810974908.a n = A117946 n

end A117946

/-! ## A117946.P8795734659038368102

`and(1, A000040(n+1))*A117939(A000124(n))`
-/

namespace A117946.P8795734659038368102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A117939 (A000124 n).toNat

end

end A117946.P8795734659038368102

namespace A117946

/-- `and(1, A000040(n+1))*A117939(A000124(n))` -/
def P8795734659038368102.Spec : Prop :=
  ∀ n, P8795734659038368102.a n = A117946 n

end A117946

/-!
# A117947: T(n,k) = L(C(n,k)/3) where L(j/p) is the Legendre symbol of j and p.

The programs for A117947, the canonical program `A117947.P4958322561129453974` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117947 has offset 0).

The definition of A117947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117947.P14026960120030940286

`round(sin(A083093(n)²))`
-/

namespace A117947.P14026960120030940286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A083093 n ^ 2 : ℝ))

end

end A117947.P14026960120030940286

namespace A117947

/-- `round(sin(A083093(n)²))` -/
def P14026960120030940286.Spec : Prop :=
  ∀ n, P14026960120030940286.a n = A117947 n

end A117947

/-! ## A117947.P10182582358923630279

`1-A153491(n)%3`
-/

namespace A117947.P10182582358923630279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A153491 n) 3

end

end A117947.P10182582358923630279

namespace A117947

/-- `1-A153491(n)%3` -/
def P10182582358923630279.Spec : Prop :=
  ∀ n, P10182582358923630279.a n = A117947 n

end A117947

/-! ## A117947.P17480356783607924655

`round(tanh(tan(dr(A007318(n)))))`
-/

namespace A117947.P17480356783607924655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (Real.tan (SequenceMachineLib.digitalRoot (A007318 n) : ℝ)))

end

end A117947.P17480356783607924655

namespace A117947

/-- `round(tanh(tan(dr(A007318(n)))))` -/
def P17480356783607924655.Spec : Prop :=
  ∀ n, P17480356783607924655.a n = A117947 n

end A117947

/-! ## A117947.P11528721385989282649

`round(sin((A026907(n)%3)²))`
-/

namespace A117947.P11528721385989282649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Int.tmod (A026907 n) 3 ^ 2 : ℝ))

end

end A117947.P11528721385989282649

namespace A117947

/-- `round(sin((A026907(n)%3)²))` -/
def P11528721385989282649.Spec : Prop :=
  ∀ n, P11528721385989282649.a n = A117947 n

end A117947

/-! ## A117947.P1674547165899209132

`round(sin((A093645(n)%3)²))`
-/

namespace A117947.P1674547165899209132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Int.tmod (A093645 n) 3 ^ 2 : ℝ))

end

end A117947.P1674547165899209132

namespace A117947

/-- `round(sin((A093645(n)%3)²))` -/
def P1674547165899209132.Spec : Prop :=
  ∀ n, P1674547165899209132.a n = A117947 n

end A117947

/-! ## A117947.P4068013692130980717

`(A013611(n)+1)%3-1`
-/

namespace A117947.P4068013692130980717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013611 n + 1) 3 - 1

end

end A117947.P4068013692130980717

namespace A117947

/-- `(A013611(n)+1)%3-1` -/
def P4068013692130980717.Spec : Prop :=
  ∀ n, P4068013692130980717.a n = A117947 n

end A117947

/-! ## A117947.P7234225965696650037

`(A028313(n)+1)%3-1`
-/

namespace A117947.P7234225965696650037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028313 n + 1) 3 - 1

end

end A117947.P7234225965696650037

namespace A117947

/-- `(A028313(n)+1)%3-1` -/
def P7234225965696650037.Spec : Prop :=
  ∀ n, P7234225965696650037.a n = A117947 n

end A117947

/-! ## A117947.P5161650961295183970

`1-(A028326(n)+1)%3`
-/

namespace A117947.P5161650961295183970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A028326 n + 1) 3

end

end A117947.P5161650961295183970

namespace A117947

/-- `1-(A028326(n)+1)%3` -/
def P5161650961295183970.Spec : Prop :=
  ∀ n, P5161650961295183970.a n = A117947 n

end A117947

/-! ## A117947.P12813617127011082046

`(A007318(char[1]+n)+1)%3-1`
-/

namespace A117947.P12813617127011082046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 ((if ∃ j, f1 j = n then 1 else 0) + n) + 1) 3 - 1

end

end A117947.P12813617127011082046

namespace A117947

/-- `(A007318(char[1]+n)+1)%3-1` -/
def P12813617127011082046.Spec : Prop :=
  ∀ n, P12813617127011082046.a n = A117947 n

end A117947

/-! ## A117947.P4958322561129453974

`A102283(A095145(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117947

/-- `A102283(A095145(n))` -/
def P4958322561129453974.Spec : Prop :=
  ∀ n, P4958322561129453974.a n = A117947 n

theorem P4958322561129453974.correct : P4958322561129453974.Spec := by
  intro n
  simp only [A117947]

end A117947

/-! ## A117947.P11491897195325964970

`A102283(A096145(n))`
-/

namespace A117947.P11491897195325964970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A096145 n).toNat

end

end A117947.P11491897195325964970

namespace A117947

/-- `A102283(A096145(n))` -/
def P11491897195325964970.Spec : Prop :=
  ∀ n, P11491897195325964970.a n = A117947 n

end A117947

/-! ## A117947.P16858472040989056339

`A090044(n)-A083093(n)`
-/

namespace A117947.P16858472040989056339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090044 n - A083093 n

end

end A117947.P16858472040989056339

namespace A117947

/-- `A090044(n)-A083093(n)` -/
def P16858472040989056339.Spec : Prop :=
  ∀ n, P16858472040989056339.a n = A117947 n

end A117947

/-! ## A117947.P7329361588722262269

`(A027466(n)+1)%3-1`
-/

namespace A117947.P7329361588722262269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027466 n + 1) 3 - 1

end

end A117947.P7329361588722262269

namespace A117947

/-- `(A027466(n)+1)%3-1` -/
def P7329361588722262269.Spec : Prop :=
  ∀ n, P7329361588722262269.a n = A117947 n

end A117947

/-! ## A117947.P12427317427499944475

`(A038303(n)+1)%3-1`
-/

namespace A117947.P12427317427499944475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038303 n + 1) 3 - 1

end

end A117947.P12427317427499944475

namespace A117947

/-- `(A038303(n)+1)%3-1` -/
def P12427317427499944475.Spec : Prop :=
  ∀ n, P12427317427499944475.a n = A117947 n

end A117947

/-! ## A117947.P7837665622261863159

`(A038306(n)+1)%3-1`
-/

namespace A117947.P7837665622261863159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038306 n + 1) 3 - 1

end

end A117947.P7837665622261863159

namespace A117947

/-- `(A038306(n)+1)%3-1` -/
def P7837665622261863159.Spec : Prop :=
  ∀ n, P7837665622261863159.a n = A117947 n

end A117947

/-! ## A117947.P12531413936078942360

`(A038312(n)+1)%3-1`
-/

namespace A117947.P12531413936078942360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038312 n + 1) 3 - 1

end

end A117947.P12531413936078942360

namespace A117947

/-- `(A038312(n)+1)%3-1` -/
def P12531413936078942360.Spec : Prop :=
  ∀ n, P12531413936078942360.a n = A117947 n

end A117947

/-! ## A117947.P2863168760119358149

`A084091(A131061(n))`
-/

namespace A117947.P2863168760119358149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A131061 n).toNat

end

end A117947.P2863168760119358149

namespace A117947

/-- `A084091(A131061(n))` -/
def P2863168760119358149.Spec : Prop :=
  ∀ n, P2863168760119358149.a n = A117947 n

end A117947

/-! ## A117947.P18019191113614952064

`A049347(A014473(n))`
-/

namespace A117947.P18019191113614952064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A014473 n).toNat

end

end A117947.P18019191113614952064

namespace A117947

/-- `A049347(A014473(n))` -/
def P18019191113614952064.Spec : Prop :=
  ∀ n, P18019191113614952064.a n = A117947 n

end A117947

/-! ## A117947.P9704639449167299768

`A102283(A007318(n))`
-/

namespace A117947.P9704639449167299768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A007318 n).toNat

end

end A117947.P9704639449167299768

namespace A117947

/-- `A102283(A007318(n))` -/
def P9704639449167299768.Spec : Prop :=
  ∀ n, P9704639449167299768.a n = A117947 n

end A117947

/-! ## A117947.P1524326152576262278

`A106510(A206735(n))`
-/

namespace A117947.P1524326152576262278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (A206735 n).toNat

end

end A117947.P1524326152576262278

namespace A117947

/-- `A106510(A206735(n))` -/
def P1524326152576262278.Spec : Prop :=
  ∀ n, P1524326152576262278.a n = A117947 n

end A117947

/-!
# A117948: Sum of the divisors of pentagonal numbers.

The programs for A117948, the canonical program `A117948.P2375411623940238769` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117948 has offset 1).

The definition of A117948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117948.P2375411623940238769

`A262613(Δ[n²])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117948

/-- `A262613(Δ[n²])` -/
def P2375411623940238769.Spec : Prop :=
  ∀ n, P2375411623940238769.a n = A117948 (n + 1)

theorem P2375411623940238769.correct : P2375411623940238769.Spec := by
  intro n
  simp only [A117948, Nat.add_sub_cancel]

end A117948

/-! ## A117948.P2445879793838299765

`∑{d}[Δ[n*∑[n]], #]`
-/

namespace A117948.P2445879793838299765
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A117948.P2445879793838299765

namespace A117948

/-- `∑{d}[Δ[n*∑[n]], #]` -/
def P2445879793838299765.Spec : Prop :=
  ∀ n, (P2445879793838299765.a n : ℤ) = A117948 (n + 1)

end A117948

/-! ## A117948.P11575854231760575494

`A000027(∑{d}[A000326(n+1), #])`
-/

namespace A117948.P11575854231760575494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A117948.P11575854231760575494

namespace A117948

/-- `A000027(∑{d}[A000326(n+1), #])` -/
def P11575854231760575494.Spec : Prop :=
  ∀ n, P11575854231760575494.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P5038578084858270540

`A000203(Δ[n*∑[n]])`
-/

namespace A117948.P5038578084858270540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A117948.P5038578084858270540

namespace A117948

/-- `A000203(Δ[n*∑[n]])` -/
def P5038578084858270540.Spec : Prop :=
  ∀ n, P5038578084858270540.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P15100028069302100969

`abs(A000203(∑[n]+(n+1)²)-1)+1`
-/

namespace A117948.P15100028069302100969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000203 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2) - 1| + 1

end

end A117948.P15100028069302100969

namespace A117948

/-- `abs(A000203(∑[n]+(n+1)²)-1)+1` -/
def P15100028069302100969.Spec : Prop :=
  ∀ n, P15100028069302100969.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P13086293213423791920

`A000027(A000203(∑[3*n+1]))`
-/

namespace A117948.P13086293213423791920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000203 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A117948.P13086293213423791920

namespace A117948

/-- `A000027(A000203(∑[3*n+1]))` -/
def P13086293213423791920.Spec : Prop :=
  ∀ n, P13086293213423791920.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P9658701460964118948

`A000203(∑[A016777(n)])+(xor(n, n+1)+1)%2`
-/

namespace A117948.P9658701460964118948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (((Nat.xor n (n + 1) + 1) % 2 : ℕ) : ℤ)

end

end A117948.P9658701460964118948

namespace A117948

/-- `A000203(∑[A016777(n)])+(xor(n, n+1)+1)%2` -/
def P9658701460964118948.Spec : Prop :=
  ∀ n, P9658701460964118948.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P17379152940738598069

`or(A000203(A000326(n+1)), A000007(n))`
-/

namespace A117948.P17379152940738598069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000203 (A000326 (n + 1)).toNat) (A000007 n)

end

end A117948.P17379152940738598069

namespace A117948

/-- `or(A000203(A000326(n+1)), A000007(n))` -/
def P17379152940738598069.Spec : Prop :=
  ∀ n, P17379152940738598069.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P7742334645287999165

`A000203(Δ[A002411(n)])%A002997(n+1)`
-/

namespace A117948.P7742334645287999165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (f1 (n + 1) - f1 n).toNat) (A002997 (n + 1))

end

end A117948.P7742334645287999165

namespace A117948

/-- `A000203(Δ[A002411(n)])%A002997(n+1)` -/
def P7742334645287999165.Spec : Prop :=
  ∀ n, P7742334645287999165.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P1786622072966875366

`A000203(A000326(n+1))%A004809(n+1)`
-/

namespace A117948.P1786622072966875366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A000326 (n + 1)).toNat) (A004809 (n + 1))

end

end A117948.P1786622072966875366

namespace A117948

/-- `A000203(A000326(n+1))%A004809(n+1)` -/
def P1786622072966875366.Spec : Prop :=
  ∀ n, P1786622072966875366.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P12269078633877839307

`A000203(Δ[n*A000217(n)])%A168327(n+1)`
-/

namespace A117948.P12269078633877839307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (f1 (n + 1) - f1 n).toNat) (A168327 (n + 1))

end

end A117948.P12269078633877839307

namespace A117948

/-- `A000203(Δ[n*A000217(n)])%A168327(n+1)` -/
def P12269078633877839307.Spec : Prop :=
  ∀ n, P12269078633877839307.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P17962608978173185128

`A000203(A188623(3*n+1))%A188630(n+1)`
-/

namespace A117948.P17962608978173185128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A188623 (3 * n + 1)).toNat) (A188630 (n + 1))

end

end A117948.P17962608978173185128

namespace A117948

/-- `A000203(A188623(3*n+1))%A188630(n+1)` -/
def P17962608978173185128.Spec : Prop :=
  ∀ n, P17962608978173185128.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P4492903800890530811

`A000203(A001318(2*n+1))%A287327(n)`
-/

namespace A117948.P4492903800890530811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A001318 (2 * n + 1)).toNat) (A287327 n)

end

end A117948.P4492903800890530811

namespace A117948

/-- `A000203(A001318(2*n+1))%A287327(n)` -/
def P4492903800890530811.Spec : Prop :=
  ∀ n, P4492903800890530811.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P6804612415361249902

`filter[A262613(2*n+1), A005171(#)]`
-/

namespace A117948.P6804612415361249902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A117948.P6804612415361249902

namespace A117948

/-- `filter[A262613(2*n+1), A005171(#)]` -/
def P6804612415361249902.Spec : Prop :=
  ∀ n, P6804612415361249902.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P2516474026488464095

`filter[A262613(2*n+1), A175192(#)]`
-/

namespace A117948.P2516474026488464095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A117948.P2516474026488464095

namespace A117948

/-- `filter[A262613(2*n+1), A175192(#)]` -/
def P2516474026488464095.Spec : Prop :=
  ∀ n, P2516474026488464095.a n = A117948 (n + 1)

end A117948

/-! ## A117948.P5779910892499226931

`filter[A262613(2*n+1), A283265(#)]`
-/

namespace A117948.P5779910892499226931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262613 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A117948.P5779910892499226931

namespace A117948

/-- `filter[A262613(2*n+1), A283265(#)]` -/
def P5779910892499226931.Spec : Prop :=
  ∀ n, P5779910892499226931.a n = A117948 (n + 1)

end A117948

/-!
# A117950: a(n) = n^2 + 3.

The programs for A117950, the canonical program `A117950.P14722515508371885867` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117950 has offset 0).

The definition of A117950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+3` (program `A117950.P14722515508371885867`, by `A117950.P14722515508371885867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117950.P14722515508371885867

`n²+3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117950

/-- `n²+3` -/
def P14722515508371885867.Spec : Prop :=
  ∀ n, (P14722515508371885867.a n : ℤ) = A117950 n

theorem P14722515508371885867.correct : P14722515508371885867.Spec := by
  intro n
  simp only [A117950]

end A117950

/-!
# A117951: a(n) = n^2 + 5.

The programs for A117951, the canonical program `A117951.P4672434833455775897` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117951 has offset 0).

The definition of A117951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+5` (program `A117951.P4672434833455775897`, by `A117951.P4672434833455775897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117951.P4672434833455775897

`n²+5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117951

/-- `n²+5` -/
def P4672434833455775897.Spec : Prop :=
  ∀ n, (P4672434833455775897.a n : ℤ) = A117951 n

theorem P4672434833455775897.correct : P4672434833455775897.Spec := by
  intro n
  simp only [A117951]

end A117951

/-!
# A117952: Perrin numbers which are divisible by the sum of their digits.

The programs for A117952, there is no canonical definition to state claims against.
-/

/-! ## A117952.P11668170112113989079

`filter[A225780(n+1), A294878(#)]`
-/

namespace A117952.P11668170112113989079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294878 (f1 j).toNat = 1) n)

end

end A117952.P11668170112113989079

/-!
# A117953: Number of partitions of n into odd parts and such that parts having size k occur at most k times.

The programs for A117953, there is no canonical definition to state claims against.
-/

/-! ## A117953.P4433456631955509457

`A305713(A127039(n+5))%A325780(3*(n+1))`
-/

namespace A117953.P4433456631955509457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305713 (A127039 (n + 5)).toNat) (A325780 (3 * (n + 1)))

end

end A117953.P4433456631955509457

/-!
# A117954: Reversible Lynch-Bell numbers.

The programs for A117954, there is no canonical definition to state claims against.
-/

/-! ## A117954.P1931889914857152186

`filter[A277856(n+1), A178788(#)]`
-/

namespace A117954.P1931889914857152186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A117954.P1931889914857152186

/-! ## A117954.P462306422195885913

`∩[A010784(n+1), A277856(n+1)]`
-/

namespace A117954.P462306422195885913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117954.P462306422195885913

/-! ## A117954.P16758458906805150657

`∩[A115569(n+1), A277856(n+1)]`
-/

namespace A117954.P16758458906805150657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117954.P16758458906805150657

/-! ## A117954.P7970392069942016234

`∩[A190760(n+1), A277856(n+1)]`
-/

namespace A117954.P7970392069942016234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117954.P7970392069942016234

/-! ## A117954.P3418031445018986451

`A342952(n+1)%A333485(A339098(n+2))`
-/

namespace A117954.P3418031445018986451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342952 (n + 1)) (A333485 (A339098 (n + 2)).toNat)

end

end A117954.P3418031445018986451

/-!
# A117955: Number of partitions of n into exactly 2 types of odd parts.

The programs for A117955, there is no canonical definition to state claims against.
-/

/-! ## A117955.P16672878295290670542

`A225643(A065461(n))`
-/

namespace A117955.P16672878295290670542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 (A065461 n).toNat

end

end A117955.P16672878295290670542

/-! ## A117955.P1679331003667579622

`A261131(A073287(n)%A039509(n))`
-/

namespace A117955.P1679331003667579622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261131 (Int.tmod (A073287 n) (A039509 n)).toNat

end

end A117955.P1679331003667579622

/-! ## A117955.P13086864676945930926

`A261131(A089854(n)%A039509(n))`
-/

namespace A117955.P13086864676945930926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261131 (Int.tmod (A089854 n) (A039509 n)).toNat

end

end A117955.P13086864676945930926

/-! ## A117955.P6342577332215362745

`A261131(A353824(n))%A353824(A011782(n))`
-/

namespace A117955.P6342577332215362745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261131 (A353824 n).toNat) (A353824 (A011782 n).toNat)

end

end A117955.P6342577332215362745

/-! ## A117955.P6219794394757661764

`A325096(n)-A141727(A001592(n))`
-/

namespace A117955.P6219794394757661764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325096 n - A141727 (A001592 n).toNat

end

end A117955.P6219794394757661764

/-!
# A117957: Number of partitions of n into parts larger than 1 and congruent to 1 mod 4.

The programs for A117957, there is no canonical definition to state claims against.
-/

/-! ## A117957.P8002561028501560663

`A001876(A127839(n+1)^A000001(n))`
-/

namespace A117957.P8002561028501560663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (SequenceMachineLib.roundAway ((A127839 (n + 1) : ℚ) ^ (A000001 n : ℤ))).toNat

end

end A117957.P8002561028501560663

/-! ## A117957.P11177067184673688708

`A005136(A046854(n)*A127839(n+1))`
-/

namespace A117957.P11177067184673688708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A046854 n * A127839 (n + 1)).toNat

end

end A117957.P11177067184673688708

/-! ## A117957.P18224370664702971811

`A001876(A127839(n+1)^A046854(n))`
-/

namespace A117957.P18224370664702971811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (SequenceMachineLib.roundAway ((A127839 (n + 1) : ℚ) ^ (A046854 n : ℤ))).toNat

end

end A117957.P18224370664702971811

/-! ## A117957.P10121341946376040543

`A060500(A127839(n+1)^A046854(n))`
-/

namespace A117957.P10121341946376040543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (SequenceMachineLib.roundAway ((A127839 (n + 1) : ℚ) ^ (A046854 n : ℤ))).toNat

end

end A117957.P10121341946376040543

/-! ## A117957.P16638119129874494224

`A124766(A357941(n)^A124766(n))`
-/

namespace A117957.P16638119129874494224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (SequenceMachineLib.roundAway ((A357941 n : ℚ) ^ (A124766 n : ℤ))).toNat

end

end A117957.P16638119129874494224

/-!
# A117960: Triangular numbers with only odd digits.

The programs for A117960, there is no canonical definition to state claims against.
-/

/-! ## A117960.P5382630468877956058

`C(A349243(n+1)+1, 2)`
-/

namespace A117960.P5382630468877956058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349243 (n + 1) + 1).toNat 2

end

end A117960.P5382630468877956058

/-! ## A117960.P9444766708138613350

`A000217(A349243(n+1))`
-/

namespace A117960.P9444766708138613350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A349243 (n + 1)).toNat

end

end A117960.P9444766708138613350

/-! ## A117960.P5066804170339776659

`A161680(A349243(n+1)+1)`
-/

namespace A117960.P5066804170339776659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A349243 (n + 1) + 1).toNat

end

end A117960.P5066804170339776659

/-! ## A117960.P12082029388256120539

`A179865(A349243(n+1)+1)`
-/

namespace A117960.P12082029388256120539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A349243 (n + 1) + 1).toNat

end

end A117960.P12082029388256120539

/-! ## A117960.P8705270796012986303

`A257942(A349243(n+1)-1)`
-/

namespace A117960.P8705270796012986303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257942 (A349243 (n + 1) - 1).toNat

end

end A117960.P8705270796012986303

/-! ## A117960.P11487454505963950041

`A000124(A349243(n+1))-A007318(∑[n])`
-/

namespace A117960.P11487454505963950041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A349243 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117960.P11487454505963950041

/-! ## A117960.P9792670410893107407

`A000124(A349243(n+1))-A000034(2*n)`
-/

namespace A117960.P9792670410893107407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A349243 (n + 1)).toNat - A000034 (2 * n)

end

end A117960.P9792670410893107407

/-! ## A117960.P18175699291613160304

`A000124(A349243(n+1))-val(A020639(n+1), 2)!`
-/

namespace A117960.P18175699291613160304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A349243 (n + 1)).toNat - (Nat.factorial (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2) : ℤ)

end

end A117960.P18175699291613160304

/-! ## A117960.P7740847880324783738

`A130519(2*(A349243(n+1)+1))`
-/

namespace A117960.P7740847880324783738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (2 * (A349243 (n + 1) + 1)).toNat

end

end A117960.P7740847880324783738

/-! ## A117960.P16857964595944206195

`A130519(A349243(n+1)+A349243(n+1)+2)`
-/

namespace A117960.P16857964595944206195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A349243 (n + 1) + (A349243 (n + 1) + 2)).toNat

end

end A117960.P16857964595944206195

/-!
# A117961: Hexagonal numbers with prime indices.

The programs for A117961, the canonical program `A117961.P17924509354445677278` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117961 has offset 1).

The definition of A117961 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117961.P17924509354445677278

`A000040(n+1)*(2*A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A117961

/-- `A000040(n+1)*(2*A000040(n+1)-1)` -/
def P17924509354445677278.Spec : Prop :=
  ∀ n, P17924509354445677278.a n = A117961 (n + 1)

theorem P17924509354445677278.correct : P17924509354445677278.Spec := by
  intro n
  simp only [A117961, Nat.add_sub_cancel]

end A117961

/-! ## A117961.P13058076193057289419

`C(A100484(n+1), 2)`
-/

namespace A117961.P13058076193057289419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100484 (n + 1)).toNat 2

end

end A117961.P13058076193057289419

namespace A117961

/-- `C(A100484(n+1), 2)` -/
def P13058076193057289419.Spec : Prop :=
  ∀ n, (P13058076193057289419.a n : ℤ) = A117961 (n + 1)

end A117961

/-! ## A117961.P3678081068978296646

`C(Δ[2*A007504(n)], 2)`
-/

namespace A117961.P3678081068978296646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A117961.P3678081068978296646

namespace A117961

/-- `C(Δ[2*A007504(n)], 2)` -/
def P3678081068978296646.Spec : Prop :=
  ∀ n, (P3678081068978296646.a n : ℤ) = A117961 (n + 1)

end A117961

/-! ## A117961.P3036707407909412239

`C(A037168(n+1)+2, 2)`
-/

namespace A117961.P3036707407909412239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A037168 (n + 1) + 2).toNat 2

end

end A117961.P3036707407909412239

namespace A117961

/-- `C(A037168(n+1)+2, 2)` -/
def P3036707407909412239.Spec : Prop :=
  ∀ n, (P3036707407909412239.a n : ℤ) = A117961 (n + 1)

end A117961

/-! ## A117961.P14325531014360521384

`C(A072055(n+1)-1, 2)`
-/

namespace A117961.P14325531014360521384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072055 (n + 1) - 1).toNat 2

end

end A117961.P14325531014360521384

namespace A117961

/-- `C(A072055(n+1)-1, 2)` -/
def P14325531014360521384.Spec : Prop :=
  ∀ n, (P14325531014360521384.a n : ℤ) = A117961 (n + 1)

end A117961

/-! ## A117961.P633160605739667302

`C(A089241(n+1)-2, 2)`
-/

namespace A117961.P633160605739667302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089241 (n + 1) - 2).toNat 2

end

end A117961.P633160605739667302

namespace A117961

/-- `C(A089241(n+1)-2, 2)` -/
def P633160605739667302.Spec : Prop :=
  ∀ n, (P633160605739667302.a n : ℤ) = A117961 (n + 1)

end A117961

/-! ## A117961.P9476252499348204400

`C(2*A000040(n+1), 2)`
-/

namespace A117961.P9476252499348204400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A000040 (n + 1)).toNat 2

end

end A117961.P9476252499348204400

namespace A117961

/-- `C(2*A000040(n+1), 2)` -/
def P9476252499348204400.Spec : Prop :=
  ∀ n, (P9476252499348204400.a n : ℤ) = A117961 (n + 1)

end A117961

/-! ## A117961.P3954629829694714845

`C(A001749(n+1)/2, 2)`
-/

namespace A117961.P3954629829694714845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat 2

end

end A117961.P3954629829694714845

namespace A117961

/-- `C(A001749(n+1)/2, 2)` -/
def P3954629829694714845.Spec : Prop :=
  ∀ n, (P3954629829694714845.a n : ℤ) = A117961 (n + 1)

end A117961

/-! ## A117961.P8659624500219870347

`A036689(n+1)+A001248(n+1)`
-/

namespace A117961.P8659624500219870347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + A001248 (n + 1)

end

end A117961.P8659624500219870347

namespace A117961

/-- `A036689(n+1)+A001248(n+1)` -/
def P8659624500219870347.Spec : Prop :=
  ∀ n, P8659624500219870347.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P7642114776051094354

`A116995(n+1)+A008837(n+1)`
-/

namespace A117961.P7642114776051094354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116995 (n + 1) + A008837 (n + 1)

end

end A117961.P7642114776051094354

namespace A117961

/-- `A116995(n+1)+A008837(n+1)` -/
def P7642114776051094354.Spec : Prop :=
  ∀ n, P7642114776051094354.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P6682306692508466892

`A119959(n+1)+A084920(n+1)`
-/

namespace A117961.P6682306692508466892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119959 (n + 1) + A084920 (n + 1)

end

end A117961.P6682306692508466892

namespace A117961

/-- `A119959(n+1)+A084920(n+1)` -/
def P6682306692508466892.Spec : Prop :=
  ∀ n, P6682306692508466892.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P13331701423634927234

`A179545(n+1)+A034953(n+1)`
-/

namespace A117961.P13331701423634927234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179545 (n + 1) + A034953 (n + 1)

end

end A117961.P13331701423634927234

namespace A117961

/-- `A179545(n+1)+A034953(n+1)` -/
def P13331701423634927234.Spec : Prop :=
  ∀ n, P13331701423634927234.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P3992988935776458274

`A319597(n+1)+A005722(n+1)`
-/

namespace A117961.P3992988935776458274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1) + A005722 (n + 1)

end

end A117961.P3992988935776458274

namespace A117961

/-- `A319597(n+1)+A005722(n+1)` -/
def P3992988935776458274.Spec : Prop :=
  ∀ n, P3992988935776458274.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P6834685280143591253

`A261465(n+1)+A064051(n+1)`
-/

namespace A117961.P6834685280143591253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261465 (n + 1) + A064051 (n + 1)

end

end A117961.P6834685280143591253

namespace A117961

/-- `A261465(n+1)+A064051(n+1)` -/
def P6834685280143591253.Spec : Prop :=
  ∀ n, P6834685280143591253.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P1097220680076692539

`A306190(n+1)+A066872(n+1)`
-/

namespace A117961.P1097220680076692539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306190 (n + 1) + A066872 (n + 1)

end

end A117961.P1097220680076692539

namespace A117961

/-- `A306190(n+1)+A066872(n+1)` -/
def P1097220680076692539.Spec : Prop :=
  ∀ n, P1097220680076692539.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P10915561661491320381

`A079704(n+1)-A000040(n+1)`
-/

namespace A117961.P10915561661491320381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A000040 (n + 1)

end

end A117961.P10915561661491320381

namespace A117961

/-- `A079704(n+1)-A000040(n+1)` -/
def P10915561661491320381.Spec : Prop :=
  ∀ n, P10915561661491320381.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P13033719235878918297

`A079705(n+1)-A036690(n+1)`
-/

namespace A117961.P13033719235878918297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) - A036690 (n + 1)

end

end A117961.P13033719235878918297

namespace A117961

/-- `A079705(n+1)-A036690(n+1)` -/
def P13033719235878918297.Spec : Prop :=
  ∀ n, P13033719235878918297.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P10980502026141847390

`A179262(n+1)-A006093(n+1)`
-/

namespace A117961.P10980502026141847390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1) - A006093 (n + 1)

end

end A117961.P10980502026141847390

namespace A117961

/-- `A179262(n+1)-A006093(n+1)` -/
def P10980502026141847390.Spec : Prop :=
  ∀ n, P10980502026141847390.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P5813396063130696371

`A135178(n+1)-A083558(n+1)`
-/

namespace A117961.P5813396063130696371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135178 (n + 1) - A083558 (n + 1)

end

end A117961.P5813396063130696371

namespace A117961

/-- `A135178(n+1)-A083558(n+1)` -/
def P5813396063130696371.Spec : Prop :=
  ∀ n, P5813396063130696371.a n = A117961 (n + 1)

end A117961

/-! ## A117961.P13950428353831526464

`A267144(n+1)-A036689(n+1)`
-/

namespace A117961.P13950428353831526464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267144 (n + 1) - A036689 (n + 1)

end

end A117961.P13950428353831526464

namespace A117961

/-- `A267144(n+1)-A036689(n+1)` -/
def P13950428353831526464.Spec : Prop :=
  ∀ n, P13950428353831526464.a n = A117961 (n + 1)

end A117961

/-!
# A117962: Partial sums of hexagonal numbers with prime indices.

The programs for A117962, the canonical program `A117962.P8235667469965270824` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117962 has offset 1).

The definition of A117962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117962.P8235667469965270824

`∑[A117961(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117962

/-- `∑[A117961(n+1)]` -/
def P8235667469965270824.Spec : Prop :=
  ∀ n, P8235667469965270824.a n = A117962 (n + 1)

theorem P8235667469965270824.correct : P8235667469965270824.Spec := by
  intro n
  simp only [A117962, Nat.add_sub_cancel]

end A117962

/-! ## A117962.P17267116722227208234

`∑[C(A100484(n+1), 2)]`
-/

namespace A117962.P17267116722227208234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100484 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P17267116722227208234

namespace A117962

/-- `∑[C(A100484(n+1), 2)]` -/
def P17267116722227208234.Spec : Prop :=
  ∀ n, (P17267116722227208234.a n : ℤ) = A117962 (n + 1)

end A117962

/-! ## A117962.P3925529819950413312

`∑[C(Δ[2*A007504(n)], 2)]`
-/

namespace A117962.P3925529819950413312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (n + 1) - f2 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P3925529819950413312

namespace A117962

/-- `∑[C(Δ[2*A007504(n)], 2)]` -/
def P3925529819950413312.Spec : Prop :=
  ∀ n, (P3925529819950413312.a n : ℤ) = A117962 (n + 1)

end A117962

/-! ## A117962.P13081037766948184264

`∑[C(A037168(n+1)+2, 2)]`
-/

namespace A117962.P13081037766948184264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A037168 (n + 1) + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P13081037766948184264

namespace A117962

/-- `∑[C(A037168(n+1)+2, 2)]` -/
def P13081037766948184264.Spec : Prop :=
  ∀ n, (P13081037766948184264.a n : ℤ) = A117962 (n + 1)

end A117962

/-! ## A117962.P566877838442126861

`∑[C(2*A000040(n+1), 2)]`
-/

namespace A117962.P566877838442126861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A000040 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P566877838442126861

namespace A117962

/-- `∑[C(2*A000040(n+1), 2)]` -/
def P566877838442126861.Spec : Prop :=
  ∀ n, (P566877838442126861.a n : ℤ) = A117962 (n + 1)

end A117962

/-! ## A117962.P9598665144687449193

`∑[A036689(n+1)+A001248(n+1)]`
-/

namespace A117962.P9598665144687449193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P9598665144687449193

namespace A117962

/-- `∑[A036689(n+1)+A001248(n+1)]` -/
def P9598665144687449193.Spec : Prop :=
  ∀ n, P9598665144687449193.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P13008377020683266245

`∑[A036689(n+1)+A000040(n+1)²]`
-/

namespace A117962.P13008377020683266245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P13008377020683266245

namespace A117962

/-- `∑[A036689(n+1)+A000040(n+1)²]` -/
def P13008377020683266245.Spec : Prop :=
  ∀ n, P13008377020683266245.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P16805660423973158037

`∑[(A100484(n+1)-1)*A000040(n+1)]`
-/

namespace A117962.P16805660423973158037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) - 1) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P16805660423973158037

namespace A117962

/-- `∑[(A100484(n+1)-1)*A000040(n+1)]` -/
def P16805660423973158037.Spec : Prop :=
  ∀ n, P16805660423973158037.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P2379372428905098781

`∑[2*A001248(n+1)-A000040(n+1)]`
-/

namespace A117962.P2379372428905098781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P2379372428905098781

namespace A117962

/-- `∑[2*A001248(n+1)-A000040(n+1)]` -/
def P2379372428905098781.Spec : Prop :=
  ∀ n, P2379372428905098781.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P3150501772312234390

`A024450(n+1)+A024450(n+1)-A007504(n+1)`
-/

namespace A117962.P3150501772312234390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024450 (n + 1) + (A024450 (n + 1) - A007504 (n + 1))

end

end A117962.P3150501772312234390

namespace A117962

/-- `A024450(n+1)+A024450(n+1)-A007504(n+1)` -/
def P3150501772312234390.Spec : Prop :=
  ∀ n, P3150501772312234390.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P1794291789169037395

`A065762(n+1)-(A065595(n+1)+A007504(n+1))`
-/

namespace A117962.P1794291789169037395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065762 (n + 1) - (A065595 (n + 1) + A007504 (n + 1))

end

end A117962.P1794291789169037395

namespace A117962

/-- `A065762(n+1)-(A065595(n+1)+A007504(n+1))` -/
def P1794291789169037395.Spec : Prop :=
  ∀ n, P1794291789169037395.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P3108837716818028264

`∑[C(A001747(n+2), 2)]`
-/

namespace A117962.P3108837716818028264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001747 (n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P3108837716818028264

namespace A117962

/-- `∑[C(A001747(n+2), 2)]` -/
def P3108837716818028264.Spec : Prop :=
  ∀ n, (P3108837716818028264.a n : ℤ) = A117962 (n + 1)

end A117962

/-! ## A117962.P7764981009879666960

`∑[C(2*A182986(n+2), 2)]`
-/

namespace A117962.P7764981009879666960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A182986 (n + 2)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P7764981009879666960

namespace A117962

/-- `∑[C(2*A182986(n+2), 2)]` -/
def P7764981009879666960.Spec : Prop :=
  ∀ n, (P7764981009879666960.a n : ℤ) = A117962 (n + 1)

end A117962

/-! ## A117962.P4330118756150714670

`∑[A079143(2*n+1)+A079143(2*(n+1))]`
-/

namespace A117962.P4330118756150714670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079143 (2 * n + 1) + A079143 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P4330118756150714670

namespace A117962

/-- `∑[A079143(2*n+1)+A079143(2*(n+1))]` -/
def P4330118756150714670.Spec : Prop :=
  ∀ n, P4330118756150714670.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P7830893601640323000

`∑[A000217(2*record[A000010(n+1)]+1)]`
-/

namespace A117962.P7830893601640323000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P7830893601640323000

namespace A117962

/-- `∑[A000217(2*record[A000010(n+1)]+1)]` -/
def P7830893601640323000.Spec : Prop :=
  ∀ n, P7830893601640323000.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P12943680639315656911

`∑[C(2*record[A014963(n+2)], 2)]`
-/

namespace A117962.P12943680639315656911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P12943680639315656911

namespace A117962

/-- `∑[C(2*record[A014963(n+2)], 2)]` -/
def P12943680639315656911.Spec : Prop :=
  ∀ n, (P12943680639315656911.a n : ℤ) = A117962 (n + 1)

end A117962

/-! ## A117962.P6164787833907409379

`∑[A000384(A000040(n+1))]`
-/

namespace A117962.P6164787833907409379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P6164787833907409379

namespace A117962

/-- `∑[A000384(A000040(n+1))]` -/
def P6164787833907409379.Spec : Prop :=
  ∀ n, P6164787833907409379.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P16638924575412561042

`∑[A000384(A008578(n+2))]`
-/

namespace A117962.P16638924575412561042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P16638924575412561042

namespace A117962

/-- `∑[A000384(A008578(n+2))]` -/
def P16638924575412561042.Spec : Prop :=
  ∀ n, P16638924575412561042.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P6479434870447415300

`∑[A000384(p?[A090467(n+1)])]`
-/

namespace A117962.P6479434870447415300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090467 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P6479434870447415300

namespace A117962

/-- `∑[A000384(p?[A090467(n+1)])]` -/
def P6479434870447415300.Spec : Prop :=
  ∀ n, P6479434870447415300.a n = A117962 (n + 1)

end A117962

/-! ## A117962.P5985778989544285357

`∑[A000217(2*record[A014963(n+2)]-1)]`
-/

namespace A117962.P5985778989544285357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117962.P5985778989544285357

namespace A117962

/-- `∑[A000217(2*record[A014963(n+2)]-1)]` -/
def P5985778989544285357.Spec : Prop :=
  ∀ n, P5985778989544285357.a n = A117962 (n + 1)

end A117962

/-!
# A117964: a(n) = A117963(n) mod 2.

The programs for A117964, the canonical program `A117964.P14262201928397417271` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117964 has offset 0).

The definition of A117964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117964.P14262201928397417271

`∑[(n+1)*a(floor(n/3))]%2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117964

/-- `∑[(n+1)*a(floor(n/3))]%2` -/
def P14262201928397417271.Spec : Prop :=
  ∀ n, (P14262201928397417271.a n : ℤ) = A117964 n

theorem P14262201928397417271.correct : P14262201928397417271.Spec := by
  intro n
  simp only [A117964]

end A117964

/-! ## A117964.P15420217626475222003

`∑[lcm(n-1, a(floor(n/3)))]%2` with `a(0)=1`
-/

namespace A117964.P15420217626475222003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm ((n : ℤ) - 1) (f1 ⌊(n : ℚ) / 3⌋.toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A117964.P15420217626475222003

namespace A117964

/-- `∑[lcm(n-1, a(floor(n/3)))]%2` -/
def P15420217626475222003.Spec : Prop :=
  ∀ n, (P15420217626475222003.a n : ℤ) = A117964 n

end A117964

/-! ## A117964.P11933412476748573821

`∑[a(floor(n/3))%gcd(2, n)]%2` with `a(0)=1`
-/

namespace A117964.P11933412476748573821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat % Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A117964.P11933412476748573821

namespace A117964

/-- `∑[a(floor(n/3))%gcd(2, n)]%2` -/
def P11933412476748573821.Spec : Prop :=
  ∀ n, (P11933412476748573821.a n : ℤ) = A117964 n

end A117964

/-! ## A117964.P892120874148855219

`∑[and(n-1, -a(floor(n/3)))]%2` with `a(0)=1`
-/

namespace A117964.P892120874148855219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land ((n : ℤ) - 1) (-f1 ⌊(n : ℚ) / 3⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117964.P892120874148855219

namespace A117964

/-- `∑[and(n-1, -a(floor(n/3)))]%2` -/
def P892120874148855219.Spec : Prop :=
  ∀ n, P892120874148855219.a n = A117964 n

end A117964

/-! ## A117964.P2062086139376040696

`∑[floor((n-1)*a(floor(n/3)))]%2` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A117964.P2062086139376040696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1) * f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117964.P2062086139376040696

namespace A117964

/-- `∑[floor((n-1)*a(floor(n/3)))]%2` -/
def P2062086139376040696.Spec : Prop :=
  ∀ n, P2062086139376040696.a n = A117964 n

end A117964

/-! ## A117964.P13163796737279526848

`A006048(n)%2`
-/

namespace A117964.P13163796737279526848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006048 n) 2

end

end A117964.P13163796737279526848

namespace A117964

/-- `A006048(n)%2` -/
def P13163796737279526848.Spec : Prop :=
  ∀ n, P13163796737279526848.a n = A117964 n

end A117964

/-! ## A117964.P1658085046920616674

`A382730(n)%2`
-/

namespace A117964.P1658085046920616674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382730 n) 2

end

end A117964.P1658085046920616674

namespace A117964

/-- `A382730(n)%2` -/
def P1658085046920616674.Spec : Prop :=
  ∀ n, P1658085046920616674.a n = A117964 n

end A117964

/-! ## A117964.P10684094336935840134

`and(1, A117963(n))`
-/

namespace A117964.P10684094336935840134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117963 n)

end

end A117964.P10684094336935840134

namespace A117964

/-- `and(1, A117963(n))` -/
def P10684094336935840134.Spec : Prop :=
  ∀ n, P10684094336935840134.a n = A117964 n

end A117964

/-! ## A117964.P10861320241712745212

`∑[A006047(n)]%2`
-/

namespace A117964.P10861320241712745212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117964.P10861320241712745212

namespace A117964

/-- `∑[A006047(n)]%2` -/
def P10861320241712745212.Spec : Prop :=
  ∀ n, P10861320241712745212.a n = A117964 n

end A117964

/-! ## A117964.P8121518930287276139

`∑[A088917(n)]%2`
-/

namespace A117964.P8121518930287276139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117964.P8121518930287276139

namespace A117964

/-- `∑[A088917(n)]%2` -/
def P8121518930287276139.Spec : Prop :=
  ∀ n, P8121518930287276139.a n = A117964 n

end A117964

/-! ## A117964.P16471048053146459722

`∑[A105220(n)]%2`
-/

namespace A117964.P16471048053146459722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117964.P16471048053146459722

namespace A117964

/-- `∑[A105220(n)]%2` -/
def P16471048053146459722.Spec : Prop :=
  ∀ n, P16471048053146459722.a n = A117964 n

end A117964

/-! ## A117964.P8449528371051266678

`∑[A117980(n)]%2`
-/

namespace A117964.P8449528371051266678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117964.P8449528371051266678

namespace A117964

/-- `∑[A117980(n)]%2` -/
def P8449528371051266678.Spec : Prop :=
  ∀ n, P8449528371051266678.a n = A117964 n

end A117964

/-! ## A117964.P7921755133516725069

`∑[A120880(n)]%2`
-/

namespace A117964.P7921755133516725069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117964.P7921755133516725069

namespace A117964

/-- `∑[A120880(n)]%2` -/
def P7921755133516725069.Spec : Prop :=
  ∀ n, P7921755133516725069.a n = A117964 n

end A117964

/-! ## A117964.P14045834569050078900

`A088917(a(n-1)+n)` with `a(0)=1`
-/

namespace A117964.P14045834569050078900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088917 (a (n - 1) + (n : ℤ)).toNat

end

end A117964.P14045834569050078900

namespace A117964

/-- `A088917(a(n-1)+n)` -/
def P14045834569050078900.Spec : Prop :=
  ∀ n, P14045834569050078900.a n = A117964 n

end A117964

/-! ## A117964.P5893136599189612787

`A088917(n-a(n-1))` with `a(0)=1`
-/

namespace A117964.P5893136599189612787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088917 ((n : ℤ) - a (n - 1)).toNat

end

end A117964.P5893136599189612787

namespace A117964

/-- `A088917(n-a(n-1))` -/
def P5893136599189612787.Spec : Prop :=
  ∀ n, P5893136599189612787.a n = A117964 n

end A117964

/-! ## A117964.P18053716691278940102

`A088917(A004483(n))`
-/

namespace A117964.P18053716691278940102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (A004483 n).toNat

end

end A117964.P18053716691278940102

namespace A117964

/-- `A088917(A004483(n))` -/
def P18053716691278940102.Spec : Prop :=
  ∀ n, P18053716691278940102.a n = A117964 n

end A117964

/-! ## A117964.P14498044741380145517

`A088917(A064429(n))`
-/

namespace A117964.P14498044741380145517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (A064429 n).toNat

end

end A117964.P14498044741380145517

namespace A117964

/-- `A088917(A064429(n))` -/
def P14498044741380145517.Spec : Prop :=
  ∀ n, P14498044741380145517.a n = A117964 n

end A117964

/-! ## A117964.P16192380244195766005

`A088917(A260316(n))`
-/

namespace A117964.P16192380244195766005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (A260316 n).toNat

end

end A117964.P16192380244195766005

namespace A117964

/-- `A088917(A260316(n))` -/
def P16192380244195766005.Spec : Prop :=
  ∀ n, P16192380244195766005.a n = A117964 n

end A117964

/-!
# A117965: Triangle read by rows: T(i,j) = F(i)*F(j)*C(i,j) for 1 <= j <= i, where F(n) is the n-th Fibonacci number and C(n,m) is a binomial coefficient.

The programs for A117965, there is no canonical definition to state claims against.
-/

/-! ## A117965.P14181705950173842112

`A135278(n)*A143211(n+1)`
-/

namespace A117965.P14181705950173842112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A143211 (n + 1)

end

end A117965.P14181705950173842112

/-! ## A117965.P12310652175830642579

`A074909(n+1)*A143211(n+1)`
-/

namespace A117965.P12310652175830642579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A143211 (n + 1)

end

end A117965.P12310652175830642579

/-! ## A117965.P1547525676784852339

`A094435(n+1)*A131410(n+1)`
-/

namespace A117965.P1547525676784852339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (n + 1) * A131410 (n + 1)

end

end A117965.P1547525676784852339

/-! ## A117965.P17987494896098315320

`A007318(comp[∑[n]])*A143211(n+1)`
-/

namespace A117965.P17987494896098315320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A143211 (n + 1)

end

end A117965.P17987494896098315320

/-! ## A117965.P1978650074505986037

`A000045(∑[char[∑[n]]])*A094435(n+1)`
-/

namespace A117965.P1978650074505986037
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j) * A094435 (n + 1)

end

end A117965.P1978650074505986037

/-! ## A117965.P1905512230859135228

`A036355(A057944(n))*A094435(n+1)`
-/

namespace A117965.P1905512230859135228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036355 (A057944 n).toNat * A094435 (n + 1)

end

end A117965.P1905512230859135228

/-! ## A117965.P18269720054934953103

`A094435(n+1)*A123231(A131507(n))`
-/

namespace A117965.P18269720054934953103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094435 (n + 1) * A123231 (A131507 n).toNat

end

end A117965.P18269720054934953103

/-! ## A117965.P14584225488579702590

`A143211(n+1)*A183154(∑[A035214(n)])`
-/

namespace A117965.P14584225488579702590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143211 (n + 1) * A183154 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117965.P14584225488579702590

/-! ## A117965.P10309851742939359777

`A094440(A038722(n+1))*A131410(n+1)`
-/

namespace A117965.P10309851742939359777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094440 (A038722 (n + 1)).toNat * A131410 (n + 1)

end

end A117965.P10309851742939359777

/-!
# A117966: Balanced ternary enumeration (based on balanced ternary representation) of integers; write n in ternary and then replace 2's with (-1)'s.

The programs for A117966, the canonical program `A117966.P11599160912576478646` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117966 has offset 0).

The definition of A117966 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117966.P11599160912576478646

`n-3*A005836(A289814(n)+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A117966

/-- `n-3*A005836(A289814(n)+1)` -/
def P11599160912576478646.Spec : Prop :=
  ∀ n, P11599160912576478646.a n = A117966 n

theorem P11599160912576478646.correct : P11599160912576478646.Spec := by
  intro n
  simp only [A117966]

end A117966

/-! ## A117966.P15036763427015407550

`A004488(n)-n`
-/

namespace A117966.P15036763427015407550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - (n : ℤ)

end

end A117966.P15036763427015407550

namespace A117966

/-- `A004488(n)-n` -/
def P15036763427015407550.Spec : Prop :=
  ∀ n, P15036763427015407550.a n = A117966 n

end A117966

/-! ## A117966.P11387453880189584987

`n-3/2*A300222(n)`
-/

namespace A117966.P11387453880189584987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (3 : ℚ) / 2 * (A300222 n : ℚ)

end

end A117966.P11387453880189584987

namespace A117966

/-- `n-3/2*A300222(n)` -/
def P11387453880189584987.Spec : Prop :=
  ∀ n, P11387453880189584987.a n = (A117966 n : ℚ)

end A117966

/-! ## A117966.P4148798648193045264

`A274107(n)+A134028(n)`
-/

namespace A117966.P4148798648193045264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274107 n + A134028 n

end

end A117966.P4148798648193045264

namespace A117966

/-- `A274107(n)+A134028(n)` -/
def P4148798648193045264.Spec : Prop :=
  ∀ n, P4148798648193045264.a n = A117966 n

end A117966

/-! ## A117966.P2470966133205011676

`A071770(A060583(n))-n`
-/

namespace A117966.P2470966133205011676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071770 (A060583 n).toNat - (n : ℤ)

end

end A117966.P2470966133205011676

namespace A117966

/-- `A071770(A060583(n))-n` -/
def P2470966133205011676.Spec : Prop :=
  ∀ n, P2470966133205011676.a n = A117966 n

end A117966

/-! ## A117966.P10673156918934100856

`A370932(A060587(n))-n`
-/

namespace A117966.P10673156918934100856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370932 (A060587 n).toNat - (n : ℤ)

end

end A117966.P10673156918934100856

namespace A117966

/-- `A370932(A060587(n))-n` -/
def P10673156918934100856.Spec : Prop :=
  ∀ n, P10673156918934100856.a n = A117966 n

end A117966

/-! ## A117966.P4194717797135085342

`n-A168237(A300222(n))`
-/

namespace A117966.P4194717797135085342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A168237 (A300222 n).toNat

end

end A117966.P4194717797135085342

namespace A117966

/-- `n-A168237(A300222(n))` -/
def P4194717797135085342.Spec : Prop :=
  ∀ n, P4194717797135085342.a n = A117966 n

end A117966

/-! ## A117966.P17227736401977758457

`A244042(n)-A300222(n)/2`
-/

namespace A117966.P17227736401977758457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244042 n : ℚ) - (A300222 n : ℚ) / 2

end

end A117966.P17227736401977758457

namespace A117966

/-- `A244042(n)-A300222(n)/2` -/
def P17227736401977758457.Spec : Prop :=
  ∀ n, P17227736401977758457.a n = (A117966 n : ℚ)

end A117966

/-! ## A117966.P16617819455904291331

`n-A007494(n-A244042(n))`
-/

namespace A117966.P16617819455904291331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007494 ((n : ℤ) - A244042 n).toNat

end

end A117966.P16617819455904291331

namespace A117966

/-- `n-A007494(n-A244042(n))` -/
def P16617819455904291331.Spec : Prop :=
  ∀ n, P16617819455904291331.a n = A117966 n

end A117966

/-! ## A117966.P10817172258243747956

`A244042(n)-A374362(n)`
-/

namespace A117966.P10817172258243747956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n - A374362 n

end

end A117966.P10817172258243747956

namespace A117966

/-- `A244042(n)-A374362(n)` -/
def P10817172258243747956.Spec : Prop :=
  ∀ n, P10817172258243747956.a n = A117966 n

end A117966

/-! ## A117966.P11079280947399976567

`A353662(A353661(n))`
-/

namespace A117966.P11079280947399976567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353662 (A353661 n).toNat

end

end A117966.P11079280947399976567

namespace A117966

/-- `A353662(A353661(n))` -/
def P11079280947399976567.Spec : Prop :=
  ∀ n, P11079280947399976567.a n = A117966 n

end A117966

/-! ## A117966.P5684212315651434122

`A333773(A380350(n))`
-/

namespace A117966.P5684212315651434122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A380350 n).toNat

end

end A117966.P5684212315651434122

namespace A117966

/-- `A333773(A380350(n))` -/
def P5684212315651434122.Spec : Prop :=
  ∀ n, P5684212315651434122.a n = A117966 n

end A117966

/-! ## A117966.P3071734397975258148

`-A343766(A128173(n))`
-/

namespace A117966.P3071734397975258148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A343766 (A128173 n).toNat

end

end A117966.P3071734397975258148

namespace A117966

/-- `-A343766(A128173(n))` -/
def P3071734397975258148.Spec : Prop :=
  ∀ n, P3071734397975258148.a n = A117966 n

end A117966

/-! ## A117966.P306951995150691485

`A374363(n)-A300222(n)`
-/

namespace A117966.P306951995150691485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374363 n - A300222 n

end

end A117966.P306951995150691485

namespace A117966

/-- `A374363(n)-A300222(n)` -/
def P306951995150691485.Spec : Prop :=
  ∀ n, P306951995150691485.a n = A117966 n

end A117966

/-! ## A117966.P8187450487661099350

`A353660(A368230(n))-n`
-/

namespace A117966.P8187450487661099350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353660 (A368230 n).toNat - (n : ℤ)

end

end A117966.P8187450487661099350

namespace A117966

/-- `A353660(A368230(n))-n` -/
def P8187450487661099350.Spec : Prop :=
  ∀ n, P8187450487661099350.a n = A117966 n

end A117966

/-! ## A117966.P11490137664908580734

`A371268(A361945(n))-n`
-/

namespace A117966.P11490137664908580734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371268 (A361945 n).toNat - (n : ℤ)

end

end A117966.P11490137664908580734

namespace A117966

/-- `A371268(A361945(n))-n` -/
def P11490137664908580734.Spec : Prop :=
  ∀ n, P11490137664908580734.a n = A117966 n

end A117966

/-! ## A117966.P516286415771150547

`A380350(A380349(n))-n`
-/

namespace A117966.P516286415771150547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380350 (A380349 n).toNat - (n : ℤ)

end

end A117966.P516286415771150547

namespace A117966

/-- `A380350(A380349(n))-n` -/
def P516286415771150547.Spec : Prop :=
  ∀ n, P516286415771150547.a n = A117966 n

end A117966

/-! ## A117966.P11054983895708964482

`A380352(A380351(n))-n`
-/

namespace A117966.P11054983895708964482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380352 (A380351 n).toNat - (n : ℤ)

end

end A117966.P11054983895708964482

namespace A117966

/-- `A380352(A380351(n))-n` -/
def P11054983895708964482.Spec : Prop :=
  ∀ n, P11054983895708964482.a n = A117966 n

end A117966

/-! ## A117966.P15308870390599609262

`2*A244042(n)-A374363(n)`
-/

namespace A117966.P15308870390599609262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244042 n - A374363 n

end

end A117966.P15308870390599609262

namespace A117966

/-- `2*A244042(n)-A374363(n)` -/
def P15308870390599609262.Spec : Prop :=
  ∀ n, P15308870390599609262.a n = A117966 n

end A117966

/-! ## A117966.P7483325231212700659

`A374363(n)-2*A374362(n)`
-/

namespace A117966.P7483325231212700659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374363 n - 2 * A374362 n

end

end A117966.P7483325231212700659

namespace A117966

/-- `A374363(n)-2*A374362(n)` -/
def P7483325231212700659.Spec : Prop :=
  ∀ n, P7483325231212700659.a n = A117966 n

end A117966

/-!
# A117967: Positive part of inverse of A117966; write n in balanced ternary and then replace (-1)'s with 2's.

The programs for A117967, the canonical program `A117967.P4491383601677545787` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117967 has offset 0).

The definition of A117967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117967.P4491383601677545787

`A059249(a(n-1)+n)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117967

/-- `A059249(a(n-1)+n)` -/
def P4491383601677545787.Spec : Prop :=
  ∀ n, P4491383601677545787.a n = A117967 n

theorem P4491383601677545787.correct : P4491383601677545787.Spec := by
  intro n
  simp only [A117967]

end A117967

/-! ## A117967.P1148518601131655332

`3*(A060372(n)-n)+n`
-/

namespace A117967.P1148518601131655332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A060372 n - (n : ℤ)) + (n : ℤ)

end

end A117967.P1148518601131655332

namespace A117967

/-- `3*(A060372(n)-n)+n` -/
def P1148518601131655332.Spec : Prop :=
  ∀ n, P1148518601131655332.a n = A117967 n

end A117967

/-! ## A117967.P14604748473856114334

`A004488(a(n-1)+n)-1` with `a(0)=0`
-/

namespace A117967.P14604748473856114334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004488 (a (n - 1) + (n : ℤ)).toNat - 1

end

end A117967.P14604748473856114334

namespace A117967

/-- `A004488(a(n-1)+n)-1` -/
def P14604748473856114334.Spec : Prop :=
  ∀ n, P14604748473856114334.a n = A117967 n

end A117967

/-! ## A117967.P2786862439044834080

`A060374(n)+A060373(n)`
-/

namespace A117967.P2786862439044834080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n + A060373 n

end

end A117967.P2786862439044834080

namespace A117967

/-- `A060374(n)+A060373(n)` -/
def P2786862439044834080.Spec : Prop :=
  ∀ n, P2786862439044834080.a n = A117967 n

end A117967

/-! ## A117967.P8367445006713964270

`A060372(n)+2*A060373(n)`
-/

namespace A117967.P8367445006713964270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n + 2 * A060373 n

end

end A117967.P8367445006713964270

namespace A117967

/-- `A060372(n)+2*A060373(n)` -/
def P8367445006713964270.Spec : Prop :=
  ∀ n, P8367445006713964270.a n = A117967 n

end A117967

/-! ## A117967.P6647231393934280289

`A117966(2*n)+A004488(n)`
-/

namespace A117967.P6647231393934280289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (2 * n) + A004488 n

end

end A117967.P6647231393934280289

namespace A117967

/-- `A117966(2*n)+A004488(n)` -/
def P6647231393934280289.Spec : Prop :=
  ∀ n, P6647231393934280289.a n = A117967 n

end A117967

/-! ## A117967.P2653148407045338084

`2*A060374(n)-A060372(n)`
-/

namespace A117967.P2653148407045338084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060374 n - A060372 n

end

end A117967.P2653148407045338084

namespace A117967

/-- `2*A060374(n)-A060372(n)` -/
def P2653148407045338084.Spec : Prop :=
  ∀ n, P2653148407045338084.a n = A117967 n

end A117967

/-! ## A117967.P6976990474159931913

`A004488(n)-A117966(A004488(2*n))`
-/

namespace A117967.P6976990474159931913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n - A117966 (A004488 (2 * n)).toNat

end

end A117967.P6976990474159931913

namespace A117967

/-- `A004488(n)-A117966(A004488(2*n))` -/
def P6976990474159931913.Spec : Prop :=
  ∀ n, P6976990474159931913.a n = A117967 n

end A117967

/-! ## A117967.P1479017910744797584

`A117966(A005843(n))+A117966(n)+n`
-/

namespace A117967.P1479017910744797584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A005843 n).toNat + (A117966 n + (n : ℤ))

end

end A117967.P1479017910744797584

namespace A117967

/-- `A117966(A005843(n))+A117966(n)+n` -/
def P1479017910744797584.Spec : Prop :=
  ∀ n, P1479017910744797584.a n = A117967 n

end A117967

/-! ## A117967.P15563645123648613371

`A060374(A060372(n)-n)+A060374(n)`
-/

namespace A117967.P15563645123648613371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 (A060372 n - (n : ℤ)).toNat + A060374 n

end

end A117967.P15563645123648613371

namespace A117967

/-- `A060374(A060372(n)-n)+A060374(n)` -/
def P15563645123648613371.Spec : Prop :=
  ∀ n, P15563645123648613371.a n = A117967 n

end A117967

/-! ## A117967.P3129467983586746223

`A060373(n)+A060372(A060373(n)+A060372(n))`
-/

namespace A117967.P3129467983586746223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n + A060372 (A060373 n + A060372 n).toNat

end

end A117967.P3129467983586746223

namespace A117967

/-- `A060373(n)+A060372(A060373(n)+A060372(n))` -/
def P3129467983586746223.Spec : Prop :=
  ∀ n, P3129467983586746223.a n = A117967 n

end A117967

/-! ## A117967.P7476779799040997544

`A338246(A338246(n)+A060373(n))+A060373(n)`
-/

namespace A117967.P7476779799040997544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A338246 n + A060373 n).toNat + A060373 n

end

end A117967.P7476779799040997544

namespace A117967

/-- `A338246(A338246(n)+A060373(n))+A060373(n)` -/
def P7476779799040997544.Spec : Prop :=
  ∀ n, P7476779799040997544.a n = A117967 n

end A117967

/-! ## A117967.P16806912111910307255

`A004488(n)+A004488(A005843(n))-A005843(n)`
-/

namespace A117967.P16806912111910307255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n + (A004488 (A005843 n).toNat - A005843 n)

end

end A117967.P16806912111910307255

namespace A117967

/-- `A004488(n)+A004488(A005843(n))-A005843(n)` -/
def P16806912111910307255.Spec : Prop :=
  ∀ n, P16806912111910307255.a n = A117967 n

end A117967

/-! ## A117967.P948852471314509150

`A060374(n)+A338246(A060374(n))-A338246(n)`
-/

namespace A117967.P948852471314509150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 n + (A338246 (A060374 n).toNat - A338246 n)

end

end A117967.P948852471314509150

namespace A117967

/-- `A060374(n)+A338246(A060374(n))-A338246(n)` -/
def P948852471314509150.Spec : Prop :=
  ∀ n, P948852471314509150.a n = A117967 n

end A117967

/-! ## A117967.P13208456634945645053

`2*A060372(A343317(n))-A060372(n)`
-/

namespace A117967.P13208456634945645053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060372 (A343317 n).toNat - A060372 n

end

end A117967.P13208456634945645053

namespace A117967

/-- `2*A060372(A343317(n))-A060372(n)` -/
def P13208456634945645053.Spec : Prop :=
  ∀ n, P13208456634945645053.a n = A117967 n

end A117967

/-! ## A117967.P4860479711752402801

`A060373(n)+A343317(n)+A060373(A343317(n))`
-/

namespace A117967.P4860479711752402801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n + (A343317 n + A060373 (A343317 n).toNat)

end

end A117967.P4860479711752402801

namespace A117967

/-- `A060373(n)+A343317(n)+A060373(A343317(n))` -/
def P4860479711752402801.Spec : Prop :=
  ∀ n, P4860479711752402801.a n = A117967 n

end A117967

/-! ## A117967.P10167864030336482649

`A338242(n)+n-A117966(A338242(n))`
-/

namespace A117967.P10167864030336482649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 n + ((n : ℤ) - A117966 (A338242 n).toNat)

end

end A117967.P10167864030336482649

namespace A117967

/-- `A338242(n)+n-A117966(A338242(n))` -/
def P10167864030336482649.Spec : Prop :=
  ∀ n, P10167864030336482649.a n = A117967 n

end A117967

/-! ## A117967.P155877776366022349

`A060373(3*n)+n`
-/

namespace A117967.P155877776366022349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (3 * n) + (n : ℤ)

end

end A117967.P155877776366022349

namespace A117967

/-- `A060373(3*n)+n` -/
def P155877776366022349.Spec : Prop :=
  ∀ n, P155877776366022349.a n = A117967 n

end A117967

/-! ## A117967.P3834588864060947256

`A060372(3*n)-2*n`
-/

namespace A117967.P3834588864060947256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (3 * n) - (2 * n : ℤ)

end

end A117967.P3834588864060947256

namespace A117967

/-- `A060372(3*n)-2*n` -/
def P3834588864060947256.Spec : Prop :=
  ∀ n, P3834588864060947256.a n = A117967 n

end A117967

/-! ## A117967.P9846614082141277495

`(A060374(3*n)-n)/2`
-/

namespace A117967.P9846614082141277495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060374 (3 * n) - (n : ℤ) : ℚ) / 2

end

end A117967.P9846614082141277495

namespace A117967

/-- `(A060374(3*n)-n)/2` -/
def P9846614082141277495.Spec : Prop :=
  ∀ n, P9846614082141277495.a n = (A117967 n : ℚ)

end A117967

/-!
# A117968: Negative part of inverse of A117966; write -n in balanced ternary and then replace (-1)'s with 2's.

The programs for A117968, the canonical program `A117968.P13461600208668365295` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117968 has offset 1).

The definition of A117968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117968.P13461600208668365295

`∑[Δ[A117967(n)]+1]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117968

/-- `∑[Δ[A117967(n)]+1]` -/
def P13461600208668365295.Spec : Prop :=
  ∀ n, P13461600208668365295.a n = A117968 (n + 1)

theorem P13461600208668365295.correct : P13461600208668365295.Spec := by
  intro n
  simp only [A117968, Nat.add_sub_cancel]

end A117968

/-! ## A117968.P1495653404122421259

`A117967(n+1)+1+n`
-/

namespace A117968.P1495653404122421259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (n + 1) + 1 + (n : ℤ)

end

end A117968.P1495653404122421259

namespace A117968

/-- `A117967(n+1)+1+n` -/
def P1495653404122421259.Spec : Prop :=
  ∀ n, P1495653404122421259.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P7145081840087192760

`A004488(a(n-1)+1)+n` with `a(0)=2`
-/

namespace A117968.P7145081840087192760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A004488 (a (n - 1) + 1).toNat + (n : ℤ)

end

end A117968.P7145081840087192760

namespace A117968

/-- `A004488(a(n-1)+1)+n` -/
def P7145081840087192760.Spec : Prop :=
  ∀ n, P7145081840087192760.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P6470139939645897307

`A004488(A117967(n+1))`
-/

namespace A117968.P6470139939645897307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A117967 (n + 1)).toNat

end

end A117968.P6470139939645897307

namespace A117968

/-- `A004488(A117967(n+1))` -/
def P6470139939645897307.Spec : Prop :=
  ∀ n, P6470139939645897307.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P8400961349005861718

`A157671(A338246(n+1))`
-/

namespace A117968.P8400961349005861718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (A338246 (n + 1)).toNat

end

end A117968.P8400961349005861718

namespace A117968

/-- `A157671(A338246(n+1))` -/
def P8400961349005861718.Spec : Prop :=
  ∀ n, P8400961349005861718.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P11987134545236129634

`A060374(n+1)+A060372(n+1)`
-/

namespace A117968.P11987134545236129634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060374 (n + 1) + A060372 (n + 1)

end

end A117968.P11987134545236129634

namespace A117968

/-- `A060374(n+1)+A060372(n+1)` -/
def P11987134545236129634.Spec : Prop :=
  ∀ n, P11987134545236129634.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P2098832744567276179

`A338247(n+1)+A132141(n+1)`
-/

namespace A117968.P2098832744567276179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 (n + 1) + A132141 (n + 1)

end

end A117968.P2098832744567276179

namespace A117968

/-- `A338247(n+1)+A132141(n+1)` -/
def P2098832744567276179.Spec : Prop :=
  ∀ n, P2098832744567276179.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P17436411864045265286

`A117966(n)+A004488(2*n+1)`
-/

namespace A117968.P17436411864045265286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n + A004488 (2 * n + 1)

end

end A117968.P17436411864045265286

namespace A117968

/-- `A117966(n)+A004488(2*n+1)` -/
def P17436411864045265286.Spec : Prop :=
  ∀ n, P17436411864045265286.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P9816751675086261685

`A060373(n+1)+2*A060372(n+1)`
-/

namespace A117968.P9816751675086261685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (n + 1) + 2 * A060372 (n + 1)

end

end A117968.P9816751675086261685

namespace A117968

/-- `A060373(n+1)+2*A060372(n+1)` -/
def P9816751675086261685.Spec : Prop :=
  ∀ n, P9816751675086261685.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P4642000557727847310

`2*A060374(n+1)-A060373(n+1)`
-/

namespace A117968.P4642000557727847310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060374 (n + 1) - A060373 (n + 1)

end

end A117968.P4642000557727847310

namespace A117968

/-- `2*A060374(n+1)-A060373(n+1)` -/
def P4642000557727847310.Spec : Prop :=
  ∀ n, P4642000557727847310.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P16096030647744306082

`∑[A004488(2*n+1)-A004488(2*n)]`
-/

namespace A117968.P16096030647744306082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (2 * n + 1) - A004488 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117968.P16096030647744306082

namespace A117968

/-- `∑[A004488(2*n+1)-A004488(2*n)]` -/
def P16096030647744306082.Spec : Prop :=
  ∀ n, P16096030647744306082.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P15188407074843609664

`A059249(2*(n+1))+A004488(n+1)-n`
-/

namespace A117968.P15188407074843609664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059249 (2 * (n + 1)) + (A004488 (n + 1) - (n : ℤ))

end

end A117968.P15188407074843609664

namespace A117968

/-- `A059249(2*(n+1))+A004488(n+1)-n` -/
def P15188407074843609664.Spec : Prop :=
  ∀ n, P15188407074843609664.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P14117920920174992503

`A004488(n)+A004488(A005408(n))-n`
-/

namespace A117968.P14117920920174992503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n + (A004488 (A005408 n).toNat - (n : ℤ))

end

end A117968.P14117920920174992503

namespace A117968

/-- `A004488(n)+A004488(A005408(n))-n` -/
def P14117920920174992503.Spec : Prop :=
  ∀ n, P14117920920174992503.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P203889664527596507

`A060372(n+1)+A060372(A343317(n+1))`
-/

namespace A117968.P203889664527596507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (n + 1) + A060372 (A343317 (n + 1)).toNat

end

end A117968.P203889664527596507

namespace A117968

/-- `A060372(n+1)+A060372(A343317(n+1))` -/
def P203889664527596507.Spec : Prop :=
  ∀ n, P203889664527596507.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P6402842365260760692

`A338245(A338245(n+1))+A132141(n+1)`
-/

namespace A117968.P6402842365260760692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338245 (A338245 (n + 1)).toNat + A132141 (n + 1)

end

end A117968.P6402842365260760692

namespace A117968

/-- `A338245(A338245(n+1))+A132141(n+1)` -/
def P6402842365260760692.Spec : Prop :=
  ∀ n, P6402842365260760692.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P6330840046310459416

`A157671(A117966(A004488(A157671(n+1))))`
-/

namespace A117968.P6330840046310459416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157671 (A117966 (A004488 (A157671 (n + 1)).toNat).toNat).toNat

end

end A117968.P6330840046310459416

namespace A117968

/-- `A157671(A117966(A004488(A157671(n+1))))` -/
def P6330840046310459416.Spec : Prop :=
  ∀ n, P6330840046310459416.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P9913629706608714722

`A005408(n)+A117966(A005408(n))+A117966(n)`
-/

namespace A117968.P9913629706608714722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (A117966 (A005408 n).toNat + A117966 n)

end

end A117968.P9913629706608714722

namespace A117968

/-- `A005408(n)+A117966(A005408(n))+A117966(n)` -/
def P9913629706608714722.Spec : Prop :=
  ∀ n, P9913629706608714722.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P10420865184590541639

`A338246(A060374(n+1))+A060374(A338246(n+1))`
-/

namespace A117968.P10420865184590541639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A060374 (n + 1)).toNat + A060374 (A338246 (n + 1)).toNat

end

end A117968.P10420865184590541639

namespace A117968

/-- `A338246(A060374(n+1))+A060374(A338246(n+1))` -/
def P10420865184590541639.Spec : Prop :=
  ∀ n, P10420865184590541639.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P5699477864502500855

`A060372(3*(n+1))-(n+1)`
-/

namespace A117968.P5699477864502500855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (3 * (n + 1)) - (n + 1 : ℤ)

end

end A117968.P5699477864502500855

namespace A117968

/-- `A060372(3*(n+1))-(n+1)` -/
def P5699477864502500855.Spec : Prop :=
  ∀ n, P5699477864502500855.a n = A117968 (n + 1)

end A117968

/-! ## A117968.P6779331063908240681

`A004488(A140265(2*n+1))+n`
-/

namespace A117968.P6779331063908240681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A140265 (2 * n + 1)).toNat + (n : ℤ)

end

end A117968.P6779331063908240681

namespace A117968

/-- `A004488(A140265(2*n+1))+n` -/
def P6779331063908240681.Spec : Prop :=
  ∀ n, P6779331063908240681.a n = A117968 (n + 1)

end A117968

/-!
# A117971: One-based position of the first 2 from the least significant digit in the ternary expansion of 2^n, or 0 if there are no 2's present.

The programs for A117971, there is no canonical definition to state claims against.
-/

/-! ## A117971.P16951716579035384282

`A003002(A276204(2^n))`
-/

namespace A117971.P16951716579035384282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A276204 (2 ^ n)).toNat

end

end A117971.P16951716579035384282

/-! ## A117971.P3090527766554072752

`A000720(A276204(2^n)+1)`
-/

namespace A117971.P3090527766554072752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A276204 (2 ^ n) + 1).toNat

end

end A117971.P3090527766554072752

/-! ## A117971.P14292766165554019885

`A000196(3*A276204(2^n))`
-/

namespace A117971.P14292766165554019885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (3 * A276204 (2 ^ n)).toNat

end

end A117971.P14292766165554019885

/-! ## A117971.P14960850106535661591

`A007305(3*A276204(2^n))`
-/

namespace A117971.P14960850106535661591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (3 * A276204 (2 ^ n)).toNat

end

end A117971.P14960850106535661591

/-! ## A117971.P3062429025290155321

`∑{d}[A276204(2^n), A101279(#)]`
-/

namespace A117971.P3062429025290155321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276204 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A101279 d

end

end A117971.P3062429025290155321

/-!
# A117972: Numerator of zeta'(-2n), n >= 0.

The programs for A117972, there is no canonical definition to state claims against.
-/

/-! ## A117972.P15494647045906880053

`(1-2*n)*a(n-1)*gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A117972.P15494647045906880053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (2 * n : ℤ)) * a (n - 1) * (Int.gcd (n : ℤ) (a (n - 1)) : ℤ)

end

end A117972.P15494647045906880053

/-! ## A117972.P2806395585470964522

`A033999(n)*A049606(2*n)`
-/

namespace A117972.P2806395585470964522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A049606 (2 * n)

end

end A117972.P2806395585470964522

/-! ## A117972.P4019207190154581759

`A039757(A000217(n))*A049606(n)`
-/

namespace A117972.P4019207190154581759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039757 (A000217 n).toNat * A049606 n

end

end A117972.P4019207190154581759

/-! ## A117972.P16707519934647082333

`A049606(A004277(n))/A033999(n)`
-/

namespace A117972.P16707519934647082333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 (A004277 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A117972.P16707519934647082333

/-! ## A117972.P10902434421123844993

`A049606(A005843(n))*A057079(3*n)`
-/

namespace A117972.P10902434421123844993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 (A005843 n).toNat * A057079 (3 * n)

end

end A117972.P10902434421123844993

/-!
# A117973: a(n) = 2^(wt(n)+1), where wt() = A000120().

The programs for A117973, the canonical program `A117973.P11230116199213534894` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117973 has offset 0).

The definition of A117973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117973.P11230116199213534894

`2*A001316(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A117973

/-- `2*A001316(n)` -/
def P11230116199213534894.Spec : Prop :=
  ∀ n, P11230116199213534894.a n = A117973 n

theorem P11230116199213534894.correct : P11230116199213534894.Spec := by
  intro n
  simp only [A117973]

end A117973

/-! ## A117973.P13779224316550224359

`2*a(and(n, n-1))` with `a(0)=2`
-/

namespace A117973.P13779224316550224359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A117973.P13779224316550224359

namespace A117973

/-- `2*a(and(n, n-1))` -/
def P13779224316550224359.Spec : Prop :=
  ∀ n, (P13779224316550224359.a n : ℤ) = A117973 n

end A117973

/-! ## A117973.P3308822744676168199

`2*a(or(n, -n)+n)` with `a(0)=2`
-/

namespace A117973.P3308822744676168199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (Int.lor (n : ℤ) (-(n : ℤ)) + (n : ℤ)).toNat

end

end A117973.P3308822744676168199

namespace A117973

/-- `2*a(or(n, -n)+n)` -/
def P3308822744676168199.Spec : Prop :=
  ∀ n, (P3308822744676168199.a n : ℤ) = A117973 n

end A117973

/-! ## A117973.P16898142222797204800

`2*lcm(n, a(n-1))/n` with `a(0)=2`
-/

namespace A117973.P16898142222797204800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * ((Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ))

end

end A117973.P16898142222797204800

namespace A117973

/-- `2*lcm(n, a(n-1))/n` -/
def P16898142222797204800.Spec : Prop :=
  ∀ n, P16898142222797204800.a n = (A117973 n : ℚ)

end A117973

/-! ## A117973.P5976458661284075577

`2*a(n-2^floor(log2(n)))` with `a(0)=2`
-/

namespace A117973.P5976458661284075577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 2 ^ Nat.log 2 n)

end

end A117973.P5976458661284075577

namespace A117973

/-- `2*a(n-2^floor(log2(n)))` -/
def P5976458661284075577.Spec : Prop :=
  ∀ n, (P5976458661284075577.a n : ℤ) = A117973 n

end A117973

/-! ## A117973.P7587794488662180961

`4/abs(2/a(and(n, n-1)))` with `a(0)=2`
-/

namespace A117973.P7587794488662180961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  4 / |2 / a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

end

end A117973.P7587794488662180961

namespace A117973

/-- `4/abs(2/a(and(n, n-1)))` -/
def P7587794488662180961.Spec : Prop :=
  ∀ n, P7587794488662180961.a n = (A117973 n : ℚ)

end A117973

/-! ## A117973.P10074238775777056333

`(a(n-1)+a(n-1))/gcd(a(n-1)+n, a(n-1))` with `a(0)=2`
-/

namespace A117973.P10074238775777056333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) + a (n - 1)) / (Int.gcd (SequenceMachineLib.roundAway (a (n - 1) + (n : ℚ))) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A117973.P10074238775777056333

namespace A117973

/-- `(a(n-1)+a(n-1))/gcd(a(n-1)+n, a(n-1))` -/
def P10074238775777056333.Spec : Prop :=
  ∀ n, P10074238775777056333.a n = (A117973 n : ℚ)

end A117973

/-! ## A117973.P5160546546204520940

`Δ[A080978(n)]`
-/

namespace A117973.P5160546546204520940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117973.P5160546546204520940

namespace A117973

/-- `Δ[A080978(n)]` -/
def P5160546546204520940.Spec : Prop :=
  ∀ n, P5160546546204520940.a n = A117973 n

end A117973

/-! ## A117973.P14054806959057121479

`A256257(n)/3`
-/

namespace A117973.P14054806959057121479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256257 n : ℚ) / 3

end

end A117973.P14054806959057121479

namespace A117973

/-- `A256257(n)/3` -/
def P14054806959057121479.Spec : Prop :=
  ∀ n, P14054806959057121479.a n = (A117973 n : ℚ)

end A117973

/-! ## A117973.P16497549278737296968

`lcm(2, A167275(n))`
-/

namespace A117973.P16497549278737296968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A167275 n)

end

end A117973.P16497549278737296968

namespace A117973

/-- `lcm(2, A167275(n))` -/
def P16497549278737296968.Spec : Prop :=
  ∀ n, (P16497549278737296968.a n : ℤ) = A117973 n

end A117973

/-! ## A117973.P15205241732102619460

`A001316(Δ[n²])`
-/

namespace A117973.P15205241732102619460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A117973.P15205241732102619460

namespace A117973

/-- `A001316(Δ[n²])` -/
def P15205241732102619460.Spec : Prop :=
  ∀ n, P15205241732102619460.a n = A117973 n

end A117973

/-! ## A117973.P1158769197687835609

`2*sqrt(A102376(n))`
-/

namespace A117973.P1158769197687835609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A102376 n : ℝ)

end

end A117973.P1158769197687835609

namespace A117973

/-- `2*sqrt(A102376(n))` -/
def P1158769197687835609.Spec : Prop :=
  ∀ n, P1158769197687835609.a n = (A117973 n : ℝ)

end A117973

/-! ## A117973.P17550469825249240635

`Δ[A159912(n)]+1`
-/

namespace A117973.P17550469825249240635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A117973.P17550469825249240635

namespace A117973

/-- `Δ[A159912(n)]+1` -/
def P17550469825249240635.Spec : Prop :=
  ∀ n, P17550469825249240635.a n = A117973 n

end A117973

/-! ## A117973.P7937934404701383101

`Δ[2*A006046(n)]`
-/

namespace A117973.P7937934404701383101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117973.P7937934404701383101

namespace A117973

/-- `Δ[2*A006046(n)]` -/
def P7937934404701383101.Spec : Prop :=
  ∀ n, P7937934404701383101.a n = A117973 n

end A117973

/-! ## A117973.P7808533952016740785

`Δ[A256256(n)/3]`
-/

namespace A117973.P7808533952016740785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256256 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117973.P7808533952016740785

namespace A117973

/-- `Δ[A256256(n)/3]` -/
def P7808533952016740785.Spec : Prop :=
  ∀ n, P7808533952016740785.a n = (A117973 n : ℚ)

end A117973

/-! ## A117973.P16660356774460705118

`2*(A038573(n)+1)`
-/

namespace A117973.P16660356774460705118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A038573 n + 1)

end

end A117973.P16660356774460705118

namespace A117973

/-- `2*(A038573(n)+1)` -/
def P16660356774460705118.Spec : Prop :=
  ∀ n, P16660356774460705118.a n = A117973 n

end A117973

/-! ## A117973.P11361310377691740588

`2*A060632(2*n)`
-/

namespace A117973.P11361310377691740588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060632 (2 * n)

end

end A117973.P11361310377691740588

namespace A117973

/-- `2*A060632(2*n)` -/
def P11361310377691740588.Spec : Prop :=
  ∀ n, P11361310377691740588.a n = A117973 n

end A117973

/-! ## A117973.P12703876865777636396

`2/3*A160713(n)`
-/

namespace A117973.P12703876865777636396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A160713 n : ℚ)

end

end A117973.P12703876865777636396

namespace A117973

/-- `2/3*A160713(n)` -/
def P12703876865777636396.Spec : Prop :=
  ∀ n, P12703876865777636396.a n = (A117973 n : ℚ)

end A117973

/-! ## A117973.P7612401706457419822

`2^(1+A000120(n))`
-/

namespace A117973.P7612401706457419822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + A000120 n : ℤ)

end

end A117973.P7612401706457419822

namespace A117973

/-- `2^(1+A000120(n))` -/
def P7612401706457419822.Spec : Prop :=
  ∀ n, P7612401706457419822.a n = (A117973 n : ℚ)

end A117973

/-! ## A117973.P2974142711280899261

`2^A063787(n+1)`
-/

namespace A117973.P2974142711280899261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A063787 (n + 1) : ℤ)

end

end A117973.P2974142711280899261

namespace A117973

/-- `2^A063787(n+1)` -/
def P2974142711280899261.Spec : Prop :=
  ∀ n, P2974142711280899261.a n = (A117973 n : ℚ)

end A117973

/-!
# A117974: Triangle where a(1,1)=1; a(n,m) = number of positive integers which are missing from row (n-1) of the triangle, are <= m and are coprime to m.

The programs for A117974, there is no canonical definition to state claims against.
-/

/-! ## A117974.P17591166664819394232

`A168570(A303760(n)+A174790(n))`
-/

namespace A117974.P17591166664819394232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (A303760 n + A174790 n).toNat

end

end A117974.P17591166664819394232

/-! ## A117974.P15796754644199048355

`A066032(xor(A155803(n), A251627(n)))`
-/

namespace A117974.P15796754644199048355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066032 (Int.xor (A155803 n) (A251627 n)).toNat

end

end A117974.P15796754644199048355

/-! ## A117974.P16711170267279154577

`A124762(A241283(n+2)%A345330(n+1))`
-/

namespace A117974.P16711170267279154577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (Int.tmod (A241283 (n + 2)) (A345330 (n + 1))).toNat

end

end A117974.P16711170267279154577

/-! ## A117974.P7833398960235219957

`A026007(n+3)%A001222(A201729(n+1))`
-/

namespace A117974.P7833398960235219957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026007 (n + 3)) (A001222 (A201729 (n + 1)).toNat)

end

end A117974.P7833398960235219957

/-! ## A117974.P1661668883229857180

`A268643(A141214(2*(n+1))*A316842(n+1))`
-/

namespace A117974.P1661668883229857180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A141214 (2 * (n + 1)) * A316842 (n + 1)).toNat

end

end A117974.P1661668883229857180

/-!
# A117976: Legendre-binomial transform of 2^n for p=3.

The programs for A117976, there is no canonical definition to state claims against.
-/

/-! ## A117976.P983414588828733411

`A117984(n)/A117981(n)`
-/

namespace A117976.P983414588828733411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117984 n : ℚ) / (A117981 n : ℚ)

end

end A117976.P983414588828733411

/-! ## A117976.P13722285470601755886

`∏{p}[A018530(n+1), A004273(#)]`
-/

namespace A117976.P13722285470601755886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004273 p

end

end A117976.P13722285470601755886

/-! ## A117976.P9258499828133620323

`∏{p}[A018530(n+1), A118820(#)]`
-/

namespace A117976.P9258499828133620323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A118820 p

end

end A117976.P9258499828133620323

/-! ## A117976.P16780372076259022003

`∏{p}[A018530(n+1), A121048(#)]`
-/

namespace A117976.P16780372076259022003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A121048 p

end

end A117976.P16780372076259022003

/-! ## A117976.P7731921991334153322

`A065365(A117977(n))`
-/

namespace A117976.P7731921991334153322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065365 (A117977 n).toNat

end

end A117976.P7731921991334153322

/-!
# A117977: Legendre-binomial transform of 3^n for p=3.

The programs for A117977, there is no canonical definition to state claims against.
-/

/-! ## A117977.P5161535666972552362

`A117966(A173019(n))`
-/

namespace A117977.P5161535666972552362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A173019 n).toNat

end

end A117977.P5161535666972552362

/-! ## A117977.P11866568247919419198

`∑[∏[dr(A186571(2*n+1))]]`
-/

namespace A117977.P11866568247919419198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A186571 (2 * n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117977.P11866568247919419198

/-!
# A117978: Triangular numbers with only even digits.

The programs for A117978, there is no canonical definition to state claims against.
-/

/-! ## A117978.P11842538886242867065

`∩[A014263(n+1), A000217(n)]`
-/

namespace A117978.P11842538886242867065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117978.P11842538886242867065

/-! ## A117978.P686345092712728003

`∩[A014263(n+1), A014494(n)]`
-/

namespace A117978.P686345092712728003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117978.P686345092712728003

/-! ## A117978.P5814394589767700214

`∩[A014263(n+1), A253145(n)]`
-/

namespace A117978.P5814394589767700214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117978.P5814394589767700214

/-! ## A117978.P18386812178413911563

`∩[A014494(n), A024657(n)]`
-/

namespace A117978.P18386812178413911563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117978.P18386812178413911563

/-! ## A117978.P8296783717332910339

`∩[A059708(n+1), A014494(n)]`
-/

namespace A117978.P8296783717332910339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117978.P8296783717332910339

/-!
# A117980: Legendre-binomial transform of (-1)^n for p=3.

The programs for A117980, the canonical program `A117980.P14049003659201117046` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117980 has offset 0).

The definition of A117980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117980.P14049003659201117046

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A117980

/-- `a(floor(n/3))*a(n%3)` -/
def P14049003659201117046.Spec : Prop :=
  ∀ n, (P14049003659201117046.a n : ℤ) = A117980 n

theorem P14049003659201117046.correct : P14049003659201117046.Spec := by
  intro n
  simp only [A117980]

end A117980

/-! ## A117980.P1969876144360597260

`A084681(A006047(n))`
-/

namespace A117980.P1969876144360597260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A006047 n).toNat

end

end A117980.P1969876144360597260

namespace A117980

/-- `A084681(A006047(n))` -/
def P1969876144360597260.Spec : Prop :=
  ∀ n, P1969876144360597260.a n = A117980 n

end A117980

/-! ## A117980.P3470196155146557910

`A006047(n)*A088917(n)`
-/

namespace A117980.P3470196155146557910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n * A088917 n

end

end A117980.P3470196155146557910

namespace A117980

/-- `A006047(n)*A088917(n)` -/
def P3470196155146557910.Spec : Prop :=
  ∀ n, P3470196155146557910.a n = A117980 n

end A117980

/-! ## A117980.P3270776760492232073

`A088917(n)*A125562(n)`
-/

namespace A117980.P3270776760492232073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n * A125562 n

end

end A117980.P3270776760492232073

namespace A117980

/-- `A088917(n)*A125562(n)` -/
def P3270776760492232073.Spec : Prop :=
  ∀ n, P3270776760492232073.a n = A117980 n

end A117980

/-! ## A117980.P11602255944578965152

`char[A167878(n)]*A006047(n)`
-/

namespace A117980.P11602255944578965152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167878 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006047 n

end

end A117980.P11602255944578965152

namespace A117980

/-- `char[A167878(n)]*A006047(n)` -/
def P11602255944578965152.Spec : Prop :=
  ∀ n, P11602255944578965152.a n = A117980 n

end A117980

/-! ## A117980.P15716727911508745911

`A141310(A006047(n)+1)-2`
-/

namespace A117980.P15716727911508745911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A006047 n + 1).toNat - 2

end

end A117980.P15716727911508745911

namespace A117980

/-- `A141310(A006047(n)+1)-2` -/
def P15716727911508745911.Spec : Prop :=
  ∀ n, P15716727911508745911.a n = A117980 n

end A117980

/-! ## A117980.P1839049594974179988

`(1-A316829(n))*A006047(n)`
-/

namespace A117980.P1839049594974179988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A316829 n) * A006047 n

end

end A117980.P1839049594974179988

namespace A117980

/-- `(1-A316829(n))*A006047(n)` -/
def P1839049594974179988.Spec : Prop :=
  ∀ n, P1839049594974179988.a n = A117980 n

end A117980

/-! ## A117980.P18400003980171749278

`(2-A105220(n))*A006047(n)`
-/

namespace A117980.P18400003980171749278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A105220 n) * A006047 n

end

end A117980.P18400003980171749278

namespace A117980

/-- `(2-A105220(n))*A006047(n)` -/
def P18400003980171749278.Spec : Prop :=
  ∀ n, P18400003980171749278.a n = A117980 n

end A117980

/-! ## A117980.P1416681660357577666

`A120880(n)%2*A006047(n)`
-/

namespace A117980.P1416681660357577666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120880 n) 2 * A006047 n

end

end A117980.P1416681660357577666

namespace A117980

/-- `A120880(n)%2*A006047(n)` -/
def P1416681660357577666.Spec : Prop :=
  ∀ n, P1416681660357577666.a n = A117980 n

end A117980

/-! ## A117980.P10861583437853544660

`floor(acot(A062756(n)))*A006047(n)`
-/

namespace A117980.P10861583437853544660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A062756 n : ℝ)⌋ * A006047 n

end

end A117980.P10861583437853544660

namespace A117980

/-- `floor(acot(A062756(n)))*A006047(n)` -/
def P10861583437853544660.Spec : Prop :=
  ∀ n, P10861583437853544660.a n = A117980 n

end A117980

/-! ## A117980.P12808933040958673458

`floor(1/A261787(n))*A006047(n)`
-/

namespace A117980.P12808933040958673458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A261787 n : ℚ)⌋ * A006047 n

end

end A117980.P12808933040958673458

namespace A117980

/-- `floor(1/A261787(n))*A006047(n)` -/
def P12808933040958673458.Spec : Prop :=
  ∀ n, P12808933040958673458.a n = A117980 n

end A117980

/-! ## A117980.P13454826092863305112

`char[A005823(n+1)]*A006047(n)`
-/

namespace A117980.P13454826092863305112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006047 n

end

end A117980.P13454826092863305112

namespace A117980

/-- `char[A005823(n+1)]*A006047(n)` -/
def P13454826092863305112.Spec : Prop :=
  ∀ n, P13454826092863305112.a n = A117980 n

end A117980

/-! ## A117980.P3994342425106677934

`char[A191106(n+1)-1]*A006047(n)`
-/

namespace A117980.P3994342425106677934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006047 n

end

end A117980.P3994342425106677934

namespace A117980

/-- `char[A191106(n+1)-1]*A006047(n)` -/
def P3994342425106677934.Spec : Prop :=
  ∀ n, P3994342425106677934.a n = A117980 n

end A117980

/-! ## A117980.P8793856575522613836

`char[2*A005836(n+1)]*A006047(n)`
-/

namespace A117980.P8793856575522613836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006047 n

end

end A117980.P8793856575522613836

namespace A117980

/-- `char[2*A005836(n+1)]*A006047(n)` -/
def P8793856575522613836.Spec : Prop :=
  ∀ n, P8793856575522613836.a n = A117980 n

end A117980

/-! ## A117980.P1081712697220950450

`A000010(3*A006047(n))-A006047(n)`
-/

namespace A117980.P1081712697220950450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * A006047 n).toNat - A006047 n

end

end A117980.P1081712697220950450

namespace A117980

/-- `A000010(3*A006047(n))-A006047(n)` -/
def P1081712697220950450.Spec : Prop :=
  ∀ n, P1081712697220950450.a n = A117980 n

end A117980

/-! ## A117980.P5595132191394455161

`∏{p}[A006047(n), A062302(#+1)]*A006047(n)`
-/

namespace A117980.P5595132191394455161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A062302 (p + 1)) * A006047 n

end

end A117980.P5595132191394455161

namespace A117980

/-- `∏{p}[A006047(n), A062302(#+1)]*A006047(n)` -/
def P5595132191394455161.Spec : Prop :=
  ∀ n, P5595132191394455161.a n = A117980 n

end A117980

/-! ## A117980.P5963594933552966684

`A006047(n)*A189718(A189728(n+1)%A189634(n+1))`
-/

namespace A117980.P5963594933552966684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n * A189718 (Int.tmod (A189728 (n + 1)) (A189634 (n + 1))).toNat

end

end A117980.P5963594933552966684

namespace A117980

/-- `A006047(n)*A189718(A189728(n+1)%A189634(n+1))` -/
def P5963594933552966684.Spec : Prop :=
  ∀ n, P5963594933552966684.a n = A117980 n

end A117980

/-! ## A117980.P15359236957240274550

`A259346(A120879(n))`
-/

namespace A117980.P15359236957240274550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A120879 n).toNat

end

end A117980.P15359236957240274550

namespace A117980

/-- `A259346(A120879(n))` -/
def P15359236957240274550.Spec : Prop :=
  ∀ n, P15359236957240274550.a n = A117980 n

end A117980

/-! ## A117980.P13014107952163893104

`A117940(A007494(n))`
-/

namespace A117980.P13014107952163893104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117940 (A007494 n).toNat

end

end A117980.P13014107952163893104

namespace A117980

/-- `A117940(A007494(n))` -/
def P13014107952163893104.Spec : Prop :=
  ∀ n, P13014107952163893104.a n = A117980 n

end A117980

/-! ## A117980.P4329077878880132548

`A117940(A014682(n))`
-/

namespace A117980.P4329077878880132548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117940 (A014682 n).toNat

end

end A117980.P4329077878880132548

namespace A117980

/-- `A117940(A014682(n))` -/
def P4329077878880132548.Spec : Prop :=
  ∀ n, P4329077878880132548.a n = A117980 n

end A117980

/-!
# A117981: A modified Legendre-binomial transform of 2^n for p=3.

The programs for A117981, there is no canonical definition to state claims against.
-/

/-! ## A117981.P12299993522003510324

`A117984(n)/A117976(n)`
-/

namespace A117981.P12299993522003510324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117984 n : ℚ) / (A117976 n : ℚ)

end

end A117981.P12299993522003510324

/-! ## A117981.P958180501040613531

`A117984(n)/∏{p}[A018530(n+1), A004273(#)]`
-/

namespace A117981.P958180501040613531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117984 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004273 p : ℤ) : ℚ)

end

end A117981.P958180501040613531

/-! ## A117981.P12511487176319691380

`A117984(n)/∏{p}[A018530(n+1), A118820(#)]`
-/

namespace A117981.P12511487176319691380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117984 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A118820 p : ℤ) : ℚ)

end

end A117981.P12511487176319691380

/-! ## A117981.P3053881426015765099

`A117984(n)/∏{p}[A018530(n+1), A121048(#)]`
-/

namespace A117981.P3053881426015765099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018530 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117984 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A121048 p : ℤ) : ℚ)

end

end A117981.P3053881426015765099

/-! ## A117981.P6620322690336029330

`A065365(A117983(n))`
-/

namespace A117981.P6620322690336029330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065365 (A117983 n).toNat

end

end A117981.P6620322690336029330

/-!
# A117982: Trisection of A117981.

The programs for A117982, there is no canonical definition to state claims against.
-/

/-! ## A117982.P11839734741319122236

`A117981(3*n)`
-/

namespace A117982.P11839734741319122236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117981 (3 * n)

end

end A117982.P11839734741319122236

/-! ## A117982.P17630880893243075445

`record[A117981(A006368(n))]`
-/

namespace A117982.P17630880893243075445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117981 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117982.P17630880893243075445

/-! ## A117982.P3063765463892370113

`record[A117981(A071045(n))]`
-/

namespace A117982.P3063765463892370113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117981 (A071045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117982.P3063765463892370113

/-! ## A117982.P8340180714538120453

`record[A117981(A117572(n))]`
-/

namespace A117982.P8340180714538120453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117981 (A117572 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117982.P8340180714538120453

/-!
# A117983: A modified Legendre-binomial transform of 3^n for p=3.

The programs for A117983, there is no canonical definition to state claims against.
-/

/-! ## A117983.P8412676312433644347

`A117966(A182069(n))`
-/

namespace A117983.P8412676312433644347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A182069 n).toNat

end

end A117983.P8412676312433644347

/-! ## A117983.P1641743867430316537

`A004488(A182069(n))-A330740(A255286(n))`
-/

namespace A117983.P1641743867430316537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A182069 n).toNat - A330740 (A255286 n).toNat

end

end A117983.P1641743867430316537

/-! ## A117983.P9988592591114387055

`A341055(3*a(n-1))` with `a(0)=1`
-/

namespace A117983.P9988592591114387055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341055 (3 * a (n - 1)).toNat

end

end A117983.P9988592591114387055

/-! ## A117983.P6788342109201720804

`A341055(lcm(3, a(n-1)))` with `a(0)=1`
-/

namespace A117983.P6788342109201720804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341055 (Int.lcm 3 (a (n - 1)))

end

end A117983.P6788342109201720804

/-! ## A117983.P3942025588231770638

`A327252(A255286(n))`
-/

namespace A117983.P3942025588231770638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 (A255286 n).toNat

end

end A117983.P3942025588231770638

/-!
# A117984: A modified Legendre-binomial transform of 4^n for p=3.

The programs for A117984, there is no canonical definition to state claims against.
-/

/-! ## A117984.P4553337068626617331

`A117976(n)*A117981(n)`
-/

namespace A117984.P4553337068626617331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117976 n * A117981 n

end

end A117984.P4553337068626617331

/-! ## A117984.P12259971999623241078

`lcm(A117976(n), A117981(A028310(n)))`
-/

namespace A117984.P12259971999623241078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117976 n) (A117981 (A028310 n).toNat)

end

end A117984.P12259971999623241078

/-! ## A117984.P10322574972544503261

`lcm(A117976(n)%A239812(n+1), A117981(n))`
-/

namespace A117984.P10322574972544503261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A117976 n) (A239812 (n + 1))) (A117981 n)

end

end A117984.P10322574972544503261

/-! ## A117984.P13778948264221512224

`∏{p}[A018530(n+1), A004273(#)]*A117981(n)`
-/

namespace A117984.P13778948264221512224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004273 p) * A117981 n

end

end A117984.P13778948264221512224

/-! ## A117984.P11188227004510574695

`∏{p}[A018530(n+1), A118820(#)]*A117981(n)`
-/

namespace A117984.P11188227004510574695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A118820 p) * A117981 n

end

end A117984.P11188227004510574695

/-!
# A117985: Pentagonal numbers with only odd digits.

The programs for A117985, there is no canonical definition to state claims against.
-/

/-! ## A117985.P4509351164173694680

`∩[A014261(n+1), A000326(n)]`
-/

namespace A117985.P4509351164173694680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117985.P4509351164173694680

/-! ## A117985.P14458948376584633701

`∩[A014261(n+1), A014632(n)]`
-/

namespace A117985.P14458948376584633701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117985.P14458948376584633701

/-! ## A117985.P3573544332460434372

`∩[A059708(n+1), A014632(n)]`
-/

namespace A117985.P3573544332460434372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014632 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117985.P3573544332460434372

/-! ## A117985.P9380224234187004114

`record[A059707(A014632(n))]`
-/

namespace A117985.P9380224234187004114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (A014632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117985.P9380224234187004114

/-! ## A117985.P10323291311517556682

`record[A059707(sqrt(A014769(n)))]`
-/

namespace A117985.P10323291311517556682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 (SequenceMachineLib.roundAway (Real.sqrt (A014769 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117985.P10323291311517556682

/-!
# A117987: Number of functions f:[n]->[n] such that f[(2*x) mod n]=[2*f(x)] mod n for all x in [n], for n=1,2,3,... Here [n] denotes {0,1,2,...,n-1}.

The programs for A117987, there is no canonical definition to state claims against.
-/

/-! ## A117987.P17623386809746417883

`A003473(n+1)/A204984(A187829(n+1))`
-/

namespace A117987.P17623386809746417883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003473 (n + 1) : ℚ) / (A204984 (A187829 (n + 1)).toNat : ℚ)

end

end A117987.P17623386809746417883

/-! ## A117987.P8689447575614968098

`(n+1)*A027362(n+1)/A204984(A187829(n+1))`
-/

namespace A117987.P8689447575614968098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A027362 (n + 1) : ℚ) / (A204984 (A187829 (n + 1)).toNat : ℚ)

end

end A117987.P8689447575614968098

/-! ## A117987.P8465093368200208952

`(2^(n+1)-A086324(n+1))/A204984(A187829(n+1))`
-/

namespace A117987.P8465093368200208952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A086324 (n + 1) : ℚ) / (A204984 (A187829 (n + 1)).toNat : ℚ)

end

end A117987.P8465093368200208952

/-! ## A117987.P9713821458858578000

`(A086323(n+1)-A086479(n+1))/A204984(A187829(n+1))`
-/

namespace A117987.P9713821458858578000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086323 (n + 1) - A086479 (n + 1) : ℚ) / (A204984 (A187829 (n + 1)).toNat : ℚ)

end

end A117987.P9713821458858578000

/-! ## A117987.P5837824894384350475

`(2^(n+1)-A086328(n+1)-A086479(n+1))/A204984(A187829(n+1))`
-/

namespace A117987.P5837824894384350475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A086328 (n + 1) - A086479 (n + 1) : ℚ) / (A204984 (A187829 (n + 1)).toNat : ℚ)

end

end A117987.P5837824894384350475

/-!
# A117988: Number of functions f:[n]->[n] such that f[(x^2) mod n]=[f(x)^2] mod n for all x in [n], for n=1,2,3,... Here [n] denotes {0,1,2,...,n-1}.

The programs for A117988, there is no canonical definition to state claims against.
-/

/-! ## A117988.P3166319164654790300

`A097918(∑[∑{d}[n, #]]+1)^∑{e}[n+1, #]`
-/

namespace A117988.P3166319164654790300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097918 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

end

end A117988.P3166319164654790300

/-! ## A117988.P8632920176653296388

`record[A243070(A026010(n)²)]`
-/

namespace A117988.P8632920176653296388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (A026010 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117988.P8632920176653296388

/-!
# A117989: Number of partitions of n such that the least part occurs at least twice.

The programs for A117989, there is no canonical definition to state claims against.
-/

/-! ## A117989.P2695634476136599466

`2*A000041(n+1)-A000041(n+2)`
-/

namespace A117989.P2695634476136599466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000041 (n + 1) - A000041 (n + 2)

end

end A117989.P2695634476136599466

/-! ## A117989.P1540642309112235371

`A056823(n+2)-2*A056823(n+1)`
-/

namespace A117989.P1540642309112235371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 (n + 2) - 2 * A056823 (n + 1)

end

end A117989.P1540642309112235371

/-! ## A117989.P7754879782298741998

`A000041(n)-A053445(n)`
-/

namespace A117989.P7754879782298741998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A053445 n

end

end A117989.P7754879782298741998

/-! ## A117989.P18039530897526975643

`∑[A002865(n)]-A053445(n)`
-/

namespace A117989.P18039530897526975643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053445 n

end

end A117989.P18039530897526975643

/-! ## A117989.P6197576686125897906

`A000065(n)+1-A053445(n)`
-/

namespace A117989.P6197576686125897906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A053445 n)

end

end A117989.P6197576686125897906

/-! ## A117989.P3595534508770811058

`A000041(n)-Δ[A002865(n+1)]`
-/

namespace A117989.P3595534508770811058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (f1 (n + 1) - f1 n)

end

end A117989.P3595534508770811058

/-! ## A117989.P13644406150599404560

`A229816(n+1)-A008483(n+2)`
-/

namespace A117989.P13644406150599404560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 (n + 1) - A008483 (n + 2)

end

end A117989.P13644406150599404560

/-! ## A117989.P8126073394250314518

`A000041(n+1)-A002865(n+2)`
-/

namespace A117989.P8126073394250314518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A002865 (n + 2)

end

end A117989.P8126073394250314518

/-! ## A117989.P5923113581917626930

`A000065(n+1)-A083751(n+2)`
-/

namespace A117989.P5923113581917626930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) - A083751 (n + 2)

end

end A117989.P5923113581917626930

/-! ## A117989.P10303985422927090414

`A000041(n+1)-A187219(n+2)`
-/

namespace A117989.P10303985422927090414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A187219 (n + 2)

end

end A117989.P10303985422927090414

/-! ## A117989.P15564252359125559118

`A000041(n+1)-(A083751(n+2)+1)`
-/

namespace A117989.P15564252359125559118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A083751 (n + 2) + 1)

end

end A117989.P15564252359125559118

/-! ## A117989.P11922612401762299215

`A000065(n+1)+1-A187219(n+2)`
-/

namespace A117989.P11922612401762299215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (1 - A187219 (n + 2))

end

end A117989.P11922612401762299215

/-! ## A117989.P3757571318329125506

`A002620(n+1)+A362548(n+1)-A083751(n+2)`
-/

namespace A117989.P3757571318329125506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A362548 (n + 1) - A083751 (n + 2))

end

end A117989.P3757571318329125506

/-! ## A117989.P2671839691035997586

`A229816(n+3)-A027336(n+3)`
-/

namespace A117989.P2671839691035997586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229816 (n + 3) - A027336 (n + 3)

end

end A117989.P2671839691035997586

/-! ## A117989.P1123598873996207189

`A000065(n+1)+A000065(n+1)-A007042(n+1)`
-/

namespace A117989.P1123598873996207189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (A000065 (n + 1) - A007042 (n + 1))

end

end A117989.P1123598873996207189

/-! ## A117989.P13521521526620460171

`A139582(n+1)-A000041(n+2)`
-/

namespace A117989.P13521521526620460171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 (n + 1) - A000041 (n + 2)

end

end A117989.P13521521526620460171

/-! ## A117989.P6639356194340694064

`Δ[A058884(n+1)]`
-/

namespace A117989.P6639356194340694064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117989.P6639356194340694064

/-! ## A117989.P10348405258171324674

`A058884(n+2)-A058884(n+1)`
-/

namespace A117989.P10348405258171324674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058884 (n + 2) - A058884 (n + 1)

end

end A117989.P10348405258171324674

/-! ## A117989.P2834173552120248125

`Δ[A000070(n)-Δ[A000070(n)]]`
-/

namespace A117989.P2834173552120248125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117989.P2834173552120248125

/-! ## A117989.P9021953349448932920

`A265258(n+1)-A000070(n+2)`
-/

namespace A117989.P9021953349448932920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265258 (n + 1) - A000070 (n + 2)

end

end A117989.P9021953349448932920

/-!
# A117990: Pentagonal numbers with only even digits.

The programs for A117990, there is no canonical definition to state claims against.
-/

/-! ## A117990.P4688297871267792926

`record[A001613(A059717(C(n, 2)+n²))]`
-/

namespace A117990.P4688297871267792926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A059717 (Nat.choose n 2 + n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117990.P4688297871267792926

/-! ## A117990.P6657064117336804048

`record[A001613(A059717(C(3*n, 2)/3))]`
-/

namespace A117990.P6657064117336804048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A059717 (SequenceMachineLib.roundAway ((Nat.choose (3 * n) 2 : ℚ) / 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117990.P6657064117336804048

/-!
# A117991: Number of distinct rational numbers that can be written as fractions of the first n composite numbers.

The programs for A117991, there is no canonical definition to state claims against.
-/

/-! ## A117991.P14067119540727577068

`2*A117992(n+1)+1`
-/

namespace A117991.P14067119540727577068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117992 (n + 1) + 1

end

end A117991.P14067119540727577068

/-! ## A117991.P17377943173455053429

`A005408(A117992(n+1))`
-/

namespace A117991.P17377943173455053429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A117992 (n + 1)).toNat

end

end A117991.P17377943173455053429

/-! ## A117991.P16405577748491897762

`A004273(A117992(n+1)+1)`
-/

namespace A117991.P16405577748491897762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A117992 (n + 1) + 1).toNat

end

end A117991.P16405577748491897762

/-! ## A117991.P16757436089022255045

`A060747(A117992(n+1)+1)`
-/

namespace A117991.P16757436089022255045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A117992 (n + 1) + 1).toNat

end

end A117991.P16757436089022255045

/-! ## A117991.P4262555281114350591

`A004442(2*A117992(n+1))`
-/

namespace A117991.P4262555281114350591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A117992 (n + 1)).toNat

end

end A117991.P4262555281114350591

/-! ## A117991.P10311227705783214010

`A109613(2*A117992(n+1))`
-/

namespace A117991.P10311227705783214010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A117992 (n + 1)).toNat

end

end A117991.P10311227705783214010

/-! ## A117991.P923043758894841041

`A141310(2*A117992(n+1))`
-/

namespace A117991.P923043758894841041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A117992 (n + 1)).toNat

end

end A117991.P923043758894841041

/-! ## A117991.P17865016967400509913

`A008619(4*A117992(n+1))`
-/

namespace A117991.P17865016967400509913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A117992 (n + 1)).toNat

end

end A117991.P17865016967400509913

/-! ## A117991.P14079786500343415547

`A008611(6*A117992(n+1))`
-/

namespace A117991.P14079786500343415547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (6 * A117992 (n + 1)).toNat

end

end A117991.P14079786500343415547

/-! ## A117991.P11296146576262684951

`A008620(6*A117992(n+1))`
-/

namespace A117991.P11296146576262684951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (6 * A117992 (n + 1)).toNat

end

end A117991.P11296146576262684951

/-!
# A117992: Number of distinct rational numbers less than 1 that can be written as fractions of the first n composite numbers.

The programs for A117992, there is no canonical definition to state claims against.
-/

/-! ## A117992.P3536965095519240540

`floor(A117991(n+1)/2)`
-/

namespace A117992.P3536965095519240540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117991 (n + 1) : ℚ) / 2⌋

end

end A117992.P3536965095519240540

/-! ## A117992.P10016475682391249064

`(A117991(C(n+1, n))-1)/2`
-/

namespace A117992.P10016475682391249064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117991 (Nat.choose (n + 1) n) - 1 : ℚ) / 2

end

end A117992.P10016475682391249064

/-! ## A117992.P12323817303681676085

`(A117991(2*n-n+1)-1)/2`
-/

namespace A117992.P12323817303681676085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117991 ((2 * n : ℤ) - (n : ℤ) + 1).toNat - 1 : ℚ) / 2

end

end A117992.P12323817303681676085

/-! ## A117992.P16812908128333503942

`ceil((A117991(ceil(Δ[n²]/2))-1)/2)`
-/

namespace A117992.P16812908128333503942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117991 ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2⌉.toNat - 1 : ℚ) / 2⌉

end

end A117992.P16812908128333503942

/-! ## A117992.P477017246376872744

`A004524(A117991(n+1))`
-/

namespace A117992.P477017246376872744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A117991 (n + 1)).toNat

end

end A117992.P477017246376872744

/-! ## A117992.P11111612168912941781

`A065423(A117991(n+1)+1)`
-/

namespace A117992.P11111612168912941781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A117991 (n + 1) + 1).toNat

end

end A117992.P11111612168912941781

/-! ## A117992.P8498806908899470738

`A140106(A117991(n+1)+1)`
-/

namespace A117992.P8498806908899470738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A117991 (n + 1) + 1).toNat

end

end A117992.P8498806908899470738

/-! ## A117992.P17601318207321881936

`A001281(A117991(n+1)-1)`
-/

namespace A117992.P17601318207321881936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A117991 (n + 1) - 1).toNat

end

end A117992.P17601318207321881936

/-! ## A117992.P6317933893341191871

`A004525(A117991(n+1)-1)`
-/

namespace A117992.P6317933893341191871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A117991 (n + 1) - 1).toNat

end

end A117992.P6317933893341191871

/-! ## A117992.P1331709934888215120

`A014682(A117991(n+1)-1)`
-/

namespace A117992.P1331709934888215120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A117991 (n + 1) - 1).toNat

end

end A117992.P1331709934888215120

/-!
# A117995: Number of partitions of n in which both smallest and largest part occur only once.

The programs for A117995, there is no canonical definition to state claims against.
-/

/-! ## A117995.P15240340671009742917

`A117298(n+1)-1`
-/

namespace A117995.P15240340671009742917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117298 (n + 1) - 1

end

end A117995.P15240340671009742917

/-! ## A117995.P9391874372897753179

`A002865(n+1)-and(1, n)`
-/

namespace A117995.P9391874372897753179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - (Nat.land 1 n : ℤ)

end

end A117995.P9391874372897753179

/-! ## A117995.P10607610552138314330

`A002865(n+1)-A000035(n)`
-/

namespace A117995.P10607610552138314330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A000035 n

end

end A117995.P10607610552138314330

/-! ## A117995.P4275890389618507470

`A002865(n+1)-A059841(n+1)`
-/

namespace A117995.P4275890389618507470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A059841 (n + 1)

end

end A117995.P4275890389618507470

/-! ## A117995.P10663158839025999436

`A083751(n+1)+A040001(n)-1`
-/

namespace A117995.P10663158839025999436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 1) + (A040001 n - 1)

end

end A117995.P10663158839025999436

/-! ## A117995.P7877675256856419311

`A232697(n+1)-A040001(n+1)`
-/

namespace A117995.P7877675256856419311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 (n + 1) - A040001 (n + 1)

end

end A117995.P7877675256856419311

/-! ## A117995.P18272157142821154561

`A187219(n+1)-A135528(n+1)`
-/

namespace A117995.P18272157142821154561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1) - A135528 (n + 1)

end

end A117995.P18272157142821154561

/-! ## A117995.P13479730786482648053

`A002865(n+1)-A166486(2*n)`
-/

namespace A117995.P13479730786482648053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A166486 (2 * n)

end

end A117995.P13479730786482648053

/-! ## A117995.P7598168520102015503

`A002865(n+1)-A056594(n+1)²`
-/

namespace A117995.P7598168520102015503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) - A056594 (n + 1) ^ 2

end

end A117995.P7598168520102015503

/-! ## A117995.P11069609010295370227

`A002865(n+1)+1-A040001(n+1)`
-/

namespace A117995.P11069609010295370227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (1 - A040001 (n + 1))

end

end A117995.P11069609010295370227

/-! ## A117995.P15493959048237412600

`A000035(n+1)+A232697(n+1)-2`
-/

namespace A117995.P15493959048237412600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (A232697 (n + 1) - 2)

end

end A117995.P15493959048237412600

/-! ## A117995.P13449400145134546456

`A002865(n+1)+A004526(n)-A004526(n+1)`
-/

namespace A117995.P13449400145134546456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A004526 n - A004526 (n + 1))

end

end A117995.P13449400145134546456

/-! ## A117995.P14497147716200453073

`Δ[A058984(n)]`
-/

namespace A117995.P14497147716200453073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117995.P14497147716200453073

/-! ## A117995.P15944882433050536329

`Δ[A000041(n)]-n%2`
-/

namespace A117995.P15944882433050536329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n % 2 : ℕ) : ℤ)

end

end A117995.P15944882433050536329

/-! ## A117995.P16918043868235504487

`Δ[A004250(A028310(n))]`
-/

namespace A117995.P16918043868235504487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117995.P16918043868235504487

/-! ## A117995.P10378672214880340144

`Δ[A000041(n)-A004526(n)]`
-/

namespace A117995.P10378672214880340144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117995.P10378672214880340144

/-! ## A117995.P8479952296688808302

`Δ[A000041(n)-A008619(n)]`
-/

namespace A117995.P8479952296688808302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A117995.P8479952296688808302

/-! ## A117995.P15655014932401335326

`A058984(n+1)-A058984(n)`
-/

namespace A117995.P15655014932401335326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058984 (n + 1) - A058984 n

end

end A117995.P15655014932401335326

/-! ## A117995.P573346431633973332

`Δ[A000041(n)]-val(A020639(n+1), 2)`
-/

namespace A117995.P573346431633973332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 2 : ℤ)

end

end A117995.P573346431633973332

/-! ## A117995.P12203861236128620899

`A004250(n+1)-A004250(A028310(n))`
-/

namespace A117995.P12203861236128620899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004250 (n + 1) - A004250 (A028310 n).toNat

end

end A117995.P12203861236128620899

/-!
# A117996: Padovan numbers with only odd digits.

The programs for A117996, there is no canonical definition to state claims against.
-/

/-! ## A117996.P18279897762718151510

`∩[A014261(n+1), A096231(n)]`
-/

namespace A117996.P18279897762718151510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117996.P18279897762718151510

/-! ## A117996.P16697027370589253009

`∩[A014261(n+1), record[A000931(n)]]`
-/

namespace A117996.P16697027370589253009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117996.P16697027370589253009

/-! ## A117996.P9590489488788634237

`∩[A014261(n+1), record[A078027(n)]]`
-/

namespace A117996.P9590489488788634237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117996.P9590489488788634237

/-! ## A117996.P14046247222335046144

`∩[A014261(n+1), record[A114775(n)]]`
-/

namespace A117996.P14046247222335046144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117996.P14046247222335046144

/-! ## A117996.P3249568397488187590

`∩[A014261(n+1), A164001(n+1)]`
-/

namespace A117996.P3249568397488187590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117996.P3249568397488187590

/-!
# A117997: Sum_{d|n} a(d) = n for n = 3^m (m >= 0) and for other n the sum is zero; i.e., the Möbius transform of [1, 0, 3, 0, 0, 0, 0, 0, 9, 0,...].

The programs for A117997, the canonical program `A117997.P3744563621680806174` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117997 has offset 1).

The definition of A117997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117997.P2196791609502357532

`∑{d}[n+1, A007427(#)*A080278((n+1)/#)]`
-/

namespace A117997.P2196791609502357532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A080278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117997.P2196791609502357532

namespace A117997

/-- `∑{d}[n+1, A007427(#)*A080278((n+1)/#)]` -/
def P2196791609502357532.Spec : Prop :=
  ∀ n, P2196791609502357532.a n = A117997 (n + 1)

end A117997

/-! ## A117997.P3744563621680806174

`∑{d}[n+1, A046692(#)*A364222((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117997

/-- `∑{d}[n+1, A046692(#)*A364222((n+1)/#)]` -/
def P3744563621680806174.Spec : Prop :=
  ∀ n, P3744563621680806174.a n = A117997 (n + 1)

theorem P3744563621680806174.correct : P3744563621680806174.Spec := by
  intro n
  simp only [A117997, Nat.add_sub_cancel]

end A117997

/-! ## A117997.P15353727941201520549

`∑{d}[n+1, A065332(#)*A361019((n+1)/#)]`
-/

namespace A117997.P15353727941201520549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065332 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117997.P15353727941201520549

namespace A117997

/-- `∑{d}[n+1, A065332(#)*A361019((n+1)/#)]` -/
def P15353727941201520549.Spec : Prop :=
  ∀ n, P15353727941201520549.a n = A117997 (n + 1)

end A117997

/-! ## A117997.P13624487618815640507

`A000010(A038500(n+1))*A008683(A038502(n+1))`
-/

namespace A117997.P13624487618815640507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A038500 (n + 1)).toNat * A008683 (A038502 (n + 1)).toNat

end

end A117997.P13624487618815640507

namespace A117997

/-- `A000010(A038500(n+1))*A008683(A038502(n+1))` -/
def P13624487618815640507.Spec : Prop :=
  ∀ n, P13624487618815640507.a n = A117997 (n + 1)

end A117997

/-! ## A117997.P6273661913268195125

`A054533(A038500(n+1)+∑[n])`
-/

namespace A117997.P6273661913268195125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054533 (A038500 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A117997.P6273661913268195125

namespace A117997

/-- `A054533(A038500(n+1)+∑[n])` -/
def P6273661913268195125.Spec : Prop :=
  ∀ n, P6273661913268195125.a n = A117997 (n + 1)

end A117997

/-!
# A117998: Decimal number generated by the binary bits of the n-th generation of the Rule 102 elementary cellular automaton.

The programs for A117998, the canonical program `A117998.P3500614632528046177` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117998 has offset 0).

The definition of A117998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117998.P13581166814006098042

`A000079(n)*A001317(n)`
-/

namespace A117998.P13581166814006098042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001317 n

end

end A117998.P13581166814006098042

namespace A117998

/-- `A000079(n)*A001317(n)` -/
def P13581166814006098042.Spec : Prop :=
  ∀ n, P13581166814006098042.a n = A117998 n

end A117998

/-! ## A117998.P3500614632528046177

`A048726(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A117998

/-- `A048726(a(n-1))` -/
def P3500614632528046177.Spec : Prop :=
  ∀ n, P3500614632528046177.a n = A117998 n

theorem P3500614632528046177.correct : P3500614632528046177.Spec := by
  intro n
  simp only [A117998]

end A117998

/-! ## A117998.P5861063459124624075

`2*xor(2*a(n-1), a(n-1))` with `a(0)=1`
-/

namespace A117998.P5861063459124624075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * Nat.xor (2 * a (n - 1)) (a (n - 1))

end

end A117998.P5861063459124624075

namespace A117998

/-- `2*xor(2*a(n-1), a(n-1))` -/
def P5861063459124624075.Spec : Prop :=
  ∀ n, (P5861063459124624075.a n : ℤ) = A117998 n

end A117998

/-! ## A117998.P1779883206428830762

`record[A133179(n)]*A000079(n)`
-/

namespace A117998.P1779883206428830762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000079 n

end

end A117998.P1779883206428830762

namespace A117998

/-- `record[A133179(n)]*A000079(n)` -/
def P1779883206428830762.Spec : Prop :=
  ∀ n, P1779883206428830762.a n = A117998 n

end A117998

/-! ## A117998.P3084658731949962231

`A001317(n)*A011782(n+1)`
-/

namespace A117998.P3084658731949962231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n * A011782 (n + 1)

end

end A117998.P3084658731949962231

namespace A117998

/-- `A001317(n)*A011782(n+1)` -/
def P3084658731949962231.Spec : Prop :=
  ∀ n, P3084658731949962231.a n = A117998 n

end A117998

/-! ## A117998.P18110086414028890418

`A001317(n)*A166444(n+2)`
-/

namespace A117998.P18110086414028890418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n * A166444 (n + 2)

end

end A117998.P18110086414028890418

namespace A117998

/-- `A001317(n)*A166444(n+2)` -/
def P18110086414028890418.Spec : Prop :=
  ∀ n, P18110086414028890418.a n = A117998 n

end A117998

/-! ## A117998.P5132082776417553875

`A001317(n)*A016116(2*n)`
-/

namespace A117998.P5132082776417553875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n * A016116 (2 * n)

end

end A117998.P5132082776417553875

namespace A117998

/-- `A001317(n)*A016116(2*n)` -/
def P5132082776417553875.Spec : Prop :=
  ∀ n, P5132082776417553875.a n = A117998 n

end A117998

/-! ## A117998.P4536108909620830229

`A001317(n)*A060546(2*n)`
-/

namespace A117998.P4536108909620830229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n * A060546 (2 * n)

end

end A117998.P4536108909620830229

namespace A117998

/-- `A001317(n)*A060546(2*n)` -/
def P4536108909620830229.Spec : Prop :=
  ∀ n, P4536108909620830229.a n = A117998 n

end A117998

/-! ## A117998.P15753537820323214208

`A001317(n)*A131572(2*n+1)`
-/

namespace A117998.P15753537820323214208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n * A131572 (2 * n + 1)

end

end A117998.P15753537820323214208

namespace A117998

/-- `A001317(n)*A131572(2*n+1)` -/
def P15753537820323214208.Spec : Prop :=
  ∀ n, P15753537820323214208.a n = A117998 n

end A117998

/-! ## A117998.P11612761483287812035

`A001317(n)*A131575(2*n+1)`
-/

namespace A117998.P11612761483287812035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n * A131575 (2 * n + 1)

end

end A117998.P11612761483287812035

namespace A117998

/-- `A001317(n)*A131575(2*n+1)` -/
def P11612761483287812035.Spec : Prop :=
  ∀ n, P11612761483287812035.a n = A117998 n

end A117998

/-! ## A117998.P14515543964248891357

`A060546(2*n)*A087745(2*n)`
-/

namespace A117998.P14515543964248891357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) * A087745 (2 * n)

end

end A117998.P14515543964248891357

namespace A117998

/-- `A060546(2*n)*A087745(2*n)` -/
def P14515543964248891357.Spec : Prop :=
  ∀ n, P14515543964248891357.a n = A117998 n

end A117998

/-! ## A117998.P7940430038889353807

`record[A122111(n+1)]*record[A133179(n)]`
-/

namespace A117998.P7940430038889353807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A117998.P7940430038889353807

namespace A117998

/-- `record[A122111(n+1)]*record[A133179(n)]` -/
def P7940430038889353807.Spec : Prop :=
  ∀ n, P7940430038889353807.a n = A117998 n

end A117998

/-! ## A117998.P17627030692117631185

`A001317(n)+A000225(n)*A001317(n)`
-/

namespace A117998.P17627030692117631185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n + A000225 n * A001317 n

end

end A117998.P17627030692117631185

namespace A117998

/-- `A001317(n)+A000225(n)*A001317(n)` -/
def P17627030692117631185.Spec : Prop :=
  ∀ n, P17627030692117631185.a n = A117998 n

end A117998

/-! ## A117998.P2318851874591068396

`A001317(n)*A078840(A000217(n))`
-/

namespace A117998.P2318851874591068396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n * A078840 (A000217 n).toNat

end

end A117998.P2318851874591068396

namespace A117998

/-- `A001317(n)*A078840(A000217(n))` -/
def P2318851874591068396.Spec : Prop :=
  ∀ n, P2318851874591068396.a n = A117998 n

end A117998

/-! ## A117998.P15277346304117664306

`record[A130321(n)]*record[A133179(n)]`
-/

namespace A117998.P15277346304117664306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A117998.P15277346304117664306

namespace A117998

/-- `record[A130321(n)]*record[A133179(n)]` -/
def P15277346304117664306.Spec : Prop :=
  ∀ n, P15277346304117664306.a n = A117998 n

end A117998

/-! ## A117998.P13323998539416232080

`A000079(n)*A276618(∑[n])`
-/

namespace A117998.P13323998539416232080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A276618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117998.P13323998539416232080

namespace A117998

/-- `A000079(n)*A276618(∑[n])` -/
def P13323998539416232080.Spec : Prop :=
  ∀ n, P13323998539416232080.a n = A117998 n

end A117998

/-!
# A117999: Decimal number generated by the binary bits of the n-th generation of the Rule 110 elementary cellular automaton.

The programs for A117999, there is no canonical definition to state claims against.
-/

/-! ## A117999.P1387143170409291864

`A006978(n+1)*2^n`
-/

namespace A117999.P1387143170409291864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006978 (n + 1) * (2 ^ n : ℤ)

end

end A117999.P1387143170409291864

/-! ## A117999.P18030128886614680901

`A000079(n)*A006978(n+1)`
-/

namespace A117999.P18030128886614680901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A006978 (n + 1)

end

end A117999.P18030128886614680901

/-! ## A117999.P3541855376416691302

`∑[A011782(n)]*A006978(n+1)`
-/

namespace A117999.P3541855376416691302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A006978 (n + 1)

end

end A117999.P3541855376416691302

/-! ## A117999.P16981283618057618750

`Δ[A000051(n)]*A006978(n+1)`
-/

namespace A117999.P16981283618057618750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006978 (n + 1)

end

end A117999.P16981283618057618750

/-! ## A117999.P4107435493586154009

`lcm(A000079(n), A006978(A000027(n+1)))`
-/

namespace A117999.P4107435493586154009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A006978 (A000027 (n + 1)).toNat)

end

end A117999.P4107435493586154009

