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
# A178700: Lonely primes between two consecutive nontrivial powers.

The programs for A178700, there is no canonical definition to state claims against.
-/

/-! ## A178700.P11747341256659908

`A378374(n+1)-A162613(A006530(n+1))`
-/

namespace A178700.P11747341256659908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378374 (n + 1) - A162613 (A006530 (n + 1)).toNat

end

end A178700.P11747341256659908

/-!
# A178702: Coefficients of the sum 1+ x/(1-x) + x^2/(1-x^2) + x^3/ ( (1-x)(1-x^2)) + x^4/ ( (1-x)(1-x^3) ) + x^5/ ( (1-x)(1-x^4) ) + x^5 /((1-x^2)(1-x^3)) + x^6/ ( (1-x)(1-x^2)(1-x^3)) + ...

The programs for A178702, there is no canonical definition to state claims against.
-/

/-! ## A178702.P9488014626753805425

`A056556(A011971(n)*A018066(n))`
-/

namespace A178702.P9488014626753805425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A011971 n * A018066 n).toNat

end

end A178702.P9488014626753805425

/-! ## A178702.P4289299835774239039

`A056556(A011971(n)*A227376(n))`
-/

namespace A178702.P4289299835774239039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A011971 n * A227376 n).toNat

end

end A178702.P4289299835774239039

/-! ## A178702.P11803506744620408372

`A056556(A011971(n)*A189593(n+1))`
-/

namespace A178702.P11803506744620408372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A011971 n * A189593 (n + 1)).toNat

end

end A178702.P11803506744620408372

/-! ## A178702.P6445750384716492923

`A107631(A137792(n+1))+A107628(A000010(n+1))`
-/

namespace A178702.P6445750384716492923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (A137792 (n + 1)).toNat + A107628 (A000010 (n + 1)).toNat

end

end A178702.P6445750384716492923

/-!
# A178703: Partial sums of round(3^n/7).

The programs for A178703, the canonical program `A178703.P2137149041895260291` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178703 has offset 0).

The definition of A178703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178703.P5919305455505959483

`a(n-6)+52*3^(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=17, a(5)=52`
-/

namespace A178703.P5919305455505959483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1, 5, 17, 52] fun n a =>
  a (n - 6) + 52 * (3 : ℚ) ^ ((n : ℤ) - 5 : ℤ)

end

end A178703.P5919305455505959483

namespace A178703

/-- `a(n-6)+52*3^(n-5)` -/
def P5919305455505959483.Spec : Prop :=
  ∀ n, P5919305455505959483.a n = (A178703 n : ℚ)

end A178703

/-! ## A178703.P2137149041895260291

`5*a(n-1)-8*a(n-2)+7*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178703

/-- `5*a(n-1)-8*a(n-2)+7*a(n-3)-3*a(n-4)` -/
def P2137149041895260291.Spec : Prop :=
  ∀ n, P2137149041895260291.a n = A178703 n

theorem P2137149041895260291.correct : P2137149041895260291.Spec := by
  intro n
  simp only [A178703]

end A178703

/-! ## A178703.P17757993164299606377

`floor((3^(n+1)-1)/14)`
-/

namespace A178703.P17757993164299606377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 ^ (n + 1) : ℤ) - 1 : ℚ) / 14⌋

end

end A178703.P17757993164299606377

namespace A178703

/-- `floor((3^(n+1)-1)/14)` -/
def P17757993164299606377.Spec : Prop :=
  ∀ n, P17757993164299606377.a n = A178703 n

end A178703

/-! ## A178703.P12800512071667545381

`∑[3*a(n-1)]+a(n-1)-a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A178703.P12800512071667545381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (a (n - 1) - a (n - 2))

end

end A178703.P12800512071667545381

namespace A178703

/-- `∑[3*a(n-1)]+a(n-1)-a(n-2)` -/
def P12800512071667545381.Spec : Prop :=
  ∀ n, P12800512071667545381.a n = A178703 n

end A178703

/-! ## A178703.P13890313219512458290

`A154992(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A178703.P13890313219512458290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A154992 n - a (n - 3)

end

end A178703.P13890313219512458290

namespace A178703

/-- `A154992(n)-a(n-3)` -/
def P13890313219512458290.Spec : Prop :=
  ∀ n, P13890313219512458290.a n = A178703 n

end A178703

/-! ## A178703.P11180055942344477261

`∑[A133405(n+1)+A133405(n)]`
-/

namespace A178703.P11180055942344477261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133405 (n + 1) + A133405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178703.P11180055942344477261

namespace A178703

/-- `∑[A133405(n+1)+A133405(n)]` -/
def P11180055942344477261.Spec : Prop :=
  ∀ n, P11180055942344477261.a n = A178703 n

end A178703

/-! ## A178703.P2775685807682766742

`A133409(n+1)+A133409(n+2)`
-/

namespace A178703.P2775685807682766742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133409 (n + 1) + A133409 (n + 2)

end

end A178703.P2775685807682766742

namespace A178703

/-- `A133409(n+1)+A133409(n+2)` -/
def P2775685807682766742.Spec : Prop :=
  ∀ n, P2775685807682766742.a n = A178703 n

end A178703

/-! ## A178703.P10268717494087019225

`∑[round(A000244(n)/7)]`
-/

namespace A178703.P10268717494087019225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000244 n : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178703.P10268717494087019225

namespace A178703

/-- `∑[round(A000244(n)/7)]` -/
def P10268717494087019225.Spec : Prop :=
  ∀ n, P10268717494087019225.a n = A178703 n

end A178703

/-! ## A178703.P1866041623788204349

`∑[round(A038754(2*n)/7)]`
-/

namespace A178703.P1866041623788204349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038754 (2 * n) : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178703.P1866041623788204349

namespace A178703

/-- `∑[round(A038754(2*n)/7)]` -/
def P1866041623788204349.Spec : Prop :=
  ∀ n, P1866041623788204349.a n = A178703 n

end A178703

/-! ## A178703.P17965932658898559130

`∑[A000007(n+1)+round(3^n/7)]`
-/

namespace A178703.P17965932658898559130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((3 ^ n : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178703.P17965932658898559130

namespace A178703

/-- `∑[A000007(n+1)+round(3^n/7)]` -/
def P17965932658898559130.Spec : Prop :=
  ∀ n, P17965932658898559130.a n = A178703 n

end A178703

/-!
# A178704: Partial sums of floor(3^n/7).

The programs for A178704, the canonical program `A178704.P6011422310817060286` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178704 has offset 0).

The definition of A178704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178704.P1046735150902173885

`a(n-6)+52*3^(n-5)-3` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=15, a(5)=49`
-/

namespace A178704.P1046735150902173885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1, 4, 15, 49] fun n a =>
  a (n - 6) + 52 * (3 : ℚ) ^ ((n : ℤ) - 5 : ℤ) - 3

end

end A178704.P1046735150902173885

namespace A178704

/-- `a(n-6)+52*3^(n-5)-3` -/
def P1046735150902173885.Spec : Prop :=
  ∀ n, P1046735150902173885.a n = (A178704 n : ℚ)

end A178704

/-! ## A178704.P6011422310817060286

`floor((6*3^n-14*n+2)/28)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178704

/-- `floor((6*3^n-14*n+2)/28)` -/
def P6011422310817060286.Spec : Prop :=
  ∀ n, P6011422310817060286.a n = A178704 n

theorem P6011422310817060286.correct : P6011422310817060286.Spec := by
  intro n
  simp only [A178704]

end A178704

/-! ## A178704.P17706793690287167790

`Δ[A133405(n+1)-A002620(n)]`
-/

namespace A178704.P17706793690287167790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133405 (n + 1) - A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178704.P17706793690287167790

namespace A178704

/-- `Δ[A133405(n+1)-A002620(n)]` -/
def P17706793690287167790.Spec : Prop :=
  ∀ n, P17706793690287167790.a n = A178704 n

end A178704

/-! ## A178704.P8367070662243339775

`a(n-1)+floor(3^n/7)` with `a(0)=0`
-/

namespace A178704.P8367070662243339775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(3 ^ n : ℚ) / 7⌋

end

end A178704.P8367070662243339775

namespace A178704

/-- `a(n-1)+floor(3^n/7)` -/
def P8367070662243339775.Spec : Prop :=
  ∀ n, P8367070662243339775.a n = A178704 n

end A178704

/-! ## A178704.P7564497823167990828

`∑[floor(A000244(n)/7)]`
-/

namespace A178704.P7564497823167990828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000244 n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178704.P7564497823167990828

namespace A178704

/-- `∑[floor(A000244(n)/7)]` -/
def P7564497823167990828.Spec : Prop :=
  ∀ n, P7564497823167990828.a n = A178704 n

end A178704

/-!
# A178705: Odd composite numbers q such that there exists a, 2<=a<=q-2, such that a^d == 1 mod q where d = A000265(q-1). Thus q is a strong pseudoprime in base a.

The programs for A178705, there is no canonical definition to state claims against.
-/

/-! ## A178705.P5121014890915684060

`∩[A202822(n+1), A253056(n+1)]`
-/

namespace A178705.P5121014890915684060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178705.P5121014890915684060

/-! ## A178705.P12968508434302834492

`∩[A253056(n+1), A260682(n+1)]`
-/

namespace A178705.P12968508434302834492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178705.P12968508434302834492

/-!
# A178706: Partial sums of floor(3^n/5).

The programs for A178706, the canonical program `A178706.P18345769915787469306` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178706 has offset 1).

The definition of A178706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178706.P6222463700991489461

`a(n-4)+8*3^(n-2)-2` with `a(0)=0, a(1)=1, a(2)=6, a(3)=22`
-/

namespace A178706.P6222463700991489461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 6, 22] fun n a =>
  a (n - 4) + 8 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 2

end

end A178706.P6222463700991489461

namespace A178706

/-- `a(n-4)+8*3^(n-2)-2` -/
def P6222463700991489461.Spec : Prop :=
  ∀ n, P6222463700991489461.a n = (A178706 (n + 1) : ℚ)

end A178706

/-! ## A178706.P18345769915787469306

`floor((3^(n+2)-5*(n+1)-3)/10)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178706

/-- `floor((3^(n+2)-5*(n+1)-3)/10)` -/
def P18345769915787469306.Spec : Prop :=
  ∀ n, P18345769915787469306.a n = A178706 (n + 1)

theorem P18345769915787469306.correct : P18345769915787469306.Spec := by
  intro n
  simp only [A178706, Nat.add_sub_cancel]

end A178706

/-! ## A178706.P13150234815525217896

`3^n-(a(n-2)+n+1)` with `a(0)=0, a(1)=1`
-/

namespace A178706.P13150234815525217896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 ^ n : ℤ) - (a (n - 2) + (n + 1 : ℤ))

end

end A178706.P13150234815525217896

namespace A178706

/-- `3^n-(a(n-2)+n+1)` -/
def P13150234815525217896.Spec : Prop :=
  ∀ n, P13150234815525217896.a n = A178706 (n + 1)

end A178706

/-! ## A178706.P13704089745574713459

`∑[2-a(n-2)]+3*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A178706.P13704089745574713459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A178706.P13704089745574713459

namespace A178706

/-- `∑[2-a(n-2)]+3*a(n-1)` -/
def P13704089745574713459.Spec : Prop :=
  ∀ n, P13704089745574713459.a n = A178706 (n + 1)

end A178706

/-! ## A178706.P4643833898019083279

`5*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)+3*a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=22, a(4)=70`
-/

namespace A178706.P4643833898019083279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 22, 70] fun n a =>
  5 * a (n - 1) - 8 * a (n - 2) + 8 * a (n - 3) - 7 * a (n - 4) + 3 * a (n - 5)

end

end A178706.P4643833898019083279

namespace A178706

/-- `5*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)+3*a(n-5)` -/
def P4643833898019083279.Spec : Prop :=
  ∀ n, P4643833898019083279.a n = A178706 (n + 1)

end A178706

/-! ## A178706.P9952190437665269196

`A177881(n)+∑[A003462(n)]`
-/

namespace A178706.P9952190437665269196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177881 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178706.P9952190437665269196

namespace A178706

/-- `A177881(n)+∑[A003462(n)]` -/
def P9952190437665269196.Spec : Prop :=
  ∀ n, P9952190437665269196.a n = A178706 (n + 1)

end A178706

/-! ## A178706.P6083644029923294353

`A178828(n+1)+A178828(n+2)`
-/

namespace A178706.P6083644029923294353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178828 (n + 1) + A178828 (n + 2)

end

end A178706.P6083644029923294353

namespace A178706

/-- `A178828(n+1)+A178828(n+2)` -/
def P6083644029923294353.Spec : Prop :=
  ∀ n, P6083644029923294353.a n = A178706 (n + 1)

end A178706

/-!
# A178708: Position of start of first appearance of n consecutive 0's in the binary expansion of Pi.

The programs for A178708, there is no canonical definition to state claims against.
-/

/-! ## A178708.P14060795249977567066

`A332929(2^(n+1))-1`
-/

namespace A178708.P14060795249977567066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332929 (2 ^ (n + 1)) - 1

end

end A178708.P14060795249977567066

/-! ## A178708.P11177798258334477058

`xor(-A332929(2^(n+1)), A057428(A005408(n)))`
-/

namespace A178708.P11177798258334477058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A332929 (2 ^ (n + 1))) (A057428 (A005408 n).toNat)

end

end A178708.P11177798258334477058

/-!
# A178709: Position of start of first appearance of n consecutive 1's in the binary expansion of Pi.

The programs for A178709, there is no canonical definition to state claims against.
-/

/-! ## A178709.P16046857936912706879

`A178707(∑[2^n])`
-/

namespace A178709.P16046857936912706879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178709.P16046857936912706879

/-! ## A178709.P11286956302643755244

`or(3, A183397(A183393(n+1)))`
-/

namespace A178709.P11286956302643755244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A183397 (A183393 (n + 1)).toNat)

end

end A178709.P11286956302643755244

/-! ## A178709.P13869530630757410024

`A172306(ceil(sinh(A180214(n+1))))`
-/

namespace A178709.P13869530630757410024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172306 ⌈Real.sinh (A180214 (n + 1) : ℝ)⌉.toNat

end

end A178709.P13869530630757410024

/-!
# A178710: Partial sums of floor(4^n/7).

The programs for A178710, the canonical program `A178710.P5337105725423011229` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178710 has offset 1).

The definition of A178710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178710.P6210328781931567179

`a(n-3)+3*4^(n-1)-1` with `a(0)=0, a(1)=2, a(2)=11`
-/

namespace A178710.P6210328781931567179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 11] fun n a =>
  a (n - 3) + 3 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1

end

end A178710.P6210328781931567179

namespace A178710

/-- `a(n-3)+3*4^(n-1)-1` -/
def P6210328781931567179.Spec : Prop :=
  ∀ n, P6210328781931567179.a n = (A178710 (n + 1) : ℚ)

end A178710

/-! ## A178710.P5337105725423011229

`5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` with `a(0)=0, a(1)=2, a(2)=11, a(3)=47, a(4)=193`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178710

/-- `5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` -/
def P5337105725423011229.Spec : Prop :=
  ∀ n, P5337105725423011229.a n = A178710 (n + 1)

theorem P5337105725423011229.correct : P5337105725423011229.Spec := by
  intro n
  simp only [A178710, Nat.add_sub_cancel]

end A178710

/-! ## A178710.P2062877208271701051

`floor((8*4^(n+1)-14*(n+1)-8)/42)`
-/

namespace A178710.P2062877208271701051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((8 * 4 ^ (n + 1) : ℤ) - (14 * (n + 1) : ℤ) - 8 : ℚ) / 42⌋

end

end A178710.P2062877208271701051

namespace A178710

/-- `floor((8*4^(n+1)-14*(n+1)-8)/42)` -/
def P2062877208271701051.Spec : Prop :=
  ∀ n, P2062877208271701051.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P6274679242258048111

`∑[val(a(n-1), 2)+4*a(n-1)]-1` with `a(0)=1, a(1)=2`
-/

namespace A178710.P6274679242258048111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.valuation (f1 (n - 1)) 2 + 4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A178710.P6274679242258048111

namespace A178710

/-- `∑[val(a(n-1), 2)+4*a(n-1)]-1` -/
def P6274679242258048111.Spec : Prop :=
  ∀ n, P6274679242258048111.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P1731664690264800293

`A357292(2*(n+2))`
-/

namespace A178710.P1731664690264800293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357292 (2 * (n + 2))

end

end A178710.P1731664690264800293

namespace A178710

/-- `A357292(2*(n+2))` -/
def P1731664690264800293.Spec : Prop :=
  ∀ n, P1731664690264800293.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P16779756803296220718

`∑[A046632(n)]-(n+1)`
-/

namespace A178710.P16779756803296220718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A178710.P16779756803296220718

namespace A178710

/-- `∑[A046632(n)]-(n+1)` -/
def P16779756803296220718.Spec : Prop :=
  ∀ n, P16779756803296220718.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P613325594265131971

`A178872(n+1)-A008620(n)`
-/

namespace A178710.P613325594265131971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178872 (n + 1) - A008620 n

end

end A178710.P613325594265131971

namespace A178710

/-- `A178872(n+1)-A008620(n)` -/
def P613325594265131971.Spec : Prop :=
  ∀ n, P613325594265131971.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P159897859675449670

`∑[2*A155803(2*(n+1))]/2`
-/

namespace A178710.P159897859675449670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155803 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A178710.P159897859675449670

namespace A178710

/-- `∑[2*A155803(2*(n+1))]/2` -/
def P159897859675449670.Spec : Prop :=
  ∀ n, P159897859675449670.a n = (A178710 (n + 1) : ℚ)

end A178710

/-! ## A178710.P3736790411405743168

`A037545(n+1)-A160156(n)`
-/

namespace A178710.P3736790411405743168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037545 (n + 1) - A160156 n

end

end A178710.P3736790411405743168

namespace A178710

/-- `A037545(n+1)-A160156(n)` -/
def P3736790411405743168.Spec : Prop :=
  ∀ n, P3736790411405743168.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P7901330187189714669

`A014825(n+1)-A033140(n+1)`
-/

namespace A178710.P7901330187189714669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014825 (n + 1) - A033140 (n + 1)

end

end A178710.P7901330187189714669

namespace A178710

/-- `A014825(n+1)-A033140(n+1)` -/
def P7901330187189714669.Spec : Prop :=
  ∀ n, P7901330187189714669.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P18389932971617738815

`∑[A037521(n+1)]-A037521(n+1)`
-/

namespace A178710.P18389932971617738815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037521 (n + 1)

end

end A178710.P18389932971617738815

namespace A178710

/-- `∑[A037521(n+1)]-A037521(n+1)` -/
def P18389932971617738815.Spec : Prop :=
  ∀ n, P18389932971617738815.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P16131588221346867685

`∑[A002450(n+1)]-A195904(2*n+1)`
-/

namespace A178710.P16131588221346867685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195904 (2 * n + 1)

end

end A178710.P16131588221346867685

namespace A178710

/-- `∑[A002450(n+1)]-A195904(2*n+1)` -/
def P16131588221346867685.Spec : Prop :=
  ∀ n, P16131588221346867685.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P13201846553377566404

`A178420(2*n+1)-A178455(2*n+1)`
-/

namespace A178710.P13201846553377566404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178420 (2 * n + 1) - A178455 (2 * n + 1)

end

end A178710.P13201846553377566404

namespace A178710

/-- `A178420(2*n+1)-A178455(2*n+1)` -/
def P13201846553377566404.Spec : Prop :=
  ∀ n, P13201846553377566404.a n = A178710 (n + 1)

end A178710

/-! ## A178710.P9339159165834411059

`∑[A033138(2*(n+1))]-A033138(2*(n+1))`
-/

namespace A178710.P9339159165834411059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033138 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033138 (2 * (n + 1))

end

end A178710.P9339159165834411059

namespace A178710

/-- `∑[A033138(2*(n+1))]-A033138(2*(n+1))` -/
def P9339159165834411059.Spec : Prop :=
  ∀ n, P9339159165834411059.a n = A178710 (n + 1)

end A178710

/-!
# A178711: Partial sums of floor(5^n/7).

The programs for A178711, the canonical program `A178711.P15265335633027817876` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178711 has offset 1).

The definition of A178711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178711.P15265335633027817876

`floor((5^(n+2)-14*(n+1)-5)/28)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178711

/-- `floor((5^(n+2)-14*(n+1)-5)/28)` -/
def P15265335633027817876.Spec : Prop :=
  ∀ n, P15265335633027817876.a n = A178711 (n + 1)

theorem P15265335633027817876.correct : P15265335633027817876.Spec := by
  intro n
  simp only [A178711, Nat.add_sub_cancel]

end A178711

/-!
# A178715: a(n) = solution to the "Select All, Copy, Paste" problem: Given the ability to type a single letter, or to type individual "Select All", "Copy" or "Paste" command keystrokes, what is the maximal number of letters of text that can be obtained with n keystrokes?

The programs for A178715, there is no canonical definition to state claims against.
-/

/-! ## A178715.P3300557697476120337

`A246088(2*(n+1))/2`
-/

namespace A178715.P3300557697476120337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246088 (2 * (n + 1)) : ℚ) / 2

end

end A178715.P3300557697476120337

/-! ## A178715.P8188258673621099047

`record[A246088(n+1)/A141056(n)]`
-/

namespace A178715.P8188258673621099047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246088 (n + 1) : ℚ) / (A141056 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178715.P8188258673621099047

/-! ## A178715.P3418376126535316272

`record[A246088(n+1)/A141310(n)]`
-/

namespace A178715.P3418376126535316272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246088 (n + 1) : ℚ) / (A141310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178715.P3418376126535316272

/-! ## A178715.P16354685165096391045

`record[A246088(n+1)/A020639(n+1)]`
-/

namespace A178715.P16354685165096391045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246088 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178715.P16354685165096391045

/-! ## A178715.P7807657225279895616

`A246093(3*(n+1))/3`
-/

namespace A178715.P7807657225279895616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246093 (3 * (n + 1)) : ℚ) / 3

end

end A178715.P7807657225279895616

/-!
# A178717: Degree of denominator of GF for number of ways to place k nonattacking queens on an n X n board.

The programs for A178717, there is no canonical definition to state claims against.
-/

/-! ## A178717.P7209504800435959714

`a(n-1)+A176500(n)+1` with `a(0)=3`
-/

namespace A178717.P7209504800435959714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A176500 n + 1)

end

end A178717.P7209504800435959714

/-! ## A178717.P277906724427851530

`∑[A176500(abs(1-n)+1)]+n`
-/

namespace A178717.P277906724427851530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176500 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A178717.P277906724427851530

/-! ## A178717.P10548605097714179308

`∑[A018805(A000045(n+1))]+2+n`
-/

namespace A178717.P10548605097714179308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (A000045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 + (n : ℤ)

end

end A178717.P10548605097714179308

/-! ## A178717.P6618292442495815961

`∑[A054977(n)+A018805(A000045(n+1))]`
-/

namespace A178717.P6618292442495815961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A018805 (A000045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178717.P6618292442495815961

/-!
# A178718: a(n) is the sum of entries of n-th Kostka matrix for the partitions of n.

The programs for A178718, there is no canonical definition to state claims against.
-/

/-! ## A178718.P11901081668092477042

`A104779(n+1)`
-/

namespace A178718.P11901081668092477042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104779 (n + 1)

end

end A178718.P11901081668092477042

/-! ## A178718.P14668120634564969993

`ratio[A104779(n)]*A104779(n)`
-/

namespace A178718.P14668120634564969993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104779 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A104779 n : ℚ)

end

end A178718.P14668120634564969993

/-! ## A178718.P17854483058121264267

`ratio[-∏[A104779(n)]]`
-/

namespace A178718.P17854483058121264267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104779 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A178718.P17854483058121264267

/-!
# A178719: Partial sums of (1/5)*floor(6^n/7).

The programs for A178719, the canonical program `A178719.P7771550517365295319` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178719 has offset 0).

The definition of A178719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178719.P7771550517365295319

`7*a(n-1)-5*a(n-2)-7*a(n-3)+6*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178719

/-- `7*a(n-1)-5*a(n-2)-7*a(n-3)+6*a(n-4)` -/
def P7771550517365295319.Spec : Prop :=
  ∀ n, P7771550517365295319.a n = A178719 n

theorem P7771550517365295319.correct : P7771550517365295319.Spec := by
  intro n
  simp only [A178719]

end A178719

/-! ## A178719.P17313142176240484906

`a(n-2)+(6^(n-1)-1)/5` with `a(0)=0, a(1)=0`
-/

namespace A178719.P17313142176240484906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + ((6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) / 5

end

end A178719.P17313142176240484906

namespace A178719

/-- `a(n-2)+(6^(n-1)-1)/5` -/
def P17313142176240484906.Spec : Prop :=
  ∀ n, P17313142176240484906.a n = (A178719 n : ℚ)

end A178719

/-! ## A178719.P18320571348177942168

`floor((12*6^n-35*n-12)/70)/5`
-/

namespace A178719.P18320571348177942168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((12 * 6 ^ n : ℤ) - (35 * n : ℤ) - 12 : ℚ) / 70⌋ : ℚ) / 5

end

end A178719.P18320571348177942168

namespace A178719

/-- `floor((12*6^n-35*n-12)/70)/5` -/
def P18320571348177942168.Spec : Prop :=
  ∀ n, P18320571348177942168.a n = (A178719 n : ℚ)

end A178719

/-! ## A178719.P16880321091554845327

`floor(n/2+6*a(n-1))` with `a(0)=0`
-/

namespace A178719.P16880321091554845327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 2 + (6 * a (n - 1) : ℚ)⌋

end

end A178719.P16880321091554845327

namespace A178719

/-- `floor(n/2+6*a(n-1))` -/
def P16880321091554845327.Spec : Prop :=
  ∀ n, P16880321091554845327.a n = A178719 n

end A178719

/-! ## A178719.P11462775352419419407

`ceil((n-1)/2)+6*a(n-1)` with `a(0)=0`
-/

namespace A178719.P11462775352419419407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈((n : ℤ) - 1 : ℚ) / 2⌉ + 6 * a (n - 1)

end

end A178719.P11462775352419419407

namespace A178719

/-- `ceil((n-1)/2)+6*a(n-1)` -/
def P11462775352419419407.Spec : Prop :=
  ∀ n, P11462775352419419407.a n = A178719 n

end A178719

/-! ## A178719.P11641935422199171934

`∑[(n+1)%2+6*a(n-1)]` with `a(0)=0`
-/

namespace A178719.P11641935422199171934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1) % 2 + 6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178719.P11641935422199171934

namespace A178719

/-- `∑[(n+1)%2+6*a(n-1)]` -/
def P11641935422199171934.Spec : Prop :=
  ∀ n, (P11641935422199171934.a n : ℤ) = A178719 n

end A178719

/-! ## A178719.P760838025947567447

`∑[6*a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A178719.P760838025947567447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A178719.P760838025947567447

namespace A178719

/-- `∑[6*a(n-1)]+a(n-2)` -/
def P760838025947567447.Spec : Prop :=
  ∀ n, (P760838025947567447.a n : ℤ) = A178719 n

end A178719

/-! ## A178719.P4940560273952032053

`∑[round(A003464(n)/7)]`
-/

namespace A178719.P4940560273952032053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003464 n : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178719.P4940560273952032053

namespace A178719

/-- `∑[round(A003464(n)/7)]` -/
def P4940560273952032053.Spec : Prop :=
  ∀ n, P4940560273952032053.a n = A178719 n

end A178719

/-! ## A178719.P14403481924833819624

`∑[∑[A015540(n)]-A015540(n)]`
-/

namespace A178719.P14403481924833819624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A015540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178719.P14403481924833819624

namespace A178719

/-- `∑[∑[A015540(n)]-A015540(n)]` -/
def P14403481924833819624.Spec : Prop :=
  ∀ n, P14403481924833819624.a n = A178719 n

end A178719

/-!
# A178720: Degree of denominator of GF for number of ways to place k nonattacking queens on an n X n toroidal board.

The programs for A178720, there is no canonical definition to state claims against.
-/

/-! ## A178720.P287174824041435020

`∑{p}[A246494(n+1)²-1, #]`
-/

namespace A178720.P287174824041435020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246494 (n + 1) ^ 2 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A178720.P287174824041435020

/-! ## A178720.P2600670926096458916

`A122933(A052003(n+1)+n^(n%2))`
-/

namespace A178720.P2600670926096458916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122933 (A052003 (n + 1) + (n ^ (n % 2) : ℤ)).toNat

end

end A178720.P2600670926096458916

/-!
# A178721: Number of ways to place 7 nonattacking queens on an n X n board.

The programs for A178721, there is no canonical definition to state claims against.
-/

/-! ## A178721.P18246660141309105421

`A284611(A242882(n)+A138904(n+2))`
-/

namespace A178721.P18246660141309105421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284611 (A242882 n + A138904 (n + 2)).toNat

end

end A178721.P18246660141309105421

/-! ## A178721.P17777066887750640152

`A270339(n+1)*A326683(A120329(n+1))`
-/

namespace A178721.P17777066887750640152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 1) * A326683 (A120329 (n + 1)).toNat

