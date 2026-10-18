import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B007.C001
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

/-!
# A093600: Numerator of Sum_{1<=k<=n, gcd(k,n)=1} 1/k.

The programs for A093600, there is no canonical definition to state claims against.
-/

/-! ## A093600.P2054444933723444361

`A056855(n+1)/gcd(A001783(n+1), A056855(n+1))`
-/

namespace A093600.P2054444933723444361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056855 (n + 1) : ℚ) / (Int.gcd (A001783 (n + 1)) (A056855 (n + 1)) : ℚ)

end

end A093600.P2054444933723444361

/-! ## A093600.P15559185229633404982

`A116416(A054432(n+1))`
-/

namespace A093600.P15559185229633404982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A054432 (n + 1)).toNat

end

end A093600.P15559185229633404982

/-! ## A093600.P13816826832904386675

`A056855(n+1)/A114806(A128247(n+1))`
-/

namespace A093600.P13816826832904386675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056855 (n + 1) : ℚ) / (A114806 (A128247 (n + 1)).toNat : ℚ)

end

end A093600.P13816826832904386675

/-! ## A093600.P17731827819578113909

`A002618(n+1)/2*A099940(n+1)/A114806(A128247(n+1))`
-/

namespace A093600.P17731827819578113909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / 2 * (A099940 (n + 1) : ℚ) / (A114806 (A128247 (n + 1)).toNat : ℚ)

end

end A093600.P17731827819578113909

/-! ## A093600.P4195785210045979428

`A249225(n+1)/A006530(A074182(n+1))`
-/

namespace A093600.P4195785210045979428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249225 (n + 1) : ℚ) / (A006530 (A074182 (n + 1)).toNat : ℚ)

end

end A093600.P4195785210045979428

/-!
# A093605: Numerators of sqrt(2) term in expected number of complex eigenvalues in an n X n real matrix with entries chosen from a standard normal distribution.

The programs for A093605, there is no canonical definition to state claims against.
-/

/-! ## A093605.P680870217674427126

`A227181(A001045(n)^A126688(n+1))`
-/

namespace A093605.P680870217674427126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227181 (SequenceMachineLib.roundAway ((A001045 n : ℚ) ^ (A126688 (n + 1) : ℤ))).toNat

end

end A093605.P680870217674427126

/-! ## A093605.P14256606979978688883

`A130903(A355521(n+1))%A147748(n)`
-/

namespace A093605.P14256606979978688883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130903 (A355521 (n + 1)).toNat) (A147748 n)

end

end A093605.P14256606979978688883

/-! ## A093605.P17635391411921733533

`A068229(2*n+3)%A324658(A084770(n))`
-/

namespace A093605.P17635391411921733533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068229 (2 * n + 3)) (A324658 (A084770 n).toNat)

end

end A093605.P17635391411921733533

/-!
# A093607: Let b(0)=1; b(1)=1; b(n+2) = (Pi^2/6 + 6/Pi^2)*b(n+1) - b(n). a(n) = floor(b(n)).

The programs for A093607, there is no canonical definition to state claims against.
-/

/-! ## A093607.P1620684530679118463

`floor(sqrt(exp(A062003(n))))`
-/

namespace A093607.P1620684530679118463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp (A062003 n : ℝ))⌋

end

end A093607.P1620684530679118463

/-! ## A093607.P18056917883470488258

`floor(sqrt(exp(A004884(n+1))))`
-/

namespace A093607.P18056917883470488258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp (A004884 (n + 1) : ℝ))⌋

end

end A093607.P18056917883470488258

/-! ## A093607.P16267875056879492285

`floor(sqrt(exp(A004895(n+1))))`
-/

namespace A093607.P16267875056879492285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.exp (A004895 (n + 1) : ℝ))⌋

end

end A093607.P16267875056879492285

/-! ## A093607.P4635749199540173190

`floor(exp(A004906(n+1)/2))`
-/

namespace A093607.P4635749199540173190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp ((A004906 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A093607.P4635749199540173190

/-! ## A093607.P12737838114252989226

`A000006(A126137(n))`
-/

namespace A093607.P12737838114252989226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A126137 n).toNat

end

end A093607.P12737838114252989226

/-!
# A093608: Let b(0)=1; b(1)=1; b(n+2)=(e^g+1/e^g)*b(n+1)-b(n). a(n)=floor(b(n)).

The programs for A093608, there is no canonical definition to state claims against.
-/

/-! ## A093608.P16732648778849357519

`A001462(A109545(n)-A004524(n))`
-/

namespace A093608.P16732648778849357519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A109545 n - A004524 n).toNat

end

end A093608.P16732648778849357519

/-! ## A093608.P17810451855687703540

`A001462(A109545(n)-A301626(n))`
-/

namespace A093608.P17810451855687703540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A109545 n - A301626 n).toNat

end

end A093608.P17810451855687703540

/-! ## A093608.P3894915049691950502

`A001462(and(-A067086(n+1), A109545(n)))`
-/

namespace A093608.P3894915049691950502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.land (-A067086 (n + 1)) (A109545 n)).toNat

end

end A093608.P3894915049691950502

/-! ## A093608.P17258075552811180058

`∑[A353866(ceil(ϕ*a(n-1)))]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A093608.P17258075552811180058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 3] fun n f1 =>
  A353866 ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093608.P17258075552811180058

/-! ## A093608.P488221044449228157

`A227568(A387510(n))`
-/

namespace A093608.P488221044449228157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A387510 n).toNat

end

end A093608.P488221044449228157

/-!
# A093609: Upper Beatty sequence for e^G, G = Euler's gamma constant.

The programs for A093609, the canonical program `A093609.P673764674873971808` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093609 has offset 1).

The definition of A093609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093609.P673764674873971808

`floor((n+1)*(e^γ+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A093609

/-- `floor((n+1)*(e^γ+1))` -/
def P673764674873971808.Spec : Prop :=
  ∀ n, P673764674873971808.a n = A093609 (n + 1)

theorem P673764674873971808.correct : P673764674873971808.Spec := by
  intro n
  simp only [A093609, Nat.add_sub_cancel]

end A093609

/-! ## A093609.P15143398614123811894

`∑[(Δ[floor(n*exp(γ))]+1)%5]`
-/

namespace A093609.P15143398614123811894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.exp Real.eulerMascheroniConstant⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n + 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093609.P15143398614123811894

namespace A093609

/-- `∑[(Δ[floor(n*exp(γ))]+1)%5]` -/
def P15143398614123811894.Spec : Prop :=
  ∀ n, P15143398614123811894.a n = A093609 (n + 1)

end A093609

/-! ## A093609.P9998275707807384726

`∑[A379018(A332044(2*n+5)+1)]`
-/

namespace A093609.P9998275707807384726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379018 (A332044 (2 * n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093609.P9998275707807384726

namespace A093609

/-- `∑[A379018(A332044(2*n+5)+1)]` -/
def P9998275707807384726.Spec : Prop :=
  ∀ n, P9998275707807384726.a n = A093609 (n + 1)

end A093609

/-!
# A093610: Lower Beatty sequence for e^G, G = Euler's gamma constant.

The programs for A093610, the canonical program `A093610.P17355133009017118116` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093610 has offset 1).

The definition of A093610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093610.P17355133009017118116

`floor((n+1)*(e^γ+1)/e^γ)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A093610

/-- `floor((n+1)*(e^γ+1)/e^γ)` -/
def P17355133009017118116.Spec : Prop :=
  ∀ n, P17355133009017118116.a n = A093610 (n + 1)

theorem P17355133009017118116.correct : P17355133009017118116.Spec := by
  intro n
  simp only [A093610, Nat.add_sub_cancel]

end A093610

/-! ## A093610.P4393662914934379210

`A249117(n+1)%A249077(n+1)`
-/

namespace A093610.P4393662914934379210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249117 (n + 1)) (A249077 (n + 1))

end

end A093610.P4393662914934379210

namespace A093610

/-- `A249117(n+1)%A249077(n+1)` -/
def P4393662914934379210.Spec : Prop :=
  ∀ n, P4393662914934379210.a n = A093610 (n + 1)

end A093610

/-! ## A093610.P12298616281993620750

`A249117(n+1)+A051390(A144294(2*n+3))`
-/

namespace A093610.P12298616281993620750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249117 (n + 1) + A051390 (A144294 (2 * n + 3)).toNat

end

end A093610.P12298616281993620750

namespace A093610

/-- `A249117(n+1)+A051390(A144294(2*n+3))` -/
def P12298616281993620750.Spec : Prop :=
  ∀ n, P12298616281993620750.a n = A093610 (n + 1)

end A093610

/-! ## A093610.P3009641030336219614

`A249117(n+1)+A080300(A194440(n))`
-/

namespace A093610.P3009641030336219614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249117 (n + 1) + A080300 (A194440 n).toNat

end

end A093610.P3009641030336219614

namespace A093610

/-- `A249117(n+1)+A080300(A194440(n))` -/
def P3009641030336219614.Spec : Prop :=
  ∀ n, P3009641030336219614.a n = A093610 (n + 1)

end A093610

/-! ## A093610.P11613375565694218412

`A343023(A249096(3*n+2))+A249117(n+1)`
-/

namespace A093610.P11613375565694218412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (A249096 (3 * n + 2)).toNat + A249117 (n + 1)

end

end A093610.P11613375565694218412

namespace A093610

/-- `A343023(A249096(3*n+2))+A249117(n+1)` -/
def P11613375565694218412.Spec : Prop :=
  ∀ n, P11613375565694218412.a n = A093610 (n + 1)

end A093610

/-! ## A093610.P9802015465262453786

`or(A010052(A025065(n)), A249117(n+1))`
-/

namespace A093610.P9802015465262453786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A025065 n).toNat) (A249117 (n + 1))

end

end A093610.P9802015465262453786

namespace A093610

/-- `or(A010052(A025065(n)), A249117(n+1))` -/
def P9802015465262453786.Spec : Prop :=
  ∀ n, P9802015465262453786.a n = A093610 (n + 1)

end A093610

/-! ## A093610.P8127545894026241220

`A249117(n+1)+A000122(A154939(n+1))`
-/

namespace A093610.P8127545894026241220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249117 (n + 1) + A000122 (A154939 (n + 1)).toNat

end

end A093610.P8127545894026241220

namespace A093610

/-- `A249117(n+1)+A000122(A154939(n+1))` -/
def P8127545894026241220.Spec : Prop :=
  ∀ n, P8127545894026241220.a n = A093610 (n + 1)

end A093610

/-!
# A093611: Numerators of convergents to 3/(1 + sqrt(10)).

The programs for A093611, the canonical program `A093611.P10442517058663444539` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093611 has offset 1).

The definition of A093611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093611.P10442517058663444539

`a(n-2)+(a(n-1)+a(n-2))%3*a(n-1)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A093611

/-- `a(n-2)+(a(n-1)+a(n-2))%3*a(n-1)` -/
def P10442517058663444539.Spec : Prop :=
  ∀ n, (P10442517058663444539.a n : ℤ) = A093611 (n + 1)

theorem P10442517058663444539.correct : P10442517058663444539.Spec := by
  intro n
  simp only [A093611, Nat.add_sub_cancel]

end A093611

/-! ## A093611.P16243661879914685494

`A295333(n+1)%A295334(n+1)`
-/

namespace A093611.P16243661879914685494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295333 (n + 1)) (A295334 (n + 1))

end

end A093611.P16243661879914685494

namespace A093611

/-- `A295333(n+1)%A295334(n+1)` -/
def P16243661879914685494.Spec : Prop :=
  ∀ n, P16243661879914685494.a n = A093611 (n + 1)

end A093611

/-! ## A093611.P8462658431479992585

`A295334(n+1)-A179238(A028310(n))`
-/

namespace A093611.P8462658431479992585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (n + 1) - A179238 (A028310 n).toNat

end

end A093611.P8462658431479992585

namespace A093611

/-- `A295334(n+1)-A179238(A028310(n))` -/
def P8462658431479992585.Spec : Prop :=
  ∀ n, P8462658431479992585.a n = A093611 (n + 1)

end A093611

/-! ## A093611.P4754315845213959420

`A295333(A057427(n)+n)-A295334(n+1)`
-/

namespace A093611.P4754315845213959420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295333 (A057427 n + (n : ℤ)).toNat - A295334 (n + 1)

end

end A093611.P4754315845213959420

namespace A093611

/-- `A295333(A057427(n)+n)-A295334(n+1)` -/
def P4754315845213959420.Spec : Prop :=
  ∀ n, P4754315845213959420.a n = A093611 (n + 1)

end A093611

/-! ## A093611.P9640673223338464234

`A179238(n+3)%A295334(n+1)`
-/

namespace A093611.P9640673223338464234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179238 (n + 3)) (A295334 (n + 1))

end

end A093611.P9640673223338464234

namespace A093611

/-- `A179238(n+3)%A295334(n+1)` -/
def P9640673223338464234.Spec : Prop :=
  ∀ n, P9640673223338464234.a n = A093611 (n + 1)

end A093611

/-!
# A093612: Primes of form 7^n-2.

The programs for A093612, there is no canonical definition to state claims against.
-/

/-! ## A093612.P17919952459511184685

`7^A090669(n+1)-2`
-/

namespace A093612.P17919952459511184685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A090669 (n + 1) : ℤ) - 2

end

end A093612.P17919952459511184685

/-! ## A093612.P1019474596170796596

`A164783(A090669(n+1))+4`
-/

namespace A093612.P1019474596170796596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164783 (A090669 (n + 1)).toNat + 4

end

end A093612.P1019474596170796596

/-! ## A093612.P10864916112640155529

`A164783(eq[2, A013608(n+1)]+1)+4`
-/

namespace A093612.P10864916112640155529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 4

end

end A093612.P10864916112640155529

/-! ## A093612.P8563772823676315386

`A164783(record[A004277(n+1)/A013608(n+1)])+4`
-/

namespace A093612.P8563772823676315386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) : ℚ) / (A013608 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164783 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat + 4

end

end A093612.P8563772823676315386

/-!
# A093614: Numbers n such that F_n(x) and F_n(1-x) have a common factor mod 2, with F_n(x) = U(n-1,x/2) the monic Chebyshev polynomials of second kind.

The programs for A093614, there is no canonical definition to state claims against.
-/

/-! ## A093614.P2390185146784507

`A117870(n+1)+1`
-/

namespace A093614.P2390185146784507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117870 (n + 1) + 1

end

end A093614.P2390185146784507

/-! ## A093614.P743549331177655072

`lt[0, A159257(n+1)]+2`
-/

namespace A093614.P743549331177655072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A093614.P743549331177655072

/-! ## A093614.P7689752847536907476

`A020725(A117870(n+1))`
-/

namespace A093614.P7689752847536907476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A117870 (n + 1)).toNat

end

end A093614.P7689752847536907476

/-! ## A093614.P10782623063597324053

`lt[4, A165738(n+1)]+1`
-/

namespace A093614.P10782623063597324053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A093614.P10782623063597324053

/-! ## A093614.P11302324418231238726

`lt[4, A165738(A028310(n))]`
-/

namespace A093614.P11302324418231238726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165738 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A093614.P11302324418231238726

/-! ## A093614.P16836838346536849426

`lt[4, A165738(A233583(n+1))]`
-/

namespace A093614.P16836838346536849426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165738 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A093614.P16836838346536849426

/-! ## A093614.P4646051400880047860

`lt[1, A075462(n+1)]+2`
-/

namespace A093614.P4646051400880047860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A093614.P4646051400880047860

/-!
# A093616: a(n) is the smallest k such that k*n has exactly as many divisors as n^2.

The programs for A093616, there is no canonical definition to state claims against.
-/

/-! ## A093616.P590566936329138621

`A069799(A085079(n+1))²/A174344(A069894(n))`
-/

namespace A093616.P590566936329138621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069799 (A085079 (n + 1)).toNat ^ 2 : ℚ) / (A174344 (A069894 n).toNat : ℚ)

end

end A093616.P590566936329138621

/-! ## A093616.P2735897079579122627

`(n+1)%A069816(A127340(n+1))`
-/

namespace A093616.P2735897079579122627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A069816 (A127340 (n + 1)).toNat)

end

end A093616.P2735897079579122627

/-! ## A093616.P17357169716233444356

`(Δ[n²]-n)%A077812(A119590(2*n+3))`
-/

namespace A093616.P17357169716233444356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)) (A077812 (A119590 (2 * n + 3)).toNat)

end

end A093616.P17357169716233444356

/-! ## A093616.P9819573294725508492

`A000027(n+1)%A265189(A181897(n+1))`
-/

namespace A093616.P9819573294725508492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A265189 (A181897 (n + 1)).toNat)

end

end A093616.P9819573294725508492

/-! ## A093616.P12404926364927911212

`A296882(n+1)%A016825(A227827(n+4))`
-/

namespace A093616.P12404926364927911212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296882 (n + 1)) (A016825 (A227827 (n + 4)).toNat)

end

end A093616.P12404926364927911212

/-!
# A093617: Numbers m such that there exists a number k less than m with k*m and m^2 having an equal number of divisors.

The programs for A093617, there is no canonical definition to state claims against.
-/

/-! ## A093617.P4811687559524605017

`record[gcd(A251744(n), A317258(n+1))]`
-/

