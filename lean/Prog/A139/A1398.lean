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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
# A139800: a(n) = a(n-1) + a(n-2) + a(n-3) + 2*a(n-4), with a(0) = 1 and a(1) = a(2) = a(3) = 0.

The programs for A139800, the canonical program `A139800.P11324036949081883395` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139800 has offset 0).

The definition of A139800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` (program `A139800.P11324036949081883395`, by `A139800.P11324036949081883395.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139800.P11324036949081883395

`a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139800

/-- `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` -/
def P11324036949081883395.Spec : Prop :=
  ∀ n, (P11324036949081883395.a n : ℤ) = A139800 n

theorem P11324036949081883395.correct : P11324036949081883395.Spec := by
  intro n
  simp only [A139800]

end A139800

/-! ## A139800.P9848749453075197877

`a(n-1)+xor(and(2, n+2), a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A139800.P9848749453075197877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + Nat.xor (Nat.land 2 (n + 2)) (a (n - 1))

end

end A139800.P9848749453075197877

namespace A139800

/-- `a(n-1)+xor(and(2, n+2), a(n-1))` -/
def P9848749453075197877.Spec : Prop :=
  ∀ n, (P9848749453075197877.a n : ℤ) = A139800 n

end A139800

/-! ## A139800.P3774239291545651977

`a(n-1)+xor(or(2, n)-n, a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A139800.P3774239291545651977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + Int.xor ((Nat.lor 2 n : ℤ) - (n : ℤ)) (a (n - 1))

end

end A139800.P3774239291545651977

namespace A139800

/-- `a(n-1)+xor(or(2, n)-n, a(n-1))` -/
def P3774239291545651977.Spec : Prop :=
  ∀ n, P3774239291545651977.a n = A139800 n

end A139800

/-! ## A139800.P3609932179712090294

`A181586(n)+A056594(n)`
-/

namespace A139800.P3609932179712090294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 n + A056594 n

end

end A139800.P3609932179712090294

namespace A139800

/-- `A181586(n)+A056594(n)` -/
def P3609932179712090294.Spec : Prop :=
  ∀ n, P3609932179712090294.a n = A139800 n

end A139800

/-! ## A139800.P11954201938603388358

`A161204(n)-A087960(n)`
-/

namespace A139800.P11954201938603388358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 n - A087960 n

end

end A139800.P11954201938603388358

namespace A139800

/-- `A161204(n)-A087960(n)` -/
def P11954201938603388358.Spec : Prop :=
  ∀ n, P11954201938603388358.a n = A139800 n

end A139800

/-! ## A139800.P13899751023929481281

`xor(2-(and(2, n)-a(n-1)), 3*a(n-1))` with `a(0)=1`
-/

namespace A139800.P13899751023929481281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 - ((Nat.land 2 n : ℤ) - a (n - 1))) (3 * a (n - 1))

end

end A139800.P13899751023929481281

namespace A139800

/-- `xor(2-(and(2, n)-a(n-1)), 3*a(n-1))` -/
def P13899751023929481281.Spec : Prop :=
  ∀ n, P13899751023929481281.a n = A139800 n

end A139800

/-! ## A139800.P16734806229576103298

`Δ[A181586(n)]-A228826(2*n+1)`
-/

namespace A139800.P16734806229576103298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A228826 (2 * n + 1)

end

end A139800.P16734806229576103298

namespace A139800

/-- `Δ[A181586(n)]-A228826(2*n+1)` -/
def P16734806229576103298.Spec : Prop :=
  ∀ n, P16734806229576103298.a n = A139800 n

end A139800

/-! ## A139800.P8136934175215842747

`A115851(n+2)-A256494(n+1)`
-/

namespace A139800.P8136934175215842747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115851 (n + 2) - A256494 (n + 1)

end

end A139800.P8136934175215842747

namespace A139800

/-- `A115851(n+2)-A256494(n+1)` -/
def P8136934175215842747.Spec : Prop :=
  ∀ n, P8136934175215842747.a n = A139800 n

end A139800

/-! ## A139800.P17613708582340211956

`A007909(n)-A001045(n)`
-/

namespace A139800.P17613708582340211956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n - A001045 n

end

end A139800.P17613708582340211956

namespace A139800

/-- `A007909(n)-A001045(n)` -/
def P17613708582340211956.Spec : Prop :=
  ∀ n, P17613708582340211956.a n = A139800 n

end A139800

/-! ## A139800.P16380715930439688983

`A274845(2*n)-A001045(n)`
-/

namespace A139800.P16380715930439688983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (2 * n) - A001045 n

end

end A139800.P16380715930439688983

namespace A139800

/-- `A274845(2*n)-A001045(n)` -/
def P16380715930439688983.Spec : Prop :=
  ∀ n, P16380715930439688983.a n = A139800 n

end A139800

/-! ## A139800.P4395755599842287347

`round(char[4*n]+(2^n-2)/15)`
-/

namespace A139800.P4395755599842287347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + ((2 ^ n : ℤ) - 2 : ℚ) / 15)

end

end A139800.P4395755599842287347

namespace A139800

/-- `round(char[4*n]+(2^n-2)/15)` -/
def P4395755599842287347.Spec : Prop :=
  ∀ n, P4395755599842287347.a n = A139800 n

end A139800

/-! ## A139800.P858498763234597836

`A190569(n)-A139814(n)`
-/

namespace A139800.P858498763234597836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 n - A139814 n

end

end A139800.P858498763234597836

namespace A139800

/-- `A190569(n)-A139814(n)` -/
def P858498763234597836.Spec : Prop :=
  ∀ n, P858498763234597836.a n = A139800 n

end A139800

/-! ## A139800.P15561587331975418243

`A007909(n+1)-A139814(n)`
-/

namespace A139800.P15561587331975418243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (n + 1) - A139814 n

end

end A139800.P15561587331975418243

namespace A139800

/-- `A007909(n+1)-A139814(n)` -/
def P15561587331975418243.Spec : Prop :=
  ∀ n, P15561587331975418243.a n = A139800 n

end A139800

/-! ## A139800.P6471959986520108357

`2*A115451(n)-A000079(n)`
-/

namespace A139800.P6471959986520108357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115451 n - A000079 n

end

end A139800.P6471959986520108357

namespace A139800

/-- `2*A115451(n)-A000079(n)` -/
def P6471959986520108357.Spec : Prop :=
  ∀ n, P6471959986520108357.a n = A139800 n

end A139800

/-! ## A139800.P11309735049763993503

`A007909(n)-A014113(n)/2`
-/

namespace A139800.P11309735049763993503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007909 n : ℚ) - (A014113 n : ℚ) / 2

end

end A139800.P11309735049763993503

namespace A139800

/-- `A007909(n)-A014113(n)/2` -/
def P11309735049763993503.Spec : Prop :=
  ∀ n, P11309735049763993503.a n = (A139800 n : ℚ)

end A139800

/-! ## A139800.P8373729850842001834

`A007679(n+1)-(A161204(n+1)+A007910(n))`
-/

namespace A139800.P8373729850842001834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 1) - (A161204 (n + 1) + A007910 n)

end

end A139800.P8373729850842001834

namespace A139800

/-- `A007679(n+1)-(A161204(n+1)+A007910(n))` -/
def P8373729850842001834.Spec : Prop :=
  ∀ n, P8373729850842001834.a n = A139800 n

end A139800

/-! ## A139800.P12334918908046476190

`and(A078008(n), A262864(n))`
-/

namespace A139800.P12334918908046476190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078008 n) (A262864 n)

end

end A139800.P12334918908046476190

namespace A139800

/-- `and(A078008(n), A262864(n))` -/
def P12334918908046476190.Spec : Prop :=
  ∀ n, P12334918908046476190.a n = A139800 n

end A139800

/-! ## A139800.P5580349193888014982

`A048573(n)-A190569(n+1)`
-/

namespace A139800.P5580349193888014982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n - A190569 (n + 1)

end

end A139800.P5580349193888014982

namespace A139800

/-- `A048573(n)-A190569(n+1)` -/
def P5580349193888014982.Spec : Prop :=
  ∀ n, P5580349193888014982.a n = A139800 n

end A139800

/-! ## A139800.P9250567823095468260

`A048573(n)-A007909(n+2)`
-/

namespace A139800.P9250567823095468260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 n - A007909 (n + 2)

end

end A139800.P9250567823095468260

namespace A139800

/-- `A048573(n)-A007909(n+2)` -/
def P9250567823095468260.Spec : Prop :=
  ∀ n, P9250567823095468260.a n = A139800 n

end A139800

/-!
# A139802: a(1)=1, a(2)=2, a(n)=n^a(n-2).

The programs for A139802, there is no canonical definition to state claims against.
-/

/-! ## A139802.P16843402726450199815

`(n+1)^a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A139802.P16843402726450199815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1) ^ a (n - 2)

end

end A139802.P16843402726450199815

/-!
# A139803: A033875(n) + 2^a(n) = A033875(n+1).

The programs for A139803, there is no canonical definition to state claims against.
-/

/-! ## A139803.P14694455902894726120

`log2(Δ[A033875(n+1)])`
-/

namespace A139803.P14694455902894726120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033875 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A139803.P14694455902894726120

/-! ## A139803.P10198511644088269650

`A000523(Δ[A033875(n+1)])`
-/

namespace A139803.P10198511644088269650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f1 (n + 1) - f1 n).toNat

end

end A139803.P10198511644088269650

/-! ## A139803.P10090931550416807623

`A001202(Δ[A033875(n+1)])`
-/

namespace A139803.P10090931550416807623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (f1 (n + 1) - f1 n).toNat

end

end A139803.P10090931550416807623

/-! ## A139803.P6162148543621539567

`A001222(Δ[A033875(n+1)])`
-/

namespace A139803.P6162148543621539567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A139803.P6162148543621539567

/-! ## A139803.P17689543021030922227

`A003313(Δ[A033875(n+1)])`
-/

namespace A139803.P17689543021030922227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (f1 (n + 1) - f1 n).toNat

end

end A139803.P17689543021030922227

/-!
# A139804: Smallest m such that (3^n)! + m is prime.

The programs for A139804, there is no canonical definition to state claims against.
-/

/-! ## A139804.P3498948382358202050

`A033932(3^n)`
-/

namespace A139804.P3498948382358202050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 (3 ^ n)

end

end A139804.P3498948382358202050

/-! ## A139804.P18089712145682655655

`or(1, A033932(A000244(n)))`
-/

namespace A139804.P18089712145682655655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033932 (A000244 n).toNat)

end

end A139804.P18089712145682655655

/-! ## A139804.P5232402483745924676

`A059995(n)+A033932(A000244(n))`
-/

namespace A139804.P5232402483745924676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + A033932 (A000244 n).toNat

end

end A139804.P5232402483745924676

/-! ## A139804.P3910231416235068620

`A185043(n)+A033932(A000244(n))`
-/

namespace A139804.P3910231416235068620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185043 n + A033932 (A000244 n).toNat

end

end A139804.P3910231416235068620

/-!
# A139806: a(n) = a(n-1)+a(n-2)+a(n-3)+2*a(n-4), a(0)=1, a(1)=3, a(2)=7, a(3)=15.

The programs for A139806, the canonical program `A139806.P17085833385033627152` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139806 has offset 0).

The definition of A139806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` (program `A139806.P17085833385033627152`, by `A139806.P17085833385033627152.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139806.P17085833385033627152

`a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139806

/-- `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` -/
def P17085833385033627152.Spec : Prop :=
  ∀ n, (P17085833385033627152.a n : ℤ) = A139806 n

theorem P17085833385033627152.correct : P17085833385033627152.Spec := by
  intro n
  simp only [A139806]

end A139806

/-! ## A139806.P2264505544885007485

`2*a(n-1)-or(3, -and(3, n))` with `a(0)=1`
-/

namespace A139806.P2264505544885007485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - Int.lor 3 (-(Nat.land 3 n : ℤ))

end

end A139806.P2264505544885007485

namespace A139806

/-- `2*a(n-1)-or(3, -and(3, n))` -/
def P2264505544885007485.Spec : Prop :=
  ∀ n, P2264505544885007485.a n = A139806 n

end A139806

/-! ## A139806.P16270968127879746709

`or(3, 2*(a(n-1)-gcd(4, n)/2))` with `a(0)=1`
-/

namespace A139806.P16270968127879746709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 3 (SequenceMachineLib.roundAway (2 * ((a (n - 1) : ℚ) - (Nat.gcd 4 n : ℚ) / 2)))

end

end A139806.P16270968127879746709

namespace A139806

/-- `or(3, 2*(a(n-1)-gcd(4, n)/2))` -/
def P16270968127879746709.Spec : Prop :=
  ∀ n, P16270968127879746709.a n = A139806 n

end A139806

/-! ## A139806.P10264262342988860257

`or(3, 2*a(n-1)-and(3, n-1))` with `a(0)=1`
-/

namespace A139806.P10264262342988860257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 3 (2 * a (n - 1) - Int.land 3 ((n : ℤ) - 1))

end

end A139806.P10264262342988860257

namespace A139806

/-- `or(3, 2*a(n-1)-and(3, n-1))` -/
def P10264262342988860257.Spec : Prop :=
  ∀ n, P10264262342988860257.a n = A139806 n

end A139806

/-! ## A139806.P12887260828015811451

`A139814(n)+2^n`
-/

namespace A139806.P12887260828015811451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139814 n + (2 ^ n : ℤ)

end

end A139806.P12887260828015811451

namespace A139806

/-- `A139814(n)+2^n` -/
def P12887260828015811451.Spec : Prop :=
  ∀ n, P12887260828015811451.a n = A139806 n

end A139806

/-! ## A139806.P16515393112148517628

`xor(A000079(n), A139814(n))`
-/

namespace A139806.P16515393112148517628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A139814 n)

end

end A139806.P16515393112148517628

namespace A139806

/-- `xor(A000079(n), A139814(n))` -/
def P16515393112148517628.Spec : Prop :=
  ∀ n, P16515393112148517628.a n = A139806 n

end A139806

/-! ## A139806.P3613716280976107728

`A000051(n)+A139814(n)-1`
-/

namespace A139806.P3613716280976107728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A139814 n - 1)

end

end A139806.P3613716280976107728

namespace A139806

/-- `A000051(n)+A139814(n)-1` -/
def P3613716280976107728.Spec : Prop :=
  ∀ n, P3613716280976107728.a n = A139806 n

end A139806

/-! ## A139806.P497771791267139371

`A190569(n+1)+A139800(n+1)`
-/

namespace A139806.P497771791267139371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 (n + 1) + A139800 (n + 1)

end

end A139806.P497771791267139371

namespace A139806

/-- `A190569(n+1)+A139800(n+1)` -/
def P497771791267139371.Spec : Prop :=
  ∀ n, P497771791267139371.a n = A139806 n

end A139806

/-! ## A139806.P10414872459996903458

`A161204(n+1)+2*A007910(n)`
-/

namespace A139806.P10414872459996903458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 (n + 1) + 2 * A007910 n

end

end A139806.P10414872459996903458

namespace A139806

/-- `A161204(n+1)+2*A007910(n)` -/
def P10414872459996903458.Spec : Prop :=
  ∀ n, P10414872459996903458.a n = A139806 n

end A139806

/-! ## A139806.P8929918861052316364

`A078008(n+1)+A139814(n)+A078008(n)`
-/

namespace A139806.P8929918861052316364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + (A139814 n + A078008 n)

end

end A139806.P8929918861052316364

namespace A139806

/-- `A078008(n+1)+A139814(n)+A078008(n)` -/
def P8929918861052316364.Spec : Prop :=
  ∀ n, P8929918861052316364.a n = A139806 n

end A139806

/-! ## A139806.P11383545844321196423

`A139800(n+1)+A139814(n+1)+A139800(n+1)`
-/

namespace A139806.P11383545844321196423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139800 (n + 1) + (A139814 (n + 1) + A139800 (n + 1))

end

end A139806.P11383545844321196423

namespace A139806

/-- `A139800(n+1)+A139814(n+1)+A139800(n+1)` -/
def P11383545844321196423.Spec : Prop :=
  ∀ n, P11383545844321196423.a n = A139806 n

end A139806

/-! ## A139806.P6145884333729439872

`A190569(n+1)+A190569(n+1)-A139814(n+1)`
-/

namespace A139806.P6145884333729439872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 (n + 1) + (A190569 (n + 1) - A139814 (n + 1))

end

end A139806.P6145884333729439872

namespace A139806

/-- `A190569(n+1)+A190569(n+1)-A139814(n+1)` -/
def P6145884333729439872.Spec : Prop :=
  ∀ n, P6145884333729439872.a n = A139806 n

end A139806

/-! ## A139806.P14238794925234219933

`A016029(n+2)+A016029(n+2)-A001045(n+1)`
-/

namespace A139806.P14238794925234219933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016029 (n + 2) + (A016029 (n + 2) - A001045 (n + 1))

end

end A139806.P14238794925234219933

namespace A139806

/-- `A016029(n+2)+A016029(n+2)-A001045(n+1)` -/
def P14238794925234219933.Spec : Prop :=
  ∀ n, P14238794925234219933.a n = A139806 n

end A139806

/-! ## A139806.P11997337563087155945

`Δ[2*a(n-1)-(1-n)%4]` with `a(0)=1`
-/

namespace A139806.P11997337563087155945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) - Int.tmod (1 - (n : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139806.P11997337563087155945

namespace A139806

/-- `Δ[2*a(n-1)-(1-n)%4]` -/
def P11997337563087155945.Spec : Prop :=
  ∀ n, P11997337563087155945.a n = A139806 n

end A139806

/-! ## A139806.P14161799074453052269

`A062092(n)-A100088(n)`
-/

namespace A139806.P14161799074453052269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - A100088 n

end

end A139806.P14161799074453052269

namespace A139806

/-- `A062092(n)-A100088(n)` -/
def P14161799074453052269.Spec : Prop :=
  ∀ n, P14161799074453052269.a n = A139806 n

end A139806

/-! ## A139806.P1862387526124150104

`A048573(n+1)-2*A007910(n)`
-/

namespace A139806.P1862387526124150104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 (n + 1) - 2 * A007910 n

end

end A139806.P1862387526124150104

namespace A139806

/-- `A048573(n+1)-2*A007910(n)` -/
def P1862387526124150104.Spec : Prop :=
  ∀ n, P1862387526124150104.a n = A139806 n

end A139806

/-! ## A139806.P7361672749107001920

`2*A190569(n+1)-A139814(n+1)`
-/

namespace A139806.P7361672749107001920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190569 (n + 1) - A139814 (n + 1)

end

end A139806.P7361672749107001920

namespace A139806

/-- `2*A190569(n+1)-A139814(n+1)` -/
def P7361672749107001920.Spec : Prop :=
  ∀ n, P7361672749107001920.a n = A139806 n

end A139806

/-! ## A139806.P11597935418855510293

`2*A016029(n+2)-A001045(n+1)`
-/

namespace A139806.P11597935418855510293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016029 (n + 2) - A001045 (n + 1)

end

end A139806.P11597935418855510293

namespace A139806

/-- `2*A016029(n+2)-A001045(n+1)` -/
def P11597935418855510293.Spec : Prop :=
  ∀ n, P11597935418855510293.a n = A139806 n

end A139806

/-!
# A139807: Number of distinct values of Product_{p is a part of P} (p-1) when P ranges over all partitions of n.

The programs for A139807, there is no canonical definition to state claims against.
-/

/-! ## A139807.P12899474784349555713

`A193404(A057427(n)+A000930(n))`
-/

namespace A139807.P12899474784349555713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193404 (A057427 n + A000930 n).toNat

end

end A139807.P12899474784349555713

/-! ## A139807.P88721832897374722

`A193404(A327500(n+1)+A000930(n))`
-/

namespace A139807.P88721832897374722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193404 (A327500 (n + 1) + A000930 n).toNat

end

end A139807.P88721832897374722

/-!
# A139810: Number of n X n binary matrices containing no 2 X 2 all-1s sub-block.

The programs for A139810, there is no canonical definition to state claims against.
-/

/-! ## A139810.P6478814845257546757

`record[A141510(n)]`
-/

namespace A139810.P6478814845257546757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139810.P6478814845257546757

/-! ## A139810.P4906990449003229893

`A141510(A004277(n)-1)`
-/

namespace A139810.P4906990449003229893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141510 (A004277 n - 1).toNat

end

end A139810.P4906990449003229893

/-! ## A139810.P10291243664102937745

`A141510(eq[1, A288196(n)])`
-/

namespace A139810.P10291243664102937745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139810.P10291243664102937745

/-! ## A139810.P2237549535285764012

`A141510(lt[A141459(n), 2])`
-/

namespace A139810.P2237549535285764012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141510 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A139810.P2237549535285764012

/-! ## A139810.P12829272027233405871

`A141510(lt[0, A141531(n+1)])`
-/

namespace A139810.P12829272027233405871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A139810.P12829272027233405871

/-!
# A139812: Primes prime(k) such that prime(k)^2 > prime(k-2)*prime(k+2).

The programs for A139812, there is no canonical definition to state claims against.
-/

/-! ## A139812.P7639519077905353895

`p?[or(1, A179978(3*n+1))]`
-/

namespace A139812.P7639519077905353895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A179978 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139812.P7639519077905353895

/-! ## A139812.P11473680967846567652

`A065091(A077168(n)+A029104(n))`
-/

namespace A139812.P11473680967846567652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A077168 n + A029104 n).toNat

end

end A139812.P11473680967846567652

/-! ## A139812.P685318734151889611

`A007918(A161412(n+3)+1)`
-/

namespace A139812.P685318734151889611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A161412 (n + 3) + 1).toNat

end

end A139812.P685318734151889611

/-! ## A139812.P16604060386558997790

`A094548(A191377(n+1))`
-/

namespace A139812.P16604060386558997790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094548 (A191377 (n + 1)).toNat

end

end A139812.P16604060386558997790

/-! ## A139812.P15181830050254424383

`∩[A078668(n+1), A364695(n+1)+2]`
-/

namespace A139812.P15181830050254424383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364695 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139812.P15181830050254424383

/-!
# A139813: A polynomial triangle based on cross binomial Hodge number matrices/ Hodge diamonds that represent Calabi-Yau type binomials and their monomials.

The programs for A139813, there is no canonical definition to state claims against.
-/

/-! ## A139813.P6951739250692189239

`(2-char[∑[4*n]])*A007318(n)`
-/

namespace A139813.P6951739250692189239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A007318 n

end

end A139813.P6951739250692189239

/-! ## A139813.P6589391338338121502

`A007318(n)*A140685(n+1)`
-/

namespace A139813.P6589391338338121502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A140685 (n + 1)

end

end A139813.P6589391338338121502

/-! ## A139813.P9454088879809669418

`A028326(n)/(A003982(n)+1)`
-/

namespace A139813.P9454088879809669418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (A003982 n + 1 : ℚ)

end

end A139813.P9454088879809669418

/-! ## A139813.P13048193204958939764

`A007318(n)*A275437(2*n)`
-/

namespace A139813.P13048193204958939764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A275437 (2 * n)

end

end A139813.P13048193204958939764

/-! ## A139813.P2976025797658432430

`A007318(n)*A169695(Δ[n²])`
-/

namespace A139813.P2976025797658432430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A169695 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139813.P2976025797658432430

/-! ## A139813.P3955349967467647568

`A007318(n)*A001221(A098350(n+1))`
-/

namespace A139813.P3955349967467647568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A001221 (A098350 (n + 1)).toNat

end

end A139813.P3955349967467647568

/-! ## A139813.P7919963830071004199

`A028326(n)/A319696(A204120(n+1))`
-/

namespace A139813.P7919963830071004199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / (A319696 (A204120 (n + 1)).toNat : ℚ)

end

end A139813.P7919963830071004199

/-! ## A139813.P1966354379122465668

`A007318(n)*A000032(and(1, -A000005(2*n+1)))`
-/

namespace A139813.P1966354379122465668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000032 (Int.land 1 (-A000005 (2 * n + 1))).toNat

end

end A139813.P1966354379122465668

/-!
# A139814: a(n)=a(n-1)+a(n-2)+a(n-3)+2a(n-4); a(0)=0,a(1)=1,a(2)=3,a(3)=7.

The programs for A139814, the canonical program `A139814.P18168795064122599387` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139814 has offset 0).

The definition of A139814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` (program `A139814.P18168795064122599387`, by `A139814.P18168795064122599387.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139814.P18168795064122599387

`a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139814

/-- `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` -/
def P18168795064122599387.Spec : Prop :=
  ∀ n, (P18168795064122599387.a n : ℤ) = A139814 n

theorem P18168795064122599387.correct : P18168795064122599387.Spec := by
  intro n
  simp only [A139814]

end A139814

/-! ## A139814.P324790847972835510

`Δ[A007909(n)]+round(2^n/3)`
-/

namespace A139814.P324790847972835510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

end

end A139814.P324790847972835510

namespace A139814

/-- `Δ[A007909(n)]+round(2^n/3)` -/
def P324790847972835510.Spec : Prop :=
  ∀ n, P324790847972835510.a n = A139814 n

end A139814

/-! ## A139814.P4545356381437739282

`A190569(n)-A139800(n)`
-/

namespace A139814.P4545356381437739282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 n - A139800 n

end

end A139814.P4545356381437739282

namespace A139814

/-- `A190569(n)-A139800(n)` -/
def P4545356381437739282.Spec : Prop :=
  ∀ n, P4545356381437739282.a n = A139814 n

end A139814

/-! ## A139814.P1508047971480379278

`A001045(n)+Δ[A007909(n)]`
-/

namespace A139814.P1508047971480379278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (f1 (n + 1) - f1 n)

end

end A139814.P1508047971480379278

namespace A139814

/-- `A001045(n)+Δ[A007909(n)]` -/
def P1508047971480379278.Spec : Prop :=
  ∀ n, P1508047971480379278.a n = A139814 n

end A139814

/-! ## A139814.P15089495498521935537

`A161204(n+1)+A100088(n)`
-/

namespace A139814.P15089495498521935537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 (n + 1) + A100088 n

end

end A139814.P15089495498521935537

namespace A139814

/-- `A161204(n+1)+A100088(n)` -/
def P15089495498521935537.Spec : Prop :=
  ∀ n, P15089495498521935537.a n = A139814 n

end A139814

/-! ## A139814.P3286183931089781901

`A007909(n+1)+A001045(n)-A007909(n)`
-/

namespace A139814.P3286183931089781901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (n + 1) + (A001045 n - A007909 n)

end

end A139814.P3286183931089781901

namespace A139814

/-- `A007909(n+1)+A001045(n)-A007909(n)` -/
def P3286183931089781901.Spec : Prop :=
  ∀ n, P3286183931089781901.a n = A139814 n

end A139814

/-! ## A139814.P468546935684687211

`Δ[2*a(n-1)-(1-n)%4]` with `a(0)=0`
-/

namespace A139814.P468546935684687211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 (n - 1) - Int.tmod (1 - (n : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139814.P468546935684687211

namespace A139814

/-- `Δ[2*a(n-1)-(1-n)%4]` -/
def P468546935684687211.Spec : Prop :=
  ∀ n, P468546935684687211.a n = A139814 n

end A139814

/-! ## A139814.P12067687950833581454

`A139806(n)-2^n`
-/

namespace A139814.P12067687950833581454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139806 n - (2 ^ n : ℤ)

end

end A139814.P12067687950833581454

namespace A139814

/-- `A139806(n)-2^n` -/
def P12067687950833581454.Spec : Prop :=
  ∀ n, P12067687950833581454.a n = A139814 n

end A139814

/-! ## A139814.P1454965966449139498

`A283642(n)-A100088(n)`
-/

namespace A139814.P1454965966449139498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n - A100088 n

end

end A139814.P1454965966449139498

namespace A139814

/-- `A283642(n)-A100088(n)` -/
def P1454965966449139498.Spec : Prop :=
  ∀ n, P1454965966449139498.a n = A139814 n

end A139814

/-! ## A139814.P7096755550387757958

`A139806(n)%A000079(n)`
-/

namespace A139814.P7096755550387757958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139806 n) (A000079 n)

end

end A139814.P7096755550387757958

namespace A139814

/-- `A139806(n)%A000079(n)` -/
def P7096755550387757958.Spec : Prop :=
  ∀ n, P7096755550387757958.a n = A139814 n

end A139814

/-! ## A139814.P17627266487314480365

`and(A000225(n), A139806(n))`
-/

namespace A139814.P17627266487314480365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A139806 n)

end

end A139814.P17627266487314480365

namespace A139814

/-- `and(A000225(n), A139806(n))` -/
def P17627266487314480365.Spec : Prop :=
  ∀ n, P17627266487314480365.a n = A139814 n

end A139814

/-! ## A139814.P4075926427128789264

`and(A139806(n), A303611(n+2))`
-/

namespace A139814.P4075926427128789264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139806 n) (A303611 (n + 2))

end

end A139814.P4075926427128789264

namespace A139814

/-- `and(A139806(n), A303611(n+2))` -/
def P4075926427128789264.Spec : Prop :=
  ∀ n, P4075926427128789264.a n = A139814 n

end A139814

/-! ## A139814.P6607138001836817236

`A161204(n+1)+A007679(n+2)-A135541(n)`
-/

namespace A139814.P6607138001836817236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161204 (n + 1) + (A007679 (n + 2) - A135541 n)

end

end A139814.P6607138001836817236

namespace A139814

/-- `A161204(n+1)+A007679(n+2)-A135541(n)` -/
def P6607138001836817236.Spec : Prop :=
  ∀ n, P6607138001836817236.a n = A139814 n

end A139814

/-! ## A139814.P8296873803663639046

`A007910(n+1)+A161204(n+1)-A007679(n+1)`
-/

namespace A139814.P8296873803663639046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (n + 1) + (A161204 (n + 1) - A007679 (n + 1))

end

end A139814.P8296873803663639046

namespace A139814

/-- `A007910(n+1)+A161204(n+1)-A007679(n+1)` -/
def P8296873803663639046.Spec : Prop :=
  ∀ n, P8296873803663639046.a n = A139814 n

end A139814

/-! ## A139814.P1844016312478582735

`and(A139806(n), A140683(n))`
-/

namespace A139814.P1844016312478582735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139806 n) (A140683 n)

end

end A139814.P1844016312478582735

namespace A139814

/-- `and(A139806(n), A140683(n))` -/
def P1844016312478582735.Spec : Prop :=
  ∀ n, P1844016312478582735.a n = A139814 n

end A139814

/-! ## A139814.P5078138978748896655

`and(A139806(n), A153893(n))`
-/

namespace A139814.P5078138978748896655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139806 n) (A153893 n)

end

end A139814.P5078138978748896655

namespace A139814

/-- `and(A139806(n), A153893(n))` -/
def P5078138978748896655.Spec : Prop :=
  ∀ n, P5078138978748896655.a n = A139814 n

end A139814

/-! ## A139814.P9978818962145070770

`A153894(n)%A083593(n)`
-/

namespace A139814.P9978818962145070770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153894 n) (A083593 n)

end

end A139814.P9978818962145070770

namespace A139814

/-- `A153894(n)%A083593(n)` -/
def P9978818962145070770.Spec : Prop :=
  ∀ n, P9978818962145070770.a n = A139814 n

end A139814

/-! ## A139814.P485693275208042490

`and(A086224(n), A139806(n))`
-/

namespace A139814.P485693275208042490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A139806 n)

end

end A139814.P485693275208042490

namespace A139814

/-- `and(A086224(n), A139806(n))` -/
def P485693275208042490.Spec : Prop :=
  ∀ n, P485693275208042490.a n = A139814 n

end A139814

/-! ## A139814.P1341034593369682

`and(A139806(n), A153894(n))`
-/

namespace A139814.P1341034593369682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139806 n) (A153894 n)

end

end A139814.P1341034593369682

namespace A139814

/-- `and(A139806(n), A153894(n))` -/
def P1341034593369682.Spec : Prop :=
  ∀ n, P1341034593369682.a n = A139814 n

end A139814

/-!
# A139816: Final nonzero terms in rows of A139801.

The programs for A139816, there is no canonical definition to state claims against.
-/

/-! ## A139816.P14349890937810579968

`A368567(n+1)`
-/

namespace A139816.P14349890937810579968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368567 (n + 1)

end

end A139816.P14349890937810579968

/-! ## A139816.P10810413163860018274

`A139801(∑[n]+n)`
-/

namespace A139816.P10810413163860018274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139801 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A139816.P10810413163860018274

/-! ## A139816.P3785901226285108817

`A009766(∑[or(1, n+1)])`
-/

namespace A139816.P3785901226285108817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139816.P3785901226285108817

/-! ## A139816.P8195665311713233427

`record[A106566(ceil(n²/2))]`
-/

namespace A139816.P8195665311713233427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139816.P8195665311713233427

/-! ## A139816.P4898795951707812858

`record[A355173(ceil(n²/2))]`
-/

namespace A139816.P4898795951707812858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355173 ⌈(n ^ 2 : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139816.P4898795951707812858

/-!
# A139817: 2^n - number of digits of 2^n.

The programs for A139817, the canonical program `A139817.P1238485157427704906` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139817 has offset 0).

The definition of A139817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139817.P1238485157427704906

`A000079(n)-A055642(A000079(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139817

/-- `A000079(n)-A055642(A000079(n))` -/
def P1238485157427704906.Spec : Prop :=
  ∀ n, P1238485157427704906.a n = A139817 n

theorem P1238485157427704906.correct : P1238485157427704906.Spec := by
  intro n
  simp only [A139817]

end A139817

/-! ## A139817.P15449895855194190841

`2^n-(floor(n/log2(10))+1)`
-/

namespace A139817.P15449895855194190841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (⌊(n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1)

end

end A139817.P15449895855194190841

namespace A139817

/-- `2^n-(floor(n/log2(10))+1)` -/
def P15449895855194190841.Spec : Prop :=
  ∀ n, P15449895855194190841.a n = A139817 n

end A139817

/-! ## A139817.P13261897410857824129

`and(2^n-1, -ceil(n/log2(10)))`
-/

namespace A139817.P13261897410857824129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ n : ℤ) - 1) (-⌈(n : ℝ) / Real.logb 2 (10 : ℝ)⌉)

end

end A139817.P13261897410857824129

namespace A139817

/-- `and(2^n-1, -ceil(n/log2(10)))` -/
def P13261897410857824129.Spec : Prop :=
  ∀ n, P13261897410857824129.a n = A139817 n

end A139817

/-! ## A139817.P8027380486530167469

`(2^n-ceil(n/log2(10)))%(2^n)`
-/

namespace A139817.P8027380486530167469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ n : ℤ) - ⌈(n : ℝ) / Real.logb 2 (10 : ℝ)⌉) (2 ^ n : ℤ)

end

end A139817.P8027380486530167469

namespace A139817

/-- `(2^n-ceil(n/log2(10)))%(2^n)` -/
def P8027380486530167469.Spec : Prop :=
  ∀ n, P8027380486530167469.a n = A139817 n

end A139817

/-! ## A139817.P166090314829045556

`abs(A000079(n)-A034887(n))`
-/

namespace A139817.P166090314829045556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A034887 n|

end

end A139817.P166090314829045556

namespace A139817

/-- `abs(A000079(n)-A034887(n))` -/
def P166090314829045556.Spec : Prop :=
  ∀ n, P166090314829045556.a n = A139817 n

end A139817

/-!
# A139818: Squares of Jacobsthal numbers.

The programs for A139818, the canonical program `A139818.P5024035291763864195` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139818 has offset 0).

The definition of A139818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139818.P5024035291763864195

`3*a(n-1)+6*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139818

/-- `3*a(n-1)+6*a(n-2)-8*a(n-3)` -/
def P5024035291763864195.Spec : Prop :=
  ∀ n, P5024035291763864195.a n = A139818 n

theorem P5024035291763864195.correct : P5024035291763864195.Spec := by
  intro n
  simp only [A139818]

end A139818

/-! ## A139818.P9508261761117444658

`A001045(n)²`
-/

namespace A139818.P9508261761117444658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n ^ 2

end

end A139818.P9508261761117444658

namespace A139818

/-- `A001045(n)²` -/
def P9508261761117444658.Spec : Prop :=
  ∀ n, P9508261761117444658.a n = A139818 n

end A139818

/-! ## A139818.P18359692353457338761

`1/9-2/9*(-2)^n+1/9*4^n`
-/

namespace A139818.P18359692353457338761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 - (2 : ℚ) / 9 * ((-2) ^ n : ℚ) + (1 : ℚ) / 9 * (4 ^ n : ℚ)

end

end A139818.P18359692353457338761

namespace A139818

/-- `1/9-2/9*(-2)^n+1/9*4^n` -/
def P18359692353457338761.Spec : Prop :=
  ∀ n, P18359692353457338761.a n = (A139818 n : ℚ)

theorem P18359692353457338761.correct : P18359692353457338761.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A139818, Nat.add_sub_cancel, A139818.P18359692353457338761.a, A139818.P5024035291763864195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A139818, Nat.add_sub_cancel, A139818.P18359692353457338761.a, A139818.P5024035291763864195.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A139818

/-! ## A139818.P324926916207030923

`∑[4*a(n-2)]²` with `a(0)=0, a(1)=1, a(2)=-2`
-/

namespace A139818.P324926916207030923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -2] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A139818.P324926916207030923

namespace A139818

/-- `∑[4*a(n-2)]²` -/
def P324926916207030923.Spec : Prop :=
  ∀ n, P324926916207030923.a n = A139818 n

end A139818

/-! ## A139818.P5245399827480255817

`Δ[n-1-2*a(n-1)]²` with `a(0)=0`
-/

namespace A139818.P5245399827480255817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 1 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A139818.P5245399827480255817

namespace A139818

/-- `Δ[n-1-2*a(n-1)]²` -/
def P5245399827480255817.Spec : Prop :=
  ∀ n, P5245399827480255817.a n = A139818 n

end A139818

/-! ## A139818.P14654540614170461545

`(4*a(n-2)-a(n-1))²` with `a(0)=0, a(1)=1`
-/

namespace A139818.P14654540614170461545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 * a (n - 2) - a (n - 1)) ^ 2

end

end A139818.P14654540614170461545

namespace A139818

/-- `(4*a(n-2)-a(n-1))²` -/
def P14654540614170461545.Spec : Prop :=
  ∀ n, P14654540614170461545.a n = A139818 n

end A139818

/-! ## A139818.P18204089217388547243

`Δ[floor(2^n/3)]²*gcd(n, n+1)`
-/

namespace A139818.P18204089217388547243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (Nat.gcd n (n + 1) : ℤ)

end

end A139818.P18204089217388547243

namespace A139818

/-- `Δ[floor(2^n/3)]²*gcd(n, n+1)` -/
def P18204089217388547243.Spec : Prop :=
  ∀ n, P18204089217388547243.a n = A139818 n

end A139818

/-! ## A139818.P4152031058444036455

`∑[a(n-1)²/a(n-2)]²` with `a(0)=0, a(1)=1, a(2)=-2`
-/

namespace A139818.P4152031058444036455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, -2] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A139818.P4152031058444036455

namespace A139818

/-- `∑[a(n-1)²/a(n-2)]²` -/
def P4152031058444036455.Spec : Prop :=
  ∀ n, P4152031058444036455.a n = (A139818 n : ℚ)

end A139818

/-! ## A139818.P17419745212507972545

`Δ[A005578(n)]²`
-/

namespace A139818.P17419745212507972545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A139818.P17419745212507972545

namespace A139818

/-- `Δ[A005578(n)]²` -/
def P17419745212507972545.Spec : Prop :=
  ∀ n, P17419745212507972545.a n = A139818 n

end A139818

/-! ## A139818.P11309770662106987198

`(A167030(n)+1)²`
-/

namespace A139818.P11309770662106987198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167030 n + 1) ^ 2

end

end A139818.P11309770662106987198

namespace A139818

/-- `(A167030(n)+1)²` -/
def P11309770662106987198.Spec : Prop :=
  ∀ n, P11309770662106987198.a n = A139818 n

end A139818

/-! ## A139818.P6219999078291747595

`(1-A084247(n))²`
-/

namespace A139818.P6219999078291747595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A084247 n) ^ 2

end

end A139818.P6219999078291747595

namespace A139818

/-- `(1-A084247(n))²` -/
def P6219999078291747595.Spec : Prop :=
  ∀ n, P6219999078291747595.a n = A139818 n

end A139818

/-! ## A139818.P3660721328089244306

`(1-A128209(n))²`
-/

namespace A139818.P3660721328089244306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A128209 n) ^ 2

end

end A139818.P3660721328089244306

namespace A139818

/-- `(1-A128209(n))²` -/
def P3660721328089244306.Spec : Prop :=
  ∀ n, P3660721328089244306.a n = A139818 n

end A139818

/-! ## A139818.P10122171224619749420

`(1-A151575(n))²`
-/

namespace A139818.P10122171224619749420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A151575 n) ^ 2

end

end A139818.P10122171224619749420

namespace A139818

/-- `(1-A151575(n))²` -/
def P10122171224619749420.Spec : Prop :=
  ∀ n, P10122171224619749420.a n = A139818 n

end A139818

/-! ## A139818.P10786569078012961794

`(2-A140966(n))²`
-/

namespace A139818.P10786569078012961794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A140966 n) ^ 2

end

end A139818.P10786569078012961794

namespace A139818

/-- `(2-A140966(n))²` -/
def P10786569078012961794.Spec : Prop :=
  ∀ n, P10786569078012961794.a n = A139818 n

end A139818

/-! ## A139818.P6243053622332473802

`(2-A153643(n))²`
-/

namespace A139818.P6243053622332473802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153643 n) ^ 2

end

end A139818.P6243053622332473802

namespace A139818

/-- `(2-A153643(n))²` -/
def P6243053622332473802.Spec : Prop :=
  ∀ n, P6243053622332473802.a n = A139818 n

end A139818

/-! ## A139818.P750318043334308526

`A328284(n+3)²`
-/

namespace A139818.P750318043334308526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 3) ^ 2

end

end A139818.P750318043334308526

namespace A139818

/-- `A328284(n+3)²` -/
def P750318043334308526.Spec : Prop :=
  ∀ n, P750318043334308526.a n = A139818 n

end A139818

/-! ## A139818.P5370829732151155249

`A133684(2*n)²`
-/

namespace A139818.P5370829732151155249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * n) ^ 2

end

end A139818.P5370829732151155249

namespace A139818

/-- `A133684(2*n)²` -/
def P5370829732151155249.Spec : Prop :=
  ∀ n, P5370829732151155249.a n = A139818 n

end A139818

/-! ## A139818.P10361715022920062103

`(A014113(n)/2)²`
-/

namespace A139818.P10361715022920062103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014113 n : ℚ) / 2) ^ 2

end

end A139818.P10361715022920062103

namespace A139818

/-- `(A014113(n)/2)²` -/
def P10361715022920062103.Spec : Prop :=
  ∀ n, P10361715022920062103.a n = (A139818 n : ℚ)

end A139818

/-!
# A139819: Complement of repdigit numbers A010785.

The programs for A139819, the canonical program `A139819.P4370490591155329698` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139819 has offset 1).

The definition of A139819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139819.P4370490591155329698

`comp[A010785(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139819

/-- `comp[A010785(n)]` -/
def P4370490591155329698.Spec : Prop :=
  ∀ n, (P4370490591155329698.a n : ℤ) = A139819 (n + 1)

theorem P4370490591155329698.correct : P4370490591155329698.Spec := by
  intro n
  simp only [A139819, Nat.add_sub_cancel]

end A139819

/-! ## A139819.P13259300855811537830

`lt[0, A151949(n)]`
-/

namespace A139819.P13259300855811537830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139819.P13259300855811537830

namespace A139819

/-- `lt[0, A151949(n)]` -/
def P13259300855811537830.Spec : Prop :=
  ∀ n, (P13259300855811537830.a n : ℤ) = A139819 (n + 1)

end A139819

/-! ## A139819.P13418657151008454782

`lt[1, A047726(n+1)]+1`
-/

namespace A139819.P13418657151008454782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A139819.P13418657151008454782

namespace A139819

/-- `lt[1, A047726(n+1)]+1` -/
def P13418657151008454782.Spec : Prop :=
  ∀ n, (P13418657151008454782.a n : ℤ) = A139819 (n + 1)

end A139819

/-! ## A139819.P11661361420548006762

`lt[0, A347688(n)]`
-/

namespace A139819.P11661361420548006762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347688 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139819.P11661361420548006762

namespace A139819

/-- `lt[0, A347688(n)]` -/
def P11661361420548006762.Spec : Prop :=
  ∀ n, (P11661361420548006762.a n : ℤ) = A139819 (n + 1)

end A139819

/-! ## A139819.P8134587101800836920

`lt[1, A043562(n)]`
-/

namespace A139819.P8134587101800836920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139819.P8134587101800836920

namespace A139819

/-- `lt[1, A043562(n)]` -/
def P8134587101800836920.Spec : Prop :=
  ∀ n, (P8134587101800836920.a n : ℤ) = A139819 (n + 1)

end A139819

/-! ## A139819.P3824531740850175401

`lt[1, A196222(n)]`
-/

namespace A139819.P3824531740850175401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139819.P3824531740850175401

namespace A139819

/-- `lt[1, A196222(n)]` -/
def P3824531740850175401.Spec : Prop :=
  ∀ n, (P3824531740850175401.a n : ℤ) = A139819 (n + 1)

end A139819

/-! ## A139819.P10562447388739005647

`lt[1, A329198(n)]`
-/

namespace A139819.P10562447388739005647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139819.P10562447388739005647

namespace A139819

/-- `lt[1, A329198(n)]` -/
def P10562447388739005647.Spec : Prop :=
  ∀ n, (P10562447388739005647.a n : ℤ) = A139819 (n + 1)

end A139819

/-! ## A139819.P14755429291668171134

`eq[A066156(n), A202022(n)]`
-/

namespace A139819.P14755429291668171134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139819.P14755429291668171134

namespace A139819

/-- `eq[A066156(n), A202022(n)]` -/
def P14755429291668171134.Spec : Prop :=
  ∀ n, (P14755429291668171134.a n : ℤ) = A139819 (n + 1)

end A139819

/-! ## A139819.P17860602041710612543

`eq[A003245(n), A202022(n)]`
-/

namespace A139819.P17860602041710612543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139819.P17860602041710612543

namespace A139819

/-- `eq[A003245(n), A202022(n)]` -/
def P17860602041710612543.Spec : Prop :=
  ∀ n, (P17860602041710612543.a n : ℤ) = A139819 (n + 1)

end A139819

/-! ## A139819.P901773811026426041

`lt[lt[n, A061816(n)], A244112(n)]`
-/

namespace A139819.P901773811026426041
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A139819.P901773811026426041

namespace A139819

/-- `lt[lt[n, A061816(n)], A244112(n)]` -/
def P901773811026426041.Spec : Prop :=
  ∀ n, (P901773811026426041.a n : ℤ) = A139819 (n + 1)

end A139819

/-!
# A139820: Expansion of (phi(-q) / phi(q))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A139820, there is no canonical definition to state claims against.
-/

/-! ## A139820.P16346428673257260630

`(-1)^n*A014969(n)`
-/

namespace A139820.P16346428673257260630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014969 n

end

end A139820.P16346428673257260630

/-! ## A139820.P12415647872316553592

`A014969(n)*A033999(n)`
-/

namespace A139820.P12415647872316553592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014969 n * A033999 n

end

end A139820.P12415647872316553592

/-! ## A139820.P10446920182096142880

`A131126(n)*A280560(n)`
-/

namespace A139820.P10446920182096142880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131126 n * A280560 n

end

end A139820.P10446920182096142880

/-! ## A139820.P10381756103522754537

`A036453(n+1)*A210066(n)`
-/

namespace A139820.P10381756103522754537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A210066 n

end

end A139820.P10381756103522754537

/-! ## A139820.P17500169477543954447

`A007096(2*n)*A033999(n)`
-/

namespace A139820.P17500169477543954447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 (2 * n) * A033999 n

end

end A139820.P17500169477543954447

/-! ## A139820.P6062281548033731305

`A033999(n)*A212318(2*n)`
-/

namespace A139820.P6062281548033731305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A212318 (2 * n)

end

end A139820.P6062281548033731305

/-! ## A139820.P6058038368373555059

`A112128(2*n)*A280560(n)`
-/

namespace A139820.P6058038368373555059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112128 (2 * n) * A280560 n

end

end A139820.P6058038368373555059

/-! ## A139820.P11750171005144268040

`A208933(2*n)*A280560(n)`
-/

namespace A139820.P11750171005144268040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 (2 * n) * A280560 n

end

end A139820.P11750171005144268040

/-! ## A139820.P3618966431497139461

`A210066(n)*A280560(2*n)`
-/

namespace A139820.P3618966431497139461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210066 n * A280560 (2 * n)

end

end A139820.P3618966431497139461

/-! ## A139820.P17789279469695637095

`gcd(2, A014969(n))*A210066(n)`
-/

namespace A139820.P17789279469695637095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A014969 n) : ℤ) * A210066 n

end

end A139820.P17789279469695637095

/-! ## A139820.P4554537426333592982

`A007096(2*n)*A117569(2*n+1)`
-/

namespace A139820.P4554537426333592982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 (2 * n) * A117569 (2 * n + 1)

end

end A139820.P4554537426333592982

/-! ## A139820.P15002197610266145157

`A181819(ceil(n/(n+1))+1)*A210066(n)`
-/

namespace A139820.P15002197610266145157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (⌈(n : ℚ) / (n + 1 : ℚ)⌉ + 1).toNat * A210066 n

end

end A139820.P15002197610266145157

/-! ## A139820.P2436137969683279420

`(1-6/2)/A280560(n+1)*A007096(2*n)`
-/

namespace A139820.P2436137969683279420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (6 : ℚ) / 2) / (A280560 (n + 1) : ℚ) * (A007096 (2 * n) : ℚ)

end

end A139820.P2436137969683279420

/-! ## A139820.P14723977019295999727

`A014969(n)/A029841(n)*A112143(n)`
-/

namespace A139820.P14723977019295999727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A029841 n : ℚ) * (A112143 n : ℚ)

end

end A139820.P14723977019295999727

/-! ## A139820.P10163915851017548098

`A014969(n)/A007096(n)*A189925(n)`
-/

namespace A139820.P10163915851017548098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A007096 n : ℚ) * (A189925 n : ℚ)

end

end A139820.P10163915851017548098

/-! ## A139820.P412307424121375249

`A014969(n)/A112128(n)*A208933(n)`
-/

namespace A139820.P412307424121375249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 n : ℚ) / (A112128 n : ℚ) * (A208933 n : ℚ)

end

end A139820.P412307424121375249

/-! ## A139820.P15441508358227458987

`A033999(n)*A189925(2*n)`
-/

namespace A139820.P15441508358227458987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A189925 (2 * n)

end

end A139820.P15441508358227458987

/-! ## A139820.P11885481378697152285

`A033999(n)*A232358(2*n)`
-/

namespace A139820.P11885481378697152285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A232358 (2 * n)

end

end A139820.P11885481378697152285

/-! ## A139820.P15474784385657907520

`A117569(2*n+1)*A189925(2*n)`
-/

namespace A139820.P15474784385657907520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (2 * n + 1) * A189925 (2 * n)

end

end A139820.P15474784385657907520

/-!
# A139821: Triangle T(i,j) read by rows: T(i,1) = Fibonacci(i) for all i; T(i,i) = i for all i; T(i,j) = T(i-1,j) + T(i-2,j) + T(i-1,j-1) - T(i-2,j-1).

The programs for A139821, there is no canonical definition to state claims against.
-/

/-! ## A139821.P7635904365492280375

`A210553(∑[char[∑[n]]]²-n)`
-/

namespace A139821.P7635904365492280375
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210553 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A139821.P7635904365492280375

/-! ## A139821.P1827317290986140753

`or(C(n, n²), A210553(A038722(n+1)))`
-/

namespace A139821.P1827317290986140753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) (A210553 (A038722 (n + 1)).toNat)

end

end A139821.P1827317290986140753

/-! ## A139821.P8820191750788788892

`or(A000007(n), A210553(A038722(n+1)))`
-/

namespace A139821.P8820191750788788892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A210553 (A038722 (n + 1)).toNat)

end

end A139821.P8820191750788788892

/-! ## A139821.P15308292036043126794

`A210553(A038722(n+1))+A000007(n+1)`
-/

namespace A139821.P15308292036043126794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210553 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A139821.P15308292036043126794

/-! ## A139821.P17857691307553015273

`A210553(A038722(n+1))/A000041(C(2, n+2))`
-/

namespace A139821.P17857691307553015273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210553 (A038722 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A139821.P17857691307553015273

/-! ## A139821.P10237600204825484011

`A105422(comp[∑[n]]+∑[char[∑[n]]])`
-/

namespace A139821.P10237600204825484011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A139821.P10237600204825484011

/-! ## A139821.P13726690604896312312

`and(A052551(n), A210553(A038722(n+1)))`
-/

namespace A139821.P13726690604896312312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A210553 (A038722 (n + 1)).toNat)

end

end A139821.P13726690604896312312

/-! ## A139821.P790296244102774432

`A210553(A038722(n+1))+(8*A000045(n+1))%2`
-/

namespace A139821.P790296244102774432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210553 (A038722 (n + 1)).toNat + Int.tmod (8 * A000045 (n + 1)) 2

end

end A139821.P790296244102774432

/-!
# A139822: Denominator of BernoulliB(10^n).

The programs for A139822, there is no canonical definition to state claims against.
-/

/-! ## A139822.P16565632808928875235

`A027642(10^n)`
-/

namespace A139822.P16565632808928875235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (10 ^ n)

end

end A139822.P16565632808928875235

/-!
# A139826: Squarefree idoneal numbers (A000926).

The programs for A139826, there is no canonical definition to state claims against.
-/

/-! ## A139826.P11335930946605860263

`record[∏{p}[A000926(n+1), #]]`
-/

namespace A139826.P11335930946605860263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139826.P11335930946605860263

/-! ## A139826.P12496330160541556041

`record[A007913(A000926(n+1))]`
-/

namespace A139826.P12496330160541556041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000926 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139826.P12496330160541556041

/-! ## A139826.P1474449258996166157

`filter[A000926(n+1), A008966(#)]`
-/

namespace A139826.P1474449258996166157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A139826.P1474449258996166157

/-! ## A139826.P10723378574864654692

`record[∏{p}[A054576(A003171(n+1)), #]]`
-/

namespace A139826.P10723378574864654692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A003171 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139826.P10723378574864654692

/-! ## A139826.P16719619651069143103

`record[A007947(eq[0, A290870(n+1)]+1)]`
-/

namespace A139826.P16719619651069143103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139826.P16719619651069143103

/-!
# A139827: Primes of the form 2x^2 + 2xy + 17y^2.

The programs for A139827, the canonical program `A139827.P12561689821490357478` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139827 has offset 1).

The definition of A139827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139827.P7991247020026775707

`∩[A141176(n+1), A243183(n+1)]`
-/

namespace A139827.P7991247020026775707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P7991247020026775707

namespace A139827

/-- `∩[A141176(n+1), A243183(n+1)]` -/
def P7991247020026775707.Spec : Prop :=
  ∀ n, (P7991247020026775707.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P6262822418073404380

`∩[A002313(n+1), A141176(n+1)]`
-/

namespace A139827.P6262822418073404380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P6262822418073404380

namespace A139827

/-- `∩[A002313(n+1), A141176(n+1)]` -/
def P6262822418073404380.Spec : Prop :=
  ∀ n, (P6262822418073404380.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P14460696466706085560

`∩[A038907(n+1), A243183(n+1)]`
-/

namespace A139827.P14460696466706085560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P14460696466706085560

namespace A139827

/-- `∩[A038907(n+1), A243183(n+1)]` -/
def P14460696466706085560.Spec : Prop :=
  ∀ n, (P14460696466706085560.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P12561689821490357478

`∩[A191060(n+1), A243183(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139827

/-- `∩[A191060(n+1), A243183(n+1)]` -/
def P12561689821490357478.Spec : Prop :=
  ∀ n, (P12561689821490357478.a n : ℤ) = A139827 (n + 1)

theorem P12561689821490357478.correct : P12561689821490357478.Spec := by
  intro n
  simp only [A139827, Nat.add_sub_cancel]

end A139827

/-! ## A139827.P13884694881731670163

`∩[A038882(n+1), A141176(n+1)]`
-/

namespace A139827.P13884694881731670163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P13884694881731670163

namespace A139827

/-- `∩[A038882(n+1), A141176(n+1)]` -/
def P13884694881731670163.Spec : Prop :=
  ∀ n, (P13884694881731670163.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P4220601557970545647

`∩[A038882(n+1), A243183(n+1)]`
-/

namespace A139827.P4220601557970545647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P4220601557970545647

namespace A139827

/-- `∩[A038882(n+1), A243183(n+1)]` -/
def P4220601557970545647.Spec : Prop :=
  ∀ n, (P4220601557970545647.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P9600593006841925424

`∩[A055025(n+1), A141176(n+1)]`
-/

namespace A139827.P9600593006841925424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P9600593006841925424

namespace A139827

/-- `∩[A055025(n+1), A141176(n+1)]` -/
def P9600593006841925424.Spec : Prop :=
  ∀ n, (P9600593006841925424.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P15178127951112737368

`∩[A038875(n+1), A141176(n+1)]`
-/

namespace A139827.P15178127951112737368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P15178127951112737368

namespace A139827

/-- `∩[A038875(n+1), A141176(n+1)]` -/
def P15178127951112737368.Spec : Prop :=
  ∀ n, (P15178127951112737368.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P1646433556322847490

`∩[A141176(n+1), A301916(n+1)]`
-/

namespace A139827.P1646433556322847490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P1646433556322847490

namespace A139827

/-- `∩[A141176(n+1), A301916(n+1)]` -/
def P1646433556322847490.Spec : Prop :=
  ∀ n, (P1646433556322847490.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P108903333536500273

`∩[A141176(n+1), A281292(n+1)]`
-/

namespace A139827.P108903333536500273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P108903333536500273

namespace A139827

/-- `∩[A141176(n+1), A281292(n+1)]` -/
def P108903333536500273.Spec : Prop :=
  ∀ n, (P108903333536500273.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P16159189994114337207

`∩[A141176(n+1), A224450(n+1)]`
-/

namespace A139827.P16159189994114337207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P16159189994114337207

namespace A139827

/-- `∩[A141176(n+1), A224450(n+1)]` -/
def P16159189994114337207.Spec : Prop :=
  ∀ n, (P16159189994114337207.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P15878730215643846558

`∩[A003654(n+1), A141176(n+1)]`
-/

namespace A139827.P15878730215643846558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P15878730215643846558

namespace A139827

/-- `∩[A003654(n+1), A141176(n+1)]` -/
def P15878730215643846558.Spec : Prop :=
  ∀ n, (P15878730215643846558.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P4967706738158841414

`∩[A003814(n+1), A141176(n+1)]`
-/

namespace A139827.P4967706738158841414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P4967706738158841414

namespace A139827

/-- `∩[A003814(n+1), A141176(n+1)]` -/
def P4967706738158841414.Spec : Prop :=
  ∀ n, (P4967706738158841414.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P10229252967716548402

`∩[A031396(n+1), A141176(n+1)]`
-/

namespace A139827.P10229252967716548402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P10229252967716548402

namespace A139827

/-- `∩[A031396(n+1), A141176(n+1)]` -/
def P10229252967716548402.Spec : Prop :=
  ∀ n, (P10229252967716548402.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P18393571443954454871

`∩[A025284(n+1), A141176(n+1)]`
-/

namespace A139827.P18393571443954454871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P18393571443954454871

namespace A139827

/-- `∩[A025284(n+1), A141176(n+1)]` -/
def P18393571443954454871.Spec : Prop :=
  ∀ n, (P18393571443954454871.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P12982199392939036216

`∩[A125022(n+1), A141176(n+1)]`
-/

namespace A139827.P12982199392939036216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P12982199392939036216

namespace A139827

/-- `∩[A125022(n+1), A141176(n+1)]` -/
def P12982199392939036216.Spec : Prop :=
  ∀ n, (P12982199392939036216.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P11250841269086073866

`∩[A020893(n+1), A141176(n+1)]`
-/

namespace A139827.P11250841269086073866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P11250841269086073866

namespace A139827

/-- `∩[A020893(n+1), A141176(n+1)]` -/
def P11250841269086073866.Spec : Prop :=
  ∀ n, (P11250841269086073866.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P3242499278698583630

`∩[A141176(n+1), A347877(n+1)]`
-/

namespace A139827.P3242499278698583630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P3242499278698583630

namespace A139827

/-- `∩[A141176(n+1), A347877(n+1)]` -/
def P3242499278698583630.Spec : Prop :=
  ∀ n, (P3242499278698583630.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P16813074351942097828

`∩[A008784(n+1), A141176(n+1)]`
-/

namespace A139827.P16813074351942097828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139827.P16813074351942097828

namespace A139827

/-- `∩[A008784(n+1), A141176(n+1)]` -/
def P16813074351942097828.Spec : Prop :=
  ∀ n, (P16813074351942097828.a n : ℤ) = A139827 (n + 1)

end A139827

/-! ## A139827.P572092927792629829

`filter[A141176(n+1), A229062(#)]`
-/

namespace A139827.P572092927792629829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A139827.P572092927792629829

namespace A139827

/-- `filter[A141176(n+1), A229062(#)]` -/
def P572092927792629829.Spec : Prop :=
  ∀ n, P572092927792629829.a n = A139827 (n + 1)

end A139827

/-!
# A139828: Primes of the form 6x^2+6xy+7y^2.

The programs for A139828, there is no canonical definition to state claims against.
-/

/-! ## A139828.P8084180752932080494

`∪[A140613(n+1), A140619(n+1)]`
-/

namespace A139828.P8084180752932080494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P8084180752932080494

/-! ## A139828.P12343064282347378606

`∩[A068229(n+1), A141183(n+1)]`
-/

namespace A139828.P12343064282347378606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P12343064282347378606

/-! ## A139828.P1089936545435267879

`∩[A040122(n+1), A068229(n+1)]`
-/

namespace A139828.P1089936545435267879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P1089936545435267879

/-! ## A139828.P15435288824539752942

`∩[A040122(n+1), A332514(n+1)]`
-/

namespace A139828.P15435288824539752942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P15435288824539752942

/-! ## A139828.P7177804446426614497

`∩[A038881(n+1), A068229(n+1)]`
-/

namespace A139828.P7177804446426614497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P7177804446426614497

/-! ## A139828.P3904839023681468903

`∩[A002476(n+1), A141183(n+1)]`
-/

namespace A139828.P3904839023681468903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P3904839023681468903

/-! ## A139828.P3164106399321751796

`∩[A007645(n+1), A141183(n+1)]`
-/

namespace A139828.P3164106399321751796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P3164106399321751796

/-! ## A139828.P3969659268120064473

`∩[A123365(n+1), A141183(n+1)]`
-/

namespace A139828.P3969659268120064473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P3969659268120064473

/-! ## A139828.P166107047072884924

`∩[A038881(n+1), A332514(n+1)]`
-/

namespace A139828.P166107047072884924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P166107047072884924

/-! ## A139828.P11374029723783215661

`∩[A141183(n+1), A279815(n+1)]`
-/

namespace A139828.P11374029723783215661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P11374029723783215661

/-! ## A139828.P15264932269800013980

`∩[A068229(n+1), A191060(n+1)]`
-/

namespace A139828.P15264932269800013980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P15264932269800013980

/-! ## A139828.P10822393162638880449

`∩[A191060(n+1), A332514(n+1)]`
-/

namespace A139828.P10822393162638880449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P10822393162638880449

/-! ## A139828.P6420641373024659826

`∩[A038908(n+1), A068229(n+1)]`
-/

namespace A139828.P6420641373024659826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P6420641373024659826

/-! ## A139828.P6183625858977711629

`∩[A038908(n+1), A141183(n+1)]`
-/

namespace A139828.P6183625858977711629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P6183625858977711629

/-! ## A139828.P13199697720487280726

`∩[A038908(n+1), A332514(n+1)]`
-/

namespace A139828.P13199697720487280726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P13199697720487280726

/-! ## A139828.P7957129046187926261

`∩[A055664(n+1), A141183(n+1)]`
-/

namespace A139828.P7957129046187926261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P7957129046187926261

/-! ## A139828.P7431141616040700212

`∩[A003630(n+1), A141183(n+1)]`
-/

namespace A139828.P7431141616040700212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P7431141616040700212

/-! ## A139828.P2347104279930737568

`∩[A133290(n+1), A141183(n+1)]`
-/

namespace A139828.P2347104279930737568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P2347104279930737568

/-! ## A139828.P13667288404201046369

`∩[A137827(n+1), A141183(n+1)]`
-/

namespace A139828.P13667288404201046369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P13667288404201046369

/-! ## A139828.P13120018573722038463

`∩[A040125(n+1), A141183(n+1)]`
-/

namespace A139828.P13120018573722038463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139828.P13120018573722038463

/-!
# A139829: Primes of the form 4x^2+4xy+11y^2.

The programs for A139829, the canonical program `A139829.P13665928787856766008` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139829 has offset 1).

The definition of A139829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5027 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139829.P12301163909208641890

`∪[A139859(n+1), A139902(n+1)]`
-/

namespace A139829.P12301163909208641890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P12301163909208641890

namespace A139829

/-- `∪[A139859(n+1), A139902(n+1)]` -/
def P12301163909208641890.Spec : Prop :=
  ∀ n, (P12301163909208641890.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P13665928787856766008

`∩[A007520(n+1), A033201(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139829

/-- `∩[A007520(n+1), A033201(n+1)]` -/
def P13665928787856766008.Spec : Prop :=
  ∀ n, (P13665928787856766008.a n : ℤ) = A139829 (n + 1)

theorem P13665928787856766008.correct : P13665928787856766008.Spec := by
  intro n
  simp only [A139829, Nat.add_sub_cancel]

end A139829

/-! ## A139829.P16945103037977412205

`∩[A045339(n+1), A033201(n+1)]`
-/

namespace A139829.P16945103037977412205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P16945103037977412205

namespace A139829

/-- `∩[A045339(n+1), A033201(n+1)]` -/
def P16945103037977412205.Spec : Prop :=
  ∀ n, (P16945103037977412205.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P14242860660922056409

`∩[A007520(n+1), A040105(n+1)]`
-/

namespace A139829.P14242860660922056409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P14242860660922056409

namespace A139829

/-- `∩[A007520(n+1), A040105(n+1)]` -/
def P14242860660922056409.Spec : Prop :=
  ∀ n, (P14242860660922056409.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P12850834408245365094

`∩[A007520(n+1), A040147(n+1)]`
-/

namespace A139829.P12850834408245365094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P12850834408245365094

namespace A139829

/-- `∩[A007520(n+1), A040147(n+1)]` -/
def P12850834408245365094.Spec : Prop :=
  ∀ n, (P12850834408245365094.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P138118519167304505

`∩[A007520(n+1), A038872(n+1)]`
-/

namespace A139829.P138118519167304505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P138118519167304505

namespace A139829

/-- `∩[A007520(n+1), A038872(n+1)]` -/
def P138118519167304505.Spec : Prop :=
  ∀ n, (P138118519167304505.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P14903474029038089359

`∩[A007520(n+1), A045468(n+1)]`
-/

namespace A139829.P14903474029038089359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P14903474029038089359

namespace A139829

/-- `∩[A007520(n+1), A045468(n+1)]` -/
def P14903474029038089359.Spec : Prop :=
  ∀ n, (P14903474029038089359.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P13777216332459589610

`∩[A045339(n+1), A045468(n+1)]`
-/

namespace A139829.P13777216332459589610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P13777216332459589610

namespace A139829

/-- `∩[A045339(n+1), A045468(n+1)]` -/
def P13777216332459589610.Spec : Prop :=
  ∀ n, (P13777216332459589610.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P12609735129570767062

`∩[A007520(n+1), A293859(n+1)]`
-/

namespace A139829.P12609735129570767062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P12609735129570767062

namespace A139829

/-- `∩[A007520(n+1), A293859(n+1)]` -/
def P12609735129570767062.Spec : Prop :=
  ∀ n, (P12609735129570767062.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P10020089934390799533

`∩[A007520(n+1), A038880(n+1)]`
-/

namespace A139829.P10020089934390799533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P10020089934390799533

namespace A139829

/-- `∩[A007520(n+1), A038880(n+1)]` -/
def P10020089934390799533.Spec : Prop :=
  ∀ n, (P10020089934390799533.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P16428198292783996255

`∩[A033201(n+1), A038880(n+1)]`
-/

namespace A139829.P16428198292783996255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P16428198292783996255

namespace A139829

/-- `∩[A033201(n+1), A038880(n+1)]` -/
def P16428198292783996255.Spec : Prop :=
  ∀ n, (P16428198292783996255.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P7047761669005579071

`∩[A002145(n+1), A033201(n+1)]`
-/

namespace A139829.P7047761669005579071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P7047761669005579071

namespace A139829

/-- `∩[A002145(n+1), A033201(n+1)]` -/
def P7047761669005579071.Spec : Prop :=
  ∀ n, (P7047761669005579071.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P18035366188491421468

`∩[A033201(n+1), A045326(n+1)]`
-/

namespace A139829.P18035366188491421468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P18035366188491421468

namespace A139829

/-- `∩[A033201(n+1), A045326(n+1)]` -/
def P18035366188491421468.Spec : Prop :=
  ∀ n, (P18035366188491421468.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P8522885447038681968

`∩[A003626(n+1), A007520(n+1)]`
-/

namespace A139829.P8522885447038681968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P8522885447038681968

namespace A139829

/-- `∩[A003626(n+1), A007520(n+1)]` -/
def P8522885447038681968.Spec : Prop :=
  ∀ n, (P8522885447038681968.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P3979946060786573429

`∩[A003626(n+1), A033201(n+1)]`
-/

namespace A139829.P3979946060786573429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P3979946060786573429

namespace A139829

/-- `∩[A003626(n+1), A033201(n+1)]` -/
def P3979946060786573429.Spec : Prop :=
  ∀ n, (P3979946060786573429.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P12091842569080282945

`∩[A003629(n+1), A033201(n+1)]`
-/

namespace A139829.P12091842569080282945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P12091842569080282945

namespace A139829

/-- `∩[A003629(n+1), A033201(n+1)]` -/
def P12091842569080282945.Spec : Prop :=
  ∀ n, (P12091842569080282945.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P6270593934182672135

`∩[A003626(n+1), A045339(n+1)]`
-/

namespace A139829.P6270593934182672135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P6270593934182672135

namespace A139829

/-- `∩[A003626(n+1), A045339(n+1)]` -/
def P6270593934182672135.Spec : Prop :=
  ∀ n, (P6270593934182672135.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P13002877095418287746

`∩[A033201(n+1), A042999(n+1)]`
-/

namespace A139829.P13002877095418287746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P13002877095418287746

namespace A139829

/-- `∩[A033201(n+1), A042999(n+1)]` -/
def P13002877095418287746.Spec : Prop :=
  ∀ n, (P13002877095418287746.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P4890257383426041777

`∩[A003626(n+1), A192717(n+1)]`
-/

namespace A139829.P4890257383426041777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P4890257383426041777

namespace A139829

/-- `∩[A003626(n+1), A192717(n+1)]` -/
def P4890257383426041777.Spec : Prop :=
  ∀ n, (P4890257383426041777.a n : ℤ) = A139829 (n + 1)

end A139829

/-! ## A139829.P16571539969980999768

`∩[A003626(n+1), A332446(n+1)]`
-/

namespace A139829.P16571539969980999768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139829.P16571539969980999768

namespace A139829

/-- `∩[A003626(n+1), A332446(n+1)]` -/
def P16571539969980999768.Spec : Prop :=
  ∀ n, (P16571539969980999768.a n : ℤ) = A139829 (n + 1)

end A139829

/-!
# A139830: Primes of the form 7x^2+6xy+7y^2.

The programs for A139830, the canonical program `A139830.P14692723583696609708` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139830 has offset 1).

The definition of A139830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9819 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139830.P14692723583696609708

`p?[or(7, 4*5*n)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A139830

/-- `p?[or(7, 4*5*n)]` -/
def P14692723583696609708.Spec : Prop :=
  ∀ n, (P14692723583696609708.a n : ℤ) = A139830 (n + 1)

theorem P14692723583696609708.correct : P14692723583696609708.Spec := by
  intro n
  simp only [A139830, Nat.add_sub_cancel]

end A139830

/-! ## A139830.P5674134304074291349

`p?[xor(2, 10*n+5)+10*n]`
-/

namespace A139830.P5674134304074291349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (10 * n + 5) + 10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A139830.P5674134304074291349

namespace A139830

/-- `p?[xor(2, 10*n+5)+10*n]` -/
def P5674134304074291349.Spec : Prop :=
  ∀ n, (P5674134304074291349.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P8417131407491355667

`p?[8*n-(2-n%5)²]`
-/

namespace A139830.P8417131407491355667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - (2 - ((n % 5 : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139830.P8417131407491355667

namespace A139830

/-- `p?[8*n-(2-n%5)²]` -/
def P8417131407491355667.Spec : Prop :=
  ∀ n, P8417131407491355667.a n = A139830 (n + 1)

end A139830

/-! ## A139830.P764206527412174951

`p?[xor(n, -(a(n-1)+7))]` with `a(0)=4`
-/

namespace A139830.P764206527412174951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  Int.xor (n : ℤ) (-(f1 (n - 1) + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139830.P764206527412174951

namespace A139830

/-- `p?[xor(n, -(a(n-1)+7))]` -/
def P764206527412174951.Spec : Prop :=
  ∀ n, P764206527412174951.a n = A139830 (n + 1)

end A139830

/-! ## A139830.P14064739994101355640

`∩[A014663(n+1), A106865(n+1)]`
-/

namespace A139830.P14064739994101355640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P14064739994101355640

namespace A139830

/-- `∩[A014663(n+1), A106865(n+1)]` -/
def P14064739994101355640.Spec : Prop :=
  ∀ n, (P14064739994101355640.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P16899261748118901071

`∩[A007522(n+1), A053027(n+1)]`
-/

namespace A139830.P16899261748118901071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P16899261748118901071

namespace A139830

/-- `∩[A007522(n+1), A053027(n+1)]` -/
def P16899261748118901071.Spec : Prop :=
  ∀ n, (P16899261748118901071.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P970999027493556094

`∩[A053027(n+1), A045382(n+1)]`
-/

namespace A139830.P970999027493556094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P970999027493556094

namespace A139830

/-- `∩[A053027(n+1), A045382(n+1)]` -/
def P970999027493556094.Spec : Prop :=
  ∀ n, (P970999027493556094.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P16051739995769421078

`∩[A053027(n+1), A106889(n+1)]`
-/

namespace A139830.P16051739995769421078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P16051739995769421078

namespace A139830

/-- `∩[A053027(n+1), A106889(n+1)]` -/
def P16051739995769421078.Spec : Prop :=
  ∀ n, (P16051739995769421078.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P17700806148984711676

`∩[A004628(n+1), A053027(n+1)]`
-/

namespace A139830.P17700806148984711676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P17700806148984711676

namespace A139830

/-- `∩[A004628(n+1), A053027(n+1)]` -/
def P17700806148984711676.Spec : Prop :=
  ∀ n, (P17700806148984711676.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P14683489950286999345

`∩[A049542(n+1), A122870(n+1)]`
-/

namespace A139830.P14683489950286999345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P14683489950286999345

namespace A139830

/-- `∩[A049542(n+1), A122870(n+1)]` -/
def P14683489950286999345.Spec : Prop :=
  ∀ n, (P14683489950286999345.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P1901338994873077867

`∩[A001132(n+1), A106865(n+1)]`
-/

namespace A139830.P1901338994873077867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P1901338994873077867

namespace A139830

/-- `∩[A001132(n+1), A106865(n+1)]` -/
def P1901338994873077867.Spec : Prop :=
  ∀ n, (P1901338994873077867.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P86623687240770562

`∩[A004628(n+1), A038880(n+1)]`
-/

namespace A139830.P86623687240770562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P86623687240770562

namespace A139830

/-- `∩[A004628(n+1), A038880(n+1)]` -/
def P86623687240770562.Spec : Prop :=
  ∀ n, (P86623687240770562.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P17745905500991130935

`∩[A007522(n+1), A038880(n+1)]`
-/

namespace A139830.P17745905500991130935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P17745905500991130935

namespace A139830

/-- `∩[A007522(n+1), A038880(n+1)]` -/
def P17745905500991130935.Spec : Prop :=
  ∀ n, (P17745905500991130935.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P2152446171869339021

`∩[A038880(n+1), A045382(n+1)]`
-/

namespace A139830.P2152446171869339021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P2152446171869339021

namespace A139830

/-- `∩[A038880(n+1), A045382(n+1)]` -/
def P2152446171869339021.Spec : Prop :=
  ∀ n, (P2152446171869339021.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P2578804827114058631

`∩[A038880(n+1), A053027(n+1)]`
-/

namespace A139830.P2578804827114058631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P2578804827114058631

namespace A139830

/-- `∩[A038880(n+1), A053027(n+1)]` -/
def P2578804827114058631.Spec : Prop :=
  ∀ n, (P2578804827114058631.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P16014595615728446970

`∩[A038880(n+1), A122870(n+1)]`
-/

namespace A139830.P16014595615728446970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P16014595615728446970

namespace A139830

/-- `∩[A038880(n+1), A122870(n+1)]` -/
def P16014595615728446970.Spec : Prop :=
  ∀ n, (P16014595615728446970.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P10155476674247089763

`∩[A003628(n+1), A053027(n+1)]`
-/

namespace A139830.P10155476674247089763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P10155476674247089763

namespace A139830

/-- `∩[A003628(n+1), A053027(n+1)]` -/
def P10155476674247089763.Spec : Prop :=
  ∀ n, (P10155476674247089763.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P15338644918733852897

`∩[A045355(n+1), A053027(n+1)]`
-/

namespace A139830.P15338644918733852897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P15338644918733852897

namespace A139830

/-- `∩[A045355(n+1), A053027(n+1)]` -/
def P15338644918733852897.Spec : Prop :=
  ∀ n, (P15338644918733852897.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P11169431303421347180

`∩[A002145(n+1), A106889(n+1)]`
-/

namespace A139830.P11169431303421347180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P11169431303421347180

namespace A139830

/-- `∩[A002145(n+1), A106889(n+1)]` -/
def P11169431303421347180.Spec : Prop :=
  ∀ n, (P11169431303421347180.a n : ℤ) = A139830 (n + 1)

end A139830

/-! ## A139830.P5325613907414764809

`∩[A003631(n+1), A004628(n+1)]`
-/

namespace A139830.P5325613907414764809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139830.P5325613907414764809

namespace A139830

/-- `∩[A003631(n+1), A004628(n+1)]` -/
def P5325613907414764809.Spec : Prop :=
  ∀ n, (P5325613907414764809.a n : ℤ) = A139830 (n + 1)

end A139830

/-!
# A139831: Primes of the form 2x^2+2xy+23y^2.

The programs for A139831, the canonical program `A139831.P14732116838604130436` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139831 has offset 1).

The definition of A139831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139831.P14732116838604130436

`A107169(n+1)-C(2, n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139831

/-- `A107169(n+1)-C(2, n+2)` -/
def P14732116838604130436.Spec : Prop :=
  ∀ n, P14732116838604130436.a n = A139831 (n + 1)

theorem P14732116838604130436.correct : P14732116838604130436.Spec := by
  intro n
  simp only [A139831, Nat.add_sub_cancel]

end A139831

/-! ## A139831.P5267156367789652854

`A107169(n+1)-A000007(n)`
-/

namespace A139831.P5267156367789652854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1) - A000007 n

end

end A139831.P5267156367789652854

namespace A139831

/-- `A107169(n+1)-A000007(n)` -/
def P5267156367789652854.Spec : Prop :=
  ∀ n, P5267156367789652854.a n = A139831 (n + 1)

end A139831

/-! ## A139831.P3833099491875818724

`ceil(A107169(n+1)/A054977(n))`
-/

namespace A139831.P3833099491875818724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107169 (n + 1) : ℚ) / (A054977 n : ℚ)⌉

end

end A139831.P3833099491875818724

namespace A139831

/-- `ceil(A107169(n+1)/A054977(n))` -/
def P3833099491875818724.Spec : Prop :=
  ∀ n, P3833099491875818724.a n = A139831 (n + 1)

end A139831

/-! ## A139831.P18058725463404537622

`A107169(n+1)-A211487(4*(n+1))`
-/

namespace A139831.P18058725463404537622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1) - A211487 (4 * (n + 1))

end

end A139831.P18058725463404537622

namespace A139831

/-- `A107169(n+1)-A211487(4*(n+1))` -/
def P18058725463404537622.Spec : Prop :=
  ∀ n, P18058725463404537622.a n = A139831 (n + 1)

end A139831

/-! ## A139831.P18233274171523208190

`A107169(n+1)-A091225(A024906(n+1))`
-/

namespace A139831.P18233274171523208190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1) - A091225 (A024906 (n + 1)).toNat

end

end A139831.P18233274171523208190

namespace A139831

/-- `A107169(n+1)-A091225(A024906(n+1))` -/
def P18233274171523208190.Spec : Prop :=
  ∀ n, P18233274171523208190.a n = A139831 (n + 1)

end A139831

/-! ## A139831.P12092321758308860075

`xor(A091225(A005843(n+1)), A107169(n+1))`
-/

namespace A139831.P12092321758308860075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091225 (A005843 (n + 1)).toNat) (A107169 (n + 1))

end

end A139831.P12092321758308860075

namespace A139831

/-- `xor(A091225(A005843(n+1)), A107169(n+1))` -/
def P12092321758308860075.Spec : Prop :=
  ∀ n, P12092321758308860075.a n = A139831 (n + 1)

end A139831

/-! ## A139831.P16338619377655039171

`A107169(n+1)/A001221(a(A001221(n)))` with `a(0)=2`
-/

namespace A139831.P16338619377655039171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A107169 (n + 1) : ℚ) / (A001221 (SequenceMachineLib.roundAway (a (A001221 n).toNat)).toNat : ℚ)

end

end A139831.P16338619377655039171

namespace A139831

/-- `A107169(n+1)/A001221(a(A001221(n)))` -/
def P16338619377655039171.Spec : Prop :=
  ∀ n, P16338619377655039171.a n = (A139831 (n + 1) : ℚ)

end A139831

/-! ## A139831.P6749222752628298370

`A107169(n+1)-val(A167614(n+1), A107169(n+1))`
-/

namespace A139831.P6749222752628298370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1) - (SequenceMachineLib.valuation (A167614 (n + 1)).toNat (A107169 (n + 1)).toNat : ℤ)

end

end A139831.P6749222752628298370

namespace A139831

/-- `A107169(n+1)-val(A167614(n+1), A107169(n+1))` -/
def P6749222752628298370.Spec : Prop :=
  ∀ n, P6749222752628298370.a n = A139831 (n + 1)

end A139831

/-! ## A139831.P1962334583172680159

`∩[A106865(n+1), A343241(n+1)]`
-/

namespace A139831.P1962334583172680159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P1962334583172680159

namespace A139831

/-- `∩[A106865(n+1), A343241(n+1)]` -/
def P1962334583172680159.Spec : Prop :=
  ∀ n, (P1962334583172680159.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P15840707433077193207

`∩[A141123(n+1), A343241(n+1)]`
-/

namespace A139831.P15840707433077193207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P15840707433077193207

namespace A139831

/-- `∩[A141123(n+1), A343241(n+1)]` -/
def P15840707433077193207.Spec : Prop :=
  ∀ n, (P15840707433077193207.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P3433126254969816168

`∩[A106859(n+1), A385220(n+1)]`
-/

namespace A139831.P3433126254969816168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P3433126254969816168

namespace A139831

/-- `∩[A106859(n+1), A385220(n+1)]` -/
def P3433126254969816168.Spec : Prop :=
  ∀ n, (P3433126254969816168.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P3610390684112476753

`∩[A106859(n+1), A363215(n+1)]`
-/

namespace A139831.P3610390684112476753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P3610390684112476753

namespace A139831

/-- `∩[A106859(n+1), A363215(n+1)]` -/
def P3610390684112476753.Spec : Prop :=
  ∀ n, (P3610390684112476753.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P8930903907647045670

`∩[A106865(n+1), A363215(n+1)]`
-/

namespace A139831.P8930903907647045670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P8930903907647045670

namespace A139831

/-- `∩[A106865(n+1), A363215(n+1)]` -/
def P8930903907647045670.Spec : Prop :=
  ∀ n, (P8930903907647045670.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P15240106246730063123

`∩[A343241(n+1), A363215(n+1)]`
-/

namespace A139831.P15240106246730063123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P15240106246730063123

namespace A139831

/-- `∩[A343241(n+1), A363215(n+1)]` -/
def P15240106246730063123.Spec : Prop :=
  ∀ n, (P15240106246730063123.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P4890980271503832068

`∩[A385225(n+1), A343241(n+1)]`
-/

namespace A139831.P4890980271503832068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P4890980271503832068

namespace A139831

/-- `∩[A385225(n+1), A343241(n+1)]` -/
def P4890980271503832068.Spec : Prop :=
  ∀ n, (P4890980271503832068.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P9456573836379510997

`∩[A040101(n+1), A343241(n+1)]`
-/

namespace A139831.P9456573836379510997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P9456573836379510997

namespace A139831

/-- `∩[A040101(n+1), A343241(n+1)]` -/
def P9456573836379510997.Spec : Prop :=
  ∀ n, (P9456573836379510997.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P14411044999584798764

`∩[A040124(n+1), A343241(n+1)]`
-/

namespace A139831.P14411044999584798764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P14411044999584798764

namespace A139831

/-- `∩[A040124(n+1), A343241(n+1)]` -/
def P14411044999584798764.Spec : Prop :=
  ∀ n, (P14411044999584798764.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P18043913161323746616

`∩[A040994(n+1), A343241(n+1)]`
-/

namespace A139831.P18043913161323746616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P18043913161323746616

namespace A139831

/-- `∩[A040994(n+1), A343241(n+1)]` -/
def P18043913161323746616.Spec : Prop :=
  ∀ n, (P18043913161323746616.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P9303110081542279435

`∩[A045317(n+1), A343241(n+1)]`
-/

namespace A139831.P9303110081542279435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P9303110081542279435

namespace A139831

/-- `∩[A045317(n+1), A343241(n+1)]` -/
def P9303110081542279435.Spec : Prop :=
  ∀ n, (P9303110081542279435.a n : ℤ) = A139831 (n + 1)

end A139831

/-! ## A139831.P6607314562100989545

`∩[A106865(n+1), A191018(n+1)]`
-/

namespace A139831.P6607314562100989545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139831.P6607314562100989545

namespace A139831

/-- `∩[A106865(n+1), A191018(n+1)]` -/
def P6607314562100989545.Spec : Prop :=
  ∀ n, (P6607314562100989545.a n : ℤ) = A139831 (n + 1)

end A139831

/-!
# A139832: Primes of the form 7x^2+4xy+7y^2.

The programs for A139832, the canonical program `A139832.P1996384632668856702` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139832 has offset 1).

The definition of A139832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139832.P4435336393756670803

`A141304(n+2)`
-/

namespace A139832.P4435336393756670803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 2)

end

end A139832.P4435336393756670803

namespace A139832

/-- `A141304(n+2)` -/
def P4435336393756670803.Spec : Prop :=
  ∀ n, P4435336393756670803.a n = A139832 (n + 1)

end A139832

/-! ## A139832.P1996384632668856702

`p?[A106865(n+1)%3*A106865(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139832

/-- `p?[A106865(n+1)%3*A106865(n+1)]` -/
def P1996384632668856702.Spec : Prop :=
  ∀ n, P1996384632668856702.a n = A139832 (n + 1)

theorem P1996384632668856702.correct : P1996384632668856702.Spec := by
  intro n
  simp only [A139832, Nat.add_sub_cancel]

end A139832

/-! ## A139832.P14549536357084855328

`p?[or(2, A106952(n+2))]`
-/

namespace A139832.P14549536357084855328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A106952 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139832.P14549536357084855328

namespace A139832

/-- `p?[or(2, A106952(n+2))]` -/
def P14549536357084855328.Spec : Prop :=
  ∀ n, P14549536357084855328.a n = A139832 (n + 1)

end A139832

/-! ## A139832.P4669969532659457405

`∩[A106865(n+1), A106952(n+2)]`
-/

namespace A139832.P4669969532659457405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P4669969532659457405

namespace A139832

/-- `∩[A106865(n+1), A106952(n+2)]` -/
def P4669969532659457405.Spec : Prop :=
  ∀ n, (P4669969532659457405.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P16092526208493468180

`∩[A053027(n+1), A068229(n+1)]`
-/

namespace A139832.P16092526208493468180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P16092526208493468180

namespace A139832

/-- `∩[A053027(n+1), A068229(n+1)]` -/
def P16092526208493468180.Spec : Prop :=
  ∀ n, (P16092526208493468180.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P13311138285003087104

`∩[A053027(n+1), A106952(n+2)]`
-/

namespace A139832.P13311138285003087104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P13311138285003087104

namespace A139832

/-- `∩[A053027(n+1), A106952(n+2)]` -/
def P13311138285003087104.Spec : Prop :=
  ∀ n, (P13311138285003087104.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P17041238857421304888

`∩[A106952(n+1), A139513(n+2)]`
-/

namespace A139832.P17041238857421304888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P17041238857421304888

namespace A139832

/-- `∩[A106952(n+1), A139513(n+2)]` -/
def P17041238857421304888.Spec : Prop :=
  ∀ n, (P17041238857421304888.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P1014571134573843044

`∩[A045375(n+1), A122870(n+1)]`
-/

namespace A139832.P1014571134573843044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P1014571134573843044

namespace A139832

/-- `∩[A045375(n+1), A122870(n+1)]` -/
def P1014571134573843044.Spec : Prop :=
  ∀ n, (P1014571134573843044.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P16653548067831685875

`∩[A106865(n+1), A007645(n+2)]`
-/

namespace A139832.P16653548067831685875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P16653548067831685875

namespace A139832

/-- `∩[A106865(n+1), A007645(n+2)]` -/
def P16653548067831685875.Spec : Prop :=
  ∀ n, (P16653548067831685875.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P13391969654610846359

`∩[A007645(n+2), A122870(n+2)]`
-/

namespace A139832.P13391969654610846359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P13391969654610846359

namespace A139832

/-- `∩[A007645(n+2), A122870(n+2)]` -/
def P13391969654610846359.Spec : Prop :=
  ∀ n, (P13391969654610846359.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P15946321292722714224

`∩[A045331(n+2), A122870(n+2)]`
-/

namespace A139832.P15946321292722714224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P15946321292722714224

namespace A139832

/-- `∩[A045331(n+2), A122870(n+2)]` -/
def P15946321292722714224.Spec : Prop :=
  ∀ n, (P15946321292722714224.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P11010631927934745450

`∩[A038887(n+1), A068229(n+1)]`
-/

namespace A139832.P11010631927934745450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P11010631927934745450

namespace A139832

/-- `∩[A038887(n+1), A068229(n+1)]` -/
def P11010631927934745450.Spec : Prop :=
  ∀ n, (P11010631927934745450.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P7671907516234100392

`∩[A002145(n+1), A106952(n+2)]`
-/

namespace A139832.P7671907516234100392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P7671907516234100392

namespace A139832

/-- `∩[A002145(n+1), A106952(n+2)]` -/
def P7671907516234100392.Spec : Prop :=
  ∀ n, (P7671907516234100392.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P9600099654372669028

`∩[A038887(n+1), A106952(n+2)]`
-/

namespace A139832.P9600099654372669028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P9600099654372669028

namespace A139832

/-- `∩[A038887(n+1), A106952(n+2)]` -/
def P9600099654372669028.Spec : Prop :=
  ∀ n, (P9600099654372669028.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P1560313071720900731

`∩[A045326(n+1), A106952(n+2)]`
-/

namespace A139832.P1560313071720900731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P1560313071720900731

namespace A139832

/-- `∩[A045326(n+1), A106952(n+2)]` -/
def P1560313071720900731.Spec : Prop :=
  ∀ n, (P1560313071720900731.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P10745718862106409868

`∩[A106865(n+1), A055664(n+2)]`
-/

namespace A139832.P10745718862106409868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P10745718862106409868

namespace A139832

/-- `∩[A106865(n+1), A055664(n+2)]` -/
def P10745718862106409868.Spec : Prop :=
  ∀ n, (P10745718862106409868.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P14656670322841038097

`∩[A091727(n+1), A106952(n+2)]`
-/

namespace A139832.P14656670322841038097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P14656670322841038097

namespace A139832

/-- `∩[A091727(n+1), A106952(n+2)]` -/
def P14656670322841038097.Spec : Prop :=
  ∀ n, (P14656670322841038097.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P13222653221918466527

`∩[A038887(n+2), A122870(n+2)]`
-/

namespace A139832.P13222653221918466527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038887 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P13222653221918466527

namespace A139832

/-- `∩[A038887(n+2), A122870(n+2)]` -/
def P13222653221918466527.Spec : Prop :=
  ∀ n, (P13222653221918466527.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P2154133886666215881

`∩[A055664(n+2), A122870(n+2)]`
-/

namespace A139832.P2154133886666215881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P2154133886666215881

namespace A139832

/-- `∩[A055664(n+2), A122870(n+2)]` -/
def P2154133886666215881.Spec : Prop :=
  ∀ n, (P2154133886666215881.a n : ℤ) = A139832 (n + 1)

end A139832

/-! ## A139832.P2732183978938966639

`∩[A106865(n+1), A133290(n+1)]`
-/

namespace A139832.P2732183978938966639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139832.P2732183978938966639

namespace A139832

/-- `∩[A106865(n+1), A133290(n+1)]` -/
def P2732183978938966639.Spec : Prop :=
  ∀ n, (P2732183978938966639.a n : ℤ) = A139832 (n + 1)

end A139832

/-!
# A139833: Primes of the form 2x^2+2xy+29y^2.

The programs for A139833, the canonical program `A139833.P7529889308705541114` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139833 has offset 1).

The definition of A139833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139833.P8663738816390754238

`∩[A141192(n+1), A243183(n+1)]`
-/

namespace A139833.P8663738816390754238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P8663738816390754238

namespace A139833

/-- `∩[A141192(n+1), A243183(n+1)]` -/
def P8663738816390754238.Spec : Prop :=
  ∀ n, (P8663738816390754238.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P6732877651100301725

`∩[A002313(n+1), A141192(n+1)]`
-/

namespace A139833.P6732877651100301725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P6732877651100301725

namespace A139833

/-- `∩[A002313(n+1), A141192(n+1)]` -/
def P6732877651100301725.Spec : Prop :=
  ∀ n, (P6732877651100301725.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P5882512608719674071

`∩[A038935(n+1), A243183(n+1)]`
-/

namespace A139833.P5882512608719674071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P5882512608719674071

namespace A139833

/-- `∩[A038935(n+1), A243183(n+1)]` -/
def P5882512608719674071.Spec : Prop :=
  ∀ n, (P5882512608719674071.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P18030498417123110436

`∩[A055025(n+1), A141192(n+1)]`
-/

namespace A139833.P18030498417123110436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P18030498417123110436

namespace A139833

/-- `∩[A055025(n+1), A141192(n+1)]` -/
def P18030498417123110436.Spec : Prop :=
  ∀ n, (P18030498417123110436.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P15584881031086120162

`∩[A038875(n+1), A141192(n+1)]`
-/

namespace A139833.P15584881031086120162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P15584881031086120162

namespace A139833

/-- `∩[A038875(n+1), A141192(n+1)]` -/
def P15584881031086120162.Spec : Prop :=
  ∀ n, (P15584881031086120162.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P7529889308705541114

`∩[A191063(n+1), A243183(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139833

/-- `∩[A191063(n+1), A243183(n+1)]` -/
def P7529889308705541114.Spec : Prop :=
  ∀ n, (P7529889308705541114.a n : ℤ) = A139833 (n + 1)

theorem P7529889308705541114.correct : P7529889308705541114.Spec := by
  intro n
  simp only [A139833, Nat.add_sub_cancel]

end A139833

/-! ## A139833.P5779919467698185358

`∩[A038892(n+1), A141192(n+1)]`
-/

namespace A139833.P5779919467698185358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P5779919467698185358

namespace A139833

/-- `∩[A038892(n+1), A141192(n+1)]` -/
def P5779919467698185358.Spec : Prop :=
  ∀ n, (P5779919467698185358.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P17749262847095175732

`∩[A038892(n+1), A243183(n+1)]`
-/

namespace A139833.P17749262847095175732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P17749262847095175732

namespace A139833

/-- `∩[A038892(n+1), A243183(n+1)]` -/
def P17749262847095175732.Spec : Prop :=
  ∀ n, (P17749262847095175732.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P16169245042875153953

`∩[A141192(n+1), A301916(n+1)]`
-/

namespace A139833.P16169245042875153953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P16169245042875153953

namespace A139833

/-- `∩[A141192(n+1), A301916(n+1)]` -/
def P16169245042875153953.Spec : Prop :=
  ∀ n, (P16169245042875153953.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P15393900958093030276

`∩[A141192(n+1), A281292(n+1)]`
-/

namespace A139833.P15393900958093030276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P15393900958093030276

namespace A139833

/-- `∩[A141192(n+1), A281292(n+1)]` -/
def P15393900958093030276.Spec : Prop :=
  ∀ n, (P15393900958093030276.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P18424211901476089621

`∩[A141192(n+1), A224450(n+1)]`
-/

namespace A139833.P18424211901476089621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P18424211901476089621

namespace A139833

/-- `∩[A141192(n+1), A224450(n+1)]` -/
def P18424211901476089621.Spec : Prop :=
  ∀ n, (P18424211901476089621.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P17426099279345106328

`∩[A003654(n+1), A141192(n+1)]`
-/

namespace A139833.P17426099279345106328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P17426099279345106328

namespace A139833

/-- `∩[A003654(n+1), A141192(n+1)]` -/
def P17426099279345106328.Spec : Prop :=
  ∀ n, (P17426099279345106328.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P3160053240122564181

`∩[A003814(n+1), A141192(n+1)]`
-/

namespace A139833.P3160053240122564181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P3160053240122564181

namespace A139833

/-- `∩[A003814(n+1), A141192(n+1)]` -/
def P3160053240122564181.Spec : Prop :=
  ∀ n, (P3160053240122564181.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P15974310934783745604

`∩[A031396(n+1), A141192(n+1)]`
-/

namespace A139833.P15974310934783745604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P15974310934783745604

namespace A139833

/-- `∩[A031396(n+1), A141192(n+1)]` -/
def P15974310934783745604.Spec : Prop :=
  ∀ n, (P15974310934783745604.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P1563312442302301296

`∩[A025284(n+1), A141192(n+1)]`
-/

namespace A139833.P1563312442302301296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P1563312442302301296

namespace A139833

/-- `∩[A025284(n+1), A141192(n+1)]` -/
def P1563312442302301296.Spec : Prop :=
  ∀ n, (P1563312442302301296.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P6730959230975843051

`∩[A125022(n+1), A141192(n+1)]`
-/

namespace A139833.P6730959230975843051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P6730959230975843051

namespace A139833

/-- `∩[A125022(n+1), A141192(n+1)]` -/
def P6730959230975843051.Spec : Prop :=
  ∀ n, (P6730959230975843051.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P13619956538680442275

`∩[A020893(n+1), A141192(n+1)]`
-/

namespace A139833.P13619956538680442275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P13619956538680442275

namespace A139833

/-- `∩[A020893(n+1), A141192(n+1)]` -/
def P13619956538680442275.Spec : Prop :=
  ∀ n, (P13619956538680442275.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P11103237891119447051

`∩[A141192(n+1), A347877(n+1)]`
-/

namespace A139833.P11103237891119447051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P11103237891119447051

namespace A139833

/-- `∩[A141192(n+1), A347877(n+1)]` -/
def P11103237891119447051.Spec : Prop :=
  ∀ n, (P11103237891119447051.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P8573326072115994427

`∩[A008784(n+1), A141192(n+1)]`
-/

namespace A139833.P8573326072115994427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139833.P8573326072115994427

namespace A139833

/-- `∩[A008784(n+1), A141192(n+1)]` -/
def P8573326072115994427.Spec : Prop :=
  ∀ n, (P8573326072115994427.a n : ℤ) = A139833 (n + 1)

end A139833

/-! ## A139833.P3172275385284172027

`filter[A141192(n+1), A229062(#)]`
-/

namespace A139833.P3172275385284172027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A139833.P3172275385284172027

namespace A139833

/-- `filter[A141192(n+1), A229062(#)]` -/
def P3172275385284172027.Spec : Prop :=
  ∀ n, P3172275385284172027.a n = A139833 (n + 1)

end A139833

/-!
# A139834: Primes of the form 6x^2+6xy+11y^2.

The programs for A139834, the canonical program `A139834.P9214492758601902631` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139834 has offset 1).

The definition of A139834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139834.P17706588374778892300

`∩[A068231(n+1), A106863(n+1)]`
-/

namespace A139834.P17706588374778892300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P17706588374778892300

namespace A139834

/-- `∩[A068231(n+1), A106863(n+1)]` -/
def P17706588374778892300.Spec : Prop :=
  ∀ n, (P17706588374778892300.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P14295625887324177825

`∩[A106863(n+1), A141123(n+1)]`
-/

namespace A139834.P14295625887324177825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P14295625887324177825

namespace A139834

/-- `∩[A106863(n+1), A141123(n+1)]` -/
def P14295625887324177825.Spec : Prop :=
  ∀ n, (P14295625887324177825.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P4615645308496679284

`∩[A106863(n+1), A141187(n+1)]`
-/

namespace A139834.P4615645308496679284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P4615645308496679284

namespace A139834

/-- `∩[A106863(n+1), A141187(n+1)]` -/
def P4615645308496679284.Spec : Prop :=
  ∀ n, (P4615645308496679284.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P9214492758601902631

`∩[A068231(n+1), A191019(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139834

/-- `∩[A068231(n+1), A191019(n+1)]` -/
def P9214492758601902631.Spec : Prop :=
  ∀ n, (P9214492758601902631.a n : ℤ) = A139834 (n + 1)

theorem P9214492758601902631.correct : P9214492758601902631.Spec := by
  intro n
  simp only [A139834, Nat.add_sub_cancel]

end A139834

/-! ## A139834.P7078214436678601690

`∩[A141123(n+1), A191019(n+1)]`
-/

namespace A139834.P7078214436678601690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P7078214436678601690

namespace A139834

/-- `∩[A141123(n+1), A191019(n+1)]` -/
def P7078214436678601690.Spec : Prop :=
  ∀ n, (P7078214436678601690.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P10277871123583668207

`∩[A141187(n+1), A191019(n+1)]`
-/

namespace A139834.P10277871123583668207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P10277871123583668207

namespace A139834

/-- `∩[A141187(n+1), A191019(n+1)]` -/
def P10277871123583668207.Spec : Prop :=
  ∀ n, (P10277871123583668207.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P11095740493270535426

`∩[A038936(n+1), A068231(n+1)]`
-/

namespace A139834.P11095740493270535426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P11095740493270535426

namespace A139834

/-- `∩[A038936(n+1), A068231(n+1)]` -/
def P11095740493270535426.Spec : Prop :=
  ∀ n, (P11095740493270535426.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P236555670271902417

`∩[A038936(n+1), A141123(n+1)]`
-/

namespace A139834.P236555670271902417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P236555670271902417

namespace A139834

/-- `∩[A038936(n+1), A141123(n+1)]` -/
def P236555670271902417.Spec : Prop :=
  ∀ n, (P236555670271902417.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P17552732803191218297

`∩[A038936(n+1), A141187(n+1)]`
-/

namespace A139834.P17552732803191218297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P17552732803191218297

namespace A139834

/-- `∩[A038936(n+1), A141187(n+1)]` -/
def P17552732803191218297.Spec : Prop :=
  ∀ n, (P17552732803191218297.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P16633695011759028968

`∩[A068231(n+1), A341787(n+1)]`
-/

namespace A139834.P16633695011759028968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P16633695011759028968

namespace A139834

/-- `∩[A068231(n+1), A341787(n+1)]` -/
def P16633695011759028968.Spec : Prop :=
  ∀ n, (P16633695011759028968.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P1097039254236012076

`∩[A341787(n+1), A332516(n+1)]`
-/

namespace A139834.P1097039254236012076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P1097039254236012076

namespace A139834

/-- `∩[A341787(n+1), A332516(n+1)]` -/
def P1097039254236012076.Spec : Prop :=
  ∀ n, (P1097039254236012076.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P17891665071090586211

`∩[A038892(n+1), A068231(n+1)]`
-/

namespace A139834.P17891665071090586211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P17891665071090586211

namespace A139834

/-- `∩[A038892(n+1), A068231(n+1)]` -/
def P17891665071090586211.Spec : Prop :=
  ∀ n, (P17891665071090586211.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P11948385570474015848

`∩[A038892(n+1), A141187(n+1)]`
-/

namespace A139834.P11948385570474015848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P11948385570474015848

namespace A139834

/-- `∩[A038892(n+1), A141187(n+1)]` -/
def P11948385570474015848.Spec : Prop :=
  ∀ n, (P11948385570474015848.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P4779018891933804426

`∩[A068231(n+1), A297176(n+1)]`
-/

namespace A139834.P4779018891933804426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P4779018891933804426

namespace A139834

/-- `∩[A068231(n+1), A297176(n+1)]` -/
def P4779018891933804426.Spec : Prop :=
  ∀ n, (P4779018891933804426.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P8253604476736036411

`∩[A038892(n+1), A332516(n+1)]`
-/

namespace A139834.P8253604476736036411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P8253604476736036411

namespace A139834

/-- `∩[A038892(n+1), A332516(n+1)]` -/
def P8253604476736036411.Spec : Prop :=
  ∀ n, (P8253604476736036411.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P1676830509913879724

`∩[A297176(n+1), A141187(n+1)]`
-/

namespace A139834.P1676830509913879724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P1676830509913879724

namespace A139834

/-- `∩[A297176(n+1), A141187(n+1)]` -/
def P1676830509913879724.Spec : Prop :=
  ∀ n, (P1676830509913879724.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P11745365228007936604

`∩[A040146(n+1), A068231(n+1)]`
-/

namespace A139834.P11745365228007936604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P11745365228007936604

namespace A139834

/-- `∩[A040146(n+1), A068231(n+1)]` -/
def P11745365228007936604.Spec : Prop :=
  ∀ n, (P11745365228007936604.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P2108615764026516381

`∩[A040146(n+1), A141123(n+1)]`
-/

namespace A139834.P2108615764026516381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P2108615764026516381

namespace A139834

/-- `∩[A040146(n+1), A141123(n+1)]` -/
def P2108615764026516381.Spec : Prop :=
  ∀ n, (P2108615764026516381.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P13238742463622420380

`∩[A040146(n+1), A141187(n+1)]`
-/

namespace A139834.P13238742463622420380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P13238742463622420380

namespace A139834

/-- `∩[A040146(n+1), A141187(n+1)]` -/
def P13238742463622420380.Spec : Prop :=
  ∀ n, (P13238742463622420380.a n : ℤ) = A139834 (n + 1)

end A139834

/-! ## A139834.P7660058029602058502

`∩[A038892(n+1), A017653(n)]`
-/

namespace A139834.P7660058029602058502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139834.P7660058029602058502

namespace A139834

/-- `∩[A038892(n+1), A017653(n)]` -/
def P7660058029602058502.Spec : Prop :=
  ∀ n, (P7660058029602058502.a n : ℤ) = A139834 (n + 1)

end A139834

/-!
# A139835: Primes of the form 2x^2+2xy+43y^2.

The programs for A139835, there is no canonical definition to state claims against.
-/

/-! ## A139835.P4490553996180533269

`∩[A040138(n+1), A106865(n+1)]`
-/

namespace A139835.P4490553996180533269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139835.P4490553996180533269

/-! ## A139835.P16596962127147204600

`∩[A038889(n+1), A106865(n+1)]`
-/

namespace A139835.P16596962127147204600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139835.P16596962127147204600

/-! ## A139835.P14827953770004550392

`∩[A106865(n+1), A296938(n+1)]`
-/

namespace A139835.P14827953770004550392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139835.P14827953770004550392

/-! ## A139835.P6195804546044234564

`∩[A038972(n+1), A106865(n+1)]`
-/

namespace A139835.P6195804546044234564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139835.P6195804546044234564

/-! ## A139835.P487123725895067806

`∩[A029718(n+1), A038889(n+1)]`
-/

namespace A139835.P487123725895067806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139835.P487123725895067806

/-! ## A139835.P6852994425344148950

`∩[A029718(n+1), A038972(n+1)]`
-/

namespace A139835.P6852994425344148950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139835.P6852994425344148950

/-! ## A139835.P6379674993020053873

`∩[A029718(n+1), A296938(n+1)]`
-/

namespace A139835.P6379674993020053873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139835.P6379674993020053873

/-! ## A139835.P9106212742969492143

`∩[A029718(n+1), A040138(n+1)]`
-/

namespace A139835.P9106212742969492143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139835.P9106212742969492143

/-! ## A139835.P9002278973346473548

`∩[A035258(n+1), A106865(n+1)]`
-/

namespace A139835.P9002278973346473548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139835.P9002278973346473548

/-!
# A139836: Primes of the form 10x^2+10xy+11y^2.

The programs for A139836, the canonical program `A139836.P17757306842670462418` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139836 has offset 1).

The definition of A139836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4965 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139836.P17757306842670462418

`∩[A106935(n+1), A122869(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139836

/-- `∩[A106935(n+1), A122869(n+1)]` -/
def P17757306842670462418.Spec : Prop :=
  ∀ n, (P17757306842670462418.a n : ℤ) = A139836 (n + 1)

theorem P17757306842670462418.correct : P17757306842670462418.Spec := by
  intro n
  simp only [A139836, Nat.add_sub_cancel]

end A139836

/-! ## A139836.P10056562236580061397

`∩[A053032(n+1), A106935(n+1)]`
-/

namespace A139836.P10056562236580061397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P10056562236580061397

namespace A139836

/-- `∩[A053032(n+1), A106935(n+1)]` -/
def P10056562236580061397.Spec : Prop :=
  ∀ n, (P10056562236580061397.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P7981127576786422956

`∩[A106935(n+1), A112860(n+1)]`
-/

namespace A139836.P7981127576786422956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P7981127576786422956

namespace A139836

/-- `∩[A106935(n+1), A112860(n+1)]` -/
def P7981127576786422956.Spec : Prop :=
  ∀ n, (P7981127576786422956.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P5182086385838733160

`∩[A040105(n+1), A106935(n+1)]`
-/

namespace A139836.P5182086385838733160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P5182086385838733160

namespace A139836

/-- `∩[A040105(n+1), A106935(n+1)]` -/
def P5182086385838733160.Spec : Prop :=
  ∀ n, (P5182086385838733160.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P6509233726707469251

`∩[A040147(n+1), A106935(n+1)]`
-/

namespace A139836.P6509233726707469251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P6509233726707469251

namespace A139836

/-- `∩[A040147(n+1), A106935(n+1)]` -/
def P6509233726707469251.Spec : Prop :=
  ∀ n, (P6509233726707469251.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P14664207039973870664

`∩[A038872(n+1), A106935(n+1)]`
-/

namespace A139836.P14664207039973870664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P14664207039973870664

namespace A139836

/-- `∩[A038872(n+1), A106935(n+1)]` -/
def P14664207039973870664.Spec : Prop :=
  ∀ n, (P14664207039973870664.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P11335779525678978331

`∩[A045468(n+1), A106935(n+1)]`
-/

namespace A139836.P11335779525678978331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P11335779525678978331

namespace A139836

/-- `∩[A045468(n+1), A106935(n+1)]` -/
def P11335779525678978331.Spec : Prop :=
  ∀ n, (P11335779525678978331.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P31630320649249581

`∩[A064739(n+1), A106935(n+1)]`
-/

namespace A139836.P31630320649249581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P31630320649249581

namespace A139836

/-- `∩[A064739(n+1), A106935(n+1)]` -/
def P31630320649249581.Spec : Prop :=
  ∀ n, (P31630320649249581.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P1469828621941746256

`∩[A122869(n+1), A296931(n+1)]`
-/

namespace A139836.P1469828621941746256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P1469828621941746256

namespace A139836

/-- `∩[A122869(n+1), A296931(n+1)]` -/
def P1469828621941746256.Spec : Prop :=
  ∀ n, (P1469828621941746256.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P11798487867489429767

`∩[A076518(n+1), A106935(n+1)]`
-/

namespace A139836.P11798487867489429767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P11798487867489429767

namespace A139836

/-- `∩[A076518(n+1), A106935(n+1)]` -/
def P11798487867489429767.Spec : Prop :=
  ∀ n, (P11798487867489429767.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P109974450134953798

`∩[A122869(n+1), A296929(n+1)]`
-/

namespace A139836.P109974450134953798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P109974450134953798

namespace A139836

/-- `∩[A122869(n+1), A296929(n+1)]` -/
def P109974450134953798.Spec : Prop :=
  ∀ n, (P109974450134953798.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P314103474885874846

`∩[A106935(n+1), A341783(n+1)]`
-/

namespace A139836.P314103474885874846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P314103474885874846

namespace A139836

/-- `∩[A106935(n+1), A341783(n+1)]` -/
def P314103474885874846.Spec : Prop :=
  ∀ n, (P314103474885874846.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P16238190076687326473

`∩[A003626(n+1), A106935(n+1)]`
-/

namespace A139836.P16238190076687326473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P16238190076687326473

namespace A139836

/-- `∩[A003626(n+1), A106935(n+1)]` -/
def P16238190076687326473.Spec : Prop :=
  ∀ n, (P16238190076687326473.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P1465076953582326371

`∩[A038972(n+1), A106935(n+1)]`
-/

namespace A139836.P1465076953582326371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P1465076953582326371

namespace A139836

/-- `∩[A038972(n+1), A106935(n+1)]` -/
def P1465076953582326371.Spec : Prop :=
  ∀ n, (P1465076953582326371.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P2871471481934695330

`∩[A038972(n+1), A122869(n+1)]`
-/

namespace A139836.P2871471481934695330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P2871471481934695330

namespace A139836

/-- `∩[A038972(n+1), A122869(n+1)]` -/
def P2871471481934695330.Spec : Prop :=
  ∀ n, (P2871471481934695330.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P2711455267788173193

`∩[A106935(n+1), A296923(n+1)]`
-/

namespace A139836.P2711455267788173193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P2711455267788173193

namespace A139836

/-- `∩[A106935(n+1), A296923(n+1)]` -/
def P2711455267788173193.Spec : Prop :=
  ∀ n, (P2711455267788173193.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P13856956735433457405

`∩[A038890(n+1), A122869(n+1)]`
-/

namespace A139836.P13856956735433457405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P13856956735433457405

namespace A139836

/-- `∩[A038890(n+1), A122869(n+1)]` -/
def P13856956735433457405.Spec : Prop :=
  ∀ n, (P13856956735433457405.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P14840295419592894435

`∩[A040140(n+1), A122869(n+1)]`
-/

namespace A139836.P14840295419592894435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P14840295419592894435

namespace A139836

/-- `∩[A040140(n+1), A122869(n+1)]` -/
def P14840295419592894435.Spec : Prop :=
  ∀ n, (P14840295419592894435.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P599369548004368569

`∩[A106935(n+1), A219612(n+1)]`
-/

namespace A139836.P599369548004368569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P599369548004368569

namespace A139836

/-- `∩[A106935(n+1), A219612(n+1)]` -/
def P599369548004368569.Spec : Prop :=
  ∀ n, (P599369548004368569.a n : ℤ) = A139836 (n + 1)

end A139836

/-! ## A139836.P7074887237524567425

`∩[A023173(n+1), A106935(n+1)]`
-/

namespace A139836.P7074887237524567425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P7074887237524567425

namespace A139836

/-- `∩[A023173(n+1), A106935(n+1)]` -/
def P7074887237524567425.Spec : Prop :=
  ∀ n, (P7074887237524567425.a n : ℤ) = A139836 (n + 1)

end A139836

/-!
# A139837: Primes of the form 4x^2+4xy+23y^2.

The programs for A139837, there is no canonical definition to state claims against.
-/

/-! ## A139837.P5447999193268958840

`∩[A007522(n+1), A033216(n+1)]`
-/

namespace A139837.P5447999193268958840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P5447999193268958840

/-! ## A139837.P13221266760999488126

`∩[A033216(n+1), A045382(n+1)]`
-/

namespace A139837.P13221266760999488126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P13221266760999488126

/-! ## A139837.P7462018523047730343

`∩[A004628(n+1), A033216(n+1)]`
-/

namespace A139837.P7462018523047730343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P7462018523047730343

/-! ## A139837.P9028173575084204637

`∩[A191020(n+1), A004628(n+1)]`
-/

namespace A139837.P9028173575084204637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P9028173575084204637

/-! ## A139837.P2049280772836570352

`∩[A007522(n+1), A191020(n+1)]`
-/

namespace A139837.P2049280772836570352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P2049280772836570352

/-! ## A139837.P17063805940251834111

`∩[A004628(n+1), A056874(n+1)]`
-/

namespace A139837.P17063805940251834111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P17063805940251834111

/-! ## A139837.P10387484296896206341

`∩[A007522(n+1), A056874(n+1)]`
-/

namespace A139837.P10387484296896206341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P10387484296896206341

/-! ## A139837.P17904182088867751750

`∩[A004628(n+1), A038896(n+1)]`
-/

namespace A139837.P17904182088867751750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P17904182088867751750

/-! ## A139837.P2714328851412742802

`∩[A007522(n+1), A038896(n+1)]`
-/

namespace A139837.P2714328851412742802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P2714328851412742802

/-! ## A139837.P8567137133024529478

`∩[A033216(n+1), A038896(n+1)]`
-/

namespace A139837.P8567137133024529478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P8567137133024529478

/-! ## A139837.P980538176885234635

`∩[A038896(n+1), A045382(n+1)]`
-/

namespace A139837.P980538176885234635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P980538176885234635

/-! ## A139837.P14991656225317070290

`∩[A002145(n+1), A033216(n+1)]`
-/

namespace A139837.P14991656225317070290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P14991656225317070290

/-! ## A139837.P7865618469818334868

`∩[A003628(n+1), A033216(n+1)]`
-/

namespace A139837.P7865618469818334868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P7865618469818334868

/-! ## A139837.P1843895109853448495

`∩[A033216(n+1), A045326(n+1)]`
-/

namespace A139837.P1843895109853448495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P1843895109853448495

/-! ## A139837.P13826039476694671144

`∩[A033216(n+1), A045355(n+1)]`
-/

namespace A139837.P13826039476694671144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P13826039476694671144

/-! ## A139837.P17856630290554205643

`∩[A004628(n+1), A038882(n+1)]`
-/

namespace A139837.P17856630290554205643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P17856630290554205643

/-! ## A139837.P8659419390355542603

`∩[A007522(n+1), A038882(n+1)]`
-/

namespace A139837.P8659419390355542603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P8659419390355542603

/-! ## A139837.P9609731015743767046

`∩[A033216(n+1), A038882(n+1)]`
-/

namespace A139837.P9609731015743767046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P9609731015743767046

/-! ## A139837.P9955502662183862519

`∩[A296936(n+1), A004628(n+1)]`
-/

namespace A139837.P9955502662183862519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P9955502662183862519

/-! ## A139837.P14969908554508596722

`∩[A007522(n+1), A341785(n+1)]`
-/

namespace A139837.P14969908554508596722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139837.P14969908554508596722

/-!
# A139838: Primes of the form 8x^2+8xy+13y^2.

The programs for A139838, the canonical program `A139838.P3434102411428568911` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139838 has offset 1).

The definition of A139838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139838.P3434102411428568911

`∩[A007521(n+1), A141777(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139838

/-- `∩[A007521(n+1), A141777(n+1)]` -/
def P3434102411428568911.Spec : Prop :=
  ∀ n, (P3434102411428568911.a n : ℤ) = A139838 (n + 1)

theorem P3434102411428568911.correct : P3434102411428568911.Spec := by
  intro n
  simp only [A139838, Nat.add_sub_cancel]

end A139838

/-! ## A139838.P2849298304193814065

`∩[A007521(n+1), A106984(n+1)]`
-/

namespace A139838.P2849298304193814065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P2849298304193814065

namespace A139838

/-- `∩[A007521(n+1), A106984(n+1)]` -/
def P2849298304193814065.Spec : Prop :=
  ∀ n, (P2849298304193814065.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P7721123942841958302

`∩[A004627(n+1), A106984(n+1)]`
-/

namespace A139838.P7721123942841958302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P7721123942841958302

namespace A139838

/-- `∩[A004627(n+1), A106984(n+1)]` -/
def P7721123942841958302.Spec : Prop :=
  ∀ n, (P7721123942841958302.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P6488048000187399271

`∩[A004627(n+1), A141777(n+1)]`
-/

namespace A139838.P6488048000187399271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P6488048000187399271

namespace A139838

/-- `∩[A004627(n+1), A141777(n+1)]` -/
def P6488048000187399271.Spec : Prop :=
  ∀ n, (P6488048000187399271.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P6004028569401065822

`∩[A004627(n+1), A191020(n+1)]`
-/

namespace A139838.P6004028569401065822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P6004028569401065822

namespace A139838

/-- `∩[A004627(n+1), A191020(n+1)]` -/
def P6004028569401065822.Spec : Prop :=
  ∀ n, (P6004028569401065822.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P11503474887412292042

`∩[A007521(n+1), A191020(n+1)]`
-/

namespace A139838.P11503474887412292042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P11503474887412292042

namespace A139838

/-- `∩[A007521(n+1), A191020(n+1)]` -/
def P11503474887412292042.Spec : Prop :=
  ∀ n, (P11503474887412292042.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P13010132100912280897

`∩[A045366(n+1), A191020(n+1)]`
-/

namespace A139838.P13010132100912280897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P13010132100912280897

namespace A139838

/-- `∩[A045366(n+1), A191020(n+1)]` -/
def P13010132100912280897.Spec : Prop :=
  ∀ n, (P13010132100912280897.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P15335661393354037027

`∩[A002144(n+1), A106984(n+1)]`
-/

namespace A139838.P15335661393354037027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P15335661393354037027

namespace A139838

/-- `∩[A002144(n+1), A106984(n+1)]` -/
def P15335661393354037027.Spec : Prop :=
  ∀ n, (P15335661393354037027.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P15017523972476000581

`∩[A002144(n+1), A141777(n+1)]`
-/

namespace A139838.P15017523972476000581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P15017523972476000581

namespace A139838

/-- `∩[A002144(n+1), A141777(n+1)]` -/
def P15017523972476000581.Spec : Prop :=
  ∀ n, (P15017523972476000581.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P16940505283097932001

`∩[A004627(n+1), A038895(n+1)]`
-/

namespace A139838.P16940505283097932001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P16940505283097932001

namespace A139838

/-- `∩[A004627(n+1), A038895(n+1)]` -/
def P16940505283097932001.Spec : Prop :=
  ∀ n, (P16940505283097932001.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P13473289889852733040

`∩[A007521(n+1), A038895(n+1)]`
-/

namespace A139838.P13473289889852733040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P13473289889852733040

namespace A139838

/-- `∩[A007521(n+1), A038895(n+1)]` -/
def P13473289889852733040.Spec : Prop :=
  ∀ n, (P13473289889852733040.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P11245253776083447811

`∩[A004627(n+1), A191060(n+1)]`
-/

namespace A139838.P11245253776083447811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P11245253776083447811

namespace A139838

/-- `∩[A004627(n+1), A191060(n+1)]` -/
def P11245253776083447811.Spec : Prop :=
  ∀ n, (P11245253776083447811.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P2490188267703235357

`∩[A007521(n+1), A191060(n+1)]`
-/

namespace A139838.P2490188267703235357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P2490188267703235357

namespace A139838

/-- `∩[A007521(n+1), A191060(n+1)]` -/
def P2490188267703235357.Spec : Prop :=
  ∀ n, (P2490188267703235357.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P1822887368248986738

`∩[A003628(n+1), A106984(n+1)]`
-/

namespace A139838.P1822887368248986738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P1822887368248986738

namespace A139838

/-- `∩[A003628(n+1), A106984(n+1)]` -/
def P1822887368248986738.Spec : Prop :=
  ∀ n, (P1822887368248986738.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P13416866922285883097

`∩[A004627(n+1), A038882(n+1)]`
-/

namespace A139838.P13416866922285883097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P13416866922285883097

namespace A139838

/-- `∩[A004627(n+1), A038882(n+1)]` -/
def P13416866922285883097.Spec : Prop :=
  ∀ n, (P13416866922285883097.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P4914244213150217034

`∩[A007521(n+1), A038882(n+1)]`
-/

namespace A139838.P4914244213150217034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P4914244213150217034

namespace A139838

/-- `∩[A007521(n+1), A038882(n+1)]` -/
def P4914244213150217034.Spec : Prop :=
  ∀ n, (P4914244213150217034.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P8072947951219971639

`∩[A296936(n+1), A004627(n+1)]`
-/

namespace A139838.P8072947951219971639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P8072947951219971639

namespace A139838

/-- `∩[A296936(n+1), A004627(n+1)]` -/
def P8072947951219971639.Spec : Prop :=
  ∀ n, (P8072947951219971639.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P15723364615585367060

`∩[A003629(n+1), A141777(n+1)]`
-/

namespace A139838.P15723364615585367060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P15723364615585367060

namespace A139838

/-- `∩[A003629(n+1), A141777(n+1)]` -/
def P15723364615585367060.Spec : Prop :=
  ∀ n, (P15723364615585367060.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P8880746826114468424

`∩[A106984(n+1), A120960(n+1)]`
-/

namespace A139838.P8880746826114468424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P8880746826114468424

namespace A139838

/-- `∩[A106984(n+1), A120960(n+1)]` -/
def P8880746826114468424.Spec : Prop :=
  ∀ n, (P8880746826114468424.a n : ℤ) = A139838 (n + 1)

end A139838

/-! ## A139838.P11719892315462828613

`∩[A319041(n+1), A141777(n+1)]`
-/

namespace A139838.P11719892315462828613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139838.P11719892315462828613

namespace A139838

/-- `∩[A319041(n+1), A141777(n+1)]` -/
def P11719892315462828613.Spec : Prop :=
  ∀ n, (P11719892315462828613.a n : ℤ) = A139838 (n + 1)

end A139838

/-!
# A139839: Primes of the form 2x^2+2xy+47y^2.

The programs for A139839, there is no canonical definition to state claims against.
-/

/-! ## A139839.P7405346750360296397

`∩[A141123(n+1), A191024(n+1)]`
-/

namespace A139839.P7405346750360296397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P7405346750360296397

/-! ## A139839.P5400657995460473225

`∩[A141123(n+1), A267481(n+1)]`
-/

namespace A139839.P5400657995460473225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P5400657995460473225

/-! ## A139839.P15574562081607932365

`∩[A038982(n+1), A141123(n+1)]`
-/

namespace A139839.P15574562081607932365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P15574562081607932365

/-! ## A139839.P4376275788177731469

`∩[A038982(n+1), A084917(n+1)]`
-/

namespace A139839.P4376275788177731469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P4376275788177731469

/-! ## A139839.P6307760797660365453

`∩[A084917(n+1), A191024(n+1)]`
-/

namespace A139839.P6307760797660365453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P6307760797660365453

/-! ## A139839.P3805911320842104619

`∩[A084917(n+1), A267481(n+1)]`
-/

namespace A139839.P3805911320842104619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P3805911320842104619

/-! ## A139839.P10224372287626046616

`∩[A035235(n+1), A141123(n+1)]`
-/

namespace A139839.P10224372287626046616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P10224372287626046616

/-! ## A139839.P13176040446294592780

`∩[A038982(n+1), A042944(n+1)]`
-/

namespace A139839.P13176040446294592780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P13176040446294592780

/-! ## A139839.P17526262997094870161

`∩[A042944(n+1), A191024(n+1)]`
-/

namespace A139839.P17526262997094870161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P17526262997094870161

/-! ## A139839.P4494543090725012344

`∩[A042944(n+1), A267481(n+1)]`
-/

namespace A139839.P4494543090725012344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P4494543090725012344

/-! ## A139839.P8416711420939166741

`∩[A038982(n+1), A072065(n+1)]`
-/

namespace A139839.P8416711420939166741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P8416711420939166741

/-! ## A139839.P6439688317102308882

`∩[A038982(n+1), A218155(n+1)]`
-/

namespace A139839.P6439688317102308882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P6439688317102308882

/-! ## A139839.P17187545516953877583

`∩[A072065(n+1), A191024(n+1)]`
-/

namespace A139839.P17187545516953877583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P17187545516953877583

/-! ## A139839.P7396897309882513398

`∩[A072065(n+1), A267481(n+1)]`
-/

namespace A139839.P7396897309882513398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P7396897309882513398

/-! ## A139839.P7792481861378186406

`∩[A191024(n+1), A218155(n+1)]`
-/

namespace A139839.P7792481861378186406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P7792481861378186406

/-! ## A139839.P11504384438941715584

`∩[A218155(n+1), A267481(n+1)]`
-/

namespace A139839.P11504384438941715584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139839.P11504384438941715584

/-!
# A139840: Primes of the form 6x^2+6xy+17y^2.

The programs for A139840, there is no canonical definition to state claims against.
-/

/-! ## A139840.P5583791549066178187

`∩[A040117(n+1), A141339(n+1)]`
-/

namespace A139840.P5583791549066178187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P5583791549066178187

/-! ## A139840.P16227278038734596897

`∩[A096785(n+1), A141339(n+1)]`
-/

namespace A139840.P16227278038734596897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P16227278038734596897

/-! ## A139840.P14029810612768792113

`∩[A002144(n+1), A141339(n+1)]`
-/

namespace A139840.P14029810612768792113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P14029810612768792113

/-! ## A139840.P14990840222047324373

`∩[A002313(n+1), A141339(n+1)]`
-/

namespace A139840.P14990840222047324373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P14990840222047324373

/-! ## A139840.P1726443890415302913

`∩[A038906(n+1), A040117(n+1)]`
-/

namespace A139840.P1726443890415302913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P1726443890415302913

/-! ## A139840.P17675105150133845657

`∩[A038906(n+1), A141339(n+1)]`
-/

namespace A139840.P17675105150133845657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P17675105150133845657

/-! ## A139840.P1229713892880369715

`∩[A038906(n+1), A243183(n+1)]`
-/

namespace A139840.P1229713892880369715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P1229713892880369715

/-! ## A139840.P271917052269831424

`∩[A040117(n+1), A191055(n+1)]`
-/

namespace A139840.P271917052269831424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P271917052269831424

/-! ## A139840.P15921235391628591554

`∩[A038981(n+1), A040117(n+1)]`
-/

namespace A139840.P15921235391628591554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P15921235391628591554

/-! ## A139840.P14045120623696648310

`∩[A055025(n+1), A141339(n+1)]`
-/

namespace A139840.P14045120623696648310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P14045120623696648310

/-! ## A139840.P4158008402922370736

`∩[A003630(n+1), A141339(n+1)]`
-/

namespace A139840.P4158008402922370736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P4158008402922370736

/-! ## A139840.P7778187335023839047

`∩[A038875(n+1), A141339(n+1)]`
-/

namespace A139840.P7778187335023839047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P7778187335023839047

/-! ## A139840.P10862964852102105154

`∩[A120960(n+1), A141339(n+1)]`
-/

namespace A139840.P10862964852102105154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P10862964852102105154

/-! ## A139840.P9534095932686413503

`∩[A040117(n+1), A191067(n+1)]`
-/

namespace A139840.P9534095932686413503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P9534095932686413503

/-! ## A139840.P10762170156258086856

`∩[A085759(n+1), A141339(n+1)]`
-/

namespace A139840.P10762170156258086856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P10762170156258086856

/-! ## A139840.P16794527282249007918

`∩[A040125(n+1), A141339(n+1)]`
-/

namespace A139840.P16794527282249007918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P16794527282249007918

/-! ## A139840.P11775718666777812576

`∩[A040102(n+1), A141339(n+1)]`
-/

namespace A139840.P11775718666777812576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P11775718666777812576

/-! ## A139840.P2569012892332458612

`∩[A045318(n+1), A141339(n+1)]`
-/

namespace A139840.P2569012892332458612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P2569012892332458612

/-! ## A139840.P6886375833244920681

`∩[A040995(n+1), A141339(n+1)]`
-/

namespace A139840.P6886375833244920681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P6886375833244920681

/-! ## A139840.P5569989593463164200

`∩[A141339(n+1), A281292(n+1)]`
-/

namespace A139840.P5569989593463164200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139840.P5569989593463164200

/-!
# A139841: Primes of the form 2x^2 + 51y^2.

The programs for A139841, there is no canonical definition to state claims against.
-/

/-! ## A139841.P9729418457328272929

`∩[A084865(n+1), A296938(n+1)]`
-/

namespace A139841.P9729418457328272929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139841.P9729418457328272929

/-! ## A139841.P12474260805068743723

`∩[A038889(n+1), A084865(n+1)]`
-/

namespace A139841.P12474260805068743723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139841.P12474260805068743723

/-! ## A139841.P14923391936550906013

`∩[A084865(n+1), A191073(n+1)]`
-/

namespace A139841.P14923391936550906013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139841.P14923391936550906013

/-! ## A139841.P6713214414977123323

`∩[A002480(n+1), A038889(n+1)]`
-/

namespace A139841.P6713214414977123323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139841.P6713214414977123323

/-! ## A139841.P3890276032533099757

`∩[A002480(n+1), A191073(n+1)]`
-/

namespace A139841.P3890276032533099757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139841.P3890276032533099757

/-! ## A139841.P2228218607956158559

`∩[A002480(n+1), A296938(n+1)]`
-/

namespace A139841.P2228218607956158559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139841.P2228218607956158559

/-! ## A139841.P15323823019464206347

`∩[A035258(n+1), A084865(n+1)]`
-/

namespace A139841.P15323823019464206347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139841.P15323823019464206347

/-!
# A139842: Primes of the form 3x^2 + 34y^2.

The programs for A139842, there is no canonical definition to state claims against.
-/

/-! ## A139842.P16346987793967800156

`∪[A139956(n+1), A139960(n+1)]`
-/

namespace A139842.P16346987793967800156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139842.P16346987793967800156

/-! ## A139842.P10292497471117201009

`p?[A284791(record[A088633(n)])]`
-/

namespace A139842.P10292497471117201009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088633 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284791 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139842.P10292497471117201009

/-!
# A139843: Primes of the form 6x^2 + 17y^2.

The programs for A139843, there is no canonical definition to state claims against.
-/

/-! ## A139843.P1840357538977512240

`∪[A139961(n+1), A139962(n+1)]`
-/

namespace A139843.P1840357538977512240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P1840357538977512240

/-! ## A139843.P2297749437637367805

`∩[A106902(n+1), A256397(n+1)]`
-/

namespace A139843.P2297749437637367805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P2297749437637367805

/-! ## A139843.P13850814957422622822

`∩[A040992(n+1), A106902(n+1)]`
-/

namespace A139843.P13850814957422622822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P13850814957422622822

/-! ## A139843.P664320376894940972

`∩[A001132(n+1), A106902(n+1)]`
-/

namespace A139843.P664320376894940972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P664320376894940972

/-! ## A139843.P11729916306634955563

`∩[A038873(n+1), A106902(n+1)]`
-/

namespace A139843.P11729916306634955563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P11729916306634955563

/-! ## A139843.P10347785282977781879

`∩[A106902(n+1), A191059(n+1)]`
-/

namespace A139843.P10347785282977781879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P10347785282977781879

/-! ## A139843.P11730607785177260074

`∩[A055673(n+1), A106902(n+1)]`
-/

namespace A139843.P11730607785177260074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P11730607785177260074

/-! ## A139843.P8316463643304877028

`∩[A106902(n+1), A270951(n+1)]`
-/

namespace A139843.P8316463643304877028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P8316463643304877028

/-! ## A139843.P11521123539528598122

`∩[A106902(n+1), A319040(n+1)]`
-/

namespace A139843.P11521123539528598122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P11521123539528598122

/-! ## A139843.P2209129565226762567

`∩[A106902(n+1), A366526(n+1)]`
-/

namespace A139843.P2209129565226762567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P2209129565226762567

/-! ## A139843.P7365479324196664442

`∩[A049550(n+1), A106902(n+1)]`
-/

namespace A139843.P7365479324196664442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P7365479324196664442

/-! ## A139843.P6380621284341324712

`∩[A049566(n+1), A106902(n+1)]`
-/

namespace A139843.P6380621284341324712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P6380621284341324712

/-! ## A139843.P12704855007297602196

`∩[A058529(n+1), A106902(n+1)]`
-/

namespace A139843.P12704855007297602196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P12704855007297602196

/-! ## A139843.P18429114267651035737

`∩[A106902(n+1), A253408(n+1)]`
-/

namespace A139843.P18429114267651035737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P18429114267651035737

/-! ## A139843.P2637919465106948039

`∩[A057126(n+1), A106902(n+1)]`
-/

namespace A139843.P2637919465106948039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P2637919465106948039

/-! ## A139843.P10047315447602902108

`∩[A106902(n+1), A227144(n+1)]`
-/

namespace A139843.P10047315447602902108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P10047315447602902108

/-! ## A139843.P8092979991719019014

`∩[A035251(n+1), A106902(n+1)]`
-/

namespace A139843.P8092979991719019014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P8092979991719019014

/-! ## A139843.P3439019522723142283

`∩[A047522(n+1), A106902(n+1)]`
-/

namespace A139843.P3439019522723142283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P3439019522723142283

/-! ## A139843.P9164876726249588734

`∩[A106902(n+1), A385723(n+1)]`
-/

namespace A139843.P9164876726249588734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P9164876726249588734

/-! ## A139843.P17504778742757535733

`∩[A047523(n+1), A106902(n+1)]`
-/

namespace A139843.P17504778742757535733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139843.P17504778742757535733

/-!
# A139844: Primes of the form 2x^2 + 2xy + 53y^2.

The programs for A139844, the canonical program `A139844.P13747838189349687796` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139844 has offset 1).

The definition of A139844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139844.P17860782052653446898

`∩[A141172(n+1), A141303(n+1)]`
-/

namespace A139844.P17860782052653446898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P17860782052653446898

namespace A139844

/-- `∩[A141172(n+1), A141303(n+1)]` -/
def P17860782052653446898.Spec : Prop :=
  ∀ n, (P17860782052653446898.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P13267733641528159206

`∩[A106859(n+1), A141172(n+1)]`
-/

namespace A139844.P13267733641528159206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P13267733641528159206

namespace A139844

/-- `∩[A106859(n+1), A141172(n+1)]` -/
def P13267733641528159206.Spec : Prop :=
  ∀ n, (P13267733641528159206.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P1723797259777878746

`∩[A106927(n+1), A141303(n+1)]`
-/

namespace A139844.P1723797259777878746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P1723797259777878746

namespace A139844

/-- `∩[A106927(n+1), A141303(n+1)]` -/
def P1723797259777878746.Spec : Prop :=
  ∀ n, (P1723797259777878746.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P6254373777632435811

`∩[A141172(n+1), A343241(n+1)]`
-/

namespace A139844.P6254373777632435811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P6254373777632435811

namespace A139844

/-- `∩[A141172(n+1), A343241(n+1)]` -/
def P6254373777632435811.Spec : Prop :=
  ∀ n, (P6254373777632435811.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P13747838189349687796

`∩[A106927(n+1), A122487(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139844

/-- `∩[A106927(n+1), A122487(n+1)]` -/
def P13747838189349687796.Spec : Prop :=
  ∀ n, (P13747838189349687796.a n : ℤ) = A139844 (n + 1)

theorem P13747838189349687796.correct : P13747838189349687796.Spec := by
  intro n
  simp only [A139844, Nat.add_sub_cancel]

end A139844

/-! ## A139844.P13138685393218689685

`∩[A038878(n+1), A141303(n+1)]`
-/

namespace A139844.P13138685393218689685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P13138685393218689685

namespace A139844

/-- `∩[A038878(n+1), A141303(n+1)]` -/
def P13138685393218689685.Spec : Prop :=
  ∀ n, (P13138685393218689685.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P8100026731300344160

`∩[A045373(n+1), A141303(n+1)]`
-/

namespace A139844.P8100026731300344160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P8100026731300344160

namespace A139844

/-- `∩[A045373(n+1), A141303(n+1)]` -/
def P8100026731300344160.Spec : Prop :=
  ∀ n, (P8100026731300344160.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P8048770087301279320

`∩[A045386(n+1), A141303(n+1)]`
-/

namespace A139844.P8048770087301279320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P8048770087301279320

namespace A139844

/-- `∩[A045386(n+1), A141303(n+1)]` -/
def P8048770087301279320.Spec : Prop :=
  ∀ n, (P8048770087301279320.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P8967660104920027020

`∩[A038894(n+1), A141303(n+1)]`
-/

namespace A139844.P8967660104920027020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P8967660104920027020

namespace A139844

/-- `∩[A038894(n+1), A141303(n+1)]` -/
def P8967660104920027020.Spec : Prop :=
  ∀ n, (P8967660104920027020.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P7569762342220590298

`∩[A141303(n+1), A191068(n+1)]`
-/

namespace A139844.P7569762342220590298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P7569762342220590298

namespace A139844

/-- `∩[A141303(n+1), A191068(n+1)]` -/
def P7569762342220590298.Spec : Prop :=
  ∀ n, (P7569762342220590298.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P4929230576533315691

`∩[A038912(n+1), A141303(n+1)]`
-/

namespace A139844.P4929230576533315691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P4929230576533315691

namespace A139844

/-- `∩[A038912(n+1), A141303(n+1)]` -/
def P4929230576533315691.Spec : Prop :=
  ∀ n, (P4929230576533315691.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P1549243308650087535

`∩[A028955(n+1), A141172(n+1)]`
-/

namespace A139844.P1549243308650087535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P1549243308650087535

namespace A139844

/-- `∩[A028955(n+1), A141172(n+1)]` -/
def P1549243308650087535.Spec : Prop :=
  ∀ n, (P1549243308650087535.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P3402843997644514289

`∩[A141303(n+1), A244779(n+1)]`
-/

namespace A139844.P3402843997644514289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P3402843997644514289

namespace A139844

/-- `∩[A141303(n+1), A244779(n+1)]` -/
def P3402843997644514289.Spec : Prop :=
  ∀ n, (P3402843997644514289.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P9680107819200524329

`∩[A141303(n+1), A262932(n+1)]`
-/

namespace A139844.P9680107819200524329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P9680107819200524329

namespace A139844

/-- `∩[A141303(n+1), A262932(n+1)]` -/
def P9680107819200524329.Spec : Prop :=
  ∀ n, (P9680107819200524329.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P6752368335169384999

`∩[A035248(n+1), A141303(n+1)]`
-/

namespace A139844.P6752368335169384999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P6752368335169384999

namespace A139844

/-- `∩[A035248(n+1), A141303(n+1)]` -/
def P6752368335169384999.Spec : Prop :=
  ∀ n, (P6752368335169384999.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P5759740497911876721

`∩[A047350(n+1), A141303(n+1)]`
-/

namespace A139844.P5759740497911876721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P5759740497911876721

namespace A139844

/-- `∩[A047350(n+1), A141303(n+1)]` -/
def P5759740497911876721.Spec : Prop :=
  ∀ n, (P5759740497911876721.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P5891744146441064852

`∩[A074230(n+1), A141303(n+1)]`
-/

namespace A139844.P5891744146441064852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P5891744146441064852

namespace A139844

/-- `∩[A074230(n+1), A141303(n+1)]` -/
def P5891744146441064852.Spec : Prop :=
  ∀ n, (P5891744146441064852.a n : ℤ) = A139844 (n + 1)

end A139844

/-! ## A139844.P10167482435451410879

`∩[A047351(n+1), A141303(n+1)]`
-/

namespace A139844.P10167482435451410879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139844.P10167482435451410879

namespace A139844

/-- `∩[A047351(n+1), A141303(n+1)]` -/
def P10167482435451410879.Spec : Prop :=
  ∀ n, (P10167482435451410879.a n : ℤ) = A139844 (n + 1)

end A139844

/-!
# A139845: Primes of the form 3x^2 + 35y^2.

The programs for A139845, the canonical program `A139845.P2271381271058616580` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139845 has offset 1).

The definition of A139845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139845.P3518174610992663657

`∩[A106878(n+1), A107169(n+1)]`
-/

namespace A139845.P3518174610992663657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P3518174610992663657

namespace A139845

/-- `∩[A106878(n+1), A107169(n+1)]` -/
def P3518174610992663657.Spec : Prop :=
  ∀ n, (P3518174610992663657.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P2271381271058616580

`∩[A106878(n+1), A141123(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139845

/-- `∩[A106878(n+1), A141123(n+1)]` -/
def P2271381271058616580.Spec : Prop :=
  ∀ n, (P2271381271058616580.a n : ℤ) = A139845 (n + 1)

theorem P2271381271058616580.correct : P2271381271058616580.Spec := by
  intro n
  simp only [A139845, Nat.add_sub_cancel]

end A139845

/-! ## A139845.P2256478925249423552

`∩[A106878(n+1), A141187(n+1)]`
-/

namespace A139845.P2256478925249423552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P2256478925249423552

namespace A139845

/-- `∩[A106878(n+1), A141187(n+1)]` -/
def P2256478925249423552.Spec : Prop :=
  ∀ n, (P2256478925249423552.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P14483812207592131854

`∩[A106859(n+1), A141173(n+1)]`
-/

namespace A139845.P14483812207592131854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P14483812207592131854

namespace A139845

/-- `∩[A106859(n+1), A141173(n+1)]` -/
def P14483812207592131854.Spec : Prop :=
  ∀ n, (P14483812207592131854.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P12724386057806347397

`∩[A107169(n+1), A141173(n+1)]`
-/

namespace A139845.P12724386057806347397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P12724386057806347397

namespace A139845

/-- `∩[A107169(n+1), A141173(n+1)]` -/
def P12724386057806347397.Spec : Prop :=
  ∀ n, (P12724386057806347397.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P3249904414767372361

`∩[A106865(n+1), A141160(n+1)]`
-/

namespace A139845.P3249904414767372361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P3249904414767372361

namespace A139845

/-- `∩[A106865(n+1), A141160(n+1)]` -/
def P3249904414767372361.Spec : Prop :=
  ∀ n, (P3249904414767372361.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P9217181383533686689

`∩[A107169(n+1), A141160(n+1)]`
-/

namespace A139845.P9217181383533686689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P9217181383533686689

namespace A139845

/-- `∩[A107169(n+1), A141160(n+1)]` -/
def P9217181383533686689.Spec : Prop :=
  ∀ n, (P9217181383533686689.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P3759581819619353235

`∩[A122870(n+1), A141160(n+1)]`
-/

namespace A139845.P3759581819619353235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P3759581819619353235

namespace A139845

/-- `∩[A122870(n+1), A141160(n+1)]` -/
def P3759581819619353235.Spec : Prop :=
  ∀ n, (P3759581819619353235.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P17444884696625922930

`∩[A040112(n+1), A107169(n+1)]`
-/

namespace A139845.P17444884696625922930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P17444884696625922930

namespace A139845

/-- `∩[A040112(n+1), A107169(n+1)]` -/
def P17444884696625922930.Spec : Prop :=
  ∀ n, (P17444884696625922930.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P4843932485101206401

`∩[A040149(n+1), A107169(n+1)]`
-/

namespace A139845.P4843932485101206401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P4843932485101206401

namespace A139845

/-- `∩[A040149(n+1), A107169(n+1)]` -/
def P4843932485101206401.Spec : Prop :=
  ∀ n, (P4843932485101206401.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P850418523810360921

`∩[A107169(n+1), A191026(n+1)]`
-/

namespace A139845.P850418523810360921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P850418523810360921

namespace A139845

/-- `∩[A107169(n+1), A191026(n+1)]` -/
def P850418523810360921.Spec : Prop :=
  ∀ n, (P850418523810360921.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P1340701717790170060

`∩[A038878(n+1), A107169(n+1)]`
-/

namespace A139845.P1340701717790170060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P1340701717790170060

namespace A139845

/-- `∩[A038878(n+1), A107169(n+1)]` -/
def P1340701717790170060.Spec : Prop :=
  ∀ n, (P1340701717790170060.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P4528812591589607493

`∩[A038893(n+1), A107169(n+1)]`
-/

namespace A139845.P4528812591589607493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P4528812591589607493

namespace A139845

/-- `∩[A038893(n+1), A107169(n+1)]` -/
def P4528812591589607493.Spec : Prop :=
  ∀ n, (P4528812591589607493.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P13674574882577587272

`∩[A107169(n+1), A296934(n+1)]`
-/

namespace A139845.P13674574882577587272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P13674574882577587272

namespace A139845

/-- `∩[A107169(n+1), A296934(n+1)]` -/
def P13674574882577587272.Spec : Prop :=
  ∀ n, (P13674574882577587272.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P7519882929058747467

`∩[A003625(n+1), A107169(n+1)]`
-/

namespace A139845.P7519882929058747467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P7519882929058747467

namespace A139845

/-- `∩[A003625(n+1), A107169(n+1)]` -/
def P7519882929058747467.Spec : Prop :=
  ∀ n, (P7519882929058747467.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P12431631199808152891

`∩[A045399(n+1), A107169(n+1)]`
-/

namespace A139845.P12431631199808152891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P12431631199808152891

namespace A139845

/-- `∩[A045399(n+1), A107169(n+1)]` -/
def P12431631199808152891.Spec : Prop :=
  ∀ n, (P12431631199808152891.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P17354589931967763847

`∩[A107169(n+1), A391370(n+1)]`
-/

namespace A139845.P17354589931967763847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P17354589931967763847

namespace A139845

/-- `∩[A107169(n+1), A391370(n+1)]` -/
def P17354589931967763847.Spec : Prop :=
  ∀ n, (P17354589931967763847.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P58848153314227801

`∩[A038912(n+1), A107169(n+1)]`
-/

namespace A139845.P58848153314227801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P58848153314227801

namespace A139845

/-- `∩[A038912(n+1), A107169(n+1)]` -/
def P58848153314227801.Spec : Prop :=
  ∀ n, (P58848153314227801.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P12328646736021969170

`∩[A020678(n+1), A141173(n+1)]`
-/

namespace A139845.P12328646736021969170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P12328646736021969170

namespace A139845

/-- `∩[A020678(n+1), A141173(n+1)]` -/
def P12328646736021969170.Spec : Prop :=
  ∀ n, (P12328646736021969170.a n : ℤ) = A139845 (n + 1)

end A139845

/-! ## A139845.P18300585227054070946

`∩[A084917(n+1), A106878(n+1)]`
-/

namespace A139845.P18300585227054070946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139845.P18300585227054070946

namespace A139845

/-- `∩[A084917(n+1), A106878(n+1)]` -/
def P18300585227054070946.Spec : Prop :=
  ∀ n, (P18300585227054070946.a n : ℤ) = A139845 (n + 1)

end A139845

/-!
# A139846: Primes of the form 5x^2 + 21y^2.

The programs for A139846, the canonical program `A139846.P13211547864844633641` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139846 has offset 1).

The definition of A139846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139846.P13211547864844633641

`∩[A106972(n+1), A107151(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139846

/-- `∩[A106972(n+1), A107151(n+1)]` -/
def P13211547864844633641.Spec : Prop :=
  ∀ n, (P13211547864844633641.a n : ℤ) = A139846 (n + 1)

theorem P13211547864844633641.correct : P13211547864844633641.Spec := by
  intro n
  simp only [A139846, Nat.add_sub_cancel]

end A139846

/-! ## A139846.P7550054099268626980

`∩[A033205(n+1), A106972(n+1)]`
-/

namespace A139846.P7550054099268626980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P7550054099268626980

namespace A139846

/-- `∩[A033205(n+1), A106972(n+1)]` -/
def P7550054099268626980.Spec : Prop :=
  ∀ n, (P7550054099268626980.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P14730064980949549313

`∩[A091729(n+1), A106972(n+1)]`
-/

namespace A139846.P14730064980949549313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P14730064980949549313

namespace A139846

/-- `∩[A091729(n+1), A106972(n+1)]` -/
def P14730064980949549313.Spec : Prop :=
  ∀ n, (P14730064980949549313.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P11782358917631793444

`∩[A033205(n+1), A141160(n+1)]`
-/

namespace A139846.P11782358917631793444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P11782358917631793444

namespace A139846

/-- `∩[A033205(n+1), A141160(n+1)]` -/
def P11782358917631793444.Spec : Prop :=
  ∀ n, (P11782358917631793444.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P4021796666612588863

`∩[A091729(n+1), A141160(n+1)]`
-/

namespace A139846.P4021796666612588863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P4021796666612588863

namespace A139846

/-- `∩[A091729(n+1), A141160(n+1)]` -/
def P4021796666612588863.Spec : Prop :=
  ∀ n, (P4021796666612588863.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P2569965338795660614

`∩[A107151(n+1), A141160(n+1)]`
-/

namespace A139846.P2569965338795660614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P2569965338795660614

namespace A139846

/-- `∩[A107151(n+1), A141160(n+1)]` -/
def P2569965338795660614.Spec : Prop :=
  ∀ n, (P2569965338795660614.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P1948043379243024240

`∩[A106972(n+1), A141785(n+1)]`
-/

namespace A139846.P1948043379243024240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P1948043379243024240

namespace A139846

/-- `∩[A106972(n+1), A141785(n+1)]` -/
def P1948043379243024240.Spec : Prop :=
  ∀ n, (P1948043379243024240.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P18368875705524921601

`∩[A040998(n+1), A106972(n+1)]`
-/

namespace A139846.P18368875705524921601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P18368875705524921601

namespace A139846

/-- `∩[A040998(n+1), A106972(n+1)]` -/
def P18368875705524921601.Spec : Prop :=
  ∀ n, (P18368875705524921601.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P13732291479660612673

`∩[A038872(n+1), A106972(n+1)]`
-/

namespace A139846.P13732291479660612673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P13732291479660612673

namespace A139846

/-- `∩[A038872(n+1), A106972(n+1)]` -/
def P13732291479660612673.Spec : Prop :=
  ∀ n, (P13732291479660612673.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P12872335133870353587

`∩[A106972(n+1), A240920(n+1)]`
-/

namespace A139846.P12872335133870353587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P12872335133870353587

namespace A139846

/-- `∩[A106972(n+1), A240920(n+1)]` -/
def P12872335133870353587.Spec : Prop :=
  ∀ n, (P12872335133870353587.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P5406490161553036412

`∩[A106972(n+1), A296922(n+1)]`
-/

namespace A139846.P5406490161553036412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P5406490161553036412

namespace A139846

/-- `∩[A106972(n+1), A296922(n+1)]` -/
def P5406490161553036412.Spec : Prop :=
  ∀ n, (P5406490161553036412.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P1418568470792124848

`∩[A038893(n+1), A107151(n+1)]`
-/

namespace A139846.P1418568470792124848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P1418568470792124848

namespace A139846

/-- `∩[A038893(n+1), A107151(n+1)]` -/
def P1418568470792124848.Spec : Prop :=
  ∀ n, (P1418568470792124848.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P4334995114626128053

`∩[A003625(n+1), A107151(n+1)]`
-/

namespace A139846.P4334995114626128053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P4334995114626128053

namespace A139846

/-- `∩[A003625(n+1), A107151(n+1)]` -/
def P4334995114626128053.Spec : Prop :=
  ∀ n, (P4334995114626128053.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P13043869401146189191

`∩[A003632(n+1), A107151(n+1)]`
-/

namespace A139846.P13043869401146189191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P13043869401146189191

namespace A139846

/-- `∩[A003632(n+1), A107151(n+1)]` -/
def P13043869401146189191.Spec : Prop :=
  ∀ n, (P13043869401146189191.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P959167837307266873

`∩[A045399(n+1), A107151(n+1)]`
-/

namespace A139846.P959167837307266873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P959167837307266873

namespace A139846

/-- `∩[A045399(n+1), A107151(n+1)]` -/
def P959167837307266873.Spec : Prop :=
  ∀ n, (P959167837307266873.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P3236003016404274681

`∩[A091727(n+1), A106972(n+1)]`
-/

namespace A139846.P3236003016404274681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P3236003016404274681

namespace A139846

/-- `∩[A091727(n+1), A106972(n+1)]` -/
def P3236003016404274681.Spec : Prop :=
  ∀ n, (P3236003016404274681.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P18154796912683196708

`∩[A106972(n+1), A341783(n+1)]`
-/

namespace A139846.P18154796912683196708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P18154796912683196708

namespace A139846

/-- `∩[A106972(n+1), A341783(n+1)]` -/
def P18154796912683196708.Spec : Prop :=
  ∀ n, (P18154796912683196708.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P387169747518457995

`∩[A107151(n+1), A391370(n+1)]`
-/

namespace A139846.P387169747518457995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P387169747518457995

namespace A139846

/-- `∩[A107151(n+1), A391370(n+1)]` -/
def P387169747518457995.Spec : Prop :=
  ∀ n, (P387169747518457995.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P13148495536466926895

`∩[A091730(n+1), A106972(n+1)]`
-/

namespace A139846.P13148495536466926895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P13148495536466926895

namespace A139846

/-- `∩[A091730(n+1), A106972(n+1)]` -/
def P13148495536466926895.Spec : Prop :=
  ∀ n, (P13148495536466926895.a n : ℤ) = A139846 (n + 1)

end A139846

/-! ## A139846.P17583833577385801677

`∩[A091730(n+1), A141160(n+1)]`
-/

namespace A139846.P17583833577385801677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139846.P17583833577385801677

namespace A139846

/-- `∩[A091730(n+1), A141160(n+1)]` -/
def P17583833577385801677.Spec : Prop :=
  ∀ n, (P17583833577385801677.a n : ℤ) = A139846 (n + 1)

end A139846

/-!
# A139847: Primes of the form 6x^2 + 6xy + 19y^2.

The programs for A139847, there is no canonical definition to state claims against.
-/

/-! ## A139847.P12335723529305151424

`∪[A139998(n+1), A140624(n+1)]`
-/

namespace A139847.P12335723529305151424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P12335723529305151424

/-! ## A139847.P17122881784050918107

`∩[A102271(n+1), A107168(n+1)]`
-/

namespace A139847.P17122881784050918107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P17122881784050918107

/-! ## A139847.P8754226452576237305

`∩[A033212(n+1), A102271(n+1)]`
-/

namespace A139847.P8754226452576237305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P8754226452576237305

/-! ## A139847.P872602327665614282

`∩[A102271(n+1), A122869(n+1)]`
-/

namespace A139847.P872602327665614282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P872602327665614282

/-! ## A139847.P2665792187691819767

`∩[A033212(n+1), A141173(n+1)]`
-/

namespace A139847.P2665792187691819767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P2665792187691819767

/-! ## A139847.P4785802059666882696

`∩[A107168(n+1), A141173(n+1)]`
-/

namespace A139847.P4785802059666882696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P4785802059666882696

/-! ## A139847.P797771272594836142

`∩[A053032(n+1), A102271(n+1)]`
-/

namespace A139847.P797771272594836142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P797771272594836142

/-! ## A139847.P15824921888704518583

`∩[A102271(n+1), A112860(n+1)]`
-/

namespace A139847.P15824921888704518583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P15824921888704518583

/-! ## A139847.P12999614497457377678

`∩[A102271(n+1), A385192(n+1)]`
-/

namespace A139847.P12999614497457377678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P12999614497457377678

/-! ## A139847.P1231364031166107779

`∩[A040105(n+1), A102271(n+1)]`
-/

namespace A139847.P1231364031166107779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P1231364031166107779

/-! ## A139847.P8842979890693510515

`∩[A040112(n+1), A107168(n+1)]`
-/

namespace A139847.P8842979890693510515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P8842979890693510515

/-! ## A139847.P400553763813290326

`∩[A040147(n+1), A102271(n+1)]`
-/

namespace A139847.P400553763813290326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P400553763813290326

/-! ## A139847.P16217370176133958870

`∩[A038911(n+1), A107168(n+1)]`
-/

namespace A139847.P16217370176133958870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P16217370176133958870

/-! ## A139847.P4978199929581008861

`∩[A003625(n+1), A107168(n+1)]`
-/

namespace A139847.P4978199929581008861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P4978199929581008861

/-! ## A139847.P12427565273860986279

`∩[A038872(n+1), A102271(n+1)]`
-/

namespace A139847.P12427565273860986279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P12427565273860986279

/-! ## A139847.P11568033666984991063

`∩[A038888(n+1), A102271(n+1)]`
-/

namespace A139847.P11568033666984991063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P11568033666984991063

/-! ## A139847.P14513760983587420069

`∩[A038878(n+1), A107168(n+1)]`
-/

namespace A139847.P14513760983587420069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P14513760983587420069

/-! ## A139847.P4438899062121239886

`∩[A038894(n+1), A107168(n+1)]`
-/

namespace A139847.P4438899062121239886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P4438899062121239886

/-! ## A139847.P7911838944073253331

`∩[A045468(n+1), A102271(n+1)]`
-/

namespace A139847.P7911838944073253331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P7911838944073253331

/-! ## A139847.P3254130742163543812

`∩[A045399(n+1), A107168(n+1)]`
-/

namespace A139847.P3254130742163543812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139847.P3254130742163543812

/-!
# A139848: Primes of the form 7x^2 + 15y^2.

The programs for A139848, the canonical program `A139848.P6895027528915671648` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139848 has offset 1).

The definition of A139848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139848.P6895027528915671648

`∩[A139492(n+1), A139832(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139848

/-- `∩[A139492(n+1), A139832(n+1)]` -/
def P6895027528915671648.Spec : Prop :=
  ∀ n, (P6895027528915671648.a n : ℤ) = A139848 (n + 1)

theorem P6895027528915671648.correct : P6895027528915671648.Spec := by
  intro n
  simp only [A139848, Nat.add_sub_cancel]

end A139848

/-! ## A139848.P17694701435679830095

`∩[A139492(n+1), A141304(n+1)]`
-/

namespace A139848.P17694701435679830095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P17694701435679830095

namespace A139848

/-- `∩[A139492(n+1), A141304(n+1)]` -/
def P17694701435679830095.Spec : Prop :=
  ∀ n, (P17694701435679830095.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P13923439266487714437

`∩[A106865(n+1), A139492(n+1)]`
-/

namespace A139848.P13923439266487714437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P13923439266487714437

namespace A139848

/-- `∩[A106865(n+1), A139492(n+1)]` -/
def P13923439266487714437.Spec : Prop :=
  ∀ n, (P13923439266487714437.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P12586377939613298398

`∩[A107133(n+1), A139832(n+1)]`
-/

namespace A139848.P12586377939613298398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P12586377939613298398

namespace A139848

/-- `∩[A107133(n+1), A139832(n+1)]` -/
def P12586377939613298398.Spec : Prop :=
  ∀ n, (P12586377939613298398.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P13685292969538893449

`∩[A107133(n+1), A141304(n+1)]`
-/

namespace A139848.P13685292969538893449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P13685292969538893449

namespace A139848

/-- `∩[A107133(n+1), A141304(n+1)]` -/
def P13685292969538893449.Spec : Prop :=
  ∀ n, (P13685292969538893449.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P11941863986333165776

`∩[A122870(n+1), A139492(n+1)]`
-/

namespace A139848.P11941863986333165776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P11941863986333165776

namespace A139848

/-- `∩[A122870(n+1), A139492(n+1)]` -/
def P11941863986333165776.Spec : Prop :=
  ∀ n, (P11941863986333165776.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P9466545087185336330

`∩[A106952(n+1), A107133(n+1)]`
-/

namespace A139848.P9466545087185336330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P9466545087185336330

namespace A139848

/-- `∩[A106952(n+1), A107133(n+1)]` -/
def P9466545087185336330.Spec : Prop :=
  ∀ n, (P9466545087185336330.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P5190942745665416009

`∩[A040149(n+1), A139832(n+1)]`
-/

namespace A139848.P5190942745665416009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P5190942745665416009

namespace A139848

/-- `∩[A040149(n+1), A139832(n+1)]` -/
def P5190942745665416009.Spec : Prop :=
  ∀ n, (P5190942745665416009.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P6233270721193537422

`∩[A038911(n+1), A139832(n+1)]`
-/

namespace A139848.P6233270721193537422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P6233270721193537422

namespace A139848

/-- `∩[A038911(n+1), A139832(n+1)]` -/
def P6233270721193537422.Spec : Prop :=
  ∀ n, (P6233270721193537422.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P4674395720031832726

`∩[A038911(n+1), A141304(n+1)]`
-/

namespace A139848.P4674395720031832726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P4674395720031832726

namespace A139848

/-- `∩[A038911(n+1), A141304(n+1)]` -/
def P4674395720031832726.Spec : Prop :=
  ∀ n, (P4674395720031832726.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P65729465121592759

`∩[A033207(n+1), A139832(n+1)]`
-/

namespace A139848.P65729465121592759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P65729465121592759

namespace A139848

/-- `∩[A033207(n+1), A139832(n+1)]` -/
def P65729465121592759.Spec : Prop :=
  ∀ n, (P65729465121592759.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P9829349601124804450

`∩[A033207(n+1), A141304(n+1)]`
-/

namespace A139848.P9829349601124804450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P9829349601124804450

namespace A139848

/-- `∩[A033207(n+1), A141304(n+1)]` -/
def P9829349601124804450.Spec : Prop :=
  ∀ n, (P9829349601124804450.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P11444726200583434982

`∩[A038893(n+1), A139832(n+1)]`
-/

namespace A139848.P11444726200583434982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P11444726200583434982

namespace A139848

/-- `∩[A038893(n+1), A139832(n+1)]` -/
def P11444726200583434982.Spec : Prop :=
  ∀ n, (P11444726200583434982.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P5348501453964182128

`∩[A045373(n+1), A139832(n+1)]`
-/

namespace A139848.P5348501453964182128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P5348501453964182128

namespace A139848

/-- `∩[A045373(n+1), A139832(n+1)]` -/
def P5348501453964182128.Spec : Prop :=
  ∀ n, (P5348501453964182128.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P4299320608176963136

`∩[A045373(n+1), A141304(n+1)]`
-/

namespace A139848.P4299320608176963136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P4299320608176963136

namespace A139848

/-- `∩[A045373(n+1), A141304(n+1)]` -/
def P4299320608176963136.Spec : Prop :=
  ∀ n, (P4299320608176963136.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P14201562269149888395

`∩[A139832(n+1), A391370(n+1)]`
-/

namespace A139848.P14201562269149888395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P14201562269149888395

namespace A139848

/-- `∩[A139832(n+1), A391370(n+1)]` -/
def P14201562269149888395.Spec : Prop :=
  ∀ n, (P14201562269149888395.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P2221716613961980408

`∩[A107133(n+1), A267985(n+1)]`
-/

namespace A139848.P2221716613961980408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P2221716613961980408

namespace A139848

/-- `∩[A107133(n+1), A267985(n+1)]` -/
def P2221716613961980408.Spec : Prop :=
  ∀ n, (P2221716613961980408.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P8460658812917727953

`∩[A020683(n+1), A106952(n+1)]`
-/

namespace A139848.P8460658812917727953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P8460658812917727953

namespace A139848

/-- `∩[A020683(n+1), A106952(n+1)]` -/
def P8460658812917727953.Spec : Prop :=
  ∀ n, (P8460658812917727953.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P15437845526231767836

`∩[A020683(n+1), A139832(n+1)]`
-/

namespace A139848.P15437845526231767836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P15437845526231767836

namespace A139848

/-- `∩[A020683(n+1), A139832(n+1)]` -/
def P15437845526231767836.Spec : Prop :=
  ∀ n, (P15437845526231767836.a n : ℤ) = A139848 (n + 1)

end A139848

/-! ## A139848.P13896306125424268256

`∩[A020683(n+1), A141304(n+1)]`
-/

namespace A139848.P13896306125424268256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139848.P13896306125424268256

namespace A139848

/-- `∩[A020683(n+1), A141304(n+1)]` -/
def P13896306125424268256.Spec : Prop :=
  ∀ n, (P13896306125424268256.a n : ℤ) = A139848 (n + 1)

end A139848

/-!
# A139849: Primes of the form 10x^2 + 10xy + 13y^2.

The programs for A139849, the canonical program `A139849.P14846005431646973738` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139849 has offset 1).

The definition of A139849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139849.P14846005431646973738

`∩[A068228(n+1), A106878(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139849

/-- `∩[A068228(n+1), A106878(n+1)]` -/
def P14846005431646973738.Spec : Prop :=
  ∀ n, (P14846005431646973738.a n : ℤ) = A139849 (n + 1)

theorem P14846005431646973738.correct : P14846005431646973738.Spec := by
  intro n
  simp only [A139849, Nat.add_sub_cancel]

end A139849

/-! ## A139849.P11597084705173274609

`∩[A106878(n+1), A351537(n+1)]`
-/

namespace A139849.P11597084705173274609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P11597084705173274609

namespace A139849

/-- `∩[A106878(n+1), A351537(n+1)]` -/
def P11597084705173274609.Spec : Prop :=
  ∀ n, (P11597084705173274609.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P9152272448925405546

`∩[A106878(n+1), A354467(n+1)]`
-/

namespace A139849.P9152272448925405546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P9152272448925405546

namespace A139849

/-- `∩[A106878(n+1), A354467(n+1)]` -/
def P9152272448925405546.Spec : Prop :=
  ∀ n, (P9152272448925405546.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P3576024847878497159

`∩[A106878(n+1), A353198(n+1)]`
-/

namespace A139849.P3576024847878497159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P3576024847878497159

namespace A139849

/-- `∩[A106878(n+1), A353198(n+1)]` -/
def P3576024847878497159.Spec : Prop :=
  ∀ n, (P3576024847878497159.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P1570687979457627767

`∩[A106878(n+1), A155560(n+1)]`
-/

namespace A139849.P1570687979457627767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P1570687979457627767

namespace A139849

/-- `∩[A106878(n+1), A155560(n+1)]` -/
def P1570687979457627767.Spec : Prop :=
  ∀ n, (P1570687979457627767.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P1262085099611302850

`∩[A106878(n+1), A264732(n+1)]`
-/

namespace A139849.P1262085099611302850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P1262085099611302850

namespace A139849

/-- `∩[A106878(n+1), A264732(n+1)]` -/
def P1262085099611302850.Spec : Prop :=
  ∀ n, (P1262085099611302850.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P10212789858811692747

`∩[A106878(n+1), A155563(n+1)]`
-/

namespace A139849.P10212789858811692747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P10212789858811692747

namespace A139849

/-- `∩[A106878(n+1), A155563(n+1)]` -/
def P10212789858811692747.Spec : Prop :=
  ∀ n, (P10212789858811692747.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P6166582129379551098

`∩[A106878(n+1), A017533(n)]`
-/

namespace A139849.P6166582129379551098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P6166582129379551098

namespace A139849

/-- `∩[A106878(n+1), A017533(n)]` -/
def P6166582129379551098.Spec : Prop :=
  ∀ n, (P6166582129379551098.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P13600182212825837139

`∩[A106878(n+1), A272933(n+1)]`
-/

namespace A139849.P13600182212825837139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P13600182212825837139

namespace A139849

/-- `∩[A106878(n+1), A272933(n+1)]` -/
def P13600182212825837139.Spec : Prop :=
  ∀ n, (P13600182212825837139.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P8791507198336584779

`∩[A020672(n+1), A106878(n+1)]`
-/

namespace A139849.P8791507198336584779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P8791507198336584779

namespace A139849

/-- `∩[A020672(n+1), A106878(n+1)]` -/
def P8791507198336584779.Spec : Prop :=
  ∀ n, (P8791507198336584779.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P286095343529091665

`∩[A084916(n+1), A106878(n+1)]`
-/

namespace A139849.P286095343529091665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P286095343529091665

namespace A139849

/-- `∩[A084916(n+1), A106878(n+1)]` -/
def P286095343529091665.Spec : Prop :=
  ∀ n, (P286095343529091665.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P13495087550587109811

`∩[A106878(n+1), A228137(n+1)]`
-/

namespace A139849.P13495087550587109811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P13495087550587109811

namespace A139849

/-- `∩[A106878(n+1), A228137(n+1)]` -/
def P13495087550587109811.Spec : Prop :=
  ∀ n, (P13495087550587109811.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P388375694191314629

`∩[A112652(2*n+1)+A112652(2*n), A106878(n+2)]`
-/

namespace A139849.P388375694191314629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (2 * n + 1) + A112652 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P388375694191314629

namespace A139849

/-- `∩[A112652(2*n+1)+A112652(2*n), A106878(n+2)]` -/
def P388375694191314629.Spec : Prop :=
  ∀ n, (P388375694191314629.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P11672123288392467184

`∩[A106878(n+1), A112652(n)]`
-/

namespace A139849.P11672123288392467184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P11672123288392467184

namespace A139849

/-- `∩[A106878(n+1), A112652(n)]` -/
def P11672123288392467184.Spec : Prop :=
  ∀ n, (P11672123288392467184.a n : ℤ) = A139849 (n + 1)

end A139849

/-! ## A139849.P786262304979220464

`∩[A106878(n+1), A332512(n+1)]`
-/

namespace A139849.P786262304979220464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139849.P786262304979220464

namespace A139849

/-- `∩[A106878(n+1), A332512(n+1)]` -/
def P786262304979220464.Spec : Prop :=
  ∀ n, (P786262304979220464.a n : ℤ) = A139849 (n + 1)

end A139849

/-!
# A139850: Primes of the form 11x^2 + 8xy + 11y^2.

The programs for A139850, the canonical program `A139850.P14382659560258088933` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139850 has offset 1).

The definition of A139850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139850.P14382659560258088933

`∩[A102273(n+1), A141302(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139850

/-- `∩[A102273(n+1), A141302(n+1)]` -/
def P14382659560258088933.Spec : Prop :=
  ∀ n, (P14382659560258088933.a n : ℤ) = A139850 (n + 1)

theorem P14382659560258088933.correct : P14382659560258088933.Spec := by
  intro n
  simp only [A139850, Nat.add_sub_cancel]

end A139850

/-! ## A139850.P3318854150681341003

`∩[A102273(n+1), A106881(n+1)]`
-/

namespace A139850.P3318854150681341003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P3318854150681341003

namespace A139850

/-- `∩[A102273(n+1), A106881(n+1)]` -/
def P3318854150681341003.Spec : Prop :=
  ∀ n, (P3318854150681341003.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P6569144562003479147

`∩[A106881(n+1), A141302(n+1)]`
-/

namespace A139850.P6569144562003479147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P6569144562003479147

namespace A139850

/-- `∩[A106881(n+1), A141302(n+1)]` -/
def P6569144562003479147.Spec : Prop :=
  ∀ n, (P6569144562003479147.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P7549317445665350883

`∩[A106927(n+1), A141302(n+1)]`
-/

namespace A139850.P7549317445665350883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P7549317445665350883

namespace A139850

/-- `∩[A106927(n+1), A141302(n+1)]` -/
def P7549317445665350883.Spec : Prop :=
  ∀ n, (P7549317445665350883.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P16097055239242276213

`∩[A107133(n+1), A141302(n+1)]`
-/

namespace A139850.P16097055239242276213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P16097055239242276213

namespace A139850

/-- `∩[A107133(n+1), A141302(n+1)]` -/
def P16097055239242276213.Spec : Prop :=
  ∀ n, (P16097055239242276213.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P10315995930588201540

`∩[A068231(n+1), A106881(n+1)]`
-/

namespace A139850.P10315995930588201540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P10315995930588201540

namespace A139850

/-- `∩[A068231(n+1), A106881(n+1)]` -/
def P10315995930588201540.Spec : Prop :=
  ∀ n, (P10315995930588201540.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P4672196451683916945

`∩[A106881(n+1), A141187(n+1)]`
-/

namespace A139850.P4672196451683916945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P4672196451683916945

namespace A139850

/-- `∩[A106881(n+1), A141187(n+1)]` -/
def P4672196451683916945.Spec : Prop :=
  ∀ n, (P4672196451683916945.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P4648996781708834433

`∩[A106881(n+1), A141123(n+1)]`
-/

namespace A139850.P4648996781708834433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P4648996781708834433

namespace A139850

/-- `∩[A106881(n+1), A141123(n+1)]` -/
def P4648996781708834433.Spec : Prop :=
  ∀ n, (P4648996781708834433.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P10861066617322145534

`∩[A102273(n+1), A122869(n+1)]`
-/

namespace A139850.P10861066617322145534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P10861066617322145534

namespace A139850

/-- `∩[A102273(n+1), A122869(n+1)]` -/
def P10861066617322145534.Spec : Prop :=
  ∀ n, (P10861066617322145534.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P13157250495037728607

`∩[A106927(n+1), A122869(n+1)]`
-/

namespace A139850.P13157250495037728607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P13157250495037728607

namespace A139850

/-- `∩[A106927(n+1), A122869(n+1)]` -/
def P13157250495037728607.Spec : Prop :=
  ∀ n, (P13157250495037728607.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P10808993765831517275

`∩[A102273(n+1), A141785(n+1)]`
-/

namespace A139850.P10808993765831517275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P10808993765831517275

namespace A139850

/-- `∩[A102273(n+1), A141785(n+1)]` -/
def P10808993765831517275.Spec : Prop :=
  ∀ n, (P10808993765831517275.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P2271679891442923432

`∩[A107133(n+1), A141785(n+1)]`
-/

namespace A139850.P2271679891442923432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P2271679891442923432

namespace A139850

/-- `∩[A107133(n+1), A141785(n+1)]` -/
def P2271679891442923432.Spec : Prop :=
  ∀ n, (P2271679891442923432.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P15144750190799239986

`∩[A053032(n+1), A102273(n+1)]`
-/

namespace A139850.P15144750190799239986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P15144750190799239986

namespace A139850

/-- `∩[A053032(n+1), A102273(n+1)]` -/
def P15144750190799239986.Spec : Prop :=
  ∀ n, (P15144750190799239986.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P5100908573269097806

`∩[A102273(n+1), A112860(n+1)]`
-/

namespace A139850.P5100908573269097806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P5100908573269097806

namespace A139850

/-- `∩[A102273(n+1), A112860(n+1)]` -/
def P5100908573269097806.Spec : Prop :=
  ∀ n, (P5100908573269097806.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P2361656645254208121

`∩[A102273(n+1), A385192(n+1)]`
-/

namespace A139850.P2361656645254208121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P2361656645254208121

namespace A139850

/-- `∩[A102273(n+1), A385192(n+1)]` -/
def P2361656645254208121.Spec : Prop :=
  ∀ n, (P2361656645254208121.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P3383146747125555760

`∩[A106881(n+1), A332516(n+1)]`
-/

namespace A139850.P3383146747125555760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P3383146747125555760

namespace A139850

/-- `∩[A106881(n+1), A332516(n+1)]` -/
def P3383146747125555760.Spec : Prop :=
  ∀ n, (P3383146747125555760.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P8025959874720451095

`∩[A040130(n+1), A102273(n+1)]`
-/

namespace A139850.P8025959874720451095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P8025959874720451095

namespace A139850

/-- `∩[A040130(n+1), A102273(n+1)]` -/
def P8025959874720451095.Spec : Prop :=
  ∀ n, (P8025959874720451095.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P369300942955984568

`∩[A040105(n+1), A102273(n+1)]`
-/

namespace A139850.P369300942955984568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P369300942955984568

namespace A139850

/-- `∩[A040105(n+1), A102273(n+1)]` -/
def P369300942955984568.Spec : Prop :=
  ∀ n, (P369300942955984568.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P12429462135374911981

`∩[A040147(n+1), A102273(n+1)]`
-/

namespace A139850.P12429462135374911981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P12429462135374911981

namespace A139850

/-- `∩[A040147(n+1), A102273(n+1)]` -/
def P12429462135374911981.Spec : Prop :=
  ∀ n, (P12429462135374911981.a n : ℤ) = A139850 (n + 1)

end A139850

/-! ## A139850.P3288206653283990652

`∩[A040998(n+1), A102273(n+1)]`
-/

namespace A139850.P3288206653283990652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P3288206653283990652

namespace A139850

/-- `∩[A040998(n+1), A102273(n+1)]` -/
def P3288206653283990652.Spec : Prop :=
  ∀ n, (P3288206653283990652.a n : ℤ) = A139850 (n + 1)

end A139850

/-!
# A139851: Primes of the form 4x^2+4xy+29y^2.

The programs for A139851, the canonical program `A139851.P5862559983598853458` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139851 has offset 1).

The definition of A139851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139851.P662900820102161505

`∩[A007521(n+1), A107134(n+1)]`
-/

namespace A139851.P662900820102161505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P662900820102161505

namespace A139851

/-- `∩[A007521(n+1), A107134(n+1)]` -/
def P662900820102161505.Spec : Prop :=
  ∀ n, (P662900820102161505.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P7240390364526040845

`∩[A004627(n+1), A107134(n+1)]`
-/

namespace A139851.P7240390364526040845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P7240390364526040845

namespace A139851

/-- `∩[A004627(n+1), A107134(n+1)]` -/
def P7240390364526040845.Spec : Prop :=
  ∀ n, (P7240390364526040845.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P4381565486589359246

`∩[A004627(n+1), A141172(n+1)]`
-/

namespace A139851.P4381565486589359246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P4381565486589359246

namespace A139851

/-- `∩[A004627(n+1), A141172(n+1)]` -/
def P4381565486589359246.Spec : Prop :=
  ∀ n, (P4381565486589359246.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P6115689447005211073

`∩[A004627(n+1), A038878(n+1)]`
-/

namespace A139851.P6115689447005211073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P6115689447005211073

namespace A139851

/-- `∩[A004627(n+1), A038878(n+1)]` -/
def P6115689447005211073.Spec : Prop :=
  ∀ n, (P6115689447005211073.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P7120550866157060483

`∩[A007521(n+1), A038878(n+1)]`
-/

namespace A139851.P7120550866157060483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P7120550866157060483

namespace A139851

/-- `∩[A007521(n+1), A038878(n+1)]` -/
def P7120550866157060483.Spec : Prop :=
  ∀ n, (P7120550866157060483.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P1012853128258758312

`∩[A004627(n+1), A033207(n+1)]`
-/

namespace A139851.P1012853128258758312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P1012853128258758312

namespace A139851

/-- `∩[A004627(n+1), A033207(n+1)]` -/
def P1012853128258758312.Spec : Prop :=
  ∀ n, (P1012853128258758312.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P5862559983598853458

`∩[A007521(n+1), A033207(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139851

/-- `∩[A007521(n+1), A033207(n+1)]` -/
def P5862559983598853458.Spec : Prop :=
  ∀ n, (P5862559983598853458.a n : ℤ) = A139851 (n + 1)

theorem P5862559983598853458.correct : P5862559983598853458.Spec := by
  intro n
  simp only [A139851, Nat.add_sub_cancel]

end A139851

/-! ## A139851.P2870814567971892453

`∩[A004627(n+1), A045373(n+1)]`
-/

namespace A139851.P2870814567971892453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P2870814567971892453

namespace A139851

/-- `∩[A004627(n+1), A045373(n+1)]` -/
def P2870814567971892453.Spec : Prop :=
  ∀ n, (P2870814567971892453.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P15821518682698248175

`∩[A004627(n+1), A045386(n+1)]`
-/

namespace A139851.P15821518682698248175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P15821518682698248175

namespace A139851

/-- `∩[A004627(n+1), A045386(n+1)]` -/
def P15821518682698248175.Spec : Prop :=
  ∀ n, (P15821518682698248175.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P9401345903791093894

`∩[A007521(n+1), A045373(n+1)]`
-/

namespace A139851.P9401345903791093894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P9401345903791093894

namespace A139851

/-- `∩[A007521(n+1), A045373(n+1)]` -/
def P9401345903791093894.Spec : Prop :=
  ∀ n, (P9401345903791093894.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P2725508657909401220

`∩[A007521(n+1), A045386(n+1)]`
-/

namespace A139851.P2725508657909401220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P2725508657909401220

namespace A139851

/-- `∩[A007521(n+1), A045386(n+1)]` -/
def P2725508657909401220.Spec : Prop :=
  ∀ n, (P2725508657909401220.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P3995058370752095714

`∩[A033207(n+1), A045366(n+1)]`
-/

namespace A139851.P3995058370752095714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P3995058370752095714

namespace A139851

/-- `∩[A033207(n+1), A045366(n+1)]` -/
def P3995058370752095714.Spec : Prop :=
  ∀ n, (P3995058370752095714.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P8604203301353540436

`∩[A296934(n+1), A004627(n+1)]`
-/

namespace A139851.P8604203301353540436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P8604203301353540436

namespace A139851

/-- `∩[A296934(n+1), A004627(n+1)]` -/
def P8604203301353540436.Spec : Prop :=
  ∀ n, (P8604203301353540436.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P439045958327054418

`∩[A004627(n+1), A191061(n+1)]`
-/

namespace A139851.P439045958327054418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P439045958327054418

namespace A139851

/-- `∩[A004627(n+1), A191061(n+1)]` -/
def P439045958327054418.Spec : Prop :=
  ∀ n, (P439045958327054418.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P14465568082856789047

`∩[A003628(n+1), A107134(n+1)]`
-/

namespace A139851.P14465568082856789047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P14465568082856789047

namespace A139851

/-- `∩[A003628(n+1), A107134(n+1)]` -/
def P14465568082856789047.Spec : Prop :=
  ∀ n, (P14465568082856789047.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P8314057164523903904

`∩[A003628(n+1), A141172(n+1)]`
-/

namespace A139851.P8314057164523903904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P8314057164523903904

namespace A139851

/-- `∩[A003628(n+1), A141172(n+1)]` -/
def P8314057164523903904.Spec : Prop :=
  ∀ n, (P8314057164523903904.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P11982436851190754372

`∩[A045355(n+1), A107134(n+1)]`
-/

namespace A139851.P11982436851190754372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P11982436851190754372

namespace A139851

/-- `∩[A045355(n+1), A107134(n+1)]` -/
def P11982436851190754372.Spec : Prop :=
  ∀ n, (P11982436851190754372.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P15909015284983978411

`∩[A107134(n+1), A228228(n+1)]`
-/

namespace A139851.P15909015284983978411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P15909015284983978411

namespace A139851

/-- `∩[A107134(n+1), A228228(n+1)]` -/
def P15909015284983978411.Spec : Prop :=
  ∀ n, (P15909015284983978411.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P11900044142210675719

`∩[A003629(n+1), A107134(n+1)]`
-/

namespace A139851.P11900044142210675719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P11900044142210675719

namespace A139851

/-- `∩[A003629(n+1), A107134(n+1)]` -/
def P11900044142210675719.Spec : Prop :=
  ∀ n, (P11900044142210675719.a n : ℤ) = A139851 (n + 1)

end A139851

/-! ## A139851.P12740969714678426896

`∩[A003629(n+1), A141172(n+1)]`
-/

namespace A139851.P12740969714678426896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139851.P12740969714678426896

namespace A139851

/-- `∩[A003629(n+1), A141172(n+1)]` -/
def P12740969714678426896.Spec : Prop :=
  ∀ n, (P12740969714678426896.a n : ℤ) = A139851 (n + 1)

end A139851

/-!
# A139852: Primes of the form 7x^2 + 16y^2.

The programs for A139852, the canonical program `A139852.P10236531295007452952` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139852 has offset 1).

The definition of A139852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139852.P12438596777170334440

`∩[A007522(n+1), A107133(n+1)]`
-/

namespace A139852.P12438596777170334440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P12438596777170334440

namespace A139852

/-- `∩[A007522(n+1), A107133(n+1)]` -/
def P12438596777170334440.Spec : Prop :=
  ∀ n, (P12438596777170334440.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P10236531295007452952

`∩[A045382(n+1), A107133(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139852

/-- `∩[A045382(n+1), A107133(n+1)]` -/
def P10236531295007452952.Spec : Prop :=
  ∀ n, (P10236531295007452952.a n : ℤ) = A139852 (n + 1)

theorem P10236531295007452952.correct : P10236531295007452952.Spec := by
  intro n
  simp only [A139852, Nat.add_sub_cancel]

end A139852

/-! ## A139852.P8016136522923452959

`∩[A094712(n+1), A107133(n+1)]`
-/

namespace A139852.P8016136522923452959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P8016136522923452959

namespace A139852

/-- `∩[A094712(n+1), A107133(n+1)]` -/
def P8016136522923452959.Spec : Prop :=
  ∀ n, (P8016136522923452959.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P10986807360028674607

`∩[A014663(n+1), A107133(n+1)]`
-/

namespace A139852.P10986807360028674607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P10986807360028674607

namespace A139852

/-- `∩[A014663(n+1), A107133(n+1)]` -/
def P10986807360028674607.Spec : Prop :=
  ∀ n, (P10986807360028674607.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P1405856705735084309

`∩[A040098(n+1), A107133(n+1)]`
-/

namespace A139852.P1405856705735084309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P1405856705735084309

namespace A139852

/-- `∩[A040098(n+1), A107133(n+1)]` -/
def P1405856705735084309.Spec : Prop :=
  ∀ n, (P1405856705735084309.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P584797713201540800

`∩[A004628(n+1), A107133(n+1)]`
-/

namespace A139852.P584797713201540800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P584797713201540800

namespace A139852

/-- `∩[A004628(n+1), A107133(n+1)]` -/
def P584797713201540800.Spec : Prop :=
  ∀ n, (P584797713201540800.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P11251466640221378075

`∩[A040141(n+1), A107133(n+1)]`
-/

namespace A139852.P11251466640221378075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P11251466640221378075

namespace A139852

/-- `∩[A040141(n+1), A107133(n+1)]` -/
def P11251466640221378075.Spec : Prop :=
  ∀ n, (P11251466640221378075.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P10030377310343231959

`∩[A036259(n+1), A107133(n+1)]`
-/

namespace A139852.P10030377310343231959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P10030377310343231959

namespace A139852

/-- `∩[A036259(n+1), A107133(n+1)]` -/
def P10030377310343231959.Spec : Prop :=
  ∀ n, (P10030377310343231959.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P18005998553944502051

`∩[A045315(n+1), A107133(n+1)]`
-/

namespace A139852.P18005998553944502051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P18005998553944502051

namespace A139852

/-- `∩[A045315(n+1), A107133(n+1)]` -/
def P18005998553944502051.Spec : Prop :=
  ∀ n, (P18005998553944502051.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P6664234117172824534

`∩[A001132(n+1), A107133(n+1)]`
-/

namespace A139852.P6664234117172824534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P6664234117172824534

namespace A139852

/-- `∩[A001132(n+1), A107133(n+1)]` -/
def P6664234117172824534.Spec : Prop :=
  ∀ n, (P6664234117172824534.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P6066774908025462029

`∩[A038873(n+1), A107133(n+1)]`
-/

namespace A139852.P6066774908025462029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P6066774908025462029

namespace A139852

/-- `∩[A038873(n+1), A107133(n+1)]` -/
def P6066774908025462029.Spec : Prop :=
  ∀ n, (P6066774908025462029.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P8927991820811860236

`∩[A097958(n+1), A107133(n+1)]`
-/

namespace A139852.P8927991820811860236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P8927991820811860236

namespace A139852

/-- `∩[A097958(n+1), A107133(n+1)]` -/
def P8927991820811860236.Spec : Prop :=
  ∀ n, (P8927991820811860236.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P8282876618882481739

`∩[A004628(n+1), A033207(n+1)]`
-/

namespace A139852.P8282876618882481739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P8282876618882481739

namespace A139852

/-- `∩[A004628(n+1), A033207(n+1)]` -/
def P8282876618882481739.Spec : Prop :=
  ∀ n, (P8282876618882481739.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P9043317314682326634

`∩[A007522(n+1), A033207(n+1)]`
-/

namespace A139852.P9043317314682326634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P9043317314682326634

namespace A139852

/-- `∩[A007522(n+1), A033207(n+1)]` -/
def P9043317314682326634.Spec : Prop :=
  ∀ n, (P9043317314682326634.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P13874137907723643650

`∩[A033207(n+1), A045382(n+1)]`
-/

namespace A139852.P13874137907723643650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P13874137907723643650

namespace A139852

/-- `∩[A033207(n+1), A045382(n+1)]` -/
def P13874137907723643650.Spec : Prop :=
  ∀ n, (P13874137907723643650.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P15991805193266511972

`∩[A004628(n+1), A045373(n+1)]`
-/

namespace A139852.P15991805193266511972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P15991805193266511972

namespace A139852

/-- `∩[A004628(n+1), A045373(n+1)]` -/
def P15991805193266511972.Spec : Prop :=
  ∀ n, (P15991805193266511972.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P9324454434073003642

`∩[A007522(n+1), A045373(n+1)]`
-/

namespace A139852.P9324454434073003642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P9324454434073003642

namespace A139852

/-- `∩[A007522(n+1), A045373(n+1)]` -/
def P9324454434073003642.Spec : Prop :=
  ∀ n, (P9324454434073003642.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P17738570646901375666

`∩[A003628(n+1), A107133(n+1)]`
-/

namespace A139852.P17738570646901375666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P17738570646901375666

namespace A139852

/-- `∩[A003628(n+1), A107133(n+1)]` -/
def P17738570646901375666.Spec : Prop :=
  ∀ n, (P17738570646901375666.a n : ℤ) = A139852 (n + 1)

end A139852

/-! ## A139852.P11865655679017244528

`∩[A045355(n+1), A107133(n+1)]`
-/

namespace A139852.P11865655679017244528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139852.P11865655679017244528

namespace A139852

/-- `∩[A045355(n+1), A107133(n+1)]` -/
def P11865655679017244528.Spec : Prop :=
  ∀ n, (P11865655679017244528.a n : ℤ) = A139852 (n + 1)

end A139852

/-!
# A139853: Primes of the form 11x^2+6xy+11y^2.

The programs for A139853, the canonical program `A139853.P13344040396729092965` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139853 has offset 1).

The definition of A139853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139853.P13344040396729092965

`∪[A139875(n+1), A140617(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139853

/-- `∪[A139875(n+1), A140617(n+1)]` -/
def P13344040396729092965.Spec : Prop :=
  ∀ n, (P13344040396729092965.a n : ℤ) = A139853 (n + 1)

theorem P13344040396729092965.correct : P13344040396729092965.Spec := by
  intro n
  simp only [A139853, Nat.add_sub_cancel]

end A139853

/-! ## A139853.P14895392202784677220

`∩[A007520(n+1), A107133(n+1)]`
-/

namespace A139853.P14895392202784677220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P14895392202784677220

namespace A139853

/-- `∩[A007520(n+1), A107133(n+1)]` -/
def P14895392202784677220.Spec : Prop :=
  ∀ n, (P14895392202784677220.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P11692743580665656650

`∩[A007520(n+1), A040128(n+1)]`
-/

namespace A139853.P11692743580665656650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P11692743580665656650

namespace A139853

/-- `∩[A007520(n+1), A040128(n+1)]` -/
def P11692743580665656650.Spec : Prop :=
  ∀ n, (P11692743580665656650.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P12198664743094956357

`∩[A040128(n+1), A192717(n+1)]`
-/

namespace A139853.P12198664743094956357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P12198664743094956357

namespace A139853

/-- `∩[A040128(n+1), A192717(n+1)]` -/
def P12198664743094956357.Spec : Prop :=
  ∀ n, (P12198664743094956357.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P12082638116175599220

`∩[A007520(n+1), A038885(n+1)]`
-/

namespace A139853.P12082638116175599220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P12082638116175599220

namespace A139853

/-- `∩[A007520(n+1), A038885(n+1)]` -/
def P12082638116175599220.Spec : Prop :=
  ∀ n, (P12082638116175599220.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P9325471077682325869

`∩[A033200(n+1), A107133(n+1)]`
-/

namespace A139853.P9325471077682325869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P9325471077682325869

namespace A139853

/-- `∩[A033200(n+1), A107133(n+1)]` -/
def P9325471077682325869.Spec : Prop :=
  ∀ n, (P9325471077682325869.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P14499869825933070551

`∩[A033203(n+1), A107133(n+1)]`
-/

namespace A139853.P14499869825933070551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P14499869825933070551

namespace A139853

/-- `∩[A033203(n+1), A107133(n+1)]` -/
def P14499869825933070551.Spec : Prop :=
  ∀ n, (P14499869825933070551.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P10356127128180221700

`∩[A007520(n+1), A033207(n+1)]`
-/

namespace A139853.P10356127128180221700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P10356127128180221700

namespace A139853

/-- `∩[A007520(n+1), A033207(n+1)]` -/
def P10356127128180221700.Spec : Prop :=
  ∀ n, (P10356127128180221700.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P5414431715920489927

`∩[A007520(n+1), A045373(n+1)]`
-/

namespace A139853.P5414431715920489927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P5414431715920489927

namespace A139853

/-- `∩[A007520(n+1), A045373(n+1)]` -/
def P5414431715920489927.Spec : Prop :=
  ∀ n, (P5414431715920489927.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P8438370914179761927

`∩[A007520(n+1), A045386(n+1)]`
-/

namespace A139853.P8438370914179761927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P8438370914179761927

namespace A139853

/-- `∩[A007520(n+1), A045386(n+1)]` -/
def P8438370914179761927.Spec : Prop :=
  ∀ n, (P8438370914179761927.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P9864880178075609055

`∩[A033207(n+1), A045339(n+1)]`
-/

namespace A139853.P9864880178075609055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P9864880178075609055

namespace A139853

/-- `∩[A033207(n+1), A045339(n+1)]` -/
def P9864880178075609055.Spec : Prop :=
  ∀ n, (P9864880178075609055.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P2358335152113231969

`∩[A045386(n+1), A192717(n+1)]`
-/

namespace A139853.P2358335152113231969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P2358335152113231969

namespace A139853

/-- `∩[A045386(n+1), A192717(n+1)]` -/
def P2358335152113231969.Spec : Prop :=
  ∀ n, (P2358335152113231969.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P7834421526830674290

`∩[A045373(n+1), A332446(n+1)]`
-/

namespace A139853.P7834421526830674290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P7834421526830674290

namespace A139853

/-- `∩[A045373(n+1), A332446(n+1)]` -/
def P7834421526830674290.Spec : Prop :=
  ∀ n, (P7834421526830674290.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P8391166280162713583

`∩[A045386(n+1), A332446(n+1)]`
-/

namespace A139853.P8391166280162713583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P8391166280162713583

namespace A139853

/-- `∩[A045386(n+1), A332446(n+1)]` -/
def P8391166280162713583.Spec : Prop :=
  ∀ n, (P8391166280162713583.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P3837822534630886826

`∩[A002145(n+1), A141190(n+1)]`
-/

namespace A139853.P3837822534630886826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P3837822534630886826

namespace A139853

/-- `∩[A002145(n+1), A141190(n+1)]` -/
def P3837822534630886826.Spec : Prop :=
  ∀ n, (P3837822534630886826.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P18247313574813658035

`∩[A003632(n+1), A007520(n+1)]`
-/

namespace A139853.P18247313574813658035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P18247313574813658035

namespace A139853

/-- `∩[A003632(n+1), A007520(n+1)]` -/
def P18247313574813658035.Spec : Prop :=
  ∀ n, (P18247313574813658035.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P14411363236501086462

`∩[A003632(n+1), A045339(n+1)]`
-/

namespace A139853.P14411363236501086462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P14411363236501086462

namespace A139853

/-- `∩[A003632(n+1), A045339(n+1)]` -/
def P14411363236501086462.Spec : Prop :=
  ∀ n, (P14411363236501086462.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P9608874061210620268

`∩[A003629(n+1), A107133(n+1)]`
-/

namespace A139853.P9608874061210620268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P9608874061210620268

namespace A139853

/-- `∩[A003629(n+1), A107133(n+1)]` -/
def P9608874061210620268.Spec : Prop :=
  ∀ n, (P9608874061210620268.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P7898271539579443016

`∩[A042999(n+1), A107133(n+1)]`
-/

namespace A139853.P7898271539579443016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P7898271539579443016

namespace A139853

/-- `∩[A042999(n+1), A107133(n+1)]` -/
def P7898271539579443016.Spec : Prop :=
  ∀ n, (P7898271539579443016.a n : ℤ) = A139853 (n + 1)

end A139853

/-! ## A139853.P1426640190581317247

`∩[A003632(n+1), A192717(n+1)]`
-/

namespace A139853.P1426640190581317247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139853.P1426640190581317247

namespace A139853

/-- `∩[A003632(n+1), A192717(n+1)]` -/
def P1426640190581317247.Spec : Prop :=
  ∀ n, (P1426640190581317247.a n : ℤ) = A139853 (n + 1)

end A139853

/-!
# A139854: Primes of the form 3x^2 + 40y^2.

The programs for A139854, the canonical program `A139854.P1258541534408213979` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139854 has offset 1).

The definition of A139854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139854.P205896086373680700

`p?[or(2, A107136(n+1))]`
-/

namespace A139854.P205896086373680700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A107136 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139854.P205896086373680700

namespace A139854

/-- `p?[or(2, A107136(n+1))]` -/
def P205896086373680700.Spec : Prop :=
  ∀ n, P205896086373680700.a n = A139854 (n + 1)

end A139854

/-! ## A139854.P15289852478526187014

`∩[A106865(n+1), A107136(n+1)]`
-/

namespace A139854.P15289852478526187014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P15289852478526187014

namespace A139854

/-- `∩[A106865(n+1), A107136(n+1)]` -/
def P15289852478526187014.Spec : Prop :=
  ∀ n, (P15289852478526187014.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P16645834639740771280

`∩[A107136(n+1), A122870(n+1)]`
-/

namespace A139854.P16645834639740771280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P16645834639740771280

namespace A139854

/-- `∩[A107136(n+1), A122870(n+1)]` -/
def P16645834639740771280.Spec : Prop :=
  ∀ n, (P16645834639740771280.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P1258541534408213979

`∩[A141170(n+1), A106865(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139854

/-- `∩[A141170(n+1), A106865(n+1)]` -/
def P1258541534408213979.Spec : Prop :=
  ∀ n, (P1258541534408213979.a n : ℤ) = A139854 (n + 1)

theorem P1258541534408213979.correct : P1258541534408213979.Spec := by
  intro n
  simp only [A139854, Nat.add_sub_cancel]

end A139854

/-! ## A139854.P5371358147925066190

`∩[A141373(n+1), A106865(n+1)]`
-/

namespace A139854.P5371358147925066190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P5371358147925066190

namespace A139854

/-- `∩[A141373(n+1), A106865(n+1)]` -/
def P5371358147925066190.Spec : Prop :=
  ∀ n, (P5371358147925066190.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P14814242644968067033

`∩[A007520(n+1), A106952(n+1)]`
-/

namespace A139854.P14814242644968067033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P14814242644968067033

namespace A139854

/-- `∩[A007520(n+1), A106952(n+1)]` -/
def P14814242644968067033.Spec : Prop :=
  ∀ n, (P14814242644968067033.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P14624060057724721759

`∩[A007520(n+1), A107136(n+1)]`
-/

namespace A139854.P14624060057724721759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P14624060057724721759

namespace A139854

/-- `∩[A007520(n+1), A107136(n+1)]` -/
def P14624060057724721759.Spec : Prop :=
  ∀ n, (P14624060057724721759.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P252682632747286198

`∩[A007520(n+1), A141304(n+1)]`
-/

namespace A139854.P252682632747286198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P252682632747286198

namespace A139854

/-- `∩[A007520(n+1), A141304(n+1)]` -/
def P252682632747286198.Spec : Prop :=
  ∀ n, (P252682632747286198.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P16776245454641754181

`∩[A045339(n+1), A106952(n+1)]`
-/

namespace A139854.P16776245454641754181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P16776245454641754181

namespace A139854

/-- `∩[A045339(n+1), A106952(n+1)]` -/
def P16776245454641754181.Spec : Prop :=
  ∀ n, (P16776245454641754181.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P8292735429595327694

`∩[A045339(n+1), A107136(n+1)]`
-/

namespace A139854.P8292735429595327694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P8292735429595327694

namespace A139854

/-- `∩[A045339(n+1), A107136(n+1)]` -/
def P8292735429595327694.Spec : Prop :=
  ∀ n, (P8292735429595327694.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P14459191069932771918

`∩[A045339(n+1), A141304(n+1)]`
-/

namespace A139854.P14459191069932771918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P14459191069932771918

namespace A139854

/-- `∩[A045339(n+1), A141304(n+1)]` -/
def P14459191069932771918.Spec : Prop :=
  ∀ n, (P14459191069932771918.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P5306605188887750529

`∩[A106952(n+1), A141373(n+1)]`
-/

namespace A139854.P5306605188887750529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P5306605188887750529

namespace A139854

/-- `∩[A106952(n+1), A141373(n+1)]` -/
def P5306605188887750529.Spec : Prop :=
  ∀ n, (P5306605188887750529.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P9627372718047846689

`∩[A106952(n+1), A332446(n+1)]`
-/

namespace A139854.P9627372718047846689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P9627372718047846689

namespace A139854

/-- `∩[A106952(n+1), A332446(n+1)]` -/
def P9627372718047846689.Spec : Prop :=
  ∀ n, (P9627372718047846689.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P8481002297722954407

`∩[A163183(n+1), A107136(n+1)]`
-/

namespace A139854.P8481002297722954407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P8481002297722954407

namespace A139854

/-- `∩[A163183(n+1), A107136(n+1)]` -/
def P8481002297722954407.Spec : Prop :=
  ∀ n, (P8481002297722954407.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P12749153108078779037

`∩[A095282(n+1), A107136(n+1)]`
-/

namespace A139854.P12749153108078779037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P12749153108078779037

namespace A139854

/-- `∩[A095282(n+1), A107136(n+1)]` -/
def P12749153108078779037.Spec : Prop :=
  ∀ n, (P12749153108078779037.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P14912756602760023927

`∩[A107136(n+1), A385225(n+1)]`
-/

namespace A139854.P14912756602760023927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P14912756602760023927

namespace A139854

/-- `∩[A107136(n+1), A385225(n+1)]` -/
def P14912756602760023927.Spec : Prop :=
  ∀ n, (P14912756602760023927.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P9504396897902004557

`∩[A141373(n+1), A385225(n+1)]`
-/

namespace A139854.P9504396897902004557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P9504396897902004557

namespace A139854

/-- `∩[A141373(n+1), A385225(n+1)]` -/
def P9504396897902004557.Spec : Prop :=
  ∀ n, (P9504396897902004557.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P16133033274767186325

`∩[A053027(n+1), A107136(n+1)]`
-/

namespace A139854.P16133033274767186325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P16133033274767186325

namespace A139854

/-- `∩[A053027(n+1), A107136(n+1)]` -/
def P16133033274767186325.Spec : Prop :=
  ∀ n, (P16133033274767186325.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P4776982687612958388

`∩[A053027(n+1), A141373(n+1)]`
-/

namespace A139854.P4776982687612958388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P4776982687612958388

namespace A139854

/-- `∩[A053027(n+1), A141373(n+1)]` -/
def P4776982687612958388.Spec : Prop :=
  ∀ n, (P4776982687612958388.a n : ℤ) = A139854 (n + 1)

end A139854

/-! ## A139854.P16973961604908706268

`∩[A106952(n+1), A192717(n+1)]`
-/

namespace A139854.P16973961604908706268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139854.P16973961604908706268

namespace A139854

/-- `∩[A106952(n+1), A192717(n+1)]` -/
def P16973961604908706268.Spec : Prop :=
  ∀ n, (P16973961604908706268.a n : ℤ) = A139854 (n + 1)

end A139854

/-!
# A139855: Primes of the form 4x^2+4xy+31y^2.

The programs for A139855, the canonical program `A139855.P8344561315536592991` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139855 has offset 1).

The definition of A139855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5014 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139855.P8344561315536592991

`∩[A033220(n+1), A107006(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A139855

/-- `∩[A033220(n+1), A107006(n+1)]` -/
def P8344561315536592991.Spec : Prop :=
  ∀ n, (P8344561315536592991.a n : ℤ) = A139855 (n + 1)

theorem P8344561315536592991.correct : P8344561315536592991.Spec := by
  intro n
  simp only [A139855, Nat.add_sub_cancel]

end A139855

/-! ## A139855.P12397667243424766533

`∩[A033220(n+1), A107168(n+1)]`
-/

namespace A139855.P12397667243424766533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P12397667243424766533

namespace A139855

/-- `∩[A033220(n+1), A107168(n+1)]` -/
def P12397667243424766533.Spec : Prop :=
  ∀ n, (P12397667243424766533.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P7547266276953017799

`p?[or(2, A033220(n+1))]`
-/

namespace A139855.P7547266276953017799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A033220 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139855.P7547266276953017799

namespace A139855

/-- `p?[or(2, A033220(n+1))]` -/
def P7547266276953017799.Spec : Prop :=
  ∀ n, P7547266276953017799.a n = A139855 (n + 1)

end A139855

/-! ## A139855.P636978357372630851

`p?[A227863(n+1)+30]`
-/

namespace A139855.P636978357372630851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139855.P636978357372630851

namespace A139855

/-- `p?[A227863(n+1)+30]` -/
def P636978357372630851.Spec : Prop :=
  ∀ n, P636978357372630851.a n = A139855 (n + 1)

end A139855

/-! ## A139855.P8819824796211158611

`∩[A107006(n+1), A141180(n+1)]`
-/

namespace A139855.P8819824796211158611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P8819824796211158611

namespace A139855

/-- `∩[A107006(n+1), A141180(n+1)]` -/
def P8819824796211158611.Spec : Prop :=
  ∀ n, (P8819824796211158611.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P10049553843311437366

`∩[A033199(n+1), A107168(n+1)]`
-/

namespace A139855.P10049553843311437366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P10049553843311437366

namespace A139855

/-- `∩[A033199(n+1), A107168(n+1)]` -/
def P10049553843311437366.Spec : Prop :=
  ∀ n, (P10049553843311437366.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P3311856573857546048

`∩[A033212(n+1), A107006(n+1)]`
-/

namespace A139855.P3311856573857546048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P3311856573857546048

namespace A139855

/-- `∩[A033212(n+1), A107006(n+1)]` -/
def P3311856573857546048.Spec : Prop :=
  ∀ n, (P3311856573857546048.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P3627663476047339229

`∩[A033220(n+1), A290402(n+1)]`
-/

namespace A139855.P3627663476047339229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P3627663476047339229

namespace A139855

/-- `∩[A033220(n+1), A290402(n+1)]` -/
def P3627663476047339229.Spec : Prop :=
  ∀ n, (P3627663476047339229.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P370598751406371322

`∩[A007522(n+1), A033212(n+1)]`
-/

namespace A139855.P370598751406371322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P370598751406371322

namespace A139855

/-- `∩[A007522(n+1), A033212(n+1)]` -/
def P370598751406371322.Spec : Prop :=
  ∀ n, (P370598751406371322.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P6178462570843248673

`∩[A007522(n+1), A033220(n+1)]`
-/

namespace A139855.P6178462570843248673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P6178462570843248673

namespace A139855

/-- `∩[A007522(n+1), A033220(n+1)]` -/
def P6178462570843248673.Spec : Prop :=
  ∀ n, (P6178462570843248673.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P4406054876667820849

`∩[A033212(n+1), A045382(n+1)]`
-/

namespace A139855.P4406054876667820849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P4406054876667820849

namespace A139855

/-- `∩[A033212(n+1), A045382(n+1)]` -/
def P4406054876667820849.Spec : Prop :=
  ∀ n, (P4406054876667820849.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P7417972849781466283

`∩[A033220(n+1), A045382(n+1)]`
-/

namespace A139855.P7417972849781466283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P7417972849781466283

namespace A139855

/-- `∩[A033220(n+1), A045382(n+1)]` -/
def P7417972849781466283.Spec : Prop :=
  ∀ n, (P7417972849781466283.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P7282769852009697817

`∩[A007522(n+1), A107168(n+1)]`
-/

namespace A139855.P7282769852009697817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P7282769852009697817

namespace A139855

/-- `∩[A007522(n+1), A107168(n+1)]` -/
def P7282769852009697817.Spec : Prop :=
  ∀ n, (P7282769852009697817.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P739731956110688067

`∩[A045382(n+1), A107168(n+1)]`
-/

namespace A139855.P739731956110688067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P739731956110688067

namespace A139855

/-- `∩[A045382(n+1), A107168(n+1)]` -/
def P739731956110688067.Spec : Prop :=
  ∀ n, (P739731956110688067.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P2466273276182072788

`∩[A033212(n+1), A094712(n+1)]`
-/

namespace A139855.P2466273276182072788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P2466273276182072788

namespace A139855

/-- `∩[A033212(n+1), A094712(n+1)]` -/
def P2466273276182072788.Spec : Prop :=
  ∀ n, (P2466273276182072788.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P3097270279721823328

`∩[A033220(n+1), A094712(n+1)]`
-/

namespace A139855.P3097270279721823328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P3097270279721823328

namespace A139855

/-- `∩[A033220(n+1), A094712(n+1)]` -/
def P3097270279721823328.Spec : Prop :=
  ∀ n, (P3097270279721823328.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P2038236694392700435

`∩[A033220(n+1), A068229(n+1)]`
-/

namespace A139855.P2038236694392700435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P2038236694392700435

namespace A139855

/-- `∩[A033220(n+1), A068229(n+1)]` -/
def P2038236694392700435.Spec : Prop :=
  ∀ n, (P2038236694392700435.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P8033013429726177753

`∩[A068229(n+1), A141180(n+1)]`
-/

namespace A139855.P8033013429726177753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P8033013429726177753

namespace A139855

/-- `∩[A068229(n+1), A141180(n+1)]` -/
def P8033013429726177753.Spec : Prop :=
  ∀ n, (P8033013429726177753.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P8659701348343751069

`∩[A033199(n+1), A122869(n+1)]`
-/

namespace A139855.P8659701348343751069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P8659701348343751069

namespace A139855

/-- `∩[A033199(n+1), A122869(n+1)]` -/
def P8659701348343751069.Spec : Prop :=
  ∀ n, (P8659701348343751069.a n : ℤ) = A139855 (n + 1)

end A139855

/-! ## A139855.P15432822019669890570

`∩[A033220(n+1), A122869(n+1)]`
-/

namespace A139855.P15432822019669890570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139855.P15432822019669890570

namespace A139855

/-- `∩[A033220(n+1), A122869(n+1)]` -/
def P15432822019669890570.Spec : Prop :=
  ∀ n, (P15432822019669890570.a n : ℤ) = A139855 (n + 1)

end A139855

/-!
# A139856: Primes of the form 5x^2 + 24y^2.

The programs for A139856, the canonical program `A139856.P14634130966757054836` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139856 has offset 1).

The definition of A139856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139856.P12079007874448405218

`∩[A107135(n+1), A107151(n+1)]`
-/

namespace A139856.P12079007874448405218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P12079007874448405218

namespace A139856

/-- `∩[A107135(n+1), A107151(n+1)]` -/
def P12079007874448405218.Spec : Prop :=
  ∀ n, (P12079007874448405218.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P13029055562187175633

`∩[A107003(n+1), A107135(n+1)]`
-/

namespace A139856.P13029055562187175633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P13029055562187175633

namespace A139856

/-- `∩[A107003(n+1), A107135(n+1)]` -/
def P13029055562187175633.Spec : Prop :=
  ∀ n, (P13029055562187175633.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P14924371555878006337

`∩[A107003(n+1), A107151(n+1)]`
-/

namespace A139856.P14924371555878006337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P14924371555878006337

namespace A139856

/-- `∩[A107003(n+1), A107151(n+1)]` -/
def P14924371555878006337.Spec : Prop :=
  ∀ n, (P14924371555878006337.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P11970347649099804830

`p?[or(4, A107135(n+1))]`
-/

namespace A139856.P11970347649099804830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A107135 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139856.P11970347649099804830

namespace A139856

/-- `p?[or(4, A107135(n+1))]` -/
def P11970347649099804830.Spec : Prop :=
  ∀ n, P11970347649099804830.a n = A139856 (n + 1)

end A139856

/-! ## A139856.P14634130966757054836

`p?[or(4, A107151(n+1))]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139856

/-- `p?[or(4, A107151(n+1))]` -/
def P14634130966757054836.Spec : Prop :=
  ∀ n, P14634130966757054836.a n = A139856 (n + 1)

theorem P14634130966757054836.correct : P14634130966757054836.Spec := by
  intro n
  simp only [A139856, Nat.add_sub_cancel]

end A139856

/-! ## A139856.P13276172808922074531

`∩[A033205(n+1), A107003(n+1)]`
-/

namespace A139856.P13276172808922074531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P13276172808922074531

namespace A139856

/-- `∩[A033205(n+1), A107003(n+1)]` -/
def P13276172808922074531.Spec : Prop :=
  ∀ n, (P13276172808922074531.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P15688407462928433433

`∩[A033205(n+1), A107135(n+1)]`
-/

namespace A139856.P15688407462928433433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P15688407462928433433

namespace A139856

/-- `∩[A033205(n+1), A107135(n+1)]` -/
def P15688407462928433433.Spec : Prop :=
  ∀ n, (P15688407462928433433.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P6773160735328859498

`∩[A040117(n+1), A107135(n+1)]`
-/

namespace A139856.P6773160735328859498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P6773160735328859498

namespace A139856

/-- `∩[A040117(n+1), A107135(n+1)]` -/
def P6773160735328859498.Spec : Prop :=
  ∀ n, (P6773160735328859498.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P16038602408860145512

`∩[A007521(n+1), A107135(n+1)]`
-/

namespace A139856.P16038602408860145512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P16038602408860145512

namespace A139856

/-- `∩[A007521(n+1), A107135(n+1)]` -/
def P16038602408860145512.Spec : Prop :=
  ∀ n, (P16038602408860145512.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P5944970041404493354

`∩[A007521(n+1), A107151(n+1)]`
-/

namespace A139856.P5944970041404493354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P5944970041404493354

namespace A139856

/-- `∩[A007521(n+1), A107151(n+1)]` -/
def P5944970041404493354.Spec : Prop :=
  ∀ n, (P5944970041404493354.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P14273409199767233090

`∩[A045366(n+1), A107135(n+1)]`
-/

namespace A139856.P14273409199767233090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P14273409199767233090

namespace A139856

/-- `∩[A045366(n+1), A107135(n+1)]` -/
def P14273409199767233090.Spec : Prop :=
  ∀ n, (P14273409199767233090.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P14721678576922319836

`∩[A045366(n+1), A107151(n+1)]`
-/

namespace A139856.P14721678576922319836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P14721678576922319836

namespace A139856

/-- `∩[A045366(n+1), A107151(n+1)]` -/
def P14721678576922319836.Spec : Prop :=
  ∀ n, (P14721678576922319836.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P8309609175166997606

`∩[A033205(n+1), A084865(n+1)]`
-/

namespace A139856.P8309609175166997606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P8309609175166997606

namespace A139856

/-- `∩[A033205(n+1), A084865(n+1)]` -/
def P8309609175166997606.Spec : Prop :=
  ∀ n, (P8309609175166997606.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P3573076846748944823

`∩[A084865(n+1), A107151(n+1)]`
-/

namespace A139856.P3573076846748944823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P3573076846748944823

namespace A139856

/-- `∩[A084865(n+1), A107151(n+1)]` -/
def P3573076846748944823.Spec : Prop :=
  ∀ n, (P3573076846748944823.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P12071925041814719993

`∩[A033205(n+1), A141171(n+1)]`
-/

namespace A139856.P12071925041814719993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P12071925041814719993

namespace A139856

/-- `∩[A033205(n+1), A141171(n+1)]` -/
def P12071925041814719993.Spec : Prop :=
  ∀ n, (P12071925041814719993.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P4761850058493883229

`∩[A084865(n+1), A091729(n+1)]`
-/

namespace A139856.P4761850058493883229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P4761850058493883229

namespace A139856

/-- `∩[A084865(n+1), A091729(n+1)]` -/
def P4761850058493883229.Spec : Prop :=
  ∀ n, (P4761850058493883229.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P285864996713008939

`∩[A091729(n+1), A107003(n+1)]`
-/

namespace A139856.P285864996713008939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P285864996713008939

namespace A139856

/-- `∩[A091729(n+1), A107003(n+1)]` -/
def P285864996713008939.Spec : Prop :=
  ∀ n, (P285864996713008939.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P310145317817613875

`∩[A091729(n+1), A107135(n+1)]`
-/

namespace A139856.P310145317817613875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P310145317817613875

namespace A139856

/-- `∩[A091729(n+1), A107135(n+1)]` -/
def P310145317817613875.Spec : Prop :=
  ∀ n, (P310145317817613875.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P10943398166424428606

`∩[A091729(n+1), A141171(n+1)]`
-/

namespace A139856.P10943398166424428606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P10943398166424428606

namespace A139856

/-- `∩[A091729(n+1), A141171(n+1)]` -/
def P10943398166424428606.Spec : Prop :=
  ∀ n, (P10943398166424428606.a n : ℤ) = A139856 (n + 1)

end A139856

/-! ## A139856.P11783773460546146799

`∩[A107135(n+1), A141171(n+1)]`
-/

namespace A139856.P11783773460546146799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139856.P11783773460546146799

namespace A139856

/-- `∩[A107135(n+1), A141171(n+1)]` -/
def P11783773460546146799.Spec : Prop :=
  ∀ n, (P11783773460546146799.a n : ℤ) = A139856 (n + 1)

end A139856

/-!
# A139857: Primes of the form 8x^2 + 15y^2.

The programs for A139857, the canonical program `A139857.P15412644130510987931` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139857 has offset 1).

The definition of A139857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139857.P15412644130510987931

`p?[or(4, A107137(n+1))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139857

/-- `p?[or(4, A107137(n+1))]` -/
def P15412644130510987931.Spec : Prop :=
  ∀ n, P15412644130510987931.a n = A139857 (n + 1)

theorem P15412644130510987931.correct : P15412644130510987931.Spec := by
  intro n
  simp only [A139857, Nat.add_sub_cancel]

end A139857

/-! ## A139857.P5100020868446417946

`p?[or(4, A139831(n+1))]`
-/

namespace A139857.P5100020868446417946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A139831 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139857.P5100020868446417946

namespace A139857

/-- `p?[or(4, A139831(n+1))]` -/
def P5100020868446417946.Spec : Prop :=
  ∀ n, P5100020868446417946.a n = A139857 (n + 1)

end A139857

/-! ## A139857.P11606500275921322643

`∩[A007522(n+1), A106859(n+1)]`
-/

namespace A139857.P11606500275921322643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P11606500275921322643

namespace A139857

/-- `∩[A007522(n+1), A106859(n+1)]` -/
def P11606500275921322643.Spec : Prop :=
  ∀ n, (P11606500275921322643.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P18079659029824768001

`∩[A007522(n+1), A107137(n+1)]`
-/

namespace A139857.P18079659029824768001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P18079659029824768001

namespace A139857

/-- `∩[A007522(n+1), A107137(n+1)]` -/
def P18079659029824768001.Spec : Prop :=
  ∀ n, (P18079659029824768001.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P2570041218687155127

`∩[A007522(n+1), A107169(n+1)]`
-/

namespace A139857.P2570041218687155127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P2570041218687155127

namespace A139857

/-- `∩[A007522(n+1), A107169(n+1)]` -/
def P2570041218687155127.Spec : Prop :=
  ∀ n, (P2570041218687155127.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P12247117401958954583

`∩[A007522(n+1), A139831(n+1)]`
-/

namespace A139857.P12247117401958954583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P12247117401958954583

namespace A139857

/-- `∩[A007522(n+1), A139831(n+1)]` -/
def P12247117401958954583.Spec : Prop :=
  ∀ n, (P12247117401958954583.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P8659871766915760307

`∩[A045382(n+1), A107169(n+1)]`
-/

namespace A139857.P8659871766915760307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P8659871766915760307

namespace A139857

/-- `∩[A045382(n+1), A107169(n+1)]` -/
def P8659871766915760307.Spec : Prop :=
  ∀ n, (P8659871766915760307.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P9993406219639156059

`∩[A106865(n+1), A130063(n+1)]`
-/

namespace A139857.P9993406219639156059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P9993406219639156059

namespace A139857

/-- `∩[A106865(n+1), A130063(n+1)]` -/
def P9993406219639156059.Spec : Prop :=
  ∀ n, (P9993406219639156059.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P3890055049397306006

`∩[A068231(n+1), A106889(n+1)]`
-/

namespace A139857.P3890055049397306006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P3890055049397306006

namespace A139857

/-- `∩[A068231(n+1), A106889(n+1)]` -/
def P3890055049397306006.Spec : Prop :=
  ∀ n, (P3890055049397306006.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P17124637051125060151

`p?[or(2, A025022(n+1))]`
-/

namespace A139857.P17124637051125060151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A025022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139857.P17124637051125060151

namespace A139857

/-- `p?[or(2, A025022(n+1))]` -/
def P17124637051125060151.Spec : Prop :=
  ∀ n, P17124637051125060151.a n = A139857 (n + 1)

end A139857

/-! ## A139857.P8453367397477625413

`∩[A007522(n+1), A025022(n+1)]`
-/

namespace A139857.P8453367397477625413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P8453367397477625413

namespace A139857

/-- `∩[A007522(n+1), A025022(n+1)]` -/
def P8453367397477625413.Spec : Prop :=
  ∀ n, (P8453367397477625413.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P9253001631007021686

`∩[A025022(n+1), A045382(n+1)]`
-/

namespace A139857.P9253001631007021686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P9253001631007021686

namespace A139857

/-- `∩[A025022(n+1), A045382(n+1)]` -/
def P9253001631007021686.Spec : Prop :=
  ∀ n, (P9253001631007021686.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P14784462543276946228

`∩[A025022(n+1), A068231(n+1)]`
-/

namespace A139857.P14784462543276946228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P14784462543276946228

namespace A139857

/-- `∩[A025022(n+1), A068231(n+1)]` -/
def P14784462543276946228.Spec : Prop :=
  ∀ n, (P14784462543276946228.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P17736505058533089566

`∩[A025022(n+1), A094712(n+1)]`
-/

namespace A139857.P17736505058533089566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P17736505058533089566

namespace A139857

/-- `∩[A025022(n+1), A094712(n+1)]` -/
def P17736505058533089566.Spec : Prop :=
  ∀ n, (P17736505058533089566.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P3800569242829474696

`∩[A025022(n+1), A106859(n+1)]`
-/

namespace A139857.P3800569242829474696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P3800569242829474696

namespace A139857

/-- `∩[A025022(n+1), A106859(n+1)]` -/
def P3800569242829474696.Spec : Prop :=
  ∀ n, (P3800569242829474696.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P3373988681682551055

`∩[A025022(n+1), A106865(n+1)]`
-/

namespace A139857.P3373988681682551055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P3373988681682551055

namespace A139857

/-- `∩[A025022(n+1), A106865(n+1)]` -/
def P3373988681682551055.Spec : Prop :=
  ∀ n, (P3373988681682551055.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P8372997889382147551

`∩[A025022(n+1), A106889(n+1)]`
-/

namespace A139857.P8372997889382147551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P8372997889382147551

namespace A139857

/-- `∩[A025022(n+1), A106889(n+1)]` -/
def P8372997889382147551.Spec : Prop :=
  ∀ n, (P8372997889382147551.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P1396702488919204272

`∩[A025022(n+1), A107137(n+1)]`
-/

namespace A139857.P1396702488919204272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P1396702488919204272

namespace A139857

/-- `∩[A025022(n+1), A107137(n+1)]` -/
def P1396702488919204272.Spec : Prop :=
  ∀ n, (P1396702488919204272.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P8626216221032807273

`∩[A025022(n+1), A107169(n+1)]`
-/

namespace A139857.P8626216221032807273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P8626216221032807273

namespace A139857

/-- `∩[A025022(n+1), A107169(n+1)]` -/
def P8626216221032807273.Spec : Prop :=
  ∀ n, (P8626216221032807273.a n : ℤ) = A139857 (n + 1)

end A139857

/-! ## A139857.P2570279056270352803

`∩[A025022(n+1), A122870(n+1)]`
-/

namespace A139857.P2570279056270352803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139857.P2570279056270352803

namespace A139857

/-- `∩[A025022(n+1), A122870(n+1)]` -/
def P2570279056270352803.Spec : Prop :=
  ∀ n, (P2570279056270352803.a n : ℤ) = A139857 (n + 1)

end A139857

/-!
# A139858: Primes of the form 8x^2+8xy+17y^2.

The programs for A139858, the canonical program `A139858.P3447086168202137661` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139858 has offset 1).

The definition of A139858 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139858.P3447086168202137661

`∩[A107137(n+1), A107181(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A139858

/-- `∩[A107137(n+1), A107181(n+1)]` -/
def P3447086168202137661.Spec : Prop :=
  ∀ n, (P3447086168202137661.a n : ℤ) = A139858 (n + 1)

theorem P3447086168202137661.correct : P3447086168202137661.Spec := by
  intro n
  simp only [A139858, Nat.add_sub_cancel]

end A139858

/-! ## A139858.P9585356860606540112

`∩[A107137(n+1), A107167(n+1)]`
-/

namespace A139858.P9585356860606540112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P9585356860606540112

namespace A139858

/-- `∩[A107137(n+1), A107167(n+1)]` -/
def P9585356860606540112.Spec : Prop :=
  ∀ n, (P9585356860606540112.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P8559735167331979382

`∩[A107167(n+1), A107181(n+1)]`
-/

namespace A139858.P8559735167331979382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P8559735167331979382

namespace A139858

/-- `∩[A107167(n+1), A107181(n+1)]` -/
def P8559735167331979382.Spec : Prop :=
  ∀ n, (P8559735167331979382.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P3678858823968478622

`∩[A107181(n+1), A141303(n+1)]`
-/

namespace A139858.P3678858823968478622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P3678858823968478622

namespace A139858

/-- `∩[A107181(n+1), A141303(n+1)]` -/
def P3678858823968478622.Spec : Prop :=
  ∀ n, (P3678858823968478622.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P8709536271846340068

`p?[and(-3, A107137(n+1))]`
-/

namespace A139858.P8709536271846340068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A107137 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139858.P8709536271846340068

namespace A139858

/-- `p?[and(-3, A107137(n+1))]` -/
def P8709536271846340068.Spec : Prop :=
  ∀ n, P8709536271846340068.a n = A139858 (n + 1)

end A139858

/-! ## A139858.P10293199866230169530

`∩[A007519(n+1), A107137(n+1)]`
-/

namespace A139858.P10293199866230169530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P10293199866230169530

namespace A139858

/-- `∩[A007519(n+1), A107137(n+1)]` -/
def P10293199866230169530.Spec : Prop :=
  ∀ n, (P10293199866230169530.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P2284150382925147113

`∩[A007519(n+1), A107167(n+1)]`
-/

namespace A139858.P2284150382925147113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P2284150382925147113

namespace A139858

/-- `∩[A007519(n+1), A107167(n+1)]` -/
def P2284150382925147113.Spec : Prop :=
  ∀ n, (P2284150382925147113.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P4191249075949139811

`∩[A007519(n+1), A141303(n+1)]`
-/

namespace A139858.P4191249075949139811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P4191249075949139811

namespace A139858

/-- `∩[A007519(n+1), A141303(n+1)]` -/
def P4191249075949139811.Spec : Prop :=
  ∀ n, (P4191249075949139811.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P9947310420684127953

`∩[A045390(n+1), A107167(n+1)]`
-/

namespace A139858.P9947310420684127953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P9947310420684127953

namespace A139858

/-- `∩[A045390(n+1), A107167(n+1)]` -/
def P9947310420684127953.Spec : Prop :=
  ∀ n, (P9947310420684127953.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P1213727399801819068

`∩[A107137(n+1), A209544(n+1)]`
-/

namespace A139858.P1213727399801819068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P1213727399801819068

namespace A139858

/-- `∩[A107137(n+1), A209544(n+1)]` -/
def P1213727399801819068.Spec : Prop :=
  ∀ n, (P1213727399801819068.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P12075791277371147289

`∩[A007519(n+1), A106859(n+1)]`
-/

namespace A139858.P12075791277371147289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P12075791277371147289

namespace A139858

/-- `∩[A007519(n+1), A106859(n+1)]` -/
def P12075791277371147289.Spec : Prop :=
  ∀ n, (P12075791277371147289.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P3801851772437380641

`∩[A106859(n+1), A107181(n+1)]`
-/

namespace A139858.P3801851772437380641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P3801851772437380641

namespace A139858

/-- `∩[A106859(n+1), A107181(n+1)]` -/
def P3801851772437380641.Spec : Prop :=
  ∀ n, (P3801851772437380641.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P11789295403137815857

`∩[A106859(n+1), A290402(n+1)]`
-/

namespace A139858.P11789295403137815857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P11789295403137815857

namespace A139858

/-- `∩[A106859(n+1), A290402(n+1)]` -/
def P11789295403137815857.Spec : Prop :=
  ∀ n, (P11789295403137815857.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P14433917367219106288

`∩[A040117(n+1), A107137(n+1)]`
-/

namespace A139858.P14433917367219106288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P14433917367219106288

namespace A139858

/-- `∩[A040117(n+1), A107137(n+1)]` -/
def P14433917367219106288.Spec : Prop :=
  ∀ n, (P14433917367219106288.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P10211968572291460586

`∩[A107181(n+1), A122487(n+1)]`
-/

namespace A139858.P10211968572291460586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P10211968572291460586

namespace A139858

/-- `∩[A107181(n+1), A122487(n+1)]` -/
def P10211968572291460586.Spec : Prop :=
  ∀ n, (P10211968572291460586.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P16293981065441659904

`∩[A106949(n+1), A107167(n+1)]`
-/

namespace A139858.P16293981065441659904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P16293981065441659904

namespace A139858

/-- `∩[A106949(n+1), A107167(n+1)]` -/
def P16293981065441659904.Spec : Prop :=
  ∀ n, (P16293981065441659904.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P18266802941192118581

`∩[A107167(n+1), A256397(n+1)]`
-/

namespace A139858.P18266802941192118581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P18266802941192118581

namespace A139858

/-- `∩[A107167(n+1), A256397(n+1)]` -/
def P18266802941192118581.Spec : Prop :=
  ∀ n, (P18266802941192118581.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P2178833010260875717

`∩[A141303(n+1), A256397(n+1)]`
-/

namespace A139858.P2178833010260875717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P2178833010260875717

namespace A139858

/-- `∩[A141303(n+1), A256397(n+1)]` -/
def P2178833010260875717.Spec : Prop :=
  ∀ n, (P2178833010260875717.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P15008062029402414693

`∩[A004625(n+1), A106859(n+1)]`
-/

namespace A139858.P15008062029402414693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P15008062029402414693

namespace A139858

/-- `∩[A004625(n+1), A106859(n+1)]` -/
def P15008062029402414693.Spec : Prop :=
  ∀ n, (P15008062029402414693.a n : ℤ) = A139858 (n + 1)

end A139858

/-! ## A139858.P7972161850815630390

`∩[A004625(n+1), A107137(n+1)]`
-/

namespace A139858.P7972161850815630390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139858.P7972161850815630390

namespace A139858

/-- `∩[A004625(n+1), A107137(n+1)]` -/
def P7972161850815630390.Spec : Prop :=
  ∀ n, (P7972161850815630390.a n : ℤ) = A139858 (n + 1)

end A139858

/-!
# A139859: Primes of the form 11x^2+2xy+11y^2.

The programs for A139859, the canonical program `A139859.P14800139496592021057` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139859 has offset 1).

The definition of A139859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3069 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139859.P1933296494422941231

`∩[A107135(n+1), A139829(n+1)]`
-/

namespace A139859.P1933296494422941231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P1933296494422941231

namespace A139859

/-- `∩[A107135(n+1), A139829(n+1)]` -/
def P1933296494422941231.Spec : Prop :=
  ∀ n, (P1933296494422941231.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P14800139496592021057

`p?[A227863(n+1)+10]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139859

/-- `p?[A227863(n+1)+10]` -/
def P14800139496592021057.Spec : Prop :=
  ∀ n, P14800139496592021057.a n = A139859 (n + 1)

theorem P14800139496592021057.correct : P14800139496592021057.Spec := by
  intro n
  simp only [A139859, Nat.add_sub_cancel]

end A139859

/-! ## A139859.P2435899886061011123

`∩[A033201(n+1), A107007(n+1)]`
-/

namespace A139859.P2435899886061011123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P2435899886061011123

namespace A139859

/-- `∩[A033201(n+1), A107007(n+1)]` -/
def P2435899886061011123.Spec : Prop :=
  ∀ n, (P2435899886061011123.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P3492855774793276519

`∩[A033201(n+1), A107135(n+1)]`
-/

namespace A139859.P3492855774793276519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P3492855774793276519

namespace A139859

/-- `∩[A033201(n+1), A107135(n+1)]` -/
def P3492855774793276519.Spec : Prop :=
  ∀ n, (P3492855774793276519.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P18251281037251681850

`∩[A168539(n+1), A033201(n+1)]`
-/

namespace A139859.P18251281037251681850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P18251281037251681850

namespace A139859

/-- `∩[A168539(n+1), A033201(n+1)]` -/
def P18251281037251681850.Spec : Prop :=
  ∀ n, (P18251281037251681850.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P908760802754077873

`∩[A033201(n+1), A084865(n+1)]`
-/

namespace A139859.P908760802754077873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P908760802754077873

namespace A139859

/-- `∩[A033201(n+1), A084865(n+1)]` -/
def P908760802754077873.Spec : Prop :=
  ∀ n, (P908760802754077873.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P4749174924374268699

`∩[A033201(n+1), A068231(n+1)]`
-/

namespace A139859.P4749174924374268699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P4749174924374268699

namespace A139859

/-- `∩[A033201(n+1), A068231(n+1)]` -/
def P4749174924374268699.Spec : Prop :=
  ∀ n, (P4749174924374268699.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P3344358323521237759

`∩[A033201(n+1), A141187(n+1)]`
-/

namespace A139859.P3344358323521237759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P3344358323521237759

namespace A139859

/-- `∩[A033201(n+1), A141187(n+1)]` -/
def P3344358323521237759.Spec : Prop :=
  ∀ n, (P3344358323521237759.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P14024030298602687367

`∩[A033201(n+1), A141123(n+1)]`
-/

namespace A139859.P14024030298602687367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P14024030298602687367

namespace A139859

/-- `∩[A033201(n+1), A141123(n+1)]` -/
def P14024030298602687367.Spec : Prop :=
  ∀ n, (P14024030298602687367.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P2805648531424758626

`∩[A007520(n+1), A107135(n+1)]`
-/

namespace A139859.P2805648531424758626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P2805648531424758626

namespace A139859

/-- `∩[A007520(n+1), A107135(n+1)]` -/
def P2805648531424758626.Spec : Prop :=
  ∀ n, (P2805648531424758626.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P12375601837607213163

`∩[A007520(n+1), A141302(n+1)]`
-/

namespace A139859.P12375601837607213163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P12375601837607213163

namespace A139859

/-- `∩[A007520(n+1), A141302(n+1)]` -/
def P12375601837607213163.Spec : Prop :=
  ∀ n, (P12375601837607213163.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P13475002115695936901

`∩[A045339(n+1), A107135(n+1)]`
-/

namespace A139859.P13475002115695936901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P13475002115695936901

namespace A139859

/-- `∩[A045339(n+1), A107135(n+1)]` -/
def P13475002115695936901.Spec : Prop :=
  ∀ n, (P13475002115695936901.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P14684698630154845217

`∩[A007520(n+1), A141785(n+1)]`
-/

namespace A139859.P14684698630154845217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P14684698630154845217

namespace A139859

/-- `∩[A007520(n+1), A141785(n+1)]` -/
def P14684698630154845217.Spec : Prop :=
  ∀ n, (P14684698630154845217.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P10762930588191517347

`∩[A053032(n+1), A107007(n+1)]`
-/

namespace A139859.P10762930588191517347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P10762930588191517347

namespace A139859

/-- `∩[A053032(n+1), A107007(n+1)]` -/
def P10762930588191517347.Spec : Prop :=
  ∀ n, (P10762930588191517347.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P10664921864302582859

`∩[A053032(n+1), A168539(n+1)]`
-/

namespace A139859.P10664921864302582859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P10664921864302582859

namespace A139859

/-- `∩[A053032(n+1), A168539(n+1)]` -/
def P10664921864302582859.Spec : Prop :=
  ∀ n, (P10664921864302582859.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P16426467065748037915

`∩[A095282(n+1), A107135(n+1)]`
-/

namespace A139859.P16426467065748037915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P16426467065748037915

namespace A139859

/-- `∩[A095282(n+1), A107135(n+1)]` -/
def P16426467065748037915.Spec : Prop :=
  ∀ n, (P16426467065748037915.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P16454304933211810982

`∩[A107135(n+1), A192717(n+1)]`
-/

namespace A139859.P16454304933211810982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P16454304933211810982

namespace A139859

/-- `∩[A107135(n+1), A192717(n+1)]` -/
def P16454304933211810982.Spec : Prop :=
  ∀ n, (P16454304933211810982.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P15449808677264717416

`∩[A141302(n+1), A192717(n+1)]`
-/

namespace A139859.P15449808677264717416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P15449808677264717416

namespace A139859

/-- `∩[A141302(n+1), A192717(n+1)]` -/
def P15449808677264717416.Spec : Prop :=
  ∀ n, (P15449808677264717416.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P3083072490305562120

`∩[A141785(n+1), A192717(n+1)]`
-/

namespace A139859.P3083072490305562120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P3083072490305562120

namespace A139859

/-- `∩[A141785(n+1), A192717(n+1)]` -/
def P3083072490305562120.Spec : Prop :=
  ∀ n, (P3083072490305562120.a n : ℤ) = A139859 (n + 1)

end A139859

/-! ## A139859.P10215445922483113544

`∩[A033201(n+1), A332516(n+1)]`
-/

namespace A139859.P10215445922483113544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139859.P10215445922483113544

namespace A139859

/-- `∩[A033201(n+1), A332516(n+1)]` -/
def P10215445922483113544.Spec : Prop :=
  ∀ n, (P10215445922483113544.a n : ℤ) = A139859 (n + 1)

end A139859

/-!
# A139860: Primes of the form 12x^2+12xy+13y^2.

The programs for A139860, the canonical program `A139860.P2130023366757760233` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139860 has offset 1).

The definition of A139860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139860.P17754276000614402877

`∩[A107136(n+1), A139530(n+1)]`
-/

namespace A139860.P17754276000614402877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P17754276000614402877

namespace A139860

/-- `∩[A107136(n+1), A139530(n+1)]` -/
def P17754276000614402877.Spec : Prop :=
  ∀ n, (P17754276000614402877.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P6177166391540577234

`∩[A107136(n+1), A107144(n+1)]`
-/

namespace A139860.P6177166391540577234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P6177166391540577234

namespace A139860

/-- `∩[A107136(n+1), A107144(n+1)]` -/
def P6177166391540577234.Spec : Prop :=
  ∀ n, (P6177166391540577234.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P2130023366757760233

`∩[A107144(n+1), A139530(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139860

/-- `∩[A107144(n+1), A139530(n+1)]` -/
def P2130023366757760233.Spec : Prop :=
  ∀ n, (P2130023366757760233.a n : ℤ) = A139860 (n + 1)

theorem P2130023366757760233.correct : P2130023366757760233.Spec := by
  intro n
  simp only [A139860, Nat.add_sub_cancel]

end A139860

/-! ## A139860.P13312727289659163429

`∩[A068228(n+1), A107136(n+1)]`
-/

namespace A139860.P13312727289659163429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P13312727289659163429

namespace A139860

/-- `∩[A068228(n+1), A107136(n+1)]` -/
def P13312727289659163429.Spec : Prop :=
  ∀ n, (P13312727289659163429.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P5623799997824857454

`∩[A068228(n+1), A107144(n+1)]`
-/

namespace A139860.P5623799997824857454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P5623799997824857454

namespace A139860

/-- `∩[A068228(n+1), A107144(n+1)]` -/
def P5623799997824857454.Spec : Prop :=
  ∀ n, (P5623799997824857454.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P12229656168333009842

`∩[A068228(n+1), A141179(n+1)]`
-/

namespace A139860.P12229656168333009842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P12229656168333009842

namespace A139860

/-- `∩[A068228(n+1), A141179(n+1)]` -/
def P12229656168333009842.Spec : Prop :=
  ∀ n, (P12229656168333009842.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P15757044702077679361

`∩[A139530(n+1), A141179(n+1)]`
-/

namespace A139860.P15757044702077679361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P15757044702077679361

namespace A139860

/-- `∩[A139530(n+1), A141179(n+1)]` -/
def P15757044702077679361.Spec : Prop :=
  ∀ n, (P15757044702077679361.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P18425717074940854648

`∩[A107136(n+1), A122487(n+1)]`
-/

namespace A139860.P18425717074940854648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P18425717074940854648

namespace A139860

/-- `∩[A107136(n+1), A122487(n+1)]` -/
def P18425717074940854648.Spec : Prop :=
  ∀ n, (P18425717074940854648.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P14413385053425283583

`∩[A122487(n+1), A139530(n+1)]`
-/

namespace A139860.P14413385053425283583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P14413385053425283583

namespace A139860

/-- `∩[A122487(n+1), A139530(n+1)]` -/
def P14413385053425283583.Spec : Prop :=
  ∀ n, (P14413385053425283583.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P16067054686489023762

`∩[A007521(n+1), A107136(n+1)]`
-/

namespace A139860.P16067054686489023762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P16067054686489023762

namespace A139860

/-- `∩[A007521(n+1), A107136(n+1)]` -/
def P16067054686489023762.Spec : Prop :=
  ∀ n, (P16067054686489023762.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P14276706777564094574

`∩[A045366(n+1), A107136(n+1)]`
-/

namespace A139860.P14276706777564094574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P14276706777564094574

namespace A139860

/-- `∩[A045366(n+1), A107136(n+1)]` -/
def P14276706777564094574.Spec : Prop :=
  ∀ n, (P14276706777564094574.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P9667605267022570674

`∩[A007521(n+1), A106952(n+1)]`
-/

namespace A139860.P9667605267022570674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P9667605267022570674

namespace A139860

/-- `∩[A007521(n+1), A106952(n+1)]` -/
def P9667605267022570674.Spec : Prop :=
  ∀ n, (P9667605267022570674.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P13181521390117053690

`∩[A045366(n+1), A106952(n+1)]`
-/

namespace A139860.P13181521390117053690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P13181521390117053690

namespace A139860

/-- `∩[A045366(n+1), A106952(n+1)]` -/
def P13181521390117053690.Spec : Prop :=
  ∀ n, (P13181521390117053690.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P12645756904061119435

`∩[A106952(n+1), A107144(n+1)]`
-/

namespace A139860.P12645756904061119435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P12645756904061119435

namespace A139860

/-- `∩[A106952(n+1), A107144(n+1)]` -/
def P12645756904061119435.Spec : Prop :=
  ∀ n, (P12645756904061119435.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P301812817799373349

`∩[A106952(n+1), A139530(n+1)]`
-/

namespace A139860.P301812817799373349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P301812817799373349

namespace A139860

/-- `∩[A106952(n+1), A139530(n+1)]` -/
def P301812817799373349.Spec : Prop :=
  ∀ n, (P301812817799373349.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P10913234207052474621

`∩[A068228(n+1), A106889(n+1)]`
-/

namespace A139860.P10913234207052474621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P10913234207052474621

namespace A139860

/-- `∩[A068228(n+1), A106889(n+1)]` -/
def P10913234207052474621.Spec : Prop :=
  ∀ n, (P10913234207052474621.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P12038720070449641943

`∩[A106889(n+1), A107136(n+1)]`
-/

namespace A139860.P12038720070449641943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P12038720070449641943

namespace A139860

/-- `∩[A106889(n+1), A107136(n+1)]` -/
def P12038720070449641943.Spec : Prop :=
  ∀ n, (P12038720070449641943.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P1930507420229801311

`∩[A106889(n+1), A139530(n+1)]`
-/

namespace A139860.P1930507420229801311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P1930507420229801311

namespace A139860

/-- `∩[A106889(n+1), A139530(n+1)]` -/
def P1930507420229801311.Spec : Prop :=
  ∀ n, (P1930507420229801311.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P15009288619077520972

`∩[A106889(n+1), A351537(n+1)]`
-/

namespace A139860.P15009288619077520972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P15009288619077520972

namespace A139860

/-- `∩[A106889(n+1), A351537(n+1)]` -/
def P15009288619077520972.Spec : Prop :=
  ∀ n, (P15009288619077520972.a n : ℤ) = A139860 (n + 1)

end A139860

/-! ## A139860.P6092913509349378080

`∩[A107144(n+1), A351537(n+1)]`
-/

namespace A139860.P6092913509349378080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139860.P6092913509349378080

namespace A139860

/-- `∩[A107144(n+1), A351537(n+1)]` -/
def P6092913509349378080.Spec : Prop :=
  ∀ n, (P6092913509349378080.a n : ℤ) = A139860 (n + 1)

end A139860

/-!
# A139861: Primes of the form 2x^2 + 65y^2.

The programs for A139861, there is no canonical definition to state claims against.
-/

/-! ## A139861.P7833011483904810070

`record[A141112(n+1)%or(4, A141112(n+1))]`
-/

namespace A139861.P7833011483904810070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141112 (n + 1)) (Int.lor 4 (A141112 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139861.P7833011483904810070

/-! ## A139861.P24426410161247567

`∩[A051074(n+1), A141112(n+1)]`
-/

namespace A139861.P24426410161247567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P24426410161247567

/-! ## A139861.P3920840222680873519

`∩[A033203(n+1), A141112(n+1)]`
-/

namespace A139861.P3920840222680873519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P3920840222680873519

/-! ## A139861.P16507357645447400372

`∩[A141112(n+1), A341784(n+1)]`
-/

namespace A139861.P16507357645447400372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P16507357645447400372

/-! ## A139861.P9778357517465524664

`∩[A051082(n+1), A141112(n+1)]`
-/

namespace A139861.P9778357517465524664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P9778357517465524664

/-! ## A139861.P3371879815338548441

`∩[A051094(n+1), A141112(n+1)]`
-/

namespace A139861.P3371879815338548441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P3371879815338548441

/-! ## A139861.P3064463990331987546

`∩[A034031(n+1), A141112(n+1)]`
-/

namespace A139861.P3064463990331987546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P3064463990331987546

/-! ## A139861.P1026655220379011937

`∩[A057127(n+1), A141112(n+1)]`
-/

namespace A139861.P1026655220379011937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P1026655220379011937

/-! ## A139861.P2747136744779641415

`∩[A034034(n+1), A141112(n+1)]`
-/

namespace A139861.P2747136744779641415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P2747136744779641415

/-! ## A139861.P9550052052080031041

`∩[A002479(n+1), A141112(n+1)]`
-/

namespace A139861.P9550052052080031041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P9550052052080031041

/-! ## A139861.P9363386515085125832

`∩[A047475(n+1), A141112(n+1)]`
-/

namespace A139861.P9363386515085125832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P9363386515085125832

/-! ## A139861.P237637112999599491

`∩[A047404(n+1), A141112(n+1)]`
-/

namespace A139861.P237637112999599491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P237637112999599491

/-! ## A139861.P7344210838513916951

`∩[A047454(n+1), A141112(n+1)]`
-/

namespace A139861.P7344210838513916951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P7344210838513916951

/-! ## A139861.P10797892929400712187

`∩[A047476(n+1), A141112(n+1)]`
-/

namespace A139861.P10797892929400712187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P10797892929400712187

/-! ## A139861.P14252711722698201994

`filter[A141112(n+1), A342892(#)]`
-/

namespace A139861.P14252711722698201994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A139861.P14252711722698201994

/-! ## A139861.P15798515531402315624

`∩[A047405(n+1), A141112(n+1)]`
-/

namespace A139861.P15798515531402315624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P15798515531402315624

/-! ## A139861.P454470887876354591

`∩[A047419(n+1), A141112(n+1)]`
-/

namespace A139861.P454470887876354591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P454470887876354591

/-! ## A139861.P11033981274138759187

`∩[A047453(n+1), A141112(n+1)]`
-/

namespace A139861.P11033981274138759187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P11033981274138759187

/-! ## A139861.P12917696306387943456

`∩[A047420(n+1), A141112(n+1)]`
-/

namespace A139861.P12917696306387943456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139861.P12917696306387943456

/-! ## A139861.P16148646229933634672

`filter[A141112(n+1), A131078(#)]`
-/

namespace A139861.P16148646229933634672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A139861.P16148646229933634672

/-!
# A139862: Primes of the form 5x^2 + 26y^2.

The programs for A139862, there is no canonical definition to state claims against.
-/

/-! ## A139862.P4611443740544332456

`∪[A139971(n+1), A139975(n+1)]`
-/

namespace A139862.P4611443740544332456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139862.P4611443740544332456

/-!
# A139863: Primes of the form 10x^2 + 13y^2.

The programs for A139863, there is no canonical definition to state claims against.
-/

/-! ## A139863.P17538526556415878145

`∪[A139974(n+1), A139976(n+1)]`
-/

namespace A139863.P17538526556415878145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139863.P17538526556415878145

/-! ## A139863.P17710665281096309847

`∩[A038883(n+1), A106889(n+1)]`
-/

namespace A139863.P17710665281096309847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139863.P17710665281096309847

/-! ## A139863.P10143151969730929762

`∩[A020674(n+1), A038883(n+1)]`
-/

namespace A139863.P10143151969730929762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139863.P10143151969730929762

/-! ## A139863.P7612133712150964864

`∩[A035256(n+1), A106889(n+1)]`
-/

namespace A139863.P7612133712150964864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139863.P7612133712150964864

/-! ## A139863.P824717746155258992

`∩[A106889(n+1), A243656(n+1)]`
-/

namespace A139863.P824717746155258992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139863.P824717746155258992

/-!
# A139864: Primes of the form 2x^2 + 2xy + 67y^2.

The programs for A139864, there is no canonical definition to state claims against.
-/

/-! ## A139864.P3664791553647256425

`∩[A045373(n+1), A142955(n+1)]`
-/

namespace A139864.P3664791553647256425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139864.P3664791553647256425

/-! ## A139864.P17249679222700854908

`∩[A045386(n+1), A142955(n+1)]`
-/

namespace A139864.P17249679222700854908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139864.P17249679222700854908

/-! ## A139864.P13854033853648374321

`∩[A142955(n+1), A244779(n+1)]`
-/

namespace A139864.P13854033853648374321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139864.P13854033853648374321

/-! ## A139864.P8461412070876542039

`∩[A035248(n+1), A142955(n+1)]`
-/

namespace A139864.P8461412070876542039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139864.P8461412070876542039

/-! ## A139864.P17178377781605066444

`∩[A047350(n+1), A142955(n+1)]`
-/

namespace A139864.P17178377781605066444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139864.P17178377781605066444

/-! ## A139864.P202493170654374603

`∩[A047351(n+1), A142955(n+1)]`
-/

namespace A139864.P202493170654374603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139864.P202493170654374603

/-!
# A139865: Primes of the form 7x^2 + 19y^2.

The programs for A139865, there is no canonical definition to state claims against.
-/

/-! ## A139865.P8671892217093134410

`∩[A106863(n+1), A141173(n+1)]`
-/

namespace A139865.P8671892217093134410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139865.P8671892217093134410

/-! ## A139865.P4817487492603162056

`∩[A141173(n+1), A341787(n+1)]`
-/

namespace A139865.P4817487492603162056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139865.P4817487492603162056

/-! ## A139865.P14816769039325862084

`∩[A035243(n+1), A141173(n+1)]`
-/

namespace A139865.P14816769039325862084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139865.P14816769039325862084

/-! ## A139865.P13813722600412466329

`∩[A106863(n+1), A359476(n+1)]`
-/

namespace A139865.P13813722600412466329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139865.P13813722600412466329

/-! ## A139865.P1876725536996132356

`∩[A341787(n+1), A359476(n+1)]`
-/

namespace A139865.P1876725536996132356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139865.P1876725536996132356

/-!
# A139866: Primes of the form 13x^2 + 12xy + 13y^2.

The programs for A139866, there is no canonical definition to state claims against.
-/

/-! ## A139866.P12889387378621445524

`p?[lt[A023930(n), A023925(n)]]`
-/

namespace A139866.P12889387378621445524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023930 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023925 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A139866.P12889387378621445524

/-! ## A139866.P17435475267485585455

`∩[A141293(n+1), A172262(n+1)]`
-/

namespace A139866.P17435475267485585455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139866.P17435475267485585455

/-!
# A139867: Primes of the form 2x^2 + 2xy + 83y^2.

The programs for A139867, there is no canonical definition to state claims against.
-/

/-! ## A139867.P8099141568828817707

`∩[A106911(n+1), A139831(n+1)]`
-/

namespace A139867.P8099141568828817707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P8099141568828817707

/-! ## A139867.P13179996836130356105

`∩[A139831(n+1), A141176(n+1)]`
-/

namespace A139867.P13179996836130356105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P13179996836130356105

/-! ## A139867.P13933455468815693824

`∩[A106911(n+1), A141123(n+1)]`
-/

namespace A139867.P13933455468815693824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P13933455468815693824

/-! ## A139867.P9993593450085774861

`∩[A106865(n+1), A141176(n+1)]`
-/

namespace A139867.P9993593450085774861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P9993593450085774861

/-! ## A139867.P9412697637833529734

`∩[A106859(n+1), A141183(n+1)]`
-/

namespace A139867.P9412697637833529734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P9412697637833529734

/-! ## A139867.P11812353017537417572

`∩[A139831(n+1), A141183(n+1)]`
-/

namespace A139867.P11812353017537417572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P11812353017537417572

/-! ## A139867.P7711455111103353544

`∩[A141183(n+1), A343241(n+1)]`
-/

namespace A139867.P7711455111103353544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P7711455111103353544

/-! ## A139867.P16262813800229921823

`∩[A040122(n+1), A139831(n+1)]`
-/

namespace A139867.P16262813800229921823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P16262813800229921823

/-! ## A139867.P2765077728778959286

`∩[A139831(n+1), A191036(n+1)]`
-/

namespace A139867.P2765077728778959286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P2765077728778959286

/-! ## A139867.P5889374418746591464

`∩[A038907(n+1), A139831(n+1)]`
-/

namespace A139867.P5889374418746591464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P5889374418746591464

/-! ## A139867.P10393508416142259580

`∩[A139831(n+1), A191060(n+1)]`
-/

namespace A139867.P10393508416142259580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P10393508416142259580

/-! ## A139867.P13215627776788652132

`∩[A084917(n+1), A106911(n+1)]`
-/

namespace A139867.P13215627776788652132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P13215627776788652132

/-! ## A139867.P15174555707310450885

`∩[A028955(n+1), A141183(n+1)]`
-/

namespace A139867.P15174555707310450885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P15174555707310450885

/-! ## A139867.P5112803061939719957

`∩[A106911(n+1), A228137(n+1)-2]`
-/

namespace A139867.P5112803061939719957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228137 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P5112803061939719957

/-! ## A139867.P6652152765723799730

`∩[A029718(n+1), A141176(n+1)]`
-/

namespace A139867.P6652152765723799730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P6652152765723799730

/-! ## A139867.P18071617445223532136

`∩[A106911(n+1), A120366(n+1)]`
-/

namespace A139867.P18071617445223532136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P18071617445223532136

/-! ## A139867.P17391168145789971964

`∩[A042944(n+1), A106911(n+1)]`
-/

namespace A139867.P17391168145789971964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P17391168145789971964

/-! ## A139867.P13784476587972328076

`∩[A072065(n+1), A106911(n+1)]`
-/

namespace A139867.P13784476587972328076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P13784476587972328076

/-! ## A139867.P14238826469064232240

`∩[A106911(n+1), A218155(n+1)]`
-/

namespace A139867.P14238826469064232240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P14238826469064232240

/-! ## A139867.P5660559937590730809

`∩[A106911(n+1), A112652(n)+2]`
-/

namespace A139867.P5660559937590730809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139867.P5660559937590730809

/-!
# A139868: Primes of the form 3x^2 + 55y^2.

The programs for A139868, there is no canonical definition to state claims against.
-/

/-! ## A139868.P435642159535055373

`∩[A141177(n+1), A141304(n+1)]`
-/

namespace A139868.P435642159535055373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P435642159535055373

/-! ## A139868.P2984687641423253297

`∩[A106865(n+1), A141177(n+1)]`
-/

namespace A139868.P2984687641423253297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P2984687641423253297

/-! ## A139868.P8644799869745814225

`∩[A122870(n+1), A141177(n+1)]`
-/

namespace A139868.P8644799869745814225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P8644799869745814225

/-! ## A139868.P6373251757616077423

`∩[A038933(n+1), A141304(n+1)]`
-/

namespace A139868.P6373251757616077423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P6373251757616077423

/-! ## A139868.P4088728338906102983

`∩[A038907(n+1), A141304(n+1)]`
-/

namespace A139868.P4088728338906102983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P4088728338906102983

/-! ## A139868.P17873271748798906362

`∩[A056874(n+1), A141304(n+1)]`
-/

namespace A139868.P17873271748798906362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P17873271748798906362

/-! ## A139868.P7552721801740925867

`∩[A141304(n+1), A296920(n+1)]`
-/

namespace A139868.P7552721801740925867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P7552721801740925867

/-! ## A139868.P12118694308560403071

`∩[A038882(n+1), A141304(n+1)]`
-/

namespace A139868.P12118694308560403071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P12118694308560403071

/-! ## A139868.P15298162912649048645

`∩[A141304(n+1), A296936(n+1)]`
-/

namespace A139868.P15298162912649048645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P15298162912649048645

/-! ## A139868.P12706450892404104832

`∩[A141304(n+1), A191074(n+1)]`
-/

namespace A139868.P12706450892404104832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P12706450892404104832

/-! ## A139868.P2458738649644308849

`∩[A141304(n+1), A341785(n+1)]`
-/

namespace A139868.P2458738649644308849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P2458738649644308849

/-! ## A139868.P15688086271089538701

`∩[A040123(n+1), A141304(n+1)]`
-/

namespace A139868.P15688086271089538701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P15688086271089538701

/-! ## A139868.P14320297911878118827

`∩[A029718(n+1), A141177(n+1)]`
-/

namespace A139868.P14320297911878118827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P14320297911878118827

/-! ## A139868.P10777539236122647037

`∩[A035247(n+1), A141304(n+1)]`
-/

namespace A139868.P10777539236122647037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P10777539236122647037

/-! ## A139868.P1973409354071725692

`∩[A141304(n+1), A267755(n)]`
-/

namespace A139868.P1973409354071725692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P1973409354071725692

/-! ## A139868.P8744575343036561703

`∩[A028972(n+1), A141177(n+1)]`
-/

namespace A139868.P8744575343036561703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139868.P8744575343036561703

/-!
# A139869: Primes of the form 5x^2 + 33y^2.

The programs for A139869, there is no canonical definition to state claims against.
-/

/-! ## A139869.P14358451059583159639

`∩[A107167(n+1), A141182(n+1)]`
-/

namespace A139869.P14358451059583159639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P14358451059583159639

/-! ## A139869.P9065644226293748984

`∩[A141182(n+1), A141303(n+1)]`
-/

namespace A139869.P9065644226293748984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P9065644226293748984

/-! ## A139869.P16210410524260689724

`∩[A106859(n+1), A141182(n+1)]`
-/

namespace A139869.P16210410524260689724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P16210410524260689724

/-! ## A139869.P17388293654522793794

`∩[A107010(n+1), A107167(n+1)]`
-/

namespace A139869.P17388293654522793794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P17388293654522793794

/-! ## A139869.P462534856061762512

`∩[A107010(n+1), A141303(n+1)]`
-/

namespace A139869.P462534856061762512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P462534856061762512

/-! ## A139869.P14659628529597943478

`∩[A038881(n+1), A107167(n+1)]`
-/

namespace A139869.P14659628529597943478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P14659628529597943478

/-! ## A139869.P14696140415878374147

`∩[A056874(n+1), A107167(n+1)]`
-/

namespace A139869.P14696140415878374147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P14696140415878374147

/-! ## A139869.P16862642781301431005

`∩[A038881(n+1), A141303(n+1)]`
-/

namespace A139869.P16862642781301431005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P16862642781301431005

/-! ## A139869.P13235969434397169358

`∩[A056874(n+1), A141303(n+1)]`
-/

namespace A139869.P13235969434397169358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P13235969434397169358

/-! ## A139869.P1529992703364345571

`∩[A107167(n+1), A296920(n+1)]`
-/

namespace A139869.P1529992703364345571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P1529992703364345571

/-! ## A139869.P14969188984323304880

`∩[A107167(n+1), A296935(n+1)]`
-/

namespace A139869.P14969188984323304880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P14969188984323304880

/-! ## A139869.P6208766519221539830

`∩[A141303(n+1), A296920(n+1)]`
-/

namespace A139869.P6208766519221539830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P6208766519221539830

/-! ## A139869.P5522280902558941560

`∩[A141303(n+1), A296935(n+1)]`
-/

namespace A139869.P5522280902558941560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P5522280902558941560

/-! ## A139869.P5965533501487497425

`∩[A038908(n+1), A107167(n+1)]`
-/

namespace A139869.P5965533501487497425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P5965533501487497425

/-! ## A139869.P537302784635418267

`∩[A038908(n+1), A141303(n+1)]`
-/

namespace A139869.P537302784635418267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P537302784635418267

/-! ## A139869.P12503089253220699167

`∩[A107167(n+1), A341785(n+1)]`
-/

namespace A139869.P12503089253220699167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P12503089253220699167

/-! ## A139869.P4022587031582888027

`∩[A141303(n+1), A341785(n+1)]`
-/

namespace A139869.P4022587031582888027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P4022587031582888027

/-! ## A139869.P12724610130067715061

`∩[A020678(n+1), A141182(n+1)]`
-/

namespace A139869.P12724610130067715061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P12724610130067715061

/-! ## A139869.P9352342896913027932

`∩[A106859(n+1), A243166(n+1)]`
-/

namespace A139869.P9352342896913027932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P9352342896913027932

/-! ## A139869.P7002401015659167108

`∩[A107167(n+1), A243166(n+1)]`
-/

namespace A139869.P7002401015659167108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139869.P7002401015659167108

/-!
# A139870: Primes of the form 6x^2 + 6xy + 29y^2.

The programs for A139870, the canonical program `A139870.P15117981739868460492` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139870 has offset 1).

The definition of A139870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139870.P15117981739868460492

`∩[A107151(n+1), A139827(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139870

/-- `∩[A107151(n+1), A139827(n+1)]` -/
def P15117981739868460492.Spec : Prop :=
  ∀ n, (P15117981739868460492.a n : ℤ) = A139870 (n + 1)

theorem P15117981739868460492.correct : P15117981739868460492.Spec := by
  intro n
  simp only [A139870, Nat.add_sub_cancel]

end A139870

/-! ## A139870.P16640917181240203069

`∩[A033205(n+1), A139827(n+1)]`
-/

namespace A139870.P16640917181240203069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P16640917181240203069

namespace A139870

/-- `∩[A033205(n+1), A139827(n+1)]` -/
def P16640917181240203069.Spec : Prop :=
  ∀ n, (P16640917181240203069.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P4774777887688588138

`∩[A139827(n+1), A216815(n+1)]`
-/

namespace A139870.P4774777887688588138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P4774777887688588138

namespace A139870

/-- `∩[A139827(n+1), A216815(n+1)]` -/
def P4774777887688588138.Spec : Prop :=
  ∀ n, (P4774777887688588138.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P4013215406527731604

`∩[A033205(n+1), A141176(n+1)]`
-/

namespace A139870.P4013215406527731604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P4013215406527731604

namespace A139870

/-- `∩[A033205(n+1), A141176(n+1)]` -/
def P4013215406527731604.Spec : Prop :=
  ∀ n, (P4013215406527731604.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P2972647906699584637

`∩[A107151(n+1), A141176(n+1)]`
-/

namespace A139870.P2972647906699584637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P2972647906699584637

namespace A139870

/-- `∩[A107151(n+1), A141176(n+1)]` -/
def P2972647906699584637.Spec : Prop :=
  ∀ n, (P2972647906699584637.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P3893457496492445816

`∩[A141176(n+1), A216815(n+1)]`
-/

namespace A139870.P3893457496492445816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P3893457496492445816

namespace A139870

/-- `∩[A141176(n+1), A216815(n+1)]` -/
def P3893457496492445816.Spec : Prop :=
  ∀ n, (P3893457496492445816.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P6759451088037551379

`∩[A091729(n+1), A139827(n+1)]`
-/

namespace A139870.P6759451088037551379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P6759451088037551379

namespace A139870

/-- `∩[A091729(n+1), A139827(n+1)]` -/
def P6759451088037551379.Spec : Prop :=
  ∀ n, (P6759451088037551379.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P6607392950860209701

`∩[A091729(n+1), A141176(n+1)]`
-/

namespace A139870.P6607392950860209701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P6607392950860209701

namespace A139870

/-- `∩[A091729(n+1), A141176(n+1)]` -/
def P6607392950860209701.Spec : Prop :=
  ∀ n, (P6607392950860209701.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P16746230735572955979

`∩[A139827(n+1), A141785(n+1)]`
-/

namespace A139870.P16746230735572955979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P16746230735572955979

namespace A139870

/-- `∩[A139827(n+1), A141785(n+1)]` -/
def P16746230735572955979.Spec : Prop :=
  ∀ n, (P16746230735572955979.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P1212771765840356145

`∩[A038872(n+1), A139827(n+1)]`
-/

namespace A139870.P1212771765840356145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P1212771765840356145

namespace A139870

/-- `∩[A038872(n+1), A139827(n+1)]` -/
def P1212771765840356145.Spec : Prop :=
  ∀ n, (P1212771765840356145.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P9933821757841212085

`∩[A045468(n+1), A139827(n+1)]`
-/

namespace A139870.P9933821757841212085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P9933821757841212085

namespace A139870

/-- `∩[A045468(n+1), A139827(n+1)]` -/
def P9933821757841212085.Spec : Prop :=
  ∀ n, (P9933821757841212085.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P4953848946105837644

`∩[A139513(n+1), A139827(n+1)]`
-/

namespace A139870.P4953848946105837644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P4953848946105837644

namespace A139870

/-- `∩[A139513(n+1), A139827(n+1)]` -/
def P4953848946105837644.Spec : Prop :=
  ∀ n, (P4953848946105837644.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P1387185972258116748

`∩[A139827(n+1), A296922(n+1)]`
-/

namespace A139870.P1387185972258116748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P1387185972258116748

namespace A139870

/-- `∩[A139827(n+1), A296922(n+1)]` -/
def P1387185972258116748.Spec : Prop :=
  ∀ n, (P1387185972258116748.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P14063553645154940283

`∩[A038888(n+1), A139827(n+1)]`
-/

namespace A139870.P14063553645154940283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P14063553645154940283

namespace A139870

/-- `∩[A038888(n+1), A139827(n+1)]` -/
def P14063553645154940283.Spec : Prop :=
  ∀ n, (P14063553645154940283.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P16684774319572564586

`∩[A038907(n+1), A107151(n+1)]`
-/

namespace A139870.P16684774319572564586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P16684774319572564586

namespace A139870

/-- `∩[A038907(n+1), A107151(n+1)]` -/
def P16684774319572564586.Spec : Prop :=
  ∀ n, (P16684774319572564586.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P3089894538700894774

`∩[A107151(n+1), A191060(n+1)]`
-/

namespace A139870.P3089894538700894774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P3089894538700894774

namespace A139870

/-- `∩[A107151(n+1), A191060(n+1)]` -/
def P3089894538700894774.Spec : Prop :=
  ∀ n, (P3089894538700894774.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P10106830723811667049

`∩[A139827(n+1), A341783(n+1)]`
-/

namespace A139870.P10106830723811667049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P10106830723811667049

namespace A139870

/-- `∩[A139827(n+1), A341783(n+1)]` -/
def P10106830723811667049.Spec : Prop :=
  ∀ n, (P10106830723811667049.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P2937723961455797111

`∩[A038882(n+1), A107151(n+1)]`
-/

namespace A139870.P2937723961455797111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P2937723961455797111

namespace A139870

/-- `∩[A038882(n+1), A107151(n+1)]` -/
def P2937723961455797111.Spec : Prop :=
  ∀ n, (P2937723961455797111.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P16533976022676939681

`∩[A139827(n+1), A191062(n+1)]`
-/

namespace A139870.P16533976022676939681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P16533976022676939681

namespace A139870

/-- `∩[A139827(n+1), A191062(n+1)]` -/
def P16533976022676939681.Spec : Prop :=
  ∀ n, (P16533976022676939681.a n : ℤ) = A139870 (n + 1)

end A139870

/-! ## A139870.P10549155563603184479

`∩[A107151(n+1), A296936(n+1)]`
-/

namespace A139870.P10549155563603184479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139870.P10549155563603184479

namespace A139870

/-- `∩[A107151(n+1), A296936(n+1)]` -/
def P10549155563603184479.Spec : Prop :=
  ∀ n, (P10549155563603184479.a n : ℤ) = A139870 (n + 1)

end A139870

/-!
# A139871: Primes of the form 10x^2 + 10xy + 19y^2.

The programs for A139871, there is no canonical definition to state claims against.
-/

/-! ## A139871.P7808332419288164680

`∩[A107168(n+1), A139828(n+1)]`
-/

namespace A139871.P7808332419288164680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P7808332419288164680

/-! ## A139871.P9811510681676963500

`∩[A033212(n+1), A139828(n+1)]`
-/

namespace A139871.P9811510681676963500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P9811510681676963500

/-! ## A139871.P6476679505808991369

`∩[A122869(n+1), A139828(n+1)]`
-/

namespace A139871.P6476679505808991369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P6476679505808991369

/-! ## A139871.P11844270979554631652

`∩[A033212(n+1), A141183(n+1)]`
-/

namespace A139871.P11844270979554631652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P11844270979554631652

/-! ## A139871.P9728199197908215915

`∩[A107168(n+1), A141183(n+1)]`
-/

namespace A139871.P9728199197908215915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P9728199197908215915

/-! ## A139871.P13126837452020486423

`∩[A053032(n+1), A139828(n+1)]`
-/

namespace A139871.P13126837452020486423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P13126837452020486423

/-! ## A139871.P16071894534169367997

`∩[A112860(n+1), A139828(n+1)]`
-/

namespace A139871.P16071894534169367997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P16071894534169367997

/-! ## A139871.P2720304579649850122

`∩[A139828(n+1), A385192(n+1)]`
-/

namespace A139871.P2720304579649850122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P2720304579649850122

/-! ## A139871.P14223028831593287534

`∩[A040105(n+1), A139828(n+1)]`
-/

namespace A139871.P14223028831593287534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P14223028831593287534

/-! ## A139871.P4964548076810033481

`∩[A040122(n+1), A107168(n+1)]`
-/

namespace A139871.P4964548076810033481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P4964548076810033481

/-! ## A139871.P6999612187789470183

`∩[A040147(n+1), A139828(n+1)]`
-/

namespace A139871.P6999612187789470183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P6999612187789470183

/-! ## A139871.P5056034774533972926

`∩[A038872(n+1), A139828(n+1)]`
-/

namespace A139871.P5056034774533972926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P5056034774533972926

/-! ## A139871.P5947479349524574

`∩[A045468(n+1), A139828(n+1)]`
-/

namespace A139871.P5947479349524574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P5947479349524574

/-! ## A139871.P1178238866711192525

`∩[A064739(n+1), A139828(n+1)]`
-/

namespace A139871.P1178238866711192525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P1178238866711192525

/-! ## A139871.P13707573493873062443

`∩[A139828(n+1), A191018(n+1)]`
-/

namespace A139871.P13707573493873062443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P13707573493873062443

/-! ## A139871.P10750237908784147976

`∩[A038881(n+1), A107168(n+1)]`
-/

namespace A139871.P10750237908784147976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P10750237908784147976

/-! ## A139871.P14835995460561026463

`∩[A038933(n+1), A107168(n+1)]`
-/

namespace A139871.P14835995460561026463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P14835995460561026463

/-! ## A139871.P14830212810302247779

`∩[A038888(n+1), A139828(n+1)]`
-/

namespace A139871.P14830212810302247779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P14830212810302247779

/-! ## A139871.P10581709881889222062

`∩[A038933(n+1), A139828(n+1)]`
-/

namespace A139871.P10581709881889222062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P10581709881889222062

/-! ## A139871.P11707707898765301609

`∩[A076518(n+1), A139828(n+1)]`
-/

namespace A139871.P11707707898765301609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139871.P11707707898765301609

/-!
# A139872: Primes of the form 11x^2 + 15y^2.

The programs for A139872, there is no canonical definition to state claims against.
-/

/-! ## A139872.P3574157942382506448

`∩[A107138(n+1), A141302(n+1)]`
-/

namespace A139872.P3574157942382506448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P3574157942382506448

/-! ## A139872.P1961657399058601325

`∩[A107138(n+1), A267478(n+1)]`
-/

namespace A139872.P1961657399058601325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P1961657399058601325

/-! ## A139872.P10560720996141050764

`∩[A141302(n+1), A267478(n+1)]`
-/

namespace A139872.P10560720996141050764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P10560720996141050764

/-! ## A139872.P7582521766452846674

`∩[A107010(n+1), A141302(n+1)]`
-/

namespace A139872.P7582521766452846674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P7582521766452846674

/-! ## A139872.P3057837401863610498

`∩[A068231(n+1), A267478(n+1)]`
-/

namespace A139872.P3057837401863610498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P3057837401863610498

/-! ## A139872.P15113902561099134068

`∩[A141187(n+1), A267478(n+1)]`
-/

namespace A139872.P15113902561099134068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P15113902561099134068

/-! ## A139872.P15557980040325643853

`∩[A141123(n+1), A267478(n+1)]`
-/

namespace A139872.P15557980040325643853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P15557980040325643853

/-! ## A139872.P266140536285622539

`∩[A107010(n+1), A122869(n+1)]`
-/

namespace A139872.P266140536285622539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P266140536285622539

/-! ## A139872.P12066941376441745428

`∩[A107138(n+1), A122869(n+1)]`
-/

namespace A139872.P12066941376441745428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P12066941376441745428

/-! ## A139872.P13220931336598938080

`∩[A107138(n+1), A141785(n+1)]`
-/

namespace A139872.P13220931336598938080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P13220931336598938080

/-! ## A139872.P1749333695940767462

`∩[A053032(n+1), A107138(n+1)]`
-/

namespace A139872.P1749333695940767462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P1749333695940767462

/-! ## A139872.P13135910422916907267

`∩[A107138(n+1), A112860(n+1)]`
-/

namespace A139872.P13135910422916907267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P13135910422916907267

/-! ## A139872.P15839701698691177819

`∩[A107138(n+1), A385192(n+1)]`
-/

namespace A139872.P15839701698691177819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P15839701698691177819

/-! ## A139872.P7114302409733324810

`∩[A267478(n+1), A332516(n+1)]`
-/

namespace A139872.P7114302409733324810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P7114302409733324810

/-! ## A139872.P5261672977554807441

`∩[A040105(n+1), A107138(n+1)]`
-/

namespace A139872.P5261672977554807441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P5261672977554807441

/-! ## A139872.P16539473957783212967

`∩[A040147(n+1), A107138(n+1)]`
-/

namespace A139872.P16539473957783212967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P16539473957783212967

/-! ## A139872.P17847805692727056373

`∩[A040998(n+1), A107138(n+1)]`
-/

namespace A139872.P17847805692727056373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P17847805692727056373

/-! ## A139872.P15804967723876994394

`∩[A038872(n+1), A107138(n+1)]`
-/

namespace A139872.P15804967723876994394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P15804967723876994394

/-! ## A139872.P16883914854790728696

`∩[A045468(n+1), A107138(n+1)]`
-/

namespace A139872.P16883914854790728696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P16883914854790728696

/-! ## A139872.P17733875108658416918

`∩[A064739(n+1), A107138(n+1)]`
-/

namespace A139872.P17733875108658416918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139872.P17733875108658416918

/-!
# A139873: Primes of the form 13x^2 + 4xy + 13y^2.

The programs for A139873, there is no canonical definition to state claims against.
-/

/-! ## A139873.P6016140121114415339

`∩[A068228(n+1), A106911(n+1)]`
-/

namespace A139873.P6016140121114415339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P6016140121114415339

/-! ## A139873.P8298389150306886519

`∩[A106911(n+1), A351537(n+1)]`
-/

namespace A139873.P8298389150306886519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P8298389150306886519

/-! ## A139873.P7813106364816893592

`∩[A106911(n+1), A354467(n+1)]`
-/

namespace A139873.P7813106364816893592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P7813106364816893592

/-! ## A139873.P12429162918985004591

`∩[A106911(n+1), A353198(n+1)]`
-/

namespace A139873.P12429162918985004591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P12429162918985004591

/-! ## A139873.P12423591713321715178

`∩[A106911(n+1), A155560(n+1)]`
-/

namespace A139873.P12423591713321715178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P12423591713321715178

/-! ## A139873.P5297962887071555981

`∩[A106911(n+1), A264732(n+1)]`
-/

namespace A139873.P5297962887071555981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P5297962887071555981

/-! ## A139873.P7462554805029228065

`∩[A106911(n+1), A155563(n+1)]`
-/

namespace A139873.P7462554805029228065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P7462554805029228065

/-! ## A139873.P17713175648587094940

`∩[A106911(n+1), A017533(n)]`
-/

namespace A139873.P17713175648587094940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P17713175648587094940

/-! ## A139873.P5020906882014371212

`∩[A106911(n+1), A272933(n+1)]`
-/

namespace A139873.P5020906882014371212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P5020906882014371212

/-! ## A139873.P11007298828752696692

`∩[A020672(n+1), A106911(n+1)]`
-/

namespace A139873.P11007298828752696692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P11007298828752696692

/-! ## A139873.P11398906718241565573

`∩[A084916(n+1), A106911(n+1)]`
-/

namespace A139873.P11398906718241565573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P11398906718241565573

/-! ## A139873.P8440112442957478398

`∩[A106911(n+1), A146512(n+1)]`
-/

namespace A139873.P8440112442957478398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P8440112442957478398

/-! ## A139873.P17362308151512857304

`∩[A106911(n+1), A228137(n+1)]`
-/

namespace A139873.P17362308151512857304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P17362308151512857304

/-! ## A139873.P8544228980696199516

`∩[A112652(2*n+1)+A112652(2*n), A106911(n+2)]`
-/

namespace A139873.P8544228980696199516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (2 * n + 1) + A112652 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P8544228980696199516

/-! ## A139873.P10652142467379564704

`∩[A106911(n+1), A112652(n)]`
-/

namespace A139873.P10652142467379564704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P10652142467379564704

/-! ## A139873.P6702669826457439141

`∩[A072065(n+1)+1, A106911(n+1)]`
-/

namespace A139873.P6702669826457439141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P6702669826457439141

/-! ## A139873.P4237067218967053287

`∩[A106911(n+1), A218155(n+1)-2]`
-/

namespace A139873.P4237067218967053287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P4237067218967053287

/-! ## A139873.P822137180868433874

`∩[A106911(n+1), A332512(n+1)]`
-/

namespace A139873.P822137180868433874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139873.P822137180868433874

/-!
# A139874: Primes of the form 3x^2 + 56y^2.

The programs for A139874, the canonical program `A139874.P13463748736922216680` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139874 has offset 1).

The definition of A139874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139874.P2283499941130162135

`∩[A107007(n+1), A107147(n+1)]`
-/

namespace A139874.P2283499941130162135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P2283499941130162135

namespace A139874

/-- `∩[A107007(n+1), A107147(n+1)]` -/
def P2283499941130162135.Spec : Prop :=
  ∀ n, (P2283499941130162135.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P8107901336246838760

`∩[A084865(n+1), A107147(n+1)]`
-/

namespace A139874.P8107901336246838760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P8107901336246838760

namespace A139874

/-- `∩[A084865(n+1), A107147(n+1)]` -/
def P8107901336246838760.Spec : Prop :=
  ∀ n, (P8107901336246838760.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P2379491200813829600

`∩[A107147(n+1), A141123(n+1)]`
-/

namespace A139874.P2379491200813829600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P2379491200813829600

namespace A139874

/-- `∩[A107147(n+1), A141123(n+1)]` -/
def P2379491200813829600.Spec : Prop :=
  ∀ n, (P2379491200813829600.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P2493963114544108874

`∩[A107147(n+1), A141187(n+1)]`
-/

namespace A139874.P2493963114544108874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P2493963114544108874

namespace A139874

/-- `∩[A107147(n+1), A141187(n+1)]` -/
def P2493963114544108874.Spec : Prop :=
  ∀ n, (P2493963114544108874.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P10887959711331906914

`∩[A007520(n+1), A107147(n+1)]`
-/

namespace A139874.P10887959711331906914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P10887959711331906914

namespace A139874

/-- `∩[A007520(n+1), A107147(n+1)]` -/
def P10887959711331906914.Spec : Prop :=
  ∀ n, (P10887959711331906914.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P8265754711051483743

`∩[A045339(n+1), A107147(n+1)]`
-/

namespace A139874.P8265754711051483743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P8265754711051483743

namespace A139874

/-- `∩[A045339(n+1), A107147(n+1)]` -/
def P8265754711051483743.Spec : Prop :=
  ∀ n, (P8265754711051483743.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P92690862289884193

`∩[A084865(n+1), A141173(n+1)]`
-/

namespace A139874.P92690862289884193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P92690862289884193

namespace A139874

/-- `∩[A084865(n+1), A141173(n+1)]` -/
def P92690862289884193.Spec : Prop :=
  ∀ n, (P92690862289884193.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P4986952886602010166

`∩[A107007(n+1), A141173(n+1)]`
-/

namespace A139874.P4986952886602010166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P4986952886602010166

namespace A139874

/-- `∩[A107007(n+1), A141173(n+1)]` -/
def P4986952886602010166.Spec : Prop :=
  ∀ n, (P4986952886602010166.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P5479895168638697722

`∩[A107147(n+1), A141173(n+1)]`
-/

namespace A139874.P5479895168638697722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P5479895168638697722

namespace A139874

/-- `∩[A107147(n+1), A141173(n+1)]` -/
def P5479895168638697722.Spec : Prop :=
  ∀ n, (P5479895168638697722.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P9396700901202633373

`∩[A007520(n+1), A141160(n+1)]`
-/

namespace A139874.P9396700901202633373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P9396700901202633373

namespace A139874

/-- `∩[A007520(n+1), A141160(n+1)]` -/
def P9396700901202633373.Spec : Prop :=
  ∀ n, (P9396700901202633373.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P5211532217221562548

`∩[A045339(n+1), A141160(n+1)]`
-/

namespace A139874.P5211532217221562548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P5211532217221562548

namespace A139874

/-- `∩[A045339(n+1), A141160(n+1)]` -/
def P5211532217221562548.Spec : Prop :=
  ∀ n, (P5211532217221562548.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P5896486537637411725

`∩[A107007(n+1), A141160(n+1)]`
-/

namespace A139874.P5896486537637411725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P5896486537637411725

namespace A139874

/-- `∩[A107007(n+1), A141160(n+1)]` -/
def P5896486537637411725.Spec : Prop :=
  ∀ n, (P5896486537637411725.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P13463748736922216680

`∩[A106915(n+1), A107007(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139874

/-- `∩[A106915(n+1), A107007(n+1)]` -/
def P13463748736922216680.Spec : Prop :=
  ∀ n, (P13463748736922216680.a n : ℤ) = A139874 (n + 1)

theorem P13463748736922216680.correct : P13463748736922216680.Spec := by
  intro n
  simp only [A139874, Nat.add_sub_cancel]

end A139874

/-! ## A139874.P13321025281703841864

`∩[A106915(n+1), A107147(n+1)]`
-/

namespace A139874.P13321025281703841864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P13321025281703841864

namespace A139874

/-- `∩[A106915(n+1), A107147(n+1)]` -/
def P13321025281703841864.Spec : Prop :=
  ∀ n, (P13321025281703841864.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P17613032484582445302

`∩[A106915(n+1), A141123(n+1)]`
-/

namespace A139874.P17613032484582445302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P17613032484582445302

namespace A139874

/-- `∩[A106915(n+1), A141123(n+1)]` -/
def P17613032484582445302.Spec : Prop :=
  ∀ n, (P17613032484582445302.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P4997126260092918786

`∩[A106915(n+1), A141187(n+1)]`
-/

namespace A139874.P4997126260092918786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P4997126260092918786

namespace A139874

/-- `∩[A106915(n+1), A141187(n+1)]` -/
def P4997126260092918786.Spec : Prop :=
  ∀ n, (P4997126260092918786.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P14949223925700769976

`∩[A107147(n+1), A332446(n+1)]`
-/

namespace A139874.P14949223925700769976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P14949223925700769976

namespace A139874

/-- `∩[A107147(n+1), A332446(n+1)]` -/
def P14949223925700769976.Spec : Prop :=
  ∀ n, (P14949223925700769976.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P12599001319697763942

`∩[A141160(n+1), A332446(n+1)]`
-/

namespace A139874.P12599001319697763942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P12599001319697763942

namespace A139874

/-- `∩[A141160(n+1), A332446(n+1)]` -/
def P12599001319697763942.Spec : Prop :=
  ∀ n, (P12599001319697763942.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P12483257773835527105

`∩[A095282(n+1), A107147(n+1)]`
-/

namespace A139874.P12483257773835527105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P12483257773835527105

namespace A139874

/-- `∩[A095282(n+1), A107147(n+1)]` -/
def P12483257773835527105.Spec : Prop :=
  ∀ n, (P12483257773835527105.a n : ℤ) = A139874 (n + 1)

end A139874

/-! ## A139874.P2860999200620082468

`∩[A107147(n+1), A192717(n+1)]`
-/

namespace A139874.P2860999200620082468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139874.P2860999200620082468

namespace A139874

/-- `∩[A107147(n+1), A192717(n+1)]` -/
def P2860999200620082468.Spec : Prop :=
  ∀ n, (P2860999200620082468.a n : ℤ) = A139874 (n + 1)

end A139874

/-!
# A139875: Primes of the form 4x^2 + 4xy + 43y^2.

The programs for A139875, the canonical program `A139875.P12664250096370971666` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139875 has offset 1).

The definition of A139875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139875.P1029673408189720753

`∩[A033229(n+1), A141373(n+1)]`
-/

namespace A139875.P1029673408189720753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P1029673408189720753

namespace A139875

/-- `∩[A033229(n+1), A141373(n+1)]` -/
def P1029673408189720753.Spec : Prop :=
  ∀ n, (P1029673408189720753.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P17818382233997818231

`∩[A033229(n+1), A139853(n+1)]`
-/

namespace A139875.P17818382233997818231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P17818382233997818231

namespace A139875

/-- `∩[A033229(n+1), A139853(n+1)]` -/
def P17818382233997818231.Spec : Prop :=
  ∀ n, (P17818382233997818231.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P10731376736254738315

`∩[A139853(n+1), A141373(n+1)]`
-/

namespace A139875.P10731376736254738315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P10731376736254738315

namespace A139875

/-- `∩[A139853(n+1), A141373(n+1)]` -/
def P10731376736254738315.Spec : Prop :=
  ∀ n, (P10731376736254738315.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P9935778538668905320

`p?[or(2, A033229(n+1))]`
-/

namespace A139875.P9935778538668905320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A033229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139875.P9935778538668905320

namespace A139875

/-- `p?[or(2, A033229(n+1))]` -/
def P9935778538668905320.Spec : Prop :=
  ∀ n, P9935778538668905320.a n = A139875 (n + 1)

end A139875

/-! ## A139875.P15317877838377740784

`∩[A139492(n+1), A139853(n+1)]`
-/

namespace A139875.P15317877838377740784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P15317877838377740784

namespace A139875

/-- `∩[A139492(n+1), A139853(n+1)]` -/
def P15317877838377740784.Spec : Prop :=
  ∀ n, (P15317877838377740784.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P12664250096370971666

`∩[A139492(n+1), A141373(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139875

/-- `∩[A139492(n+1), A141373(n+1)]` -/
def P12664250096370971666.Spec : Prop :=
  ∀ n, (P12664250096370971666.a n : ℤ) = A139875 (n + 1)

theorem P12664250096370971666.correct : P12664250096370971666.Spec := by
  intro n
  simp only [A139875, Nat.add_sub_cancel]

end A139875

/-! ## A139875.P1209810435319030955

`∩[A141190(n+1), A141373(n+1)]`
-/

namespace A139875.P1209810435319030955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P1209810435319030955

namespace A139875

/-- `∩[A141190(n+1), A141373(n+1)]` -/
def P1209810435319030955.Spec : Prop :=
  ∀ n, (P1209810435319030955.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P5119039068897082304

`∩[A106950(n+1), A139853(n+1)]`
-/

namespace A139875.P5119039068897082304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P5119039068897082304

namespace A139875

/-- `∩[A106950(n+1), A139853(n+1)]` -/
def P5119039068897082304.Spec : Prop :=
  ∀ n, (P5119039068897082304.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P3237512393188776251

`∩[A139853(n+1), A141170(n+1)]`
-/

namespace A139875.P3237512393188776251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P3237512393188776251

namespace A139875

/-- `∩[A139853(n+1), A141170(n+1)]` -/
def P3237512393188776251.Spec : Prop :=
  ∀ n, (P3237512393188776251.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P5956026000090075806

`∩[A033229(n+1), A107133(n+1)]`
-/

namespace A139875.P5956026000090075806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P5956026000090075806

namespace A139875

/-- `∩[A033229(n+1), A107133(n+1)]` -/
def P5956026000090075806.Spec : Prop :=
  ∀ n, (P5956026000090075806.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P8669127822351785173

`∩[A106950(n+1), A107133(n+1)]`
-/

namespace A139875.P8669127822351785173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P8669127822351785173

namespace A139875

/-- `∩[A106950(n+1), A107133(n+1)]` -/
def P8669127822351785173.Spec : Prop :=
  ∀ n, (P8669127822351785173.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P13326178330616403341

`∩[A107133(n+1), A141170(n+1)]`
-/

namespace A139875.P13326178330616403341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P13326178330616403341

namespace A139875

/-- `∩[A107133(n+1), A141170(n+1)]` -/
def P13326178330616403341.Spec : Prop :=
  ∀ n, (P13326178330616403341.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P13480508145564526990

`∩[A107133(n+1), A141373(n+1)]`
-/

namespace A139875.P13480508145564526990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P13480508145564526990

namespace A139875

/-- `∩[A107133(n+1), A141373(n+1)]` -/
def P13480508145564526990.Spec : Prop :=
  ∀ n, (P13480508145564526990.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P12950793220835123966

`∩[A033229(n+1), A068229(n+1)]`
-/

namespace A139875.P12950793220835123966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P12950793220835123966

namespace A139875

/-- `∩[A033229(n+1), A068229(n+1)]` -/
def P12950793220835123966.Spec : Prop :=
  ∀ n, (P12950793220835123966.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P12768054370155095082

`∩[A068229(n+1), A139853(n+1)]`
-/

namespace A139875.P12768054370155095082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P12768054370155095082

namespace A139875

/-- `∩[A068229(n+1), A139853(n+1)]` -/
def P12768054370155095082.Spec : Prop :=
  ∀ n, (P12768054370155095082.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P4058601054575188238

`∩[A068229(n+1), A141190(n+1)]`
-/

namespace A139875.P4058601054575188238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P4058601054575188238

namespace A139875

/-- `∩[A068229(n+1), A141190(n+1)]` -/
def P4058601054575188238.Spec : Prop :=
  ∀ n, (P4058601054575188238.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P4242472732840924984

`∩[A007520(n+1), A033229(n+1)]`
-/

namespace A139875.P4242472732840924984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P4242472732840924984

namespace A139875

/-- `∩[A007520(n+1), A033229(n+1)]` -/
def P4242472732840924984.Spec : Prop :=
  ∀ n, (P4242472732840924984.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P12143611414463175776

`∩[A033229(n+1), A045339(n+1)]`
-/

namespace A139875.P12143611414463175776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P12143611414463175776

namespace A139875

/-- `∩[A033229(n+1), A045339(n+1)]` -/
def P12143611414463175776.Spec : Prop :=
  ∀ n, (P12143611414463175776.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P8259977786968016174

`∩[A007520(n+1), A139492(n+1)]`
-/

namespace A139875.P8259977786968016174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P8259977786968016174

namespace A139875

/-- `∩[A007520(n+1), A139492(n+1)]` -/
def P8259977786968016174.Spec : Prop :=
  ∀ n, (P8259977786968016174.a n : ℤ) = A139875 (n + 1)

end A139875

/-! ## A139875.P11976227737601486746

`∩[A045339(n+1), A139492(n+1)]`
-/

namespace A139875.P11976227737601486746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139875.P11976227737601486746

namespace A139875

/-- `∩[A045339(n+1), A139492(n+1)]` -/
def P11976227737601486746.Spec : Prop :=
  ∀ n, (P11976227737601486746.a n : ℤ) = A139875 (n + 1)

end A139875

/-!
# A139876: Primes of the form 7x^2+24y^2.

The programs for A139876, there is no canonical definition to state claims against.
-/

/-! ## A139876.P7137079736029303201

`∩[A102271(n+1), A107006(n+1)]`
-/

namespace A139876.P7137079736029303201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P7137079736029303201

/-! ## A139876.P1347094085995368446

`p?[or(2, A107146(n+1))]`
-/

namespace A139876.P1347094085995368446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A107146 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139876.P1347094085995368446

/-! ## A139876.P4319193989126521683

`∩[A033199(n+1), A102271(n+1)]`
-/

namespace A139876.P4319193989126521683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P4319193989126521683

/-! ## A139876.P10159454150355330853

`∩[A033199(n+1), A107146(n+1)]`
-/

namespace A139876.P10159454150355330853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P10159454150355330853

/-! ## A139876.P3348798664728456221

`∩[A007522(n+1), A102271(n+1)]`
-/

namespace A139876.P3348798664728456221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P3348798664728456221

/-! ## A139876.P13956232735419117545

`∩[A007522(n+1), A107146(n+1)]`
-/

namespace A139876.P13956232735419117545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P13956232735419117545

/-! ## A139876.P16023920742177638842

`∩[A045382(n+1), A102271(n+1)]`
-/

namespace A139876.P16023920742177638842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P16023920742177638842

/-! ## A139876.P7781755677140626295

`∩[A045382(n+1), A107146(n+1)]`
-/

namespace A139876.P7781755677140626295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P7781755677140626295

/-! ## A139876.P14995099145013852547

`∩[A068229(n+1), A107146(n+1)]`
-/

namespace A139876.P14995099145013852547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P14995099145013852547

/-! ## A139876.P4024959117450350068

`∩[A094712(n+1), A102271(n+1)]`
-/

namespace A139876.P4024959117450350068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P4024959117450350068

/-! ## A139876.P13496804564011723090

`∩[A033199(n+1), A141173(n+1)]`
-/

namespace A139876.P13496804564011723090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P13496804564011723090

/-! ## A139876.P10842787089746086151

`∩[A033199(n+1), A141191(n+1)]`
-/

namespace A139876.P10842787089746086151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P10842787089746086151

/-! ## A139876.P16657359923470493050

`∩[A068229(n+1), A141191(n+1)]`
-/

namespace A139876.P16657359923470493050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P16657359923470493050

/-! ## A139876.P18034606161508473342

`∩[A014663(n+1), A102271(n+1)]`
-/

namespace A139876.P18034606161508473342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P18034606161508473342

/-! ## A139876.P5466702934832776484

`∩[A014663(n+1), A107146(n+1)]`
-/

namespace A139876.P5466702934832776484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P5466702934832776484

/-! ## A139876.P14457150776499397423

`∩[A040098(n+1), A102271(n+1)]`
-/

namespace A139876.P14457150776499397423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P14457150776499397423

/-! ## A139876.P2103903375531677165

`∩[A040098(n+1), A107146(n+1)]`
-/

namespace A139876.P2103903375531677165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P2103903375531677165

/-! ## A139876.P1083121536875347035

`∩[A107146(n+1), A332514(n+1)]`
-/

namespace A139876.P1083121536875347035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139876.P1083121536875347035

/-!
# A139877: Primes of the form 8x^2+21y^2.

The programs for A139877, the canonical program `A139877.P18183384045405049100` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139877 has offset 1).

The definition of A139877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139877.P18183384045405049100

`∩[A107003(n+1), A139851(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139877

/-- `∩[A107003(n+1), A139851(n+1)]` -/
def P18183384045405049100.Spec : Prop :=
  ∀ n, (P18183384045405049100.a n : ℤ) = A139877 (n + 1)

theorem P18183384045405049100.correct : P18183384045405049100.Spec := by
  intro n
  simp only [A139877, Nat.add_sub_cancel]

end A139877

/-! ## A139877.P3434543912396442329

`∩[A107003(n+1), A107148(n+1)]`
-/

namespace A139877.P3434543912396442329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P3434543912396442329

namespace A139877

/-- `∩[A107003(n+1), A107148(n+1)]` -/
def P3434543912396442329.Spec : Prop :=
  ∀ n, (P3434543912396442329.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P8151852690080775022

`∩[A107148(n+1), A139851(n+1)]`
-/

namespace A139877.P8151852690080775022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P8151852690080775022

namespace A139877

/-- `∩[A107148(n+1), A139851(n+1)]` -/
def P8151852690080775022.Spec : Prop :=
  ∀ n, (P8151852690080775022.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P16695761747884011494

`∩[A107003(n+1), A107134(n+1)]`
-/

namespace A139877.P16695761747884011494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P16695761747884011494

namespace A139877

/-- `∩[A107003(n+1), A107134(n+1)]` -/
def P16695761747884011494.Spec : Prop :=
  ∀ n, (P16695761747884011494.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P2103062734172046723

`∩[A107134(n+1), A107148(n+1)]`
-/

namespace A139877.P2103062734172046723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P2103062734172046723

namespace A139877

/-- `∩[A107134(n+1), A107148(n+1)]` -/
def P2103062734172046723.Spec : Prop :=
  ∀ n, (P2103062734172046723.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P1450143537511082081

`∩[A107003(n+1), A141172(n+1)]`
-/

namespace A139877.P1450143537511082081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P1450143537511082081

namespace A139877

/-- `∩[A107003(n+1), A141172(n+1)]` -/
def P1450143537511082081.Spec : Prop :=
  ∀ n, (P1450143537511082081.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P13331431035726871579

`∩[A106927(n+1), A107003(n+1)]`
-/

namespace A139877.P13331431035726871579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P13331431035726871579

namespace A139877

/-- `∩[A106927(n+1), A107003(n+1)]` -/
def P13331431035726871579.Spec : Prop :=
  ∀ n, (P13331431035726871579.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P5920849446322695105

`∩[A106927(n+1), A139851(n+1)]`
-/

namespace A139877.P5920849446322695105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P5920849446322695105

namespace A139877

/-- `∩[A106927(n+1), A139851(n+1)]` -/
def P5920849446322695105.Spec : Prop :=
  ∀ n, (P5920849446322695105.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P17456526992999824884

`∩[A040117(n+1), A107148(n+1)]`
-/

namespace A139877.P17456526992999824884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P17456526992999824884

namespace A139877

/-- `∩[A040117(n+1), A107148(n+1)]` -/
def P17456526992999824884.Spec : Prop :=
  ∀ n, (P17456526992999824884.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P8273799931796926037

`∩[A040117(n+1), A139851(n+1)]`
-/

namespace A139877.P8273799931796926037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P8273799931796926037

namespace A139877

/-- `∩[A040117(n+1), A139851(n+1)]` -/
def P8273799931796926037.Spec : Prop :=
  ∀ n, (P8273799931796926037.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P6833942176583108994

`∩[A007521(n+1), A106927(n+1)]`
-/

namespace A139877.P6833942176583108994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P6833942176583108994

namespace A139877

/-- `∩[A007521(n+1), A106927(n+1)]` -/
def P6833942176583108994.Spec : Prop :=
  ∀ n, (P6833942176583108994.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P2912754577657004619

`∩[A007521(n+1), A107148(n+1)]`
-/

namespace A139877.P2912754577657004619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P2912754577657004619

namespace A139877

/-- `∩[A007521(n+1), A107148(n+1)]` -/
def P2912754577657004619.Spec : Prop :=
  ∀ n, (P2912754577657004619.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P4615285260125632877

`∩[A084865(n+1), A107134(n+1)]`
-/

namespace A139877.P4615285260125632877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P4615285260125632877

namespace A139877

/-- `∩[A084865(n+1), A107134(n+1)]` -/
def P4615285260125632877.Spec : Prop :=
  ∀ n, (P4615285260125632877.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P173489790028218103

`∩[A084865(n+1), A139851(n+1)]`
-/

namespace A139877.P173489790028218103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P173489790028218103

namespace A139877

/-- `∩[A084865(n+1), A139851(n+1)]` -/
def P173489790028218103.Spec : Prop :=
  ∀ n, (P173489790028218103.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P11278385452486913780

`∩[A139851(n+1), A243183(n+1)]`
-/

namespace A139877.P11278385452486913780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P11278385452486913780

namespace A139877

/-- `∩[A139851(n+1), A243183(n+1)]` -/
def P11278385452486913780.Spec : Prop :=
  ∀ n, (P11278385452486913780.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P3823869787605395907

`∩[A107134(n+1), A141171(n+1)]`
-/

namespace A139877.P3823869787605395907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P3823869787605395907

namespace A139877

/-- `∩[A107134(n+1), A141171(n+1)]` -/
def P3823869787605395907.Spec : Prop :=
  ∀ n, (P3823869787605395907.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P5192399781534457066

`∩[A139851(n+1), A141171(n+1)]`
-/

namespace A139877.P5192399781534457066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P5192399781534457066

namespace A139877

/-- `∩[A139851(n+1), A141171(n+1)]` -/
def P5192399781534457066.Spec : Prop :=
  ∀ n, (P5192399781534457066.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P17575514848975418801

`∩[A107148(n+1), A385224(n+1)]`
-/

namespace A139877.P17575514848975418801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P17575514848975418801

namespace A139877

/-- `∩[A107148(n+1), A385224(n+1)]` -/
def P17575514848975418801.Spec : Prop :=
  ∀ n, (P17575514848975418801.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P3410592339163115280

`∩[A034847(n+1), A107148(n+1)]`
-/

namespace A139877.P3410592339163115280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P3410592339163115280

namespace A139877

/-- `∩[A034847(n+1), A107148(n+1)]` -/
def P3410592339163115280.Spec : Prop :=
  ∀ n, (P3410592339163115280.a n : ℤ) = A139877 (n + 1)

end A139877

/-! ## A139877.P1191243292674536851

`∩[A107148(n+1), A392947(n+1)]`
-/

namespace A139877.P1191243292674536851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139877.P1191243292674536851

namespace A139877

/-- `∩[A107148(n+1), A392947(n+1)]` -/
def P1191243292674536851.Spec : Prop :=
  ∀ n, (P1191243292674536851.a n : ℤ) = A139877 (n + 1)

end A139877

/-!
# A139878: Primes of the form 8x^2+8xy+23y^2.

The programs for A139878, the canonical program `A139878.P4049860983378405462` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139878 has offset 1).

The definition of A139878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139878.P4049860983378405462

`∩[A102273(n+1), A107148(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139878

/-- `∩[A102273(n+1), A107148(n+1)]` -/
def P4049860983378405462.Spec : Prop :=
  ∀ n, (P4049860983378405462.a n : ℤ) = A139878 (n + 1)

theorem P4049860983378405462.correct : P4049860983378405462.Spec := by
  intro n
  simp only [A139878, Nat.add_sub_cancel]

end A139878

/-! ## A139878.P14193414722721535570

`∩[A102273(n+1), A139852(n+1)]`
-/

namespace A139878.P14193414722721535570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P14193414722721535570

namespace A139878

/-- `∩[A102273(n+1), A139852(n+1)]` -/
def P14193414722721535570.Spec : Prop :=
  ∀ n, (P14193414722721535570.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P5273538718892897074

`p?[or(4, A102273(n+1))]`
-/

namespace A139878.P5273538718892897074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A102273 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139878.P5273538718892897074

namespace A139878

/-- `p?[or(4, A102273(n+1))]` -/
def P5273538718892897074.Spec : Prop :=
  ∀ n, P5273538718892897074.a n = A139878 (n + 1)

end A139878

/-! ## A139878.P16305837512371956874

`∩[A102273(n+1), A130063(n+1)]`
-/

namespace A139878.P16305837512371956874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P16305837512371956874

namespace A139878

/-- `∩[A102273(n+1), A130063(n+1)]` -/
def P16305837512371956874.Spec : Prop :=
  ∀ n, (P16305837512371956874.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P6295666645408198323

`∩[A107148(n+1), A130063(n+1)]`
-/

namespace A139878.P6295666645408198323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P6295666645408198323

namespace A139878

/-- `∩[A107148(n+1), A130063(n+1)]` -/
def P6295666645408198323.Spec : Prop :=
  ∀ n, (P6295666645408198323.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P5579258662923673111

`∩[A130063(n+1), A139852(n+1)]`
-/

namespace A139878.P5579258662923673111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P5579258662923673111

namespace A139878

/-- `∩[A130063(n+1), A139852(n+1)]` -/
def P5579258662923673111.Spec : Prop :=
  ∀ n, (P5579258662923673111.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P4573939990640331201

`∩[A106927(n+1), A139852(n+1)]`
-/

namespace A139878.P4573939990640331201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P4573939990640331201

namespace A139878

/-- `∩[A106927(n+1), A139852(n+1)]` -/
def P4573939990640331201.Spec : Prop :=
  ∀ n, (P4573939990640331201.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P13002732530184812460

`∩[A007522(n+1), A102273(n+1)]`
-/

namespace A139878.P13002732530184812460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P13002732530184812460

namespace A139878

/-- `∩[A007522(n+1), A102273(n+1)]` -/
def P13002732530184812460.Spec : Prop :=
  ∀ n, (P13002732530184812460.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P15526674125743478874

`∩[A007522(n+1), A106927(n+1)]`
-/

namespace A139878.P15526674125743478874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P15526674125743478874

namespace A139878

/-- `∩[A007522(n+1), A106927(n+1)]` -/
def P15526674125743478874.Spec : Prop :=
  ∀ n, (P15526674125743478874.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P5354440046620939615

`∩[A007522(n+1), A107148(n+1)]`
-/

namespace A139878.P5354440046620939615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P5354440046620939615

namespace A139878

/-- `∩[A007522(n+1), A107148(n+1)]` -/
def P5354440046620939615.Spec : Prop :=
  ∀ n, (P5354440046620939615.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P6447118559883883732

`∩[A045382(n+1), A102273(n+1)]`
-/

namespace A139878.P6447118559883883732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P6447118559883883732

namespace A139878

/-- `∩[A045382(n+1), A102273(n+1)]` -/
def P6447118559883883732.Spec : Prop :=
  ∀ n, (P6447118559883883732.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P13183530800519873688

`∩[A107133(n+1), A107148(n+1)]`
-/

namespace A139878.P13183530800519873688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P13183530800519873688

namespace A139878

/-- `∩[A107133(n+1), A107148(n+1)]` -/
def P13183530800519873688.Spec : Prop :=
  ∀ n, (P13183530800519873688.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P5270306080017627653

`∩[A094712(n+1), A102273(n+1)]`
-/

namespace A139878.P5270306080017627653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P5270306080017627653

namespace A139878

/-- `∩[A094712(n+1), A102273(n+1)]` -/
def P5270306080017627653.Spec : Prop :=
  ∀ n, (P5270306080017627653.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P14122770824705671976

`∩[A068231(n+1), A107148(n+1)]`
-/

namespace A139878.P14122770824705671976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P14122770824705671976

namespace A139878

/-- `∩[A068231(n+1), A107148(n+1)]` -/
def P14122770824705671976.Spec : Prop :=
  ∀ n, (P14122770824705671976.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P13607942313192029955

`∩[A068231(n+1), A139852(n+1)]`
-/

namespace A139878.P13607942313192029955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P13607942313192029955

namespace A139878

/-- `∩[A068231(n+1), A139852(n+1)]` -/
def P13607942313192029955.Spec : Prop :=
  ∀ n, (P13607942313192029955.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P13437581945571642426

`∩[A102273(n+1), A141171(n+1)]`
-/

namespace A139878.P13437581945571642426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P13437581945571642426

namespace A139878

/-- `∩[A102273(n+1), A141171(n+1)]` -/
def P13437581945571642426.Spec : Prop :=
  ∀ n, (P13437581945571642426.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P1589402317779222406

`∩[A068231(n+1), A274675(n+1)]`
-/

namespace A139878.P1589402317779222406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P1589402317779222406

namespace A139878

/-- `∩[A068231(n+1), A274675(n+1)]` -/
def P1589402317779222406.Spec : Prop :=
  ∀ n, (P1589402317779222406.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P18144307884503052784

`∩[A139852(n+1), A141123(n+1)]`
-/

namespace A139878.P18144307884503052784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P18144307884503052784

namespace A139878

/-- `∩[A139852(n+1), A141123(n+1)]` -/
def P18144307884503052784.Spec : Prop :=
  ∀ n, (P18144307884503052784.a n : ℤ) = A139878 (n + 1)

end A139878

/-! ## A139878.P384118532830153901

`∩[A014663(n+1), A102273(n+1)]`
-/

namespace A139878.P384118532830153901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P384118532830153901

namespace A139878

/-- `∩[A014663(n+1), A102273(n+1)]` -/
def P384118532830153901.Spec : Prop :=
  ∀ n, (P384118532830153901.a n : ℤ) = A139878 (n + 1)

end A139878

/-!
# A139879: Primes of the form 12x^2+12xy+17y^2.

The programs for A139879, the canonical program `A139879.P5833802946474482157` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139879 has offset 1).

The definition of A139879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139879.P16669279228177301705

`∩[A107147(n+1), A107181(n+1)]`
-/

namespace A139879.P16669279228177301705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P16669279228177301705

namespace A139879

/-- `∩[A107147(n+1), A107181(n+1)]` -/
def P16669279228177301705.Spec : Prop :=
  ∀ n, (P16669279228177301705.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P9797667090711767447

`∩[A106972(n+1), A107147(n+1)]`
-/

namespace A139879.P9797667090711767447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P9797667090711767447

namespace A139879

/-- `∩[A106972(n+1), A107147(n+1)]` -/
def P9797667090711767447.Spec : Prop :=
  ∀ n, (P9797667090711767447.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P5833802946474482157

`∩[A106972(n+1), A107181(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A139879

/-- `∩[A106972(n+1), A107181(n+1)]` -/
def P5833802946474482157.Spec : Prop :=
  ∀ n, (P5833802946474482157.a n : ℤ) = A139879 (n + 1)

theorem P5833802946474482157.correct : P5833802946474482157.Spec := by
  intro n
  simp only [A139879, Nat.add_sub_cancel]

end A139879

/-! ## A139879.P5205484212350098220

`p?[and(-3, A107147(n+1))]`
-/

namespace A139879.P5205484212350098220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A107147 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139879.P5205484212350098220

namespace A139879

/-- `p?[and(-3, A107147(n+1))]` -/
def P5205484212350098220.Spec : Prop :=
  ∀ n, P5205484212350098220.a n = A139879 (n + 1)

end A139879

/-! ## A139879.P12983982420525428753

`∩[A007519(n+1), A106972(n+1)]`
-/

namespace A139879.P12983982420525428753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P12983982420525428753

namespace A139879

/-- `∩[A007519(n+1), A106972(n+1)]` -/
def P12983982420525428753.Spec : Prop :=
  ∀ n, (P12983982420525428753.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P16097587757930165182

`∩[A007519(n+1), A107147(n+1)]`
-/

namespace A139879.P16097587757930165182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P16097587757930165182

namespace A139879

/-- `∩[A007519(n+1), A107147(n+1)]` -/
def P16097587757930165182.Spec : Prop :=
  ∀ n, (P16097587757930165182.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P3346270124289368437

`∩[A045390(n+1), A106972(n+1)]`
-/

namespace A139879.P3346270124289368437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P3346270124289368437

namespace A139879

/-- `∩[A045390(n+1), A106972(n+1)]` -/
def P3346270124289368437.Spec : Prop :=
  ∀ n, (P3346270124289368437.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P14690245322948318203

`∩[A045390(n+1), A107147(n+1)]`
-/

namespace A139879.P14690245322948318203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P14690245322948318203

namespace A139879

/-- `∩[A045390(n+1), A107147(n+1)]` -/
def P14690245322948318203.Spec : Prop :=
  ∀ n, (P14690245322948318203.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P2269540280886040911

`∩[A106972(n+1), A209544(n+1)]`
-/

namespace A139879.P2269540280886040911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P2269540280886040911

namespace A139879

/-- `∩[A106972(n+1), A209544(n+1)]` -/
def P2269540280886040911.Spec : Prop :=
  ∀ n, (P2269540280886040911.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P3530860453979666455

`∩[A106972(n+1), A290402(n+1)]`
-/

namespace A139879.P3530860453979666455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P3530860453979666455

namespace A139879

/-- `∩[A106972(n+1), A290402(n+1)]` -/
def P3530860453979666455.Spec : Prop :=
  ∀ n, (P3530860453979666455.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P10971087433350468238

`∩[A040117(n+1), A107147(n+1)]`
-/

namespace A139879.P10971087433350468238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P10971087433350468238

namespace A139879

/-- `∩[A040117(n+1), A107147(n+1)]` -/
def P10971087433350468238.Spec : Prop :=
  ∀ n, (P10971087433350468238.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P11118928473080953081

`∩[A106949(n+1), A106972(n+1)]`
-/

namespace A139879.P11118928473080953081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P11118928473080953081

namespace A139879

/-- `∩[A106949(n+1), A106972(n+1)]` -/
def P11118928473080953081.Spec : Prop :=
  ∀ n, (P11118928473080953081.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P7010085558142785080

`∩[A107147(n+1), A243183(n+1)]`
-/

namespace A139879.P7010085558142785080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P7010085558142785080

namespace A139879

/-- `∩[A107147(n+1), A243183(n+1)]` -/
def P7010085558142785080.Spec : Prop :=
  ∀ n, (P7010085558142785080.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P6815327770435476194

`∩[A106972(n+1), A256397(n+1)]`
-/

namespace A139879.P6815327770435476194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P6815327770435476194

namespace A139879

/-- `∩[A106972(n+1), A256397(n+1)]` -/
def P6815327770435476194.Spec : Prop :=
  ∀ n, (P6815327770435476194.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P12772535200795314918

`∩[A107147(n+1), A256397(n+1)]`
-/

namespace A139879.P12772535200795314918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P12772535200795314918

namespace A139879

/-- `∩[A107147(n+1), A256397(n+1)]` -/
def P12772535200795314918.Spec : Prop :=
  ∀ n, (P12772535200795314918.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P10637326480746641132

`∩[A007519(n+1), A141160(n+1)]`
-/

namespace A139879.P10637326480746641132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P10637326480746641132

namespace A139879

/-- `∩[A007519(n+1), A141160(n+1)]` -/
def P10637326480746641132.Spec : Prop :=
  ∀ n, (P10637326480746641132.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P13374246576264735568

`∩[A045390(n+1), A141160(n+1)]`
-/

namespace A139879.P13374246576264735568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P13374246576264735568

namespace A139879

/-- `∩[A045390(n+1), A141160(n+1)]` -/
def P13374246576264735568.Spec : Prop :=
  ∀ n, (P13374246576264735568.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P5518440978253131767

`∩[A004625(n+1), A106972(n+1)]`
-/

namespace A139879.P5518440978253131767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P5518440978253131767

namespace A139879

/-- `∩[A004625(n+1), A106972(n+1)]` -/
def P5518440978253131767.Spec : Prop :=
  ∀ n, (P5518440978253131767.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P1300787389745206606

`∩[A004625(n+1), A107147(n+1)]`
-/

namespace A139879.P1300787389745206606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P1300787389745206606

namespace A139879

/-- `∩[A004625(n+1), A107147(n+1)]` -/
def P1300787389745206606.Spec : Prop :=
  ∀ n, (P1300787389745206606.a n : ℤ) = A139879 (n + 1)

end A139879

/-! ## A139879.P13270023183581939046

`∩[A004625(n+1), A141160(n+1)]`
-/

namespace A139879.P13270023183581939046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139879.P13270023183581939046

namespace A139879

/-- `∩[A004625(n+1), A141160(n+1)]` -/
def P13270023183581939046.Spec : Prop :=
  ∀ n, (P13270023183581939046.a n : ℤ) = A139879 (n + 1)

end A139879

/-!
# A139880: Primes of the form 13x^2+2xy+13y^2.

The programs for A139880, the canonical program `A139880.P8297169787361859027` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139880 has offset 1).

The definition of A139880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139880.P7899044290008475377

`∩[A107146(n+1), A139530(n+1)]`
-/

namespace A139880.P7899044290008475377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P7899044290008475377

namespace A139880

/-- `∩[A107146(n+1), A139530(n+1)]` -/
def P7899044290008475377.Spec : Prop :=
  ∀ n, (P7899044290008475377.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P2943975945082041295

`∩[A068228(n+1), A107146(n+1)]`
-/

namespace A139880.P2943975945082041295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P2943975945082041295

namespace A139880

/-- `∩[A068228(n+1), A107146(n+1)]` -/
def P2943975945082041295.Spec : Prop :=
  ∀ n, (P2943975945082041295.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P14951671887867724297

`∩[A007521(n+1), A107146(n+1)]`
-/

namespace A139880.P14951671887867724297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P14951671887867724297

namespace A139880

/-- `∩[A007521(n+1), A107146(n+1)]` -/
def P14951671887867724297.Spec : Prop :=
  ∀ n, (P14951671887867724297.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P14095365028393075686

`∩[A045366(n+1), A107146(n+1)]`
-/

namespace A139880.P14095365028393075686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P14095365028393075686

namespace A139880

/-- `∩[A045366(n+1), A107146(n+1)]` -/
def P14095365028393075686.Spec : Prop :=
  ∀ n, (P14095365028393075686.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P12331350424749863519

`∩[A068228(n+1), A141191(n+1)]`
-/

namespace A139880.P12331350424749863519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P12331350424749863519

namespace A139880

/-- `∩[A068228(n+1), A141191(n+1)]` -/
def P12331350424749863519.Spec : Prop :=
  ∀ n, (P12331350424749863519.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P12430446171204265381

`∩[A139530(n+1), A141191(n+1)]`
-/

namespace A139880.P12430446171204265381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P12430446171204265381

namespace A139880

/-- `∩[A139530(n+1), A141191(n+1)]` -/
def P12430446171204265381.Spec : Prop :=
  ∀ n, (P12430446171204265381.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P8297169787361859027

`∩[A068228(n+1), A106915(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139880

/-- `∩[A068228(n+1), A106915(n+1)]` -/
def P8297169787361859027.Spec : Prop :=
  ∀ n, (P8297169787361859027.a n : ℤ) = A139880 (n + 1)

theorem P8297169787361859027.correct : P8297169787361859027.Spec := by
  intro n
  simp only [A139880, Nat.add_sub_cancel]

end A139880

/-! ## A139880.P16775747612156127557

`∩[A106915(n+1), A107146(n+1)]`
-/

namespace A139880.P16775747612156127557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P16775747612156127557

namespace A139880

/-- `∩[A106915(n+1), A107146(n+1)]` -/
def P16775747612156127557.Spec : Prop :=
  ∀ n, (P16775747612156127557.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P3887214087428521659

`∩[A106915(n+1), A139530(n+1)]`
-/

namespace A139880.P3887214087428521659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P3887214087428521659

namespace A139880

/-- `∩[A106915(n+1), A139530(n+1)]` -/
def P3887214087428521659.Spec : Prop :=
  ∀ n, (P3887214087428521659.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P16429869975685960790

`∩[A106915(n+1), A351537(n+1)]`
-/

namespace A139880.P16429869975685960790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P16429869975685960790

namespace A139880

/-- `∩[A106915(n+1), A351537(n+1)]` -/
def P16429869975685960790.Spec : Prop :=
  ∀ n, (P16429869975685960790.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P757129978379473329

`∩[A107146(n+1), A351537(n+1)]`
-/

namespace A139880.P757129978379473329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P757129978379473329

namespace A139880

/-- `∩[A107146(n+1), A351537(n+1)]` -/
def P757129978379473329.Spec : Prop :=
  ∀ n, (P757129978379473329.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P4356868090594571025

`∩[A141191(n+1), A351537(n+1)]`
-/

namespace A139880.P4356868090594571025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P4356868090594571025

namespace A139880

/-- `∩[A141191(n+1), A351537(n+1)]` -/
def P4356868090594571025.Spec : Prop :=
  ∀ n, (P4356868090594571025.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P478858373410256981

`∩[A106915(n+1), A354467(n+1)]`
-/

namespace A139880.P478858373410256981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P478858373410256981

namespace A139880

/-- `∩[A106915(n+1), A354467(n+1)]` -/
def P478858373410256981.Spec : Prop :=
  ∀ n, (P478858373410256981.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P8790705380816750576

`∩[A107146(n+1), A354467(n+1)]`
-/

namespace A139880.P8790705380816750576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P8790705380816750576

namespace A139880

/-- `∩[A107146(n+1), A354467(n+1)]` -/
def P8790705380816750576.Spec : Prop :=
  ∀ n, (P8790705380816750576.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P6727797521354994468

`∩[A141191(n+1), A354467(n+1)]`
-/

namespace A139880.P6727797521354994468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P6727797521354994468

namespace A139880

/-- `∩[A141191(n+1), A354467(n+1)]` -/
def P6727797521354994468.Spec : Prop :=
  ∀ n, (P6727797521354994468.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P7115559287596013551

`∩[A107146(n+1), A385224(n+1)]`
-/

namespace A139880.P7115559287596013551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P7115559287596013551

namespace A139880

/-- `∩[A107146(n+1), A385224(n+1)]` -/
def P7115559287596013551.Spec : Prop :=
  ∀ n, (P7115559287596013551.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P9447712912195077933

`∩[A107146(n+1), A392947(n+1)]`
-/

namespace A139880.P9447712912195077933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P9447712912195077933

namespace A139880

/-- `∩[A107146(n+1), A392947(n+1)]` -/
def P9447712912195077933.Spec : Prop :=
  ∀ n, (P9447712912195077933.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P11345018273587683790

`∩[A004627(n+1), A107146(n+1)]`
-/

namespace A139880.P11345018273587683790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P11345018273587683790

namespace A139880

/-- `∩[A004627(n+1), A107146(n+1)]` -/
def P11345018273587683790.Spec : Prop :=
  ∀ n, (P11345018273587683790.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P9177364132901404121

`∩[A038885(n+1), A139530(n+1)]`
-/

namespace A139880.P9177364132901404121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P9177364132901404121

namespace A139880

/-- `∩[A038885(n+1), A139530(n+1)]` -/
def P9177364132901404121.Spec : Prop :=
  ∀ n, (P9177364132901404121.a n : ℤ) = A139880 (n + 1)

end A139880

/-! ## A139880.P4974056155170976438

`∩[A038885(n+1), A348845(n)+2]`
-/

namespace A139880.P4974056155170976438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139880.P4974056155170976438

namespace A139880

/-- `∩[A038885(n+1), A348845(n)+2]` -/
def P4974056155170976438.Spec : Prop :=
  ∀ n, (P4974056155170976438.a n : ℤ) = A139880 (n + 1)

end A139880

/-!
# A139881: Primes of the form 2x^2+2xy+89y^2.

The programs for A139881, there is no canonical definition to state claims against.
-/

/-! ## A139881.P13021919692763171342

`∩[A038940(n+1), A243183(n+1)]`
-/

namespace A139881.P13021919692763171342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139881.P13021919692763171342

/-! ## A139881.P394741631153428723

`∩[A191075(n+1), A243183(n+1)]`
-/

namespace A139881.P394741631153428723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139881.P394741631153428723

/-! ## A139881.P619588845115957997

`∩[A083031(n+1)+2, A191075(n+1)]`
-/

namespace A139881.P619588845115957997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139881.P619588845115957997

/-! ## A139881.P1857006458070593172

`∩[A083030(n+1)-2, A191075(n+1)]`
-/

namespace A139881.P1857006458070593172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139881.P1857006458070593172

/-! ## A139881.P12781163678740790854

`∩[A083032(n+1)-2, A191075(n+1)]`
-/

namespace A139881.P12781163678740790854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139881.P12781163678740790854

/-!
# A139882: Primes of the form 3x^2+59y^2.

The programs for A139882, there is no canonical definition to state claims against.
-/

/-! ## A139882.P1318436663107641134

`∩[A141123(n+1), A374156(n+1)]`
-/

namespace A139882.P1318436663107641134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139882.P1318436663107641134

/-! ## A139882.P14021884498896667624

`∩[A141187(n+1), A374156(n+1)]`
-/

namespace A139882.P14021884498896667624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139882.P14021884498896667624

/-! ## A139882.P16097506230150684858

`∩[A243169(n+1), A374156(n+1)]`
-/

namespace A139882.P16097506230150684858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139882.P16097506230150684858

/-!
# A139883: Primes of the form 6x^2+6xy+31y^2.

The programs for A139883, there is no canonical definition to state claims against.
-/

/-! ## A139883.P18268799074053986427

`∩[A038939(n+1), A068229(n+1)]`
-/

namespace A139883.P18268799074053986427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P18268799074053986427

/-! ## A139883.P9800778013124083684

`∩[A038939(n+1), A332514(n+1)]`
-/

namespace A139883.P9800778013124083684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P9800778013124083684

/-! ## A139883.P12477169051455348852

`∩[A068229(n+1), A191075(n+1)]`
-/

namespace A139883.P12477169051455348852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P12477169051455348852

/-! ## A139883.P13580276895136547195

`∩[A191075(n+1), A332514(n+1)]`
-/

namespace A139883.P13580276895136547195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P13580276895136547195

/-! ## A139883.P5338733780552641223

`∩[A038939(n+1), A017605(n)]`
-/

namespace A139883.P5338733780552641223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P5338733780552641223

/-! ## A139883.P7589205283648410432

`∩[A191075(n+1), A017605(n)]`
-/

namespace A139883.P7589205283648410432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P7589205283648410432

/-! ## A139883.P4978591827023464214

`∩[A020677(n+1), A038939(n+1)]`
-/

namespace A139883.P4978591827023464214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P4978591827023464214

/-! ## A139883.P10362179603214347920

`∩[A020677(n+1), A191075(n+1)]`
-/

namespace A139883.P10362179603214347920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P10362179603214347920

/-! ## A139883.P15057592732355192798

`∩[A038939(n+1), A092899(n)]`
-/

namespace A139883.P15057592732355192798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P15057592732355192798

/-! ## A139883.P7551277146749896283

`∩[A191075(n+1), A092899(n)]`
-/

namespace A139883.P7551277146749896283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P7551277146749896283

/-! ## A139883.P13087161417417769418

`∩[A038939(n+1), A272975(n+1)]`
-/

namespace A139883.P13087161417417769418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P13087161417417769418

/-! ## A139883.P2149477002808885751

`∩[A191075(n+1), A272975(n+1)]`
-/

namespace A139883.P2149477002808885751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P2149477002808885751

/-! ## A139883.P7744736464953326941

`∩[A038939(n+1), A083030(n+1)]`
-/

namespace A139883.P7744736464953326941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P7744736464953326941

/-! ## A139883.P13326210075260574483

`∩[A038939(n+1), A083031(n+1)]`
-/

namespace A139883.P13326210075260574483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P13326210075260574483

/-! ## A139883.P1786968465925418594

`∩[A083030(n+1), A191075(n+1)]`
-/

namespace A139883.P1786968465925418594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P1786968465925418594

/-! ## A139883.P16241944360151849111

`∩[A083031(n+1), A191075(n+1)]`
-/

namespace A139883.P16241944360151849111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P16241944360151849111

/-! ## A139883.P9270672221017967751

`∩[A013574(n+1), A038939(n+1)]`
-/

namespace A139883.P9270672221017967751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P9270672221017967751

/-! ## A139883.P4126567587487970740

`∩[A038939(n+1), A083032(n+1)]`
-/

namespace A139883.P4126567587487970740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P4126567587487970740

/-! ## A139883.P1063012978753884305

`∩[A013574(n+1), A191075(n+1)]`
-/

namespace A139883.P1063012978753884305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P1063012978753884305

/-! ## A139883.P9469811827789878039

`∩[A083032(n+1), A191075(n+1)]`
-/

namespace A139883.P9469811827789878039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139883.P9469811827789878039

/-!
# A139884: Primes of the form 2x^2+95y^2.

The programs for A139884, there is no canonical definition to state claims against.
-/

/-! ## A139884.P3325217252852767577

`A000040(eq[A029400(n), A059396(n+1)])`
-/

namespace A139884.P3325217252852767577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A139884.P3325217252852767577

/-!
# A139885: Primes of the form 5x^2+38y^2.

The programs for A139885, there is no canonical definition to state claims against.
-/

/-! ## A139885.P3352225302073131485

`∪[A139978(n+1), A139982(n+1)]`
-/

namespace A139885.P3352225302073131485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139885.P3352225302073131485

/-! ## A139885.P12561533263812722560

`∩[A106863(n+1), A141179(n+1)]`
-/

namespace A139885.P12561533263812722560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139885.P12561533263812722560

/-! ## A139885.P87169277570225997

`∩[A141179(n+1), A191019(n+1)]`
-/

namespace A139885.P87169277570225997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139885.P87169277570225997

/-! ## A139885.P4804048781768838232

`∩[A141179(n+1), A341787(n+1)]`
-/

namespace A139885.P4804048781768838232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139885.P4804048781768838232

/-! ## A139885.P1982702984569904575

`∩[A141179(n+1), A191069(n+1)]`
-/

namespace A139885.P1982702984569904575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139885.P1982702984569904575

/-! ## A139885.P9344274793849476147

`∩[A035243(n+1), A141179(n+1)]`
-/

namespace A139885.P9344274793849476147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139885.P9344274793849476147

/-!
# A139886: Primes of the form 10x^2 + 19y^2.

The programs for A139886, there is no canonical definition to state claims against.
-/

/-! ## A139886.P16929120851265962193

`∪[A139981(n+1), A139983(n+1)]`
-/

namespace A139886.P16929120851265962193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139981 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139886.P16929120851265962193

/-!
# A139887: Primes of the form 2x^2+105y^2.

The programs for A139887, the canonical program `A139887.P8075278152614741056` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139887 has offset 1).

The definition of A139887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139887.P8075278152614741056

`∩[A106859(n+1), A141190(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139887

/-- `∩[A106859(n+1), A141190(n+1)]` -/
def P8075278152614741056.Spec : Prop :=
  ∀ n, (P8075278152614741056.a n : ℤ) = A139887 (n + 1)

theorem P8075278152614741056.correct : P8075278152614741056.Spec := by
  intro n
  simp only [A139887, Nat.add_sub_cancel]

end A139887

/-! ## A139887.P14444073183383290035

`∩[A141190(n+1), A343241(n+1)]`
-/

namespace A139887.P14444073183383290035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139887.P14444073183383290035

namespace A139887

/-- `∩[A141190(n+1), A343241(n+1)]` -/
def P14444073183383290035.Spec : Prop :=
  ∀ n, (P14444073183383290035.a n : ℤ) = A139887 (n + 1)

end A139887

/-! ## A139887.P18013485949152873364

`∩[A028955(n+1), A141190(n+1)]`
-/

namespace A139887.P18013485949152873364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139887.P18013485949152873364

namespace A139887

/-- `∩[A028955(n+1), A141190(n+1)]` -/
def P18013485949152873364.Spec : Prop :=
  ∀ n, (P18013485949152873364.a n : ℤ) = A139887 (n + 1)

end A139887

/-!
# A139888: Primes of the form 3x^2+70y^2.

The programs for A139888, there is no canonical definition to state claims against.
-/

/-! ## A139888.P14582491369745313668

`∪[A139984(n+1), A139990(n+1)]`
-/

namespace A139888.P14582491369745313668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139888.P14582491369745313668

/-! ## A139888.P18039093392573346489

`∩[A106878(n+1), A141170(n+1)]`
-/

namespace A139888.P18039093392573346489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139888.P18039093392573346489

/-! ## A139888.P2264965960028824412

`∩[A106878(n+1), A155564(n+1)]`
-/

namespace A139888.P2264965960028824412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139888.P2264965960028824412

/-!
# A139889: Primes of the form 5x^2+42y^2.

The programs for A139889, the canonical program `A139889.P4754066223454395904` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139889 has offset 1).

The definition of A139889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139889.P4754066223454395904

`∪[A139986(n+1), A139992(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139889

/-- `∪[A139986(n+1), A139992(n+1)]` -/
def P4754066223454395904.Spec : Prop :=
  ∀ n, (P4754066223454395904.a n : ℤ) = A139889 (n + 1)

theorem P4754066223454395904.correct : P4754066223454395904.Spec := by
  intro n
  simp only [A139889, Nat.add_sub_cancel]

end A139889

/-! ## A139889.P4145447663963418126

`∩[A106878(n+1), A141171(n+1)]`
-/

namespace A139889.P4145447663963418126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139889.P4145447663963418126

namespace A139889

/-- `∩[A106878(n+1), A141171(n+1)]` -/
def P4145447663963418126.Spec : Prop :=
  ∀ n, (P4145447663963418126.a n : ℤ) = A139889 (n + 1)

end A139889

/-! ## A139889.P7249433849608639160

`∩[A106859(n+1), A141191(n+1)]`
-/

namespace A139889.P7249433849608639160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139889.P7249433849608639160

namespace A139889

/-- `∩[A106859(n+1), A141191(n+1)]` -/
def P7249433849608639160.Spec : Prop :=
  ∀ n, (P7249433849608639160.a n : ℤ) = A139889 (n + 1)

end A139889

/-! ## A139889.P7556318627389653960

`∩[A106889(n+1), A141160(n+1)]`
-/

namespace A139889.P7556318627389653960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139889.P7556318627389653960

namespace A139889

/-- `∩[A106889(n+1), A141160(n+1)]` -/
def P7556318627389653960.Spec : Prop :=
  ∀ n, (P7556318627389653960.a n : ℤ) = A139889 (n + 1)

end A139889

/-! ## A139889.P16534591495805040292

`∩[A020678(n+1), A141191(n+1)]`
-/

namespace A139889.P16534591495805040292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139889.P16534591495805040292

namespace A139889

/-- `∩[A020678(n+1), A141191(n+1)]` -/
def P16534591495805040292.Spec : Prop :=
  ∀ n, (P16534591495805040292.a n : ℤ) = A139889 (n + 1)

end A139889

/-! ## A139889.P2070747202427775610

`∩[A020674(n+1), A141160(n+1)]`
-/

namespace A139889.P2070747202427775610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139889.P2070747202427775610

namespace A139889

/-- `∩[A020674(n+1), A141160(n+1)]` -/
def P2070747202427775610.Spec : Prop :=
  ∀ n, (P2070747202427775610.a n : ℤ) = A139889 (n + 1)

end A139889

/-! ## A139889.P9752478395398435593

`∩[A106878(n+1), A242665(n+1)]`
-/

namespace A139889.P9752478395398435593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139889.P9752478395398435593

namespace A139889

/-- `∩[A106878(n+1), A242665(n+1)]` -/
def P9752478395398435593.Spec : Prop :=
  ∀ n, (P9752478395398435593.a n : ℤ) = A139889 (n + 1)

end A139889

/-! ## A139889.P295139170099647003

`∩[A028955(n+1), A141191(n+1)]`
-/

namespace A139889.P295139170099647003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139889.P295139170099647003

namespace A139889

/-- `∩[A028955(n+1), A141191(n+1)]` -/
def P295139170099647003.Spec : Prop :=
  ∀ n, (P295139170099647003.a n : ℤ) = A139889 (n + 1)

end A139889

/-!
# A139890: Primes of the form 6x^2+35y^2.

The programs for A139890, the canonical program `A139890.P459811890116219402` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139890 has offset 1).

The definition of A139890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139890.P459811890116219402

`∪[A139994(n+1), A139995(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A139890

/-- `∪[A139994(n+1), A139995(n+1)]` -/
def P459811890116219402.Spec : Prop :=
  ∀ n, (P459811890116219402.a n : ℤ) = A139890 (n + 1)

theorem P459811890116219402.correct : P459811890116219402.Spec := by
  intro n
  simp only [A139890, Nat.add_sub_cancel]

end A139890

/-! ## A139890.P16367533019168002945

`∩[A033201(n+1), A107147(n+1)]`
-/

namespace A139890.P16367533019168002945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P16367533019168002945

namespace A139890

/-- `∩[A033201(n+1), A107147(n+1)]` -/
def P16367533019168002945.Spec : Prop :=
  ∀ n, (P16367533019168002945.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P14578878568853271721

`∩[A033201(n+1), A141160(n+1)]`
-/

namespace A139890.P14578878568853271721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P14578878568853271721

namespace A139890

/-- `∩[A033201(n+1), A141160(n+1)]` -/
def P14578878568853271721.Spec : Prop :=
  ∀ n, (P14578878568853271721.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P13965536854191849737

`∩[A107147(n+1), A141785(n+1)]`
-/

namespace A139890.P13965536854191849737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P13965536854191849737

namespace A139890

/-- `∩[A107147(n+1), A141785(n+1)]` -/
def P13965536854191849737.Spec : Prop :=
  ∀ n, (P13965536854191849737.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P10881446978212715576

`∩[A040998(n+1), A107147(n+1)]`
-/

namespace A139890.P10881446978212715576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P10881446978212715576

namespace A139890

/-- `∩[A040998(n+1), A107147(n+1)]` -/
def P10881446978212715576.Spec : Prop :=
  ∀ n, (P10881446978212715576.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P985286813347508970

`∩[A038872(n+1), A107147(n+1)]`
-/

namespace A139890.P985286813347508970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P985286813347508970

namespace A139890

/-- `∩[A038872(n+1), A107147(n+1)]` -/
def P985286813347508970.Spec : Prop :=
  ∀ n, (P985286813347508970.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P10043027437603143041

`∩[A045468(n+1), A107147(n+1)]`
-/

namespace A139890.P10043027437603143041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P10043027437603143041

namespace A139890

/-- `∩[A045468(n+1), A107147(n+1)]` -/
def P10043027437603143041.Spec : Prop :=
  ∀ n, (P10043027437603143041.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P3007613197092827246

`∩[A064739(n+1), A107147(n+1)]`
-/

namespace A139890.P3007613197092827246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P3007613197092827246

namespace A139890

/-- `∩[A064739(n+1), A107147(n+1)]` -/
def P3007613197092827246.Spec : Prop :=
  ∀ n, (P3007613197092827246.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P1546254324568263760

`∩[A107147(n+1), A293859(n+1)]`
-/

namespace A139890.P1546254324568263760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P1546254324568263760

namespace A139890

/-- `∩[A107147(n+1), A293859(n+1)]` -/
def P1546254324568263760.Spec : Prop :=
  ∀ n, (P1546254324568263760.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P10068064277815324072

`∩[A076518(n+1), A107147(n+1)]`
-/

namespace A139890.P10068064277815324072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P10068064277815324072

namespace A139890

/-- `∩[A076518(n+1), A107147(n+1)]` -/
def P10068064277815324072.Spec : Prop :=
  ∀ n, (P10068064277815324072.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P7775874323707436977

`∩[A038954(n+1), A107147(n+1)]`
-/

namespace A139890.P7775874323707436977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P7775874323707436977

namespace A139890

/-- `∩[A038954(n+1), A107147(n+1)]` -/
def P7775874323707436977.Spec : Prop :=
  ∀ n, (P7775874323707436977.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P6424314486313273063

`∩[A107147(n+1), A191062(n+1)]`
-/

namespace A139890.P6424314486313273063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P6424314486313273063

namespace A139890

/-- `∩[A107147(n+1), A191062(n+1)]` -/
def P6424314486313273063.Spec : Prop :=
  ∀ n, (P6424314486313273063.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P702860269724468496

`∩[A107147(n+1), A341783(n+1)]`
-/

namespace A139890.P702860269724468496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P702860269724468496

namespace A139890

/-- `∩[A107147(n+1), A341783(n+1)]` -/
def P702860269724468496.Spec : Prop :=
  ∀ n, (P702860269724468496.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P17739585967264297718

`∩[A038904(n+1), A107147(n+1)]`
-/

namespace A139890.P17739585967264297718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P17739585967264297718

namespace A139890

/-- `∩[A038904(n+1), A107147(n+1)]` -/
def P17739585967264297718.Spec : Prop :=
  ∀ n, (P17739585967264297718.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P5261087517106411824

`∩[A107147(n+1), A191068(n+1)]`
-/

namespace A139890.P5261087517106411824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P5261087517106411824

namespace A139890

/-- `∩[A107147(n+1), A191068(n+1)]` -/
def P5261087517106411824.Spec : Prop :=
  ∀ n, (P5261087517106411824.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P8563803645955825141

`∩[A107147(n+1), A219612(n+1)]`
-/

namespace A139890.P8563803645955825141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P8563803645955825141

namespace A139890

/-- `∩[A107147(n+1), A219612(n+1)]` -/
def P8563803645955825141.Spec : Prop :=
  ∀ n, (P8563803645955825141.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P14826058968791472863

`∩[A023173(n+1), A107147(n+1)]`
-/

namespace A139890.P14826058968791472863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P14826058968791472863

namespace A139890

/-- `∩[A023173(n+1), A107147(n+1)]` -/
def P14826058968791472863.Spec : Prop :=
  ∀ n, (P14826058968791472863.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P14473919942171157614

`∩[A107147(n+1), A336403(n+1)]`
-/

namespace A139890.P14473919942171157614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P14473919942171157614

namespace A139890

/-- `∩[A107147(n+1), A336403(n+1)]` -/
def P14473919942171157614.Spec : Prop :=
  ∀ n, (P14473919942171157614.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P4155976906589610752

`∩[A057538(n+1), A107147(n+1)]`
-/

namespace A139890.P4155976906589610752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P4155976906589610752

namespace A139890

/-- `∩[A057538(n+1), A107147(n+1)]` -/
def P4155976906589610752.Spec : Prop :=
  ∀ n, (P4155976906589610752.a n : ℤ) = A139890 (n + 1)

end A139890

/-! ## A139890.P1877722379360908772

`∩[A107147(n+1), A296716(n+1)]`
-/

namespace A139890.P1877722379360908772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139890.P1877722379360908772

namespace A139890

/-- `∩[A107147(n+1), A296716(n+1)]` -/
def P1877722379360908772.Spec : Prop :=
  ∀ n, (P1877722379360908772.a n : ℤ) = A139890 (n + 1)

end A139890

/-!
# A139891: Primes of the form 7x^2+30y^2.

The programs for A139891, the canonical program `A139891.P13905630513339276774` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139891 has offset 1).

The definition of A139891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139891.P13905630513339276774

`∪[A139987(n+1), A139996(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A139891

/-- `∪[A139987(n+1), A139996(n+1)]` -/
def P13905630513339276774.Spec : Prop :=
  ∀ n, (P13905630513339276774.a n : ℤ) = A139891 (n + 1)

theorem P13905630513339276774.correct : P13905630513339276774.Spec := by
  intro n
  simp only [A139891, Nat.add_sub_cancel]

end A139891

/-! ## A139891.P18188744911222980489

`∩[A106889(n+1), A139492(n+1)]`
-/

namespace A139891.P18188744911222980489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139891.P18188744911222980489

namespace A139891

/-- `∩[A106889(n+1), A139492(n+1)]` -/
def P18188744911222980489.Spec : Prop :=
  ∀ n, (P18188744911222980489.a n : ℤ) = A139891 (n + 1)

end A139891

/-! ## A139891.P4712201030544858180

`∩[A106889(n+1), A243172(n+1)]`
-/

namespace A139891.P4712201030544858180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139891.P4712201030544858180

namespace A139891

/-- `∩[A106889(n+1), A243172(n+1)]` -/
def P4712201030544858180.Spec : Prop :=
  ∀ n, (P4712201030544858180.a n : ℤ) = A139891 (n + 1)

end A139891

/-! ## A139891.P5078981925038058486

`∩[A020674(n+1), A139492(n+1)]`
-/

namespace A139891.P5078981925038058486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139891.P5078981925038058486

namespace A139891

/-- `∩[A020674(n+1), A139492(n+1)]` -/
def P5078981925038058486.Spec : Prop :=
  ∀ n, (P5078981925038058486.a n : ℤ) = A139891 (n + 1)

end A139891

/-!
# A139892: Primes of the form 10x^2+21y^2.

The programs for A139892, there is no canonical definition to state claims against.
-/

/-! ## A139892.P2044875915757681788

`∪[A139993(n+1), A139998(n+1)]`
-/

namespace A139892.P2044875915757681788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P2044875915757681788

/-! ## A139892.P5836932528416000510

`∩[A033212(n+1), A107146(n+1)]`
-/

namespace A139892.P5836932528416000510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P5836932528416000510

/-! ## A139892.P12906306617225608490

`∩[A033212(n+1), A141191(n+1)]`
-/

namespace A139892.P12906306617225608490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P12906306617225608490

/-! ## A139892.P8041807703160559817

`∩[A038872(n+1), A107146(n+1)]`
-/

namespace A139892.P8041807703160559817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P8041807703160559817

/-! ## A139892.P5493824578434186033

`∩[A045468(n+1), A107146(n+1)]`
-/

namespace A139892.P5493824578434186033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P5493824578434186033

/-! ## A139892.P16678413530546963526

`∩[A064739(n+1), A107146(n+1)]`
-/

namespace A139892.P16678413530546963526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P16678413530546963526

/-! ## A139892.P13366397876218451120

`∩[A107146(n+1), A191018(n+1)]`
-/

namespace A139892.P13366397876218451120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P13366397876218451120

/-! ## A139892.P4874390124675912330

`∩[A076518(n+1), A107146(n+1)]`
-/

namespace A139892.P4874390124675912330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P4874390124675912330

/-! ## A139892.P1263772004846760295

`∩[A107146(n+1), A296925(n+1)]`
-/

namespace A139892.P1263772004846760295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P1263772004846760295

/-! ## A139892.P10033889169005782060

`∩[A107146(n+1), A341783(n+1)]`
-/

namespace A139892.P10033889169005782060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P10033889169005782060

/-! ## A139892.P5634371127212981043

`∩[A107146(n+1), A341786(n+1)]`
-/

namespace A139892.P5634371127212981043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P5634371127212981043

/-! ## A139892.P13315772355134680959

`∩[A107146(n+1), A191068(n+1)]`
-/

namespace A139892.P13315772355134680959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P13315772355134680959

/-! ## A139892.P3726193931388978407

`∩[A038904(n+1), A107146(n+1)]`
-/

namespace A139892.P3726193931388978407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P3726193931388978407

/-! ## A139892.P13743563605718729511

`∩[A107146(n+1), A390422(n+1)]`
-/

namespace A139892.P13743563605718729511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P13743563605718729511

/-! ## A139892.P2654769364262760066

`∩[A141191(n+1), A390422(n+1)]`
-/

namespace A139892.P2654769364262760066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P2654769364262760066

/-! ## A139892.P6195060622914031798

`∩[A107146(n+1), A219612(n+1)]`
-/

namespace A139892.P6195060622914031798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P6195060622914031798

/-! ## A139892.P12401411726513560974

`∩[A023173(n+1), A107146(n+1)]`
-/

namespace A139892.P12401411726513560974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P12401411726513560974

/-! ## A139892.P8091981829708832653

`∩[A107146(n+1), A336403(n+1)]`
-/

namespace A139892.P8091981829708832653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P8091981829708832653

/-! ## A139892.P17860712395382800867

`∩[A020689(n+1), A033212(n+1)]`
-/

namespace A139892.P17860712395382800867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P17860712395382800867

/-! ## A139892.P13235463833399030149

`∩[A020689(n+1), A038872(n+1)]`
-/

namespace A139892.P13235463833399030149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139892.P13235463833399030149

/-!
# A139893: Primes of the form 14x^2+15y^2.

The programs for A139893, the canonical program `A139893.P10485135326994439594` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139893 has offset 1).

The definition of A139893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139893.P10485135326994439594

`∪[A139991(n+1), A139997(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A139893

/-- `∪[A139991(n+1), A139997(n+1)]` -/
def P10485135326994439594.Spec : Prop :=
  ∀ n, (P10485135326994439594.a n : ℤ) = A139893 (n + 1)

theorem P10485135326994439594.correct : P10485135326994439594.Spec := by
  intro n
  simp only [A139893, Nat.add_sub_cancel]

end A139893

/-! ## A139893.P14178476147971857283

`∩[A106881(n+1), A107148(n+1)]`
-/

namespace A139893.P14178476147971857283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P14178476147971857283

namespace A139893

/-- `∩[A106881(n+1), A107148(n+1)]` -/
def P14178476147971857283.Spec : Prop :=
  ∀ n, (P14178476147971857283.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P3149641706890344806

`∩[A106881(n+1), A141171(n+1)]`
-/

namespace A139893.P3149641706890344806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P3149641706890344806

namespace A139893

/-- `∩[A106881(n+1), A141171(n+1)]` -/
def P3149641706890344806.Spec : Prop :=
  ∀ n, (P3149641706890344806.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P8166735226250629688

`∩[A107148(n+1), A141785(n+1)]`
-/

namespace A139893.P8166735226250629688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P8166735226250629688

namespace A139893

/-- `∩[A107148(n+1), A141785(n+1)]` -/
def P8166735226250629688.Spec : Prop :=
  ∀ n, (P8166735226250629688.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P15498804410562862805

`∩[A038872(n+1), A107148(n+1)]`
-/

namespace A139893.P15498804410562862805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P15498804410562862805

namespace A139893

/-- `∩[A038872(n+1), A107148(n+1)]` -/
def P15498804410562862805.Spec : Prop :=
  ∀ n, (P15498804410562862805.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P2251421500198262910

`∩[A045468(n+1), A107148(n+1)]`
-/

namespace A139893.P2251421500198262910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P2251421500198262910

namespace A139893

/-- `∩[A045468(n+1), A107148(n+1)]` -/
def P2251421500198262910.Spec : Prop :=
  ∀ n, (P2251421500198262910.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P13767887702388871523

`∩[A097959(n+1), A107148(n+1)]`
-/

namespace A139893.P13767887702388871523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P13767887702388871523

namespace A139893

/-- `∩[A097959(n+1), A107148(n+1)]` -/
def P13767887702388871523.Spec : Prop :=
  ∀ n, (P13767887702388871523.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P7345239235860275687

`∩[A107148(n+1), A191026(n+1)]`
-/

namespace A139893.P7345239235860275687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P7345239235860275687

namespace A139893

/-- `∩[A107148(n+1), A191026(n+1)]` -/
def P7345239235860275687.Spec : Prop :=
  ∀ n, (P7345239235860275687.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P16514736412709591517

`∩[A038954(n+1), A107148(n+1)]`
-/

namespace A139893.P16514736412709591517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P16514736412709591517

namespace A139893

/-- `∩[A038954(n+1), A107148(n+1)]` -/
def P16514736412709591517.Spec : Prop :=
  ∀ n, (P16514736412709591517.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P7483095049248064192

`∩[A107148(n+1), A341783(n+1)]`
-/

namespace A139893.P7483095049248064192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P7483095049248064192

namespace A139893

/-- `∩[A107148(n+1), A341783(n+1)]` -/
def P7483095049248064192.Spec : Prop :=
  ∀ n, (P7483095049248064192.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P15022833166542801830

`∩[A107148(n+1), A296925(n+1)]`
-/

namespace A139893.P15022833166542801830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P15022833166542801830

namespace A139893

/-- `∩[A107148(n+1), A296925(n+1)]` -/
def P15022833166542801830.Spec : Prop :=
  ∀ n, (P15022833166542801830.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P12563435036454314845

`∩[A107148(n+1), A191062(n+1)]`
-/

namespace A139893.P12563435036454314845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P12563435036454314845

namespace A139893

/-- `∩[A107148(n+1), A191062(n+1)]` -/
def P12563435036454314845.Spec : Prop :=
  ∀ n, (P12563435036454314845.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P5990328222918498173

`∩[A107148(n+1), A219612(n+1)]`
-/

namespace A139893.P5990328222918498173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P5990328222918498173

namespace A139893

/-- `∩[A107148(n+1), A219612(n+1)]` -/
def P5990328222918498173.Spec : Prop :=
  ∀ n, (P5990328222918498173.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P10190951954486310966

`∩[A107148(n+1), A336403(n+1)]`
-/

namespace A139893.P10190951954486310966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P10190951954486310966

namespace A139893

/-- `∩[A107148(n+1), A336403(n+1)]` -/
def P10190951954486310966.Spec : Prop :=
  ∀ n, (P10190951954486310966.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P6748779196793487152

`∩[A057538(n+1), A107148(n+1)]`
-/

namespace A139893.P6748779196793487152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P6748779196793487152

namespace A139893

/-- `∩[A057538(n+1), A107148(n+1)]` -/
def P6748779196793487152.Spec : Prop :=
  ∀ n, (P6748779196793487152.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P9606054773806491810

`∩[A107148(n+1), A296716(n+1)]`
-/

namespace A139893.P9606054773806491810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P9606054773806491810

namespace A139893

/-- `∩[A107148(n+1), A296716(n+1)]` -/
def P9606054773806491810.Spec : Prop :=
  ∀ n, (P9606054773806491810.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P12630151063364430440

`∩[A107148(n+1), A299250(n+1)]`
-/

namespace A139893.P12630151063364430440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P12630151063364430440

namespace A139893

/-- `∩[A107148(n+1), A299250(n+1)]` -/
def P12630151063364430440.Spec : Prop :=
  ∀ n, (P12630151063364430440.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P2944610426913064486

`∩[A106881(n+1), A242665(n+1)]`
-/

namespace A139893.P2944610426913064486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P2944610426913064486

namespace A139893

/-- `∩[A106881(n+1), A242665(n+1)]` -/
def P2944610426913064486.Spec : Prop :=
  ∀ n, (P2944610426913064486.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P12315925105845208380

`∩[A031363(n+1), A107148(n+1)]`
-/

namespace A139893.P12315925105845208380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P12315925105845208380

namespace A139893

/-- `∩[A031363(n+1), A107148(n+1)]` -/
def P12315925105845208380.Spec : Prop :=
  ∀ n, (P12315925105845208380.a n : ℤ) = A139893 (n + 1)

end A139893

/-! ## A139893.P3292106677076042019

`∩[A090771(n+1), A107148(n+1)]`
-/

namespace A139893.P3292106677076042019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139893.P3292106677076042019

namespace A139893

/-- `∩[A090771(n+1), A107148(n+1)]` -/
def P3292106677076042019.Spec : Prop :=
  ∀ n, (P3292106677076042019.a n : ℤ) = A139893 (n + 1)

end A139893

/-!
# A139894: Primes of the form 4x^2+4xy+59y^2.

The programs for A139894, there is no canonical definition to state claims against.
-/

/-! ## A139894.P16040928617697377602

`∩[A007520(n+1), A033237(n+1)]`
-/

namespace A139894.P16040928617697377602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P16040928617697377602

/-! ## A139894.P7223144972481975777

`∩[A033237(n+1), A045339(n+1)]`
-/

namespace A139894.P7223144972481975777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P7223144972481975777

/-! ## A139894.P12977219248186865135

`∩[A033237(n+1), A332446(n+1)]`
-/

namespace A139894.P12977219248186865135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P12977219248186865135

/-! ## A139894.P14404169385237128322

`∩[A033237(n+1), A095282(n+1)]`
-/

namespace A139894.P14404169385237128322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P14404169385237128322

/-! ## A139894.P2887755727535733946

`∩[A033237(n+1), A192717(n+1)]`
-/

namespace A139894.P2887755727535733946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P2887755727535733946

/-! ## A139894.P1636603171299602368

`∩[A007520(n+1), A191022(n+1)]`
-/

namespace A139894.P1636603171299602368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P1636603171299602368

/-! ## A139894.P18134165988803997779

`∩[A007520(n+1), A038901(n+1)]`
-/

namespace A139894.P18134165988803997779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P18134165988803997779

/-! ## A139894.P17433292135651137338

`∩[A038901(n+1), A045339(n+1)]`
-/

namespace A139894.P17433292135651137338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P17433292135651137338

/-! ## A139894.P8139383330805848141

`∩[A007520(n+1), A038938(n+1)]`
-/

namespace A139894.P8139383330805848141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P8139383330805848141

/-! ## A139894.P17421448806892157828

`∩[A033237(n+1), A038938(n+1)]`
-/

namespace A139894.P17421448806892157828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P17421448806892157828

/-! ## A139894.P15745682889082269912

`∩[A038938(n+1), A045339(n+1)]`
-/

namespace A139894.P15745682889082269912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P15745682889082269912

/-! ## A139894.P16340556496986013911

`∩[A038938(n+1), A192717(n+1)]`
-/

namespace A139894.P16340556496986013911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P16340556496986013911

/-! ## A139894.P16588023494433451863

`∩[A002145(n+1), A033237(n+1)]`
-/

namespace A139894.P16588023494433451863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P16588023494433451863

/-! ## A139894.P12859683773619424561

`∩[A033237(n+1), A045326(n+1)]`
-/

namespace A139894.P12859683773619424561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P12859683773619424561

/-! ## A139894.P17748414203060956761

`∩[A003629(n+1), A033237(n+1)]`
-/

namespace A139894.P17748414203060956761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P17748414203060956761

/-! ## A139894.P15406212642547063415

`∩[A033237(n+1), A042999(n+1)]`
-/

namespace A139894.P15406212642547063415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P15406212642547063415

/-! ## A139894.P9152786881852088210

`∩[A033237(n+1), A085760(n+1)]`
-/

namespace A139894.P9152786881852088210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P9152786881852088210

/-! ## A139894.P13204466070993201314

`∩[A033237(n+1), A319041(n+1)]`
-/

namespace A139894.P13204466070993201314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P13204466070993201314

/-! ## A139894.P7618947241064298131

`∩[A004626(n+1), A033237(n+1)]`
-/

namespace A139894.P7618947241064298131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139894.P7618947241064298131

/-!
# A139895: Primes of the form 8x^2+29y^2.

The programs for A139895, there is no canonical definition to state claims against.
-/

/-! ## A139895.P1105745325691004212

`∩[A007521(n+1), A107166(n+1)]`
-/

namespace A139895.P1105745325691004212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P1105745325691004212

/-! ## A139895.P13087006792025802802

`A107166(lt[and(2, A107166(n+1)), 1]+1)`
-/

namespace A139895.P13087006792025802802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A107166 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A139895.P13087006792025802802

/-! ## A139895.P10173622051291013179

`∩[A004627(n+1), A107166(n+1)]`
-/

namespace A139895.P10173622051291013179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P10173622051291013179

/-! ## A139895.P1317957911635187308

`∩[A002144(n+1), A107166(n+1)]`
-/

namespace A139895.P1317957911635187308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P1317957911635187308

/-! ## A139895.P1679480163949524457

`∩[A107166(n+1), A280084(n+1)]`
-/

namespace A139895.P1679480163949524457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P1679480163949524457

/-! ## A139895.P11863636969579993172

`∩[A004627(n+1), A038937(n+1)]`
-/

namespace A139895.P11863636969579993172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P11863636969579993172

/-! ## A139895.P16978440011829540702

`∩[A007521(n+1), A038937(n+1)]`
-/

namespace A139895.P16978440011829540702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P16978440011829540702

/-! ## A139895.P16713581954173568372

`∩[A003629(n+1), A107166(n+1)]`
-/

namespace A139895.P16713581954173568372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P16713581954173568372

/-! ## A139895.P17593449961724774805

`∩[A107166(n+1), A120960(n+1)]`
-/

namespace A139895.P17593449961724774805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P17593449961724774805

/-! ## A139895.P11605949556203195688

`∩[A107166(n+1), A319041(n+1)]`
-/

namespace A139895.P11605949556203195688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P11605949556203195688

/-! ## A139895.P9945878544164803810

`∩[A085759(n+1), A107166(n+1)]`
-/

namespace A139895.P9945878544164803810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P9945878544164803810

/-! ## A139895.P2623004340432409680

`∩[A107166(n+1), A270699(n+1)]`
-/

namespace A139895.P2623004340432409680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P2623004340432409680

/-! ## A139895.P1059655510215728320

`∩[A107166(n+1), A125018(n+1)]`
-/

namespace A139895.P1059655510215728320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P1059655510215728320

/-! ## A139895.P9946361791582421909

`∩[A040100(n+1), A107166(n+1)]`
-/

namespace A139895.P9946361791582421909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P9946361791582421909

/-! ## A139895.P2026527437169181046

`∩[A040144(n+1), A107166(n+1)]`
-/

namespace A139895.P2026527437169181046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P2026527437169181046

/-! ## A139895.P1016762490376230146

`∩[A107166(n+1), A191218(n+1)]`
-/

namespace A139895.P1016762490376230146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P1016762490376230146

/-! ## A139895.P18183747609419155557

`∩[A045316(n+1), A107166(n+1)]`
-/

namespace A139895.P18183747609419155557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P18183747609419155557

/-! ## A139895.P18270097035111877062

`∩[A014662(n+1), A107166(n+1)]`
-/

namespace A139895.P18270097035111877062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139895.P18270097035111877062

/-!
# A139896: Primes of the form 8x^2+8xy+31y^2.

The programs for A139896, there is no canonical definition to state claims against.
-/

/-! ## A139896.P910659446907246249

`∩[A007522(n+1), A107166(n+1)]`
-/

namespace A139896.P910659446907246249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P910659446907246249

/-! ## A139896.P10488055088986450924

`∩[A014663(n+1), A107166(n+1)]`
-/

namespace A139896.P10488055088986450924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P10488055088986450924

/-! ## A139896.P3607434655903988640

`∩[A004628(n+1), A107166(n+1)]`
-/

namespace A139896.P3607434655903988640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P3607434655903988640

/-! ## A139896.P10554577844734470542

`∩[A036259(n+1), A107166(n+1)]`
-/

namespace A139896.P10554577844734470542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P10554577844734470542

/-! ## A139896.P11035162651250766641

`∩[A001132(n+1), A107166(n+1)]`
-/

namespace A139896.P11035162651250766641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P11035162651250766641

/-! ## A139896.P15017490513375166154

`∩[A097958(n+1), A107166(n+1)]`
-/

namespace A139896.P15017490513375166154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P15017490513375166154

/-! ## A139896.P401436266263196735

`∩[A004628(n+1), A038938(n+1)]`
-/

namespace A139896.P401436266263196735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P401436266263196735

/-! ## A139896.P10671261327451216800

`∩[A007522(n+1), A038938(n+1)]`
-/

namespace A139896.P10671261327451216800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P10671261327451216800

/-! ## A139896.P11180703903233268219

`∩[A038938(n+1), A045382(n+1)]`
-/

namespace A139896.P11180703903233268219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P11180703903233268219

/-! ## A139896.P6840647253660519249

`∩[A038938(n+1), A107166(n+1)]`
-/

namespace A139896.P6840647253660519249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P6840647253660519249

/-! ## A139896.P12372099689175796806

`∩[A004628(n+1), A038902(n+1)]`
-/

namespace A139896.P12372099689175796806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P12372099689175796806

/-! ## A139896.P5878369039387545798

`∩[A007522(n+1), A038902(n+1)]`
-/

namespace A139896.P5878369039387545798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P5878369039387545798

/-! ## A139896.P12403484823136453079

`∩[A002145(n+1), A107166(n+1)]`
-/

namespace A139896.P12403484823136453079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P12403484823136453079

/-! ## A139896.P2132761055054852024

`∩[A085760(n+1), A107166(n+1)]`
-/

namespace A139896.P2132761055054852024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P2132761055054852024

/-! ## A139896.P3659245697420911923

`∩[A107166(n+1), A270951(n+1)]`
-/

namespace A139896.P3659245697420911923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P3659245697420911923

/-! ## A139896.P17157313580795766111

`∩[A107166(n+1), A319040(n+1)]`
-/

namespace A139896.P17157313580795766111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P17157313580795766111

/-! ## A139896.P11479215950735632575

`∩[A107166(n+1), A366526(n+1)]`
-/

namespace A139896.P11479215950735632575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P11479215950735632575

/-! ## A139896.P978586127781779999

`∩[A107166(n+1), A197504(n+1)]`
-/

namespace A139896.P978586127781779999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P978586127781779999

/-! ## A139896.P18383967140399022096

`∩[A107166(n+1), A385221(n+1)]`
-/

namespace A139896.P18383967140399022096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P18383967140399022096

/-! ## A139896.P10352611099268349260

`∩[A038938(n+1), A261246(n+1)]`
-/

namespace A139896.P10352611099268349260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139896.P10352611099268349260

/-!
# A139897: Primes of the form 3*x^2+80*y^2.

The programs for A139897, the canonical program `A139897.P9665404664417300047` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139897 has offset 1).

The definition of A139897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139897.P9665404664417300047

`∩[A106859(n+1), A107007(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139897

/-- `∩[A106859(n+1), A107007(n+1)]` -/
def P9665404664417300047.Spec : Prop :=
  ∀ n, (P9665404664417300047.a n : ℤ) = A139897 (n + 1)

theorem P9665404664417300047.correct : P9665404664417300047.Spec := by
  intro n
  simp only [A139897, Nat.add_sub_cancel]

end A139897

/-! ## A139897.P14592403911035121975

`∩[A107007(n+1), A141179(n+1)]`
-/

namespace A139897.P14592403911035121975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P14592403911035121975

namespace A139897

/-- `∩[A107007(n+1), A141179(n+1)]` -/
def P14592403911035121975.Spec : Prop :=
  ∀ n, (P14592403911035121975.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P9183421234594914453

`∩[A107169(n+1), A141179(n+1)]`
-/

namespace A139897.P9183421234594914453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P9183421234594914453

namespace A139897

/-- `∩[A107169(n+1), A141179(n+1)]` -/
def P9183421234594914453.Spec : Prop :=
  ∀ n, (P9183421234594914453.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P10831625853116304882

`∩[A084865(n+1), A107169(n+1)]`
-/

namespace A139897.P10831625853116304882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P10831625853116304882

namespace A139897

/-- `∩[A084865(n+1), A107169(n+1)]` -/
def P10831625853116304882.Spec : Prop :=
  ∀ n, (P10831625853116304882.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P6739806674620078450

`∩[A084865(n+1), A122870(n+1)]`
-/

namespace A139897.P6739806674620078450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P6739806674620078450

namespace A139897

/-- `∩[A084865(n+1), A122870(n+1)]` -/
def P6739806674620078450.Spec : Prop :=
  ∀ n, (P6739806674620078450.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P11484944099652492016

`∩[A106865(n+1), A107007(n+1)]`
-/

namespace A139897.P11484944099652492016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P11484944099652492016

namespace A139897

/-- `∩[A106865(n+1), A107007(n+1)]` -/
def P11484944099652492016.Spec : Prop :=
  ∀ n, (P11484944099652492016.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P1274255841100979680

`∩[A141179(n+1), A141187(n+1)]`
-/

namespace A139897.P1274255841100979680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P1274255841100979680

namespace A139897

/-- `∩[A141179(n+1), A141187(n+1)]` -/
def P1274255841100979680.Spec : Prop :=
  ∀ n, (P1274255841100979680.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P10256341367229598583

`∩[A007520(n+1), A106859(n+1)]`
-/

namespace A139897.P10256341367229598583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P10256341367229598583

namespace A139897

/-- `∩[A007520(n+1), A106859(n+1)]` -/
def P10256341367229598583.Spec : Prop :=
  ∀ n, (P10256341367229598583.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P5760781549575133469

`∩[A007520(n+1), A107169(n+1)]`
-/

namespace A139897.P5760781549575133469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P5760781549575133469

namespace A139897

/-- `∩[A007520(n+1), A107169(n+1)]` -/
def P5760781549575133469.Spec : Prop :=
  ∀ n, (P5760781549575133469.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P14925610567189456170

`∩[A045339(n+1), A107169(n+1)]`
-/

namespace A139897.P14925610567189456170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P14925610567189456170

namespace A139897

/-- `∩[A045339(n+1), A107169(n+1)]` -/
def P14925610567189456170.Spec : Prop :=
  ∀ n, (P14925610567189456170.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P13328773129393137788

`∩[A106859(n+1), A332446(n+1)]`
-/

namespace A139897.P13328773129393137788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P13328773129393137788

namespace A139897

/-- `∩[A106859(n+1), A332446(n+1)]` -/
def P13328773129393137788.Spec : Prop :=
  ∀ n, (P13328773129393137788.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P4376049031252130634

`∩[A141123(n+1), A128288(n+2)]`
-/

namespace A139897.P4376049031252130634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128288 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P4376049031252130634

namespace A139897

/-- `∩[A141123(n+1), A128288(n+2)]` -/
def P4376049031252130634.Spec : Prop :=
  ∀ n, (P4376049031252130634.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P10321259196933428518

`∩[A107007(n+1), A385225(n+1)]`
-/

namespace A139897.P10321259196933428518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P10321259196933428518

namespace A139897

/-- `∩[A107007(n+1), A385225(n+1)]` -/
def P10321259196933428518.Spec : Prop :=
  ∀ n, (P10321259196933428518.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P13428790562282495776

`∩[A053027(n+1), A084865(n+1)]`
-/

namespace A139897.P13428790562282495776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P13428790562282495776

namespace A139897

/-- `∩[A053027(n+1), A084865(n+1)]` -/
def P13428790562282495776.Spec : Prop :=
  ∀ n, (P13428790562282495776.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P8010298819893007163

`∩[A053027(n+1), A107007(n+1)]`
-/

namespace A139897.P8010298819893007163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P8010298819893007163

namespace A139897

/-- `∩[A053027(n+1), A107007(n+1)]` -/
def P8010298819893007163.Spec : Prop :=
  ∀ n, (P8010298819893007163.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P2651942258708806686

`∩[A106859(n+1), A192717(n+1)]`
-/

namespace A139897.P2651942258708806686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P2651942258708806686

namespace A139897

/-- `∩[A106859(n+1), A192717(n+1)]` -/
def P2651942258708806686.Spec : Prop :=
  ∀ n, (P2651942258708806686.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P9498771604176682455

`∩[A107169(n+1), A192717(n+1)]`
-/

namespace A139897.P9498771604176682455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P9498771604176682455

namespace A139897

/-- `∩[A107169(n+1), A192717(n+1)]` -/
def P9498771604176682455.Spec : Prop :=
  ∀ n, (P9498771604176682455.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P15144766616629755351

`∩[A040119(n+1), A107007(n+1)]`
-/

namespace A139897.P15144766616629755351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P15144766616629755351

namespace A139897

/-- `∩[A040119(n+1), A107007(n+1)]` -/
def P15144766616629755351.Spec : Prop :=
  ∀ n, (P15144766616629755351.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P13143335161251627163

`∩[A040119(n+1), A107169(n+1)]`
-/

namespace A139897.P13143335161251627163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P13143335161251627163

namespace A139897

/-- `∩[A040119(n+1), A107169(n+1)]` -/
def P13143335161251627163.Spec : Prop :=
  ∀ n, (P13143335161251627163.a n : ℤ) = A139897 (n + 1)

end A139897

/-! ## A139897.P3408174767852663467

`∩[A051071(n+1), A107169(n+1)]`
-/

namespace A139897.P3408174767852663467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139897.P3408174767852663467

namespace A139897

/-- `∩[A051071(n+1), A107169(n+1)]` -/
def P3408174767852663467.Spec : Prop :=
  ∀ n, (P3408174767852663467.a n : ℤ) = A139897 (n + 1)

end A139897

/-!
# A139898: Primes of the form 4x^2+4xy+61y^2.

The programs for A139898, the canonical program `A139898.P6708034355655365874` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139898 has offset 1).

The definition of A139898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139898.P15029425906894763610

`∩[A107152(n+1), A139530(n+1)]`
-/

namespace A139898.P15029425906894763610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P15029425906894763610

namespace A139898

/-- `∩[A107152(n+1), A139530(n+1)]` -/
def P15029425906894763610.Spec : Prop :=
  ∀ n, (P15029425906894763610.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P15626683726993033405

`∩[A033212(n+1), A139530(n+1)]`
-/

namespace A139898.P15626683726993033405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P15626683726993033405

namespace A139898

/-- `∩[A033212(n+1), A139530(n+1)]` -/
def P15626683726993033405.Spec : Prop :=
  ∀ n, (P15626683726993033405.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P17456729561879306734

`∩[A139530(n+1), A216815(n+1)]`
-/

namespace A139898.P17456729561879306734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P17456729561879306734

namespace A139898

/-- `∩[A139530(n+1), A216815(n+1)]` -/
def P17456729561879306734.Spec : Prop :=
  ∀ n, (P17456729561879306734.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P4183117274729610531

`∩[A033205(n+1), A139530(n+1)]`
-/

namespace A139898.P4183117274729610531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P4183117274729610531

namespace A139898

/-- `∩[A033205(n+1), A139530(n+1)]` -/
def P4183117274729610531.Spec : Prop :=
  ∀ n, (P4183117274729610531.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P6708034355655365874

`∩[A007521(n+1), A033212(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139898

/-- `∩[A007521(n+1), A033212(n+1)]` -/
def P6708034355655365874.Spec : Prop :=
  ∀ n, (P6708034355655365874.a n : ℤ) = A139898 (n + 1)

theorem P6708034355655365874.correct : P6708034355655365874.Spec := by
  intro n
  simp only [A139898, Nat.add_sub_cancel]

end A139898

/-! ## A139898.P5069392598700248831

`∩[A007521(n+1), A107152(n+1)]`
-/

namespace A139898.P5069392598700248831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P5069392598700248831

namespace A139898

/-- `∩[A007521(n+1), A107152(n+1)]` -/
def P5069392598700248831.Spec : Prop :=
  ∀ n, (P5069392598700248831.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P15287526180869151428

`∩[A033212(n+1), A045366(n+1)]`
-/

namespace A139898.P15287526180869151428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P15287526180869151428

namespace A139898

/-- `∩[A033212(n+1), A045366(n+1)]` -/
def P15287526180869151428.Spec : Prop :=
  ∀ n, (P15287526180869151428.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P8018420399965170805

`∩[A045366(n+1), A107152(n+1)]`
-/

namespace A139898.P8018420399965170805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P8018420399965170805

namespace A139898

/-- `∩[A045366(n+1), A107152(n+1)]` -/
def P8018420399965170805.Spec : Prop :=
  ∀ n, (P8018420399965170805.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P5839586241195423920

`∩[A091729(n+1), A139530(n+1)]`
-/

namespace A139898.P5839586241195423920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P5839586241195423920

namespace A139898

/-- `∩[A091729(n+1), A139530(n+1)]` -/
def P5839586241195423920.Spec : Prop :=
  ∀ n, (P5839586241195423920.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P7631428919442097977

`p?[A074837(n+2)+A074837(n+1)-35]`
-/

namespace A139898.P7631428919442097977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074837 (n + 2) + (A074837 (n + 1) - 35)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139898.P7631428919442097977

namespace A139898

/-- `p?[A074837(n+2)+A074837(n+1)-35]` -/
def P7631428919442097977.Spec : Prop :=
  ∀ n, P7631428919442097977.a n = A139898 (n + 1)

end A139898

/-! ## A139898.P12839951473507897894

`∩[A007521(n+1), A155570(n+1)]`
-/

namespace A139898.P12839951473507897894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P12839951473507897894

namespace A139898

/-- `∩[A007521(n+1), A155570(n+1)]` -/
def P12839951473507897894.Spec : Prop :=
  ∀ n, (P12839951473507897894.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P16453212840597053397

`∩[A045366(n+1), A155570(n+1)]`
-/

namespace A139898.P16453212840597053397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P16453212840597053397

namespace A139898

/-- `∩[A045366(n+1), A155570(n+1)]` -/
def P16453212840597053397.Spec : Prop :=
  ∀ n, (P16453212840597053397.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P9579592801720738930

`∩[A139530(n+1), A155570(n+1)]`
-/

namespace A139898.P9579592801720738930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P9579592801720738930

namespace A139898

/-- `∩[A139530(n+1), A155570(n+1)]` -/
def P9579592801720738930.Spec : Prop :=
  ∀ n, (P9579592801720738930.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P2037171655083550599

`∩[A004627(n+1), A033212(n+1)]`
-/

namespace A139898.P2037171655083550599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P2037171655083550599

namespace A139898

/-- `∩[A004627(n+1), A033212(n+1)]` -/
def P2037171655083550599.Spec : Prop :=
  ∀ n, (P2037171655083550599.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P4128785137948519008

`∩[A004627(n+1), A107152(n+1)]`
-/

namespace A139898.P4128785137948519008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P4128785137948519008

namespace A139898

/-- `∩[A004627(n+1), A107152(n+1)]` -/
def P4128785137948519008.Spec : Prop :=
  ∀ n, (P4128785137948519008.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P18326856338078153476

`∩[A038872(n+1), A139530(n+1)]`
-/

namespace A139898.P18326856338078153476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P18326856338078153476

namespace A139898

/-- `∩[A038872(n+1), A139530(n+1)]` -/
def P18326856338078153476.Spec : Prop :=
  ∀ n, (P18326856338078153476.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P18194987051704315810

`∩[A045468(n+1), A139530(n+1)]`
-/

namespace A139898.P18194987051704315810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P18194987051704315810

namespace A139898

/-- `∩[A045468(n+1), A139530(n+1)]` -/
def P18194987051704315810.Spec : Prop :=
  ∀ n, (P18194987051704315810.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P16646671650506738753

`∩[A064739(n+1), A139530(n+1)]`
-/

namespace A139898.P16646671650506738753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P16646671650506738753

namespace A139898

/-- `∩[A064739(n+1), A139530(n+1)]` -/
def P16646671650506738753.Spec : Prop :=
  ∀ n, (P16646671650506738753.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P12695360360777327347

`∩[A139530(n+1), A191018(n+1)]`
-/

namespace A139898.P12695360360777327347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P12695360360777327347

namespace A139898

/-- `∩[A139530(n+1), A191018(n+1)]` -/
def P12695360360777327347.Spec : Prop :=
  ∀ n, (P12695360360777327347.a n : ℤ) = A139898 (n + 1)

end A139898

/-! ## A139898.P10510329855307871295

`∩[A139513(n+1), A139530(n+1)]`
-/

namespace A139898.P10510329855307871295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139898.P10510329855307871295

namespace A139898

/-- `∩[A139513(n+1), A139530(n+1)]` -/
def P10510329855307871295.Spec : Prop :=
  ∀ n, (P10510329855307871295.a n : ℤ) = A139898 (n + 1)

end A139898

/-!
# A139899: Primes of the form 5x^2+48y^2.

The programs for A139899, the canonical program `A139899.P13891579585727544648` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139899 has offset 1).

The definition of A139899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139899.P7478922070895731109

`∩[A107003(n+1), A107167(n+1)]`
-/

namespace A139899.P7478922070895731109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P7478922070895731109

namespace A139899

/-- `∩[A107003(n+1), A107167(n+1)]` -/
def P7478922070895731109.Spec : Prop :=
  ∀ n, (P7478922070895731109.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P12728651539532855732

`∩[A107003(n+1), A141303(n+1)]`
-/

namespace A139899.P12728651539532855732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P12728651539532855732

namespace A139899

/-- `∩[A107003(n+1), A141303(n+1)]` -/
def P12728651539532855732.Spec : Prop :=
  ∀ n, (P12728651539532855732.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P13891579585727544648

`∩[A107003(n+1), A107144(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139899

/-- `∩[A107003(n+1), A107144(n+1)]` -/
def P13891579585727544648.Spec : Prop :=
  ∀ n, (P13891579585727544648.a n : ℤ) = A139899 (n + 1)

theorem P13891579585727544648.correct : P13891579585727544648.Spec := by
  intro n
  simp only [A139899, Nat.add_sub_cancel]

end A139899

/-! ## A139899.P16656873287018475799

`∩[A107144(n+1), A107167(n+1)]`
-/

namespace A139899.P16656873287018475799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P16656873287018475799

namespace A139899

/-- `∩[A107144(n+1), A107167(n+1)]` -/
def P16656873287018475799.Spec : Prop :=
  ∀ n, (P16656873287018475799.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P12950751744974901894

`∩[A107144(n+1), A141303(n+1)]`
-/

namespace A139899.P12950751744974901894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P12950751744974901894

namespace A139899

/-- `∩[A107144(n+1), A141303(n+1)]` -/
def P12950751744974901894.Spec : Prop :=
  ∀ n, (P12950751744974901894.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P6313177012689996817

`p?[or(4, A107167(n+1))]`
-/

namespace A139899.P6313177012689996817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A107167 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139899.P6313177012689996817

namespace A139899

/-- `p?[or(4, A107167(n+1))]` -/
def P6313177012689996817.Spec : Prop :=
  ∀ n, P6313177012689996817.a n = A139899 (n + 1)

end A139899

/-! ## A139899.P12812090107742141406

`p?[or(4, A141303(n+1))]`
-/

namespace A139899.P12812090107742141406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A141303 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139899.P12812090107742141406

namespace A139899

/-- `p?[or(4, A141303(n+1))]` -/
def P12812090107742141406.Spec : Prop :=
  ∀ n, P12812090107742141406.a n = A139899 (n + 1)

end A139899

/-! ## A139899.P15604914166260807164

`∩[A106859(n+1), A107003(n+1)]`
-/

namespace A139899.P15604914166260807164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P15604914166260807164

namespace A139899

/-- `∩[A106859(n+1), A107003(n+1)]` -/
def P15604914166260807164.Spec : Prop :=
  ∀ n, (P15604914166260807164.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P4140519343363807734

`∩[A106859(n+1), A107144(n+1)]`
-/

namespace A139899.P4140519343363807734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P4140519343363807734

namespace A139899

/-- `∩[A106859(n+1), A107144(n+1)]` -/
def P4140519343363807734.Spec : Prop :=
  ∀ n, (P4140519343363807734.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P2800721967198454561

`∩[A107003(n+1), A141179(n+1)]`
-/

namespace A139899.P2800721967198454561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P2800721967198454561

namespace A139899

/-- `∩[A107003(n+1), A141179(n+1)]` -/
def P2800721967198454561.Spec : Prop :=
  ∀ n, (P2800721967198454561.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P10971441304406678169

`∩[A040117(n+1), A107144(n+1)]`
-/

namespace A139899.P10971441304406678169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P10971441304406678169

namespace A139899

/-- `∩[A040117(n+1), A107144(n+1)]` -/
def P10971441304406678169.Spec : Prop :=
  ∀ n, (P10971441304406678169.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P14710655208360988543

`∩[A040117(n+1), A141179(n+1)]`
-/

namespace A139899.P14710655208360988543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P14710655208360988543

namespace A139899

/-- `∩[A040117(n+1), A141179(n+1)]` -/
def P14710655208360988543.Spec : Prop :=
  ∀ n, (P14710655208360988543.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P4989870452728668504

`∩[A107144(n+1), A243183(n+1)]`
-/

namespace A139899.P4989870452728668504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P4989870452728668504

namespace A139899

/-- `∩[A107144(n+1), A243183(n+1)]` -/
def P4989870452728668504.Spec : Prop :=
  ∀ n, (P4989870452728668504.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P416988532946910299

`∩[A007521(n+1), A106859(n+1)]`
-/

namespace A139899.P416988532946910299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P416988532946910299

namespace A139899

/-- `∩[A007521(n+1), A106859(n+1)]` -/
def P416988532946910299.Spec : Prop :=
  ∀ n, (P416988532946910299.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P11424633636710871293

`∩[A007521(n+1), A107167(n+1)]`
-/

namespace A139899.P11424633636710871293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P11424633636710871293

namespace A139899

/-- `∩[A007521(n+1), A107167(n+1)]` -/
def P11424633636710871293.Spec : Prop :=
  ∀ n, (P11424633636710871293.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P16018226316004656179

`∩[A007521(n+1), A141303(n+1)]`
-/

namespace A139899.P16018226316004656179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P16018226316004656179

namespace A139899

/-- `∩[A007521(n+1), A141303(n+1)]` -/
def P16018226316004656179.Spec : Prop :=
  ∀ n, (P16018226316004656179.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P7838982089361186347

`∩[A045366(n+1), A107167(n+1)]`
-/

namespace A139899.P7838982089361186347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P7838982089361186347

namespace A139899

/-- `∩[A045366(n+1), A107167(n+1)]` -/
def P7838982089361186347.Spec : Prop :=
  ∀ n, (P7838982089361186347.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P279204678818593992

`∩[A084865(n+1), A107144(n+1)]`
-/

namespace A139899.P279204678818593992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P279204678818593992

namespace A139899

/-- `∩[A084865(n+1), A107144(n+1)]` -/
def P279204678818593992.Spec : Prop :=
  ∀ n, (P279204678818593992.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P12268631250303594633

`∩[A084865(n+1), A107167(n+1)]`
-/

namespace A139899.P12268631250303594633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P12268631250303594633

namespace A139899

/-- `∩[A084865(n+1), A107167(n+1)]` -/
def P12268631250303594633.Spec : Prop :=
  ∀ n, (P12268631250303594633.a n : ℤ) = A139899 (n + 1)

end A139899

/-! ## A139899.P12969124774437712221

`∩[A107144(n+1), A141171(n+1)]`
-/

namespace A139899.P12969124774437712221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139899.P12969124774437712221

namespace A139899

/-- `∩[A107144(n+1), A141171(n+1)]` -/
def P12969124774437712221.Spec : Prop :=
  ∀ n, (P12969124774437712221.a n : ℤ) = A139899 (n + 1)

end A139899