end

end A178721.P17777066887750640152

/-! ## A178721.P387270053401942678

`lcm(A025591(n+1), A181831(A025266(n+1)))`
-/

namespace A178721.P387270053401942678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025591 (n + 1)) (A181831 (A025266 (n + 1)).toNat)

end

end A178721.P387270053401942678

/-!
# A178722: Number of ways to place 6 nonattacking queens on an n X n toroidal board.

The programs for A178722, there is no canonical definition to state claims against.
-/

/-! ## A178722.P9636037737167585526

`A132111(C(∑[gcd(2, n)²]-4, 13))`
-/

namespace A178722.P9636037737167585526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 (Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4).toNat 13)

end

end A178722.P9636037737167585526

/-! ## A178722.P14172517960683940155

`and(∑[2*n]², A171979(A000108(n)))`
-/

namespace A178722.P14172517960683940155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A171979 (A000108 n).toNat)

end

end A178722.P14172517960683940155

/-! ## A178722.P7456581343959905891

`and(∑[2*n]², A324706(A003319(n)))`
-/

namespace A178722.P7456581343959905891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A324706 (A003319 n).toNat)

end

end A178722.P7456581343959905891

/-! ## A178722.P5454001685934437804

`and(A217873(A321989(n)), A321989(n))`
-/

namespace A178722.P5454001685934437804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A217873 (A321989 n).toNat) (A321989 n)

end

end A178722.P5454001685934437804

/-!
# A178723: Pseudoprimes to base 2 of the form 4k+1.

The programs for A178723, there is no canonical definition to state claims against.
-/

/-! ## A178723.P13894434422665773529

`A001567(eq[1, A001567(n+1)%4]+1)`
-/

namespace A178723.P13894434422665773529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001567 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178723.P13894434422665773529

/-! ## A178723.P3870287658863145583

`A001567(eq[0, and(2, A001567(n+1))]+1)`
-/

namespace A178723.P3870287658863145583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001567 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178723.P3870287658863145583

/-! ## A178723.P5946618960293811923

`record[A001567(n+1)/(A300101(n+1)*A306413(n+1)+1)%4]`
-/

namespace A178723.P5946618960293811923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001567 (n + 1) : ℚ) / (Int.tmod (A300101 (n + 1) * A306413 (n + 1) + 1) 4 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178723.P5946618960293811923

/-! ## A178723.P8154186334675242730

`filter[A001567(n+1), A373978(#)]`
-/

namespace A178723.P8154186334675242730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A178723.P8154186334675242730

/-! ## A178723.P6968168645552626687

`filter[A001567(n+1), A290098(#)]`
-/

namespace A178723.P6968168645552626687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A178723.P6968168645552626687

/-!
# A178725: Irregular triangle read by rows: row n gives coefficients in expansion of Product_{k=1..n} (1 + x^(4*k - 1)) for n >= 0.

The programs for A178725, there is no canonical definition to state claims against.
-/

/-! ## A178725.P9210504639840522482

`A144595(2*n)+A133089(A002939(n))`
-/

namespace A178725.P9210504639840522482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144595 (2 * n) + A133089 (A002939 n).toNat

end

end A178725.P9210504639840522482

/-! ## A178725.P2997605601165381771

`A332670(A144595(2*n)+A000217(n))`
-/

namespace A178725.P2997605601165381771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332670 (A144595 (2 * n) + A000217 n).toNat

end

end A178725.P2997605601165381771

/-! ## A178725.P14139524931809595602

`A332670(A000217(n)-A144595(2*n))`
-/

namespace A178725.P14139524931809595602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332670 (A000217 n - A144595 (2 * n)).toNat

end

end A178725.P14139524931809595602

/-! ## A178725.P1686289595577106385

`A101597(A101616(n))%A057079(A313124(n))`
-/

namespace A178725.P1686289595577106385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101597 (A101616 n).toNat) (A057079 (A313124 n).toNat)

end

end A178725.P1686289595577106385

/-! ## A178725.P11987577060668501251

`A101597(A369571(n))%A057079(A313124(n))`
-/

namespace A178725.P11987577060668501251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101597 (A369571 n).toNat) (A057079 (A313124 n).toNat)

end

end A178725.P11987577060668501251

/-! ## A178725.P3864857099284749283

`A144595(Δ[A357778(2*(n+1))²])`
-/

namespace A178725.P3864857099284749283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144595 (f1 (n + 1) - f1 n).toNat

end

end A178725.P3864857099284749283

/-! ## A178725.P2353326434734647541

`A144595(2*n)+A114643(A016754(n))`
-/

namespace A178725.P2353326434734647541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144595 (2 * n) + A114643 (A016754 n).toNat

end

end A178725.P2353326434734647541

/-!
# A178729: a(n) = n XOR 3n, where XOR is bitwise XOR.

The programs for A178729, the canonical program `A178729.P1381440878226345061` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178729 has offset 0).

The definition of A178729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178729.P1381440878226345061

`xor(n, 3*n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178729

/-- `xor(n, 3*n)` -/
def P1381440878226345061.Spec : Prop :=
  ∀ n, (P1381440878226345061.a n : ℤ) = A178729 n

theorem P1381440878226345061.correct : P1381440878226345061.Spec := by
  intro n
  simp only [A178729]

end A178729

/-! ## A178729.P3499333883602967841

`2*A184617(n)`
-/

namespace A178729.P3499333883602967841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184617 n

end

end A178729.P3499333883602967841

namespace A178729

/-- `2*A184617(n)` -/
def P3499333883602967841.Spec : Prop :=
  ∀ n, P3499333883602967841.a n = A178729 n

end A178729

/-! ## A178729.P8606880338738972685

`2*(2*n-and(n, 3*n))`
-/

namespace A178729.P8606880338738972685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n : ℤ) - (Nat.land n (3 * n) : ℤ))

end

end A178729.P8606880338738972685

namespace A178729

/-- `2*(2*n-and(n, 3*n))` -/
def P8606880338738972685.Spec : Prop :=
  ∀ n, P8606880338738972685.a n = A178729 n

end A178729

/-! ## A178729.P4536224429618016420

`2*(or(n, 3*n)-n-n)`
-/

namespace A178729.P4536224429618016420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor n (3 * n) : ℤ) - (n : ℤ) - (n : ℤ))

end

end A178729.P4536224429618016420

namespace A178729

/-- `2*(or(n, 3*n)-n-n)` -/
def P4536224429618016420.Spec : Prop :=
  ∀ n, P4536224429618016420.a n = A178729 n

end A178729

/-! ## A178729.P12121577184966542051

`abs(xor(n-1+n+n, n-1))`
-/

namespace A178729.P12121577184966542051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n : ℤ) - 1 + (n : ℤ) + (n : ℤ)) ((n : ℤ) - 1)|

end

end A178729.P12121577184966542051

namespace A178729

/-- `abs(xor(n-1+n+n, n-1))` -/
def P12121577184966542051.Spec : Prop :=
  ∀ n, P12121577184966542051.a n = A178729 n

end A178729

/-! ## A178729.P3520721713309352739

`xor(n, A047239(n+1))-1`
-/

namespace A178729.P3520721713309352739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A047239 (n + 1)) - 1

end

end A178729.P3520721713309352739

namespace A178729

/-- `xor(n, A047239(n+1))-1` -/
def P3520721713309352739.Spec : Prop :=
  ∀ n, P3520721713309352739.a n = A178729 n

end A178729

/-! ## A178729.P15926011592321148639

`A178890(n)-A213526(n)`
-/

namespace A178729.P15926011592321148639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178890 n - A213526 n

end

end A178729.P15926011592321148639

namespace A178729

/-- `A178890(n)-A213526(n)` -/
def P15926011592321148639.Spec : Prop :=
  ∀ n, P15926011592321148639.a n = A178729 n

end A178729

/-! ## A178729.P17608940253395990250

`2*(A184616(n)+A184615(n))`
-/

namespace A178729.P17608940253395990250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A184616 n + A184615 n)

end

end A178729.P17608940253395990250

namespace A178729

/-- `2*(A184616(n)+A184615(n))` -/
def P17608940253395990250.Spec : Prop :=
  ∀ n, P17608940253395990250.a n = A178729 n

end A178729

/-! ## A178729.P15172371822294473206

`A184617(A005843(n))`
-/

namespace A178729.P15172371822294473206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (A005843 n).toNat

end

end A178729.P15172371822294473206

namespace A178729

/-- `A184617(A005843(n))` -/
def P15172371822294473206.Spec : Prop :=
  ∀ n, P15172371822294473206.a n = A178729 n

end A178729

/-! ## A178729.P6624613186668640852

`A213064(A184617(n))`
-/

namespace A178729.P6624613186668640852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 (A184617 n).toNat

end

end A178729.P6624613186668640852

namespace A178729

/-- `A213064(A184617(n))` -/
def P6624613186668640852.Spec : Prop :=
  ∀ n, P6624613186668640852.a n = A178729 n

end A178729

/-! ## A178729.P1847268134006663249

`A184617(A057889(A057889(n+n)))`
-/

namespace A178729.P1847268134006663249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (A057889 (A057889 (n + n)).toNat).toNat

end

end A178729.P1847268134006663249

namespace A178729

/-- `A184617(A057889(A057889(n+n)))` -/
def P1847268134006663249.Spec : Prop :=
  ∀ n, P1847268134006663249.a n = A178729 n

end A178729

/-! ## A178729.P16971924301425646907

`A184617(A184617(n)+A184617(n))`
-/

namespace A178729.P16971924301425646907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (A184617 n + A184617 n).toNat

end

end A178729.P16971924301425646907

namespace A178729

/-- `A184617(A184617(n)+A184617(n))` -/
def P16971924301425646907.Spec : Prop :=
  ∀ n, P16971924301425646907.a n = A178729 n

end A178729

/-! ## A178729.P5924673868696012215

`A005843(A005843(n)-A213526(n))`
-/

namespace A178729.P5924673868696012215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 n - A213526 n).toNat

end

end A178729.P5924673868696012215

namespace A178729

/-- `A005843(A005843(n)-A213526(n))` -/
def P5924673868696012215.Spec : Prop :=
  ∀ n, P5924673868696012215.a n = A178729 n

end A178729

/-! ## A178729.P8112877456488618732

`A008586(n)-A213526(2*n)`
-/

namespace A178729.P8112877456488618732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n - A213526 (2 * n)

end

end A178729.P8112877456488618732

namespace A178729

/-- `A008586(n)-A213526(2*n)` -/
def P8112877456488618732.Spec : Prop :=
  ∀ n, P8112877456488618732.a n = A178729 n

end A178729

/-! ## A178729.P5388479189251137965

`filter[A184617(n), A085405(#)]`
-/

namespace A178729.P5388479189251137965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085405 (f1 j).toNat = 1) n)

end

end A178729.P5388479189251137965

namespace A178729

/-- `filter[A184617(n), A085405(#)]` -/
def P5388479189251137965.Spec : Prop :=
  ∀ n, P5388479189251137965.a n = A178729 n

end A178729

/-! ## A178729.P18127830143025899858

`2*(A184616(2*n)+n)`
-/

namespace A178729.P18127830143025899858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A184616 (2 * n) + (n : ℤ))

end

end A178729.P18127830143025899858

namespace A178729

/-- `2*(A184616(2*n)+n)` -/
def P18127830143025899858.Spec : Prop :=
  ∀ n, P18127830143025899858.a n = A178729 n

end A178729

/-! ## A178729.P14924777395501589710

`2*(A184615(2*n)-n)`
-/

namespace A178729.P14924777395501589710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A184615 (2 * n) - (n : ℤ))

end

end A178729.P14924777395501589710

namespace A178729

/-- `2*(A184615(2*n)-n)` -/
def P14924777395501589710.Spec : Prop :=
  ∀ n, P14924777395501589710.a n = A178729 n

end A178729

/-! ## A178729.P3410480184822761653

`A213064(A184615(2*n)-n)`
-/

namespace A178729.P3410480184822761653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 (A184615 (2 * n) - (n : ℤ)).toNat

end

end A178729.P3410480184822761653

namespace A178729

/-- `A213064(A184615(2*n)-n)` -/
def P3410480184822761653.Spec : Prop :=
  ∀ n, P3410480184822761653.a n = A178729 n

end A178729

/-! ## A178729.P10416563440593233458

`filter[A184617(n), A036988(#)]`
-/

namespace A178729.P10416563440593233458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A036988 (f1 j).toNat = 1) n)

end

end A178729.P10416563440593233458

namespace A178729

/-- `filter[A184617(n), A036988(#)]` -/
def P10416563440593233458.Spec : Prop :=
  ∀ n, P10416563440593233458.a n = A178729 n

end A178729

/-! ## A178729.P13567668984071685412

`filter[A184617(n), A059841(#)]`
-/

namespace A178729.P13567668984071685412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A178729.P13567668984071685412

namespace A178729

/-- `filter[A184617(n), A059841(#)]` -/
def P13567668984071685412.Spec : Prop :=
  ∀ n, P13567668984071685412.a n = A178729 n

end A178729

/-!
# A178730: Partial sums of floor(7^n/8)/6.

The programs for A178730, the canonical program `A178730.P17262977204900828279` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178730 has offset 1).

The definition of A178730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178730.P17262977204900828279

`8*a(n-1)-6*a(n-2)-8*a(n-3)+7*a(n-4)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=58`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178730

/-- `8*a(n-1)-6*a(n-2)-8*a(n-3)+7*a(n-4)` -/
def P17262977204900828279.Spec : Prop :=
  ∀ n, P17262977204900828279.a n = A178730 (n + 1)

theorem P17262977204900828279.correct : P17262977204900828279.Spec := by
  intro n
  simp only [A178730, Nat.add_sub_cancel]

end A178730

/-! ## A178730.P8395659177505642419

`a(n-2)+(7^n-1)/6` with `a(0)=0, a(1)=1`
-/

namespace A178730.P8395659177505642419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ((7 ^ n : ℤ) - 1 : ℚ) / 6

end

end A178730.P8395659177505642419

namespace A178730

/-- `a(n-2)+(7^n-1)/6` -/
def P8395659177505642419.Spec : Prop :=
  ∀ n, P8395659177505642419.a n = (A178730 (n + 1) : ℚ)

end A178730

/-! ## A178730.P15875436960960252297

`(floor(7^(n+2)/48)-floor((n+2)/2))/6`
-/

namespace A178730.P15875436960960252297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(7 ^ (n + 2) : ℚ) / 48⌋ - ⌊(n + 2 : ℚ) / 2⌋ : ℚ) / 6

end

end A178730.P15875436960960252297

namespace A178730

/-- `(floor(7^(n+2)/48)-floor((n+2)/2))/6` -/
def P15875436960960252297.Spec : Prop :=
  ∀ n, P15875436960960252297.a n = (A178730 (n + 1) : ℚ)

end A178730

/-! ## A178730.P11792815330925918866

`∑[∑[xor(1, 7*a(n-1))]]` with `a(0)=0`
-/

namespace A178730.P11792815330925918866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.xor 1 (7 * f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178730.P11792815330925918866

namespace A178730

/-- `∑[∑[xor(1, 7*a(n-1))]]` -/
def P11792815330925918866.Spec : Prop :=
  ∀ n, (P11792815330925918866.a n : ℤ) = A178730 (n + 1)

end A178730

/-! ## A178730.P2441970545405608961

`ceil(n/2)+7*a(n-1)` with `a(0)=0`
-/

namespace A178730.P2441970545405608961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(n : ℚ) / 2⌉ + 7 * a (n - 1)

end

end A178730.P2441970545405608961

namespace A178730

/-- `ceil(n/2)+7*a(n-1)` -/
def P2441970545405608961.Spec : Prop :=
  ∀ n, P2441970545405608961.a n = A178730 (n + 1)

end A178730

/-! ## A178730.P6066163964715661255

`∑[n%2+7*a(n-1)]` with `a(0)=0`
-/

namespace A178730.P6066163964715661255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n % 2 + 7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178730.P6066163964715661255

namespace A178730

/-- `∑[n%2+7*a(n-1)]` -/
def P6066163964715661255.Spec : Prop :=
  ∀ n, (P6066163964715661255.a n : ℤ) = A178730 (n + 1)

end A178730

/-! ## A178730.P4141607882923979727

`∑[∑[7^(n-1)-a(n-1)]]` with `a(0)=0`
-/

namespace A178730.P4141607882923979727
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178730.P4141607882923979727

namespace A178730

/-- `∑[∑[7^(n-1)-a(n-1)]]` -/
def P4141607882923979727.Spec : Prop :=
  ∀ n, P4141607882923979727.a n = (A178730 (n + 1) : ℚ)

end A178730

/-! ## A178730.P15803567481960677152

`floor((n+1)/2+7*a(n-1))` with `a(0)=0`
-/

namespace A178730.P15803567481960677152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℚ) / 2 + (7 * a (n - 1) : ℚ)⌋

end

end A178730.P15803567481960677152

namespace A178730

/-- `floor((n+1)/2+7*a(n-1))` -/
def P15803567481960677152.Spec : Prop :=
  ∀ n, P15803567481960677152.a n = A178730 (n + 1)

end A178730

/-! ## A178730.P8533331900248061732

`∑[7*a(n-1)]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A178730.P8533331900248061732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A178730.P8533331900248061732

namespace A178730

/-- `∑[7*a(n-1)]+a(n-2)` -/
def P8533331900248061732.Spec : Prop :=
  ∀ n, (P8533331900248061732.a n : ℤ) = A178730 (n + 1)

end A178730

/-! ## A178730.P15338243414908433287

`∑[∑[7*a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A178730.P15338243414908433287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  7 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178730.P15338243414908433287

namespace A178730

/-- `∑[∑[7*a(n-1)]-a(n-1)]` -/
def P15338243414908433287.Spec : Prop :=
  ∀ n, P15338243414908433287.a n = A178730 (n + 1)

end A178730

/-! ## A178730.P17810603122051277507

`∑[∑[A015552(n)]]`
-/

namespace A178730.P17810603122051277507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015552 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178730.P17810603122051277507

namespace A178730

/-- `∑[∑[A015552(n)]]` -/
def P17810603122051277507.Spec : Prop :=
  ∀ n, P17810603122051277507.a n = A178730 (n + 1)

end A178730

/-! ## A178730.P9892631055150309883

`A023000(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A178730.P9892631055150309883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A023000 n + a (n - 2)

end

end A178730.P9892631055150309883

namespace A178730

/-- `A023000(n)+a(n-2)` -/
def P9892631055150309883.Spec : Prop :=
  ∀ n, P9892631055150309883.a n = A178730 (n + 1)

end A178730

/-!
# A178731: a(n) = n XOR 5n, where XOR is bitwise XOR.

The programs for A178731, the canonical program `A178731.P13522157586380111413` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178731 has offset 0).

The definition of A178731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178731.P13522157586380111413

`xor(n, 5*n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178731

/-- `xor(n, 5*n)` -/
def P13522157586380111413.Spec : Prop :=
  ∀ n, (P13522157586380111413.a n : ℤ) = A178731 n

theorem P13522157586380111413.correct : P13522157586380111413.Spec := by
  intro n
  simp only [A178731]

end A178731

/-! ## A178731.P7777131109518467291

`abs(xor(n, A008588(n)-n))`
-/

namespace A178731.P7777131109518467291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A008588 n - (n : ℤ))|

end

end A178731.P7777131109518467291

namespace A178731

/-- `abs(xor(n, A008588(n)-n))` -/
def P7777131109518467291.Spec : Prop :=
  ∀ n, P7777131109518467291.a n = A178731 n

end A178731

/-! ## A178731.P2718321208656342355

`xor(n, A271508(n+1))-1`
-/

namespace A178731.P2718321208656342355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A271508 (n + 1)) - 1

end

end A178731.P2718321208656342355

namespace A178731

/-- `xor(n, A271508(n+1))-1` -/
def P2718321208656342355.Spec : Prop :=
  ∀ n, P2718321208656342355.a n = A178731 n

end A178731

/-! ## A178731.P1204154397435942175

`abs(xor(n, sqrt(A016910(n))-n))`
-/

namespace A178731.P1204154397435942175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A016910 n : ℝ) - (n : ℝ)))|

end

end A178731.P1204154397435942175

namespace A178731

/-- `abs(xor(n, sqrt(A016910(n))-n))` -/
def P1204154397435942175.Spec : Prop :=
  ∀ n, P1204154397435942175.a n = A178731 n

end A178731

/-! ## A178731.P5511977886260481501

`xor(n, A047471(n+1)+n)-1`
-/

namespace A178731.P5511977886260481501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A047471 (n + 1) + (n : ℤ)) - 1

end

end A178731.P5511977886260481501

namespace A178731

/-- `xor(n, A047471(n+1)+n)-1` -/
def P5511977886260481501.Spec : Prop :=
  ∀ n, P5511977886260481501.a n = A178731 n

end A178731

/-! ## A178731.P13121778340774911110

`A105570(xor(n, A008706(n)))`
-/

namespace A178731.P13121778340774911110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (Int.xor (n : ℤ) (A008706 n)).toNat

end

end A178731.P13121778340774911110

namespace A178731

/-- `A105570(xor(n, A008706(n)))` -/
def P13121778340774911110.Spec : Prop :=
  ∀ n, P13121778340774911110.a n = A178731 n

end A178731

/-! ## A178731.P8017157017896287201

`xor(n, A008706(n))-A000007(n)`
-/

namespace A178731.P8017157017896287201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008706 n) - A000007 n

end

end A178731.P8017157017896287201

namespace A178731

/-- `xor(n, A008706(n))-A000007(n)` -/
def P8017157017896287201.Spec : Prop :=
  ∀ n, P8017157017896287201.a n = A178731 n

end A178731

/-! ## A178731.P1253897990374415649

`xor(n, A008706(n))%A003215(n)`
-/

namespace A178731.P1253897990374415649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (A008706 n)) (A003215 n)

end

end A178731.P1253897990374415649

namespace A178731

/-- `xor(n, A008706(n))%A003215(n)` -/
def P1253897990374415649.Spec : Prop :=
  ∀ n, P1253897990374415649.a n = A178731 n

end A178731

/-! ## A178731.P16476262638025370209

`A052928(xor(n, A146763(n)))`
-/

namespace A178731.P16476262638025370209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (Int.xor (n : ℤ) (A146763 n)).toNat

end

end A178731.P16476262638025370209

namespace A178731

/-- `A052928(xor(n, A146763(n)))` -/
def P16476262638025370209.Spec : Prop :=
  ∀ n, P16476262638025370209.a n = A178731 n

end A178731

/-! ## A178731.P3681280020712669420

`A004442(xor(n, A271508(n+1)))`
-/

namespace A178731.P3681280020712669420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor (n : ℤ) (A271508 (n + 1))).toNat

end

end A178731.P3681280020712669420

namespace A178731

/-- `A004442(xor(n, A271508(n+1)))` -/
def P3681280020712669420.Spec : Prop :=
  ∀ n, P3681280020712669420.a n = A178731 n

end A178731

/-! ## A178731.P1478330562872598350

`A153733(xor(n, A008574(n)+n))`
-/

namespace A178731.P1478330562872598350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (Int.xor (n : ℤ) (A008574 n + (n : ℤ))).toNat

end

end A178731.P1478330562872598350

namespace A178731

/-- `A153733(xor(n, A008574(n)+n))` -/
def P1478330562872598350.Spec : Prop :=
  ∀ n, P1478330562872598350.a n = A178731 n

end A178731

/-! ## A178731.P8484497544073687262

`A004442(A004442(xor(n, A008587(n))))`
-/

namespace A178731.P8484497544073687262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004442 (Int.xor (n : ℤ) (A008587 n)).toNat).toNat

end

end A178731.P8484497544073687262

namespace A178731

/-- `A004442(A004442(xor(n, A008587(n))))` -/
def P8484497544073687262.Spec : Prop :=
  ∀ n, P8484497544073687262.a n = A178731 n

end A178731

/-! ## A178731.P1628467351163358335

`A004526(xor(Δ[n²]-1, A008592(n))+1)`
-/

namespace A178731.P1628467351163358335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1) (A008592 n) + 1).toNat

end

end A178731.P1628467351163358335

namespace A178731

/-- `A004526(xor(Δ[n²]-1, A008592(n))+1)` -/
def P1628467351163358335.Spec : Prop :=
  ∀ n, P1628467351163358335.a n = A178731 n

end A178731

/-!
# A178732: a(n) = n XOR 6n, where XOR is bitwise XOR.

The programs for A178732, the canonical program `A178732.P13766462329826566462` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178732 has offset 0).

The definition of A178732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178732.P13766462329826566462