namespace A093617.P4811687559524605017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A251744 n) (A317258 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093617.P4811687559524605017

/-! ## A093617.P6254475797806140981

`∩[A102796(n+1), A317258(n+1)]`
-/

namespace A093617.P6254475797806140981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093617.P6254475797806140981

/-! ## A093617.P3062813195528224895

`∩[A071365(n+1), A356713(n+1)]`
-/

namespace A093617.P3062813195528224895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093617.P3062813195528224895

/-!
# A093618: Numbers m such that for all k less than m the number of divisors of k*m and m^2 are different.

The programs for A093618, there is no canonical definition to state claims against.
-/

/-! ## A093618.P15183009546327904994

`comp[A093617(n+1)-1]+1`
-/

namespace A093618.P15183009546327904994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093617 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A093618.P15183009546327904994

/-! ## A093618.P7170448463388846266

`record[A093616(n+1)]`
-/

namespace A093618.P7170448463388846266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093618.P7170448463388846266

/-! ## A093618.P4671325841442238648

`lt[A053186((n+1)*A089247(n+1)), 1]+1`
-/

namespace A093618.P4671325841442238648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ((n + 1 : ℤ) * A089247 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093618.P4671325841442238648

/-! ## A093618.P12673355642782559858

`comp[A072567(n+1)-A002445(n)]`
-/

namespace A093618.P12673355642782559858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072567 (n + 1) - A002445 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093618.P12673355642782559858

/-! ## A093618.P3430739590784076941

`comp[A335377(A091562(n+4)+A091536(2*n))-1]+1`
-/

namespace A093618.P3430739590784076941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335377 (A091562 (n + 4) + A091536 (2 * n)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A093618.P3430739590784076941

/-! ## A093618.P17219833761871554472

`∑[A001221(A280136(n+1)+A273127(n+1))]`
-/

namespace A093618.P17219833761871554472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A280136 (n + 1) + A273127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093618.P17219833761871554472

/-! ## A093618.P5899841403926525388

`eq[0, and(A108563(n), A328966(n+2))]`
-/

namespace A093618.P5899841403926525388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A108563 n) (A328966 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093618.P5899841403926525388

/-! ## A093618.P9892194172883765765

`comp[A335187(n+1)]%A335209(3*n+2)`
-/

namespace A093618.P9892194172883765765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335187 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A335209 (3 * n + 2))

end

end A093618.P9892194172883765765

/-! ## A093618.P9995611041497262993

`comp[17*C(n, 2)+n-A129271(n)]`
-/

namespace A093618.P9995611041497262993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * Nat.choose n 2 + n : ℤ) - A129271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093618.P9995611041497262993

/-! ## A093618.P6540337778851331365

`comp[A335187(n+1)%A335176(n+3)]`
-/

namespace A093618.P6540337778851331365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335187 (n + 1)) (A335176 (n + 3))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093618.P6540337778851331365

/-!
# A093620: Values of Laguerre polynomials: a(n) = 2^n*n!*LaguerreL(n,-1/2,-2).

The programs for A093620, the canonical program `A093620.P7196731512289816226` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093620 has offset 0).

The definition of A093620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093620.P7196731512289816226

`(4*n+1)*a(n-1)-2*(n-1)*(2*n-3)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A093620

/-- `(4*n+1)*a(n-1)-2*(n-1)*(2*n-3)*a(n-2)` -/
def P7196731512289816226.Spec : Prop :=
  ∀ n, P7196731512289816226.a n = A093620 n

theorem P7196731512289816226.correct : P7196731512289816226.Spec := by
  intro n
  simp only [A093620]

end A093620

/-! ## A093620.P8659452585595481831

`A005425(2*n)`
-/

namespace A093620.P8659452585595481831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (2 * n)

end

end A093620.P8659452585595481831

namespace A093620

/-- `A005425(2*n)` -/
def P8659452585595481831.Spec : Prop :=
  ∀ n, P8659452585595481831.a n = A093620 n

end A093620

/-! ## A093620.P384573595228584939

`A027412(Δ[n²])/2`
-/

namespace A093620.P384573595228584939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027412 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A093620.P384573595228584939

namespace A093620

/-- `A027412(Δ[n²])/2` -/
def P384573595228584939.Spec : Prop :=
  ∀ n, P384573595228584939.a n = (A093620 n : ℚ)

end A093620

/-! ## A093620.P16924848715162789959

`record[A005425(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A093620.P16924848715162789959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A005425 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093620.P16924848715162789959

namespace A093620

/-- `record[A005425(C(n, a(n-1)))]` -/
def P16924848715162789959.Spec : Prop :=
  ∀ n, P16924848715162789959.a n = A093620 n

end A093620

/-! ## A093620.P4549043595230664381

`record[A005425(A014681(n))]`
-/

namespace A093620.P4549043595230664381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093620.P4549043595230664381

namespace A093620

/-- `record[A005425(A014681(n))]` -/
def P4549043595230664381.Spec : Prop :=
  ∀ n, P4549043595230664381.a n = A093620 n

end A093620

/-! ## A093620.P9312001349571504843

`record[gcd(A005425(n), A007814(n+1))]`
-/

namespace A093620.P9312001349571504843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005425 n) (A007814 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093620.P9312001349571504843

namespace A093620

/-- `record[gcd(A005425(n), A007814(n+1))]` -/
def P9312001349571504843.Spec : Prop :=
  ∀ n, (P9312001349571504843.a n : ℤ) = A093620 n

end A093620

/-! ## A093620.P9839289113376156136

`record[A005425(A028242(A053438(n)))]`
-/

namespace A093620.P9839289113376156136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A028242 (A053438 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093620.P9839289113376156136

namespace A093620

/-- `record[A005425(A028242(A053438(n)))]` -/
def P9839289113376156136.Spec : Prop :=
  ∀ n, P9839289113376156136.a n = A093620 n

end A093620

/-! ## A093620.P16518958019202944904

`A100510(n)-A238803(2*n+1)`
-/

namespace A093620.P16518958019202944904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100510 n - A238803 (2 * n + 1)

end

end A093620.P16518958019202944904

namespace A093620

/-- `A100510(n)-A238803(2*n+1)` -/
def P16518958019202944904.Spec : Prop :=
  ∀ n, P16518958019202944904.a n = A093620 n

end A093620

/-!
# A093622: Largest prime of the form n!/k!-1.

The programs for A093622, there is no canonical definition to state claims against.
-/

/-! ## A093622.P7199193339745739592

`record[p?[A094587(n)-1]]`
-/

namespace A093622.P7199193339745739592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093622.P7199193339745739592

/-! ## A093622.P8307768765710787573

`record[p?[A173333(n+1)-1]]`
-/

namespace A093622.P8307768765710787573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093622.P8307768765710787573

/-! ## A093622.P3329199303494804616

`record[p?[A213936(n+1)-1]]`
-/

namespace A093622.P3329199303494804616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213936 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093622.P3329199303494804616

/-!
# A093623: Smallest k>0 such that n!/k!-1 is prime.

The programs for A093623, there is no canonical definition to state claims against.
-/

/-! ## A093623.P7874757227672140878

`A040890(A023500(n)*A040882(n))`
-/

namespace A093623.P7874757227672140878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040890 (A023500 n * A040882 n).toNat

end

end A093623.P7874757227672140878

/-! ## A093623.P8383936967740896080

`A038548(A140787(n)+A036811(2*(n+1)))`
-/

namespace A093623.P8383936967740896080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A140787 n + A036811 (2 * (n + 1))).toNat

end

end A093623.P8383936967740896080

/-! ## A093623.P5066039554319372347

`A056924(A140787(n)+A036811(2*(n+1)))`
-/

namespace A093623.P5066039554319372347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A140787 n + A036811 (2 * (n + 1))).toNat

end

end A093623.P5066039554319372347

/-! ## A093623.P3709732664006790226

`A347744(A347782(n+8)%A347732(2*(n+1)))`
-/

namespace A093623.P3709732664006790226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347744 (Int.tmod (A347782 (n + 8)) (A347732 (2 * (n + 1)))).toNat

end

end A093623.P3709732664006790226

/-!
# A093625: Primes of the form (3^m + 1)/2.

The programs for A093625, there is no canonical definition to state claims against.
-/

/-! ## A093625.P2655860646826313426

`A074476(∏[A000010(n+2)])`
-/

namespace A093625.P2655860646826313426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074476 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093625.P2655860646826313426

/-!
# A093627: a(n) = lcm(1,2,3,...,n) * (sum of Farey fractions of order n).

The programs for A093627, there is no canonical definition to state claims against.
-/

/-! ## A093627.P16934724656699931361

`A093593(n+1)/A025527(n+1)`
-/

namespace A093627.P16934724656699931361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093593 (n + 1) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A093627.P16934724656699931361

/-! ## A093627.P10576398486685146969

`A093593(n+1)/∏[A048671(n+1)]`
-/

namespace A093627.P10576398486685146969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093593 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A093627.P10576398486685146969

/-! ## A093627.P8777601538172061179

`A093593(n+1)/∏[gcd(n+1, A003418(n))]`
-/

namespace A093627.P8777601538172061179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003418 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093593 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A093627.P8777601538172061179

/-! ## A093627.P4239506200885264206

`A093593(n+1)/∏[(n+1)/A014963(n+1)]`
-/

namespace A093627.P4239506200885264206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A014963 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093593 (n + 1) : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A093627.P4239506200885264206

/-! ## A093627.P12256843445693537449

`A002944(n+1)*A093593(n+1)/A000142(n)`
-/

namespace A093627.P12256843445693537449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) * A093593 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A093627.P12256843445693537449

/-!
# A093628: Triangle, read by rows, such that diagonal n is equal to the Euler transform of row n, where each row starts with 1.

The programs for A093628, there is no canonical definition to state claims against.
-/

/-! ## A093628.P16152077035288592785

`A119963(A253723(n+1))+A034852(n)`
-/

namespace A093628.P16152077035288592785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A253723 (n + 1)).toNat + A034852 n

end

end A093628.P16152077035288592785

/-! ## A093628.P6292400055164207166

`A331246(A329332(n))`
-/

namespace A093628.P6292400055164207166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A329332 n).toNat

end

end A093628.P6292400055164207166

/-! ## A093628.P13273947548729808715

`A000005(3^A000194(A221524(n+1)))`
-/

namespace A093628.P13273947548729808715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A000194 (A221524 (n + 1)).toNat : ℤ))).toNat

end

end A093628.P13273947548729808715

/-! ## A093628.P839615287169002128

`A331246(A221524(n+1)+A119963(n))`
-/

namespace A093628.P839615287169002128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A221524 (n + 1) + A119963 n).toNat

end

end A093628.P839615287169002128

/-! ## A093628.P10604509810875794751

`A048720(n)+A023533(A008958(n))`
-/

namespace A093628.P10604509810875794751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 n + A023533 (A008958 n).toNat

end

end A093628.P10604509810875794751

/-!
# A093629: Row sums of triangle A093628, in which the diagonals are equal to the Euler transform of the rows.

The programs for A093629, there is no canonical definition to state claims against.
-/

/-! ## A093629.P6865760266170709066

`A174566(n)-A102683(A015441(n))`
-/

namespace A093629.P6865760266170709066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174566 n - A102683 (A015441 n).toNat

end

end A093629.P6865760266170709066

/-! ## A093629.P17626233338659776244

`A174566(n)-A124761(A002378(n))`
-/

namespace A093629.P17626233338659776244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174566 n - A124761 (A002378 n).toNat

end

end A093629.P17626233338659776244

/-! ## A093629.P17441616427036651739

`A174566(n)-A046660(A097514(n))`
-/

namespace A093629.P17441616427036651739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174566 n - A046660 (A097514 n).toNat

end

end A093629.P17441616427036651739

/-! ## A093629.P3340314840375913441

`A174566(n)-A185044(A006820(n))`
-/

namespace A093629.P3340314840375913441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174566 n - A185044 (A006820 n).toNat

end

end A093629.P3340314840375913441

/-! ## A093629.P16599814686325640869

`A174566(n)-A185044(A033301(n))`
-/

namespace A093629.P16599814686325640869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174566 n - A185044 (A033301 n).toNat

end

end A093629.P16599814686325640869

/-!
# A093630: Central terms of triangle A093628, in which the diagonals are equal to the Euler transform of the rows.

The programs for A093630, there is no canonical definition to state claims against.
-/

/-! ## A093630.P13797664227106791023

`A123108(A123442(n+1)+A075887(n))`
-/

namespace A093630.P13797664227106791023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A123442 (n + 1) + A075887 n).toNat

end

end A093630.P13797664227106791023

/-! ## A093630.P6545544889194294557

`A093628(∑[4*n])`
-/

namespace A093630.P6545544889194294557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093628 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093630.P6545544889194294557

/-!
# A093635: G.f.: A(x) = Product_{n>=0} (1+a(n)*x^(n+1))^2 = Sum_{n>=0} a(n)*x^n.

The programs for A093635, there is no canonical definition to state claims against.
-/

/-! ## A093635.P9284549448639268329

`A333256(A336131(n)+∑[A029072(n)])`
-/

namespace A093635.P9284549448639268329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333256 (A336131 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093635.P9284549448639268329

/-! ## A093635.P251460587706030220

`∑[A371128(∑[∑[n]+4])]`
-/

namespace A093635.P251460587706030220
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371128 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093635.P251460587706030220

/-!
# A093636: Self-convolution forms A093635.

The programs for A093636, there is no canonical definition to state claims against.
-/

/-! ## A093636.P7741315229707324155

`A338652(A145847(n))+A165539(n)`
-/

namespace A093636.P7741315229707324155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338652 (A145847 n).toNat + A165539 n

end

end A093636.P7741315229707324155

/-! ## A093636.P5644536533649648748

`A131787(ceil(2^(n-1)))+and(n, 2*n)`
-/

namespace A093636.P5644536533649648748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131787 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + (Nat.land n (2 * n) : ℤ)

end

end A093636.P5644536533649648748

/-! ## A093636.P234678749508341978

`A324588(A085294(n))`
-/

namespace A093636.P234678749508341978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324588 (A085294 n).toNat

end

end A093636.P234678749508341978

/-!
# A093637: G.f.: A(x) = Product_{n>=0} 1/(1 - a(n)*x^(n+1)) = Sum_{n>=0} a(n)*x^n.

The programs for A093637, there is no canonical definition to state claims against.
-/

/-! ## A093637.P7212475637572824719

`A172309(A000579(n))+A145545(n+1)`
-/

namespace A093637.P7212475637572824719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172309 (A000579 n).toNat + A145545 (n + 1)

end

end A093637.P7212475637572824719

/-! ## A093637.P18080800607834047192

`A383112(A027423(n))`
-/

namespace A093637.P18080800607834047192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (A027423 n).toNat

end

end A093637.P18080800607834047192

/-! ## A093637.P373105997924770361

`A261104(A149596(n))`
-/

namespace A093637.P373105997924770361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A149596 n).toNat

end

end A093637.P373105997924770361

/-! ## A093637.P10328226931467811964

`A105223(A123922(n+1))`
-/

namespace A093637.P10328226931467811964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A123922 (n + 1)).toNat

end

end A093637.P10328226931467811964

/-!
# A093638: G.f. satisfies: A(x) = Product_{n>=0} 1/(1-a(n)*x^(n+1))^2 = Sum_{n>=0} a(n)*x^n.

The programs for A093638, there is no canonical definition to state claims against.
-/

/-! ## A093638.P7687571071681791755

`A171896(floor(23^(n/2))-2*n)`
-/

namespace A093638.P7687571071681791755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171896 (⌊(23 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋ - (2 * n : ℤ)).toNat

end

end A093638.P7687571071681791755

/-! ## A093638.P10502297757564487321

`record[A117834(n+1)+gcd(2, n)^n]`
-/

namespace A093638.P10502297757564487321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117834 (n + 1) + (Nat.gcd 2 n ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093638.P10502297757564487321

/-!
# A093639: Self-convolution forms A093638.

The programs for A093639, there is no canonical definition to state claims against.
-/

/-! ## A093639.P4319518481608516904

`A026405(A150569(n))`
-/

namespace A093639.P4319518481608516904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A150569 n).toNat

end

end A093639.P4319518481608516904

/-! ## A093639.P10290275474878299326

`A026405(A150578(n))`
-/

namespace A093639.P10290275474878299326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A150578 n).toNat

end

end A093639.P10290275474878299326

/-! ## A093639.P2759556379923766514

`A008621(A149798(n)+A149761(n))`
-/

namespace A093639.P2759556379923766514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A149798 n + A149761 n).toNat

end

end A093639.P2759556379923766514

/-!
# A093640: Number of divisors of n whose binary representation is contained in that of n.

The programs for A093640, there is no canonical definition to state claims against.
-/

/-! ## A093640.P12568647445734382888

`Δ[eq[1, A355634(n+1)]]`
-/

namespace A093640.P12568647445734382888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355634 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A093640.P12568647445734382888

/-! ## A093640.P15233342406062478481

`A007814(A005941(2*(n+1)))*A080942(n+1)`
-/

namespace A093640.P15233342406062478481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005941 (2 * (n + 1))).toNat * A080942 (n + 1)

end

end A093640.P15233342406062478481

/-! ## A093640.P4903900240179650094

`A001511(n+1)*A302031(A255410(n+1))`
-/

namespace A093640.P4903900240179650094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A302031 (A255410 (n + 1)).toNat

end

end A093640.P4903900240179650094

/-! ## A093640.P6167104171114627838

`A001511(n+1)*A080942(A153679(A153679(n+1)))`
-/

namespace A093640.P6167104171114627838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A080942 (A153679 (A153679 (n + 1)).toNat).toNat

end

end A093640.P6167104171114627838