`xor(n, 6*n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178732

/-- `xor(n, 6*n)` -/
def P13766462329826566462.Spec : Prop :=
  ∀ n, (P13766462329826566462.a n : ℤ) = A178732 n

theorem P13766462329826566462.correct : P13766462329826566462.Spec := by
  intro n
  simp only [A178732]

end A178732

/-! ## A178732.P1516046146231973759

`or(2*n, 12*n)-7*n`
-/

namespace A178732.P1516046146231973759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (2 * n) (12 * n) : ℤ) - (7 * n : ℤ)

end

end A178732.P1516046146231973759

namespace A178732

/-- `or(2*n, 12*n)-7*n` -/
def P1516046146231973759.Spec : Prop :=
  ∀ n, P1516046146231973759.a n = A178732 n

end A178732

/-! ## A178732.P7294403139087599355

`and(12*n, -(2*n+1))-5*n`
-/

namespace A178732.P7294403139087599355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (12 * n : ℤ) (-(2 * n + 1 : ℤ)) - (5 * n : ℤ)

end

end A178732.P7294403139087599355

namespace A178732

/-- `and(12*n, -(2*n+1))-5*n` -/
def P7294403139087599355.Spec : Prop :=
  ∀ n, P7294403139087599355.a n = A178732 n

end A178732

/-! ## A178732.P15235884044931994580

`or(2*n+1, 12*n)%(7*n+1)`
-/

namespace A178732.P15235884044931994580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n + 1) (12 * n) % (7 * n + 1)

end

end A178732.P15235884044931994580

namespace A178732

/-- `or(2*n+1, 12*n)%(7*n+1)` -/
def P15235884044931994580.Spec : Prop :=
  ∀ n, (P15235884044931994580.a n : ℤ) = A178732 n

end A178732

/-! ## A178732.P1649562755744229149

`abs(xor(-n, A008588(n)))`
-/

namespace A178732.P1649562755744229149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(n : ℤ)) (A008588 n)|

end

end A178732.P1649562755744229149

namespace A178732

/-- `abs(xor(-n, A008588(n)))` -/
def P1649562755744229149.Spec : Prop :=
  ∀ n, P1649562755744229149.a n = A178732 n

end A178732

/-! ## A178732.P8529464471196411434

`abs(xor(n, A016921(n)-1))`
-/

namespace A178732.P8529464471196411434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A016921 n - 1)|

end

end A178732.P8529464471196411434

namespace A178732

/-- `abs(xor(n, A016921(n)-1))` -/
def P8529464471196411434.Spec : Prop :=
  ∀ n, P8529464471196411434.a n = A178732 n

end A178732

/-! ## A178732.P3109378195590624733

`abs(xor(n, A008589(n)-n))`
-/

namespace A178732.P3109378195590624733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A008589 n - (n : ℤ))|

end

end A178732.P3109378195590624733

namespace A178732

/-- `abs(xor(n, A008589(n)-n))` -/
def P3109378195590624733.Spec : Prop :=
  ∀ n, P3109378195590624733.a n = A178732 n

end A178732

/-! ## A178732.P1027238273114089477

`xor(n, A008458(n))-floor(acot(n))`
-/

namespace A178732.P1027238273114089477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008458 n) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A178732.P1027238273114089477

namespace A178732

/-- `xor(n, A008458(n))-floor(acot(n))` -/
def P1027238273114089477.Spec : Prop :=
  ∀ n, P1027238273114089477.a n = A178732 n

end A178732

/-! ## A178732.P6519295743338514943

`∑{d}[xor(-n, A008588(n)), A000010(#)]`
-/

namespace A178732.P6519295743338514943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(n : ℤ)) (A008588 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A178732.P6519295743338514943

namespace A178732

/-- `∑{d}[xor(-n, A008588(n)), A000010(#)]` -/
def P6519295743338514943.Spec : Prop :=
  ∀ n, P6519295743338514943.a n = A178732 n

end A178732

/-! ## A178732.P1000178662124543146

`abs(xor(n, Δ[A242658(n)]))`
-/

namespace A178732.P1000178662124543146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (f1 (n + 1) - f1 n)|

end

end A178732.P1000178662124543146

namespace A178732

/-- `abs(xor(n, Δ[A242658(n)]))` -/
def P1000178662124543146.Spec : Prop :=
  ∀ n, P1000178662124543146.a n = A178732 n

end A178732

/-!
# A178733: a(n) = n XOR 7n, where XOR is bitwise XOR.

The programs for A178733, the canonical program `A178733.P2108770111067003983` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178733 has offset 0).

The definition of A178733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178733.P2108770111067003983

`xor(n, 7*n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178733

/-- `xor(n, 7*n)` -/
def P2108770111067003983.Spec : Prop :=
  ∀ n, (P2108770111067003983.a n : ℤ) = A178733 n

theorem P2108770111067003983.correct : P2108770111067003983.Spec := by
  intro n
  simp only [A178733]

end A178733

/-! ## A178733.P16870746347721797698

`or(2*n, 14*n)-8*n`
-/

namespace A178733.P16870746347721797698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (2 * n) (14 * n) : ℤ) - (8 * n : ℤ)

end

end A178733.P16870746347721797698

namespace A178733

/-- `or(2*n, 14*n)-8*n` -/
def P16870746347721797698.Spec : Prop :=
  ∀ n, P16870746347721797698.a n = A178733 n

end A178733

/-! ## A178733.P14948551702286180300

`or(2*n, 14*n)%floor(2/acot(4*n))`
-/

namespace A178733.P14948551702286180300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor (2 * n) (14 * n) : ℤ) ⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋

end

end A178733.P14948551702286180300

namespace A178733

/-- `or(2*n, 14*n)%floor(2/acot(4*n))` -/
def P14948551702286180300.Spec : Prop :=
  ∀ n, P14948551702286180300.a n = A178733 n

end A178733

/-! ## A178733.P4089583855856291264

`and(2*7*n, -(2*n+1))-6*n`
-/

namespace A178733.P4089583855856291264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * (7 * n) : ℤ) (-(2 * n + 1 : ℤ)) - (6 * n : ℤ)

end

end A178733.P4089583855856291264

namespace A178733

/-- `and(2*7*n, -(2*n+1))-6*n` -/
def P4089583855856291264.Spec : Prop :=
  ∀ n, P4089583855856291264.a n = A178733 n

end A178733

/-! ## A178733.P8884201014443126879

`lcm(2, xor(n, A008589(n)))`
-/

namespace A178733.P8884201014443126879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.xor (n : ℤ) (A008589 n))

end

end A178733.P8884201014443126879

namespace A178733

/-- `lcm(2, xor(n, A008589(n)))` -/
def P8884201014443126879.Spec : Prop :=
  ∀ n, (P8884201014443126879.a n : ℤ) = A178733 n

end A178733

/-! ## A178733.P7140836276289178491

`abs(xor(n, A017017(n)-3))`
-/

namespace A178733.P7140836276289178491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A017017 n - 3)|

end

end A178733.P7140836276289178491

namespace A178733

/-- `abs(xor(n, A017017(n)-3))` -/
def P7140836276289178491.Spec : Prop :=
  ∀ n, P7140836276289178491.a n = A178733 n

end A178733

/-! ## A178733.P12697117501221136313

`abs(xor(n, A008590(n)-n))`
-/

namespace A178733.P12697117501221136313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A008590 n - (n : ℤ))|

end

end A178733.P12697117501221136313

namespace A178733

/-- `abs(xor(n, A008590(n)-n))` -/
def P12697117501221136313.Spec : Prop :=
  ∀ n, P12697117501221136313.a n = A178733 n

end A178733

/-! ## A178733.P1316038951975268844

`abs(xor(2-sqrt(A017018(n)), -(n+1)))`
-/

namespace A178733.P1316038951975268844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (SequenceMachineLib.roundAway (2 - Real.sqrt (A017018 n : ℝ))) (-(n + 1 : ℤ))|

end

end A178733.P1316038951975268844

namespace A178733

/-- `abs(xor(2-sqrt(A017018(n)), -(n+1)))` -/
def P1316038951975268844.Spec : Prop :=
  ∀ n, P1316038951975268844.a n = A178733 n

end A178733

/-! ## A178733.P13971932035878787301

`∑{d}[xor(n, A008589(n)), A000010(#)]`
-/

namespace A178733.P13971932035878787301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008589 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A178733.P13971932035878787301

namespace A178733

/-- `∑{d}[xor(n, A008589(n)), A000010(#)]` -/
def P13971932035878787301.Spec : Prop :=
  ∀ n, P13971932035878787301.a n = A178733 n

end A178733

/-! ## A178733.P388893465407372973

`A178894(2*n)-8*n`
-/

namespace A178733.P388893465407372973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178894 (2 * n) - (8 * n : ℤ)

end

end A178733.P388893465407372973

namespace A178733

/-- `A178894(2*n)-8*n` -/
def P388893465407372973.Spec : Prop :=
  ∀ n, P388893465407372973.a n = A178733 n

end A178733

/-! ## A178733.P6049655237152358329

`xor(n, A008589(n))/A007318(C(n, 2))`
-/

namespace A178733.P6049655237152358329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (A008589 n) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A178733.P6049655237152358329

namespace A178733

/-- `xor(n, A008589(n))/A007318(C(n, 2))` -/
def P6049655237152358329.Spec : Prop :=
  ∀ n, P6049655237152358329.a n = (A178733 n : ℚ)

end A178733

/-!
# A178734: a(n) = n XOR 8n, where XOR is bitwise XOR.

The programs for A178734, the canonical program `A178734.P13663929378841832123` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178734 has offset 0).

The definition of A178734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178734.P13663929378841832123

`xor(n, 8*n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178734

/-- `xor(n, 8*n)` -/
def P13663929378841832123.Spec : Prop :=
  ∀ n, (P13663929378841832123.a n : ℤ) = A178734 n

theorem P13663929378841832123.correct : P13663929378841832123.Spec := by
  intro n
  simp only [A178734]

end A178734

/-! ## A178734.P13424092259153567741

`abs(xor(n, record[xor(7, n)]-7))`
-/

namespace A178734.P13424092259153567741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 7)|

end

end A178734.P13424092259153567741

namespace A178734

/-- `abs(xor(n, record[xor(7, n)]-7))` -/
def P13424092259153567741.Spec : Prop :=
  ∀ n, P13424092259153567741.a n = A178734 n

end A178734

/-! ## A178734.P5056186785504494869

`abs(xor(n/(1/2)^3, -n))`
-/

namespace A178734.P5056186785504494869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 2) ^ 3)) (-(n : ℤ))|

end

end A178734.P5056186785504494869

namespace A178734

/-- `abs(xor(n/(1/2)^3, -n))` -/
def P5056186785504494869.Spec : Prop :=
  ∀ n, P5056186785504494869.a n = A178734 n

end A178734

/-! ## A178734.P10463796564601474397

`-xor(n/(1/2)^3, -n)`
-/

namespace A178734.P10463796564601474397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 2) ^ 3)) (-(n : ℤ))

end

end A178734.P10463796564601474397

namespace A178734

/-- `-xor(n/(1/2)^3, -n)` -/
def P10463796564601474397.Spec : Prop :=
  ∀ n, P10463796564601474397.a n = A178734 n

end A178734

/-! ## A178734.P5974954078976728286

`xor(n-1, record[xor(7, n)]-7)+1`
-/

namespace A178734.P5974954078976728286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 7) + 1

end

end A178734.P5974954078976728286

namespace A178734

/-- `xor(n-1, record[xor(7, n)]-7)+1` -/
def P5974954078976728286.Spec : Prop :=
  ∀ n, P5974954078976728286.a n = A178734 n

end A178734

/-! ## A178734.P7244231285076857451

`and(8*n, -n)+and(8*n, -n)-7*n`
-/

namespace A178734.P7244231285076857451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (8 * n : ℤ) (-(n : ℤ)) + (Int.land (8 * n : ℤ) (-(n : ℤ)) - (7 * n : ℤ))

end

end A178734.P7244231285076857451

namespace A178734

/-- `and(8*n, -n)+and(8*n, -n)-7*n` -/
def P7244231285076857451.Spec : Prop :=
  ∀ n, P7244231285076857451.a n = A178734 n

end A178734

/-! ## A178734.P5517074251705616998

`and(8*n, -n)-(7*n-and(8*n, -n))`
-/

namespace A178734.P5517074251705616998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (8 * n : ℤ) (-(n : ℤ)) - ((7 * n : ℤ) - Int.land (8 * n : ℤ) (-(n : ℤ)))

end

end A178734.P5517074251705616998

namespace A178734

/-- `and(8*n, -n)-(7*n-and(8*n, -n))` -/
def P5517074251705616998.Spec : Prop :=
  ∀ n, P5517074251705616998.a n = A178734 n

end A178734

/-! ## A178734.P7822331846489156205

`or(xor(n, A008590(n)), char[11])`
-/

namespace A178734.P7822331846489156205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.xor (n : ℤ) (A008590 n)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A178734.P7822331846489156205

namespace A178734

/-- `or(xor(n, A008590(n)), char[11])` -/
def P7822331846489156205.Spec : Prop :=
  ∀ n, P7822331846489156205.a n = A178734 n

end A178734

/-! ## A178734.P1650489141781921119

`2*A178895(n)-A008591(n)`
-/

namespace A178734.P1650489141781921119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178895 n - A008591 n

end

end A178734.P1650489141781921119

namespace A178734

/-- `2*A178895(n)-A008591(n)` -/
def P1650489141781921119.Spec : Prop :=
  ∀ n, P1650489141781921119.a n = A178734 n

end A178734

/-! ## A178734.P5247468298544048648

`∑{d}[xor(n, A008590(n)), A000010(#)]`
-/

namespace A178734.P5247468298544048648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A008590 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A178734.P5247468298544048648

namespace A178734

/-- `∑{d}[xor(n, A008590(n)), A000010(#)]` -/
def P5247468298544048648.Spec : Prop :=
  ∀ n, P5247468298544048648.a n = A178734 n

end A178734

/-! ## A178734.P12829684286084768806

`A048727(A048724(n))`
-/

namespace A178734.P12829684286084768806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 (A048724 n).toNat

end

end A178734.P12829684286084768806

namespace A178734

/-- `A048727(A048724(n))` -/
def P12829684286084768806.Spec : Prop :=
  ∀ n, P12829684286084768806.a n = A178734 n

end A178734

/-! ## A178734.P5924852550929838709

`A048727(A048726(n)/2)`
-/

namespace A178734.P5924852550929838709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 (SequenceMachineLib.roundAway ((A048726 n : ℚ) / 2)).toNat

end

end A178734.P5924852550929838709

namespace A178734

/-- `A048727(A048726(n)/2)` -/
def P5924852550929838709.Spec : Prop :=
  ∀ n, P5924852550929838709.a n = A178734 n

end A178734

/-! ## A178734.P1879081293458958687

`A048727(A229763(2*n)+n)`
-/

namespace A178734.P1879081293458958687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 (A229763 (2 * n) + (n : ℤ)).toNat

end

end A178734.P1879081293458958687

namespace A178734

/-- `A048727(A229763(2*n)+n)` -/
def P1879081293458958687.Spec : Prop :=
  ∀ n, P1879081293458958687.a n = A178734 n

end A178734

/-! ## A178734.P7421534329310052731

`A048727(A163617(n)-A213370(n))`
-/

namespace A178734.P7421534329310052731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048727 (A163617 n - A213370 n).toNat

end

end A178734.P7421534329310052731

namespace A178734

/-- `A048727(A163617(n)-A213370(n))` -/
def P7421534329310052731.Spec : Prop :=
  ∀ n, P7421534329310052731.a n = A178734 n

end A178734

/-! ## A178734.P14291571631665056188

`A004443(xor(n, A017089(n)))`
-/

namespace A178734.P14291571631665056188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor (n : ℤ) (A017089 n)).toNat

end

end A178734.P14291571631665056188

namespace A178734

/-- `A004443(xor(n, A017089(n)))` -/
def P14291571631665056188.Spec : Prop :=
  ∀ n, P14291571631665056188.a n = A178734 n

end A178734

/-!
# A178735: a(n) = n XOR 9n, where XOR is bitwise XOR.

The programs for A178735, the canonical program `A178735.P12313182366592630794` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178735 has offset 0).

The definition of A178735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178735.P12313182366592630794

`xor(n, 9*n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178735

/-- `xor(n, 9*n)` -/
def P12313182366592630794.Spec : Prop :=
  ∀ n, (P12313182366592630794.a n : ℤ) = A178735 n

theorem P12313182366592630794.correct : P12313182366592630794.Spec := by
  intro n
  simp only [A178735]

end A178735

/-! ## A178735.P5019671240575747204

`lcm(2, xor(n, n/(1/3)²))`
-/

namespace A178735.P5019671240575747204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 3) ^ 2)))

end

end A178735.P5019671240575747204

namespace A178735

/-- `lcm(2, xor(n, n/(1/3)²))` -/
def P5019671240575747204.Spec : Prop :=
  ∀ n, (P5019671240575747204.a n : ℤ) = A178735 n

end A178735

/-! ## A178735.P13242263875242994291

`10*n-and(2*n, 18*n)`
-/

namespace A178735.P13242263875242994291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - (Nat.land (2 * n) (18 * n) : ℤ)

end

end A178735.P13242263875242994291

namespace A178735

/-- `10*n-and(2*n, 18*n)` -/
def P13242263875242994291.Spec : Prop :=
  ∀ n, P13242263875242994291.a n = A178735 n

end A178735

/-! ## A178735.P16982767240320678517

`or(2*n, 18*n)-10*n`
-/

namespace A178735.P16982767240320678517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (2 * n) (18 * n) : ℤ) - (10 * n : ℤ)

end

end A178735.P16982767240320678517

namespace A178735

/-- `or(2*n, 18*n)-10*n` -/
def P16982767240320678517.Spec : Prop :=
  ∀ n, P16982767240320678517.a n = A178735 n

end A178735

/-! ## A178735.P15368727360960372348

`xor(1, xor(n, n/(1/3)²))-1`
-/

namespace A178735.P15368727360960372348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 3) ^ 2))) - 1

end

end A178735.P15368727360960372348

namespace A178735

/-- `xor(1, xor(n, n/(1/3)²))-1` -/
def P15368727360960372348.Spec : Prop :=
  ∀ n, P15368727360960372348.a n = A178735 n

end A178735

/-! ## A178735.P8025488043705683849

`xor(n, n/(1/3)²)%((n+1)^5)`
-/

namespace A178735.P8025488043705683849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 3) ^ 2))) ((n + 1) ^ 5 : ℤ)

end

end A178735.P8025488043705683849

namespace A178735

/-- `xor(n, n/(1/3)²)%((n+1)^5)` -/
def P8025488043705683849.Spec : Prop :=
  ∀ n, P8025488043705683849.a n = A178735 n

end A178735

/-! ## A178735.P517977244918794505

`xor(n, n/(1/3)²)/gcd(n, n+1)`
-/

namespace A178735.P517977244918794505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 3) ^ 2)) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A178735.P517977244918794505

namespace A178735

/-- `xor(n, n/(1/3)²)/gcd(n, n+1)` -/
def P517977244918794505.Spec : Prop :=
  ∀ n, P517977244918794505.a n = (A178735 n : ℚ)

end A178735

/-! ## A178735.P4446503536138497774

`abs(xor(n, A008592(n)-n))`
-/

namespace A178735.P4446503536138497774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A008592 n - (n : ℤ))|

end

end A178735.P4446503536138497774

namespace A178735

/-- `abs(xor(n, A008592(n)-n))` -/
def P4446503536138497774.Spec : Prop :=
  ∀ n, P4446503536138497774.a n = A178735 n

end A178735

/-! ## A178735.P11460291497671005976

`abs(xor(n, A017281(n)-(n+1)))`
-/

namespace A178735.P11460291497671005976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A017281 n - (n + 1 : ℤ))|

end

end A178735.P11460291497671005976

namespace A178735

/-- `abs(xor(n, A017281(n)-(n+1)))` -/
def P11460291497671005976.Spec : Prop :=
  ∀ n, P11460291497671005976.a n = A178735 n

end A178735

/-!
# A178736: a(n) = n XOR 10n, where XOR is bitwise XOR.

The programs for A178736, the canonical program `A178736.P8976573788023891816` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178736 has offset 0).

The definition of A178736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178736.P8976573788023891816

`xor(n, 10*n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178736

/-- `xor(n, 10*n)` -/
def P8976573788023891816.Spec : Prop :=
  ∀ n, (P8976573788023891816.a n : ℤ) = A178736 n

theorem P8976573788023891816.correct : P8976573788023891816.Spec := by
  intro n
  simp only [A178736]

end A178736

/-! ## A178736.P3736132711644018892

`11*n-and(2*n, 20*n)`
-/

namespace A178736.P3736132711644018892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - (Nat.land (2 * n) (20 * n) : ℤ)

end

end A178736.P3736132711644018892

namespace A178736

/-- `11*n-and(2*n, 20*n)` -/
def P3736132711644018892.Spec : Prop :=
  ∀ n, P3736132711644018892.a n = A178736 n

end A178736

/-! ## A178736.P17260671254794053922

`-xor(n/(1/3)²+n, -n)`
-/

namespace A178736.P17260671254794053922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / ((1 : ℚ) / 3) ^ 2 + (n : ℚ))) (-(n : ℤ))

end

end A178736.P17260671254794053922

namespace A178736

/-- `-xor(n/(1/3)²+n, -n)` -/
def P17260671254794053922.Spec : Prop :=
  ∀ n, P17260671254794053922.a n = A178736 n

end A178736

/-! ## A178736.P15790422108595571827

`abs(xor(-n, A008592(n)))`
-/

namespace A178736.P15790422108595571827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(n : ℤ)) (A008592 n)|

end

end A178736.P15790422108595571827

namespace A178736

/-- `abs(xor(-n, A008592(n)))` -/
def P15790422108595571827.Spec : Prop :=
  ∀ n, P15790422108595571827.a n = A178736 n

end A178736

/-! ## A178736.P612252125308320009

`abs(xor(n, A017305(n)-3))`
-/

namespace A178736.P612252125308320009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A017305 n - 3)|

end

end A178736.P612252125308320009

namespace A178736

/-- `abs(xor(n, A017305(n)-3))` -/
def P612252125308320009.Spec : Prop :=
  ∀ n, P612252125308320009.a n = A178736 n

end A178736

/-! ## A178736.P13990646938580589069

`abs(xor(n, A017341(n)-6))`
-/

namespace A178736.P13990646938580589069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A017341 n - 6)|

end

end A178736.P13990646938580589069

namespace A178736

/-- `abs(xor(n, A017341(n)-6))` -/
def P13990646938580589069.Spec : Prop :=
  ∀ n, P13990646938580589069.a n = A178736 n

end A178736

/-! ## A178736.P2470230817260880526

`abs(xor(n, A008593(n)-n))`
-/

namespace A178736.P2470230817260880526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (A008593 n - (n : ℤ))|

end

end A178736.P2470230817260880526

namespace A178736

/-- `abs(xor(n, A008593(n)-n))` -/
def P2470230817260880526.Spec : Prop :=
  ∀ n, P2470230817260880526.a n = A178736 n

end A178736

/-! ## A178736.P11330195692983179852

`abs(xor(xor(1, -n), A017281(n)))`
-/

namespace A178736.P11330195692983179852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Int.xor 1 (-(n : ℤ))) (A017281 n)|

end

end A178736.P11330195692983179852

namespace A178736

/-- `abs(xor(xor(1, -n), A017281(n)))` -/
def P11330195692983179852.Spec : Prop :=
  ∀ n, P11330195692983179852.a n = A178736 n

end A178736

/-! ## A178736.P9371495392834732352

`abs(xor(3-A017317(n), n-1))`
-/

namespace A178736.P9371495392834732352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 - A017317 n) ((n : ℤ) - 1)|

end

end A178736.P9371495392834732352

namespace A178736

/-- `abs(xor(3-A017317(n), n-1))` -/
def P9371495392834732352.Spec : Prop :=
  ∀ n, P9371495392834732352.a n = A178736 n

end A178736

/-! ## A178736.P11008737068257672252

`2*A178897(n)-A008593(n)`
-/

namespace A178736.P11008737068257672252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178897 n - A008593 n

end

end A178736.P11008737068257672252

namespace A178736

/-- `2*A178897(n)-A008593(n)` -/
def P11008737068257672252.Spec : Prop :=
  ∀ n, P11008737068257672252.a n = A178736 n

end A178736

/-!
# A178737: Coefficients in expansion of Jacobi theta_1'''(0).

The programs for A178737, the canonical program `A178737.P7407555600141389909` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178737 has offset 0).

The definition of A178737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178737.P7407555600141389909

`A010816(n)^3`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178737

/-- `A010816(n)^3` -/
def P7407555600141389909.Spec : Prop :=
  ∀ n, P7407555600141389909.a n = A178737 n

theorem P7407555600141389909.correct : P7407555600141389909.Spec := by
  intro n
  simp only [A178737]

end A178737

/-! ## A178737.P11474187623077912839

`Δ[A274094(n)]^3`
-/

namespace A178737.P11474187623077912839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A178737.P11474187623077912839

namespace A178737

/-- `Δ[A274094(n)]^3` -/
def P11474187623077912839.Spec : Prop :=
  ∀ n, P11474187623077912839.a n = A178737 n

end A178737

/-! ## A178737.P14973400956097741468

`A010816(n)*A017077(n)`
-/

namespace A178737.P14973400956097741468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A017077 n

end

end A178737.P14973400956097741468

namespace A178737

/-- `A010816(n)*A017077(n)` -/
def P14973400956097741468.Spec : Prop :=
  ∀ n, P14973400956097741468.a n = A178737 n

end A178737

/-! ## A178737.P6296765789312998835

`A198954(n)²*A010816(n)`
-/

namespace A178737.P6296765789312998835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n ^ 2 * A010816 n

end

end A178737.P6296765789312998835

namespace A178737

/-- `A198954(n)²*A010816(n)` -/
def P6296765789312998835.Spec : Prop :=
  ∀ n, P6296765789312998835.a n = A178737 n

end A178737

/-! ## A178737.P13445845880685062473

`A010816(n)*A237587(n+1)`
-/

namespace A178737.P13445845880685062473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n * A237587 (n + 1)

end

end A178737.P13445845880685062473

namespace A178737

/-- `A010816(n)*A237587(n+1)` -/
def P13445845880685062473.Spec : Prop :=
  ∀ n, P13445845880685062473.a n = A178737 n

end A178737

/-! ## A178737.P15914632740801307301

`A198954(n)²*Δ[A274094(n)]`
-/

namespace A178737.P15914632740801307301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A178737.P15914632740801307301

namespace A178737

/-- `A198954(n)²*Δ[A274094(n)]` -/
def P15914632740801307301.Spec : Prop :=
  ∀ n, P15914632740801307301.a n = A178737 n

end A178737

/-! ## A178737.P10131214472946994408

`A010816(n)/(1/A027170(n))²`
-/

namespace A178737.P10131214472946994408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010816 n : ℚ) / (1 / (A027170 n : ℚ)) ^ 2

end

end A178737.P10131214472946994408

namespace A178737

/-- `A010816(n)/(1/A027170(n))²` -/
def P10131214472946994408.Spec : Prop :=
  ∀ n, P10131214472946994408.a n = (A178737 n : ℚ)

end A178737

/-! ## A178737.P2561504339552579152

`A010816(n)/(1/A029620(n))²`
-/

namespace A178737.P2561504339552579152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010816 n : ℚ) / (1 / (A029620 n : ℚ)) ^ 2

end

end A178737.P2561504339552579152

namespace A178737

/-- `A010816(n)/(1/A029620(n))²` -/
def P2561504339552579152.Spec : Prop :=
  ∀ n, P2561504339552579152.a n = (A178737 n : ℚ)

end A178737

/-! ## A178737.P7210049360171875935

`A010816(n)/(1/A099375(n))²`
-/

namespace A178737.P7210049360171875935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010816 n : ℚ) / (1 / (A099375 n : ℚ)) ^ 2

end

end A178737.P7210049360171875935

namespace A178737

/-- `A010816(n)/(1/A099375(n))²` -/
def P7210049360171875935.Spec : Prop :=
  ∀ n, P7210049360171875935.a n = (A178737 n : ℚ)

end A178737

/-! ## A178737.P6248454123415256076

`(A274094(n+1)-A274094(n))^3`
-/

namespace A178737.P6248454123415256076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274094 (n + 1) - A274094 n) ^ 3

end

end A178737.P6248454123415256076

namespace A178737

/-- `(A274094(n+1)-A274094(n))^3` -/
def P6248454123415256076.Spec : Prop :=
  ∀ n, P6248454123415256076.a n = A178737 n

end A178737

/-! ## A178737.P9184795997175316087

`A027170(n)*A197870(n)*A027170(n)²`
-/

namespace A178737.P9184795997175316087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 n * A197870 n * A027170 n ^ 2

end

end A178737.P9184795997175316087

namespace A178737

/-- `A027170(n)*A197870(n)*A027170(n)²` -/
def P9184795997175316087.Spec : Prop :=
  ∀ n, P9184795997175316087.a n = A178737 n

end A178737

/-! ## A178737.P17058327648055273598

`A029620(n)*A197870(n)*A029620(n)²`
-/

namespace A178737.P17058327648055273598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029620 n * A197870 n * A029620 n ^ 2

end

end A178737.P17058327648055273598

namespace A178737

/-- `A029620(n)*A197870(n)*A029620(n)²` -/
def P17058327648055273598.Spec : Prop :=
  ∀ n, P17058327648055273598.a n = A178737 n

end A178737

/-! ## A178737.P15242129982397034510

`A033999(n)*A133089(n)*A133089(n)²`
-/

namespace A178737.P15242129982397034510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133089 n * A133089 n ^ 2

end

end A178737.P15242129982397034510

namespace A178737

/-- `A033999(n)*A133089(n)*A133089(n)²` -/
def P15242129982397034510.Spec : Prop :=
  ∀ n, P15242129982397034510.a n = A178737 n

end A178737

/-! ## A178737.P11883288958465166165

`A106459(n)*A133089(n)*A133089(n)²`
-/

namespace A178737.P11883288958465166165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 n * A133089 n * A133089 n ^ 2

end

end A178737.P11883288958465166165

namespace A178737

/-- `A106459(n)*A133089(n)*A133089(n)²` -/
def P11883288958465166165.Spec : Prop :=
  ∀ n, P11883288958465166165.a n = A178737 n

end A178737

/-! ## A178737.P1207106577800533638

`A108086(n)*A133089(n)*A133089(n)²`
-/

namespace A178737.P1207106577800533638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 n * A133089 n * A133089 n ^ 2

end

end A178737.P1207106577800533638

namespace A178737

/-- `A108086(n)*A133089(n)*A133089(n)²` -/
def P1207106577800533638.Spec : Prop :=
  ∀ n, P1207106577800533638.a n = A178737 n

end A178737

/-! ## A178737.P1216976175313355313

`A099375(n)*A197870(n)*A099375(n)²`
-/

namespace A178737.P1216976175313355313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n * A197870 n * A099375 n ^ 2

end

end A178737.P1216976175313355313

namespace A178737

/-- `A099375(n)*A197870(n)*A099375(n)²` -/
def P1216976175313355313.Spec : Prop :=
  ∀ n, P1216976175313355313.a n = A178737 n

end A178737

/-! ## A178737.P10607714768636542927

`A130777(n)*A133089(n)*A133089(n)²`
-/

namespace A178737.P10607714768636542927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 n * A133089 n * A133089 n ^ 2

end

end A178737.P10607714768636542927

namespace A178737

/-- `A130777(n)*A133089(n)*A133089(n)²` -/
def P10607714768636542927.Spec : Prop :=
  ∀ n, P10607714768636542927.a n = A178737 n

end A178737

/-! ## A178737.P3427090454590134913

`A105020(n)*A197870(n)*A105020(n)²`
-/

namespace A178737.P3427090454590134913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n * A197870 n * A105020 n ^ 2

end

end A178737.P3427090454590134913

namespace A178737

/-- `A105020(n)*A197870(n)*A105020(n)²` -/
def P3427090454590134913.Spec : Prop :=
  ∀ n, P3427090454590134913.a n = A178737 n

end A178737

/-! ## A178737.P17298081737078858974

`A110813(n)*A197870(n)*A110813(n)²`
-/

namespace A178737.P17298081737078858974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n * A197870 n * A110813 n ^ 2

end

end A178737.P17298081737078858974

namespace A178737

/-- `A110813(n)*A197870(n)*A110813(n)²` -/
def P17298081737078858974.Spec : Prop :=
  ∀ n, P17298081737078858974.a n = A178737 n

end A178737

/-! ## A178737.P8007869592347768487

`A099889(n)*A197870(n)*A099889(n)²`
-/

namespace A178737.P8007869592347768487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099889 n * A197870 n * A099889 n ^ 2

end

end A178737.P8007869592347768487

namespace A178737

/-- `A099889(n)*A197870(n)*A099889(n)²` -/
def P8007869592347768487.Spec : Prop :=
  ∀ n, P8007869592347768487.a n = A178737 n

end A178737

/-!
# A178738: Moebius inversion of a sequence related to powers of 2.

The programs for A178738, there is no canonical definition to state claims against.
-/

/-! ## A178738.P8889069772486266985

`A334125(n+1)/(2*A087960(n))`
-/

namespace A178738.P8889069772486266985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334125 (n + 1) : ℚ) / (2 * A087960 n : ℚ)

end

end A178738.P8889069772486266985

/-! ## A178738.P10442520658663241767

`A042980(2*n+1)-A042979(2*n+1)`
-/

namespace A178738.P10442520658663241767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042980 (2 * n + 1) - A042979 (2 * n + 1)

end

end A178738.P10442520658663241767

/-! ## A178738.P14873303143449651615

`A042980(2*n+1)-A074028(2*n+1)`
-/

namespace A178738.P14873303143449651615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042980 (2 * n + 1) - A074028 (2 * n + 1)

end

end A178738.P14873303143449651615

/-! ## A178738.P14845744431732988028

`A074027(2*n+1)-A042979(2*n+1)`
-/

namespace A178738.P14845744431732988028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074027 (2 * n + 1) - A042979 (2 * n + 1)

end

end A178738.P14845744431732988028

/-! ## A178738.P15202273766038727677

`A074027(2*n+1)-A074028(2*n+1)`
-/

namespace A178738.P15202273766038727677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074027 (2 * n + 1) - A074028 (2 * n + 1)

end

end A178738.P15202273766038727677

/-!
# A178739: Product of the 4th power of a prime (A030514) and a different prime (p^4*q).

The programs for A178739, the canonical program `A178739.P3877142655483989971` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178739 has offset 1).

The definition of A178739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178739.P7531960848468936531

`sqrt(A179699(n+1))`
-/

namespace A178739.P7531960848468936531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179699 (n + 1) : ℝ)

end

end A178739.P7531960848468936531

namespace A178739

/-- `sqrt(A179699(n+1))` -/
def P7531960848468936531.Spec : Prop :=
  ∀ n, P7531960848468936531.a n = (A178739 (n + 1) : ℝ)

end A178739

/-! ## A178739.P11356993808411936227

`filter[A030628(n+1), A355447(#)]`
-/

namespace A178739.P11356993808411936227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A178739.P11356993808411936227

namespace A178739

/-- `filter[A030628(n+1), A355447(#)]` -/
def P11356993808411936227.Spec : Prop :=
  ∀ n, P11356993808411936227.a n = A178739 (n + 1)

end A178739

/-! ## A178739.P3877142655483989971