/-! ## A093640.P7459850649978959504

`A302031(A255410(n+1))*A302035(A255419(n+1))`
-/

namespace A093640.P7459850649978959504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302031 (A255410 (n + 1)).toNat * A302035 (A255419 (n + 1)).toNat

end

end A093640.P7459850649978959504

/-!
# A093641: Numbers of form 2^i * prime(j), i>=0, j>0, together with 1.

The programs for A093641, the canonical program `A093641.P7151041484961963095` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093641 has offset 1).

The definition of A093641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093641.P8606620911915873967

`eq[1, A325355(n+1)]+1`
-/

namespace A093641.P8606620911915873967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093641.P8606620911915873967

namespace A093641

/-- `eq[1, A325355(n+1)]+1` -/
def P8606620911915873967.Spec : Prop :=
  ∀ n, (P8606620911915873967.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P7151041484961963095

`eq[1, A340371(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A093641

/-- `eq[1, A340371(n+1)]+1` -/
def P7151041484961963095.Spec : Prop :=
  ∀ n, (P7151041484961963095.a n : ℤ) = A093641 (n + 1)

theorem P7151041484961963095.correct : P7151041484961963095.Spec := by
  intro n
  simp only [A093641, Nat.add_sub_cancel]

end A093641

/-! ## A093641.P3588606967490122484

`lt[A087436(n+1), 2]+1`
-/

namespace A093641.P3588606967490122484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093641.P3588606967490122484

namespace A093641

/-- `lt[A087436(n+1), 2]+1` -/
def P3588606967490122484.Spec : Prop :=
  ∀ n, (P3588606967490122484.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P14075768107419682112

`lt[A301957(n+1), 3]+1`
-/

namespace A093641.P14075768107419682112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093641.P14075768107419682112

namespace A093641

/-- `lt[A301957(n+1), 3]+1` -/
def P14075768107419682112.Spec : Prop :=
  ∀ n, (P14075768107419682112.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P9159820039029412799

`lt[A336158(n+1), 3]+1`
-/

namespace A093641.P9159820039029412799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093641.P9159820039029412799

namespace A093641

/-- `lt[A336158(n+1), 3]+1` -/
def P9159820039029412799.Spec : Prop :=
  ∀ n, (P9159820039029412799.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P12269497779272998994

`record[lcm(2^val(n+1, 2), A006530(n+1))]`
-/

namespace A093641.P12269497779272998994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A006530 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093641.P12269497779272998994

namespace A093641

/-- `record[lcm(2^val(n+1, 2), A006530(n+1))]` -/
def P12269497779272998994.Spec : Prop :=
  ∀ n, (P12269497779272998994.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P14671263808629593537

`lt[A001222((n+1)/and(n+1, -(n+1))), 2]+1`
-/

namespace A093641.P14671263808629593537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093641.P14671263808629593537

namespace A093641

/-- `lt[A001222((n+1)/and(n+1, -(n+1))), 2]+1` -/
def P14671263808629593537.Spec : Prop :=
  ∀ n, (P14671263808629593537.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P4679775761154070304

`eq[1, A171435(A171435(n+1))]+1`
-/

namespace A093641.P4679775761154070304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A171435 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093641.P4679775761154070304

namespace A093641

/-- `eq[1, A171435(A171435(n+1))]+1` -/
def P4679775761154070304.Spec : Prop :=
  ∀ n, (P4679775761154070304.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P7515241010869683851

`lt[A001222(A000265(n+1)), 2]+1`
-/

namespace A093641.P7515241010869683851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093641.P7515241010869683851

namespace A093641

/-- `lt[A001222(A000265(n+1)), 2]+1` -/
def P7515241010869683851.Spec : Prop :=
  ∀ n, (P7515241010869683851.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P1020967448083927681

`∪[A174090(n+1), A038550(n+1)]`
-/

namespace A093641.P1020967448083927681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093641.P1020967448083927681

namespace A093641

/-- `∪[A174090(n+1), A038550(n+1)]` -/
def P1020967448083927681.Spec : Prop :=
  ∀ n, (P1020967448083927681.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P2766879852883387246

`eq[A318451(n+1)², A318451(n+1)]+1`
-/

namespace A093641.P2766879852883387246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A093641.P2766879852883387246

namespace A093641

/-- `eq[A318451(n+1)², A318451(n+1)]+1` -/
def P2766879852883387246.Spec : Prop :=
  ∀ n, (P2766879852883387246.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P2569865577877916119

`lt[A000005(2*(n+1)), A000005(n+1)+3]+1`
-/

namespace A093641.P2569865577877916119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A093641.P2569865577877916119

namespace A093641

/-- `lt[A000005(2*(n+1)), A000005(n+1)+3]+1` -/
def P2569865577877916119.Spec : Prop :=
  ∀ n, (P2569865577877916119.a n : ℤ) = A093641 (n + 1)

end A093641

/-! ## A093641.P3798414475555752183

`filter[A123345(n+1), A340371(#)]`
-/

namespace A093641.P3798414475555752183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A093641.P3798414475555752183

namespace A093641

/-- `filter[A123345(n+1), A340371(#)]` -/
def P3798414475555752183.Spec : Prop :=
  ∀ n, P3798414475555752183.a n = A093641 (n + 1)

end A093641

/-! ## A093641.P9126556766029076065

`filter[A324109(n+1), A340371(#)]`
-/

namespace A093641.P9126556766029076065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A093641.P9126556766029076065

namespace A093641

/-- `filter[A324109(n+1), A340371(#)]` -/
def P9126556766029076065.Spec : Prop :=
  ∀ n, P9126556766029076065.a n = A093641 (n + 1)

end A093641

/-! ## A093641.P8933543123880610214

`filter[A235034(n+2), A340363(#)]`
-/

namespace A093641.P8933543123880610214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A093641.P8933543123880610214

namespace A093641

/-- `filter[A235034(n+2), A340363(#)]` -/
def P8933543123880610214.Spec : Prop :=
  ∀ n, P8933543123880610214.a n = A093641 (n + 1)

end A093641

/-! ## A093641.P4361358583370357859

`filter[A235034(n+2), A340371(#)]`
-/

namespace A093641.P4361358583370357859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A093641.P4361358583370357859

namespace A093641

/-- `filter[A235034(n+2), A340371(#)]` -/
def P4361358583370357859.Spec : Prop :=
  ∀ n, P4361358583370357859.a n = A093641 (n + 1)

end A093641

/-! ## A093641.P768319473918865450

`filter[A235034(n+2), A340372(#)]`
-/

namespace A093641.P768319473918865450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235034 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A093641.P768319473918865450

namespace A093641

/-- `filter[A235034(n+2), A340372(#)]` -/
def P768319473918865450.Spec : Prop :=
  ∀ n, P768319473918865450.a n = A093641 (n + 1)

end A093641

/-!
# A093642: Numbers not containing all divisors in their binary representation.

The programs for A093642, there is no canonical definition to state claims against.
-/

/-! ## A093642.P14326788067675788475

`comp[A123345(n+1)-1]+1`
-/

namespace A093642.P14326788067675788475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123345 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A093642.P14326788067675788475

/-! ## A093642.P18435613414326496119

`comp[∪[A123345(n+1), A163172(n+1)]]`
-/

namespace A093642.P18435613414326496119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123345 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163172 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A093642.P18435613414326496119

/-! ## A093642.P7150011599301792901

`comp[A123345(n-a(A057077(n)²-1))]` with `a(0)=0`
-/

namespace A093642.P7150011599301792901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A123345 ((n : ℤ) - f1 (A057077 n ^ 2 - 1).toNat).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093642.P7150011599301792901

/-! ## A093642.P15594632359865306641

`∩[A105441(n+1), comp[A123345(n+1)]]`
-/

namespace A093642.P15594632359865306641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123345 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A093642.P15594632359865306641

/-! ## A093642.P9419218027643772324

`lt[A093640(n+1), A000005(n+1)]+1`
-/

namespace A093642.P9419218027643772324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A093642.P9419218027643772324

/-! ## A093642.P796110425187797379

`filter[A110473(n+1), A267814(#)]`
-/

namespace A093642.P796110425187797379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267814 (f1 j).toNat = 1) n)

end

end A093642.P796110425187797379

/-! ## A093642.P3184967336082173523

`A110473(comp[(n+1)*n*A110473(n+1)]+1)`
-/

namespace A093642.P3184967336082173523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A110473 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110473 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A093642.P3184967336082173523

/-!
# A093643: Integer quotients arising in A015759.

The programs for A093643, there is no canonical definition to state claims against.
-/

/-! ## A093643.P164493256170122021

`A001157(A015759(n+1))/A000010(A015759(n+1))`
-/

namespace A093643.P164493256170122021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (A015759 (n + 1)).toNat : ℚ) / (A000010 (A015759 (n + 1)).toNat : ℚ)

end

end A093643.P164493256170122021

/-!
# A093644: (9,1) Pascal triangle.

The programs for A093644, the canonical program `A093644.P11856872725959395427` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093644 has offset 0).

The definition of A093644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093644.P11856872725959395427

`2*A093562(n)-A007318(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A093644

/-- `2*A093562(n)-A007318(n)` -/
def P11856872725959395427.Spec : Prop :=
  ∀ n, P11856872725959395427.a n = A093644 n

theorem P11856872725959395427.correct : P11856872725959395427.Spec := by
  intro n
  simp only [A093644]

end A093644

/-! ## A093644.P14828452323519615796

`2*A093565(n)-A093564(n)`
-/

namespace A093644.P14828452323519615796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093565 n - A093564 n

end

end A093644.P14828452323519615796

namespace A093644

/-- `2*A093565(n)-A093564(n)` -/
def P14828452323519615796.Spec : Prop :=
  ∀ n, P14828452323519615796.a n = A093644 n

end A093644

/-! ## A093644.P2935597065227055143

`2*A093561(n)-A112467(n)`
-/

namespace A093644.P2935597065227055143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093561 n - A112467 n

end

end A093644.P2935597065227055143

namespace A093644

/-- `2*A093561(n)-A112467(n)` -/
def P2935597065227055143.Spec : Prop :=
  ∀ n, P2935597065227055143.a n = A093644 n

end A093644

/-! ## A093644.P2378153032082689187

`A007318(n)+8*A097805(n+1)`
-/

namespace A093644.P2378153032082689187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 8 * A097805 (n + 1)

end

end A093644.P2378153032082689187

namespace A093644

/-- `A007318(n)+8*A097805(n+1)` -/
def P2378153032082689187.Spec : Prop :=
  ∀ n, P2378153032082689187.a n = A093644 n

end A093644

/-! ## A093644.P4212985928757191258

`A097805(n)+9*A097805(n+1)`
-/

namespace A093644.P4212985928757191258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + 9 * A097805 (n + 1)

end

end A093644.P4212985928757191258

namespace A093644

/-- `A097805(n)+9*A097805(n+1)` -/
def P4212985928757191258.Spec : Prop :=
  ∀ n, P4212985928757191258.a n = A093644 n

end A093644

/-! ## A093644.P7310897508046028813

`A029653(n)+A093565(n)-A007318(n)`
-/

namespace A093644.P7310897508046028813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + (A093565 n - A007318 n)

end

end A093644.P7310897508046028813

namespace A093644

/-- `A029653(n)+A093565(n)-A007318(n)` -/
def P7310897508046028813.Spec : Prop :=
  ∀ n, P7310897508046028813.a n = A093644 n

end A093644

/-! ## A093644.P10821184335036921991

`A007318(n)+A093645(n)-A029653(n)`
-/

namespace A093644.P10821184335036921991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A093645 n - A029653 n)

end

end A093644.P10821184335036921991

namespace A093644

/-- `A007318(n)+A093645(n)-A029653(n)` -/
def P10821184335036921991.Spec : Prop :=
  ∀ n, P10821184335036921991.a n = A093644 n

end A093644

/-! ## A093644.P9522276726440707618

`A093562(n)+A093563(n)-A029653(n)`
-/

namespace A093644.P9522276726440707618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 n + (A093563 n - A029653 n)

end

end A093644.P9522276726440707618

namespace A093644

/-- `A093562(n)+A093563(n)-A029653(n)` -/
def P9522276726440707618.Spec : Prop :=
  ∀ n, P9522276726440707618.a n = A093644 n

end A093644

/-!
# A093645: (10,1) Pascal triangle.

The programs for A093645, the canonical program `A093645.P14130196352248059033` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093645 has offset 0).

The definition of A093645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093645.P14130196352248059033

`2*A093563(n)-A029653(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A093645

/-- `2*A093563(n)-A029653(n)` -/
def P14130196352248059033.Spec : Prop :=
  ∀ n, P14130196352248059033.a n = A093645 n

theorem P14130196352248059033.correct : P14130196352248059033.Spec := by
  intro n
  simp only [A093645]

end A093645

/-! ## A093645.P3999191586244085303

`2*A093644(n)-A093565(n)`
-/

namespace A093645.P3999191586244085303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093644 n - A093565 n

end

end A093645.P3999191586244085303

namespace A093645

/-- `2*A093644(n)-A093565(n)` -/
def P3999191586244085303.Spec : Prop :=
  ∀ n, P3999191586244085303.a n = A093645 n

end A093645

/-! ## A093645.P15024903805293411859

`A097805(n)+10*A097805(n+1)`
-/

namespace A093645.P15024903805293411859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + 10 * A097805 (n + 1)

end

end A093645.P15024903805293411859

namespace A093645

/-- `A097805(n)+10*A097805(n+1)` -/
def P15024903805293411859.Spec : Prop :=
  ∀ n, P15024903805293411859.a n = A093645 n

end A093645

/-! ## A093645.P8487679012608132966

`A029653(n)+A093644(n)-A007318(n)`
-/

namespace A093645.P8487679012608132966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + (A093644 n - A007318 n)

end

end A093645.P8487679012608132966

namespace A093645

/-- `A029653(n)+A093644(n)-A007318(n)` -/
def P8487679012608132966.Spec : Prop :=
  ∀ n, P8487679012608132966.a n = A093645 n

end A093645

/-! ## A093645.P7679678385011766054

`A093560(n)+A093565(n)-A007318(n)`
-/

namespace A093645.P7679678385011766054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n + (A093565 n - A007318 n)

end

end A093645.P7679678385011766054

namespace A093645

/-- `A093560(n)+A093565(n)-A007318(n)` -/
def P7679678385011766054.Spec : Prop :=
  ∀ n, P7679678385011766054.a n = A093645 n

end A093645

/-! ## A093645.P11131286158760875485

`A093562(n)+A093563(n)-A007318(n)`
-/

namespace A093645.P11131286158760875485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093562 n + (A093563 n - A007318 n)

end

end A093645.P11131286158760875485

namespace A093645

/-- `A093562(n)+A093563(n)-A007318(n)` -/
def P11131286158760875485.Spec : Prop :=
  ∀ n, P11131286158760875485.a n = A093645 n

end A093645

/-! ## A093645.P9471153221753311432

`A096940(n+1)+A093563(n)-A007318(n+1)`
-/

namespace A093645.P9471153221753311432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (n + 1) + (A093563 n - A007318 (n + 1))

end

end A093645.P9471153221753311432

namespace A093645

/-- `A096940(n+1)+A093563(n)-A007318(n+1)` -/
def P9471153221753311432.Spec : Prop :=
  ∀ n, P9471153221753311432.a n = A093645 n

end A093645

/-! ## A093645.P4835837050682895961

`A096956(n+1)+A093563(n)-A029635(n+1)`
-/

namespace A093645.P4835837050682895961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 (n + 1) + (A093563 n - A029635 (n + 1))

end

end A093645.P4835837050682895961

namespace A093645

/-- `A096956(n+1)+A093563(n)-A029635(n+1)` -/
def P4835837050682895961.Spec : Prop :=
  ∀ n, P4835837050682895961.a n = A093645 n

end A093645

/-!
# A093646: Higher dimensional figurate numbers based on 12-gonal numbers A051624.

The programs for A093646, the canonical program `A093646.P9679200679627754189` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093646 has offset 0).

The definition of A093646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093646.P9679200679627754189

`Δ[n*C(n+8, 9)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A093646

/-- `Δ[n*C(n+8, 9)]` -/
def P9679200679627754189.Spec : Prop :=
  ∀ n, P9679200679627754189.a n = A093646 n

theorem P9679200679627754189.correct : P9679200679627754189.Spec := by
  intro n
  simp only [A093646]

end A093646

/-! ## A093646.P3691495652795074835

`∑[∑[∑[∑[(2*n+1)*∑[∑[∑[n+1]]]]]]]`
-/

namespace A093646.P3691495652795074835
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f5 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093646.P3691495652795074835

namespace A093646

/-- `∑[∑[∑[∑[(2*n+1)*∑[∑[∑[n+1]]]]]]]` -/
def P3691495652795074835.Spec : Prop :=
  ∀ n, (P3691495652795074835.a n : ℤ) = A093646 n

end A093646

/-! ## A093646.P12157600371307164347

`root(∑[A056125(n)], 2)²`
-/

namespace A093646.P12157600371307164347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056125 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A093646.P12157600371307164347

namespace A093646

/-- `root(∑[A056125(n)], 2)²` -/
def P12157600371307164347.Spec : Prop :=
  ∀ n, P12157600371307164347.a n = (A093646 n : ℝ)

end A093646

/-! ## A093646.P15534421807542978747

`2*A056003(n)-A056122(n)`
-/

namespace A093646.P15534421807542978747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056003 n - A056122 n

end

end A093646.P15534421807542978747

namespace A093646

/-- `2*A056003(n)-A056122(n)` -/
def P15534421807542978747.Spec : Prop :=
  ∀ n, P15534421807542978747.a n = A093646 n

end A093646

/-! ## A093646.P5031452787033511503

`A000582(n+9)+n*A000581(n+8)`
-/

namespace A093646.P5031452787033511503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (n : ℤ) * A000581 (n + 8)

end

end A093646.P5031452787033511503

namespace A093646

/-- `A000582(n+9)+n*A000581(n+8)` -/
def P5031452787033511503.Spec : Prop :=
  ∀ n, P5031452787033511503.a n = A093646 n

end A093646

/-! ## A093646.P7351346305095388638

`A000582(n+9)+n*∑[A000580(n+7)]`
-/

namespace A093646.P7351346305095388638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093646.P7351346305095388638

namespace A093646

/-- `A000582(n+9)+n*∑[A000580(n+7)]` -/
def P7351346305095388638.Spec : Prop :=
  ∀ n, P7351346305095388638.a n = A093646 n

end A093646

/-! ## A093646.P3004747147104796256

`Δ[n*A007318(Δ[A111144(n)])]`
-/

namespace A093646.P3004747147104796256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007318 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093646.P3004747147104796256

namespace A093646

/-- `Δ[n*A007318(Δ[A111144(n)])]` -/
def P3004747147104796256.Spec : Prop :=
  ∀ n, P3004747147104796256.a n = A093646 n

end A093646

/-!
# A093647: Records in A093101.

The programs for A093647, there is no canonical definition to state claims against.
-/

/-! ## A093647.P10309082673388793875

`record[A093101(n)]`
-/

namespace A093647.P10309082673388793875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093647.P10309082673388793875

/-! ## A093647.P14632236615575802294

`A093101(A093651(n))`
-/

namespace A093647.P14632236615575802294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 (A093651 n).toNat

end

end A093647.P14632236615575802294

/-!
# A093652: Let a(1) = 1, a(2) = 2, a(3) = 7, a(4) = 15 and for n >= 5 set a(n) = (n*b(n) - b(n-2)) / 2, where b(n) = 4*b(n-2) - b(n-4) for n >= 5 and b(1) = 1, b(2) = 2, b(3) = 5, b(4) = 8.

The programs for A093652, the canonical program `A093652.P15378917478713681621` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093652 has offset 1).

The definition of A093652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093652.P15378917478713681621

`8*a(n-2)-18*a(n-4)+8*a(n-6)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=15, a(4)=45, a(5)=86, a(6)=239, a(7)=433`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A093652

/-- `8*a(n-2)-18*a(n-4)+8*a(n-6)-a(n-8)` -/
def P15378917478713681621.Spec : Prop :=
  ∀ n, P15378917478713681621.a n = A093652 (n + 1)

theorem P15378917478713681621.correct : P15378917478713681621.Spec := by
  intro n
  simp only [A093652, Nat.add_sub_cancel]

end A093652

/-! ## A093652.P10511997332568503037

`A067629(A342514(a(n-2)))` with `a(0)=1, a(1)=2, a(2)=7, a(3)=15, a(4)=45, a(5)=86`
-/

namespace A093652.P10511997332568503037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 15, 45, 86] fun n a =>
  A067629 (A342514 (a (n - 2)).toNat).toNat

end

end A093652.P10511997332568503037

namespace A093652

/-- `A067629(A342514(a(n-2)))` -/
def P10511997332568503037.Spec : Prop :=
  ∀ n, P10511997332568503037.a n = A093652 (n + 1)

end A093652

/-! ## A093652.P1144291558058173853

`or(A000006(A162482(n)), A097332(n))`
-/

namespace A093652.P1144291558058173853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000006 (A162482 n).toNat) (A097332 n)

end

end A093652.P1144291558058173853

namespace A093652

/-- `or(A000006(A162482(n)), A097332(n))` -/
def P1144291558058173853.Spec : Prop :=
  ∀ n, P1144291558058173853.a n = A093652 (n + 1)

end A093652

/-!
# A093653: Total number of 1's in binary expansion of all divisors of n.

The programs for A093653, the canonical program `A093653.P11288549894357571453` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093653 has offset 1).

The definition of A093653 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093653.P11288549894357571453

`A292257(n+1)+A000120(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093653

/-- `A292257(n+1)+A000120(n+1)` -/
def P11288549894357571453.Spec : Prop :=
  ∀ n, P11288549894357571453.a n = A093653 (n + 1)

theorem P11288549894357571453.correct : P11288549894357571453.Spec := by
  intro n
  simp only [A093653, Nat.add_sub_cancel]

end A093653

/-! ## A093653.P11995607540177178789

`A182627(n+1)-A226590(n+1)`
-/

namespace A093653.P11995607540177178789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182627 (n + 1) - A226590 (n + 1)

end

end A093653.P11995607540177178789

namespace A093653

/-- `A182627(n+1)-A226590(n+1)` -/
def P11995607540177178789.Spec : Prop :=
  ∀ n, P11995607540177178789.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P8111767769754106682

`∑{d}[n+1, A000120(#)]`
-/

namespace A093653.P8111767769754106682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 d

end

end A093653.P8111767769754106682

namespace A093653

/-- `∑{d}[n+1, A000120(#)]` -/
def P8111767769754106682.Spec : Prop :=
  ∀ n, P8111767769754106682.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P1923644014332034153

`A074400(n+1)-A318446(n+1)`
-/

namespace A093653.P1923644014332034153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A318446 (n + 1)

end

end A093653.P1923644014332034153

namespace A093653

/-- `A074400(n+1)-A318446(n+1)` -/
def P1923644014332034153.Spec : Prop :=
  ∀ n, P1923644014332034153.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P13453832200256635446

`A296075(n+1)-A318448(n+1)`
-/

namespace A093653.P13453832200256635446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1) - A318448 (n + 1)

end

end A093653.P13453832200256635446

namespace A093653

/-- `A296075(n+1)-A318448(n+1)` -/
def P13453832200256635446.Spec : Prop :=
  ∀ n, P13453832200256635446.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P4931439849580310723

`2*A292257(n+1)-A192895(n+1)`
-/

namespace A093653.P4931439849580310723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292257 (n + 1) - A192895 (n + 1)

end

end A093653.P4931439849580310723

namespace A093653

/-- `2*A292257(n+1)-A192895(n+1)` -/
def P4931439849580310723.Spec : Prop :=
  ∀ n, P4931439849580310723.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P9108019738284116903

`∑{d}[n+1, A000005(#)*A297115((n+1)/#)]`
-/

namespace A093653.P9108019738284116903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A297115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A093653.P9108019738284116903

namespace A093653

/-- `∑{d}[n+1, A000005(#)*A297115((n+1)/#)]` -/
def P9108019738284116903.Spec : Prop :=
  ∀ n, P9108019738284116903.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P11237409516668594402

`∑{d}[n+1, A296075(#)*A379106((n+1)/#)]`
-/

namespace A093653.P11237409516668594402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A379106 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A093653.P11237409516668594402

namespace A093653

/-- `∑{d}[n+1, A296075(#)*A379106((n+1)/#)]` -/
def P11237409516668594402.Spec : Prop :=
  ∀ n, P11237409516668594402.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P5986167941429091752

`∑{d}[n+1, A349606(#)*A378989((n+1)/#)]`
-/

namespace A093653.P5986167941429091752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349606 d * A378989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A093653.P5986167941429091752

namespace A093653

/-- `∑{d}[n+1, A349606(#)*A378989((n+1)/#)]` -/
def P5986167941429091752.Spec : Prop :=
  ∀ n, P5986167941429091752.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P7188456945337181332

`A000120(n+1)+A192895(n+1)+A000120(n+1)`
-/

namespace A093653.P7188456945337181332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A192895 (n + 1) + A000120 (n + 1))

end

end A093653.P7188456945337181332

namespace A093653

/-- `A000120(n+1)+A192895(n+1)+A000120(n+1)` -/
def P7188456945337181332.Spec : Prop :=
  ∀ n, P7188456945337181332.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P18049618341023380870

`A000203(n+1)-(A318448(n+1)+A211779(n+1))`
-/

namespace A093653.P18049618341023380870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A318448 (n + 1) + A211779 (n + 1))

end

end A093653.P18049618341023380870

namespace A093653

/-- `A000203(n+1)-(A318448(n+1)+A211779(n+1))` -/
def P18049618341023380870.Spec : Prop :=
  ∀ n, P18049618341023380870.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P233395935347828766

`A007429(n+1)+A296075(n+1)-A318446(n+1)`
-/

namespace A093653.P233395935347828766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + (A296075 (n + 1) - A318446 (n + 1))

end

end A093653.P233395935347828766

namespace A093653

/-- `A007429(n+1)+A296075(n+1)-A318446(n+1)` -/
def P233395935347828766.Spec : Prop :=
  ∀ n, P233395935347828766.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P6531279497119924789

`A033879(n+1)+A296074(n+1)-A318448(n+1)`
-/

namespace A093653.P6531279497119924789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A296074 (n + 1) - A318448 (n + 1))

end

end A093653.P6531279497119924789

namespace A093653

/-- `A033879(n+1)+A296074(n+1)-A318448(n+1)` -/
def P6531279497119924789.Spec : Prop :=
  ∀ n, P6531279497119924789.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P17024606275688721606

`A318678(n+1)-(A318679(n+1)+A318448(n+1))`
-/

namespace A093653.P17024606275688721606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1) - (A318679 (n + 1) + A318448 (n + 1))

end

end A093653.P17024606275688721606

namespace A093653

/-- `A318678(n+1)-(A318679(n+1)+A318448(n+1))` -/
def P17024606275688721606.Spec : Prop :=
  ∀ n, P17024606275688721606.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P312474525585516074

`∑{d}[n+1, A001222(A278222(#))]`
-/

namespace A093653.P312474525585516074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A278222 d).toNat

end

end A093653.P312474525585516074

namespace A093653

/-- `∑{d}[n+1, A001222(A278222(#))]` -/
def P312474525585516074.Spec : Prop :=
  ∀ n, P312474525585516074.a n = A093653 (n + 1)

end A093653

/-! ## A093653.P12001271423294037150

`∑{digits}[A182621(n+1), #]`
-/

namespace A093653.P12001271423294037150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A093653.P12001271423294037150

namespace A093653

/-- `∑{digits}[A182621(n+1), #]` -/
def P12001271423294037150.Spec : Prop :=
  ∀ n, (P12001271423294037150.a n : ℤ) = A093653 (n + 1)

end A093653

/-! ## A093653.P13205898719465303157

`A292257(n+1)+A001222(A019565(n+1))`
-/

namespace A093653.P13205898719465303157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1) + A001222 (A019565 (n + 1)).toNat

end

end A093653.P13205898719465303157

namespace A093653

/-- `A292257(n+1)+A001222(A019565(n+1))` -/
def P13205898719465303157.Spec : Prop :=
  ∀ n, P13205898719465303157.a n = A093653 (n + 1)

end A093653

/-!
# A093654: Lower triangular matrix, read by rows, defined as the convergent of the concatenation of matrices using the iteration: M(n+1) = [[M(n),0*M(n)],[M(n)^2,M(n)^2]], with M(0) = [1].

The programs for A093654, there is no canonical definition to state claims against.
-/

/-! ## A093654.P11891120580488086499

`A167230(A061887(2*n))`
-/

namespace A093654.P11891120580488086499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167230 (A061887 (2 * n)).toNat

end

end A093654.P11891120580488086499

/-! ## A093654.P13724276163823316324

`A093658(A061887(2*n+1))`
-/

namespace A093654.P13724276163823316324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093658 (A061887 (2 * n + 1)).toNat

end

end A093654.P13724276163823316324

/-! ## A093654.P13976734920113145616

`A093658(n+1)!!*A093662(n+1)`
-/

namespace A093654.P13976734920113145616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.factorial (A093658 (n + 1)).toNat) : ℤ) * A093662 (n + 1)

end

end A093654.P13976734920113145616

/-! ## A093654.P18279616373278244624

`A093662(A185870(n+1))*A167230(n)`
-/

namespace A093654.P18279616373278244624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093662 (A185870 (n + 1)).toNat * A167230 n

end

end A093654.P18279616373278244624

/-! ## A093654.P596138856253710305

`A093658(n+1)*A093662(A185870(n+1))`
-/

namespace A093654.P596138856253710305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093658 (n + 1) * A093662 (A185870 (n + 1)).toNat

end

end A093654.P596138856253710305

/-!
# A093655: First column of lower triangular matrix A093654.

The programs for A093655, there is no canonical definition to state claims against.
-/

/-! ## A093655.P2795202173154699660

`A008934(A000120(n))`
-/

namespace A093655.P2795202173154699660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (A000120 n).toNat

end

end A093655.P2795202173154699660

/-! ## A093655.P5125058918574985632

`A008934(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A093655.P5125058918574985632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093655.P5125058918574985632

/-! ## A093655.P6094804157431925489

`A008934(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A093655.P6094804157431925489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A093655.P6094804157431925489

/-! ## A093655.P1745875402803492353

`A008934(log2(A001316(n)))`
-/

namespace A093655.P1745875402803492353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

end

end A093655.P1745875402803492353

/-! ## A093655.P7539181730962076231

`A008934(∑[A088705(n)])`
-/

namespace A093655.P7539181730962076231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093655.P7539181730962076231

/-! ## A093655.P15165962078648560177

`A008934(val(A001316(n), 2))`
-/

namespace A093655.P15165962078648560177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (SequenceMachineLib.valuation (A001316 n).toNat 2)

end

end A093655.P15165962078648560177

/-! ## A093655.P13487767930287129960

`A008934(∑{e}[A001316(n), #])`
-/

namespace A093655.P13487767930287129960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A093655.P13487767930287129960

/-! ## A093655.P9132308032186209032

`A008934(∑{digits}[A007088(n), #])`
-/

namespace A093655.P9132308032186209032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A093655.P9132308032186209032

/-! ## A093655.P18016109817546599312

`A008934(A001222(A019565(n)))`
-/

namespace A093655.P18016109817546599312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (A001222 (A019565 n).toNat).toNat

end

end A093655.P18016109817546599312

/-! ## A093655.P16597361917044887358

`A008934(A001222(A071044(n)))`
-/

namespace A093655.P16597361917044887358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (A001222 (A071044 n).toNat).toNat

end

end A093655.P16597361917044887358

/-!
# A093656: Row sums of lower triangular matrix A093654.

The programs for A093656, there is no canonical definition to state claims against.
-/

/-! ## A093656.P2816835035247876060

`A093657(∑{e}[3*a(and(n, n-1)), #])` with `a(0)=2`
-/

namespace A093656.P2816835035247876060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093657 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A093656.P2816835035247876060

/-! ## A093656.P4116906529098623271

`A093657(A000120(n)+1)`
-/

namespace A093656.P4116906529098623271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093657 (A000120 n + 1).toNat

end

end A093656.P4116906529098623271

/-! ## A093656.P13496580786130228594

`A093657(A000120(Δ[n²]))`
-/

namespace A093656.P13496580786130228594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093657 (A000120 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A093656.P13496580786130228594

/-! ## A093656.P10783644434420099707

`A093657(∑{e}[A160713(n), #])`
-/

namespace A093656.P10783644434420099707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093657 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A093656.P10783644434420099707

/-! ## A093656.P16470298351258559053

`A093657(∏{e}[A256257(n), #])`
-/

namespace A093656.P16470298351258559053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093657 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A093656.P16470298351258559053

/-!
# A093657: 2^(n-1)-th term of the row sums of triangle A093654.

The programs for A093657, there is no canonical definition to state claims against.
-/

/-! ## A093657.P2076281024109270016

`A093656(2^n)`
-/

namespace A093657.P2076281024109270016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093656 (2 ^ n)

end

end A093657.P2076281024109270016

/-! ## A093657.P7321397086988654148

`record[A093656(n+1)]`
-/

namespace A093657.P7321397086988654148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093657.P7321397086988654148

/-! ## A093657.P1515988619564907407

`A093656(A000079(n))+char[7]`
-/

namespace A093657.P1515988619564907407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093656 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A093657.P1515988619564907407

/-!
# A093658: Lower triangular matrix, read by rows, defined as the convergent of the concatenation of matrices using the iteration: M(n+1) = [[M(n),0*M(n)],[M(n)^2,M(n)]], with M(0) = [1].

The programs for A093658, the canonical program `A093658.P16333169482803331583` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093658 has offset 1).

The definition of A093658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093658.P6441133796967216400

`round(log2(cosh(A167230(n))))`
-/

namespace A093658.P6441133796967216400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.cosh (A167230 n : ℝ)))

end

end A093658.P6441133796967216400

namespace A093658

/-- `round(log2(cosh(A167230(n))))` -/
def P6441133796967216400.Spec : Prop :=
  ∀ n, P6441133796967216400.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P9014288429125830331

`A036409(A166453(n))`
-/

namespace A093658.P9014288429125830331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036409 (A166453 n).toNat

end

end A093658.P9014288429125830331

namespace A093658

/-- `A036409(A166453(n))` -/
def P9014288429125830331.Spec : Prop :=
  ∀ n, P9014288429125830331.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P11261811529424589506

`A060027(A166453(n)+1)`
-/

namespace A093658.P11261811529424589506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060027 (A166453 n + 1).toNat

end

end A093658.P11261811529424589506

namespace A093658