`filter[A030628(n+2), A355823(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A178739

/-- `filter[A030628(n+2), A355823(#)]` -/
def P3877142655483989971.Spec : Prop :=
  ∀ n, P3877142655483989971.a n = A178739 (n + 1)

theorem P3877142655483989971.correct : P3877142655483989971.Spec := by
  intro n
  simp only [A178739, Nat.add_sub_cancel]

end A178739

/-! ## A178739.P17473362338429500015

`filter[A030628(n+2), A355825(#)]`
-/

namespace A178739.P17473362338429500015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A178739.P17473362338429500015

namespace A178739

/-- `filter[A030628(n+2), A355825(#)]` -/
def P17473362338429500015.Spec : Prop :=
  ∀ n, P17473362338429500015.a n = A178739 (n + 1)

end A178739

/-! ## A178739.P6870003084335908494

`∩[A030628(n+1), A082294(n+1)]`
-/

namespace A178739.P6870003084335908494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P6870003084335908494

namespace A178739

/-- `∩[A030628(n+1), A082294(n+1)]` -/
def P6870003084335908494.Spec : Prop :=
  ∀ n, (P6870003084335908494.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P12487507583112976798

`∩[A030628(n+1), A195087(n+1)]`
-/

namespace A178739.P12487507583112976798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P12487507583112976798

namespace A178739

/-- `∩[A030628(n+1), A195087(n+1)]` -/
def P12487507583112976798.Spec : Prop :=
  ∀ n, (P12487507583112976798.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P5728434678062707936

`∩[A082294(n+1), A187039(n+1)]`
-/

namespace A178739.P5728434678062707936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P5728434678062707936

namespace A178739

/-- `∩[A082294(n+1), A187039(n+1)]` -/
def P5728434678062707936.Spec : Prop :=
  ∀ n, (P5728434678062707936.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P15904310566430429226

`∩[A081619(n+1), A195087(n+1)]`
-/

namespace A178739.P15904310566430429226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P15904310566430429226

namespace A178739

/-- `∩[A081619(n+1), A195087(n+1)]` -/
def P15904310566430429226.Spec : Prop :=
  ∀ n, (P15904310566430429226.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P5457044059061324142

`∩[A030628(n+1), A345381(n+1)]`
-/

namespace A178739.P5457044059061324142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P5457044059061324142

namespace A178739

/-- `∩[A030628(n+1), A345381(n+1)]` -/
def P5457044059061324142.Spec : Prop :=
  ∀ n, (P5457044059061324142.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P16080987817048240031

`∩[A030628(n+1), A386804(n+1)]`
-/

namespace A178739.P16080987817048240031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P16080987817048240031

namespace A178739

/-- `∩[A030628(n+1), A386804(n+1)]` -/
def P16080987817048240031.Spec : Prop :=
  ∀ n, (P16080987817048240031.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P5830229051917267040

`∩[A030628(n+1), A388983(n+1)]`
-/

namespace A178739.P5830229051917267040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P5830229051917267040

namespace A178739

/-- `∩[A030628(n+1), A388983(n+1)]` -/
def P5830229051917267040.Spec : Prop :=
  ∀ n, (P5830229051917267040.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P4801289499912299722

`∩[A030628(n+1), A391115(n+1)]`
-/

namespace A178739.P4801289499912299722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P4801289499912299722

namespace A178739

/-- `∩[A030628(n+1), A391115(n+1)]` -/
def P4801289499912299722.Spec : Prop :=
  ∀ n, (P4801289499912299722.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P17314589661338717257

`∩[A082294(n+1), A360902(n+1)]`
-/

namespace A178739.P17314589661338717257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P17314589661338717257

namespace A178739

/-- `∩[A082294(n+1), A360902(n+1)]` -/
def P17314589661338717257.Spec : Prop :=
  ∀ n, (P17314589661338717257.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P12857852089163657442

`∩[A195087(n+1), A253388(n+1)]`
-/

namespace A178739.P12857852089163657442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P12857852089163657442

namespace A178739

/-- `∩[A195087(n+1), A253388(n+1)]` -/
def P12857852089163657442.Spec : Prop :=
  ∀ n, (P12857852089163657442.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P1042660232840527639

`∩[A082294(n+1), A388983(n+1)]`
-/

namespace A178739.P1042660232840527639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P1042660232840527639

namespace A178739

/-- `∩[A082294(n+1), A388983(n+1)]` -/
def P1042660232840527639.Spec : Prop :=
  ∀ n, (P1042660232840527639.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P18204734821688135766

`∩[A195087(n+1), A345381(n+1)]`
-/

namespace A178739.P18204734821688135766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P18204734821688135766

namespace A178739

/-- `∩[A195087(n+1), A345381(n+1)]` -/
def P18204734821688135766.Spec : Prop :=
  ∀ n, (P18204734821688135766.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P15050100305598064194

`∩[A253388(n+1), A360902(n+1)]`
-/

namespace A178739.P15050100305598064194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P15050100305598064194

namespace A178739

/-- `∩[A253388(n+1), A360902(n+1)]` -/
def P15050100305598064194.Spec : Prop :=
  ∀ n, (P15050100305598064194.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P9500643327232077003

`∩[A345381(n+1), A360902(n+1)]`
-/

namespace A178739.P9500643327232077003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P9500643327232077003

namespace A178739

/-- `∩[A345381(n+1), A360902(n+1)]` -/
def P9500643327232077003.Spec : Prop :=
  ∀ n, (P9500643327232077003.a n : ℤ) = A178739 (n + 1)

end A178739

/-! ## A178739.P3063311947233524717

`∩[A345381(n+1), A386804(n+1)]`
-/

namespace A178739.P3063311947233524717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178739.P3063311947233524717

namespace A178739

/-- `∩[A345381(n+1), A386804(n+1)]` -/
def P3063311947233524717.Spec : Prop :=
  ∀ n, (P3063311947233524717.a n : ℤ) = A178739 (n + 1)

end A178739

/-!
# A178740: Product of the 5th power of a prime (A050997) and a different prime (p^5*q).

The programs for A178740, the canonical program `A178740.P18099758227574977995` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178740 has offset 1).

The definition of A178740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178740.P18099758227574977995

`∩[A079712(n+1), A082294(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A178740

/-- `∩[A079712(n+1), A082294(n+1)]` -/
def P18099758227574977995.Spec : Prop :=
  ∀ n, (P18099758227574977995.a n : ℤ) = A178740 (n + 1)

theorem P18099758227574977995.correct : P18099758227574977995.Spec := by
  intro n
  simp only [A178740, Nat.add_sub_cancel]

end A178740

/-! ## A178740.P6886178739201912666

`∩[A079712(n+1), A391922(n+1)]`
-/

namespace A178740.P6886178739201912666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P6886178739201912666

namespace A178740

/-- `∩[A079712(n+1), A391922(n+1)]` -/
def P6886178739201912666.Spec : Prop :=
  ∀ n, (P6886178739201912666.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P17379134158409063134

`∩[A195088(n+1), A391922(n+1)]`
-/

namespace A178740.P17379134158409063134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P17379134158409063134

namespace A178740

/-- `∩[A195088(n+1), A391922(n+1)]` -/
def P17379134158409063134.Spec : Prop :=
  ∀ n, (P17379134158409063134.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P4635209443538594141

`∩[A339840(n+1), A386972(n+1)]`
-/

namespace A178740.P4635209443538594141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P4635209443538594141

namespace A178740

/-- `∩[A339840(n+1), A386972(n+1)]` -/
def P4635209443538594141.Spec : Prop :=
  ∀ n, (P4635209443538594141.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P18118278235777834309

`∩[A362841(n+1), A386972(n+1)]`
-/

namespace A178740.P18118278235777834309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P18118278235777834309

namespace A178740

/-- `∩[A362841(n+1), A386972(n+1)]` -/
def P18118278235777834309.Spec : Prop :=
  ∀ n, (P18118278235777834309.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P11944281013463197784

`∩[A362841(n+1), A391922(n+1)]`
-/

namespace A178740.P11944281013463197784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P11944281013463197784

namespace A178740

/-- `∩[A362841(n+1), A391922(n+1)]` -/
def P11944281013463197784.Spec : Prop :=
  ∀ n, (P11944281013463197784.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P16451760036774433798

`∩[A386972(n+1), A391922(n+1)]`
-/

namespace A178740.P16451760036774433798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P16451760036774433798

namespace A178740

/-- `∩[A386972(n+1), A391922(n+1)]` -/
def P16451760036774433798.Spec : Prop :=
  ∀ n, (P16451760036774433798.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P925817739044240208

`∩[A386972(n+1), A398225(n+1)]`
-/

namespace A178740.P925817739044240208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P925817739044240208

namespace A178740

/-- `∩[A386972(n+1), A398225(n+1)]` -/
def P925817739044240208.Spec : Prop :=
  ∀ n, (P925817739044240208.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P7811428165819702175

`∩[A046306(n+1), A362841(n+1)]`
-/

namespace A178740.P7811428165819702175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P7811428165819702175

namespace A178740

/-- `∩[A046306(n+1), A362841(n+1)]` -/
def P7811428165819702175.Spec : Prop :=
  ∀ n, (P7811428165819702175.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P17575744835192982938

`∩[A046306(n+1), A391922(n+1)]`
-/

namespace A178740.P17575744835192982938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P17575744835192982938

namespace A178740

/-- `∩[A046306(n+1), A391922(n+1)]` -/
def P17575744835192982938.Spec : Prop :=
  ∀ n, (P17575744835192982938.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P1658182746065039056

`∩[A046306(n+1), A398225(n+1)]`
-/

namespace A178740.P1658182746065039056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P1658182746065039056

namespace A178740

/-- `∩[A046306(n+1), A398225(n+1)]` -/
def P1658182746065039056.Spec : Prop :=
  ∀ n, (P1658182746065039056.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P12077408302519401922

`∩[A381312(n+1), A386972(n+1)]`
-/

namespace A178740.P12077408302519401922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P12077408302519401922

namespace A178740

/-- `∩[A381312(n+1), A386972(n+1)]` -/
def P12077408302519401922.Spec : Prop :=
  ∀ n, (P12077408302519401922.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P5726535018854392689

`∩[A384520(n+1), A386972(n+1)]`
-/

namespace A178740.P5726535018854392689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P5726535018854392689

namespace A178740

/-- `∩[A384520(n+1), A386972(n+1)]` -/
def P5726535018854392689.Spec : Prop :=
  ∀ n, (P5726535018854392689.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P15115563970676713100

`∩[A301517(n+1), A386972(n+1)]`
-/

namespace A178740.P15115563970676713100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P15115563970676713100

namespace A178740

/-- `∩[A301517(n+1), A386972(n+1)]` -/
def P15115563970676713100.Spec : Prop :=
  ∀ n, (P15115563970676713100.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P11272377606654456711

`∩[A362594(n+1), A386972(n+1)]`
-/

namespace A178740.P11272377606654456711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P11272377606654456711

namespace A178740

/-- `∩[A362594(n+1), A386972(n+1)]` -/
def P11272377606654456711.Spec : Prop :=
  ∀ n, (P11272377606654456711.a n : ℤ) = A178740 (n + 1)

end A178740

/-! ## A178740.P8538955529172810824

`∩[A030630(n+1), A046306(n+1)]`
-/

namespace A178740.P8538955529172810824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178740.P8538955529172810824

namespace A178740

/-- `∩[A030630(n+1), A046306(n+1)]` -/
def P8538955529172810824.Spec : Prop :=
  ∀ n, (P8538955529172810824.a n : ℤ) = A178740 (n + 1)

end A178740

/-!
# A178741: a(1)=2. For a(n)+1, differences must be strictly increasing and consecutive terms are relatively prime.

The programs for A178741, there is no canonical definition to state claims against.
-/

/-! ## A178741.P7179529702343158086

`∑[eq[1, A323172(n+2)]-A057427(2^n)+1]+2`
-/

namespace A178741.P7179529702343158086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323172 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - A057427 (2 ^ n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A178741.P7179529702343158086

/-! ## A178741.P10575382829898072244

`A267529(n)+A267208(A267522(n))`
-/

namespace A178741.P10575382829898072244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 n + A267208 (A267522 n).toNat

end

end A178741.P10575382829898072244

/-! ## A178741.P4575779320906163316

`A083277(A208973(n+1))`
-/

namespace A178741.P4575779320906163316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A208973 (n + 1)).toNat

end

end A178741.P4575779320906163316

/-! ## A178741.P16331902156048151500

`A360553(A005709(n)+A000217(n))`
-/

namespace A178741.P16331902156048151500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (A005709 n + A000217 n).toNat

end

end A178741.P16331902156048151500

/-! ## A178741.P9964253752659096075

`A159062(A188425(n))`
-/

namespace A178741.P9964253752659096075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159062 (A188425 n).toNat

end

end A178741.P9964253752659096075

/-!
# A178742: Partial sums of floor(2^n/9).

The programs for A178742, the canonical program `A178742.P5626209731048360033` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178742 has offset 0).

The definition of A178742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178742.P3007611153987609867

`a(n-6)+7*2^(n-5)-3` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=4`
-/

namespace A178742.P3007611153987609867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 4] fun n a =>
  a (n - 6) + 7 * (2 : ℚ) ^ ((n : ℤ) - 5 : ℤ) - 3

end

end A178742.P3007611153987609867

namespace A178742

/-- `a(n-6)+7*2^(n-5)-3` -/
def P3007611153987609867.Spec : Prop :=
  ∀ n, P3007611153987609867.a n = (A178742 n : ℚ)

end A178742

/-! ## A178742.P5626209731048360033

`floor((4*2^n-9*n+2)/18)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178742

/-- `floor((4*2^n-9*n+2)/18)` -/
def P5626209731048360033.Spec : Prop :=
  ∀ n, P5626209731048360033.a n = A178742 n

theorem P5626209731048360033.correct : P5626209731048360033.Spec := by
  intro n
  simp only [A178742]

end A178742

/-! ## A178742.P10812281611907861756

`a(n-1)+floor((sqrt(2)^n/3)²)` with `a(0)=0`
-/

namespace A178742.P10812281611907861756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(Real.sqrt (2 : ℝ) ^ n / 3) ^ 2⌋

end

end A178742.P10812281611907861756

namespace A178742

/-- `a(n-1)+floor((sqrt(2)^n/3)²)` -/
def P10812281611907861756.Spec : Prop :=
  ∀ n, P10812281611907861756.a n = A178742 n

end A178742

/-! ## A178742.P15743683929876404482

`∑[A153234(n)]`
-/

namespace A178742.P15743683929876404482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178742.P15743683929876404482

namespace A178742

/-- `∑[A153234(n)]` -/
def P15743683929876404482.Spec : Prop :=
  ∀ n, P15743683929876404482.a n = A178742 n

end A178742

/-! ## A178742.P8165489186239233767

`A131666(n+1)-Δ[A002620(n)]`
-/

namespace A178742.P8165489186239233767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) - (f1 (n + 1) - f1 n)

end

end A178742.P8165489186239233767

namespace A178742

/-- `A131666(n+1)-Δ[A002620(n)]` -/
def P8165489186239233767.Spec : Prop :=
  ∀ n, P8165489186239233767.a n = A178742 n

end A178742

/-! ## A178742.P6092535500079686150

`∑[A328881(n)]-∑[A000035(n+1)]`
-/

namespace A178742.P6092535500079686150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A178742.P6092535500079686150

namespace A178742

/-- `∑[A328881(n)]-∑[A000035(n+1)]` -/
def P6092535500079686150.Spec : Prop :=
  ∀ n, P6092535500079686150.a n = A178742 n

end A178742

/-! ## A178742.P14401182499634818790

`A131666(n+1)+1-A008619(n+1)`
-/

namespace A178742.P14401182499634818790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) + (1 - A008619 (n + 1))

end

end A178742.P14401182499634818790

namespace A178742

/-- `A131666(n+1)+1-A008619(n+1)` -/
def P14401182499634818790.Spec : Prop :=
  ∀ n, P14401182499634818790.a n = A178742 n

end A178742

/-! ## A178742.P4248109332533922164

`A131666(n+1)-A008624(2*n+1)`
-/

namespace A178742.P4248109332533922164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) - A008624 (2 * n + 1)

end

end A178742.P4248109332533922164

namespace A178742

/-- `A131666(n+1)-A008624(2*n+1)` -/
def P4248109332533922164.Spec : Prop :=
  ∀ n, P4248109332533922164.a n = A178742 n

end A178742

/-! ## A178742.P13063041519580006866

`A111926(n)-a(n-1)` with `a(0)=0`
-/

namespace A178742.P13063041519580006866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111926 n - a (n - 1)

end

end A178742.P13063041519580006866

namespace A178742

/-- `A111926(n)-a(n-1)` -/
def P13063041519580006866.Spec : Prop :=
  ∀ n, P13063041519580006866.a n = A178742 n

end A178742

/-! ## A178742.P5671927278124039731

`A131708(n)-(a(n-1)+n)` with `a(0)=0`
-/

namespace A178742.P5671927278124039731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131708 n - (a (n - 1) + (n : ℤ))

end

end A178742.P5671927278124039731

namespace A178742

/-- `A131708(n)-(a(n-1)+n)` -/
def P5671927278124039731.Spec : Prop :=
  ∀ n, P5671927278124039731.a n = A178742 n

end A178742

/-! ## A178742.P15209673676458317498

`Δ[A113405(n+1)]-A004526(n+1)`
-/

namespace A178742.P15209673676458317498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A004526 (n + 1)

end

end A178742.P15209673676458317498

namespace A178742

/-- `Δ[A113405(n+1)]-A004526(n+1)` -/
def P15209673676458317498.Spec : Prop :=
  ∀ n, P15209673676458317498.a n = A178742 n

end A178742

/-! ## A178742.P9578122309447022204

`∑[2^n-dr(2^n)]/9`
-/

namespace A178742.P9578122309447022204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (SequenceMachineLib.digitalRoot (2 ^ n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 9

end

end A178742.P9578122309447022204

namespace A178742

/-- `∑[2^n-dr(2^n)]/9` -/
def P9578122309447022204.Spec : Prop :=
  ∀ n, P9578122309447022204.a n = (A178742 n : ℚ)

end A178742

/-!
# A178743: a(n) = A000041(n) mod 10.

The programs for A178743, there is no canonical definition to state claims against.
-/

/-! ## A178743.P5097752362073835896

`A000041(n)%10`
-/

namespace A178743.P5097752362073835896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 10

end

end A178743.P5097752362073835896

/-! ## A178743.P10105133706352429916

`∑[A002865(n)]%10`
-/

namespace A178743.P10105133706352429916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A178743.P10105133706352429916

/-! ## A178743.P5110582144614143422

`(A000065(n)+1)%10`
-/

namespace A178743.P5110582144614143422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n + 1) 10

end

end A178743.P5110582144614143422

/-! ## A178743.P13703992451625548005

`∑[A085811(n+3)]%10`
-/

namespace A178743.P13703992451625548005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A178743.P13703992451625548005

/-! ## A178743.P17829055947645979531

`(A295341(n)+A000726(n))%10`
-/

namespace A178743.P17829055947645979531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295341 n + A000726 n) 10

end

end A178743.P17829055947645979531

/-! ## A178743.P2015567161601928367

`(A139582(n)/2)%10`
-/

namespace A178743.P2015567161601928367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2)) 10

end

end A178743.P2015567161601928367

/-! ## A178743.P8822443287253734867

`(A171967(n)+A045931(n))%10`
-/

namespace A178743.P8822443287253734867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171967 n + A045931 n) 10

end

end A178743.P8822443287253734867

/-! ## A178743.P12786552039332806928

`A035363(2*n)%10`
-/

namespace A178743.P12786552039332806928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (2 * n)) 10

end

end A178743.P12786552039332806928

/-! ## A178743.P11754933206173644852

`(A143229(n)/A000070(n))%10`
-/

namespace A178743.P11754933206173644852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A143229 n : ℚ) / (A000070 n : ℚ))) 10

end

end A178743.P11754933206173644852

/-! ## A178743.P5972099862860027140

`(A332281(n)+A332280(n))%10`
-/

namespace A178743.P5972099862860027140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332281 n + A332280 n) 10

end

end A178743.P5972099862860027140

/-! ## A178743.P8565449707184295725

`(A332284(n)+A332283(n))%10`
-/

namespace A178743.P8565449707184295725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332284 n + A332283 n) 10

end

end A178743.P8565449707184295725

/-! ## A178743.P3429829990400396197

`A026794(A000124(n))%10`
-/

namespace A178743.P3429829990400396197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026794 (A000124 n).toNat) 10

end

end A178743.P3429829990400396197

/-! ## A178743.P1058270486047698453

`(A237668(n)+A237667(n))%10`
-/

namespace A178743.P1058270486047698453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237668 n + A237667 n) 10

end

end A178743.P1058270486047698453

/-!
# A178744: Partial sums of floor(4^n/9).

The programs for A178744, the canonical program `A178744.P4200736025230676223` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178744 has offset 0).

The definition of A178744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178744.P4200736025230676223

`5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8, a(4)=36`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178744

/-- `5*a(n-1)-4*a(n-2)+a(n-3)-5*a(n-4)+4*a(n-5)` -/
def P4200736025230676223.Spec : Prop :=
  ∀ n, P4200736025230676223.a n = A178744 n

theorem P4200736025230676223.correct : P4200736025230676223.Spec := by
  intro n
  simp only [A178744]

end A178744

/-! ## A178744.P7368923680786161594

`floor(4*(4^n-3*n-1)/27)`
-/

namespace A178744.P7368923680786161594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (((4 ^ n : ℤ) - (3 * n : ℤ) - 1 : ℚ) / 27)⌋

end

end A178744.P7368923680786161594

namespace A178744

/-- `floor(4*(4^n-3*n-1)/27)` -/
def P7368923680786161594.Spec : Prop :=
  ∀ n, P7368923680786161594.a n = A178744 n

end A178744

/-! ## A178744.P543294941000514529

`a(n-3)+(7*4^(n-2)-4)/3` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A178744.P543294941000514529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + (7 * (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 4) / 3

end

end A178744.P543294941000514529

namespace A178744

/-- `a(n-3)+(7*4^(n-2)-4)/3` -/
def P543294941000514529.Spec : Prop :=
  ∀ n, P543294941000514529.a n = (A178744 n : ℚ)

end A178744

/-! ## A178744.P13316570345990228328

`∑[A131090(2*n)]`
-/

namespace A178744.P13316570345990228328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178744.P13316570345990228328

namespace A178744

/-- `∑[A131090(2*n)]` -/
def P13316570345990228328.Spec : Prop :=
  ∀ n, P13316570345990228328.a n = A178744 n

end A178744

/-! ## A178744.P168815479748292626

`∑[A153234(2*n)]`
-/

namespace A178744.P168815479748292626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178744.P168815479748292626

namespace A178744

/-- `∑[A153234(2*n)]` -/
def P168815479748292626.Spec : Prop :=
  ∀ n, P168815479748292626.a n = A178744 n

end A178744

/-! ## A178744.P13836978999950997489

`A004396(n)+A178875(n)-n`
-/

namespace A178744.P13836978999950997489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A178875 n - (n : ℤ))

end

end A178744.P13836978999950997489

namespace A178744

/-- `A004396(n)+A178875(n)-n` -/
def P13836978999950997489.Spec : Prop :=
  ∀ n, P13836978999950997489.a n = A178744 n

end A178744

/-! ## A178744.P14803555899298433601

`A139797(2*(n+1))-A322042(n+1)`
-/

namespace A178744.P14803555899298433601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 (2 * (n + 1)) - A322042 (n + 1)

end

end A178744.P14803555899298433601

namespace A178744

/-- `A139797(2*(n+1))-A322042(n+1)` -/
def P14803555899298433601.Spec : Prop :=
  ∀ n, P14803555899298433601.a n = A178744 n

end A178744

/-! ## A178744.P11431825600039216048

`A348405(2*(n+1))-A008620(2*(n+1))`
-/

namespace A178744.P11431825600039216048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348405 (2 * (n + 1)) - A008620 (2 * (n + 1))

end

end A178744.P11431825600039216048

namespace A178744

/-- `A348405(2*(n+1))-A008620(2*(n+1))` -/
def P11431825600039216048.Spec : Prop :=
  ∀ n, P11431825600039216048.a n = A178744 n

end A178744

/-! ## A178744.P6621852061454748323

`A348405(2*(n+1))-A104581(2*(n+1))`
-/

namespace A178744.P6621852061454748323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348405 (2 * (n + 1)) - A104581 (2 * (n + 1))

end

end A178744.P6621852061454748323

namespace A178744

/-- `A348405(2*(n+1))-A104581(2*(n+1))` -/
def P6621852061454748323.Spec : Prop :=
  ∀ n, P6621852061454748323.a n = A178744 n

end A178744

/-! ## A178744.P14470211373490716830

`A139797(2*n+1)+A131090(2*n)-A139797(2*n)`
-/

namespace A178744.P14470211373490716830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 (2 * n + 1) + (A131090 (2 * n) - A139797 (2 * n))

end

end A178744.P14470211373490716830

namespace A178744

/-- `A139797(2*n+1)+A131090(2*n)-A139797(2*n)` -/
def P14470211373490716830.Spec : Prop :=
  ∀ n, P14470211373490716830.a n = A178744 n

end A178744

/-! ## A178744.P8086242204549321913

`A139797(2*n+3)-A139797(2*(n+1))`
-/

namespace A178744.P8086242204549321913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 (2 * n + 3) - A139797 (2 * (n + 1))

end

end A178744.P8086242204549321913

namespace A178744

/-- `A139797(2*n+3)-A139797(2*(n+1))` -/
def P8086242204549321913.Spec : Prop :=
  ∀ n, P8086242204549321913.a n = A178744 n

end A178744

/-! ## A178744.P6584347475985533128

`A141844(n)-A037545(n+1)`
-/

namespace A178744.P6584347475985533128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141844 n - A037545 (n + 1)

end

end A178744.P6584347475985533128

namespace A178744

/-- `A141844(n)-A037545(n+1)` -/
def P6584347475985533128.Spec : Prop :=
  ∀ n, P6584347475985533128.a n = A178744 n

end A178744

/-! ## A178744.P4190642066449566184

`∑[A037590(n+1)-A178872(n)]-A037590(n+1)`
-/

namespace A178744.P4190642066449566184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037590 (n + 1) - A178872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037590 (n + 1)

end

end A178744.P4190642066449566184

namespace A178744

/-- `∑[A037590(n+1)-A178872(n)]-A037590(n+1)` -/
def P4190642066449566184.Spec : Prop :=
  ∀ n, P4190642066449566184.a n = A178744 n

end A178744

/-!
# A178746: Binary counter with intermittent bits. Starting at zero the counter attempts to increment by 1 at each step but each bit in the counter alternately accepts and rejects requests to toggle.

The programs for A178746, the canonical program `A178746.P10994774173165894265` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178746 has offset 0).

The definition of A178746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1025 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178746.P10994774173165894265

`and(3*n, -(n+1))-ceil(n/2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178746

/-- `and(3*n, -(n+1))-ceil(n/2)` -/
def P10994774173165894265.Spec : Prop :=
  ∀ n, P10994774173165894265.a n = A178746 n

theorem P10994774173165894265.correct : P10994774173165894265.Spec := by
  intro n
  simp only [A178746]

end A178746

/-! ## A178746.P17200926763703743089

`2*n+floor(n/2)-and(n, 3*n)`
-/

namespace A178746.P17200926763703743089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (⌊(n : ℚ) / 2⌋ - (Nat.land n (3 * n) : ℤ))

end

end A178746.P17200926763703743089

namespace A178746

/-- `2*n+floor(n/2)-and(n, 3*n)` -/
def P17200926763703743089.Spec : Prop :=
  ∀ n, P17200926763703743089.a n = A178746 n

end A178746

/-! ## A178746.P4743284134896984519

`A004526(xor(n, 3*n)+n)`
-/

namespace A178746.P4743284134896984519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.xor n (3 * n) + n)

end

end A178746.P4743284134896984519

namespace A178746

/-- `A004526(xor(n, 3*n)+n)` -/
def P4743284134896984519.Spec : Prop :=
  ∀ n, P4743284134896984519.a n = A178746 n

end A178746

/-! ## A178746.P10359320636072585033

`A001068(2*n)-and(n, 3*n)`
-/

namespace A178746.P10359320636072585033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n) - (Nat.land n (3 * n) : ℤ)

end

end A178746.P10359320636072585033

namespace A178746

/-- `A001068(2*n)-and(n, 3*n)` -/
def P10359320636072585033.Spec : Prop :=
  ∀ n, P10359320636072585033.a n = A178746 n

end A178746

/-! ## A178746.P87858465305291293

`A184617(n)+∑[char[2*n]]-1`
-/

namespace A178746.P87858465305291293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A178746.P87858465305291293

namespace A178746

/-- `A184617(n)+∑[char[2*n]]-1` -/
def P87858465305291293.Spec : Prop :=
  ∀ n, P87858465305291293.a n = A178746 n

end A178746

/-! ## A178746.P1386230762655369025

`A178890(n)-A007494(n)`
-/

namespace A178746.P1386230762655369025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178890 n - A007494 n

end

end A178746.P1386230762655369025

namespace A178746

/-- `A178890(n)-A007494(n)` -/
def P1386230762655369025.Spec : Prop :=
  ∀ n, P1386230762655369025.a n = A178746 n

end A178746

/-! ## A178746.P10885975438144371564

`A047215(n)-A213526(n)`
-/

namespace A178746.P10885975438144371564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047215 n - A213526 n

end

end A178746.P10885975438144371564

namespace A178746

/-- `A047215(n)-A213526(n)` -/
def P10885975438144371564.Spec : Prop :=
  ∀ n, P10885975438144371564.a n = A178746 n

end A178746

/-! ## A178746.P1671418307969304014

`A004526(A184617(2*n)+n)`
-/

namespace A178746.P1671418307969304014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184617 (2 * n) + (n : ℤ)).toNat

end

end A178746.P1671418307969304014

namespace A178746

/-- `A004526(A184617(2*n)+n)` -/
def P1671418307969304014.Spec : Prop :=
  ∀ n, P1671418307969304014.a n = A178746 n

end A178746

/-! ## A178746.P17632201477784750132

`A032766(n)+A184617(n)-n`
-/

namespace A178746.P17632201477784750132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n + (A184617 n - (n : ℤ))

end

end A178746.P17632201477784750132

namespace A178746

/-- `A032766(n)+A184617(n)-n` -/
def P17632201477784750132.Spec : Prop :=
  ∀ n, P17632201477784750132.a n = A178746 n

end A178746

/-! ## A178746.P10012854087505344051

`A184615(2*n)-∑[A000035(n)]`
-/

namespace A178746.P10012854087505344051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178746.P10012854087505344051

namespace A178746

/-- `A184615(2*n)-∑[A000035(n)]` -/
def P10012854087505344051.Spec : Prop :=
  ∀ n, P10012854087505344051.a n = A178746 n

end A178746

/-! ## A178746.P2045181681673102262

`A300068(3*n)+A184617(n)-n`
-/

namespace A178746.P2045181681673102262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (3 * n) + (A184617 n - (n : ℤ))

end

end A178746.P2045181681673102262

namespace A178746

/-- `A300068(3*n)+A184617(n)-n` -/
def P2045181681673102262.Spec : Prop :=
  ∀ n, P2045181681673102262.a n = A178746 n

end A178746

/-! ## A178746.P4225726925043690444

`(A184617(2*n)+A004524(2*n))/2`
-/

namespace A178746.P4225726925043690444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184617 (2 * n) + A004524 (2 * n) : ℚ) / 2

end

end A178746.P4225726925043690444

namespace A178746

/-- `(A184617(2*n)+A004524(2*n))/2` -/
def P4225726925043690444.Spec : Prop :=
  ∀ n, P4225726925043690444.a n = (A178746 n : ℚ)

end A178746

/-! ## A178746.P3889648842147794604

`A300068(3*n)+and(n, A184617(2*n))`
-/

namespace A178746.P3889648842147794604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (3 * n) + Int.land (n : ℤ) (A184617 (2 * n))

end

end A178746.P3889648842147794604

namespace A178746

/-- `A300068(3*n)+and(n, A184617(2*n))` -/
def P3889648842147794604.Spec : Prop :=
  ∀ n, P3889648842147794604.a n = A178746 n

end A178746

/-! ## A178746.P502776312667044250

`A004526(n)+xor(A004526(n), A032766(n))`
-/

namespace A178746.P502776312667044250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + Int.xor (A004526 n) (A032766 n)

end

end A178746.P502776312667044250

namespace A178746

/-- `A004526(n)+xor(A004526(n), A032766(n))` -/
def P502776312667044250.Spec : Prop :=
  ∀ n, P502776312667044250.a n = A178746 n

end A178746

/-! ## A178746.P3460685297991320200

`A123108(A184617(2*n)+A123108(2*n))`
-/

namespace A178746.P3460685297991320200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A184617 (2 * n) + A123108 (2 * n)).toNat

end

end A178746.P3460685297991320200

namespace A178746

/-- `A123108(A184617(2*n)+A123108(2*n))` -/
def P3460685297991320200.Spec : Prop :=
  ∀ n, P3460685297991320200.a n = A178746 n

end A178746

/-!
# A178747: Sum of terms in 'rows' of A178746.

The programs for A178747, the canonical program `A178747.P10668779208758959219` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178747 has offset 0).

The definition of A178747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178747.P10668779208758959219

`(17*4^n+5*(2*(-1)^n-1)*2^n-7*(-1)^n)/15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178747

/-- `(17*4^n+5*(2*(-1)^n-1)*2^n-7*(-1)^n)/15` -/
def P10668779208758959219.Spec : Prop :=
  ∀ n, P10668779208758959219.a n = (A178747 n : ℚ)

end A178747

/-! ## A178747.P12104049529822928342

`A008611(A000032(n)*A219282(3*(n+1)))`
-/

namespace A178747.P12104049529822928342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A000032 n * A219282 (3 * (n + 1))).toNat

end

end A178747.P12104049529822928342

namespace A178747

/-- `A008611(A000032(n)*A219282(3*(n+1)))` -/
def P12104049529822928342.Spec : Prop :=
  ∀ n, P12104049529822928342.a n = A178747 n

end A178747

/-!
# A178748: Total number of '1' bits in the terms of 'rows' of A178746.

The programs for A178748, the canonical program `A178748.P143550347963792706` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178748 has offset 0).

The definition of A178748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178748.P143550347963792706

`2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178748

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-4*a(n-4)` -/
def P143550347963792706.Spec : Prop :=
  ∀ n, P143550347963792706.a n = A178748 n

theorem P143550347963792706.correct : P143550347963792706.Spec := by
  intro n
  simp only [A178748]

end A178748

/-! ## A178748.P14236018363456497324

`(2^n*(3*n+8)+(3*n+1)*(-1)^n)/9`
-/

namespace A178748.P14236018363456497324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n * (3 * n + 8) : ℤ) + (3 * n + 1 : ℤ) * (-1) ^ n : ℚ) / 9

end

end A178748.P14236018363456497324

namespace A178748

/-- `(2^n*(3*n+8)+(3*n+1)*(-1)^n)/9` -/
def P14236018363456497324.Spec : Prop :=
  ∀ n, P14236018363456497324.a n = (A178748 n : ℚ)

theorem P14236018363456497324.correct : P14236018363456497324.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A178748, Nat.add_sub_cancel, A178748.P14236018363456497324.a, A178748.P143550347963792706.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A178748, Nat.add_sub_cancel, A178748.P14236018363456497324.a, A178748.P143550347963792706.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A178748

/-! ## A178748.P9653665369859035618

`A172481(n)+A099429(n)`
-/

namespace A178748.P9653665369859035618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n + A099429 n

end

end A178748.P9653665369859035618

namespace A178748

/-- `A172481(n)+A099429(n)` -/
def P9653665369859035618.Spec : Prop :=
  ∀ n, P9653665369859035618.a n = A178748 n

end A178748

/-! ## A178748.P14800085506953143126

`A095342(n+1)+A093835(n)`
-/

namespace A178748.P14800085506953143126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095342 (n + 1) + A093835 n

end

end A178748.P14800085506953143126

namespace A178748

/-- `A095342(n+1)+A093835(n)` -/
def P14800085506953143126.Spec : Prop :=
  ∀ n, P14800085506953143126.a n = A178748 n

end A178748

/-! ## A178748.P8076733193897743824

`A127976(n+1)+A091596(n)`
-/

namespace A178748.P8076733193897743824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 1) + A091596 n

end

end A178748.P8076733193897743824

namespace A178748

/-- `A127976(n+1)+A091596(n)` -/
def P8076733193897743824.Spec : Prop :=
  ∀ n, P8076733193897743824.a n = A178748 n

end A178748

/-! ## A178748.P16726983674035372375

`A045883(n)+A006904(n+4)`
-/

namespace A178748.P16726983674035372375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 n + A006904 (n + 4)

end

end A178748.P16726983674035372375

namespace A178748

/-- `A045883(n)+A006904(n+4)` -/
def P16726983674035372375.Spec : Prop :=
  ∀ n, P16726983674035372375.a n = A178748 n

end A178748

/-! ## A178748.P1681986712335967102

`A103196(n)+2*A099429(n)`
-/

namespace A178748.P1681986712335967102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n + 2 * A099429 n

end

end A178748.P1681986712335967102

namespace A178748

/-- `A103196(n)+2*A099429(n)` -/
def P1681986712335967102.Spec : Prop :=
  ∀ n, P1681986712335967102.a n = A178748 n

end A178748

/-! ## A178748.P15734946909634279072

`2*A172481(n)-A103196(n)`
-/

namespace A178748.P15734946909634279072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172481 n - A103196 n

end

end A178748.P15734946909634279072

namespace A178748

/-- `2*A172481(n)-A103196(n)` -/
def P15734946909634279072.Spec : Prop :=
  ∀ n, P15734946909634279072.a n = A178748 n

end A178748

/-! ## A178748.P268218112697938663

`A103196(n)+n*A078008(n)`
-/

namespace A178748.P268218112697938663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 n + (n : ℤ) * A078008 n

end

end A178748.P268218112697938663

namespace A178748

/-- `A103196(n)+n*A078008(n)` -/
def P268218112697938663.Spec : Prop :=
  ∀ n, P268218112697938663.a n = A178748 n

end A178748

/-! ## A178748.P4755296814244245538

`A172481(n+1)-(A103196(n)+A001045(n))`
-/

namespace A178748.P4755296814244245538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 (n + 1) - (A103196 n + A001045 n)

end

end A178748.P4755296814244245538

namespace A178748

/-- `A172481(n+1)-(A103196(n)+A001045(n))` -/
def P4755296814244245538.Spec : Prop :=
  ∀ n, P4755296814244245538.a n = A178748 n

end A178748

/-! ## A178748.P15208574172748128181

`A053088(n+1)+A099431(n+1)-A001045(n)`
-/

namespace A178748.P15208574172748128181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (n + 1) + (A099431 (n + 1) - A001045 n)

end

end A178748.P15208574172748128181

namespace A178748

/-- `A053088(n+1)+A099431(n+1)-A001045(n)` -/
def P15208574172748128181.Spec : Prop :=
  ∀ n, P15208574172748128181.a n = A178748 n

end A178748

/-! ## A178748.P13534287085805501161

`A059570(n+1)+A113954(n+1)-A001045(n)`
-/

namespace A178748.P13534287085805501161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) + (A113954 (n + 1) - A001045 n)

end

end A178748.P13534287085805501161

namespace A178748

/-- `A059570(n+1)+A113954(n+1)-A001045(n)` -/
def P13534287085805501161.Spec : Prop :=
  ∀ n, P13534287085805501161.a n = A178748 n

end A178748

/-! ## A178748.P13406848966979569633

`A053088(n)+A127984(n+1)-A001045(n+1)`
-/

namespace A178748.P13406848966979569633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n + (A127984 (n + 1) - A001045 (n + 1))

end

end A178748.P13406848966979569633

namespace A178748

/-- `A053088(n)+A127984(n+1)-A001045(n+1)` -/
def P13406848966979569633.Spec : Prop :=
  ∀ n, P13406848966979569633.a n = A178748 n

end A178748

/-! ## A178748.P10478960778291923175

`3*A127984(n)-a(n-1)` with `a(0)=1`
-/

namespace A178748.P10478960778291923175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A127984 n - a (n - 1)

end

end A178748.P10478960778291923175

namespace A178748

/-- `3*A127984(n)-a(n-1)` -/
def P10478960778291923175.Spec : Prop :=
  ∀ n, P10478960778291923175.a n = A178748 n

end A178748

/-! ## A178748.P17921565292351275562

`A053088(n)+Δ[A140960(n)]`
-/

namespace A178748.P17921565292351275562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n + (f1 (n + 1) - f1 n)

end

end A178748.P17921565292351275562

namespace A178748

/-- `A053088(n)+Δ[A140960(n)]` -/
def P17921565292351275562.Spec : Prop :=
  ∀ n, P17921565292351275562.a n = A178748 n

end A178748

/-! ## A178748.P17414768614673104

`A093835(n+1)-A140960(n)`
-/

namespace A178748.P17414768614673104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093835 (n + 1) - A140960 n

end

end A178748.P17414768614673104

namespace A178748

/-- `A093835(n+1)-A140960(n)` -/
def P17414768614673104.Spec : Prop :=
  ∀ n, P17414768614673104.a n = A178748 n

end A178748

/-! ## A178748.P6060938481330881532

`A045883(n+1)-n*A001045(n)`
-/

namespace A178748.P6060938481330881532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (n + 1) - (n : ℤ) * A001045 n

end

end A178748.P6060938481330881532

namespace A178748

/-- `A045883(n+1)-n*A001045(n)` -/
def P6060938481330881532.Spec : Prop :=
  ∀ n, P6060938481330881532.a n = A178748 n

end A178748

/-! ## A178748.P11319669264142258521

`A140960(n+1)+A053088(n)-A140960(n)`
-/

namespace A178748.P11319669264142258521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 (n + 1) + (A053088 n - A140960 n)

end

end A178748.P11319669264142258521

namespace A178748

/-- `A140960(n+1)+A053088(n)-A140960(n)` -/
def P11319669264142258521.Spec : Prop :=
  ∀ n, P11319669264142258521.a n = A178748 n

end A178748

/-!
# A178749: n*a(n) provides the Moebius transform of signed central binomial coefficients.

The programs for A178749, there is no canonical definition to state claims against.
-/

/-! ## A178749.P1429932531852847483

`A178904(floor((n+1)²/2))`
-/

namespace A178749.P1429932531852847483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178904 ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat

end

end A178749.P1429932531852847483

/-! ## A178749.P8329015360008797385

`xor(1, xor(1, A178904(A007590(n+1))))`
-/

namespace A178749.P8329015360008797385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A178904 (A007590 (n + 1)).toNat))

end

end A178749.P8329015360008797385

/-! ## A178749.P4798744852550654567

`A178904(A007590(n+1))%A140660(n)`
-/

namespace A178749.P4798744852550654567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178904 (A007590 (n + 1)).toNat) (A140660 n)

end

end A178749.P4798744852550654567

/-! ## A178749.P2126835028823326949

`or(A000007(n), A178904(A007590(n+1)))`
-/

namespace A178749.P2126835028823326949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A178904 (A007590 (n + 1)).toNat)

end

end A178749.P2126835028823326949

/-! ## A178749.P12343000091977604670

`or(A130706(n), A178904(A007590(n+1)))`
-/

namespace A178749.P12343000091977604670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130706 n) (A178904 (A007590 (n + 1)).toNat)

end

end A178749.P12343000091977604670

/-! ## A178749.P12113747671053529563

`A033999(n)²*A178904(A007590(n+1))`
-/

namespace A178749.P12113747671053529563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A178904 (A007590 (n + 1)).toNat

end

end A178749.P12113747671053529563

/-! ## A178749.P2239664543843894261

`or(A000122(n)%2, A178904(A007590(n+1)))`
-/

namespace A178749.P2239664543843894261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A000122 n) 2) (A178904 (A007590 (n + 1)).toNat)

end

end A178749.P2239664543843894261

/-! ## A178749.P15807812434836752555

`A014963(15*(n+1))*A178904(A007590(n+1))`
-/

namespace A178749.P15807812434836752555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A178904 (A007590 (n + 1)).toNat

end

end A178749.P15807812434836752555

/-! ## A178749.P8032880995279915188

`A168361(2*(n+2))²*A178904(A007590(n+1))`
-/

namespace A178749.P8032880995279915188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (2 * (n + 2)) ^ 2 * A178904 (A007590 (n + 1)).toNat

end

end A178749.P8032880995279915188

/-! ## A178749.P17338880031618072086

`A057077(A025581(n))²*A178904(A007590(n+1))`
-/

namespace A178749.P17338880031618072086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A025581 n).toNat ^ 2 * A178904 (A007590 (n + 1)).toNat

end

end A178749.P17338880031618072086

/-!
# A178750: Partial sums of floor(5^n/9).

The programs for A178750, the canonical program `A178750.P13627819480202021379` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178750 has offset 0).

The definition of A178750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178750.P6548244384921550437

`a(n-6)+434*5^(n-5)-3` with `a(0)=0, a(1)=0, a(2)=2, a(3)=15, a(4)=84, a(5)=431`
-/

namespace A178750.P6548244384921550437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2, 15, 84, 431] fun n a =>
  a (n - 6) + 434 * (5 : ℚ) ^ ((n : ℤ) - 5 : ℤ) - 3

end

end A178750.P6548244384921550437

namespace A178750

/-- `a(n-6)+434*5^(n-5)-3` -/
def P6548244384921550437.Spec : Prop :=
  ∀ n, P6548244384921550437.a n = (A178750 n : ℚ)

end A178750

/-! ## A178750.P13627819480202021379

`floor((5*5^n-18*n-5)/36)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178750

/-- `floor((5*5^n-18*n-5)/36)` -/
def P13627819480202021379.Spec : Prop :=
  ∀ n, P13627819480202021379.a n = A178750 n

theorem P13627819480202021379.correct : P13627819480202021379.Spec := by
  intro n
  simp only [A178750]

end A178750

/-! ## A178750.P9316503348170790067

`a(n-1)+floor(5^n/9)` with `a(0)=0`
-/

namespace A178750.P9316503348170790067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(5 ^ n : ℚ) / 9⌋

end

end A178750.P9316503348170790067

namespace A178750

/-- `a(n-1)+floor(5^n/9)` -/
def P9316503348170790067.Spec : Prop :=
  ∀ n, P9316503348170790067.a n = A178750 n

end A178750

/-! ## A178750.P10339106530575213035

`∑[ceil((ceil(A242329(n)/3)-1)/3)-1]`
-/

namespace A178750.P10339106530575213035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A242329 n : ℚ) / 3⌉ - 1 : ℚ) / 3⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178750.P10339106530575213035

namespace A178750

/-- `∑[ceil((ceil(A242329(n)/3)-1)/3)-1]` -/
def P10339106530575213035.Spec : Prop :=
  ∀ n, P10339106530575213035.a n = A178750 n

end A178750

/-! ## A178750.P10253604649334507863

`∑[A000351(n)-A070366(n)]/9`
-/

namespace A178750.P10253604649334507863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A070366 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 9

end

end A178750.P10253604649334507863

namespace A178750

/-- `∑[A000351(n)-A070366(n)]/9` -/
def P10253604649334507863.Spec : Prop :=
  ∀ n, P10253604649334507863.a n = (A178750 n : ℚ)

end A178750

/-! ## A178750.P4265979897873016446

`∑[floor(A002275(n)/A000079(n))]`
-/

namespace A178750.P4265979897873016446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002275 n : ℚ) / (A000079 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178750.P4265979897873016446

namespace A178750

/-- `∑[floor(A002275(n)/A000079(n))]` -/
def P4265979897873016446.Spec : Prop :=
  ∀ n, P4265979897873016446.a n = A178750 n

end A178750

/-!
# A178751: Numbers k such that in Z/kZ the equation x^y + 1 = 0 has only the trivial solutions with x == -1 (mod k).

The programs for A178751, there is no canonical definition to state claims against.
-/

/-! ## A178751.P4726263563222264282

`eq[A008424(n), A343722(n+1)]+1`
-/

namespace A178751.P4726263563222264282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343722 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A178751.P4726263563222264282

/-! ## A178751.P12346372088232645809

`A020725(eq[A008424(n), A343722(n+1)])`
-/

namespace A178751.P12346372088232645809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178751.P12346372088232645809

/-! ## A178751.P9400499122787654862

`lt[A274021(n+2), 1]+2`
-/

namespace A178751.P9400499122787654862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274021 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A178751.P9400499122787654862

/-! ## A178751.P6569085969960240526

`eq[A130706(n), A274021(A028310(n))]`
-/

namespace A178751.P6569085969960240526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274021 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178751.P6569085969960240526

/-! ## A178751.P7926663740115556042

`eq[A274021(A028310(n)), A285476(n)]`
-/

namespace A178751.P7926663740115556042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274021 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178751.P7926663740115556042

/-!
# A178752: a(n) gives the number of conjugacy classes in the permutation group generated by transposition (1 2) and double n-cycle (1 3 5 7 ... 2n-1)(2 4 6 8 ... 2n). This group is a semidirect product formed by a cyclic group acting on an elementary abelian 2-group of rank n by cyclically permuting the factors.

The programs for A178752, the canonical program `A178752.P10634294460120603498` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178752 has offset 1).

The definition of A178752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178752.P10634294460120603498

`∑{d}[n+1, (n+1)/#*A001037(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A178752

/-- `∑{d}[n+1, (n+1)/#*A001037(#)]` -/
def P10634294460120603498.Spec : Prop :=
  ∀ n, P10634294460120603498.a n = (A178752 (n + 1) : ℚ)

end A178752

/-!
# A178753: a(n) = n XOR floor(Log_2(n))+1, where XOR is bitwise XOR.

The programs for A178753, there is no canonical definition to state claims against.
-/

/-! ## A178753.P14510918670731877640

`xor(n+2, ceil(log2(n+3)))`
-/

namespace A178753.P14510918670731877640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) ⌈Real.logb 2 (n + 3 : ℝ)⌉

end

end A178753.P14510918670731877640

/-! ## A178753.P774588088040178011

`∑[-Δ[xor(n+1, -A070939(2*n+3))]]`
-/

namespace A178753.P774588088040178011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-A070939 (2 * n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178753.P774588088040178011

/-! ## A178753.P1586920939111558048

`A118759(xor(A000523(n+2)+1, n+2))`
-/

namespace A178753.P1586920939111558048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.xor (A000523 (n + 2) + 1) (n + 2 : ℤ)).toNat

end

end A178753.P1586920939111558048

/-! ## A178753.P13157064133881194977

`abs(xor(A029837(n+3), A131732(2*(n+1))))`
-/

namespace A178753.P13157064133881194977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A029837 (n + 3)) (A131732 (2 * (n + 1)))|

end

end A178753.P13157064133881194977

/-! ## A178753.P360759748640059018

`abs(xor(A000523(2*(n+2)), A001057(2*n+3)))`
-/

namespace A178753.P360759748640059018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A000523 (2 * (n + 2))) (A001057 (2 * n + 3))|

end

end A178753.P360759748640059018

/-! ## A178753.P12434662978793626135

`xor(A000523(n+2)+1, n+2)%A115995(n+3)`
-/

namespace A178753.P12434662978793626135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A000523 (n + 2) + 1) (n + 2 : ℤ)) (A115995 (n + 3))

end

end A178753.P12434662978793626135

/-! ## A178753.P16438466288650833355

`A092569(xor(A000523(n+2)+1, A092569(n+2)))`
-/

namespace A178753.P16438466288650833355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (Int.xor (A000523 (n + 2) + 1) (A092569 (n + 2))).toNat

end

end A178753.P16438466288650833355

/-!
# A178754: a(n) = n XOR floor(Log_2(n)), where XOR is bitwise XOR.

The programs for A178754, there is no canonical definition to state claims against.
-/

/-! ## A178754.P823237483031203710

`xor(n+1, floor(log2(n+1)))`
-/

namespace A178754.P823237483031203710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.log 2 (n + 1))

end

end A178754.P823237483031203710

/-! ## A178754.P13602073925687333046

`abs(xor(n+1, -ceil(log2(acot(n+1)))))`
-/

namespace A178754.P13602073925687333046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 1 : ℤ) (-⌈Real.logb 2 (SequenceMachineLib.acot (n + 1 : ℝ))⌉)|

end

end A178754.P13602073925687333046

/-! ## A178754.P1828788480868475528

`abs(xor(n+1, -ceil(log2(n+2))))-1`
-/

namespace A178754.P1828788480868475528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 1 : ℤ) (-⌈Real.logb 2 (n + 2 : ℝ)⌉)| - 1

end

end A178754.P1828788480868475528

/-! ## A178754.P13395977781926304260

`abs(xor(n+1, ceil(log2(cot(2/(n+2))))))`
-/

namespace A178754.P13395977781926304260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 1 : ℤ) ⌈Real.logb 2 (Real.cot (2 / (n + 2 : ℚ) : ℝ))⌉|

end

end A178754.P13395977781926304260

/-! ## A178754.P14608973699329527895

`xor(n+1, -ceil(log2(acot(n+1))))^(-1)^n^(-1)^n`
-/

namespace A178754.P14608973699329527895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.xor (n + 1 : ℤ) (-⌈Real.logb 2 (SequenceMachineLib.acot (n + 1 : ℝ))⌉) : ℚ) ^ ((-1) ^ n : ℤ)) ^ ((-1) ^ n : ℤ)

end

end A178754.P14608973699329527895

/-! ## A178754.P13564043265585483975

`∏{e}[A053644(n+1), xor(#, n+1)]`
-/

namespace A178754.P13564043265585483975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.xor (Nat.factorization (f1 n).natAbs p) (n + 1)

end

end A178754.P13564043265585483975

/-! ## A178754.P16281879213588396150

`∑{digits}[A000523(n+1), xor(#, n+1)]`
-/

namespace A178754.P16281879213588396150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.xor x (n + 1)).sum

end

end A178754.P16281879213588396150

/-! ## A178754.P2693715140910331330

`abs(xor(n+1, A029837(n+2)-1))`
-/

namespace A178754.P2693715140910331330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 1 : ℤ) (A029837 (n + 2) - 1)|

end

end A178754.P2693715140910331330

/-! ## A178754.P17461955291847489263

`abs(xor(n+1, ∑[A014963(2*(n+1))-1]-1))`
-/

namespace A178754.P17461955291847489263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j - 1)|

end

end A178754.P17461955291847489263

/-! ## A178754.P4212456406327817340

`A000027(xor(n+1, A000523(n+1)))`
-/

namespace A178754.P4212456406327817340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor (n + 1 : ℤ) (A000523 (n + 1))).toNat

end

end A178754.P4212456406327817340

/-!
# A178755: Integers that become semiprime when any single digit is removed.

The programs for A178755, there is no canonical definition to state claims against.
-/

/-! ## A178755.P16076853950363219462

`A107665(A032555(n+1)+3)`
-/

namespace A178755.P16076853950363219462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (A032555 (n + 1) + 3).toNat

end

end A178755.P16076853950363219462

/-! ## A178755.P1517876446880602033

`A107665(A078213(n+1)+3)`
-/

namespace A178755.P1517876446880602033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (A078213 (n + 1) + 3).toNat

end

end A178755.P1517876446880602033

/-! ## A178755.P12272951907949122956

`A107665(A276142(n+1)+3)`
-/

namespace A178755.P12272951907949122956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (A276142 (n + 1) + 3).toNat

end

end A178755.P12272951907949122956

/-! ## A178755.P2495304973448347262

`filter[A107665(n+3), A103583(#)]`
-/

namespace A178755.P2495304973448347262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A178755.P2495304973448347262

/-! ## A178755.P13260375293361786177

`filter[A107665(n+3), A103842(#)]`
-/

namespace A178755.P13260375293361786177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107665 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A178755.P13260375293361786177

/-!
# A178756: Rectangular array T(n,k) = binomial(n,2)*k*n^(k-1) read by antidiagonals.

The programs for A178756, the canonical program `A178756.P13128760247326901510` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178756 has offset 2).

The definition of A178756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178756.P13128760247326901510

`A051129(n+2)*A127779(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A178756

/-- `A051129(n+2)*A127779(n+1)` -/
def P13128760247326901510.Spec : Prop :=
  ∀ n, P13128760247326901510.a n = A178756 (n + 2)

theorem P13128760247326901510.correct : P13128760247326901510.Spec := by
  intro n
  simp only [A178756, Nat.add_sub_cancel]

end A178756

/-! ## A178756.P12345597532469049712

`A127779(n+1)*A341392(A193902(n))`
-/

namespace A178756.P12345597532469049712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127779 (n + 1) * A341392 (A193902 n).toNat

end

end A178756.P12345597532469049712

namespace A178756

/-- `A127779(n+1)*A341392(A193902(n))` -/
def P12345597532469049712.Spec : Prop :=
  ∀ n, P12345597532469049712.a n = A178756 (n + 2)

end A178756

/-!
# A178757: Smallest k such that k*n has an odd number of 1's in its base-2 expansion.

The programs for A178757, there is no canonical definition to state claims against.
-/

/-! ## A178757.P11435564279574532338

`A360980(n+1)/(n+1)`
-/

namespace A178757.P11435564279574532338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360980 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A178757.P11435564279574532338

/-! ## A178757.P11945757864164684155

`dr(A262502(A157403((n+1)/((n^3)%4+1))))`
-/

namespace A178757.P11945757864164684155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A262502 (A157403 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n ^ 3 % 4 + 1 : ℕ) : ℚ))).toNat).toNat)

end

end A178757.P11945757864164684155

/-! ## A178757.P414061143805402305

`A114396(gcd(A005030(n), A077168(n)))`
-/

namespace A178757.P414061143805402305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114396 (Int.gcd (A005030 n) (A077168 n))

end

end A178757.P414061143805402305

/-! ## A178757.P13938015114704615401

`A008960(A000265(n+1)^A135302(n))`
-/

namespace A178757.P13938015114704615401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A135302 n : ℤ))).toNat

end

end A178757.P13938015114704615401

/-! ## A178757.P8190251378548044275

`A090915(A000265(n+1)^A135302(n))`
-/

namespace A178757.P8190251378548044275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A135302 n : ℤ))).toNat

end

end A178757.P8190251378548044275

/-!
# A178759: Expansion of e.g.f. 3*x*exp(x)*(exp(x)-1)^2.

The programs for A178759, the canonical program `A178759.P8288006381962297201` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178759 has offset 0).

The definition of A178759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178759.P8288006381962297201

`(3^n-3*2^n+3)*n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178759

/-- `(3^n-3*2^n+3)*n` -/
def P8288006381962297201.Spec : Prop :=
  ∀ n, P8288006381962297201.a n = A178759 n

theorem P8288006381962297201.correct : P8288006381962297201.Spec := by
  intro n
  simp only [A178759]

end A178759

/-! ## A178759.P10346599101841761332

`lcm(2, n*A001117(n))`
-/

namespace A178759.P10346599101841761332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A001117 n)

end

end A178759.P10346599101841761332

namespace A178759

/-- `lcm(2, n*A001117(n))` -/
def P10346599101841761332.Spec : Prop :=
  ∀ n, (P10346599101841761332.a n : ℤ) = A178759 n

end A178759

/-! ## A178759.P17948888233673986088

`n*A094729(n)-n`
-/

namespace A178759.P17948888233673986088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A094729 n - (n : ℤ)

end

end A178759.P17948888233673986088

namespace A178759

/-- `n*A094729(n)-n` -/
def P17948888233673986088.Spec : Prop :=
  ∀ n, P17948888233673986088.a n = A178759 n

end A178759

/-! ## A178759.P13394385266611801541

`4*n*A094033(n)/2`
-/

namespace A178759.P13394385266611801541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * ((n : ℤ) * A094033 n) : ℚ) / 2

end

end A178759.P13394385266611801541

namespace A178759

/-- `4*n*A094033(n)/2` -/
def P13394385266611801541.Spec : Prop :=
  ∀ n, P13394385266611801541.a n = (A178759 n : ℚ)

end A178759

/-! ## A178759.P16547902396341920668

`n*(3^n-A296954(n+1))-n`
-/

namespace A178759.P16547902396341920668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((3 ^ n : ℤ) - A296954 (n + 1)) - (n : ℤ)

end

end A178759.P16547902396341920668

namespace A178759

/-- `n*(3^n-A296954(n+1))-n` -/
def P16547902396341920668.Spec : Prop :=
  ∀ n, P16547902396341920668.a n = A178759 n

end A178759

/-! ## A178759.P10151272791428987805

`A036290(n)-A317404(n)`
-/

namespace A178759.P10151272791428987805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n - A317404 n

end

end A178759.P10151272791428987805

namespace A178759

/-- `A036290(n)-A317404(n)` -/
def P10151272791428987805.Spec : Prop :=
  ∀ n, P10151272791428987805.a n = A178759 n

end A178759

/-! ## A178759.P7232082151976131929

`ceil(sqrt(A016910(n))*A000392(n))`
-/

namespace A178759.P7232082151976131929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016910 n : ℝ) * (A000392 n : ℝ)⌉

end

end A178759.P7232082151976131929

namespace A178759

/-- `ceil(sqrt(A016910(n))*A000392(n))` -/
def P7232082151976131929.Spec : Prop :=
  ∀ n, P7232082151976131929.a n = A178759 n

end A178759

/-! ## A178759.P15182864390351111302

`abs(n*(A000244(n)-A068156(n)))`
-/

namespace A178759.P15182864390351111302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A000244 n - A068156 n)|

end

end A178759.P15182864390351111302

namespace A178759

/-- `abs(n*(A000244(n)-A068156(n)))` -/
def P15182864390351111302.Spec : Prop :=
  ∀ n, P15182864390351111302.a n = A178759 n

end A178759

/-! ## A178759.P17462177041736446789

`n*A052761(n+1)/(n+1)`
-/

namespace A178759.P17462177041736446789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A052761 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A178759.P17462177041736446789

namespace A178759

/-- `n*A052761(n+1)/(n+1)` -/
def P17462177041736446789.Spec : Prop :=
  ∀ n, P17462177041736446789.a n = (A178759 n : ℚ)

end A178759

/-! ## A178759.P6957337262600692728

`(n*A001117(n))%A000498(n+4)`
-/

namespace A178759.P6957337262600692728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001117 n) (A000498 (n + 4))

end

end A178759.P6957337262600692728

namespace A178759

/-- `(n*A001117(n))%A000498(n+4)` -/
def P6957337262600692728.Spec : Prop :=
  ∀ n, P6957337262600692728.a n = A178759 n

end A178759

/-!
# A178760: Number of tests performed to find the n-th term of the EKG sequence A064413.

The programs for A178760, there is no canonical definition to state claims against.
-/

/-! ## A178760.P2898929818275980084

`Δ[A178761(A028310(n))]`
-/

namespace A178760.P2898929818275980084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178760.P2898929818275980084

/-! ## A178760.P16180126929030676167

`Δ[A178761(A065033(2*n))]`
-/

namespace A178760.P16180126929030676167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178760.P16180126929030676167

/-! ## A178760.P696444710999405517

`Δ[A178761(A004275(n+1)-n)]`
-/

namespace A178760.P696444710999405517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178760.P696444710999405517

/-! ## A178760.P17425633253155140389

`Δ[A178761(A008619(A004273(n)))]`
-/

namespace A178760.P17425633253155140389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178760.P17425633253155140389

/-! ## A178760.P10368428972035454224

`Δ[A178761(A008619(A004275(n)))]`
-/

namespace A178760.P10368428972035454224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178760.P10368428972035454224

/-! ## A178760.P3197651384003939490

`A178761(n+1)-A178761(A028310(n))`
-/

namespace A178760.P3197651384003939490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (n + 1) - A178761 (A028310 n).toNat

end

end A178760.P3197651384003939490

/-! ## A178760.P7603562481659096331

`A178761(n+1)-A178761(A233583(n+1))`
-/

namespace A178760.P7603562481659096331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (n + 1) - A178761 (A233583 (n + 1)).toNat

end

end A178760.P7603562481659096331

/-! ## A178760.P6810794381251986642

`A178761(n+1)-A178761(A065033(2*n))`
-/

namespace A178760.P6810794381251986642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (n + 1) - A178761 (A065033 (2 * n)).toNat

end

end A178760.P6810794381251986642

/-! ## A178760.P11417986939520843928

`Δ[A178761(A233583(n+1))]`
-/

namespace A178760.P11417986939520843928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178760.P11417986939520843928

/-! ## A178760.P4393444819793742389

`Δ[A178761(A134478(A000217(n)))]`
-/

namespace A178760.P4393444819793742389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178761 (A134478 (A000217 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178760.P4393444819793742389

/-!
# A178761: Cumulative number of tests performed to find the n-th term of the EKG sequence A064413.

The programs for A178761, there is no canonical definition to state claims against.
-/

/-! ## A178761.P2373055254364289169

`∑[A178760(n+1)]`
-/

namespace A178761.P2373055254364289169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178761.P2373055254364289169

/-! ## A178761.P7516846374683010347

`a(n-1)+A178760(n+1)+A000038(n)` with `a(0)=0`
-/

namespace A178761.P7516846374683010347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A178760 (n + 1) + A000038 n)

end

end A178761.P7516846374683010347

/-! ## A178761.P4606570174917060392

`a(n-1)+A178760(n+1)%A064413(n+1)` with `a(0)=0`
-/

namespace A178761.P4606570174917060392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A178760 (n + 1)) (A064413 (n + 1))

end

end A178761.P4606570174917060392

/-! ## A178761.P1598297855548874540

`A178760(n+1)+a(n-1)%A073735(n+1)` with `a(0)=0`
-/

namespace A178761.P1598297855548874540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A178760 (n + 1) + Int.tmod (a (n - 1)) (A073735 (n + 1))

end

end A178761.P1598297855548874540

/-! ## A178761.P11650259725779681207

`a(n-1)+A178760(n+1)%A157917(n)` with `a(0)=0`
-/

namespace A178761.P11650259725779681207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A178760 (n + 1)) (A157917 n)

end

end A178761.P11650259725779681207

/-!
# A178762: Prime numbers that are Fibonacci integers.

The programs for A178762, there is no canonical definition to state claims against.
-/

/-! ## A178762.P13931765131965916914

`p?[A178772(n+1)]`
-/

namespace A178762.P13931765131965916914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178762.P13931765131965916914

/-! ## A178762.P16135300934331415276

`filter[A178772(n+1), A010051(#)]`
-/

namespace A178762.P16135300934331415276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A178762.P16135300934331415276

/-! ## A178762.P6714091110713191836

`filter[A178772(n+2), A080339(#)]`
-/

namespace A178762.P6714091110713191836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A178762.P6714091110713191836

/-! ## A178762.P14594939848508998341

`∩[A000040(n+1), A178772(n+1)]`
-/

namespace A178762.P14594939848508998341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178762.P14594939848508998341

/-! ## A178762.P5056802261161720616

`∩[A049549(n+1), A178772(n+1)]`
-/

namespace A178762.P5056802261161720616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178762.P5056802261161720616

/-!
# A178763: Product of primitive prime factors of Fibonacci(n).

The programs for A178763, there is no canonical definition to state claims against.
-/

/-! ## A178763.P6590764596275193234

`lcm(A069110(n+1), A105602(n+1))/A105602(n+1)`
-/

namespace A178763.P6590764596275193234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A069110 (n + 1)) (A105602 (n + 1)) : ℚ) / (A105602 (n + 1) : ℚ)

end

end A178763.P6590764596275193234

/-! ## A178763.P16595432844807789865

`lcm(A061446(n+1), A299232(n+1))/A299232(n+1)`
-/

namespace A178763.P16595432844807789865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A061446 (n + 1)) (A299232 (n + 1)) : ℚ) / (A299232 (n + 1) : ℚ)

end

end A178763.P16595432844807789865

/-! ## A178763.P13698554154415264472

`∏{p}[lcm(A001578(n+1), A262341(n+1)), #]`
-/

namespace A178763.P13698554154415264472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001578 (n + 1)) (A262341 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A178763.P13698554154415264472

/-! ## A178763.P1268313927688732567

`lcm(A001578(n+1), A020639(A262341(n+1)))`
-/

namespace A178763.P1268313927688732567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001578 (n + 1)) (A020639 (A262341 (n + 1)).toNat)

end

end A178763.P1268313927688732567

/-! ## A178763.P16759868101637610095

`A322966(A061446(n+1))`
-/

namespace A178763.P16759868101637610095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322966 (A061446 (n + 1)).toNat

end

end A178763.P16759868101637610095

/-!
# A178764: Ratio of the primitive part of Fibonacci(n) to the product of primitive prime factors of Fibonacci(n).

The programs for A178764, there is no canonical definition to state claims against.
-/

/-! ## A178764.P2124317596109341872

`gcd(A002809(n+1), A061446(n+1))`
-/

namespace A178764.P2124317596109341872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002809 (n + 1)) (A061446 (n + 1))

end

end A178764.P2124317596109341872

/-! ## A178764.P17380688419790508845

`A002034(A061446(n+1)/A178763(n+1))`
-/

namespace A178764.P17380688419790508845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway ((A061446 (n + 1) : ℚ) / (A178763 (n + 1) : ℚ))).toNat

end

end A178764.P17380688419790508845

/-! ## A178764.P2139865597007844803

`A034699(A061446(n+1)/A178763(n+1))`
-/

namespace A178764.P2139865597007844803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((A061446 (n + 1) : ℚ) / (A178763 (n + 1) : ℚ))).toNat

end

end A178764.P2139865597007844803

/-! ## A178764.P5326784497096990042

`A345931(A061446(n+1)/A178763(n+1))`
-/

namespace A178764.P5326784497096990042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (SequenceMachineLib.roundAway ((A061446 (n + 1) : ℚ) / (A178763 (n + 1) : ℚ))).toNat

end

end A178764.P5326784497096990042

/-! ## A178764.P15553777475200992448

`A345941(A061446(n+1)/A178763(n+1))`
-/

namespace A178764.P15553777475200992448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (SequenceMachineLib.roundAway ((A061446 (n + 1) : ℚ) / (A178763 (n + 1) : ℚ))).toNat

end

end A178764.P15553777475200992448

/-!
# A178765: a(n) = 17*a(n-1) + a(n-2), with a(-1) = 0 and a(0) = 1.

The programs for A178765, there is no canonical definition to state claims against.
-/

/-! ## A178765.P3760246080802281161

`17*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178765.P3760246080802281161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  17 * a (n - 1) + a (n - 2)

end

end A178765.P3760246080802281161

/-! ## A178765.P15623934286261874687

`18*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A178765.P15623934286261874687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  18 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A178765.P15623934286261874687

/-! ## A178765.P10196725929241011227

`A172236(eq[16, A193592(n)])`
-/

namespace A178765.P10196725929241011227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178765.P10196725929241011227