/-- `A060027(A166453(n)+1)` -/
def P11261811529424589506.Spec : Prop :=
  ∀ n, P11261811529424589506.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P11185003712573185522

`A104035(A166453(n)+1)`
-/

namespace A093658.P11185003712573185522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (A166453 n + 1).toNat

end

end A093658.P11185003712573185522

namespace A093658

/-- `A104035(A166453(n)+1)` -/
def P11185003712573185522.Spec : Prop :=
  ∀ n, P11185003712573185522.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P16023598274372706157

`A300639(A166453(n)+1)`
-/

namespace A093658.P16023598274372706157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A166453 n + 1).toNat

end

end A093658.P16023598274372706157

namespace A093658

/-- `A300639(A166453(n)+1)` -/
def P16023598274372706157.Spec : Prop :=
  ∀ n, P16023598274372706157.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P9601020991246873810

`A004773(lcm((-1)^n, A167230(n)))`
-/

namespace A093658.P9601020991246873810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (Int.lcm ((-1) ^ n) (A167230 n))

end

end A093658.P9601020991246873810

namespace A093658

/-- `A004773(lcm((-1)^n, A167230(n)))` -/
def P9601020991246873810.Spec : Prop :=
  ∀ n, P9601020991246873810.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P16333169482803331583

`A047999(n)*A093659(A025581(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093658

/-- `A047999(n)*A093659(A025581(n))` -/
def P16333169482803331583.Spec : Prop :=
  ∀ n, P16333169482803331583.a n = A093658 (n + 1)

theorem P16333169482803331583.correct : P16333169482803331583.Spec := by
  intro n
  simp only [A093658, Nat.add_sub_cancel]

end A093658

/-! ## A093658.P17338977142546017804

`A004773(A167230(n)^A056926(n))`
-/

namespace A093658.P17338977142546017804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A093658.P17338977142546017804

namespace A093658

/-- `A004773(A167230(n)^A056926(n))` -/
def P17338977142546017804.Spec : Prop :=
  ∀ n, P17338977142546017804.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P3878920808857119409

`A023717(A167230(n)^A056926(n))`
-/

namespace A093658.P3878920808857119409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A093658.P3878920808857119409

namespace A093658

/-- `A023717(A167230(n)^A056926(n))` -/
def P3878920808857119409.Spec : Prop :=
  ∀ n, P3878920808857119409.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P14602289774700673080

`A029927(A167230(n)^A056926(n))`
-/

namespace A093658.P14602289774700673080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029927 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A093658.P14602289774700673080

namespace A093658

/-- `A029927(A167230(n)^A056926(n))` -/
def P14602289774700673080.Spec : Prop :=
  ∀ n, P14602289774700673080.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P252641835504344676

`A072796(A167230(n)^A056926(n))`
-/

namespace A093658.P252641835504344676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072796 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A093658.P252641835504344676

namespace A093658

/-- `A072796(A167230(n)^A056926(n))` -/
def P252641835504344676.Spec : Prop :=
  ∀ n, P252641835504344676.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P11964359011114214875

`A073138(A167230(n)^A056926(n))`
-/

namespace A093658.P11964359011114214875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A093658.P11964359011114214875

namespace A093658

/-- `A073138(A167230(n)^A056926(n))` -/
def P11964359011114214875.Spec : Prop :=
  ∀ n, P11964359011114214875.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P14045355047890085984

`A089633(A167230(n)^A056926(n))`
-/

namespace A093658.P14045355047890085984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A093658.P14045355047890085984

namespace A093658

/-- `A089633(A167230(n)^A056926(n))` -/
def P14045355047890085984.Spec : Prop :=
  ∀ n, P14045355047890085984.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P14783900186721263495

`A122310(A167230(n)^A056926(n))`
-/

namespace A093658.P14783900186721263495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122310 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A056926 n : ℤ))).toNat

end

end A093658.P14783900186721263495

namespace A093658

/-- `A122310(A167230(n)^A056926(n))` -/
def P14783900186721263495.Spec : Prop :=
  ∀ n, P14783900186721263495.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P7889323013379195666

`A004773(A167230(n)^A178334(n))`
-/

namespace A093658.P7889323013379195666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A093658.P7889323013379195666

namespace A093658

/-- `A004773(A167230(n)^A178334(n))` -/
def P7889323013379195666.Spec : Prop :=
  ∀ n, P7889323013379195666.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P9240511270727582944

`A073138(A167230(n)^A178334(n))`
-/

namespace A093658.P9240511270727582944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A093658.P9240511270727582944

namespace A093658

/-- `A073138(A167230(n)^A178334(n))` -/
def P9240511270727582944.Spec : Prop :=
  ∀ n, P9240511270727582944.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P7199372553746785564

`A122310(A167230(n)^A178334(n))`
-/

namespace A093658.P7199372553746785564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122310 (SequenceMachineLib.roundAway ((A167230 n : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A093658.P7199372553746785564

namespace A093658

/-- `A122310(A167230(n)^A178334(n))` -/
def P7199372553746785564.Spec : Prop :=
  ∀ n, P7199372553746785564.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P1506059046358456204

`A004773(A167230(n)*A178334(n+1))`
-/

namespace A093658.P1506059046358456204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A167230 n * A178334 (n + 1)).toNat

end

end A093658.P1506059046358456204

namespace A093658

/-- `A004773(A167230(n)*A178334(n+1))` -/
def P1506059046358456204.Spec : Prop :=
  ∀ n, P1506059046358456204.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P15585950763792519833

`A073138(A167230(n)*A178334(n+1))`
-/

namespace A093658.P15585950763792519833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 (A167230 n * A178334 (n + 1)).toNat

end

end A093658.P15585950763792519833

namespace A093658

/-- `A073138(A167230(n)*A178334(n+1))` -/
def P15585950763792519833.Spec : Prop :=
  ∀ n, P15585950763792519833.a n = A093658 (n + 1)

end A093658

/-! ## A093658.P3280561109716557505

`A122310(A167230(n)*A178334(n+1))`
-/

namespace A093658.P3280561109716557505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122310 (A167230 n * A178334 (n + 1)).toNat

end

end A093658.P3280561109716557505

namespace A093658

/-- `A122310(A167230(n)*A178334(n+1))` -/
def P3280561109716557505.Spec : Prop :=
  ∀ n, P3280561109716557505.a n = A093658 (n + 1)

end A093658

/-!
# A093659: First column of lower triangular matrix A093658; factorial of the number of 1's in binary expansion of n.

The programs for A093659, the canonical program `A093659.P5890510302390266350` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093659 has offset 0).

The definition of A093659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093659.P5890510302390266350

`A000120(n)!`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093659

/-- `A000120(n)!` -/
def P5890510302390266350.Spec : Prop :=
  ∀ n, (P5890510302390266350.a n : ℤ) = A093659 n

theorem P5890510302390266350.correct : P5890510302390266350.Spec := by
  intro n
  simp only [A093659]

end A093659

/-! ## A093659.P16313363563665307757

`∑[∑{e}[xor(n, -n), 2-#]]!`
-/

namespace A093659.P16313363563665307757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093659.P16313363563665307757

namespace A093659

/-- `∑[∑{e}[xor(n, -n), 2-#]]!` -/
def P16313363563665307757.Spec : Prop :=
  ∀ n, (P16313363563665307757.a n : ℤ) = A093659 n

end A093659

/-! ## A093659.P5471026421456090810

`∑[1-val(n, 2)*a(n-1)]!` with `a(0)=0`
-/

namespace A093659.P5471026421456090810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - (SequenceMachineLib.valuation n 2 : ℤ) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093659.P5471026421456090810

namespace A093659

/-- `∑[1-val(n, 2)*a(n-1)]!` -/
def P5471026421456090810.Spec : Prop :=
  ∀ n, (P5471026421456090810.a n : ℤ) = A093659 n

end A093659

/-! ## A093659.P9254870423547224592

`∑[a(floor(n/2))-a(n-1)]!` with `a(0)=0, a(1)=1`
-/

namespace A093659.P9254870423547224592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093659.P9254870423547224592

namespace A093659

/-- `∑[a(floor(n/2))-a(n-1)]!` -/
def P9254870423547224592.Spec : Prop :=
  ∀ n, (P9254870423547224592.a n : ℤ) = A093659 n

end A093659

/-! ## A093659.P18172036729778399925

`(val(n+1, 2)+n-∑[val(n+1, 2)])!`
-/

namespace A093659.P18172036729778399925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A093659.P18172036729778399925

namespace A093659

/-- `(val(n+1, 2)+n-∑[val(n+1, 2)])!` -/
def P18172036729778399925.Spec : Prop :=
  ∀ n, (P18172036729778399925.a n : ℤ) = A093659 n

end A093659

/-! ## A093659.P13696874026196648424

`log2(A001316(n))!`
-/

namespace A093659.P13696874026196648424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

end

end A093659.P13696874026196648424

namespace A093659

/-- `log2(A001316(n))!` -/
def P13696874026196648424.Spec : Prop :=
  ∀ n, (P13696874026196648424.a n : ℤ) = A093659 n

end A093659

/-! ## A093659.P2090422097669415377

`∑[A088705(n)]!`
-/

namespace A093659.P2090422097669415377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093659.P2090422097669415377

namespace A093659

/-- `∑[A088705(n)]!` -/
def P2090422097669415377.Spec : Prop :=
  ∀ n, (P2090422097669415377.a n : ℤ) = A093659 n

end A093659

/-! ## A093659.P10829972356065513330

`log2(A060632(2*n))!`
-/

namespace A093659.P10829972356065513330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A060632 (2 * n) : ℝ))).toNat

end

end A093659.P10829972356065513330

namespace A093659

/-- `log2(A060632(2*n))!` -/
def P10829972356065513330.Spec : Prop :=
  ∀ n, (P10829972356065513330.a n : ℤ) = A093659 n

end A093659

/-! ## A093659.P8236949572894457063

`∑[∑{e}[A020639(n+1), #-val(n, 2)]]!`
-/

namespace A093659.P8236949572894457063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, ((Nat.factorization (f2 n).natAbs p : ℤ) - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093659.P8236949572894457063

namespace A093659

/-- `∑[∑{e}[A020639(n+1), #-val(n, 2)]]!` -/
def P8236949572894457063.Spec : Prop :=
  ∀ n, (P8236949572894457063.a n : ℤ) = A093659 n

end A093659

/-! ## A093659.P14326661671883414385

`A112624(A001316(n))`
-/

namespace A093659.P14326661671883414385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A001316 n).toNat

end

end A093659.P14326661671883414385

namespace A093659

/-- `A112624(A001316(n))` -/
def P14326661671883414385.Spec : Prop :=
  ∀ n, P14326661671883414385.a n = A093659 n

end A093659

/-! ## A093659.P16458716150014807332

`A124774(A038573(n))`
-/

namespace A093659.P16458716150014807332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A038573 n).toNat

end

end A093659.P16458716150014807332

namespace A093659

/-- `A124774(A038573(n))` -/
def P16458716150014807332.Spec : Prop :=
  ∀ n, P16458716150014807332.a n = A093659 n

end A093659

/-! ## A093659.P12867161380591071122

`A132369(A057334(n))`
-/

namespace A093659.P12867161380591071122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132369 (A057334 n).toNat

end

end A093659.P12867161380591071122

namespace A093659

/-- `A132369(A057334(n))` -/
def P12867161380591071122.Spec : Prop :=
  ∀ n, P12867161380591071122.a n = A093659 n

end A093659

/-! ## A093659.P3790514557147806582

`A284001(A073137(n))`
-/

namespace A093659.P3790514557147806582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284001 (A073137 n).toNat

end

end A093659.P3790514557147806582

namespace A093659

/-- `A284001(A073137(n))` -/
def P3790514557147806582.Spec : Prop :=
  ∀ n, P3790514557147806582.a n = A093659 n

end A093659

/-! ## A093659.P13923896450319928117

`A130675(A268444(n))`
-/

namespace A093659.P13923896450319928117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (A268444 n).toNat

end

end A093659.P13923896450319928117

namespace A093659

/-- `A130675(A268444(n))` -/
def P13923896450319928117.Spec : Prop :=
  ∀ n, P13923896450319928117.a n = A093659 n

end A093659

/-! ## A093659.P17313982733224930466

`A001222(A071044(n))!`
-/

namespace A093659.P17313982733224930466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (A071044 n).toNat).toNat

end

end A093659.P17313982733224930466

namespace A093659

/-- `A001222(A071044(n))!` -/
def P17313982733224930466.Spec : Prop :=
  ∀ n, (P17313982733224930466.a n : ℤ) = A093659 n

end A093659

/-! ## A093659.P6180599753783878881

`A277011(A088512(n)+1)`
-/

namespace A093659.P6180599753783878881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A088512 n + 1).toNat

end

end A093659.P6180599753783878881

namespace A093659

/-- `A277011(A088512(n)+1)` -/
def P6180599753783878881.Spec : Prop :=
  ∀ n, P6180599753783878881.a n = A093659 n

end A093659

/-! ## A093659.P9084387467407775910

`A246660(A001316(n)-1)`
-/

namespace A093659.P9084387467407775910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 (A001316 n - 1).toNat

end

end A093659.P9084387467407775910

namespace A093659

/-- `A246660(A001316(n)-1)` -/
def P9084387467407775910.Spec : Prop :=
  ∀ n, P9084387467407775910.a n = A093659 n

end A093659

/-! ## A093659.P3905272514493536654

`A081123(2*A000120(n))`
-/

namespace A093659.P3905272514493536654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * A000120 n).toNat

end

end A093659.P3905272514493536654

namespace A093659

/-- `A081123(2*A000120(n))` -/
def P3905272514493536654.Spec : Prop :=
  ∀ n, P3905272514493536654.a n = A093659 n

end A093659

/-! ## A093659.P5238556405824259098

`A000142(n-A011371(n))`
-/

namespace A093659.P5238556405824259098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 ((n : ℤ) - A011371 n).toNat

end

end A093659.P5238556405824259098

namespace A093659

/-- `A000142(n-A011371(n))` -/
def P5238556405824259098.Spec : Prop :=
  ∀ n, P5238556405824259098.a n = A093659 n

end A093659

/-! ## A093659.P9114402764937939383

`A136494(n)/A139329(n)`
-/

namespace A093659.P9114402764937939383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136494 n : ℚ) / (A139329 n : ℚ)

end

end A093659.P9114402764937939383

namespace A093659

/-- `A136494(n)/A139329(n)` -/
def P9114402764937939383.Spec : Prop :=
  ∀ n, P9114402764937939383.a n = (A093659 n : ℚ)

end A093659

/-!
# A093660: Row sums of lower triangular matrix A093658.

The programs for A093660, there is no canonical definition to state claims against.
-/

/-! ## A093660.P1845797712849218239

`A000522(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A093660.P1845797712849218239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093660.P1845797712849218239

/-! ## A093660.P7254413799137521642

`a(and(n, n-1))*A000120(n)+1` with `a(0)=1`
-/

namespace A093660.P7254413799137521642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat * A000120 n + 1

end

end A093660.P7254413799137521642

/-! ## A093660.P307853030110665201

`A000522(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A093660.P307853030110665201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A093660.P307853030110665201

/-! ## A093660.P15071693390091048132

`A007526(∑[∑{e}[xor(n, -n), 2-#]])+1`
-/

namespace A093660.P15071693390091048132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A093660.P15071693390091048132

/-! ## A093660.P15918455062471668502

`A000522(val(n+1, 2)+n-∑[val(n+1, 2)])`
-/

namespace A093660.P15918455062471668502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A093660.P15918455062471668502

/-! ## A093660.P17410647430956140313

`A000522(A000120(n))`
-/

namespace A093660.P17410647430956140313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (A000120 n).toNat

end

end A093660.P17410647430956140313

/-! ## A093660.P2623853024989492869

`A188064(A038573(n))`
-/

namespace A093660.P2623853024989492869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188064 (A038573 n).toNat

end

end A093660.P2623853024989492869

/-! ## A093660.P15390987191053247930

`A000522(log2(A001316(n)))`
-/

namespace A093660.P15390987191053247930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

end

end A093660.P15390987191053247930

/-! ## A093660.P16130624978160766103

`A000522(∑[A088705(n)])`
-/

namespace A093660.P16130624978160766103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093660.P16130624978160766103

/-! ## A093660.P13828784900598264336

`A000522(val(A001316(n), 2))`
-/

namespace A093660.P13828784900598264336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (SequenceMachineLib.valuation (A001316 n).toNat 2)

end

end A093660.P13828784900598264336

/-!
# A093661: Partial sums of A093660.

The programs for A093661, there is no canonical definition to state claims against.
-/

/-! ## A093661.P4510355480764136592

`∑[A093660(n+1)]`
-/

namespace A093661.P4510355480764136592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093661.P4510355480764136592

/-! ## A093661.P3875544423190651011

`∑[A000522(∑[∑{e}[xor(n, -n), 2-#]])]`
-/

namespace A093661.P3875544423190651011
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093661.P3875544423190651011

/-! ## A093661.P2486178697235031842

`∑[A000522(A000120(n))]`
-/

namespace A093661.P2486178697235031842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093661.P2486178697235031842

/-! ## A093661.P14975911648429704595

`∑[A188064(A038573(n))]`
-/

namespace A093661.P14975911648429704595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188064 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093661.P14975911648429704595

/-! ## A093661.P8046934976218613628

`∑[A000522(log2(A001316(n)))]`
-/

namespace A093661.P8046934976218613628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093661.P8046934976218613628

/-! ## A093661.P1334715904822683442

`∑[A000522(∑[A088705(n)])]`
-/

namespace A093661.P1334715904822683442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093661.P1334715904822683442

/-! ## A093661.P11154664818764154013

`∑[A000522(val(A001316(n), 2))]`
-/

namespace A093661.P11154664818764154013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (SequenceMachineLib.valuation (A001316 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093661.P11154664818764154013

/-! ## A093661.P11005970691068390500

`∑[∑{d}[A019565(n), A001221(#)!]]`
-/

namespace A093661.P11005970691068390500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, Nat.factorial (A001221 d).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093661.P11005970691068390500

/-! ## A093661.P2857292739925867818

`∑[∑{d}[A019565(n), A001222(#)!]]`
-/

namespace A093661.P2857292739925867818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, Nat.factorial (A001222 d).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093661.P2857292739925867818

/-! ## A093661.P1112832924008453278

`∑{d}[A019565(2*n), A001222(#)!]+a(n-1)` with `a(0)=1`
-/

namespace A093661.P1112832924008453278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (A001222 d).toNat + a (n - 1)

end

end A093661.P1112832924008453278

/-!
# A093662: Lower triangular matrix, read by rows, defined as the convergent of the concatenation of matrices using the iteration: M(n+1) = [[M(n),0*M(n)],[M(n),M(n)^2]], with M(0) = [1].

The programs for A093662, there is no canonical definition to state claims against.
-/

/-! ## A093662.P4146158602389334854

`A000002(A187783(n))*A047999(n)`
-/

namespace A093662.P4146158602389334854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A187783 n).toNat * A047999 n

end

end A093662.P4146158602389334854

/-! ## A093662.P7944457604505785840

`A047999(n)*A136755(A244120(n))`
-/

namespace A093662.P7944457604505785840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n * A136755 (A244120 n).toNat

end

end A093662.P7944457604505785840

/-! ## A093662.P3344599303813393096

`A000035(A008292(n+1))*A040001(A123125(n))`
-/

namespace A093662.P3344599303813393096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008292 (n + 1)).toNat * A040001 (A123125 n).toNat

end

end A093662.P3344599303813393096

/-! ## A093662.P12885056728522365735

`A040001(A123125(n))*A260390(A166341(n+1))`
-/

namespace A093662.P12885056728522365735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A123125 n).toNat * A260390 (A166341 (n + 1)).toNat

end

end A093662.P12885056728522365735

/-! ## A093662.P6282528323304521005

`A007877(5*A141724(n))`
-/

namespace A093662.P6282528323304521005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (5 * A141724 n).toNat

end

end A093662.P6282528323304521005

/-!
# A093663: Row sums of lower triangular matrix A093662.

The programs for A093663, there is no canonical definition to state claims against.
-/

/-! ## A093663.P9326072238954547853

`A016121(A000120(n))`
-/

namespace A093663.P9326072238954547853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (A000120 n).toNat

end

end A093663.P9326072238954547853

/-! ## A093663.P1392075710796485792

`A016121(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A093663.P1392075710796485792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093663.P1392075710796485792

/-! ## A093663.P5141799275462162647

`A016121(∑[1-∑{e}[or(n, -n), #]]-1)`
-/

namespace A093663.P5141799275462162647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A093663.P5141799275462162647

/-! ## A093663.P8017615459452251756

`A016121(log2(A001316(n)))`
-/

namespace A093663.P8017615459452251756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

end

end A093663.P8017615459452251756

/-! ## A093663.P5958791782806446934

`A016121(∑[A088705(n)])`
-/

namespace A093663.P5958791782806446934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093663.P5958791782806446934

/-! ## A093663.P6594770141662185183

`A093664(A001316(n)+1)`
-/

namespace A093663.P6594770141662185183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093664 (A001316 n + 1).toNat

end

end A093663.P6594770141662185183

/-! ## A093663.P15359377714737963577

`A016121(val(A001316(n), 2))`
-/

namespace A093663.P15359377714737963577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (SequenceMachineLib.valuation (A001316 n).toNat 2)

end

end A093663.P15359377714737963577

/-! ## A093663.P11476066325831596462

`A093664(or(1, A001316(n)))`
-/

namespace A093663.P11476066325831596462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093664 (Int.lor 1 (A001316 n)).toNat

end

end A093663.P11476066325831596462

/-! ## A093663.P1069930002281657395

`A016121(n-A011371(n))`
-/

namespace A093663.P1069930002281657395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 ((n : ℤ) - A011371 n).toNat

end

end A093663.P1069930002281657395

/-! ## A093663.P12420105016283152663

`A016121(A001222(A019565(n)))`
-/

namespace A093663.P12420105016283152663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016121 (A001222 (A019565 n).toNat).toNat

end

end A093663.P12420105016283152663

/-!
# A093664: Convergent of 2^n-th row of lower triangular matrix A093662.

The programs for A093664, there is no canonical definition to state claims against.
-/

/-! ## A093664.P2263875554701067629

`A067754(A188874((n+1)/2^val(n+1, 2))²)`
-/

namespace A093664.P2263875554701067629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (A188874 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat ^ 2).toNat

end

end A093664.P2263875554701067629

/-! ## A093664.P13001396674400790605

`A003602(A084471(n+1)^A250662(n))`
-/

namespace A093664.P13001396674400790605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway ((A084471 (n + 1) : ℚ) ^ (A250662 n : ℤ))).toNat

end

end A093664.P13001396674400790605

/-! ## A093664.P1290902365426261868

`A003602(A084471(n+1))%A135790(3*(n+1))`
-/

namespace A093664.P1290902365426261868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (A084471 (n + 1)).toNat) (A135790 (3 * (n + 1)))

end

end A093664.P1290902365426261868

/-! ## A093664.P1233486201141240577

`A354236(A078719(n+1))%A180679(2*n+5)`
-/

namespace A093664.P1233486201141240577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354236 (A078719 (n + 1)).toNat) (A180679 (2 * n + 5))

end

end A093664.P1233486201141240577

/-! ## A093664.P18113983991431569337

`A354236(A078719(A087227(A087228(n+1))))`
-/

namespace A093664.P18113983991431569337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A078719 (A087227 (A087228 (n + 1)).toNat).toNat).toNat

end

end A093664.P18113983991431569337

/-!
# A093665: Numbers k that divide 2^(k^3) + 1.

The programs for A093665, there is no canonical definition to state claims against.
-/

/-! ## A093665.P13323967593974288966

`A065883(∪[A093546(n+1), A128681(n+1)])`
-/

namespace A093665.P13323967593974288966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A093665.P13323967593974288966

/-!
# A093666: Numbers n such that n | 3^n^2 + 1.

The programs for A093666, there is no canonical definition to state claims against.
-/

/-! ## A093666.P11414902584223068900

`A256017(a(n-1))` with `a(0)=1, a(1)=2, a(2)=82`
-/

namespace A093666.P11414902584223068900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 82] fun n a =>
  A256017 (a (n - 1)).toNat

end

end A093666.P11414902584223068900

/-!
# A093667: a(n) = prime(n) - prime(n+1) + prime(n+2).

The programs for A093667, the canonical program `A093667.P7930936676327328865` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093667 has offset 1).

The definition of A093667 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001223, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093667.P7930936676327328865