/-! ## A178765.P3588168753228280935

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=0, a(1)=1, a(2)=17`
-/

namespace A178765.P3588168753228280935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 17] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A178765.P3588168753228280935

/-!
# A178766: Values of gcd(Fibonacci(n), Fibonacci(n+1)+1) sorted with no repeats.

The programs for A178766, the canonical program `A178766.P17996039320282714489` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178766 has offset 1).

The definition of A178766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178766.P1330495267408550794

`floor(ϕ²*a(n-2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A178766.P1330495267408550794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋

end

end A178766.P1330495267408550794

namespace A178766

/-- `floor(ϕ²*a(n-2))` -/
def P1330495267408550794.Spec : Prop :=
  ∀ n, P1330495267408550794.a n = A178766 (n + 1)

end A178766

/-! ## A178766.P17996039320282714489

`record[a(n-4)-a(n-2)]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178766

/-- `record[a(n-4)-a(n-2)]` -/
def P17996039320282714489.Spec : Prop :=
  ∀ n, P17996039320282714489.a n = A178766 (n + 1)

theorem P17996039320282714489.correct : P17996039320282714489.Spec := by
  intro n
  simp only [A178766, Nat.add_sub_cancel]

end A178766

/-! ## A178766.P648540159498396105

`A005247(A065190(n+1))`
-/

namespace A178766.P648540159498396105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (A065190 (n + 1)).toNat

end

end A178766.P648540159498396105

namespace A178766

/-- `A005247(A065190(n+1))` -/
def P648540159498396105.Spec : Prop :=
  ∀ n, P648540159498396105.a n = A178766 (n + 1)

end A178766

/-! ## A178766.P6247128260042940345

`A115339(A053438(n)+1)`
-/

namespace A178766.P6247128260042940345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A053438 n + 1).toNat

end

end A178766.P6247128260042940345

namespace A178766

/-- `A115339(A053438(n)+1)` -/
def P6247128260042940345.Spec : Prop :=
  ∀ n, P6247128260042940345.a n = A178766 (n + 1)

end A178766

/-! ## A178766.P10335583690881530186

`∪[A005248(n), A122367(n)]`
-/

namespace A178766.P10335583690881530186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178766.P10335583690881530186

namespace A178766

/-- `∪[A005248(n), A122367(n)]` -/
def P10335583690881530186.Spec : Prop :=
  ∀ n, (P10335583690881530186.a n : ℤ) = A178766 (n + 1)

end A178766

/-! ## A178766.P14034451360525882224

`∪[A000032(2*n), A000045(Δ[n²])]`
-/

namespace A178766.P14034451360525882224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178766.P14034451360525882224

namespace A178766

/-- `∪[A000032(2*n), A000045(Δ[n²])]` -/
def P14034451360525882224.Spec : Prop :=
  ∀ n, (P14034451360525882224.a n : ℤ) = A178766 (n + 1)

end A178766

/-! ## A178766.P18189930404480251849

`∪[A000032(2*n), Δ[A000045(2*n)]]`
-/

namespace A178766.P18189930404480251849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178766.P18189930404480251849

namespace A178766

/-- `∪[A000032(2*n), Δ[A000045(2*n)]]` -/
def P18189930404480251849.Spec : Prop :=
  ∀ n, (P18189930404480251849.a n : ℤ) = A178766 (n + 1)

end A178766

/-! ## A178766.P2263789632379768865

`∪[A000045(2*n+1), A000032(2*n)]`
-/

namespace A178766.P2263789632379768865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A178766.P2263789632379768865

namespace A178766

/-- `∪[A000045(2*n+1), A000032(2*n)]` -/
def P2263789632379768865.Spec : Prop :=
  ∀ n, (P2263789632379768865.a n : ℤ) = A178766 (n + 1)

end A178766

/-! ## A178766.P16264719253501873038

`A000045(A063195(3*n+1))+A000045(n+1)`
-/

namespace A178766.P16264719253501873038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A063195 (3 * n + 1)).toNat + A000045 (n + 1)

end

end A178766.P16264719253501873038

namespace A178766

/-- `A000045(A063195(3*n+1))+A000045(n+1)` -/
def P16264719253501873038.Spec : Prop :=
  ∀ n, P16264719253501873038.a n = A178766 (n + 1)

end A178766

/-! ## A178766.P10825370160365596521

`A339050(A101881(n))`
-/

namespace A178766.P10825370160365596521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339050 (A101881 n).toNat

end

end A178766.P10825370160365596521

namespace A178766

/-- `A339050(A101881(n))` -/
def P10825370160365596521.Spec : Prop :=
  ∀ n, P10825370160365596521.a n = A178766 (n + 1)

end A178766

/-! ## A178766.P10711853009777159014

`A181974(A131179(n+1))`
-/

namespace A178766.P10711853009777159014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181974 (A131179 (n + 1)).toNat

end

end A178766.P10711853009777159014

namespace A178766

/-- `A181974(A131179(n+1))` -/
def P10711853009777159014.Spec : Prop :=
  ∀ n, P10711853009777159014.a n = A178766 (n + 1)

end A178766

/-! ## A178766.P358492098230079515

`A039913(A236453(n+1))`
-/

namespace A178766.P358492098230079515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (A236453 (n + 1)).toNat

end

end A178766.P358492098230079515

namespace A178766

/-- `A039913(A236453(n+1))` -/
def P358492098230079515.Spec : Prop :=
  ∀ n, P358492098230079515.a n = A178766 (n + 1)

end A178766

/-! ## A178766.P2957894621772907209

`A039913(A084265(n)+2)`
-/

namespace A178766.P2957894621772907209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (A084265 n + 2).toNat

end

end A178766.P2957894621772907209

namespace A178766

/-- `A039913(A084265(n)+2)` -/
def P2957894621772907209.Spec : Prop :=
  ∀ n, P2957894621772907209.a n = A178766 (n + 1)

end A178766

/-! ## A178766.P4789132435143686253

`A039913(A266259(n+1)+1)`
-/

namespace A178766.P4789132435143686253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039913 (A266259 (n + 1) + 1).toNat

end

end A178766.P4789132435143686253

namespace A178766

/-- `A039913(A266259(n+1)+1)` -/
def P4789132435143686253.Spec : Prop :=
  ∀ n, P4789132435143686253.a n = A178766 (n + 1)

end A178766

/-!
# A178767: Values of gcd(Fibonacci(n), Fibonacci(n+3)+2) sorted with no repeats.

The programs for A178767, there is no canonical definition to state claims against.
-/

/-! ## A178767.P5295086871940422244

`A106801(A327325(n+1))`
-/

namespace A178767.P5295086871940422244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106801 (A327325 (n + 1)).toNat

end

end A178767.P5295086871940422244

/-! ## A178767.P5398792326407361544

`∑[A053000(A225960(n)+1)]`
-/

namespace A178767.P5398792326407361544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (A225960 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178767.P5398792326407361544

/-!
# A178769: a(n) = (5*10^n + 13)/9.

The programs for A178769, the canonical program `A178769.P17793131679519031593` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178769 has offset 0).

The definition of A178769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*10^n+13)/9` (program `A178769.P311839629776753926`, by `A178769.P311839629776753926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178769.P17793131679519031593

`10*a(n-1)-13` with `a(0)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178769

/-- `10*a(n-1)-13` -/
def P17793131679519031593.Spec : Prop :=
  ∀ n, P17793131679519031593.a n = A178769 n

theorem P17793131679519031593.correct : P17793131679519031593.Spec := by
  intro n
  simp only [A178769]

end A178769

/-! ## A178769.P311839629776753926

`(5*10^n+13)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178769.P311839629776753926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 10 ^ n + 13 : ℚ) / 9

end

end A178769.P311839629776753926

namespace A178769

/-- `(5*10^n+13)/9` -/
def P311839629776753926.Spec : Prop :=
  ∀ n, P311839629776753926.a n = (A178769 n : ℚ)

theorem P311839629776753926.correct : P311839629776753926.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A178769, Nat.add_sub_cancel, A178769.P311839629776753926.a, A178769.P17793131679519031593.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A178769, Nat.add_sub_cancel, A178769.P311839629776753926.a, A178769.P17793131679519031593.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A178769

/-! ## A178769.P16333111487133447316

`abs(xor(∑[ceil(10^n/2)], -1))`
-/

namespace A178769.P16333111487133447316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)|

end

end A178769.P16333111487133447316

namespace A178769

/-- `abs(xor(∑[ceil(10^n/2)], -1))` -/
def P16333111487133447316.Spec : Prop :=
  ∀ n, P16333111487133447316.a n = A178769 n

end A178769

/-! ## A178769.P11867119567764021477

`-xor(∑[ceil(10^n/2)], -1)`
-/

namespace A178769.P11867119567764021477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A178769.P11867119567764021477

namespace A178769

/-- `-xor(∑[ceil(10^n/2)], -1)` -/
def P11867119567764021477.Spec : Prop :=
  ∀ n, P11867119567764021477.a n = A178769 n

end A178769

/-! ## A178769.P6332791641823680114

`a(n-1)+10^n/2` with `a(0)=2`
-/

namespace A178769.P6332791641823680114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (10 ^ n : ℚ) / 2

end

end A178769.P6332791641823680114

namespace A178769

/-- `a(n-1)+10^n/2` -/
def P6332791641823680114.Spec : Prop :=
  ∀ n, P6332791641823680114.a n = (A178769 n : ℚ)

end A178769

/-! ## A178769.P15542268864007414563

`lcm(∑[ceil(10^n/2)]+1, (-1)^n)`
-/

namespace A178769.P15542268864007414563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j + 1) ((-1) ^ n)

end

end A178769.P15542268864007414563

namespace A178769

/-- `lcm(∑[ceil(10^n/2)]+1, (-1)^n)` -/
def P15542268864007414563.Spec : Prop :=
  ∀ n, (P15542268864007414563.a n : ℤ) = A178769 n

end A178769

/-! ## A178769.P18110632492900361354

`A093142(n)+1`
-/

namespace A178769.P18110632492900361354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 n + 1

end

end A178769.P18110632492900361354

namespace A178769

/-- `A093142(n)+1` -/
def P18110632492900361354.Spec : Prop :=
  ∀ n, P18110632492900361354.a n = A178769 n

end A178769

/-! ## A178769.P13325618286060329295

`A002279(n)+2`
-/

namespace A178769.P13325618286060329295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n + 2

end

end A178769.P13325618286060329295

namespace A178769

/-- `A002279(n)+2` -/
def P13325618286060329295.Spec : Prop :=
  ∀ n, P13325618286060329295.a n = A178769 n

end A178769

/-! ## A178769.P14609444705536377475

`A322927(2*n)+2`
-/

namespace A178769.P14609444705536377475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322927 (2 * n) + 2

end

end A178769.P14609444705536377475

namespace A178769

/-- `A322927(2*n)+2` -/
def P14609444705536377475.Spec : Prop :=
  ∀ n, P14609444705536377475.a n = A178769 n

end A178769

/-! ## A178769.P18052637159308884588

`5*A002275(n)+2`
-/

namespace A178769.P18052637159308884588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002275 n + 2

end

end A178769.P18052637159308884588

namespace A178769

/-- `5*A002275(n)+2` -/
def P18052637159308884588.Spec : Prop :=
  ∀ n, P18052637159308884588.a n = A178769 n

end A178769

/-! ## A178769.P4429998280406903257

`5*A047855(n)-3`
-/

namespace A178769.P4429998280406903257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A047855 n - 3

end

end A178769.P4429998280406903257

namespace A178769

/-- `5*A047855(n)-3` -/
def P4429998280406903257.Spec : Prop :=
  ∀ n, P4429998280406903257.a n = A178769 n

end A178769

/-! ## A178769.P2689677024730985947

`A002276(n)+(10^n+5)/3`
-/

namespace A178769.P2689677024730985947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 n : ℚ) + (10 ^ n + 5 : ℚ) / 3

end

end A178769.P2689677024730985947

namespace A178769

/-- `A002276(n)+(10^n+5)/3` -/
def P2689677024730985947.Spec : Prop :=
  ∀ n, P2689677024730985947.a n = (A178769 n : ℚ)

end A178769

/-! ## A178769.P11686502545268528952

`A237344(A122709(n)+1)`
-/

namespace A178769.P11686502545268528952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237344 (A122709 n + 1).toNat

end

end A178769.P11686502545268528952

namespace A178769

/-- `A237344(A122709(n)+1)` -/
def P11686502545268528952.Spec : Prop :=
  ∀ n, P11686502545268528952.a n = A178769 n

end A178769

/-! ## A178769.P2641731328851042157

`∑[A093138(n)+A093136(n)]`
-/

namespace A178769.P2641731328851042157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 n + A093136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178769.P2641731328851042157

namespace A178769

/-- `∑[A093138(n)+A093136(n)]` -/
def P2641731328851042157.Spec : Prop :=
  ∀ n, P2641731328851042157.a n = A178769 n

end A178769

/-! ## A178769.P13867847514434314525

`∑[A017936(A004277(n)+1)/2]`
-/

namespace A178769.P13867847514434314525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017936 (A004277 n + 1).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178769.P13867847514434314525

namespace A178769

/-- `∑[A017936(A004277(n)+1)/2]` -/
def P13867847514434314525.Spec : Prop :=
  ∀ n, P13867847514434314525.a n = (A178769 n : ℚ)

end A178769

/-! ## A178769.P8655068987151085896

`abs(A002276(n)+A323639(n)+3)`
-/

namespace A178769.P8655068987151085896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002276 n + (A323639 n + 3)|

end

end A178769.P8655068987151085896

namespace A178769

/-- `abs(A002276(n)+A323639(n)+3)` -/
def P8655068987151085896.Spec : Prop :=
  ∀ n, P8655068987151085896.a n = A178769 n

end A178769

/-! ## A178769.P2232402235357102578

`abs(A002276(n)+3*A098406(n)-4)`
-/

namespace A178769.P2232402235357102578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002276 n + (3 * A098406 n - 4)|

end

end A178769.P2232402235357102578

namespace A178769

/-- `abs(A002276(n)+3*A098406(n)-4)` -/
def P2232402235357102578.Spec : Prop :=
  ∀ n, P2232402235357102578.a n = A178769 n

end A178769

/-! ## A178769.P13468182100280738258

`A105279(n)/2+2`
-/

namespace A178769.P13468182100280738258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105279 n : ℚ) / 2 + 2

end

end A178769.P13468182100280738258

namespace A178769

/-- `A105279(n)/2+2` -/
def P13468182100280738258.Spec : Prop :=
  ∀ n, P13468182100280738258.a n = (A178769 n : ℚ)

end A178769

/-! ## A178769.P11046736742332859816

`floor(A173736(n+1)/2)`
-/

namespace A178769.P11046736742332859816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173736 (n + 1) : ℚ) / 2⌋

end

end A178769.P11046736742332859816

namespace A178769

/-- `floor(A173736(n+1)/2)` -/
def P11046736742332859816.Spec : Prop :=
  ∀ n, P11046736742332859816.a n = A178769 n

end A178769

/-!
# A178770: a(0) = a(1) = a(2) = a(3) = a(4) = 1, thereafter a(n) = a(a(n-1)) + a(n-a(n-3)).

The programs for A178770, the canonical program `A178770.P1683404742330514832` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178770 has offset 0).

The definition of A178770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1))+a(n-a(n-3))` (program `A178770.P1683404742330514832`, by `A178770.P1683404742330514832.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178770.P1683404742330514832

`a(a(n-1))+a(n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178770

/-- `a(a(n-1))+a(n-a(n-3))` -/
def P1683404742330514832.Spec : Prop :=
  ∀ n, (P1683404742330514832.a n : ℤ) = A178770 n

theorem P1683404742330514832.correct : P1683404742330514832.Spec := by
  intro n
  simp only [A178770]

end A178770

/-!
# A178771: a(0)=0, a(1)=1, a(2)=1, a(3)=1, thereafter a(n) = If[Mod[ n, 2] == 0, a(Floor[n/2]), a(a(Floor[(n - 1)/2])) + a(n - a(Floor[( n - 3)/2]))].

The programs for A178771, there is no canonical definition to state claims against.
-/

/-! ## A178771.P6565754285052405554

`A001221(A135491(lcm(16, n)/16))`
-/

namespace A178771.P6565754285052405554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A135491 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat).toNat

end

end A178771.P6565754285052405554

/-! ## A178771.P6630307872421478601

`A001221(A135491(A106609(n)))`
-/

namespace A178771.P6630307872421478601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A135491 (A106609 n).toNat).toNat

end

end A178771.P6630307872421478601

/-! ## A178771.P17795485844776225448

`A001221(A135491(A106617(n)))`
-/

namespace A178771.P17795485844776225448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A135491 (A106617 n).toNat).toNat

end

end A178771.P17795485844776225448

/-! ## A178771.P10196889590441926149

`A001221(A146716(n+2)+n)`
-/

namespace A178771.P10196889590441926149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A146716 (n + 2) + (n : ℤ)).toNat

end

end A178771.P10196889590441926149

/-! ## A178771.P9915918287840051627

`A293439(or(n+1, A000628(n)-1))`
-/

namespace A178771.P9915918287840051627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (Int.lor (n + 1 : ℤ) (A000628 n - 1)).toNat

end

end A178771.P9915918287840051627

/-!
# A178772: Fibonacci integers.

The programs for A178772, there is no canonical definition to state claims against.
-/

/-! ## A178772.P13507058179000631846

`lt[A062977(A319035(n+1)), A130758(n+1)]`
-/

namespace A178772.P13507058179000631846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (A319035 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130758 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178772.P13507058179000631846

/-! ## A178772.P16340826624627131194

`record[gcd(n, A054847(n+1)!)]`
-/

namespace A178772.P16340826624627131194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.factorial (A054847 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178772.P16340826624627131194

/-! ## A178772.P9430745625325478827

`lt[A275769(n+1), A122296(n+4)]+1`
-/

namespace A178772.P9430745625325478827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122296 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A178772.P9430745625325478827

/-! ## A178772.P13755166447111504212

`lt[A005811(A145203(n+1)), A145154(n)]`
-/

namespace A178772.P13755166447111504212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A145203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178772.P13755166447111504212

/-! ## A178772.P13516112862256199664

`lt[A178780(A014132(n+1)), A078898(n)]`
-/

namespace A178772.P13516112862256199664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A014132 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178772.P13516112862256199664

/-! ## A178772.P16053558320681760569

`lt[A032741(A116608(n+5)), A300549(n)]`
-/

namespace A178772.P16053558320681760569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A116608 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178772.P16053558320681760569

/-! ## A178772.P12697288807217819422

`comp[A057749(n+1)%A105792(A000695(n+2))]`
-/

namespace A178772.P12697288807217819422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057749 (n + 1)) (A105792 (A000695 (n + 2)).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A178772.P12697288807217819422

/-! ## A178772.P6460935929160610293

`lt[A130030(A130044(n)), A130006(n+1)]`
-/

namespace A178772.P6460935929160610293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130030 (A130044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178772.P6460935929160610293

/-! ## A178772.P12663649344609746151

`lt[A132801(n), A132802(A132767(n))]`
-/

namespace A178772.P12663649344609746151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132802 (A132767 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A178772.P12663649344609746151

/-!
# A178773: Least palindrome which is the product of n consecutive primes.

The programs for A178773, there is no canonical definition to state claims against.
-/

/-! ## A178773.P13862756332187377137

`∩[A169829(n+1), A335209(n+1)]`
-/

namespace A178773.P13862756332187377137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178773.P13862756332187377137

/-!
# A178775: Smallest prime factors of zerofull restricted pandigital numbers.

The programs for A178775, there is no canonical definition to state claims against.
-/

/-! ## A178775.P16555254422555515456

`A050278(n+1)%2+2`
-/

namespace A178775.P16555254422555515456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050278 (n + 1)) 2 + 2

end

end A178775.P16555254422555515456

/-! ## A178775.P9847961321531298220

`A050289(n+1)%2+2`
-/

namespace A178775.P9847961321531298220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050289 (n + 1)) 2 + 2

end

end A178775.P9847961321531298220

/-! ## A178775.P17256619049180447976

`gcd(2, A191820(n+1))+1`
-/

namespace A178775.P17256619049180447976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A191820 (n + 1)) + 1

end

end A178775.P17256619049180447976

/-! ## A178775.P13410681234584394981

`and(1, A215940(n+1)+1)+2`
-/

namespace A178775.P13410681234584394981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A215940 (n + 1) + 1) + 2

end

end A178775.P13410681234584394981

/-! ## A178775.P6255852948424657299

`A020639(gcd(A050278(n+1), A187551(n+1)))`
-/

namespace A178775.P6255852948424657299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A050278 (n + 1)) (A187551 (n + 1)))

end

end A178775.P6255852948424657299

/-! ## A178775.P1092878292719127028

`gcd(2, A213890(n))+1`
-/

namespace A178775.P1092878292719127028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A213890 n) + 1

end

end A178775.P1092878292719127028

/-! ## A178775.P7147889264992614744

`A000040(lcm(2, A178477(n+1))/A178477(n+1))`
-/

namespace A178775.P7147889264992614744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((Int.lcm 2 (A178477 (n + 1)) : ℚ) / (A178477 (n + 1) : ℚ))).toNat

end

end A178775.P7147889264992614744

/-! ## A178775.P4284617095920863720

`A020639(3*A178486(n+1))`
-/

namespace A178775.P4284617095920863720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A178486 (n + 1)).toNat

end

end A178775.P4284617095920863720

/-! ## A178775.P6113433541680583330

`A020639(A023744(n+1)/(1/3)²)`
-/

namespace A178775.P6113433541680583330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A023744 (n + 1) : ℚ) / ((1 : ℚ) / 3) ^ 2)).toNat

end

end A178775.P6113433541680583330

/-! ## A178775.P17879383812696547312

`A010693(A023744(n+1))`
-/

namespace A178775.P17879383812696547312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A023744 (n + 1)).toNat

end

end A178775.P17879383812696547312

/-! ## A178775.P13378921920398104927

`A010693(A178485(n+1))`
-/

namespace A178775.P13378921920398104927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A178485 (n + 1)).toNat

end

end A178775.P13378921920398104927

/-! ## A178775.P12490581757692116627

`A020639(A178475(n+1))`
-/

namespace A178775.P12490581757692116627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A178475 (n + 1)).toNat

end

end A178775.P12490581757692116627

/-! ## A178775.P9170054556879478542

`A176059(A215940(n+1))`
-/

namespace A178775.P9170054556879478542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 (A215940 (n + 1)).toNat

end

end A178775.P9170054556879478542

/-! ## A178775.P16744621519118899452

`A020639(3*A178485(n+1))`
-/

namespace A178775.P16744621519118899452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A178485 (n + 1)).toNat

end

end A178775.P16744621519118899452

/-!
# A178777: Numbers that are not Fibonacci integers.

The programs for A178777, there is no canonical definition to state claims against.
-/

/-! ## A178777.P1736942093030277940

`comp[A178772(n+1)-1]+1`
-/

namespace A178777.P1736942093030277940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A178777.P1736942093030277940

/-! ## A178777.P9544908681795197990

`comp[∪[A178772(n+1), A049997(n)]]`
-/

namespace A178777.P9544908681795197990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A178777.P9544908681795197990

/-! ## A178777.P672872683540285710

`comp[A178772(A088462(n+1))%(n+1)]`
-/

namespace A178777.P672872683540285710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178772 (A088462 (n + 1)).toNat) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A178777.P672872683540285710

/-! ## A178777.P10861061644339414672

`∩[A065105(n+1), comp[A178772(n+1)]]`
-/

namespace A178777.P10861061644339414672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065105 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A178777.P10861061644339414672

/-! ## A178777.P12587757541006332686

`comp[∪[A160009(n+1), A178772(n+1)]]`
-/

namespace A178777.P12587757541006332686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178772 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A178777.P12587757541006332686

/-!
# A178778: Partial sums of walks of length n+1 on a tetrahedron A001998.

The programs for A178778, the canonical program `A178778.P7048198939721526646` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178778 has offset 0).

The definition of A178778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178778.P17835629927009566274

`∑[(3-1/gcd(a(n-1), a(n-2)))*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A178778.P17835629927009566274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (3 - 1 / (Int.gcd (SequenceMachineLib.roundAway (f1 (n - 1))) (SequenceMachineLib.roundAway (f1 (n - 2))) : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178778.P17835629927009566274

namespace A178778

/-- `∑[(3-1/gcd(a(n-1), a(n-2)))*a(n-1)]` -/
def P17835629927009566274.Spec : Prop :=
  ∀ n, P17835629927009566274.a n = (A178778 n : ℚ)

end A178778

/-! ## A178778.P7048198939721526646

`5*a(n-1)-4*a(n-2)-12*a(n-3)+21*a(n-4)-9*a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=17, a(4)=42`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178778

/-- `5*a(n-1)-4*a(n-2)-12*a(n-3)+21*a(n-4)-9*a(n-5)` -/
def P7048198939721526646.Spec : Prop :=
  ∀ n, P7048198939721526646.a n = A178778 n

theorem P7048198939721526646.correct : P7048198939721526646.Spec := by
  intro n
  simp only [A178778]

end A178778

/-! ## A178778.P4284514754540656363

`∑[A001998(n)]`
-/

namespace A178778.P4284514754540656363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178778.P4284514754540656363

namespace A178778

/-- `∑[A001998(n)]` -/
def P4284514754540656363.Spec : Prop :=
  ∀ n, P4284514754540656363.a n = A178778 n

end A178778

/-! ## A178778.P7942600637932459877

`∑[∑[A001444(n-n²%(n+1))]]`
-/

namespace A178778.P7942600637932459877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 (n - n ^ 2 % (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178778.P7942600637932459877

namespace A178778

/-- `∑[∑[A001444(n-n²%(n+1))]]` -/
def P7942600637932459877.Spec : Prop :=
  ∀ n, P7942600637932459877.a n = A178778 n

end A178778

/-! ## A178778.P13776921148612734593

`∑{d}[n+1, A056332(#)]+a(n-1)` with `a(0)=1`
-/

namespace A178778.P13776921148612734593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), A056332 d + a (n - 1)

end

end A178778.P13776921148612734593

namespace A178778

/-- `∑{d}[n+1, A056332(#)]+a(n-1)` -/
def P13776921148612734593.Spec : Prop :=
  ∀ n, P13776921148612734593.a n = A178778 n

end A178778

/-! ## A178778.P9797147091744846683

`∑[A232801(n)+A122983(n)]`
-/

namespace A178778.P9797147091744846683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 n + A122983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178778.P9797147091744846683

namespace A178778

/-- `∑[A232801(n)+A122983(n)]` -/
def P9797147091744846683.Spec : Prop :=
  ∀ n, P9797147091744846683.a n = A178778 n

end A178778

/-! ## A178778.P299160883151684198

`∑[A056327(n+1)+A005418(n+1)]`
-/

namespace A178778.P299160883151684198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056327 (n + 1) + A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178778.P299160883151684198

namespace A178778

/-- `∑[A056327(n+1)+A005418(n+1)]` -/
def P299160883151684198.Spec : Prop :=
  ∀ n, P299160883151684198.a n = A178778 n

end A178778

/-! ## A178778.P13233408932980359217

`∑[A056326(n+1)+A056327(n+1)+1]`
-/

namespace A178778.P13233408932980359217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1) + (A056327 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178778.P13233408932980359217

namespace A178778

/-- `∑[A056326(n+1)+A056327(n+1)+1]` -/
def P13233408932980359217.Spec : Prop :=
  ∀ n, P13233408932980359217.a n = A178778 n

end A178778

/-! ## A178778.P4574098322877121989

`∑[∑[A001444(n)]+1-A001444(n)]`
-/

namespace A178778.P4574098322877121989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A001444 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178778.P4574098322877121989

namespace A178778

/-- `∑[∑[A001444(n)]+1-A001444(n)]` -/
def P4574098322877121989.Spec : Prop :=
  ∀ n, P4574098322877121989.a n = A178778 n

end A178778

/-!
# A178779: Expansion of the polynomial x^12*(x^6-1)*(x^4-1)*(x^3-1)*(x-1) in increasing powers of x.

The programs for A178779, there is no canonical definition to state claims against.
-/

/-! ## A178779.P15683909828724061655

`Δ[A178798(A173634(n+1)+2)]`
-/

namespace A178779.P15683909828724061655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A173634 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178779.P15683909828724061655

/-! ## A178779.P9712077692770635602

`Δ[A178798(comp[A004525(3*(n+1))])]`
-/

namespace A178779.P9712077692770635602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178779.P9712077692770635602

/-! ## A178779.P9938986989431732220

`Δ[A178798(A008486(n)-A134451(n))]`
-/

namespace A178779.P9938986989431732220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A008486 n - A134451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178779.P9938986989431732220

/-! ## A178779.P17602942728197918018

`A178798(A033063(2*(n+1)))+A178798(2*n)`
-/

namespace A178779.P17602942728197918018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A033063 (2 * (n + 1))).toNat + A178798 (2 * n)

end

end A178779.P17602942728197918018

/-!
# A178780: Expansion of the polynomial x^36*(x^12-1)*(x^9-1)*(x^8-1)*(x^6-1)*(x^5-1)*(x^2-1) in increasing powers of x.

The programs for A178780, there is no canonical definition to state claims against.
-/

/-! ## A178780.P3580141290191650999

`-A178798(n)^A174042(n+1)`
-/

namespace A178780.P3580141290191650999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A178798 n : ℚ) ^ (A174042 (n + 1) : ℤ))

end

end A178780.P3580141290191650999

/-! ## A178780.P16579708368591098096

`(A010894(n)-1)*A178798(n)`
-/

namespace A178780.P16579708368591098096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010894 (n + 21) - 1) * A178798 n