`A001223(n+2)+A000040(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A093667

/-- `A001223(n+2)+A000040(n+1)` -/
def P7930936676327328865.Spec : Prop :=
  ∀ n, P7930936676327328865.a n = A093667 (n + 1)

theorem P7930936676327328865.correct : P7930936676327328865.Spec := by
  intro n
  simp only [A093667, Nat.add_sub_cancel]

end A093667

/-! ## A093667.P5038003814396316069

`A258326(n+1)+1`
-/

namespace A093667.P5038003814396316069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258326 (n + 1) + 1

end

end A093667.P5038003814396316069

namespace A093667

/-- `A258326(n+1)+1` -/
def P5038003814396316069.Spec : Prop :=
  ∀ n, P5038003814396316069.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P17565048268287266029

`A008347(n+3)+A008347(n)`
-/

namespace A093667.P17565048268287266029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (n + 3) + A008347 n

end

end A093667.P17565048268287266029

namespace A093667

/-- `A008347(n+3)+A008347(n)` -/
def P17565048268287266029.Spec : Prop :=
  ∀ n, P17565048268287266029.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P11504605137497890350

`A001223(n+2)+Δ[A007504(n)]`
-/

namespace A093667.P11504605137497890350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + (f1 (n + 1) - f1 n)

end

end A093667.P11504605137497890350

namespace A093667

/-- `A001223(n+2)+Δ[A007504(n)]` -/
def P11504605137497890350.Spec : Prop :=
  ∀ n, P11504605137497890350.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P4677560821583778084

`A062234(n+1)+A031131(n+1)`
-/

namespace A093667.P4677560821583778084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + A031131 (n + 1)

end

end A093667.P4677560821583778084

namespace A093667

/-- `A062234(n+1)+A031131(n+1)` -/
def P4677560821583778084.Spec : Prop :=
  ∀ n, P4677560821583778084.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P9981484666469668000

`A065091(n+1)+A036263(n+1)`
-/

namespace A093667.P9981484666469668000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A036263 (n + 1)

end

end A093667.P9981484666469668000

namespace A093667

/-- `A065091(n+1)+A036263(n+1)` -/
def P9981484666469668000.Spec : Prop :=
  ∀ n, P9981484666469668000.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P9545327902476571786

`A176246(n+1)+A008864(n+1)`
-/

namespace A093667.P9545327902476571786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) + A008864 (n + 1)

end

end A093667.P9545327902476571786

namespace A093667

/-- `A176246(n+1)+A008864(n+1)` -/
def P9545327902476571786.Spec : Prop :=
  ∀ n, P9545327902476571786.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P3867467609550626937

`A100484(n+1)-A096379(n+1)`
-/

namespace A093667.P3867467609550626937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A096379 (n + 1)

end

end A093667.P3867467609550626937

namespace A093667

/-- `A100484(n+1)-A096379(n+1)` -/
def P3867467609550626937.Spec : Prop :=
  ∀ n, P3867467609550626937.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P16857665302681115915

`A215848(n+1)-A001223(n+1)`
-/

namespace A093667.P16857665302681115915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A001223 (n + 1)

end

end A093667.P16857665302681115915

namespace A093667

/-- `A215848(n+1)-A001223(n+1)` -/
def P16857665302681115915.Spec : Prop :=
  ∀ n, P16857665302681115915.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P10596369213297331337

`A001043(n+1)-A062234(n+2)`
-/

namespace A093667.P10596369213297331337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - A062234 (n + 2)

end

end A093667.P10596369213297331337

namespace A093667

/-- `A001043(n+1)-A062234(n+2)` -/
def P10596369213297331337.Spec : Prop :=
  ∀ n, P10596369213297331337.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P13872641943567464482

`A197638(n+1)%A181428(n+1)`
-/

namespace A093667.P13872641943567464482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197638 (n + 1)) (A181428 (n + 1))

end

end A093667.P13872641943567464482

namespace A093667

/-- `A197638(n+1)%A181428(n+1)` -/
def P13872641943567464482.Spec : Prop :=
  ∀ n, P13872641943567464482.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P11470654054807321222

`A001223(n+2)+∑[A054541(n+1)]`
-/

namespace A093667.P11470654054807321222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093667.P11470654054807321222

namespace A093667

/-- `A001223(n+2)+∑[A054541(n+1)]` -/
def P11470654054807321222.Spec : Prop :=
  ∀ n, P11470654054807321222.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P8326695265728820309

`A065091(n+1)+Δ[A001223(n+1)]`
-/

namespace A093667.P8326695265728820309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (f1 (n + 1) - f1 n)

end

end A093667.P8326695265728820309

namespace A093667

/-- `A065091(n+1)+Δ[A001223(n+1)]` -/
def P8326695265728820309.Spec : Prop :=
  ∀ n, P8326695265728820309.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P12741884502118529908

`A006005(n+1)+A135732(n+1)+1`
-/

namespace A093667.P12741884502118529908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A135732 (n + 1) + 1)

end

end A093667.P12741884502118529908

namespace A093667

/-- `A006005(n+1)+A135732(n+1)+1` -/
def P12741884502118529908.Spec : Prop :=
  ∀ n, P12741884502118529908.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P12369192319440799640

`A000040(n+1)+A176246(n+1)+1`
-/

namespace A093667.P12369192319440799640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A176246 (n + 1) + 1)

end

end A093667.P12369192319440799640

namespace A093667

/-- `A000040(n+1)+A176246(n+1)+1` -/
def P12369192319440799640.Spec : Prop :=
  ∀ n, P12369192319440799640.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P15907324303926537573

`A006093(n+1)+A176246(n+1)+2`
-/

namespace A093667.P15907324303926537573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A176246 (n + 1) + 2)

end

end A093667.P15907324303926537573

namespace A093667

/-- `A006093(n+1)+A176246(n+1)+2` -/
def P15907324303926537573.Spec : Prop :=
  ∀ n, P15907324303926537573.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P16323220714340939352

`A000040(n+1)+2*A028334(n+2)`
-/

namespace A093667.P16323220714340939352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A028334 (n + 2)

end

end A093667.P16323220714340939352

namespace A093667

/-- `A000040(n+1)+2*A028334(n+2)` -/
def P16323220714340939352.Spec : Prop :=
  ∀ n, P16323220714340939352.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P9157119213121184823

`2*A000040(n+1)-A096379(n+1)`
-/

namespace A093667.P9157119213121184823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A096379 (n + 1)

end

end A093667.P9157119213121184823

namespace A093667

/-- `2*A000040(n+1)-A096379(n+1)` -/
def P9157119213121184823.Spec : Prop :=
  ∀ n, P9157119213121184823.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P360985358293949641

`A034961(n+1)-2*A065091(n+1)`
-/

namespace A093667.P360985358293949641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - 2 * A065091 (n + 1)

end

end A093667.P360985358293949641

namespace A093667

/-- `A034961(n+1)-2*A065091(n+1)` -/
def P360985358293949641.Spec : Prop :=
  ∀ n, P360985358293949641.a n = A093667 (n + 1)

end A093667

/-! ## A093667.P17860878440705539109

`A036690(n+1)+A001223(n+2)-A001248(n+1)`
-/

namespace A093667.P17860878440705539109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + (A001223 (n + 2) - A001248 (n + 1))

end

end A093667.P17860878440705539109

namespace A093667

/-- `A036690(n+1)+A001223(n+2)-A001248(n+1)` -/
def P17860878440705539109.Spec : Prop :=
  ∀ n, P17860878440705539109.a n = A093667 (n + 1)

end A093667

/-!
# A093669: Numbers having a unique representation as ab+ac+bc, with 0 < a < b < c.

The programs for A093669, there is no canonical definition to state claims against.
-/

/-! ## A093669.P18361259563551653795

`eq[1, A290870(n+1)]+1`
-/

namespace A093669.P18361259563551653795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093669.P18361259563551653795

/-! ## A093669.P17493968832381509562

`eq[3, A067754(n+1)]+1`
-/

namespace A093669.P17493968832381509562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093669.P17493968832381509562

/-! ## A093669.P9869303347606315137

`eq[1, A290870(A028310(n))]`
-/

namespace A093669.P9869303347606315137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093669.P9869303347606315137

/-! ## A093669.P17295255880487468240

`A020725(eq[1, A290870(n+1)])`
-/

namespace A093669.P17295255880487468240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A093669.P17295255880487468240

/-! ## A093669.P16442462551666783054

`A065475(eq[1, A290870(n+1)])`
-/

namespace A093669.P16442462551666783054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A093669.P16442462551666783054

/-!
# A093670: Numbers having a unique representation as ab+ac+bc, with 1 <= a <= b <= c.

The programs for A093670, there is no canonical definition to state claims against.
-/

/-! ## A093670.P3788285578364527765

`eq[1, A066955(n+1)]+1`
-/

namespace A093670.P3788285578364527765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093670.P3788285578364527765

/-! ## A093670.P11862201654430658490

`eq[1, A066955(A028310(n))]`
-/

namespace A093670.P11862201654430658490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093670.P11862201654430658490

/-! ## A093670.P5295621477649917900

`A020725(eq[1, A066955(n+1)])`
-/

namespace A093670.P5295621477649917900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A093670.P5295621477649917900

/-! ## A093670.P15439770341643169921

`A065475(eq[1, A066955(n+1)])`
-/

namespace A093670.P15439770341643169921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A093670.P15439770341643169921

/-! ## A093670.P6443580994084819678

`eq[1, A066955(A233583(n+1))]`
-/

namespace A093670.P6443580994084819678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066955 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093670.P6443580994084819678

/-!
# A093671: 

The programs for A093671, there is no canonical definition to state claims against.
-/

/-! ## A093671.P4661562347546043871

`A097166(A056698(n+1))`
-/

namespace A093671.P4661562347546043871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 (A056698 (n + 1)).toNat

end

end A093671.P4661562347546043871

/-!
# A093672: Primes of the form (7*10^k - 1)/3.

The programs for A093672, there is no canonical definition to state claims against.
-/

/-! ## A093672.P10433211974510631028

`(7*10^A056701(n+1)-1)/3`
-/

namespace A093672.P10433211974510631028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (10 : ℚ) ^ (A056701 (n + 1) : ℤ) - 1) / 3

end

end A093672.P10433211974510631028

/-! ## A093672.P1468792484310232888

`A198972(A056701(n+1))`
-/

namespace A093672.P1468792484310232888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198972 (A056701 (n + 1)).toNat

end

end A093672.P1468792484310232888

/-!
# A093675: Primes of the form 7*10^k + 3*R_k, where R_k is the repunit (A002275) of length k.

The programs for A093675, there is no canonical definition to state claims against.
-/

/-! ## A093675.P14371386343148892107

`p?[10*a(n-1)+3]` with `a(0)=7`
-/

namespace A093675.P14371386343148892107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  10 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A093675.P14371386343148892107

/-!
# A093678: Sequence contains no 3-term arithmetic progression, starting with 1, 7.

The programs for A093678, there is no canonical definition to state claims against.
-/

/-! ## A093678.P5544140028320768051

`A188055(n+1)+1`
-/

namespace A093678.P5544140028320768051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188055 (n + 1) + 1

end

end A093678.P5544140028320768051

/-! ## A093678.P16758032449171850765

`A004482(A188055(n+1))`
-/

namespace A093678.P16758032449171850765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A188055 (n + 1)).toNat

end

end A093678.P16758032449171850765

/-! ## A093678.P5328505474026654695

`ceil(A093680(Δ[n²])/3)`
-/

namespace A093678.P5328505474026654695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3⌉

end

end A093678.P5328505474026654695

/-! ## A093678.P7475613041096161078

`A008620(A093680(Δ[n²]))`
-/

namespace A093678.P7475613041096161078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A093680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A093678.P7475613041096161078

/-! ## A093678.P13591596478231559023

`record[A163491(A093680(n+1))]`
-/

namespace A093678.P13591596478231559023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163491 (A093680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093678.P13591596478231559023

/-!
# A093679: Sequence contains no 3-term arithmetic progression, starting with 1, 10.

The programs for A093679, there is no canonical definition to state claims against.
-/

/-! ## A093679.P10807113582304074360

`A188057(n+1)+1`
-/

namespace A093679.P10807113582304074360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188057 (n + 1) + 1

end

end A093679.P10807113582304074360

/-! ## A093679.P2416944552403928940

`A004482(A188057(n+1))`
-/

namespace A093679.P2416944552403928940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A188057 (n + 1)).toNat

end

end A093679.P2416944552403928940

/-! ## A093679.P9047893237025768496

`ceil(A093681(2*n+1)/3)`
-/

namespace A093679.P9047893237025768496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093681 (2 * n + 1) : ℚ) / 3⌉

end

end A093679.P9047893237025768496

/-! ## A093679.P14412683663444199435

`record[A131358(A093681(n+1))]`
-/

namespace A093679.P14412683663444199435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A093681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093679.P14412683663444199435

/-! ## A093679.P15915221367084505797

`A008620(A093681(2*n+1))`
-/

namespace A093679.P15915221367084505797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A093681 (2 * n + 1)).toNat

end

end A093679.P15915221367084505797

/-!
# A093680: Sequence contains no 3-term arithmetic progression, starting with 1, 19.

The programs for A093680, there is no canonical definition to state claims against.
-/

/-! ## A093680.P1641284627841159801

`lt[A025507(n+1), A112898(A005812(2*n+3))]`
-/

namespace A093680.P1641284627841159801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112898 (A005812 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093680.P1641284627841159801

/-! ## A093680.P15984596843430001592

`lt[A279775(n+1), A025506(A005812(2*n+3))]`
-/

namespace A093680.P15984596843430001592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025506 (A005812 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093680.P15984596843430001592

/-! ## A093680.P698432369176298716

`lt[A291275(n+1), A375516(A005812(2*n+3))]`
-/

namespace A093680.P698432369176298716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375516 (A005812 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093680.P698432369176298716

/-! ## A093680.P10288441776995172080

`∑[A333764(A236313(3*n+5))]`
-/

namespace A093680.P10288441776995172080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (A236313 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093680.P10288441776995172080

/-! ## A093680.P1925047380813839900

`∑[A331695(A037227(3*n+5)²)]`
-/

namespace A093680.P1925047380813839900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331695 (A037227 (3 * n + 5) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093680.P1925047380813839900

/-!
# A093681: Sequence contains no 3-term arithmetic progression, starting with 1, 28.

The programs for A093681, there is no canonical definition to state claims against.
-/

/-! ## A093681.P3869155152737965716

`∑[A125952(A126241(3*n+4))]`
-/

namespace A093681.P3869155152737965716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125952 (A126241 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093681.P3869155152737965716

/-! ## A093681.P17595808210072815442

`∑[A309527(A083258(3*n+5))]`
-/

namespace A093681.P17595808210072815442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309527 (A083258 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093681.P17595808210072815442

/-! ## A093681.P6441885780742443116

`∑[A264401(A342377(3*n+5))+1]`
-/

namespace A093681.P6441885780742443116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264401 (A342377 (3 * n + 5)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093681.P6441885780742443116

/-! ## A093681.P9361239591563193234

`A003002(A093680(A093680(n+1)))+n`
-/

namespace A093681.P9361239591563193234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A093680 (A093680 (n + 1)).toNat).toNat + (n : ℤ)

end

end A093681.P9361239591563193234

/-! ## A093681.P2712454247063757281

`A180599(A000245(n))+A093680(n+1)`
-/

namespace A093681.P2712454247063757281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 (A000245 n).toNat + A093680 (n + 1)

end

end A093681.P2712454247063757281

/-!
# A093682: Array T(m,n) by antidiagonals: nonarithmetic-3-progression sequences with simple closed forms.

The programs for A093682, there is no canonical definition to state claims against.
-/

/-! ## A093682.P5416020467395021910

`A070939(lcm(A114340(n+1), A183190(n)))`
-/

namespace A093682.P5416020467395021910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.lcm (A114340 (n + 1)) (A183190 n))

end

end A093682.P5416020467395021910

/-!
# A093683: Number of pairs of twin primes <= 10^n-th prime.

The programs for A093683, there is no canonical definition to state claims against.
-/

/-! ## A093683.P17287598330165840362

`A049035(n+1)-floor(acot(n))`
-/

namespace A093683.P17287598330165840362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049035 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A093683.P17287598330165840362

/-! ## A093683.P17638777714763503173

`A049035(n+1)-A000007(n)`
-/

namespace A093683.P17638777714763503173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049035 (n + 1) - A000007 n

end

end A093683.P17638777714763503173

/-! ## A093683.P10726256073428940141

`A049035(n+1)-A023929(n)`
-/

namespace A093683.P10726256073428940141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049035 (n + 1) - A023929 n

end

end A093683.P10726256073428940141

/-! ## A093683.P1181769897442667798

`A049035(n+1)-A151933(n)`
-/

namespace A093683.P1181769897442667798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049035 (n + 1) - A151933 n

end

end A093683.P1181769897442667798

/-! ## A093683.P10658633180372138437

`A049035(n+1)-∑[A240328(n)]`
-/

namespace A093683.P10658633180372138437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049035 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093683.P10658633180372138437

/-!
# A093684: In binary representation: number of occurrences of n in n!.

The programs for A093684, there is no canonical definition to state claims against.
-/

/-! ## A093684.P8351023022819723948

`A331281(n+1)+A124763(A003586(n+1))`
-/

namespace A093684.P8351023022819723948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (n + 1) + A124763 (A003586 (n + 1)).toNat

end

end A093684.P8351023022819723948

/-! ## A093684.P12354597932051760651

`A050600(gcd(A000975(n), A020753(n+1)))`
-/

namespace A093684.P12354597932051760651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 (Int.gcd (A000975 n) (A020753 (n + 1)))

end

end A093684.P12354597932051760651

/-! ## A093684.P7408098866737585955

`A321924(A014977(n+1))`
-/

namespace A093684.P7408098866737585955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321924 (A014977 (n + 1)).toNat

end

end A093684.P7408098866737585955

/-! ## A093684.P663431469514868616

`A121361(A121424(n)+A121352(n))`
-/

namespace A093684.P663431469514868616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (A121424 n + A121352 n).toNat

end

end A093684.P663431469514868616

/-!
# A093685: In binary representation: numbers not occurring in their factorial.

The programs for A093685, there is no canonical definition to state claims against.
-/

/-! ## A093685.P8333433463105574554

`eq[A000007(n), A093684(A028310(n))]`
-/

namespace A093685.P8333433463105574554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093684 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093685.P8333433463105574554

/-! ## A093685.P17284021873690485277

`eq[A093684(A028310(n)), A130706(n)]`
-/

namespace A093685.P17284021873690485277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093684 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093685.P17284021873690485277

/-! ## A093685.P6585504307036574618

`eq[A093684(A028310(n)), A169585(n)]`
-/

namespace A093685.P6585504307036574618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093684 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093685.P6585504307036574618

/-! ## A093685.P11980247546590708850

`eq[A000007(n), A093684(A000007(n)+n)]`
-/

namespace A093685.P11980247546590708850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093684 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093685.P11980247546590708850

/-! ## A093685.P7666554226737773079

`eq[A093684(A130706(n)+n), A130706(n)]`
-/

namespace A093685.P7666554226737773079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093684 (A130706 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093685.P7666554226737773079

/-!
# A093686: In binary representation: numbers occurring at least once in their factorial.

The programs for A093686, there is no canonical definition to state claims against.
-/

/-! ## A093686.P2546811673815191800

`comp[A093685(n+1)]`
-/

namespace A093686.P2546811673815191800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093686.P2546811673815191800

/-! ## A093686.P5276924344245307085

`lt[0, A093684(n+1)]+1`
-/

namespace A093686.P5276924344245307085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A093686.P5276924344245307085

/-! ## A093686.P3387582661385650464

`comp[record[A093685(C(comp[∑[n]]-n, 2)-n)]]`
-/

namespace A093686.P3387582661385650464
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093685 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093686.P3387582661385650464

/-! ## A093686.P2598250481727876515

`comp[record[A093685(A286535(n))]]`
-/

namespace A093686.P2598250481727876515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093685 (A286535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093686.P2598250481727876515

/-! ## A093686.P8835488040204433994

`eq[char[A093685(n+1)], A000038(n)]`
-/

namespace A093686.P8835488040204433994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093685 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A093686.P8835488040204433994

/-! ## A093686.P12983250232583970175

`eq[0, char[A093685(n+1)]*A000124(n)]`
-/

namespace A093686.P12983250232583970175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093685 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000124 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093686.P12983250232583970175

/-! ## A093686.P6526750370802952127

`eq[0, char[A093685(n+1)]*A008619(n)]`
-/

namespace A093686.P6526750370802952127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093685 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093686.P6526750370802952127

/-! ## A093686.P13957452000281190582

`eq[A008683(4*(n+1)), char[A093685(n+1)]]`
-/

namespace A093686.P13957452000281190582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093685 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A093686.P13957452000281190582

/-! ## A093686.P11901343006225554507

`eq[0, (A082285(2*n)+n)*char[A093685(n+1)]]`
-/

namespace A093686.P11901343006225554507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093685 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082285 (2 * n) + (n : ℤ)) * ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093686.P11901343006225554507

/-!
# A093687: Numbers k such that the total number of 1's in the binary expansion of all the divisors of k sets a new record.

The programs for A093687, there is no canonical definition to state claims against.
-/

/-! ## A093687.P13539202614029993193

`A375674(A181808(n+2))`
-/

namespace A093687.P13539202614029993193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375674 (A181808 (n + 2)).toNat

end

end A093687.P13539202614029993193

/-! ## A093687.P15880106292593933644

`A114585(record[A055081(n+1)])`
-/

namespace A093687.P15880106292593933644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A093687.P15880106292593933644

/-! ## A093687.P17340996373171194088

`A189686(A071786(n+1))/2`
-/

namespace A093687.P17340996373171194088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189686 (A071786 (n + 1)).toNat : ℚ) / 2

end

end A093687.P17340996373171194088

/-! ## A093687.P1268238649254393289

`A189686(A004907(n+2))/2`
-/

namespace A093687.P1268238649254393289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189686 (A004907 (n + 2)).toNat : ℚ) / 2

end

end A093687.P1268238649254393289

/-! ## A093687.P17557878124182743212

`A350786(A002182(n+2))/2`
-/

namespace A093687.P17557878124182743212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350786 (A002182 (n + 2)).toNat : ℚ) / 2

end

end A093687.P17557878124182743212

/-!
# A093688: Numbers m such that all divisors of m, excluding the divisor 1, have an even number of 1's in their binary expansions.

The programs for A093688, the canonical program `A093688.P16553081961736122512` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093688 has offset 1).

The definition of A093688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093688.P16553081961736122512

`eq[1, A227872(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093688

/-- `eq[1, A227872(n+1)]+1` -/
def P16553081961736122512.Spec : Prop :=
  ∀ n, (P16553081961736122512.a n : ℤ) = A093688 (n + 1)

theorem P16553081961736122512.correct : P16553081961736122512.Spec := by
  intro n
  simp only [A093688, Nat.add_sub_cancel]

end A093688

/-! ## A093688.P100870254749682953

`eq[1, A227873(n+1)]+1`
-/

namespace A093688.P100870254749682953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093688.P100870254749682953

namespace A093688

/-- `eq[1, A227873(n+1)]+1` -/
def P100870254749682953.Spec : Prop :=
  ∀ n, (P100870254749682953.a n : ℤ) = A093688 (n + 1)

end A093688

/-! ## A093688.P9574746498274241207

`record[A004442(n)/A227872(n+1)]`
-/

namespace A093688.P9574746498274241207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) / (A227872 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093688.P9574746498274241207

namespace A093688

/-- `record[A004442(n)/A227872(n+1)]` -/
def P9574746498274241207.Spec : Prop :=
  ∀ n, P9574746498274241207.a n = (A093688 (n + 1) : ℚ)

end A093688

/-! ## A093688.P12979286433512325707

`record[A004442(n)/A227873(n+1)]`
-/

namespace A093688.P12979286433512325707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) / (A227873 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093688.P12979286433512325707

namespace A093688

/-- `record[A004442(n)/A227873(n+1)]` -/
def P12979286433512325707.Spec : Prop :=
  ∀ n, P12979286433512325707.a n = (A093688 (n + 1) : ℚ)

end A093688

/-! ## A093688.P9674338042231627654

`record[A000265(n+1)/A227872(n+1)]`
-/

namespace A093688.P9674338042231627654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / (A227872 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093688.P9674338042231627654

namespace A093688

/-- `record[A000265(n+1)/A227872(n+1)]` -/
def P9674338042231627654.Spec : Prop :=
  ∀ n, P9674338042231627654.a n = (A093688 (n + 1) : ℚ)

end A093688

/-! ## A093688.P11284177635993464280

`record[(n+1)/(A000203(n+1)-A260934(n+1))]`
-/

namespace A093688.P11284177635993464280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000203 (n + 1) - A260934 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093688.P11284177635993464280

namespace A093688

/-- `record[(n+1)/(A000203(n+1)-A260934(n+1))]` -/
def P11284177635993464280.Spec : Prop :=
  ∀ n, P11284177635993464280.a n = (A093688 (n + 1) : ℚ)

end A093688

/-!
# A093690: Primes p that divide A007406(k), the numerator of the k-th generalized harmonic number H(k,2) = Sum 1/i^2 for i=1..k, for some k < (p-1)/2.

The programs for A093690, there is no canonical definition to state claims against.
-/

/-! ## A093690.P6164385439962563131

`p?[A122280(A343225(n+1))]`
-/

namespace A093690.P6164385439962563131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122280 (A343225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093690.P6164385439962563131

/-! ## A093690.P10824888778014727771

`A014662(eq[A014667(n), A014671(n+1)])`
-/

namespace A093690.P10824888778014727771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A093690.P10824888778014727771

/-!
# A093691: a(n) is chosen so as to maximize the number of different substrings in (a(1),a(2),...,a(n)).

The programs for A093691, there is no canonical definition to state claims against.
-/

/-! ## A093691.P5815732322821091393

`A007954(lt[A061205(n), A342142(n+1)+2])`
-/

namespace A093691.P5815732322821091393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342142 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093691.P5815732322821091393

/-! ## A093691.P11056509756363490006

`A007954(lt[A061205(n), A342142(n+2)])`
-/

namespace A093691.P11056509756363490006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342142 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093691.P11056509756363490006

/-! ## A093691.P13228661411147977603

`A216589(A125289(n+1))%10`
-/

namespace A093691.P13228661411147977603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216589 (A125289 (n + 1)).toNat) 10

end

end A093691.P13228661411147977603

/-!
# A093692: a(n) is chosen so as to maximize the number of different substrings in (a(1),a(2),...,a(n)) (in base 2).

The programs for A093692, there is no canonical definition to state claims against.
-/

/-! ## A093692.P6758995962951568855

`A030308(xor(22, A143128(n+1)))`
-/

namespace A093692.P6758995962951568855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (Int.xor 22 (A143128 (n + 1))).toNat

end

end A093692.P6758995962951568855

/-! ## A093692.P11414212124223202313

`A191188(A191318(3*n+4)+n+1)`
-/

namespace A093692.P11414212124223202313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191188 (A191318 (3 * n + 4) + (n + 1 : ℤ)).toNat

end

end A093692.P11414212124223202313

/-! ## A093692.P18385167297841170361

`A000035(A058682(n)+A049563(n+1))`
-/

namespace A093692.P18385167297841170361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A058682 n + A049563 (n + 1)).toNat

end

end A093692.P18385167297841170361

/-! ## A093692.P10487966302869667246

`A157686(A008908(n+1)*A063538(3*(n+1)))`
-/

namespace A093692.P10487966302869667246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (A008908 (n + 1) * A063538 (3 * (n + 1))).toNat

end

end A093692.P10487966302869667246

/-! ## A093692.P10383304144920509518

`A095130(A312248(2*n+3)+A222300(n+1))`
-/

namespace A093692.P10383304144920509518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095130 (A312248 (2 * n + 3) + A222300 (n + 1)).toNat

end

end A093692.P10383304144920509518

/-!
# A093693: a(n) is chosen so as to maximize the number of different substrings in (a(1),a(2),...,a(n)) (in base 3).

The programs for A093693, there is no canonical definition to state claims against.
-/

/-! ## A093693.P5754599884810994749

`A120964(3*n+5)%A353517(A241638(3*n+4))`
-/

namespace A093693.P5754599884810994749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120964 (3 * n + 5)) (A353517 (A241638 (3 * n + 4)).toNat)

end

end A093693.P5754599884810994749

/-! ## A093693.P9571106073945771181

`A285716(A300447(n+1))`
-/

namespace A093693.P9571106073945771181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (A300447 (n + 1)).toNat

end

end A093693.P9571106073945771181

/-! ## A093693.P8691930965345060283

`A319837(A033162(n+1))%3`
-/

namespace A093693.P8691930965345060283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319837 (A033162 (n + 1)).toNat) 3