end

end A178780.P16579708368591098096

/-! ## A178780.P5934564598743599351

`A000038(A006950(n))-A178798(n)`
-/

namespace A178780.P5934564598743599351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A006950 n).toNat - A178798 n

end

end A178780.P5934564598743599351

/-! ## A178780.P12466621540743326828

`A015838(A074770(n+1))`
-/

namespace A178780.P12466621540743326828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015838 (A074770 (n + 1)).toNat

end

end A178780.P12466621540743326828

/-! ## A178780.P17313624009160850710

`A015779(A107935(n+1))`
-/

namespace A178780.P17313624009160850710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015779 (A107935 (n + 1)).toNat

end

end A178780.P17313624009160850710

/-!
# A178781: Expansion of the polynomial (x^9-1)*(x^7-1)*(x^6-1)*(x^5-1)*(x^4-1)*(x^3-1)*(x-1) in increasing powers of x.

The programs for A178781, there is no canonical definition to state claims against.
-/

/-! ## A178781.P9072335652041837164

`A008683(eq[4, A309988(n+1)])`
-/

namespace A178781.P9072335652041837164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178781.P9072335652041837164

/-! ## A178781.P16446220969314891234

`A010892(A346500(3*n+4)+14)`
-/

namespace A178781.P16446220969314891234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A346500 (3 * n + 4) + 14).toNat

end

end A178781.P16446220969314891234

/-! ## A178781.P15171511454589282197

`(A048793(n)-A327125(2*(n+1)))%2`
-/

namespace A178781.P15171511454589282197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048793 n - A327125 (2 * (n + 1))) 2

end

end A178781.P15171511454589282197

/-! ## A178781.P321726676015209242

`A008683(A127006(n+1)+A005894(n))`
-/

namespace A178781.P321726676015209242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A127006 (n + 1) + A005894 n).toNat

end

end A178781.P321726676015209242

/-! ## A178781.P15060066021673221104

`A057350(A129682(n+1))-A057350(n)`
-/

namespace A178781.P15060066021673221104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057350 (A129682 (n + 1)).toNat - A057350 n

end

end A178781.P15060066021673221104

/-!
# A178784: Let d be the vector of divisors of 100 sorted from largest to smallest, i.e., [100,50,25,20,10,5,4,2,1]. Then a(n) = 100/d(n) - 1.

The programs for A178784, there is no canonical definition to state claims against.
-/

/-! ## A178784.P11188218694911858593

`A018283(n+1)-1`
-/

namespace A178784.P11188218694911858593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018283 (n + 1) - 1

end

end A178784.P11188218694911858593

/-! ## A178784.P9660359027482391429

`eq[n, 99%(n+1)]`
-/

namespace A178784.P9660359027482391429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99 % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178784.P9660359027482391429

/-! ## A178784.P13523171988169711999

`5*a(n-3)+4` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A178784.P13523171988169711999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  5 * a (n - 3) + 4

end

end A178784.P13523171988169711999

/-! ## A178784.P14544827980844186686

`lcm(5, a(n-3))+4` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A178784.P14544827980844186686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  Nat.lcm 5 (a (n - 3)) + 4

end

end A178784.P14544827980844186686

/-! ## A178784.P14857104645016699056

`∑[5*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A178784.P14857104645016699056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1] fun n f1 =>
  5 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178784.P14857104645016699056

/-!
# A178786: Express n as the sum of four squares, x^2+y^2+z^2+w^2, with x>=y>=z>=w>=0, maximizing the value of x. Then a(n) is that x.

The programs for A178786, there is no canonical definition to state claims against.
-/

/-! ## A178786.P17722671971848491648

`A000196(n)-A193095(A236865(n+7))`
-/

namespace A178786.P17722671971848491648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A193095 (A236865 (n + 7)).toNat

end

end A178786.P17722671971848491648

/-! ## A178786.P445187229952234229

`A000196(n)-A335446(A210871(n+1))`
-/

namespace A178786.P445187229952234229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A335446 (A210871 (n + 1)).toNat

end

end A178786.P445187229952234229

/-! ## A178786.P5190242151991763970

`A015703(p?[A163351(n)])+A000196(n)`
-/

namespace A178786.P5190242151991763970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015703 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A000196 n

end

end A178786.P5190242151991763970

/-! ## A178786.P11854997027687606673

`A000196(n)-A015703(p?[A163351(n)]²)`
-/

namespace A178786.P11854997027687606673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A015703 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A178786.P11854997027687606673

/-! ## A178786.P11002704294873747237

`floor(sqrt(n)-A179801(A026758(n)))`
-/

namespace A178786.P11002704294873747237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) - (A179801 (A026758 n).toNat : ℝ)⌋

end

end A178786.P11002704294873747237

/-!
# A178787: Number of numbers <= n having distinct digits in their decimal representation, cf. A010784.

The programs for A178787, the canonical program `A178787.P4102547761582682700` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178787 has offset 0).

The definition of A178787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178787.P4102547761582682700

`∑[A178788(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178787

/-- `∑[A178788(n)]` -/
def P4102547761582682700.Spec : Prop :=
  ∀ n, P4102547761582682700.a n = A178787 n

theorem P4102547761582682700.correct : P4102547761582682700.Spec := by
  intro n
  simp only [A178787]

end A178787

/-! ## A178787.P16217601663554752998

`∑[char[A137564(n)]]`
-/

namespace A178787.P16217601663554752998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178787.P16217601663554752998

namespace A178787

/-- `∑[char[A137564(n)]]` -/
def P16217601663554752998.Spec : Prop :=
  ∀ n, (P16217601663554752998.a n : ℤ) = A178787 n

end A178787

/-! ## A178787.P9035566563271861481

`∑[char[A320485(n)]]`
-/

namespace A178787.P9035566563271861481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178787.P9035566563271861481

namespace A178787

/-- `∑[char[A320485(n)]]` -/
def P9035566563271861481.Spec : Prop :=
  ∀ n, (P9035566563271861481.a n : ℤ) = A178787 n

end A178787

/-! ## A178787.P12298467801377802762

`∑[char[A320486(n)]]`
-/

namespace A178787.P12298467801377802762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178787.P12298467801377802762

namespace A178787

/-- `∑[char[A320486(n)]]` -/
def P12298467801377802762.Spec : Prop :=
  ∀ n, (P12298467801377802762.a n : ℤ) = A178787 n

end A178787

/-! ## A178787.P12769267404101009549

`∑[char[A010784(n+1)]]`
-/

namespace A178787.P12769267404101009549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178787.P12769267404101009549

namespace A178787

/-- `∑[char[A010784(n+1)]]` -/
def P12769267404101009549.Spec : Prop :=
  ∀ n, (P12769267404101009549.a n : ℤ) = A178787 n

end A178787

/-! ## A178787.P17073269394101344033

`∑[char[A333832(n+1)]]`
-/

namespace A178787.P17073269394101344033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333832 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178787.P17073269394101344033

namespace A178787

/-- `∑[char[A333832(n+1)]]` -/
def P17073269394101344033.Spec : Prop :=
  ∀ n, (P17073269394101344033.a n : ℤ) = A178787 n

end A178787

/-! ## A178787.P17610755236507104229

`∑[A321797(n)-A321800(n)]`
-/

namespace A178787.P17610755236507104229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n - A321800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178787.P17610755236507104229

namespace A178787

/-- `∑[A321797(n)-A321800(n)]` -/
def P17610755236507104229.Spec : Prop :=
  ∀ n, P17610755236507104229.a n = A178787 n

end A178787

/-! ## A178787.P74693098650976605

`∑[A070596(n²)]+1`
-/

namespace A178787.P74693098650976605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070596 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A178787.P74693098650976605

namespace A178787

/-- `∑[A070596(n²)]+1` -/
def P74693098650976605.Spec : Prop :=
  ∀ n, P74693098650976605.a n = A178787 n

end A178787

/-! ## A178787.P3622816821663993206

`∑[A145568(n²)]+1`
-/

namespace A178787.P3622816821663993206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A178787.P3622816821663993206

namespace A178787

/-- `∑[A145568(n²)]+1` -/
def P3622816821663993206.Spec : Prop :=
  ∀ n, P3622816821663993206.a n = A178787 n

end A178787

/-! ## A178787.P6621029081835252386

`A070596(n*n)+a(n-1)` with `a(0)=1`
-/

namespace A178787.P6621029081835252386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070596 (n * n) + a (n - 1)

end

end A178787.P6621029081835252386

namespace A178787

/-- `A070596(n*n)+a(n-1)` -/
def P6621029081835252386.Spec : Prop :=
  ∀ n, P6621029081835252386.a n = A178787 n

end A178787

/-!
# A178788: Characteristic function of numbers having distinct digits in their decimal representation.

The programs for A178788, the canonical program `A178788.P8417566413823769035` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178788 has offset 0).

The definition of A178788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178788.P10274295162336388375

`char[A137564(n)]`
-/

namespace A178788.P10274295162336388375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178788.P10274295162336388375

namespace A178788

/-- `char[A137564(n)]` -/
def P10274295162336388375.Spec : Prop :=
  ∀ n, (P10274295162336388375.a n : ℤ) = A178788 n

end A178788

/-! ## A178788.P4870348404999242182

`char[A320485(n)]`
-/

namespace A178788.P4870348404999242182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178788.P4870348404999242182

namespace A178788

/-- `char[A320485(n)]` -/
def P4870348404999242182.Spec : Prop :=
  ∀ n, (P4870348404999242182.a n : ℤ) = A178788 n

end A178788

/-! ## A178788.P8417566413823769035

`char[A320486(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A178788

/-- `char[A320486(n)]` -/
def P8417566413823769035.Spec : Prop :=
  ∀ n, (P8417566413823769035.a n : ℤ) = A178788 n

theorem P8417566413823769035.correct : P8417566413823769035.Spec := by
  intro n
  simp only [A178788]

end A178788

/-! ## A178788.P3795507333417528446

`char[A010784(n+1)]`
-/

namespace A178788.P3795507333417528446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178788.P3795507333417528446

namespace A178788

/-- `char[A010784(n+1)]` -/
def P3795507333417528446.Spec : Prop :=
  ∀ n, (P3795507333417528446.a n : ℤ) = A178788 n

end A178788

/-! ## A178788.P954532694508826543

`char[A333832(n+1)]`
-/

namespace A178788.P954532694508826543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A178788.P954532694508826543

namespace A178788

/-- `char[A333832(n+1)]` -/
def P954532694508826543.Spec : Prop :=
  ∀ n, (P954532694508826543.a n : ℤ) = A178788 n

end A178788

/-! ## A178788.P11120279313555424549

`A332550(A332550(n))-8`
-/

namespace A178788.P11120279313555424549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 (A332550 n).toNat - 8

end

end A178788.P11120279313555424549

namespace A178788

/-- `A332550(A332550(n))-8` -/
def P11120279313555424549.Spec : Prop :=
  ∀ n, P11120279313555424549.a n = A178788 n

end A178788

/-! ## A178788.P10981556160133860923

`A321797(n)-A321800(n)`
-/

namespace A178788.P10981556160133860923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n - A321800 n

end

end A178788.P10981556160133860923

namespace A178788

/-- `A321797(n)-A321800(n)` -/
def P10981556160133860923.Spec : Prop :=
  ∀ n, P10981556160133860923.a n = A178788 n

end A178788

/-! ## A178788.P4204811178558198378

`A000007(n-A320485(n))`
-/

namespace A178788.P4204811178558198378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) - A320485 n).toNat

end

end A178788.P4204811178558198378

namespace A178788

/-- `A000007(n-A320485(n))` -/
def P4204811178558198378.Spec : Prop :=
  ∀ n, P4204811178558198378.a n = A178788 n

end A178788

/-! ## A178788.P15357937790084446821

`and(A088357(n), A196368(n))`
-/

namespace A178788.P15357937790084446821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088357 n) (A196368 n)

end

end A178788.P15357937790084446821

namespace A178788

/-- `and(A088357(n), A196368(n))` -/
def P15357937790084446821.Spec : Prop :=
  ∀ n, P15357937790084446821.a n = A178788 n

end A178788

/-! ## A178788.P176981771332841300

`and(1, A249619(A321804(n)²))`
-/

namespace A178788.P176981771332841300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A249619 (A321804 n ^ 2).toNat)

end

end A178788.P176981771332841300

namespace A178788

/-- `and(1, A249619(A321804(n)²))` -/
def P176981771332841300.Spec : Prop :=
  ∀ n, P176981771332841300.a n = A178788 n

end A178788

/-!
# A178789: a(n) = 4^(n-1) + 2: Number of acute angles after n iterations of the Koch snowflake construction.

The programs for A178789, the canonical program `A178789.P3727295991061782355` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178789 has offset 1).

The definition of A178789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+2` (program `A178789.P3727295991061782355`, by `A178789.P3727295991061782355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178789.P7972218484199370348

`2+4^n`
-/

namespace A178789.P7972218484199370348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + 4 ^ n

end

end A178789.P7972218484199370348

namespace A178789

/-- `2+4^n` -/
def P7972218484199370348.Spec : Prop :=
  ∀ n, (P7972218484199370348.a n : ℤ) = A178789 (n + 1)

theorem P7972218484199370348.correct : P7972218484199370348.Spec := by
  intro n
  simp only [A178789, Nat.add_sub_cancel, A178789.P7972218484199370348.a, A178789.P3727295991061782355.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A178789

/-! ## A178789.P3727295991061782355

`4^n+2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A178789

/-- `4^n+2` -/
def P3727295991061782355.Spec : Prop :=
  ∀ n, (P3727295991061782355.a n : ℤ) = A178789 (n + 1)

theorem P3727295991061782355.correct : P3727295991061782355.Spec := by
  intro n
  simp only [A178789, Nat.add_sub_cancel]

end A178789

/-!
# A178790: The arithmetic mean of (2*k+1)*A_k (k=0,...,n-1), where A_0,A_1,... are Apery numbers given by A005259.

The programs for A178790, there is no canonical definition to state claims against.
-/

/-! ## A178790.P8350944159988531808

`A189766(n+1)/(n+1)`
-/

namespace A178790.P8350944159988531808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189766 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A178790.P8350944159988531808

/-! ## A178790.P8528933230279090699

`∑[A005259(n)*A005408(n)]/(n+1)`
-/

namespace A178790.P8528933230279090699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005259 n * A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A178790.P8528933230279090699

/-! ## A178790.P17443398716532032038

`∑[A004273(n+1)*A005259(n)]/(n+1)`
-/

namespace A178790.P17443398716532032038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) * A005259 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A178790.P17443398716532032038

/-!
# A178792: Dot product of the rows of triangle A046899 with vector (1,2,4,8,...) (= A000079).

The programs for A178792, the canonical program `A178792.P3240755536533390895` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178792 has offset 0).

The definition of A178792 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178792.P3240755536533390895

`1/3*(4*2^n*A000984(n)-A064062(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A178792

/-- `1/3*(4*2^n*A000984(n)-A064062(n))` -/
def P3240755536533390895.Spec : Prop :=
  ∀ n, P3240755536533390895.a n = (A178792 n : ℚ)

end A178792

/-! ## A178792.P10631228334991664781

`A359066(Δ[n²])`
-/

namespace A178792.P10631228334991664781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359066 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A178792.P10631228334991664781

namespace A178792

/-- `A359066(Δ[n²])` -/
def P10631228334991664781.Spec : Prop :=
  ∀ n, P10631228334991664781.a n = A178792 n

end A178792

/-! ## A178792.P7465066740735307305

`2*A119259(n)-A064062(n)`
-/

namespace A178792.P7465066740735307305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119259 n - A064062 n

end

end A178792.P7465066740735307305

namespace A178792

/-- `2*A119259(n)-A064062(n)` -/
def P7465066740735307305.Spec : Prop :=
  ∀ n, P7465066740735307305.a n = A178792 n

end A178792

/-! ## A178792.P11133684821211831640

`6*A069720(n)-a(n-1)` with `a(0)=1`
-/

namespace A178792.P11133684821211831640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * A069720 n - a (n - 1)

end

end A178792.P11133684821211831640

namespace A178792

/-- `6*A069720(n)-a(n-1)` -/
def P11133684821211831640.Spec : Prop :=
  ∀ n, P11133684821211831640.a n = A178792 n

end A178792

/-! ## A178792.P2711937770360927731

`A103944(n+1)/(n+1)`
-/

namespace A178792.P2711937770360927731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103944 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A178792.P2711937770360927731

namespace A178792

/-- `A103944(n+1)/(n+1)` -/
def P2711937770360927731.Spec : Prop :=
  ∀ n, P2711937770360927731.a n = (A178792 n : ℚ)

end A178792

/-! ## A178792.P17074103579704295138

`A193845(∑[4*n])`
-/

namespace A178792.P17074103579704295138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178792.P17074103579704295138

namespace A178792

/-- `A193845(∑[4*n])` -/
def P17074103579704295138.Spec : Prop :=
  ∀ n, P17074103579704295138.a n = A178792 n

end A178792

/-! ## A178792.P16627158786582606047

`A193816(∑[4*n])`
-/

namespace A178792.P16627158786582606047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178792.P16627158786582606047

namespace A178792

/-- `A193816(∑[4*n])` -/
def P16627158786582606047.Spec : Prop :=
  ∀ n, P16627158786582606047.a n = A178792 n

end A178792

/-! ## A178792.P11617769991927476825

`A193817(∑[4*n])`
-/

namespace A178792.P11617769991927476825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193817 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178792.P11617769991927476825

namespace A178792

/-- `A193817(∑[4*n])` -/
def P11617769991927476825.Spec : Prop :=
  ∀ n, P11617769991927476825.a n = A178792 n

end A178792

/-! ## A178792.P11398842319157446635

`A193844(∑[4*n])`
-/

namespace A178792.P11398842319157446635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178792.P11398842319157446635

namespace A178792

/-- `A193844(∑[4*n])` -/
def P11398842319157446635.Spec : Prop :=
  ∀ n, P11398842319157446635.a n = A178792 n

end A178792

/-! ## A178792.P17588993147806635702

`record[gcd(A193844(n), A193845(n))]`
-/

namespace A178792.P17588993147806635702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193844 n) (A193845 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178792.P17588993147806635702

namespace A178792

/-- `record[gcd(A193844(n), A193845(n))]` -/
def P17588993147806635702.Spec : Prop :=
  ∀ n, (P17588993147806635702.a n : ℤ) = A178792 n

end A178792

/-!
# A178793: These are the y coordinates of isolated visible lattice points in the plane.

The programs for A178793, there is no canonical definition to state claims against.
-/

/-! ## A178793.P9261623072833305933

`A157428(A348553(n))+1`
-/

namespace A178793.P9261623072833305933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157428 (A348553 n).toNat + 1

end

end A178793.P9261623072833305933

/-! ## A178793.P11223242144136705592

`A157428(comp[A046099(3*n+4)]+1)+1`
-/

namespace A178793.P11223242144136705592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157428 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A178793.P11223242144136705592

/-! ## A178793.P1501161330042283141

`or(A157428(A348553(n)), A304042(n))`
-/

namespace A178793.P1501161330042283141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A157428 (A348553 n).toNat) (A304042 n)

end

end A178793.P1501161330042283141

/-! ## A178793.P7308451606554738601

`or(A087960(n)², A157428(A348553(n)))`
-/

namespace A178793.P7308451606554738601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087960 n ^ 2) (A157428 (A348553 n).toNat)

end

end A178793.P7308451606554738601

/-! ## A178793.P13957640230571742309

`xor(A124760(n)!, A157428(A348553(n)))`
-/

namespace A178793.P13957640230571742309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A124760 n).toNat : ℤ) (A157428 (A348553 n).toNat)

end

end A178793.P13957640230571742309

/-!
# A178794: These are the x coordinates of the isolated visible lattice points in the plane.

The programs for A178794, there is no canonical definition to state claims against.
-/

/-! ## A178794.P10437239777638696021

`A157429(A090106(n+1))+1`
-/

namespace A178794.P10437239777638696021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157429 (A090106 (n + 1)).toNat + 1

end

end A178794.P10437239777638696021

/-! ## A178794.P12454171003467982950

`(A157429(n+1)+1)%A325606(n+1)`
-/

namespace A178794.P12454171003467982950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157429 (n + 1) + 1) (A325606 (n + 1))

end

end A178794.P12454171003467982950

/-! ## A178794.P11502081230221380520

`A036234(A000040(A157429(n+1)))`
-/

namespace A178794.P11502081230221380520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A000040 (A157429 (n + 1)).toNat).toNat

end

end A178794.P11502081230221380520

/-! ## A178794.P14745625890241498617

`A026238(A000040(A157429(n+1)+1))`
-/

namespace A178794.P14745625890241498617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A000040 (A157429 (n + 1) + 1).toNat).toNat

end

end A178794.P14745625890241498617

/-! ## A178794.P2035867405615198416

`A157429(n+1)+A002487(A060546(n))`
-/

namespace A178794.P2035867405615198416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157429 (n + 1) + A002487 (A060546 n).toNat

end

end A178794.P2035867405615198416

/-!
# A178795: Expansion of the polynomial (x^15-1)*(x^12-1)*(x^10-1)*(x^9-1)*(x^7-1)*(x^6-1)*(x^4-1)*(x-1) in increasing powers of x.

The programs for A178795, there is no canonical definition to state claims against.
-/

/-! ## A178795.P9175431745214407234

`Δ[A325518(∑[A003000(n)])]`
-/

namespace A178795.P9175431745214407234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325518 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178795.P9175431745214407234

/-! ## A178795.P15088498852254595738

`Δ[A351819(A112653(n+2))]`
-/

namespace A178795.P15088498852254595738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351819 (A112653 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178795.P15088498852254595738

/-! ## A178795.P1466027753356111984

`round(sin(A183943(n+2)))`
-/

namespace A178795.P1466027753356111984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A183943 (n + 2) : ℝ))

end

end A178795.P1466027753356111984

/-! ## A178795.P15458511513210762827

`A054354(A036882(n+1))`
-/

namespace A178795.P15458511513210762827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A036882 (n + 1)).toNat

end

end A178795.P15458511513210762827

/-! ## A178795.P3354652125205765212

`A000494(A158156(n+1))`
-/

namespace A178795.P3354652125205765212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000494 (A158156 (n + 1)).toNat

end

end A178795.P3354652125205765212

/-!
# A178797: Number of regular octahedra that can be formed using the points in an (n+1)X(n+1)X(n+1) lattice cube.

The programs for A178797, there is no canonical definition to state claims against.
-/

/-! ## A178797.P16916391629599740433

`A341524(A154828(n))+(n²+1)*C(n, 2)`
-/

namespace A178797.P16916391629599740433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341524 (A154828 n).toNat + ((n ^ 2 + 1) * Nat.choose n 2 : ℤ)

end

end A178797.P16916391629599740433

/-! ## A178797.P17991033122179033519

`A268718(A366323(n+1))%A143126(n)`
-/

namespace A178797.P17991033122179033519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268718 (A366323 (n + 1)).toNat) (A143126 n)

end

end A178797.P17991033122179033519

/-!
# A178798: Expansion of the polynomial x^36*(x^12-1)*(x^9+1)*(x^8-1)*(x^6-1)*(x^5-1)*(x^2-1) in increasing powers of x.

The programs for A178798, there is no canonical definition to state claims against.
-/

/-! ## A178798.P13308076461890681917

`-A178780(n)^A000048(n)`
-/

namespace A178798.P13308076461890681917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A178780 n : ℚ) ^ (A000048 n : ℤ))

end

end A178798.P13308076461890681917

/-! ## A178798.P4686685623884666439

`-A178780(n)^A001628(n)`
-/

namespace A178798.P4686685623884666439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A178780 n : ℚ) ^ (A001628 n : ℤ))

end

end A178798.P4686685623884666439

/-! ## A178798.P11670361900909553435

`-A178780(n)^A014397(n)`
-/

namespace A178798.P11670361900909553435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A178780 n : ℚ) ^ (A014397 n : ℤ))

end

end A178798.P11670361900909553435

/-! ## A178798.P9387075128091838941

`-A178780(n)^A225117(n)`
-/

namespace A178798.P9387075128091838941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A178780 n : ℚ) ^ (A225117 n : ℤ))

end

end A178798.P9387075128091838941

/-! ## A178798.P15225696538888766336

`-A178780(n)^A287525(n)`
-/

namespace A178798.P15225696538888766336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A178780 n : ℚ) ^ (A287525 n : ℤ))

end

end A178798.P15225696538888766336

/-!
# A178799: Difference between consecutive least integers of each prime signature.

The programs for A178799, there is no canonical definition to state claims against.
-/

/-! ## A178799.P27075341321894654

`A025487(n+2)-A025487(n+1)`
-/

namespace A178799.P27075341321894654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 2) - A025487 (n + 1)

end

end A178799.P27075341321894654

/-! ## A178799.P6358251630092080903

`Δ[A025487(n+1)]`
-/

namespace A178799.P6358251630092080903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P6358251630092080903

/-! ## A178799.P11796912908567723030

`Δ[record[A025487(A329048(n))]]`
-/

namespace A178799.P11796912908567723030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P11796912908567723030

/-! ## A178799.P11148801075213256762

`Δ[A247451(n+1)*A307107(n+1)]`
-/

namespace A178799.P11148801075213256762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (n + 1) * A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P11148801075213256762

/-! ## A178799.P552482586900140173

`Δ[A002110(A061394(n+1))*A307107(n+1)]`
-/

namespace A178799.P552482586900140173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A061394 (n + 1)).toNat * A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P552482586900140173

/-! ## A178799.P15135241669664722206

`Δ[record[A329899(n+1)]]`
-/

namespace A178799.P15135241669664722206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P15135241669664722206

/-! ## A178799.P1681368847213135195

`Δ[record[A051466(n+2)]]`
-/

namespace A178799.P1681368847213135195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P1681368847213135195

/-! ## A178799.P8815668350092545138

`Δ[A051466(A329898(n+1))]`
-/

namespace A178799.P8815668350092545138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P8815668350092545138

/-! ## A178799.P6682186385385448784

`A329899(A329898(n+2))-record[A329899(n+1)]`
-/

namespace A178799.P6682186385385448784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A329898 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178799.P6682186385385448784

/-! ## A178799.P3032729953893979309

`Δ[record[A025487(A242112(n))]]`
-/

namespace A178799.P3032729953893979309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P3032729953893979309

/-! ## A178799.P12818027560286246580

`Δ[A055932(A331119(n+1))]`
-/

namespace A178799.P12818027560286246580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P12818027560286246580

/-! ## A178799.P5025699837830161911

`Δ[A181821(A181820(n+1))]`
-/

namespace A178799.P5025699837830161911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P5025699837830161911

/-! ## A178799.P1310396347795821251

`A329899(A330683(n+2))-record[A329899(n+1)]`
-/

namespace A178799.P1310396347795821251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 2)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178799.P1310396347795821251

/-! ## A178799.P7507329021372670744

`Δ[record[A025487(A304535(n))]]`
-/

namespace A178799.P7507329021372670744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A304535 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P7507329021372670744

/-! ## A178799.P11444748766816920912

`Δ[record[A328479(n+1)]]`
-/

namespace A178799.P11444748766816920912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178799.P11444748766816920912