end

end A093693.P8691930965345060283

/-! ## A093693.P4603387261788356

`A309475(A077028(n)*A082040(n))`
-/

namespace A093693.P4603387261788356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309475 (A077028 n * A082040 n).toNat

end

end A093693.P4603387261788356

/-! ## A093693.P6356198938141137784

`A056170(lcm(A000124(n), A313017(n)))`
-/

namespace A093693.P6356198938141137784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (Int.lcm (A000124 n) (A313017 n))

end

end A093693.P6356198938141137784

/-!
# A093694: Number of one-element transitions from the partitions of n to the partitions of n+1 for labeled parts.

The programs for A093694, there is no canonical definition to state claims against.
-/

/-! ## A093694.P5336886115736958563

`A000041(n)+A006128(n)`
-/

namespace A093694.P5336886115736958563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + A006128 n

end

end A093694.P5336886115736958563

/-! ## A093694.P9165439702164525601

`A096541(n)+A000070(n)`
-/

namespace A093694.P9165439702164525601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n + A000070 n

end

end A093694.P9165439702164525601

/-! ## A093694.P12543350860223678348

`A096541(n)+∑[A000041(n)]`
-/

namespace A093694.P12543350860223678348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093694.P12543350860223678348

/-! ## A093694.P10840368667286824743

`A000065(n)+A006128(n)+1`
-/

namespace A093694.P10840368667286824743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A006128 n + 1)

end

end A093694.P10840368667286824743

/-! ## A093694.P6262006240351804749

`A006128(n)+A139582(n)/2`
-/

namespace A093694.P6262006240351804749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006128 n : ℚ) + (A139582 n : ℚ) / 2

end

end A093694.P6262006240351804749

/-! ## A093694.P2088072786776047008

`A006128(n)+A133041(n)-n`
-/

namespace A093694.P2088072786776047008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (A133041 n - (n : ℤ))

end

end A093694.P2088072786776047008

/-! ## A093694.P9168111001535379742

`A000041(n)+A225596(n)-n`
-/

namespace A093694.P9168111001535379742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A225596 n - (n : ℤ))

end

end A093694.P9168111001535379742

/-! ## A093694.P16205856286541936198

`∑{d}[n, A085410(#)]+A000041(n)`
-/

namespace A093694.P16205856286541936198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085410 d + A000041 n

end

end A093694.P16205856286541936198

/-! ## A093694.P7469509730444025737

`A096541(n)+∑[∑[A002865(n)]]`
-/

namespace A093694.P7469509730444025737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093694.P7469509730444025737

/-! ## A093694.P10957301714826517506

`A096541(n)+∑[A139582(n)/2]`
-/

namespace A093694.P10957301714826517506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096541 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093694.P10957301714826517506

/-! ## A093694.P8023635274527821373

`A000837(n)+A018783(n)+A006128(n)`
-/

namespace A093694.P8023635274527821373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n + A006128 n)

end

end A093694.P8023635274527821373

/-! ## A093694.P7793943520373137727

`A000701(n)+A046682(n)+A006128(n)`
-/

namespace A093694.P7793943520373137727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A046682 n + A006128 n)

end

end A093694.P7793943520373137727

/-! ## A093694.P16956136349914816456

`A000065(n)+A198381(n)+A000070(n)`
-/

namespace A093694.P16956136349914816456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (A198381 n + A000070 n)

end

end A093694.P16956136349914816456

/-! ## A093694.P17905969844918665625

`A006128(n)-(A000041(n)-A139582(n))`
-/

namespace A093694.P17905969844918665625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n - (A000041 n - A139582 n)

end

end A093694.P17905969844918665625

/-! ## A093694.P8970360580221428788

`A096541(n)+∑[A047967(n)+A000009(n)]`
-/

namespace A093694.P8970360580221428788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093694.P8970360580221428788

/-! ## A093694.P6630874622426641126

`A096541(n)+∑[A295341(n)+A000726(n)]`
-/

namespace A093694.P6630874622426641126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093694.P6630874622426641126

/-! ## A093694.P11619559536883659934

`A024786(n+1)+A194452(n)+A000041(n)`
-/

namespace A093694.P11619559536883659934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) + (A194452 n + A000041 n)

end

end A093694.P11619559536883659934

/-! ## A093694.P17469498004697507338

`A046746(n+1)+A006128(n)-A182708(n+1)`
-/

namespace A093694.P17469498004697507338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (n + 1) + (A006128 n - A182708 (n + 1))

end

end A093694.P17469498004697507338

/-! ## A093694.P14386312964172189313

`A000070(n+1)+A006128(n)-A120452(n+2)`
-/

namespace A093694.P14386312964172189313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A006128 n - A120452 (n + 2))

end

end A093694.P14386312964172189313

/-! ## A093694.P13463248693696628056

`A006128(n+1)-Δ[A096541(n)]`
-/

namespace A093694.P13463248693696628056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (f1 (n + 1) - f1 n)

end

end A093694.P13463248693696628056

/-!
# A093695: Number of one-element transitions among partitions of the integer n for unlabeled parts.

The programs for A093695, there is no canonical definition to state claims against.
-/

/-! ## A093695.P7370519875819075968

`∑[∑[2*A182712(n)]]`
-/

namespace A093695.P7370519875819075968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093695.P7370519875819075968

/-! ## A093695.P15552028672275685684

`2*∑[a(n-2)+A000041(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A093695.P15552028672275685684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + A000041 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093695.P15552028672275685684

/-! ## A093695.P9562950838836775362

`2*(A000097(n)-A000070(n))`
-/

namespace A093695.P9562950838836775362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000097 n - A000070 n)

end

end A093695.P9562950838836775362

/-! ## A093695.P4144051696414338162

`2*(A000097(n)-∑[A000041(n)])`
-/

namespace A093695.P4144051696414338162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000097 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093695.P4144051696414338162

/-! ## A093695.P1299997216957682060

`2*(A103628(n)-A103650(n+1))`
-/

namespace A093695.P1299997216957682060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A103628 n - A103650 (n + 1))

end

end A093695.P1299997216957682060

/-! ## A093695.P6875734921578339339

`∑[2*(A024786(n+2)-A000041(n))]`
-/

namespace A093695.P6875734921578339339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024786 (n + 2) - A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093695.P6875734921578339339

/-! ## A093695.P10449171086954106107

`2*(A316861(n+1)-A116646(n+1))`
-/

namespace A093695.P10449171086954106107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A316861 (n + 1) - A116646 (n + 1))

end

end A093695.P10449171086954106107

/-! ## A093695.P2136837217780304074

`2*(∑[A024786(n+1)]-A024786(n+1))`
-/

namespace A093695.P2136837217780304074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A024786 (n + 1))

end

end A093695.P2136837217780304074

/-! ## A093695.P1924876577100661049

`A103650(n+2)+A103628(n)-A000070(n)`
-/

namespace A093695.P1924876577100661049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103650 (n + 2) + (A103628 n - A000070 n)

end

end A093695.P1924876577100661049

/-! ## A093695.P4395763918058820605

`A135348(n+1)-A000070(n)`
-/

namespace A093695.P4395763918058820605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135348 (n + 1) - A000070 n

end

end A093695.P4395763918058820605

/-! ## A093695.P14359704049016172031

`2*(A135348(n+1)-A000097(n))`
-/

namespace A093695.P14359704049016172031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135348 (n + 1) - A000097 n)

end

end A093695.P14359704049016172031

/-! ## A093695.P11979835722004308970

`A014153(n)-(A024786(n+1)+A000070(n))`
-/

namespace A093695.P11979835722004308970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 n - (A024786 (n + 1) + A000070 n)

end

end A093695.P11979835722004308970

/-! ## A093695.P11220770626159110447

`A135348(n+1)+A096541(n)-A093694(n)`
-/

namespace A093695.P11220770626159110447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135348 (n + 1) + (A096541 n - A093694 n)

end

end A093695.P11220770626159110447

/-! ## A093695.P14291581869736183334

`A135348(n+1)-A025065(2*n)`
-/

namespace A093695.P14291581869736183334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135348 (n + 1) - A025065 (2 * n)

end

end A093695.P14291581869736183334

/-! ## A093695.P6939924833380191681

`A135348(n+1)-A100835(2*n+1)`
-/

namespace A093695.P6939924833380191681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135348 (n + 1) - A100835 (2 * n + 1)

end

end A093695.P6939924833380191681

/-!
# A093696: Numbers n such that all divisors of n have an odd number of 1's in their binary expansions.

The programs for A093696, the canonical program `A093696.P3961485579187327513` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093696 has offset 1).

The definition of A093696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093696.P721184587276628913

`eq[0, A260934(n+1)]+1`
-/

namespace A093696.P721184587276628913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093696.P721184587276628913

namespace A093696

/-- `eq[0, A260934(n+1)]+1` -/
def P721184587276628913.Spec : Prop :=
  ∀ n, (P721184587276628913.a n : ℤ) = A093696 (n + 1)

end A093696

/-! ## A093696.P4242886843041729546

`lt[A356018(n+1), 1]+1`
-/

namespace A093696.P4242886843041729546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356018 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093696.P4242886843041729546

namespace A093696

/-- `lt[A356018(n+1), 1]+1` -/
def P4242886843041729546.Spec : Prop :=
  ∀ n, (P4242886843041729546.a n : ℤ) = A093696 (n + 1)

end A093696

/-! ## A093696.P3961485579187327513

`eq[1, and(1, A339549(n+1))]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A093696

/-- `eq[1, and(1, A339549(n+1))]+1` -/
def P3961485579187327513.Spec : Prop :=
  ∀ n, (P3961485579187327513.a n : ℤ) = A093696 (n + 1)

theorem P3961485579187327513.correct : P3961485579187327513.Spec := by
  intro n
  simp only [A093696, Nat.add_sub_cancel]

end A093696

/-! ## A093696.P6253832991760973761

`eq[A000203(n+1), A227873(n+1)]+1`
-/

namespace A093696.P6253832991760973761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A093696.P6253832991760973761

namespace A093696

/-- `eq[A000203(n+1), A227873(n+1)]+1` -/
def P6253832991760973761.Spec : Prop :=
  ∀ n, (P6253832991760973761.a n : ℤ) = A093696 (n + 1)

end A093696

/-! ## A093696.P10750141353754239855

`record[n+1-A260934(n+1)^A000120(n+1)]`
-/

namespace A093696.P10750141353754239855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A260934 (n + 1) : ℚ) ^ (A000120 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093696.P10750141353754239855

namespace A093696

/-- `record[n+1-A260934(n+1)^A000120(n+1)]` -/
def P10750141353754239855.Spec : Prop :=
  ∀ n, P10750141353754239855.a n = (A093696 (n + 1) : ℚ)

end A093696

/-! ## A093696.P15865268039884704128

`record[(n+1)/A000203(A260934(2*(n+1))+1)]`
-/

namespace A093696.P15865268039884704128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000203 (A260934 (2 * (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093696.P15865268039884704128

namespace A093696

/-- `record[(n+1)/A000203(A260934(2*(n+1))+1)]` -/
def P15865268039884704128.Spec : Prop :=
  ∀ n, P15865268039884704128.a n = (A093696 (n + 1) : ℚ)

end A093696

/-!
# A093697: Least k so that n! >= primorial(k).

The programs for A093697, there is no canonical definition to state claims against.
-/

/-! ## A093697.P8418272463922810605

`∑[char[A073071(n+1)-1]]+1`
-/

namespace A093697.P8418272463922810605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A093697.P8418272463922810605

/-! ## A093697.P6844249765998411243

`char[A073071(-xor(n, -1))-1]+a(n-1)` with `a(0)=1`
-/

namespace A093697.P6844249765998411243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (-Int.xor (n : ℤ) (-1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A093697.P6844249765998411243

/-! ## A093697.P2151574312013804908

`char[A073071(floor(n/3)+1)-1]+a(n-1)` with `a(0)=1`
-/

namespace A093697.P2151574312013804908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (⌊(n : ℚ) / 3⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A093697.P2151574312013804908

/-! ## A093697.P12680416529681688829

`a(n-1)+A000007(n)+char[A073071(n+1)-1]` with `a(0)=1`
-/

namespace A093697.P12680416529681688829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073071 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000007 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A093697.P12680416529681688829

/-! ## A093697.P17434517573202898759

`A156078(A067019(n+2))`
-/

namespace A093697.P17434517573202898759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156078 (A067019 (n + 2)).toNat

end

end A093697.P17434517573202898759

/-!
# A093698: a(n) = floor( e^((n/2)*arccosh(1+sqrt(2))) ).

The programs for A093698, there is no canonical definition to state claims against.
-/

/-! ## A093698.P10463323209241883154

`A110656(A288429(2*(n+2)))-1`
-/

namespace A093698.P10463323209241883154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A288429 (2 * (n + 2))).toNat - 1

end

end A093698.P10463323209241883154

/-! ## A093698.P12185185460642922127

`floor(sqrt(∑[A171875(n+4)]))`
-/

namespace A093698.P12185185460642922127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171875 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093698.P12185185460642922127

/-! ## A093698.P12286156766438320304

`Δ[A261585(Δ[A328890(n+1)])]`
-/

namespace A093698.P12286156766438320304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328890 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093698.P12286156766438320304

/-! ## A093698.P8957246336127250334

`A343103(record[A091232(n)])+floor(21^(n/4))`
-/

namespace A093698.P8957246336127250334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343103 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + ⌊(21 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A093698.P8957246336127250334

/-! ## A093698.P13698051111058783024

`A100196(A138281(n)+A091232(n))`
-/

namespace A093698.P13698051111058783024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A138281 n + A091232 n).toNat

end

end A093698.P13698051111058783024

/-!
# A093699: Maximum number of odd 2 X 2 submatrices over all 2n X 2n (0,1) matrices.

The programs for A093699, the canonical program `A093699.P12283255733859001925` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093699 has offset 1).

The definition of A093699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093699.P12283255733859001925

`(n+1)*(n*A317298(n+1)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093699

/-- `(n+1)*(n*A317298(n+1)+1)` -/
def P12283255733859001925.Spec : Prop :=
  ∀ n, P12283255733859001925.a n = A093699 (n + 1)

theorem P12283255733859001925.correct : P12283255733859001925.Spec := by
  intro n
  simp only [A093699, Nat.add_sub_cancel]

end A093699

/-! ## A093699.P16013110469603102716

`(n+1)*(n*A139592(n+1)+n+1)`
-/

namespace A093699.P16013110469603102716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A139592 (n + 1) + (n + 1 : ℤ))

end

end A093699.P16013110469603102716

namespace A093699

/-- `(n+1)*(n*A139592(n+1)+n+1)` -/
def P16013110469603102716.Spec : Prop :=
  ∀ n, P16013110469603102716.a n = A093699 (n + 1)

end A093699

/-! ## A093699.P13868633986793574483

`(n+1)²+∑[4*n]*A035608(n+1)`
-/

namespace A093699.P13868633986793574483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A035608 (n + 1)

end

end A093699.P13868633986793574483

namespace A093699

/-- `(n+1)²+∑[4*n]*A035608(n+1)` -/
def P13868633986793574483.Spec : Prop :=
  ∀ n, P13868633986793574483.a n = A093699 (n + 1)

end A093699

/-! ## A093699.P397951994481674744

`(n+1)²²+A002620(n+1)*A033996(n)`
-/

namespace A093699.P397951994481674744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) + A002620 (n + 1) * A033996 n

end

end A093699.P397951994481674744

namespace A093699

/-- `(n+1)²²+A002620(n+1)*A033996(n)` -/
def P397951994481674744.Spec : Prop :=
  ∀ n, P397951994481674744.a n = A093699 (n + 1)

end A093699

/-! ## A093699.P17236436760161819331

`A000583(n+1)+2*(n²+n)*A007590(n+1)`
-/

namespace A093699.P17236436760161819331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) + (2 * (n ^ 2 + n) : ℤ) * A007590 (n + 1)

end

end A093699.P17236436760161819331

namespace A093699

/-- `A000583(n+1)+2*(n²+n)*A007590(n+1)` -/
def P17236436760161819331.Spec : Prop :=
  ∀ n, P17236436760161819331.a n = A093699 (n + 1)

end A093699

