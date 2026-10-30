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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C048
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A205302: Greater of Hamming's twin primes.

The programs for A205302, the canonical program `A205302.P14954641894090934178` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205302 has offset 1).

The definition of A205302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205302.P14954641894090934178

`A065091(eq[1, A205510(n+1)]+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205302

/-- `A065091(eq[1, A205510(n+1)]+1)` -/
def P14954641894090934178.Spec : Prop :=
  ∀ n, P14954641894090934178.a n = A205302 (n + 1)

theorem P14954641894090934178.correct : P14954641894090934178.Spec := by
  intro n
  simp only [A205302, Nat.add_sub_cancel]

end A205302

/-! ## A205302.P8853422290362403134

`A000040(eq[1, A205510(n+1)]+2)`
-/

namespace A205302.P8853422290362403134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A205302.P8853422290362403134

namespace A205302

/-- `A000040(eq[1, A205510(n+1)]+2)` -/
def P8853422290362403134.Spec : Prop :=
  ∀ n, P8853422290362403134.a n = A205302 (n + 1)

end A205302

/-! ## A205302.P2553994024006775950

`record[(2-A205510(n+1))*A000040(n+2)]`
-/

namespace A205302.P2553994024006775950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A205510 (n + 1)) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205302.P2553994024006775950

namespace A205302

/-- `record[(2-A205510(n+1))*A000040(n+2)]` -/
def P2553994024006775950.Spec : Prop :=
  ∀ n, P2553994024006775950.a n = A205302 (n + 1)

end A205302

/-! ## A205302.P9240280192379484369

`A151800(A205511(n+1))`
-/

namespace A205302.P9240280192379484369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A205511 (n + 1)).toNat

end

end A205302.P9240280192379484369

namespace A205302

/-- `A151800(A205511(n+1))` -/
def P9240280192379484369.Spec : Prop :=
  ∀ n, P9240280192379484369.a n = A205302 (n + 1)

end A205302

/-! ## A205302.P4461974980777055500

`A006530(A205511(n+1)+A166597(A205511(n+1)))`
-/

namespace A205302.P4461974980777055500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A205511 (n + 1) + A166597 (A205511 (n + 1)).toNat).toNat

end

end A205302.P4461974980777055500

namespace A205302

/-- `A006530(A205511(n+1)+A166597(A205511(n+1)))` -/
def P4461974980777055500.Spec : Prop :=
  ∀ n, P4461974980777055500.a n = A205302 (n + 1)

end A205302

/-! ## A205302.P16589478615488094705

`A261080(n+1)/A205511(n+1)`
-/

namespace A205302.P16589478615488094705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261080 (n + 1) : ℚ) / (A205511 (n + 1) : ℚ)

end

end A205302.P16589478615488094705

namespace A205302

/-- `A261080(n+1)/A205511(n+1)` -/
def P16589478615488094705.Spec : Prop :=
  ∀ n, P16589478615488094705.a n = (A205302 (n + 1) : ℚ)

end A205302

/-! ## A205302.P11290185375904130329

`A003961(A205511(n+1))`
-/

namespace A205302.P11290185375904130329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A205511 (n + 1)).toNat

end

end A205302.P11290185375904130329

namespace A205302

/-- `A003961(A205511(n+1))` -/
def P11290185375904130329.Spec : Prop :=
  ∀ n, P11290185375904130329.a n = A205302 (n + 1)

end A205302

/-! ## A205302.P12020172153625468389

`p?[(n+1)*A000120(xor(n+1, A064989(n+1)))]`
-/

namespace A205302.P12020172153625468389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000120 (Int.xor (n + 1 : ℤ) (A064989 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205302.P12020172153625468389

namespace A205302

/-- `p?[(n+1)*A000120(xor(n+1, A064989(n+1)))]` -/
def P12020172153625468389.Spec : Prop :=
  ∀ n, P12020172153625468389.a n = A205302 (n + 1)

end A205302

/-!
# A205304: Number of n X n 0..3 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..3 introduced in row major order.

The programs for A205304, there is no canonical definition to state claims against.
-/

/-! ## A205304.P16315237810030869105

`A205310((n+1)²+n²)`
-/

namespace A205304.P16315237810030869105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 ((n + 1) ^ 2 + n ^ 2)

end

end A205304.P16315237810030869105

/-!
# A205305: Number of nX3 0..3 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..3 introduced in row major order.

The programs for A205305, there is no canonical definition to state claims against.
-/

/-! ## A205305.P17536194538301929504

`A205310(∑[n+2]+4)`
-/

namespace A205305.P17536194538301929504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205305.P17536194538301929504

/-! ## A205305.P2097901051381023151

`A205310(A167614(n+1))+A025469(n)`
-/

namespace A205305.P2097901051381023151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A167614 (n + 1)).toNat + A025469 n

end

end A205305.P2097901051381023151

/-! ## A205305.P15671946185167066007

`A205310(A167614(n+1))+A185036(n)`
-/

namespace A205305.P15671946185167066007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A167614 (n + 1)).toNat + A185036 n

end

end A205305.P15671946185167066007

/-! ## A205305.P7384254951859947303

`A346619(n)+A205310(A167614(n+1))`
-/

namespace A205305.P7384254951859947303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346619 n + A205310 (A167614 (n + 1)).toNat

end

end A205305.P7384254951859947303

/-! ## A205305.P9773235464866634790

`lcm(A087960(n), A205310(A167614(n+1)))`
-/

namespace A205305.P9773235464866634790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A205310 (A167614 (n + 1)).toNat)

end

end A205305.P9773235464866634790

/-!
# A205306: Number of nX4 0..3 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..3 introduced in row major order.

The programs for A205306, there is no canonical definition to state claims against.
-/

/-! ## A205306.P17166036891632221324

`A205310(A374004(n+1))`
-/

namespace A205306.P17166036891632221324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A374004 (n + 1)).toNat

end

end A205306.P17166036891632221324

/-! ## A205306.P15277094132863088422

`A205310(A141214(n)+7)`
-/

namespace A205306.P15277094132863088422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A141214 n + 7).toNat

end

end A205306.P15277094132863088422

/-! ## A205306.P17568435935264112477

`A205310(A052905(n)+9)`
-/

namespace A205306.P17568435935264112477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A052905 n + 9).toNat

end

end A205306.P17568435935264112477

/-! ## A205306.P13334033848493915116

`A205310(eq[5, A066657(n)])`
-/

namespace A205306.P13334033848493915116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205306.P13334033848493915116

/-! ## A205306.P9948905870954943614

`A205310(A167614(n+2)+1)`
-/

namespace A205306.P9948905870954943614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A167614 (n + 2) + 1).toNat

end

end A205306.P9948905870954943614

/-!
# A205307: Number of n X 5 0..3 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..3 introduced in row major order.

The programs for A205307, there is no canonical definition to state claims against.
-/

/-! ## A205307.P5493605045100631322

`A205310(A374005(n+1))`
-/

namespace A205307.P5493605045100631322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A374005 (n + 1)).toNat

end

end A205307.P5493605045100631322

/-! ## A205307.P8569493150337308879

`A205310(A051936(n+4)+14)`
-/

namespace A205307.P8569493150337308879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A051936 (n + 4) + 14).toNat

end

end A205307.P8569493150337308879

/-! ## A205307.P10813741525249991303

`A205310(Δ[A023545(n+1)])`
-/

namespace A205307.P10813741525249991303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (f1 (n + 1) - f1 n).toNat

end

end A205307.P10813741525249991303

/-!
# A205308: Number of n X 6 0..3 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..3 introduced in row major order.

The programs for A205308, there is no canonical definition to state claims against.
-/

/-! ## A205308.P3730476170422472854

`A205310(A374007(n+1))`
-/

namespace A205308.P3730476170422472854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A374007 (n + 1)).toNat

end

end A205308.P3730476170422472854

/-! ## A205308.P5061612792211107203

`A205310(A026043(n+5)-A026040(n+4))`
-/

namespace A205308.P5061612792211107203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A026043 (n + 5) - A026040 (n + 4)).toNat

end

end A205308.P5061612792211107203

/-! ## A205308.P8498121094746870674

`A205310(A155212(n+2)+3)`
-/

namespace A205308.P8498121094746870674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A155212 (n + 2) + 3).toNat

end

end A205308.P8498121094746870674

/-!
# A205310: T(n,k)=Number of nXk 0..3 arrays with no occurrence of three equal elements in a row horizontally or vertically, and new values 0..3 introduced in row major order.

The programs for A205310, there is no canonical definition to state claims against.
-/

/-! ## A205310.P17392001855919313982

`A268073(n+1)+A185036(A078391(n))`
-/

namespace A205310.P17392001855919313982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (n + 1) + A185036 (A078391 n).toNat

end

end A205310.P17392001855919313982

/-! ## A205310.P9735272154668473598

`A346619(2^n-1)+A268073(n+1)`
-/

namespace A205310.P9735272154668473598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346619 (2 ^ n - 1) + A268073 (n + 1)

end

end A205310.P9735272154668473598

/-! ## A205310.P11511464223287035423

`A318950(A319005(n))+A268073(n+1)`
-/

namespace A205310.P11511464223287035423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (A319005 n).toNat + A268073 (n + 1)

end

end A205310.P11511464223287035423

/-! ## A205310.P13177829334217104651

`A268073(n+1)-A121373(∑[A018908(n)]-n)`
-/

namespace A205310.P13177829334217104651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (n + 1) - A121373 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A205310.P13177829334217104651

/-! ## A205310.P1162746433320335308

`A268073(n+1)-A178780(A283983(2*n+1))`
-/

namespace A205310.P1162746433320335308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (n + 1) - A178780 (A283983 (2 * n + 1)).toNat

end

end A205310.P1162746433320335308

/-!
# A205311: Number of (n+1) X (n+1) 0..1 arrays with every 2 X 2 subblock having the same number of equal edges, and new values 0..1 introduced in row major order.

The programs for A205311, there is no canonical definition to state claims against.
-/

/-! ## A205311.P12143613397306932254

`A068253(n+2)+2`
-/

namespace A205311.P12143613397306932254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068253 (n + 2) + 2

end

end A205311.P12143613397306932254

/-! ## A205311.P5617831756363790849

`A205247(n+1)/2`
-/

namespace A205311.P5617831756363790849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205247 (n + 1) : ℚ) / 2

end

end A205311.P5617831756363790849

/-! ## A205311.P14872614608258980832

`A205318(∑[4*n]+1)`
-/

namespace A205311.P14872614608258980832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205318 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205311.P14872614608258980832

/-! ## A205311.P2219461993084594475

`2*(A207993(n+2)+1)`
-/

namespace A205311.P2219461993084594475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A207993 (n + 2) + 1)

end

end A205311.P2219461993084594475

/-! ## A205311.P14601152814818514368

`A203372(n+1)/2+2`
-/

namespace A205311.P14601152814818514368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203372 (n + 1) : ℚ) / 2 + 2

end

end A205311.P14601152814818514368

/-!
# A205312: Number of (n+1) X 3 0..1 arrays with every 2 X 2 subblock having the same number of equal edges, and new values 0..1 introduced in row major order.

The programs for A205312, the canonical program `A205312.P1558188739124267356` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205312 has offset 1).

The definition of A205312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205312.P14935976278643362340

`ogf((20-36x+12x^2)/(1-6x+7x^2-2x^3))`
-/

namespace A205312.P14935976278643362340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20, -36, 12] [1, -6, 7, -2] n

end

end A205312.P14935976278643362340

namespace A205312

/-- `ogf((20-36x+12x^2)/(1-6x+7x^2-2x^3))` -/
def P14935976278643362340.Spec : Prop :=
  ∀ n, P14935976278643362340.a n = A205312 (n + 1)

end A205312

/-! ## A205312.P1558188739124267356

`6*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=20, a(1)=84, a(2)=376`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205312

/-- `6*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P1558188739124267356.Spec : Prop :=
  ∀ n, P1558188739124267356.a n = A205312 (n + 1)

theorem P1558188739124267356.correct : P1558188739124267356.Spec := by
  intro n
  simp only [A205312, Nat.add_sub_cancel]

end A205312

/-! ## A205312.P4575848100832578021

`A052913(2+n)+2`
-/

namespace A205312.P4575848100832578021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 (2 + n) + 2

end

end A205312.P4575848100832578021

namespace A205312

/-- `A052913(2+n)+2` -/
def P4575848100832578021.Spec : Prop :=
  ∀ n, P4575848100832578021.a n = A205312 (n + 1)

end A205312

/-! ## A205312.P4629344270324664089

`A205249(n+1)/2`
-/

namespace A205312.P4629344270324664089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205249 (n + 1) : ℚ) / 2

end

end A205312.P4629344270324664089

namespace A205312

/-- `A205249(n+1)/2` -/
def P4629344270324664089.Spec : Prop :=
  ∀ n, P4629344270324664089.a n = (A205312 (n + 1) : ℚ)

end A205312

/-! ## A205312.P17719023590184436042

`Δ[A107839(n+1)]+2`
-/

namespace A205312.P17719023590184436042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A205312.P17719023590184436042

namespace A205312

/-- `Δ[A107839(n+1)]+2` -/
def P17719023590184436042.Spec : Prop :=
  ∀ n, P17719023590184436042.a n = A205312 (n + 1)

end A205312

/-! ## A205312.P9001259757486022677

`∑[A060801(n+2)]+6`
-/

namespace A205312.P9001259757486022677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060801 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A205312.P9001259757486022677

namespace A205312

/-- `∑[A060801(n+2)]+6` -/
def P9001259757486022677.Spec : Prop :=
  ∀ n, P9001259757486022677.a n = A205312 (n + 1)

end A205312

/-! ## A205312.P498594968965841484

`2*(A020698(n+1)+1)`
-/

namespace A205312.P498594968965841484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A020698 (n + 1) + 1)

end

end A205312.P498594968965841484

namespace A205312

/-- `2*(A020698(n+1)+1)` -/
def P498594968965841484.Spec : Prop :=
  ∀ n, P498594968965841484.a n = A205312 (n + 1)

end A205312

/-! ## A205312.P11369486097336521613

`A147722(n+3)/2+2`
-/

namespace A205312.P11369486097336521613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147722 (n + 3) : ℚ) / 2 + 2

end

end A205312.P11369486097336521613

namespace A205312

/-- `A147722(n+3)/2+2` -/
def P11369486097336521613.Spec : Prop :=
  ∀ n, P11369486097336521613.a n = (A205312 (n + 1) : ℚ)

end A205312

/-! ## A205312.P1050044267712641342

`A079162(2*n+5)+2`
-/

namespace A205312.P1050044267712641342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079162 (2 * n + 5) + 2

end

end A205312.P1050044267712641342

namespace A205312

/-- `A079162(2*n+5)+2` -/
def P1050044267712641342.Spec : Prop :=
  ∀ n, P1050044267712641342.a n = A205312 (n + 1)

end A205312

/-! ## A205312.P7694036555511361432

`A159289(n+1)+2-A052984(n+1)`
-/

namespace A205312.P7694036555511361432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159289 (n + 1) + (2 - A052984 (n + 1))

end

end A205312.P7694036555511361432

namespace A205312

/-- `A159289(n+1)+2-A052984(n+1)` -/
def P7694036555511361432.Spec : Prop :=
  ∀ n, P7694036555511361432.a n = A205312 (n + 1)

end A205312

/-! ## A205312.P2940871938210071448

`A020698(n+1)+A036453(n+2)+A020698(n+1)`
-/

namespace A205312.P2940871938210071448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 (n + 1) + (A036453 (n + 2) + A020698 (n + 1))

end

end A205312.P2940871938210071448

namespace A205312

/-- `A020698(n+1)+A036453(n+2)+A020698(n+1)` -/
def P2940871938210071448.Spec : Prop :=
  ∀ n, P2940871938210071448.a n = A205312 (n + 1)

end A205312

/-!
# A205313: Number of (n+1) X 4 0..1 arrays with every 2 X 2 subblock having the same number of equal edges, and new values 0..1 introduced in row major order.

The programs for A205313, the canonical program `A205313.P12691679931823641059` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205313 has offset 1).

The definition of A205313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205313.P11240313407753802483

`A205250(n+1)/2`
-/

namespace A205313.P11240313407753802483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205250 (n + 1) : ℚ) / 2

end

end A205313.P11240313407753802483

namespace A205313

/-- `A205250(n+1)/2` -/
def P11240313407753802483.Spec : Prop :=
  ∀ n, P11240313407753802483.a n = (A205313 (n + 1) : ℚ)

theorem P11240313407753802483.correct : P11240313407753802483.Spec := by
  intro n
  simp only [A205313, Nat.add_sub_cancel, A205313.P11240313407753802483.a, A205313.P12691679931823641059.a, A078100, A078100.P2117606517684963015.a, A205250, A205250.P15255777719180569004.a, A203373, A203373.P1730496361970884052.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205313

/-! ## A205313.P12691679931823641059

`2*(A078100(n+2)+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A205313

/-- `2*(A078100(n+2)+1)` -/
def P12691679931823641059.Spec : Prop :=
  ∀ n, P12691679931823641059.a n = A205313 (n + 1)

theorem P12691679931823641059.correct : P12691679931823641059.Spec := by
  intro n
  simp only [A205313, Nat.add_sub_cancel]

end A205313

/-! ## A205313.P14881334414231524516

`A203373(n+1)/2+2`
-/

namespace A205313.P14881334414231524516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203373 (n + 1) : ℚ) / 2 + 2

end

end A205313.P14881334414231524516

namespace A205313

/-- `A203373(n+1)/2+2` -/
def P14881334414231524516.Spec : Prop :=
  ∀ n, P14881334414231524516.a n = (A205313 (n + 1) : ℚ)

theorem P14881334414231524516.correct : P14881334414231524516.Spec := by
  intro n
  simp only [A205313, Nat.add_sub_cancel, A205313.P14881334414231524516.a, A205313.P12691679931823641059.a, A078100, A078100.P2117606517684963015.a, A203373, A203373.P1730496361970884052.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205313

/-! ## A205313.P12298419859376440593

`A206145(n+1)/3+2`
-/

namespace A205313.P12298419859376440593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206145 (n + 1) : ℚ) / 3 + 2

end

end A205313.P12298419859376440593

namespace A205313

/-- `A206145(n+1)/3+2` -/
def P12298419859376440593.Spec : Prop :=
  ∀ n, P12298419859376440593.a n = (A205313 (n + 1) : ℚ)

theorem P12298419859376440593.correct : P12298419859376440593.Spec := by
  intro n
  simp only [A205313, Nat.add_sub_cancel, A205313.P12298419859376440593.a, A205313.P12691679931823641059.a, A078100, A078100.P2117606517684963015.a, A206145, A206145.P15711629955676474029.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205313

/-! ## A205313.P1726321281453110131

`A205318(∑[n+2]+4)`
-/

namespace A205313.P1726321281453110131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205318 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205313.P1726321281453110131

namespace A205313

/-- `A205318(∑[n+2]+4)` -/
def P1726321281453110131.Spec : Prop :=
  ∀ n, P1726321281453110131.a n = A205313 (n + 1)

end A205313

/-!
# A205314: Number of (n+1) X 5 0..1 arrays with every 2 X 2 subblock having the same number of equal edges, and new values 0..1 introduced in row major order.

The programs for A205314, there is no canonical definition to state claims against.
-/

/-! ## A205314.P5425639813802107055

`2*(A207994(n+2)+1)`
-/

namespace A205314.P5425639813802107055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A207994 (n + 2) + 1)

end

end A205314.P5425639813802107055

/-! ## A205314.P17142115095527199615

`A205251(1+n)/2`
-/

namespace A205314.P17142115095527199615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205251 (1 + n) : ℚ) / 2

end

end A205314.P17142115095527199615

/-! ## A205314.P1962973023852372511

`A203374(n+1)/2+2`
-/

namespace A205314.P1962973023852372511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203374 (n + 1) : ℚ) / 2 + 2

end

end A205314.P1962973023852372511

/-! ## A205314.P5476319699728799327

`A206146(n+1)/3+2`
-/

namespace A205314.P5476319699728799327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206146 (n + 1) : ℚ) / 3 + 2

end

end A205314.P5476319699728799327

/-! ## A205314.P17125520639797561375

`A205318(A374004(n+1))`
-/

namespace A205314.P17125520639797561375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205318 (A374004 (n + 1)).toNat

end

end A205314.P17125520639797561375

/-!
# A205315: Number of (n+1)X6 0..1 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..1 introduced in row major order.

The programs for A205315, there is no canonical definition to state claims against.
-/

/-! ## A205315.P9309701531055449263

`2*(A207995(n+2)+1)`
-/

namespace A205315.P9309701531055449263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A207995 (n + 2) + 1)

end

end A205315.P9309701531055449263

/-! ## A205315.P11662361691874058081

`A205252(n+1)/2`
-/

namespace A205315.P11662361691874058081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205252 (n + 1) : ℚ) / 2

end

end A205315.P11662361691874058081

/-! ## A205315.P10091699748700012549

`A203375(n+1)/2+2`
-/

namespace A205315.P10091699748700012549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203375 (n + 1) : ℚ) / 2 + 2

end

end A205315.P10091699748700012549

/-! ## A205315.P18202465440938789036

`A206147(n+1)/3+2`
-/

namespace A205315.P18202465440938789036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206147 (n + 1) : ℚ) / 3 + 2

end

end A205315.P18202465440938789036

/-! ## A205315.P11095583439384984091

`A205318(A374005(n+1))`
-/

namespace A205315.P11095583439384984091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205318 (A374005 (n + 1)).toNat

end

end A205315.P11095583439384984091

/-!
# A205316: Number of (n+1)X7 0..1 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..1 introduced in row major order.

The programs for A205316, there is no canonical definition to state claims against.
-/

/-! ## A205316.P10007051778143290856

`2*(A207996(n+2)+1)`
-/

namespace A205316.P10007051778143290856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A207996 (n + 2) + 1)

end

end A205316.P10007051778143290856

/-! ## A205316.P10378993208445263400

`A205253(n+1)/2`
-/

namespace A205316.P10378993208445263400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205253 (n + 1) : ℚ) / 2

end

end A205316.P10378993208445263400

/-! ## A205316.P7487395876427904471

`A203376(n+1)/2+2`
-/

namespace A205316.P7487395876427904471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203376 (n + 1) : ℚ) / 2 + 2

end

end A205316.P7487395876427904471

/-! ## A205316.P17188175381546122547

`A206148(n+1)/3+2`
-/

namespace A205316.P17188175381546122547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206148 (n + 1) : ℚ) / 3 + 2

end

end A205316.P17188175381546122547

/-! ## A205316.P18051595264056291138

`4/3*A209509(n+1)/2+2`
-/

namespace A205316.P18051595264056291138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A209509 (n + 1) : ℚ) / 2 + 2

end

end A205316.P18051595264056291138

/-!
# A205317: Number of (n+1)X8 0..1 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..1 introduced in row major order.

The programs for A205317, there is no canonical definition to state claims against.
-/

/-! ## A205317.P14914518426800793881

`A205254(n+1)/2`
-/

namespace A205317.P14914518426800793881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205254 (n + 1) : ℚ) / 2

end

end A205317.P14914518426800793881

/-! ## A205317.P16712787815376961031

`A203377(n+1)/2+2`
-/

namespace A205317.P16712787815376961031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203377 (n + 1) : ℚ) / 2 + 2

end

end A205317.P16712787815376961031

/-! ## A205317.P5956022361662790900

`A206149(n+1)/3+2`
-/

namespace A205317.P5956022361662790900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206149 (n + 1) : ℚ) / 3 + 2

end

end A205317.P5956022361662790900

/-! ## A205317.P13790738402939371824

`2*(A209510(n+1)/3+1)`
-/

namespace A205317.P13790738402939371824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A209510 (n + 1) : ℚ) / 3 + 1)

end

end A205317.P13790738402939371824

/-! ## A205317.P5570041464298902210

`A206149(n+1)+2-A203377(n+1)`
-/

namespace A205317.P5570041464298902210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206149 (n + 1) + (2 - A203377 (n + 1))

end

end A205317.P5570041464298902210

/-!
# A205318: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..1 introduced in row major order.

The programs for A205318, there is no canonical definition to state claims against.
-/

/-! ## A205318.P4532857560393234324

`A205255(n+1)/2`
-/

namespace A205318.P4532857560393234324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205255 (n + 1) : ℚ) / 2

end

end A205318.P4532857560393234324

/-! ## A205318.P15857898925342423531

`A203378(n+1)/2+2`
-/

namespace A205318.P15857898925342423531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203378 (n + 1) : ℚ) / 2 + 2

end

end A205318.P15857898925342423531

/-! ## A205318.P9342293890576048633

`2*(A209511(n+1)/3+1)`
-/

namespace A205318.P9342293890576048633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A209511 (n + 1) : ℚ) / 3 + 1)

end

end A205318.P9342293890576048633

/-! ## A205318.P13958989420915453479

`A014682(A205255(n+1))`
-/

namespace A205318.P13958989420915453479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A205255 (n + 1)).toNat

end

end A205318.P13958989420915453479

/-! ## A205318.P14943976627047768898

`A319701(A203378(n+1))`
-/

namespace A205318.P14943976627047768898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (A203378 (n + 1)).toNat

end

end A205318.P14943976627047768898

/-!
# A205319: G.f.: A(x) = x + x*ITERATE^3(x + x*ITERATE^5(x + x*ITERATE^7(x + x*ITERATE^9(x + ...)))), where ITERATE^n(F(x)) denotes the n-th iteration of F(x), and the nesting of odd iterations continue indefinitely.

The programs for A205319, there is no canonical definition to state claims against.
-/

/-! ## A205319.P8067812115505151015

`A058183(A060639(n))`
-/

namespace A205319.P8067812115505151015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (A060639 n).toNat

end

end A205319.P8067812115505151015

/-!
# A205320: G.f.: A(x) = x + x*ITERATE^2(x + x*ITERATE^4(x + x*ITERATE^6(x + x*ITERATE^8(x + ...)))), where ITERATE^n(F(x)) denotes the n-th iteration of F(x), and the nesting of even iterations continue indefinitely.

The programs for A205320, there is no canonical definition to state claims against.
-/

/-! ## A205320.P6923864035205364267

`A008620(A316972(n)-∑{p}[n+1, gcd(n, #)])`
-/

namespace A205320.P6923864035205364267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A316972 n - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A205320.P6923864035205364267

/-! ## A205320.P18073429645171231048

`A008620(A316972(n)-∑{e}[n+1, #-val(#!, 2)])`
-/

namespace A205320.P18073429645171231048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A316972 n - ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat

end

end A205320.P18073429645171231048

/-!
# A205321: Smallest k>=0 such that (2^n+k)*2^n-1 and (2^n+k)*2^n+1 are a twin prime pair.

The programs for A205321, there is no canonical definition to state claims against.
-/

/-! ## A205321.P3959291760316165763

`A082466(A151821(n+1))%A034956(n+1)`
-/

namespace A205321.P3959291760316165763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082466 (A151821 (n + 1)).toNat) (A034956 (n + 1))

end

end A205321.P3959291760316165763

/-!
# A205327: Number of (n+1)X(n+1) 0..2 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..2 introduced in row major order.

The programs for A205327, there is no canonical definition to state claims against.
-/

/-! ## A205327.P3580611109244490042

`A205335((n+1)²+n²)`
-/

namespace A205327.P3580611109244490042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 ((n + 1) ^ 2 + n ^ 2)

end

end A205327.P3580611109244490042

/-!
# A205328: Number of (n+1) X 2 0..2 arrays with the number of equal 2 X 2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..2 introduced in row major order.

The programs for A205328, the canonical program `A205328.P6137803503466235427` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205328 has offset 1).

The definition of A205328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205328.P18436104748561918797

`ogf((14+16x-4x^2)/(1-4x-8x^2))`
-/

namespace A205328.P18436104748561918797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, 16, -4] [1, -4, -8] n

end

end A205328.P18436104748561918797

namespace A205328

/-- `ogf((14+16x-4x^2)/(1-4x-8x^2))` -/
def P18436104748561918797.Spec : Prop :=
  ∀ n, P18436104748561918797.a n = A205328 (n + 1)

end A205328

/-! ## A205328.P6137803503466235427

`4*a(n-1)+8*a(n-2)` with `a(0)=14, a(1)=72, a(2)=396`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205328

/-- `4*a(n-1)+8*a(n-2)` -/
def P6137803503466235427.Spec : Prop :=
  ∀ n, (P6137803503466235427.a n : ℤ) = A205328 (n + 1)

theorem P6137803503466235427.correct : P6137803503466235427.Spec := by
  intro n
  simp only [A205328, Nat.add_sub_cancel]

end A205328

/-! ## A205328.P1222139228004650267

`A205626(∑[n+1])`
-/

namespace A205328.P1222139228004650267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205328.P1222139228004650267

namespace A205328

/-- `A205626(∑[n+1])` -/
def P1222139228004650267.Spec : Prop :=
  ∀ n, P1222139228004650267.a n = A205328 (n + 1)

end A205328

/-! ## A205328.P562849122752477784

`record[A205626(A115017(n+1))]`
-/

namespace A205328.P562849122752477784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205626 (A115017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205328.P562849122752477784

namespace A205328

/-- `record[A205626(A115017(n+1))]` -/
def P562849122752477784.Spec : Prop :=
  ∀ n, P562849122752477784.a n = A205328 (n + 1)

end A205328

/-! ## A205328.P9285803465573286728

`record[gcd(A025581(n), A205626(n+1))]`
-/

namespace A205328.P9285803465573286728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A205626 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205328.P9285803465573286728

namespace A205328

/-- `record[gcd(A025581(n), A205626(n+1))]` -/
def P9285803465573286728.Spec : Prop :=
  ∀ n, (P9285803465573286728.a n : ℤ) = A205328 (n + 1)

end A205328

/-!
# A205329: Number of (n+1) X 3 0..2 arrays with the number of equal 2 X 2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..2 introduced in row major order.

The programs for A205329, the canonical program `A205329.P412884951218081079` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205329 has offset 1).

The definition of A205329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205329.P12887109598771688117

`ogf((72+162x)/(1-6x-18x^2))`
-/

namespace A205329.P12887109598771688117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [72, 162] [1, -6, -18] n

end

end A205329.P12887109598771688117

namespace A205329

/-- `ogf((72+162x)/(1-6x-18x^2))` -/
def P12887109598771688117.Spec : Prop :=
  ∀ n, P12887109598771688117.a n = A205329 (n + 1)

end A205329

/-! ## A205329.P412884951218081079

`6*a(n-1)+18*a(n-2)` with `a(0)=72, a(1)=594`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205329

/-- `6*a(n-1)+18*a(n-2)` -/
def P412884951218081079.Spec : Prop :=
  ∀ n, (P412884951218081079.a n : ℤ) = A205329 (n + 1)

theorem P412884951218081079.correct : P412884951218081079.Spec := by
  intro n
  simp only [A205329, Nat.add_sub_cancel]

end A205329

/-! ## A205329.P9096324970732010820

`3^(n+2)*A028859(n+2)`
-/

namespace A205329.P9096324970732010820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 2) : ℤ) * A028859 (n + 2)

end

end A205329.P9096324970732010820

namespace A205329

/-- `3^(n+2)*A028859(n+2)` -/
def P9096324970732010820.Spec : Prop :=
  ∀ n, P9096324970732010820.a n = A205329 (n + 1)

end A205329

/-! ## A205329.P8815848483751826073

`3^(n+1)*A121907(n+3)`
-/

namespace A205329.P8815848483751826073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) * A121907 (n + 3)

end

end A205329.P8815848483751826073

namespace A205329

/-- `3^(n+1)*A121907(n+3)` -/
def P8815848483751826073.Spec : Prop :=
  ∀ n, P8815848483751826073.a n = A205329 (n + 1)

end A205329

/-! ## A205329.P14664748700338004121

`3^(n+2)*A155020(n+3)`
-/

namespace A205329.P14664748700338004121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 2) : ℤ) * A155020 (n + 3)

end

end A205329.P14664748700338004121

namespace A205329

/-- `3^(n+2)*A155020(n+3)` -/
def P14664748700338004121.Spec : Prop :=
  ∀ n, P14664748700338004121.a n = A205329 (n + 1)

end A205329

/-! ## A205329.P10555577778504802997

`A008776(n+2)*A021006(n)`
-/

namespace A205329.P10555577778504802997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (n + 2) * A021006 n

end

end A205329.P10555577778504802997

namespace A205329

/-- `A008776(n+2)*A021006(n)` -/
def P10555577778504802997.Spec : Prop :=
  ∀ n, P10555577778504802997.a n = A205329 (n + 1)

end A205329

/-! ## A205329.P12129483507660011178

`9*A008776(n)*A021006(n)`
-/

namespace A205329.P12129483507660011178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A008776 n * A021006 n)

end

end A205329.P12129483507660011178

namespace A205329

/-- `9*A008776(n)*A021006(n)` -/
def P12129483507660011178.Spec : Prop :=
  ∀ n, P12129483507660011178.a n = A205329 (n + 1)

end A205329

/-! ## A205329.P9627301005488549320

`(A002605(n+2)+A002605(n+3))*A000244(n+2)`
-/

namespace A205329.P9627301005488549320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002605 (n + 2) + A002605 (n + 3)) * A000244 (n + 2)

end

end A205329.P9627301005488549320

namespace A205329

/-- `(A002605(n+2)+A002605(n+3))*A000244(n+2)` -/
def P9627301005488549320.Spec : Prop :=
  ∀ n, P9627301005488549320.a n = A205329 (n + 1)

end A205329

/-!
# A205330: Number of (n+1)X4 0..2 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..2 introduced in row major order.

The programs for A205330, there is no canonical definition to state claims against.
-/

/-! ## A205330.P9497648344604716365

`A205335(∑[n+2]+4)`
-/

namespace A205330.P9497648344604716365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205330.P9497648344604716365

/-! ## A205330.P5285549580479636483

`lcm(2, A205335(A167614(n+1)))`
-/

namespace A205330.P5285549580479636483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205335 (A167614 (n + 1)).toNat)

end

end A205330.P5285549580479636483

/-! ## A205330.P304551082100846857

`record[A205335(A115017(n+1)+3)]`
-/

namespace A205330.P304551082100846857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A115017 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205330.P304551082100846857

/-! ## A205330.P10800358346253754674

`A205335(A167614(n+1))*A304042(n)`
-/

namespace A205330.P10800358346253754674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A167614 (n + 1)).toNat * A304042 n

end

end A205330.P10800358346253754674

/-! ## A205330.P17898989276174487018

`A205335(A167614(n+1))*A215788(n+1)`
-/

namespace A205330.P17898989276174487018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A167614 (n + 1)).toNat * A215788 (n + 1)

end

end A205330.P17898989276174487018

/-!
# A205331: Number of (n+1)X5 0..2 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..2 introduced in row major order.

The programs for A205331, there is no canonical definition to state claims against.
-/

/-! ## A205331.P10983466691788456040

`A205335(A052905(n)+9)`
-/

namespace A205331.P10983466691788456040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A052905 n + 9).toNat

end

end A205331.P10983466691788456040

/-! ## A205331.P8426071345708726459

`A205335(eq[5, A066657(n)])`
-/

namespace A205331.P8426071345708726459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205331.P8426071345708726459

/-! ## A205331.P11996125382950515232

`A205335(A167614(n+2)+1)`
-/

namespace A205331.P11996125382950515232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A167614 (n + 2) + 1).toNat

end

end A205331.P11996125382950515232

/-! ## A205331.P9544405388152021722

`A205335(A166136(n+2)-2)`
-/

namespace A205331.P9544405388152021722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A166136 (n + 2) - 2).toNat

end

end A205331.P9544405388152021722

/-! ## A205331.P5160664006766803957

`A205335(A000217(n+3)+4)`
-/

namespace A205331.P5160664006766803957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A000217 (n + 3) + 4).toNat

end

end A205331.P5160664006766803957

/-!
# A205332: Number of (n+1)X6 0..2 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..2 introduced in row major order.

The programs for A205332, there is no canonical definition to state claims against.
-/

/-! ## A205332.P11941033534145280068

`A205335(eq[6, A131818(n+1)])`
-/

namespace A205332.P11941033534145280068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205332.P11941033534145280068

/-! ## A205332.P12760731541188795613

`A205335(A374005(n+1))`
-/

namespace A205332.P12760731541188795613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A374005 (n + 1)).toNat

end

end A205332.P12760731541188795613

/-! ## A205332.P11068319193924269685

`A205335(eq[4, A193592(n)])`
-/

namespace A205332.P11068319193924269685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205332.P11068319193924269685

/-! ## A205332.P13689839261449059884

`A205335(Δ[A023545(n+1)])`
-/

namespace A205332.P13689839261449059884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (f1 (n + 1) - f1 n).toNat

end

end A205332.P13689839261449059884

/-! ## A205332.P14197344343912372342

`A205335(eq[6, A185782(n+1)])`
-/

namespace A205332.P14197344343912372342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205332.P14197344343912372342

/-!
# A205333: Number of (n+1)X7 0..2 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..2 introduced in row major order.

The programs for A205333, there is no canonical definition to state claims against.
-/

/-! ## A205333.P2412278571278380679

`A205335(A166136(n+4))`
-/

namespace A205333.P2412278571278380679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A166136 (n + 4)).toNat

end

end A205333.P2412278571278380679

/-! ## A205333.P15572679233359856491

`A205335(A167499(n+4)+1)`
-/

namespace A205333.P15572679233359856491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A167499 (n + 4) + 1).toNat

end

end A205333.P15572679233359856491

/-! ## A205333.P16191266008423664485

`A205335(A000217(n+5)+6)`
-/

namespace A205333.P16191266008423664485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A000217 (n + 5) + 6).toNat

end

end A205333.P16191266008423664485

/-! ## A205333.P18315712320810857388

`A205335(eq[7, A131818(n+1)])`
-/

namespace A205333.P18315712320810857388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205333.P18315712320810857388

/-!
# A205334: Number of (n+1)X8 0..2 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..2 introduced in row major order.

The programs for A205334, there is no canonical definition to state claims against.
-/

/-! ## A205334.P10385429051897431422

`A205335(A374008(n+1))`
-/

namespace A205334.P10385429051897431422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A374008 (n + 1)).toNat

end

end A205334.P10385429051897431422

/-! ## A205334.P13670866062655170103

`A205335(A168106(n)-6)`
-/

namespace A205334.P13670866062655170103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (A168106 n - 6).toNat

end

end A205334.P13670866062655170103

/-!
# A205335: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..2 introduced in row major order.

The programs for A205335, there is no canonical definition to state claims against.
-/

/-! ## A205335.P17004003802745056045

`A190899(a(n-2))*A190899(n)` with `a(0)=14, a(1)=72, a(2)=72`
-/

namespace A205335.P17004003802745056045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14, 72, 72] fun n a =>
  A190899 (a (n - 2)).toNat * A190899 n

end

end A205335.P17004003802745056045

/-!
# A205336: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than 3.

The programs for A205336, there is no canonical definition to state claims against.
-/

/-! ## A205336.P168242066487951787

`A205341(∑[n+3]+1)`
-/

namespace A205336.P168242066487951787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205336.P168242066487951787

/-! ## A205336.P9647593812081648058

`A205341(A034856(n+2))+C(n, n+7)`
-/

namespace A205336.P9647593812081648058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A034856 (n + 2)).toNat + (Nat.choose n (n + 7) : ℤ)

end

end A205336.P9647593812081648058

/-! ## A205336.P11853433991221804606

`A057427(n)*A205341(Δ[A008778(n)])`
-/

namespace A205336.P11853433991221804606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A205341 (f1 (n + 1) - f1 n).toNat

end

end A205336.P11853433991221804606

/-! ## A205336.P3295367175154572591

`A158388(n)*A205341(Δ[A008778(n)])`
-/

namespace A205336.P3295367175154572591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A205341 (f1 (n + 1) - f1 n).toNat

end

end A205336.P3295367175154572591

/-! ## A205336.P3234539328983735614

`A205341(Δ[A008778(n)])%A005502(n)`
-/

namespace A205336.P3234539328983735614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205341 (f1 (n + 1) - f1 n).toNat) (A005502 n)

end

end A205336.P3234539328983735614

/-! ## A205336.P10777753797424870257

`A205341(A034856(n+2))%A083224(n)`
-/

namespace A205336.P10777753797424870257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205341 (A034856 (n + 2)).toNat) (A083224 n)

end

end A205336.P10777753797424870257

/-! ## A205336.P11745515786180601704

`lcm(A130151(n), A205341(A034856(n+2)))`
-/

namespace A205336.P11745515786180601704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130151 n) (A205341 (A034856 (n + 2)).toNat)

end

end A205336.P11745515786180601704

/-! ## A205336.P9193211384278484402

`A205341(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A205336.P9193211384278484402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A205336.P9193211384278484402

/-! ## A205336.P5892140246288946102

`A105812(n+1)²*A205341(Δ[A008778(n)])`
-/

namespace A205336.P5892140246288946102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (n + 1) ^ 2 * A205341 (f1 (n + 1) - f1 n).toNat

end

end A205336.P5892140246288946102

/-! ## A205336.P4799395487806835795

`A065803(n+1)!*A205341(Δ[A008778(n)])`
-/

namespace A205336.P4799395487806835795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A065803 (n + 1)).toNat : ℤ) * A205341 (f1 (n + 1) - f1 n).toNat

end

end A205336.P4799395487806835795

/-!
# A205337: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than 4.

The programs for A205337, there is no canonical definition to state claims against.
-/

/-! ## A205337.P13141009646291686521

`A205341(A046691(n+2)+1)`
-/

namespace A205337.P13141009646291686521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A046691 (n + 2) + 1).toNat

end

end A205337.P13141009646291686521

/-! ## A205337.P12904337117868497500

`A205341(A052905(n+1)+2)`
-/

namespace A205337.P12904337117868497500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A052905 (n + 1) + 2).toNat

end

end A205337.P12904337117868497500

/-! ## A205337.P16526941129622885795

`A205341(A034856(n+3)-1)`
-/

namespace A205337.P16526941129622885795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A034856 (n + 3) - 1).toNat

end

end A205337.P16526941129622885795

/-! ## A205337.P11049517535516785779

`A205341(A000217(n+4)-3)`
-/

namespace A205337.P11049517535516785779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000217 (n + 4) - 3).toNat

end

end A205337.P11049517535516785779

/-! ## A205337.P1685090991686698810

`A205341(A000124(n+4)-4)`
-/

namespace A205337.P1685090991686698810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000124 (n + 4) - 4).toNat

end

end A205337.P1685090991686698810

/-! ## A205337.P12955465776496062910

`A205341(Δ[A008778(n+1)]-1)`
-/

namespace A205337.P12955465776496062910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (f1 (n + 1) - f1 n - 1).toNat

end

end A205337.P12955465776496062910

/-! ## A205337.P11709715694330060320

`A205341(A000096(n+2)+n+2)`
-/

namespace A205337.P11709715694330060320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000096 (n + 2) + (n + 2 : ℤ)).toNat

end

end A205337.P11709715694330060320

/-! ## A205337.P10243643183313033501

`A205341(A167499(n)+A016777(n))`
-/

namespace A205337.P10243643183313033501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A167499 n + A016777 n).toNat

end

end A205337.P10243643183313033501

/-!
# A205338: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than 5.

The programs for A205338, there is no canonical definition to state claims against.
-/

/-! ## A205338.P13049281739832484479

`A205341(∑[n+5]+6)`
-/

namespace A205338.P13049281739832484479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A205338.P13049281739832484479

/-! ## A205338.P9865286789309673393

`record[A205341(A046691(A193738(n)))]`
-/

namespace A205338.P9865286789309673393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A046691 (A193738 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205338.P9865286789309673393

/-! ## A205338.P10788941154754349774

`record[A205341(A046691(A344180(n)))]`
-/

namespace A205338.P10788941154754349774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A046691 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205338.P10788941154754349774

/-! ## A205338.P7706273701406059085

`A158388(n)*A205341(A046691(n+3))`
-/

namespace A205338.P7706273701406059085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A205341 (A046691 (n + 3)).toNat

end

end A205338.P7706273701406059085

/-! ## A205338.P3853838862693218913

`A000041(C(2, n+2))*A205341(A046691(n+3))`
-/

namespace A205338.P3853838862693218913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A205341 (A046691 (n + 3)).toNat

end

end A205338.P3853838862693218913

/-! ## A205338.P18346370428552086477

`A000041(A014963(40*(n+1)))*A205341(A046691(n+3))`
-/

namespace A205338.P18346370428552086477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A014963 (40 * (n + 1))).toNat * A205341 (A046691 (n + 3)).toNat

end

end A205338.P18346370428552086477

/-!
# A205339: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than 6.

The programs for A205339, there is no canonical definition to state claims against.
-/

/-! ## A205339.P3867739920721407724

`A205341(A052905(n+3))`
-/

namespace A205339.P3867739920721407724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A052905 (n + 3)).toNat

end

end A205339.P3867739920721407724

/-! ## A205339.P16108553876831403897

`A205341(A046691(n+4)-1)`
-/

namespace A205339.P16108553876831403897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A046691 (n + 4) - 1).toNat

end

end A205339.P16108553876831403897

/-! ## A205339.P1533361284219536331

`A205341(A051936(n+6)+4)`
-/

namespace A205339.P1533361284219536331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A051936 (n + 6) + 4).toNat

end

end A205339.P1533361284219536331

/-! ## A205339.P18301726392828938737

`A205341(A000217(n+6)-5)`
-/

namespace A205339.P18301726392828938737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000217 (n + 6) - 5).toNat

end

end A205339.P18301726392828938737

/-! ## A205339.P643308621011307215

`A205341(A000124(n+6)-6)`
-/

namespace A205339.P643308621011307215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000124 (n + 6) - 6).toNat

end

end A205339.P643308621011307215

/-! ## A205339.P9614434578932707687

`A205341(Δ[A023545(n+2)]-1)`
-/

namespace A205339.P9614434578932707687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (f1 (n + 1) - f1 n - 1).toNat

end

end A205339.P9614434578932707687

/-!
# A205340: Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than 7.

The programs for A205340, there is no canonical definition to state claims against.
-/

/-! ## A205340.P1189891058754430347

`A205341(A055999(n+4))`
-/

namespace A205340.P1189891058754430347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A055999 (n + 4)).toNat

end

end A205340.P1189891058754430347

/-! ## A205340.P6208721993370079046

`A205341(A052905(n+4)-1)`
-/

namespace A205340.P6208721993370079046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A052905 (n + 4) - 1).toNat

end

end A205340.P6208721993370079046

/-! ## A205340.P13276753505070344670

`A205341(A000217(n+7)-6)`
-/

namespace A205340.P13276753505070344670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000217 (n + 7) - 6).toNat

end

end A205340.P13276753505070344670

/-! ## A205340.P7511978082875108151

`A205341(A000124(n+7)-7)`
-/

namespace A205340.P7511978082875108151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000124 (n + 7) - 7).toNat

end

end A205340.P7511978082875108151

/-! ## A205340.P11300580497265604813

`A205341(A000096(n+5)+n+2)`
-/

namespace A205340.P11300580497265604813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A205340.P11300580497265604813

/-! ## A205340.P16298897514300514684

`A205341(A166136(n+4)+2*n+1)`
-/

namespace A205340.P16298897514300514684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A205340.P16298897514300514684

/-! ## A205340.P853675231498555866

`A205341(A005408(n)+Δ[A023545(n+1)]+10)`
-/

namespace A205340.P853675231498555866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A005408 n + (f1 (n + 1) - f1 n + 10)).toNat

end

end A205340.P853675231498555866

/-!
# A205341: T(n,k)=Number of length n+1 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than k.

The programs for A205341, there is no canonical definition to state claims against.
-/

/-! ## A205341.P8352948418017744508

`A060475(n)-A155091(A166350(n+1))`
-/

namespace A205341.P8352948418017744508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 n - A155091 (A166350 (n + 1)).toNat

end

end A205341.P8352948418017744508

/-! ## A205341.P8471421722483971997

`A334361(A108767(n+1))`
-/

namespace A205341.P8471421722483971997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334361 (A108767 (n + 1)).toNat

end

end A205341.P8471421722483971997

/-! ## A205341.P11844228597771572948

`and(Δ[A327014(n)], A327028(n))`
-/

namespace A205341.P11844228597771572948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A327028 n)

end

end A205341.P11844228597771572948

/-! ## A205341.P15183930264668703412

`A327028(n)%A088519(A137594(n))`
-/

namespace A205341.P15183930264668703412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327028 n) (A088519 (A137594 n).toNat)

end

end A205341.P15183930264668703412

/-! ## A205341.P6730641298678303637

`A188333(n+1)-A265648(A156953(n))`
-/

namespace A205341.P6730641298678303637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188333 (n + 1) - A265648 (A156953 n).toNat

end

end A205341.P6730641298678303637

/-!
# A205342: Number of length 5 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than n.

The programs for A205342, the canonical program `A205342.P9515682472239979511` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205342 has offset 1).

The definition of A205342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205342.P9515682472239979511

`∑[3+∑[8*n-1]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205342

/-- `∑[3+∑[8*n-1]]` -/
def P9515682472239979511.Spec : Prop :=
  ∀ n, P9515682472239979511.a n = A205342 (n + 1)

theorem P9515682472239979511.correct : P9515682472239979511.Spec := by
  intro n
  simp only [A205342, Nat.add_sub_cancel]

end A205342

/-! ## A205342.P2804890469765675478

`ogf((2+3x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A205342.P2804890469765675478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 3] [1, -4, 6, -4, 1] n

end

end A205342.P2804890469765675478

namespace A205342

/-- `ogf((2+3x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P2804890469765675478.Spec : Prop :=
  ∀ n, P2804890469765675478.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P15973579833356392048

`abs(∑[∑[a(n-1)+8]])` with `a(0)=2, a(1)=7`
-/

namespace A205342.P15973579833356392048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205342.P15973579833356392048

namespace A205342

/-- `abs(∑[∑[a(n-1)+8]])` -/
def P15973579833356392048.Spec : Prop :=
  ∀ n, (P15973579833356392048.a n : ℤ) = A205342 (n + 1)

end A205342

/-! ## A205342.P16113288018744059585

`floor(∑[∑[a(n-1)+8]])` with `a(0)=2, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A205342.P16113288018744059585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205342.P16113288018744059585

namespace A205342

/-- `floor(∑[∑[a(n-1)+8]])` -/
def P16113288018744059585.Spec : Prop :=
  ∀ n, (P16113288018744059585.a n : ℤ) = A205342 (n + 1)

end A205342

/-! ## A205342.P8637156079512735033

`ceil(∑[∑[a(n-1)+8]])` with `a(0)=2, a(1)=7`

`ceil` is left out, it is the identity on integers.
-/

namespace A205342.P8637156079512735033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205342.P8637156079512735033

namespace A205342

/-- `ceil(∑[∑[a(n-1)+8]])` -/
def P8637156079512735033.Spec : Prop :=
  ∀ n, (P8637156079512735033.a n : ℤ) = A205342 (n + 1)

end A205342

/-! ## A205342.P17957060081397434361

`-∑[n-1-or(1, 2*n)²]`
-/

namespace A205342.P17957060081397434361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (Nat.lor 1 (2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205342.P17957060081397434361

namespace A205342

/-- `-∑[n-1-or(1, 2*n)²]` -/
def P17957060081397434361.Spec : Prop :=
  ∀ n, P17957060081397434361.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P15382701195338042454

`-∑[n-1-xor(1, 2*n)²]`
-/

namespace A205342.P15382701195338042454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (Nat.xor 1 (2 * n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205342.P15382701195338042454

namespace A205342

/-- `-∑[n-1-xor(1, 2*n)²]` -/
def P15382701195338042454.Spec : Prop :=
  ∀ n, P15382701195338042454.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P9067814052131693219

`∑[xor(3, (n+1+n)²)]-∑[n]`
-/

namespace A205342.P9067814052131693219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 ((n + 1 + n) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A205342.P9067814052131693219

namespace A205342

/-- `∑[xor(3, (n+1+n)²)]-∑[n]` -/
def P9067814052131693219.Spec : Prop :=
  ∀ n, P9067814052131693219.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P1457895656644507061

`∑[∑[a(n-1)+8]]-(n+1)` with `a(0)=3, a(1)=7`
-/

namespace A205342.P1457895656644507061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A205342.P1457895656644507061

namespace A205342

/-- `∑[∑[a(n-1)+8]]-(n+1)` -/
def P1457895656644507061.Spec : Prop :=
  ∀ n, P1457895656644507061.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P14579713222599486087

`a(n-1)+Δ[n²]²-(n-1)` with `a(0)=2`
-/

namespace A205342.P14579713222599486087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - ((n : ℤ) - 1))

end

end A205342.P14579713222599486087

namespace A205342

/-- `a(n-1)+Δ[n²]²-(n-1)` -/
def P14579713222599486087.Spec : Prop :=
  ∀ n, P14579713222599486087.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P10048871167731314531

`Δ[n²]²-(n-1-a(n-1))` with `a(0)=2`
-/

namespace A205342.P10048871167731314531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - ((n : ℤ) - 1 - a (n - 1))

end

end A205342.P10048871167731314531

namespace A205342

/-- `Δ[n²]²-(n-1-a(n-1))` -/
def P10048871167731314531.Spec : Prop :=
  ∀ n, P10048871167731314531.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P2841796888131020554

`∑[or(2, (n+1+n)²)]-∑[n+1]`
-/

namespace A205342.P2841796888131020554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((n + 1 + n) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A205342.P2841796888131020554

namespace A205342

/-- `∑[or(2, (n+1+n)²)]-∑[n+1]` -/
def P2841796888131020554.Spec : Prop :=
  ∀ n, P2841796888131020554.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P1539176646692363698

`∑[2*C(2*n+1, 2)]+∑[n+2]`
-/

namespace A205342.P1539176646692363698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A205342.P1539176646692363698

namespace A205342

/-- `∑[2*C(2*n+1, 2)]+∑[n+2]` -/
def P1539176646692363698.Spec : Prop :=
  ∀ n, (P1539176646692363698.a n : ℤ) = A205342 (n + 1)

end A205342

/-! ## A205342.P1338622170826466369

`∑[2*lcm(n, 2*n+1)]+∑[n+2]`
-/

namespace A205342.P1338622170826466369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A205342.P1338622170826466369

namespace A205342

/-- `∑[2*lcm(n, 2*n+1)]+∑[n+2]` -/
def P1338622170826466369.Spec : Prop :=
  ∀ n, (P1338622170826466369.a n : ℤ) = A205342 (n + 1)

end A205342

/-! ## A205342.P6514097584493715098

`1-n+a(n-1)+(2*n+1)²` with `a(0)=2`
-/

namespace A205342.P6514097584493715098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - (n : ℤ) + (a (n - 1) + ((2 * n + 1) ^ 2 : ℤ))

end

end A205342.P6514097584493715098

namespace A205342

/-- `1-n+a(n-1)+(2*n+1)²` -/
def P6514097584493715098.Spec : Prop :=
  ∀ n, P6514097584493715098.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P9536354354274882405

`a(n-1)+(2*n+1)*2*n+n+2` with `a(0)=2`
-/

namespace A205342.P9536354354274882405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (2 * n + 1) * (2 * n) + (n + 2)

end

end A205342.P9536354354274882405

namespace A205342

/-- `a(n-1)+(2*n+1)*2*n+n+2` -/
def P9536354354274882405.Spec : Prop :=
  ∀ n, (P9536354354274882405.a n : ℤ) = A205342 (n + 1)

end A205342

/-! ## A205342.P17685527240024190450

`∑[(2*n+1)*and(2*n+1, 2*n)]+∑[n+2]`
-/

namespace A205342.P17685527240024190450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.land (2 * n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A205342.P17685527240024190450

namespace A205342

/-- `∑[(2*n+1)*and(2*n+1, 2*n)]+∑[n+2]` -/
def P17685527240024190450.Spec : Prop :=
  ∀ n, (P17685527240024190450.a n : ℤ) = A205342 (n + 1)

end A205342

/-! ## A205342.P14950802161407855622

`A051662(n)+1+n`
-/

namespace A205342.P14950802161407855622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051662 n + 1 + (n : ℤ)

end

end A205342.P14950802161407855622

namespace A205342

/-- `A051662(n)+1+n` -/
def P14950802161407855622.Spec : Prop :=
  ∀ n, P14950802161407855622.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P365858468554045660

`A035597(n+1)-∑[n]`
-/

namespace A205342.P365858468554045660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A205342.P365858468554045660

namespace A205342

/-- `A035597(n+1)-∑[n]` -/
def P365858468554045660.Spec : Prop :=
  ∀ n, P365858468554045660.a n = A205342 (n + 1)

end A205342

/-! ## A205342.P14036373559713140643

`A034262(n+1)+∑[n²]`
-/

namespace A205342.P14036373559713140643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A205342.P14036373559713140643

namespace A205342

/-- `A034262(n+1)+∑[n²]` -/
def P14036373559713140643.Spec : Prop :=
  ∀ n, P14036373559713140643.a n = A205342 (n + 1)

end A205342

/-!
# A205343: Number of length 6 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than n.

The programs for A205343, the canonical program `A205343.P12506193159916647481` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205343 has offset 1).

The definition of A205343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205343.P15143877287058694804

`ogf((24x+18x^2+4x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A205343.P15143877287058694804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24, 18, 4] [1, -5, 10, -10, 5, -1] n

end

end A205343.P15143877287058694804

namespace A205343

/-- `ogf((24x+18x^2+4x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P15143877287058694804.Spec : Prop :=
  ∀ n, P15143877287058694804.a n = A205343 (n + 1)

end A205343

/-! ## A205343.P12663023275314910698

`23/12*(n+1)^4-1/2*(n+1)^3+1/12*(n+1)²-3/2*(n+1)`
-/

namespace A205343.P12663023275314910698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) / 12 * ((n + 1) ^ 4 : ℚ) - (1 : ℚ) / 2 * ((n + 1) ^ 3 : ℚ) + (1 : ℚ) / 12 * ((n + 1) ^ 2 : ℚ) - (3 : ℚ) / 2 * (n + 1 : ℚ)

end

end A205343.P12663023275314910698

namespace A205343

/-- `23/12*(n+1)^4-1/2*(n+1)^3+1/12*(n+1)²-3/2*(n+1)` -/
def P12663023275314910698.Spec : Prop :=
  ∀ n, P12663023275314910698.a n = (A205343 (n + 1) : ℚ)

end A205343

/-! ## A205343.P12506193159916647481

`∑[∑[A010013(n)]-A143689(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A205343

/-- `∑[∑[A010013(n)]-A143689(n)]` -/
def P12506193159916647481.Spec : Prop :=
  ∀ n, P12506193159916647481.a n = A205343 (n + 1)

theorem P12506193159916647481.correct : P12506193159916647481.Spec := by
  intro n
  simp only [A205343, Nat.add_sub_cancel]

end A205343

/-! ## A205343.P1538184298586705793

`∑[A004068(2*n+1)+n^3-1+n]`
-/

namespace A205343.P1538184298586705793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004068 (2 * n + 1) + ((n ^ 3 : ℤ) - 1 + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205343.P1538184298586705793

namespace A205343

/-- `∑[A004068(2*n+1)+n^3-1+n]` -/
def P1538184298586705793.Spec : Prop :=
  ∀ n, P1538184298586705793.a n = A205343 (n + 1)

end A205343

/-! ## A205343.P7714777269081317141

`A205341(A167499(n+3))`
-/

namespace A205343.P7714777269081317141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A167499 (n + 3)).toNat

end

end A205343.P7714777269081317141

namespace A205343

/-- `A205341(A167499(n+3))` -/
def P7714777269081317141.Spec : Prop :=
  ∀ n, P7714777269081317141.a n = A205343 (n + 1)

end A205343

/-! ## A205343.P12437076105512293385

`A205341(A167614(n+3)+2)`
-/

namespace A205343.P12437076105512293385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A167614 (n + 3) + 2).toNat

end

end A205343.P12437076105512293385

namespace A205343

/-- `A205341(A167614(n+3)+2)` -/
def P12437076105512293385.Spec : Prop :=
  ∀ n, P12437076105512293385.a n = A205343 (n + 1)

end A205343

/-! ## A205343.P2547427015886506453

`A205341(A000217(n+4)+5)`
-/

namespace A205343.P2547427015886506453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000217 (n + 4) + 5).toNat

end

end A205343.P2547427015886506453

namespace A205343

/-- `A205341(A000217(n+4)+5)` -/
def P2547427015886506453.Spec : Prop :=
  ∀ n, P2547427015886506453.a n = A205343 (n + 1)

end A205343

/-! ## A205343.P4027801957449808502

`A205341(A038722(Δ[A023545(n+1)]))`
-/

namespace A205343.P4027801957449808502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A205343.P4027801957449808502

namespace A205343

/-- `A205341(A038722(Δ[A023545(n+1)]))` -/
def P4027801957449808502.Spec : Prop :=
  ∀ n, P4027801957449808502.a n = A205343 (n + 1)

end A205343

/-!
# A205344: Number of length 7 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than n.

The programs for A205344, the canonical program `A205344.P17931602201929245885` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205344 has offset 1).

The definition of A205344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205344.P11752131293585853103

`ogf((5+63x+206x^2+73x^3+5x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A205344.P11752131293585853103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 63, 206, 73, 5] [1, -6, 15, -20, 15, -6, 1] n

end

end A205344.P11752131293585853103

namespace A205344

/-- `ogf((5+63x+206x^2+73x^3+5x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P11752131293585853103.Spec : Prop :=
  ∀ n, P11752131293585853103.a n = A205344 (n + 1)

end A205344

/-! ## A205344.P17931602201929245885

`44/15*(n+1)^5-5/12*(n+1)^4+5/12*(n+1)²+31/15*(n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205344

/-- `44/15*(n+1)^5-5/12*(n+1)^4+5/12*(n+1)²+31/15*(n+1)` -/
def P17931602201929245885.Spec : Prop :=
  ∀ n, P17931602201929245885.a n = (A205344 (n + 1) : ℚ)

end A205344

/-! ## A205344.P18195147948254447878

`A205341(A167499(n+4)+1)`
-/

namespace A205344.P18195147948254447878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A167499 (n + 4) + 1).toNat

end

end A205344.P18195147948254447878

namespace A205344

/-- `A205341(A167499(n+4)+1)` -/
def P18195147948254447878.Spec : Prop :=
  ∀ n, P18195147948254447878.a n = A205344 (n + 1)

end A205344

/-! ## A205344.P1786663570353346650

`A205341(A000124(n+5)+5)`
-/

namespace A205344.P1786663570353346650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000124 (n + 5) + 5).toNat

end

end A205344.P1786663570353346650

namespace A205344

/-- `A205341(A000124(n+5)+5)` -/
def P1786663570353346650.Spec : Prop :=
  ∀ n, P1786663570353346650.a n = A205344 (n + 1)

end A205344

/-! ## A205344.P12785861769662333235

`A205341(A000217(n+5)+6)`
-/

namespace A205344.P12785861769662333235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000217 (n + 5) + 6).toNat

end

end A205344.P12785861769662333235

namespace A205344

/-- `A205341(A000217(n+5)+6)` -/
def P12785861769662333235.Spec : Prop :=
  ∀ n, P12785861769662333235.a n = A205344 (n + 1)

end A205344

/-! ## A205344.P12717054190491206042

`A205341(Δ[A023545(n+1)]+10)`
-/

namespace A205344.P12717054190491206042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (f1 (n + 1) - f1 n + 10).toNat

end

end A205344.P12717054190491206042

namespace A205344

/-- `A205341(Δ[A023545(n+1)]+10)` -/
def P12717054190491206042.Spec : Prop :=
  ∀ n, P12717054190491206042.a n = A205344 (n + 1)

end A205344

/-! ## A205344.P3941027934202861618

`A205341(eq[7, A004736(n+1)]-2*n)`
-/

namespace A205344.P3941027934202861618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A205344.P3941027934202861618

namespace A205344

/-- `A205341(eq[7, A004736(n+1)]-2*n)` -/
def P3941027934202861618.Spec : Prop :=
  ∀ n, P3941027934202861618.a n = A205344 (n + 1)

end A205344

/-!
# A205345: Number of length 8 nonnegative integer arrays starting and ending with 0 with adjacent elements unequal but differing by no more than n.

The programs for A205345, there is no canonical definition to state claims against.
-/

/-! ## A205345.P2073324232175352235

`A205341(A167487(n+5))`
-/

namespace A205345.P2073324232175352235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A167487 (n + 5)).toNat

end

end A205345.P2073324232175352235

/-! ## A205345.P9326393367959247876

`A205341(A166136(n+5)+1)`
-/

namespace A205345.P9326393367959247876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A166136 (n + 5) + 1).toNat

end

end A205345.P9326393367959247876

/-! ## A205345.P15164539082276656360

`A205341(A167499(n+5)+2)`
-/

namespace A205345.P15164539082276656360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A167499 (n + 5) + 2).toNat

end

end A205345.P15164539082276656360

/-! ## A205345.P279102321670079690

`A205341(A167614(n+5)+4)`
-/

namespace A205345.P279102321670079690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A167614 (n + 5) + 4).toNat

end

end A205345.P279102321670079690

/-! ## A205345.P5949406737113347095

`A205341(A152950(n+7)+4)`
-/

namespace A205345.P5949406737113347095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A152950 (n + 7) + 4).toNat

end

end A205345.P5949406737113347095

/-! ## A205345.P1720369553873671409

`A205341(A000096(n+5)+8)`
-/

namespace A205345.P1720369553873671409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000096 (n + 5) + 8).toNat

end

end A205345.P1720369553873671409

/-! ## A205345.P2311558576030711512

`A205341(A000217(n+6)+7)`
-/

namespace A205345.P2311558576030711512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A000217 (n + 6) + 7).toNat

end

end A205345.P2311558576030711512

/-! ## A205345.P10349872382857105562

`A205341(A016825(n+6)+∑[n+2])`
-/

namespace A205345.P10349872382857105562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205341 (A016825 (n + 6) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A205345.P10349872382857105562

/-!
# A205346: Number of (n+1)X(n+1) 0..3 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205346, there is no canonical definition to state claims against.
-/

/-! ## A205346.P15337057687176001198

`A205352(∑[4*n]+1)`
-/

namespace A205346.P15337057687176001198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205346.P15337057687176001198

/-!
# A205347: Number of (n+1) X 2 0..3 arrays with no 2 X 2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205347, there is no canonical definition to state claims against.
-/

/-! ## A205347.P10091027573979980788

`A205609(∑[n+1])`
-/

namespace A205347.P10091027573979980788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205347.P10091027573979980788

/-! ## A205347.P890944771891428525

`record[A113680(n)*A205609(n+1)]`
-/

namespace A205347.P890944771891428525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113680 n * A205609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205347.P890944771891428525

/-! ## A205347.P11733737912948358892

`record[root(A205609(n+1), A039757(n))]`
-/

namespace A205347.P11733737912948358892
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205609 (n + 1) : ℝ) ^ (1 / (A039757 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205347.P11733737912948358892

/-! ## A205347.P482334961735968515

`record[root(A205609(n+1), A059298(n))]`
-/

namespace A205347.P482334961735968515
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205609 (n + 1) : ℝ) ^ (1 / (A059298 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205347.P482334961735968515

/-! ## A205347.P14660308600448838073

`record[root(A205609(n+1), A130321(n))]`
-/

namespace A205347.P14660308600448838073
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205609 (n + 1) : ℝ) ^ (1 / (A130321 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205347.P14660308600448838073

/-!
# A205348: Number of (n+1)X3 0..3 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205348, there is no canonical definition to state claims against.
-/

/-! ## A205348.P6191860250644858233

`A205352(∑[n+1]+2)`
-/

namespace A205348.P6191860250644858233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205348.P6191860250644858233

/-! ## A205348.P8296245928692558299

`A205352(A000096(n)+3)+A055961(n)`
-/

namespace A205348.P8296245928692558299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (A000096 n + 3).toNat + A055961 n

end

end A205348.P8296245928692558299

/-! ## A205348.P726299354835028213

`A205352(A000096(n)+3)*A261585(n)`
-/

namespace A205348.P726299354835028213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (A000096 n + 3).toNat * A261585 n

end

end A205348.P726299354835028213

/-! ## A205348.P4814525324845195474

`A205352(A000096(n)+3)*A299521(n+1)`
-/

namespace A205348.P4814525324845195474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (A000096 n + 3).toNat * A299521 (n + 1)

end

end A205348.P4814525324845195474

/-!
# A205349: Number of (n+1)X4 0..3 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205349, there is no canonical definition to state claims against.
-/

/-! ## A205349.P16271537376349841107

`A205352(∑[n+2]+4)`
-/

namespace A205349.P16271537376349841107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205349.P16271537376349841107

/-! ## A205349.P7344934045854262012

`lcm((-1)^∑{e}[n+1, #], A205352(A167614(n+1)))`
-/

namespace A205349.P7344934045854262012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A205352 (A167614 (n + 1)).toNat)

end

end A205349.P7344934045854262012

/-! ## A205349.P13325236415223737617

`A205352(A167614(n+1))+A025437(n)`
-/

namespace A205349.P13325236415223737617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (A167614 (n + 1)).toNat + A025437 n

end

end A205349.P13325236415223737617

/-! ## A205349.P2627313549197075853

`A205352(A167614(n+1))+A036600(n)`
-/

namespace A205349.P2627313549197075853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (A167614 (n + 1)).toNat + A036600 n

end

end A205349.P2627313549197075853

/-!
# A205350: Number of (n+1)X5 0..3 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205350, there is no canonical definition to state claims against.
-/

/-! ## A205350.P18053483871944568548

`A205352(∑[n+3]+7)`
-/

namespace A205350.P18053483871944568548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205350.P18053483871944568548

/-!
# A205351: Number of (n+1)X6 0..3 arrays with no 2X2 subblock having the same number of equal edges as its horizontal or vertical neighbors, and new values 0..3 introduced in row major order.

The programs for A205351, there is no canonical definition to state claims against.
-/

/-! ## A205351.P5652103934888760706

`A205352(Δ[A264443(n)])`
-/

namespace A205351.P5652103934888760706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205352 (f1 (n + 1) - f1 n).toNat

end

end A205351.P5652103934888760706

/-!
# A205353: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A205353, there is no canonical definition to state claims against.
-/

/-! ## A205353.P1257260346014785787

`A205361(∑[4*n]+1)`
-/

namespace A205353.P1257260346014785787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205353.P1257260346014785787

/-! ## A205353.P5940527820239372528

`∑{digits}[n, A205361(A001844(#))]`
-/

namespace A205353.P5940527820239372528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A205361 (A001844 x).toNat).sum

end

end A205353.P5940527820239372528

/-! ## A205353.P14683788537286765745

`and(-1, A205361(A001844(n)))`
-/

namespace A205353.P14683788537286765745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A205361 (A001844 n).toNat)

end

end A205353.P14683788537286765745

/-! ## A205353.P8399865364015977

`record[A003982(n)*A205361(n+1)]`
-/

namespace A205353.P8399865364015977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205353.P8399865364015977

/-!
# A205354: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A205354, the canonical program `A205354.P17155024401070399485` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205354 has offset 1).

The definition of A205354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205354.P17155024401070399485

`12*4^n+2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205354

/-- `12*4^n+2` -/
def P17155024401070399485.Spec : Prop :=
  ∀ n, (P17155024401070399485.a n : ℤ) = A205354 (n + 1)

theorem P17155024401070399485.correct : P17155024401070399485.Spec := by
  intro n
  simp only [A205354, Nat.add_sub_cancel]

end A205354

/-! ## A205354.P13394520170140722596

`or(2, 12*4^n)`
-/

namespace A205354.P13394520170140722596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (12 * 4 ^ n)

end

end A205354.P13394520170140722596

namespace A205354

/-- `or(2, 12*4^n)` -/
def P13394520170140722596.Spec : Prop :=
  ∀ n, (P13394520170140722596.a n : ℤ) = A205354 (n + 1)

end A205354

/-! ## A205354.P9090797585386014912

`xor(2, 12*4^n)`
-/

namespace A205354.P9090797585386014912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (12 * 4 ^ n)

end

end A205354.P9090797585386014912

namespace A205354

/-- `xor(2, 12*4^n)` -/
def P9090797585386014912.Spec : Prop :=
  ∀ n, (P9090797585386014912.a n : ℤ) = A205354 (n + 1)

end A205354

/-! ## A205354.P2885818781089292390

`ogf((14-20x)/(1-5x+4x^2))`
-/

namespace A205354.P2885818781089292390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, -20] [1, -5, 4] n

end

end A205354.P2885818781089292390

namespace A205354

/-- `ogf((14-20x)/(1-5x+4x^2))` -/
def P2885818781089292390.Spec : Prop :=
  ∀ n, P2885818781089292390.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P4499996670119381026

`∑[4*a(n-1)]` with `a(0)=14, a(1)=36`
-/

namespace A205354.P4499996670119381026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 36] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205354.P4499996670119381026

namespace A205354

/-- `∑[4*a(n-1)]` -/
def P4499996670119381026.Spec : Prop :=
  ∀ n, (P4499996670119381026.a n : ℤ) = A205354 (n + 1)

end A205354

/-! ## A205354.P3419516513266239939

`abs(or(2, Δ[4^(n+1)]))`
-/

namespace A205354.P3419516513266239939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A205354.P3419516513266239939

namespace A205354

/-- `abs(or(2, Δ[4^(n+1)]))` -/
def P3419516513266239939.Spec : Prop :=
  ∀ n, P3419516513266239939.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P17161769743727941738

`record[2-Δ[(-2)^(n+2)]]`
-/

namespace A205354.P17161769743727941738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205354.P17161769743727941738

namespace A205354

/-- `record[2-Δ[(-2)^(n+2)]]` -/
def P17161769743727941738.Spec : Prop :=
  ∀ n, P17161769743727941738.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P13028827774617158339

`2*(2*a(n-1)-3)` with `a(0)=14`
-/

namespace A205354.P13028827774617158339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [14] fun n a =>
  2 * (2 * a (n - 1) - 3)

end

end A205354.P13028827774617158339

namespace A205354

/-- `2*(2*a(n-1)-3)` -/
def P13028827774617158339.Spec : Prop :=
  ∀ n, P13028827774617158339.a n = A205354 (n + 1)

theorem P13028827774617158339.correct : P13028827774617158339.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A205354, Nat.add_sub_cancel, A205354.P13028827774617158339.a, A205354.P17155024401070399485.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A205354, Nat.add_sub_cancel, A205354.P13028827774617158339.a, A205354.P17155024401070399485.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A205354

/-! ## A205354.P14467014830274438521

`2*A199116(n)`
-/

namespace A205354.P14467014830274438521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199116 n

end

end A205354.P14467014830274438521

namespace A205354

/-- `2*A199116(n)` -/
def P14467014830274438521.Spec : Prop :=
  ∀ n, P14467014830274438521.a n = A205354 (n + 1)

theorem P14467014830274438521.correct : P14467014830274438521.Spec := by
  intro n
  simp only [A205354, Nat.add_sub_cancel, A205354.P14467014830274438521.a, A205354.P17155024401070399485.a, A199116, A199116.P5574724828079957201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205354

/-! ## A205354.P3865033445569939623

`Δ[A083706(Δ[n²])]`
-/

namespace A205354.P3865033445569939623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205354.P3865033445569939623

namespace A205354

/-- `Δ[A083706(Δ[n²])]` -/
def P3865033445569939623.Spec : Prop :=
  ∀ n, P3865033445569939623.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P8564562626711616444

`Δ[A132738(Δ[n²])]`
-/

namespace A205354.P8564562626711616444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132738 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205354.P8564562626711616444

namespace A205354

/-- `Δ[A132738(Δ[n²])]` -/
def P8564562626711616444.Spec : Prop :=
  ∀ n, P8564562626711616444.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P12421154319354371763

`Δ[A145071(Δ[n²])]`
-/

namespace A205354.P12421154319354371763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145071 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205354.P12421154319354371763

namespace A205354

/-- `Δ[A145071(Δ[n²])]` -/
def P12421154319354371763.Spec : Prop :=
  ∀ n, P12421154319354371763.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P7972947385774310556

`2*(A002023(n)+1)`
-/

namespace A205354.P7972947385774310556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002023 n + 1)

end

end A205354.P7972947385774310556

namespace A205354

/-- `2*(A002023(n)+1)` -/
def P7972947385774310556.Spec : Prop :=
  ∀ n, P7972947385774310556.a n = A205354 (n + 1)

theorem P7972947385774310556.correct : P7972947385774310556.Spec := by
  intro n
  simp only [A205354, Nat.add_sub_cancel, A205354.P7972947385774310556.a, A205354.P17155024401070399485.a, A002023, A002023.P733771793984427241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205354

/-! ## A205354.P12440016197198306313

`A164094(2*(n+1))`
-/

namespace A205354.P12440016197198306313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 (2 * (n + 1))

end

end A205354.P12440016197198306313

namespace A205354

/-- `A164094(2*(n+1))` -/
def P12440016197198306313.Spec : Prop :=
  ∀ n, P12440016197198306313.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P7622123704496966473

`2*(A140529(n)+2)`
-/

namespace A205354.P7622123704496966473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140529 n + 2)

end

end A205354.P7622123704496966473

namespace A205354

/-- `2*(A140529(n)+2)` -/
def P7622123704496966473.Spec : Prop :=
  ∀ n, P7622123704496966473.a n = A205354 (n + 1)

theorem P7622123704496966473.correct : P7622123704496966473.Spec := by
  intro n
  simp only [A205354, Nat.add_sub_cancel, A205354.P7622123704496966473.a, A205354.P17155024401070399485.a, A140529, A140529.P9765266150794200361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205354

/-! ## A205354.P16835460172992540894

`2*(A140788(n)-1)`
-/

namespace A205354.P16835460172992540894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A140788 n - 1)

end

end A205354.P16835460172992540894

namespace A205354

/-- `2*(A140788(n)-1)` -/
def P16835460172992540894.Spec : Prop :=
  ∀ n, P16835460172992540894.a n = A205354 (n + 1)

theorem P16835460172992540894.correct : P16835460172992540894.Spec := by
  intro n
  simp only [A205354, Nat.add_sub_cancel, A205354.P16835460172992540894.a, A205354.P17155024401070399485.a, A140788, A140788.P4402501163805591567.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A205354

/-! ## A205354.P14471008233459114655

`A209722(4*n+6)`
-/

namespace A205354.P14471008233459114655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (4 * n + 6)

end

end A205354.P14471008233459114655

namespace A205354

/-- `A209722(4*n+6)` -/
def P14471008233459114655.Spec : Prop :=
  ∀ n, P14471008233459114655.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P11106445274573735940

`2*A181565(Δ[n²])`
-/

namespace A205354.P11106445274573735940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A205354.P11106445274573735940

namespace A205354

/-- `2*A181565(Δ[n²])` -/
def P11106445274573735940.Spec : Prop :=
  ∀ n, P11106445274573735940.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P7027945185204455958

`2*A201630(Δ[n²])`
-/

namespace A205354.P7027945185204455958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201630 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A205354.P7027945185204455958

namespace A205354

/-- `2*A201630(Δ[n²])` -/
def P7027945185204455958.Spec : Prop :=
  ∀ n, P7027945185204455958.a n = A205354 (n + 1)

end A205354

/-! ## A205354.P14861078054910172752

`2*A280173(Δ[n²])`
-/

namespace A205354.P14861078054910172752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A280173 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A205354.P14861078054910172752

namespace A205354

/-- `2*A280173(Δ[n²])` -/
def P14861078054910172752.Spec : Prop :=
  ∀ n, P14861078054910172752.a n = A205354 (n + 1)

end A205354

/-!
# A205355: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A205355, there is no canonical definition to state claims against.
-/

/-! ## A205355.P11785696372132618465

`A205361(∑[n+1]+2)`
-/

namespace A205355.P11785696372132618465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205355.P11785696372132618465

/-! ## A205355.P9688079101592619572

`record[A010054(n)*A205361(n+2)]`
-/

namespace A205355.P9688079101592619572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205355.P9688079101592619572

/-! ## A205355.P8769530476375093976

`record[A205361(n+3)/A200171(n+1)]`
-/

namespace A205355.P8769530476375093976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205361 (n + 3) : ℚ) / (A200171 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205355.P8769530476375093976

/-! ## A205355.P7923818898810494900

`record[A205361(n+3)/(2-A097807(n)*A126216(n+1))]`
-/

namespace A205355.P7923818898810494900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205361 (n + 3) : ℚ) / (2 - A097807 n * A126216 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205355.P7923818898810494900

/-! ## A205355.P10083829153409373887

`record[A205361(A198455(n+1))]`
-/

namespace A205355.P10083829153409373887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205355.P10083829153409373887

/-!
# A205356: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A205356, there is no canonical definition to state claims against.
-/

/-! ## A205356.P13184936232011670476

`A205361(∑[n+2]+4)`
-/

namespace A205356.P13184936232011670476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205356.P13184936232011670476

/-! ## A205356.P8674800273335292812

`or(2, A205361(A167614(n+1)))`
-/

namespace A205356.P8674800273335292812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A205361 (A167614 (n + 1)).toNat)

end

end A205356.P8674800273335292812

/-! ## A205356.P5748707878137284310

`lcm(2, A205361(A046691(n)+7))`
-/

namespace A205356.P5748707878137284310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205361 (A046691 n + 7).toNat)

end

end A205356.P5748707878137284310

/-! ## A205356.P13461102405810407170

`A205361(A046691(n)+7)+A025466(n)`
-/

namespace A205356.P13461102405810407170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A046691 n + 7).toNat + A025466 n

end

end A205356.P13461102405810407170

/-! ## A205356.P4365281181808026389

`lcm(A054977(n), A205361(A167614(n+1)))`
-/

namespace A205356.P4365281181808026389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A205361 (A167614 (n + 1)).toNat)

end

end A205356.P4365281181808026389

/-!
# A205357: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A205357, there is no canonical definition to state claims against.
-/

/-! ## A205357.P3281709591154524849

`A205361(A374004(n+1))`
-/

namespace A205357.P3281709591154524849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A374004 (n + 1)).toNat

end

end A205357.P3281709591154524849

/-! ## A205357.P16329852957252808709

`A205361(A052905(n)+9)`
-/

namespace A205357.P16329852957252808709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A052905 n + 9).toNat

end

end A205357.P16329852957252808709

/-! ## A205357.P2093749229150914455

`A205361(A055999(n)+10)`
-/

namespace A205357.P2093749229150914455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A055999 n + 10).toNat

end

end A205357.P2093749229150914455

/-! ## A205357.P18181528338894268354

`A205361(A167614(n+2)+1)`
-/

namespace A205357.P18181528338894268354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A167614 (n + 2) + 1).toNat

end

end A205357.P18181528338894268354

/-! ## A205357.P12709535332641421386

`A205361(A046691(n+3)-A005408(n))`
-/

namespace A205357.P12709535332641421386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A046691 (n + 3) - A005408 n).toNat

end

end A205357.P12709535332641421386

/-!
# A205358: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A205358, there is no canonical definition to state claims against.
-/

/-! ## A205358.P8798905630540768580

`A205361(A374005(n+1))`
-/

namespace A205358.P8798905630540768580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A374005 (n + 1)).toNat

end

end A205358.P8798905630540768580

/-! ## A205358.P4826632716021890454

`A205361(A056000(n)+15)`
-/

namespace A205358.P4826632716021890454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A056000 n + 15).toNat

end

end A205358.P4826632716021890454

/-! ## A205358.P12298885726724608458

`A205361(eq[6, A131818(n+1)])`
-/

namespace A205358.P12298885726724608458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205358.P12298885726724608458

/-! ## A205358.P7948484621377393450

`A205361(A046691(n+3))`
-/

namespace A205358.P7948484621377393450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A046691 (n + 3)).toNat

end

end A205358.P7948484621377393450

/-! ## A205358.P5328755178148095715

`A205361(eq[4, A193592(n)])`
-/

namespace A205358.P5328755178148095715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205358.P5328755178148095715

/-!
# A205359: Number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A205359, there is no canonical definition to state claims against.
-/

/-! ## A205359.P7659444055124248021

`A205361(A374007(n+1))`
-/

namespace A205359.P7659444055124248021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A374007 (n + 1)).toNat

end

end A205359.P7659444055124248021

/-! ## A205359.P4296202208712772182

`A205361(A155212(n+1)+14)`
-/

namespace A205359.P4296202208712772182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A155212 (n + 1) + 14).toNat

end

end A205359.P4296202208712772182

/-! ## A205359.P12813076514816882368

`A205361(eq[7, A131818(n+1)])`
-/

namespace A205359.P12813076514816882368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205359.P12813076514816882368

/-! ## A205359.P14103493987593492299

`A205361(eq[3, A219347(n)])`
-/

namespace A205359.P14103493987593492299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205359.P14103493987593492299

/-! ## A205359.P9205645748938216737

`A205361(eq[5, A193592(n)])`
-/

namespace A205359.P9205645748938216737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205359.P9205645748938216737

/-!
# A205360: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having the same number of equal diagonal or antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A205360, there is no canonical definition to state claims against.
-/

/-! ## A205360.P8946540400317898411

`A205361(A374008(n+1))`
-/

namespace A205360.P8946540400317898411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (A374008 (n + 1)).toNat

end

end A205360.P8946540400317898411

/-! ## A205360.P16342897017784629644

`A205361(eq[8, A131818(n+1)])`
-/

namespace A205360.P16342897017784629644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205360.P16342897017784629644

/-! ## A205360.P13105338025564595716

`A205361(eq[4, A219347(n)])`
-/

namespace A205360.P13105338025564595716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205360.P13105338025564595716

/-! ## A205360.P9508489531189491412

`A205361(eq[6, A193592(n)])`
-/

namespace A205360.P9508489531189491412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205360.P9508489531189491412

/-! ## A205360.P2357912665629868923

`A205361(eq[7, A200370(n+1)])`
-/

namespace A205360.P2357912665629868923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205360.P2357912665629868923

/-!
# A205362: Number of (n+1)X(n+1) 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205362, there is no canonical definition to state claims against.
-/

/-! ## A205362.P494073555707686774

`A205370(∑[4*n]+1)`
-/

namespace A205362.P494073555707686774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205362.P494073555707686774

/-!
# A205363: Number of (n+1)X2 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205363, there is no canonical definition to state claims against.
-/

/-! ## A205363.P12882758763896044359

`A205659(∑[n]+1)`
-/

namespace A205363.P12882758763896044359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205363.P12882758763896044359

/-! ## A205363.P6582784584178339942

`lcm(2, A205659(A000124(n)))`
-/

namespace A205363.P6582784584178339942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205659 (A000124 n).toNat)

end

end A205363.P6582784584178339942

/-! ## A205363.P5082601926782012143

`record[A205659(n+1)/A121757(n)]`
-/

namespace A205363.P5082601926782012143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205659 (n + 1) : ℚ) / (A121757 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205363.P5082601926782012143

/-! ## A205363.P2844922670140608673

`record[gcd(A002262(n), A205659(n+1))]`
-/

namespace A205363.P2844922670140608673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205659 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205363.P2844922670140608673

/-! ## A205363.P16901576521660728402

`record[A205659(n+1)/A008969(n+1)]`
-/

namespace A205363.P16901576521660728402
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205659 (n + 1) : ℚ) / (A008969 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205363.P16901576521660728402

/-!
# A205364: Number of (n+1)X3 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205364, there is no canonical definition to state claims against.
-/

/-! ## A205364.P18163470139503994117

`A205370(∑[n+1]+2)`
-/

namespace A205364.P18163470139503994117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205364.P18163470139503994117

/-! ## A205364.P10205141323509361382

`lcm(2, A205370(A133263(n+1)))`
-/

namespace A205364.P10205141323509361382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205370 (A133263 (n + 1)).toNat)

end

end A205364.P10205141323509361382

/-! ## A205364.P2583869920529676447

`record[A010054(n)*A205370(n+2)]`
-/

namespace A205364.P2583869920529676447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205370 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205364.P2583869920529676447

/-! ## A205364.P8279737298669700132

`record[gcd(A002262(n), A205370(n+2))]`
-/

namespace A205364.P8279737298669700132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205370 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205364.P8279737298669700132

/-! ## A205364.P14799924429224145309

`A205370(A133263(n+1))%A206183(n+1)`
-/

namespace A205364.P14799924429224145309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205370 (A133263 (n + 1)).toNat) (A206183 (n + 1))

end

end A205364.P14799924429224145309

/-!
# A205365: Number of (n+1) X 4 0..3 arrays where every 2 X 2 subblock has the same number of clockwise edge increases.

The programs for A205365, there is no canonical definition to state claims against.
-/

/-! ## A205365.P5832717892733601823

`A205370(∑[n+2]+4)`
-/

namespace A205365.P5832717892733601823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205365.P5832717892733601823

/-! ## A205365.P5159783812487856388

`lcm(2, A205370(A167614(n+1)))`
-/

namespace A205365.P5159783812487856388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205370 (A167614 (n + 1)).toNat)

end

end A205365.P5159783812487856388

/-! ## A205365.P9097079922524020004

`A205370(A167614(n+1))+A185063(n)`
-/

namespace A205365.P9097079922524020004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A167614 (n + 1)).toNat + A185063 n

end

end A205365.P9097079922524020004

/-! ## A205365.P16692394728599096393

`A205370(A167614(n+1))+A185284(n)`
-/

namespace A205365.P16692394728599096393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A167614 (n + 1)).toNat + A185284 n

end

end A205365.P16692394728599096393

/-! ## A205365.P3830348188220886561

`A283001(n)+A205370(A167614(n+1))`
-/

namespace A205365.P3830348188220886561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 n + A205370 (A167614 (n + 1)).toNat

end

end A205365.P3830348188220886561

/-!
# A205366: Number of (n+1)X5 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205366, there is no canonical definition to state claims against.
-/

/-! ## A205366.P9955515788729374798

`A205370(A141214(n)+7)`
-/

namespace A205366.P9955515788729374798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A141214 n + 7).toNat

end

end A205366.P9955515788729374798

/-! ## A205366.P2813617267048993612

`A205370(A167614(n+2)+1)`
-/

namespace A205366.P2813617267048993612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A167614 (n + 2) + 1).toNat

end

end A205366.P2813617267048993612

/-! ## A205366.P6142590768287857409

`A205370(A046691(n+3)-A005408(n))`
-/

namespace A205366.P6142590768287857409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A046691 (n + 3) - A005408 n).toNat

end

end A205366.P6142590768287857409

/-! ## A205366.P1005190998798171269

`A205370(A141214(n+1))`
-/

namespace A205366.P1005190998798171269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A141214 (n + 1)).toNat

end

end A205366.P1005190998798171269

/-! ## A205366.P10988490401011491333

`A205370(A155212(n)+5)`
-/

namespace A205366.P10988490401011491333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A155212 n + 5).toNat

end

end A205366.P10988490401011491333

/-!
# A205367: Number of (n+1)X6 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205367, there is no canonical definition to state claims against.
-/

/-! ## A205367.P9691903083428796935

`A205370(A167499(n+3))`
-/

namespace A205367.P9691903083428796935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A167499 (n + 3)).toNat

end

end A205367.P9691903083428796935

/-! ## A205367.P8837016545635882998

`A205370(A007318(∑[n])+A056000(n)+14)`
-/

namespace A205367.P8837016545635882998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + (A056000 n + 14)).toNat

end

end A205367.P8837016545635882998

/-! ## A205367.P152914128189033317

`A205370(A374005(n+1))`
-/

namespace A205367.P152914128189033317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A374005 (n + 1)).toNat

end

end A205367.P152914128189033317

/-! ## A205367.P5311633620394494021

`A205370(A046691(n+3))`
-/

namespace A205367.P5311633620394494021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A046691 (n + 3)).toNat

end

end A205367.P5311633620394494021

/-! ## A205367.P16721585071046908984

`A205370(eq[5, A200370(n+1)])`
-/

namespace A205367.P16721585071046908984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205367.P16721585071046908984

/-!
# A205368: Number of (n+1) X 7 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock the same.

The programs for A205368, there is no canonical definition to state claims against.
-/

/-! ## A205368.P11819481696740802847

`A205370(A166136(n+4))`
-/

namespace A205368.P11819481696740802847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A166136 (n + 4)).toNat

end

end A205368.P11819481696740802847

/-! ## A205368.P8976409703941060653

`A205370(A052905(n+3))`
-/

namespace A205368.P8976409703941060653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A052905 (n + 3)).toNat

end

end A205368.P8976409703941060653

/-! ## A205368.P16437739065159027742

`A205370(A055999(n+3)+1)`
-/

namespace A205368.P16437739065159027742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A055999 (n + 3) + 1).toNat

end

end A205368.P16437739065159027742

/-!
# A205369: Number of (n+1) X 8 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock the same.

The programs for A205369, there is no canonical definition to state claims against.
-/

/-! ## A205369.P6204016039298259283

`A205370(eq[7, A200370(n+1)])`
-/

namespace A205369.P6204016039298259283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205369.P6204016039298259283

/-! ## A205369.P2585829567243049864

`A205370(A166136(∏{p}[n+1, #*val(n+1, #)]+4)+1)`
-/

namespace A205369.P2585829567243049864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205370 (A166136 (∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 4) + 1).toNat

end

end A205369.P2585829567243049864

/-!
# A205371: Ordered differences of odd-indexed Fibonacci numbers.

The programs for A205371, there is no canonical definition to state claims against.
-/

/-! ## A205371.P5584142866223172118

`floor(A205448(n+1)/ϕ)`
-/

namespace A205371.P5584142866223172118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205448 (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A205371.P5584142866223172118

/-! ## A205371.P9613100529631521112

`round(A205448(n+1)/ϕ*A209615(n+1)²)`
-/

namespace A205371.P9613100529631521112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A205448 (n + 1) : ℝ) / Real.goldenRatio * (A209615 (n + 1) ^ 2 : ℝ))

end

end A205371.P9613100529631521112

/-! ## A205371.P10534809577981133543

`round(A205448(n+1)/ϕ*A109955(C(2, n)+1))`
-/

namespace A205371.P10534809577981133543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A205448 (n + 1) : ℝ) / Real.goldenRatio * (A109955 (Nat.choose 2 n + 1) : ℝ))

end

end A205371.P10534809577981133543

/-! ## A205371.P8628187833789365645

`A193922(∑[char[∑[n]]]²+2*n)`
-/

namespace A205371.P8628187833789365645
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A205371.P8628187833789365645

/-! ## A205371.P15228646367686599298

`round(A205448(n+1)/ϕ)%A022367(n)`
-/

namespace A205371.P15228646367686599298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A205448 (n + 1) : ℝ) / Real.goldenRatio)) (A022367 n)

end

end A205371.P15228646367686599298

/-! ## A205371.P15322986719973572618

`A054204(A130328(n))`
-/

namespace A205371.P15322986719973572618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (A130328 n).toNat

end

end A205371.P15322986719973572618

/-! ## A205371.P219279678872277352

`A054204(A204985(n+1)/2)`
-/

namespace A205371.P219279678872277352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (SequenceMachineLib.roundAway ((A204985 (n + 1) : ℚ) / 2)).toNat

end

end A205371.P219279678872277352

/-! ## A205371.P17333697099393833699

`A005206(A205448(n+1))`
-/

namespace A205371.P17333697099393833699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A205448 (n + 1)).toNat

end

end A205371.P17333697099393833699

/-! ## A205371.P5896084288454319751

`A205448(n+1)-A003603(A205448(n+1)-1)`
-/

namespace A205371.P5896084288454319751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205448 (n + 1) - A003603 (A205448 (n + 1) - 1).toNat

end

end A205371.P5896084288454319751

/-!
# A205372: Least s(k) such that n divides s(k)-s(j) for some j<k, where s=A024675.

The programs for A205372, there is no canonical definition to state claims against.
-/

/-! ## A205372.P9511255945574728972

`A024675(A205153(n+1))`
-/

namespace A205372.P9511255945574728972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (A205153 (n + 1)).toNat

end

end A205372.P9511255945574728972

/-! ## A205372.P11036089912565360897

`A162735(A205153(n+1)+1)`
-/

namespace A205372.P11036089912565360897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (A205153 (n + 1) + 1).toNat

end

end A205372.P11036089912565360897

/-! ## A205372.P14397366884105653962

`A162800(A205153(n+1)+1)`
-/

namespace A205372.P14397366884105653962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (A205153 (n + 1) + 1).toNat

end

end A205372.P14397366884105653962

/-! ## A205372.P7745063673020463167

`A001043(A205153(n+1)+1)/2`
-/

namespace A205372.P7745063673020463167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001043 (A205153 (n + 1) + 1).toNat : ℚ) / 2

end

end A205372.P7745063673020463167

/-! ## A205372.P7554806747063593489

`A205374(n+1)+A205373(n+1)`
-/

namespace A205372.P7554806747063593489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205374 (n + 1) + A205373 (n + 1)

end

end A205372.P7554806747063593489

/-! ## A205372.P831645633329743645

`A205373(n+1)+(n+1)*A205375(n+1)`
-/

namespace A205372.P831645633329743645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205373 (n + 1) + (n + 1 : ℤ) * A205375 (n + 1)

end

end A205372.P831645633329743645

/-! ## A205372.P17642545673219652082

`A205373(n+1)+A204980(A205152(n+1))`
-/

namespace A205372.P17642545673219652082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205373 (n + 1) + A204980 (A205152 (n + 1)).toNat

end

end A205372.P17642545673219652082

/-!
# A205373: s(A204154), where s(j)=(prime(j+1) + prime(j+2))/2.

The programs for A205373, there is no canonical definition to state claims against.
-/

/-! ## A205373.P18331323737463591144

`A024675(A205154(n+1))`
-/

namespace A205373.P18331323737463591144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (A205154 (n + 1)).toNat

end

end A205373.P18331323737463591144

/-! ## A205373.P15649419845097151332

`A162735(A205154(n+1)+1)`
-/

namespace A205373.P15649419845097151332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (A205154 (n + 1) + 1).toNat

end

end A205373.P15649419845097151332

/-! ## A205373.P5744676773083542249

`A162800(A205154(n+1)+1)`
-/

namespace A205373.P5744676773083542249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (A205154 (n + 1) + 1).toNat

end

end A205373.P5744676773083542249

/-! ## A205373.P7759311582175518485

`A205372(n+1)-A205374(n+1)`
-/

namespace A205373.P7759311582175518485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205372 (n + 1) - A205374 (n + 1)

end

end A205373.P7759311582175518485

/-! ## A205373.P17697840478071394840

`A205372(n+1)-(n+1)*A205375(n+1)`
-/

namespace A205373.P17697840478071394840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205372 (n + 1) - (n + 1 : ℤ) * A205375 (n + 1)

end

end A205373.P17697840478071394840

/-! ## A205373.P5903790055020690886

`A024675(A205153(n+1))-A205374(n+1)`
-/

namespace A205373.P5903790055020690886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (A205153 (n + 1)).toNat - A205374 (n + 1)

end

end A205373.P5903790055020690886

/-! ## A205373.P5088306634308394037

`A205372(n+1)-A204980(A205152(n+1))`
-/

namespace A205373.P5088306634308394037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205372 (n + 1) - A204980 (A205152 (n + 1)).toNat

end

end A205373.P5088306634308394037

/-!
# A205374: s(k)-s(j), where (s(k),s(j)) is the least such pair for which n divides their difference, and s(j)=(prime(j+1) + prime(j+2))/2.

The programs for A205374, there is no canonical definition to state claims against.
-/

/-! ## A205374.P15118438678721277334

`(n+1)*A205375(n+1)`
-/

namespace A205374.P15118438678721277334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205375 (n + 1)

end

end A205374.P15118438678721277334

/-!
# A205375: (1/n)*A205374(n).

The programs for A205375, there is no canonical definition to state claims against.
-/

/-! ## A205375.P8643837647412140319

`1/(n+1)*A205374(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205375.P8643837647412140319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205374 (n + 1) : ℚ)

end

end A205375.P8643837647412140319

/-!
# A205376: Ordered differences of distinct odd squares, stored in triangle.

The programs for A205376, the canonical program `A205376.P17692013997868668621` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205376 has offset 1).

The definition of A205376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205376.P6639427996693990746

`T(n-1,k)+∑[abs(T(n-1,k))]` with `a(0)=8`
-/

namespace A205376.P6639427996693990746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  SequenceMachineLib.triUp f1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  SequenceMachineLib.triUp a n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205376.P6639427996693990746

namespace A205376

/-- `T(n-1,k)+∑[abs(T(n-1,k))]` -/
def P6639427996693990746.Spec : Prop :=
  ∀ n, (P6639427996693990746.a n : ℤ) = A205376 (n + 1)

end A205376

/-! ## A205376.P17692013997868668621

`8*A049777(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A205376

/-- `8*A049777(n+1)` -/
def P17692013997868668621.Spec : Prop :=
  ∀ n, P17692013997868668621.a n = A205376 (n + 1)

theorem P17692013997868668621.correct : P17692013997868668621.Spec := by
  intro n
  simp only [A205376, Nat.add_sub_cancel]

end A205376

/-! ## A205376.P12566548350015746332

`A120070(∑[char[∑[n]]]²+2*n+2)`
-/

namespace A205376.P12566548350015746332
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n + 2)

end

end A205376.P12566548350015746332

namespace A205376

/-- `A120070(∑[char[∑[n]]]²+2*n+2)` -/
def P12566548350015746332.Spec : Prop :=
  ∀ n, P12566548350015746332.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P9626268804607738177

`2*(A120070(n+2)+A094728(n+1))`
-/

namespace A205376.P9626268804607738177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120070 (n + 2) + A094728 (n + 1))

end

end A205376.P9626268804607738177

namespace A205376

/-- `2*(A120070(n+2)+A094728(n+1))` -/
def P9626268804607738177.Spec : Prop :=
  ∀ n, P9626268804607738177.a n = A205376 (n + 1)

theorem P9626268804607738177.correct : P9626268804607738177.Spec := by
  intro n
  simp only [A205376, Nat.add_sub_cancel, A205376.P9626268804607738177.a, A205376.P17692013997868668621.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, A120070, A120070.P8418683465396432844.a, A003991, A003991.P6365127437582401781.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A205376

/-! ## A205376.P4085631651952548299

`4*(A094728(n+1)+A004736(n+1))`
-/

namespace A205376.P4085631651952548299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A094728 (n + 1) + A004736 (n + 1))

end

end A205376.P4085631651952548299

namespace A205376

/-- `4*(A094728(n+1)+A004736(n+1))` -/
def P4085631651952548299.Spec : Prop :=
  ∀ n, P4085631651952548299.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P2479315095999305890

`A008590(A049777(n+1))`
-/

namespace A205376.P2479315095999305890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A049777 (n + 1)).toNat

end

end A205376.P2479315095999305890

namespace A205376

/-- `A008590(A049777(n+1))` -/
def P2479315095999305890.Spec : Prop :=
  ∀ n, P2479315095999305890.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P9536123243409522712

`A022144(A049777(n+1)%A016789(n))`
-/

namespace A205376.P9536123243409522712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.tmod (A049777 (n + 1)) (A016789 n)).toNat

end

end A205376.P9536123243409522712

namespace A205376

/-- `A022144(A049777(n+1)%A016789(n))` -/
def P9536123243409522712.Spec : Prop :=
  ∀ n, P9536123243409522712.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P14204629765615077482

`lcm(A022144(A049777(n+1)), A033999(n))`
-/

namespace A205376.P14204629765615077482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022144 (A049777 (n + 1)).toNat) (A033999 n)

end

end A205376.P14204629765615077482

namespace A205376

/-- `lcm(A022144(A049777(n+1)), A033999(n))` -/
def P14204629765615077482.Spec : Prop :=
  ∀ n, (P14204629765615077482.a n : ℤ) = A205376 (n + 1)

end A205376

/-! ## A205376.P12843533304608925105

`8*A049780(A007401(n+1))`
-/

namespace A205376.P12843533304608925105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A049780 (A007401 (n + 1)).toNat

end

end A205376.P12843533304608925105

namespace A205376

/-- `8*A049780(A007401(n+1))` -/
def P12843533304608925105.Spec : Prop :=
  ∀ n, P12843533304608925105.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P14487430886413760440

`A141616(A004201(n+1))`
-/

namespace A205376.P14487430886413760440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141616 (A004201 (n + 1)).toNat

end

end A205376.P14487430886413760440

namespace A205376

/-- `A141616(A004201(n+1))` -/
def P14487430886413760440.Spec : Prop :=
  ∀ n, P14487430886413760440.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P1508450690109891794

`A141616(2*n+1-A002262(n))`
-/

namespace A205376.P1508450690109891794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141616 ((2 * n + 1 : ℤ) - A002262 n).toNat

end

end A205376.P1508450690109891794

namespace A205376

/-- `A141616(2*n+1-A002262(n))` -/
def P1508450690109891794.Spec : Prop :=
  ∀ n, P1508450690109891794.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P17499601050474960705

`A130829(2*(n+1))²-A074294(2*n+1)²`
-/

namespace A205376.P17499601050474960705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (2 * (n + 1)) ^ 2 - A074294 (2 * n + 1) ^ 2

end

end A205376.P17499601050474960705

namespace A205376

/-- `A130829(2*(n+1))²-A074294(2*n+1)²` -/
def P17499601050474960705.Spec : Prop :=
  ∀ n, P17499601050474960705.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P16227108695788722885

`A008586(A094728(n+1)+A004736(n+1))`
-/

namespace A205376.P16227108695788722885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A094728 (n + 1) + A004736 (n + 1)).toNat

end

end A205376.P16227108695788722885

namespace A205376

/-- `A008586(A094728(n+1)+A004736(n+1))` -/
def P16227108695788722885.Spec : Prop :=
  ∀ n, P16227108695788722885.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P11636503279355819855

`A022998(A120070(n+2)+A094728(n+1))`
-/

namespace A205376.P11636503279355819855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A120070 (n + 2) + A094728 (n + 1)).toNat

end

end A205376.P11636503279355819855

namespace A205376

/-- `A022998(A120070(n+2)+A094728(n+1))` -/
def P11636503279355819855.Spec : Prop :=
  ∀ n, P11636503279355819855.a n = A205376 (n + 1)

end A205376

/-! ## A205376.P12805340339978097491

`A094728(A185871(n+1))`
-/

namespace A205376.P12805340339978097491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (A185871 (n + 1)).toNat

end

end A205376.P12805340339978097491

namespace A205376

/-- `A094728(A185871(n+1))` -/
def P12805340339978097491.Spec : Prop :=
  ∀ n, P12805340339978097491.a n = A205376 (n + 1)

end A205376

/-!
# A205377: Least h such that n divides the h-th difference between distinct odd primes, as ordered in A205376.

The programs for A205377, there is no canonical definition to state claims against.
-/

/-! ## A205377.P11355357611190448918

`floor(A347698(A205380(n+1)-A135293(n)/2)/2)+1`
-/

namespace A205377.P11355357611190448918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347698 (SequenceMachineLib.roundAway ((A205380 (n + 1) : ℚ) - (A135293 n : ℚ) / 2)).toNat : ℚ) / 2⌋ + 1

end

end A205377.P11355357611190448918

/-!
# A205378: Least k such that n divides s(k)-s(j) for some j<k, where s(j)=(2j-1)^2.

The programs for A205378, there is no canonical definition to state claims against.
-/

/-! ## A205378.P2903696129520098961

`(sqrt(A205380(n+1))+1)/2`
-/

namespace A205378.P2903696129520098961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A205380 (n + 1) : ℝ) + 1) / 2

end

end A205378.P2903696129520098961

/-! ## A205378.P5313746616467935837

`A212652(lcm(8, n+1)/8)+1`
-/

namespace A205378.P5313746616467935837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (SequenceMachineLib.roundAway ((Nat.lcm 8 (n + 1) : ℚ) / 8)).toNat + 1

end

end A205378.P5313746616467935837

/-! ## A205378.P641393477830029874

`A212652(A106609(n+1))+1`
-/

namespace A205378.P641393477830029874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212652 (A106609 (n + 1)).toNat + 1

end

end A205378.P641393477830029874

/-! ## A205378.P16950565062147688513

`A002024(A205377(n+1))+1`
-/

namespace A205378.P16950565062147688513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205377 (n + 1)).toNat + 1

end

end A205378.P16950565062147688513

/-! ## A205378.P3695416962753952449

`A003057(A205377(n+1)+1)`
-/

namespace A205378.P3695416962753952449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205377 (n + 1) + 1).toNat

end

end A205378.P3695416962753952449

/-! ## A205378.P11055076885078046078

`or(A123578(A205377(n+1))+1, A000038(n))`
-/

namespace A205378.P11055076885078046078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123578 (A205377 (n + 1)).toNat + 1) (A000038 n)

end

end A205378.P11055076885078046078

/-! ## A205378.P8405965348794836185

`(A123578(A205377(n+1))+1)%A000041(n+3)`
-/

namespace A205378.P8405965348794836185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 (A205377 (n + 1)).toNat + 1) (A000041 (n + 3))

end

end A205378.P8405965348794836185

/-! ## A205378.P10970862251665868781

`A097285(2*A205377(n+1))`
-/

namespace A205378.P10970862251665868781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205377 (n + 1)).toNat

end

end A205378.P10970862251665868781

/-! ## A205378.P1603763882111352643

`A057555(A205380(n+1))`
-/

namespace A205378.P1603763882111352643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A205380 (n + 1)).toNat

end

end A205378.P1603763882111352643

/-!
# A205379: The index j<k such that n divides s(k)-s(j) for some j, where s(j)=(2j-1)^2.

The programs for A205379, there is no canonical definition to state claims against.
-/

/-! ## A205379.P5171230862348157473

`ceil(sqrt(A205381(n+1))/2)`
-/

namespace A205379.P5171230862348157473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A205381 (n + 1) : ℝ) / 2⌉

end

end A205379.P5171230862348157473

/-! ## A205379.P15646660247576743388

`A118235(A106609(n+1))`
-/

namespace A205379.P15646660247576743388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (A106609 (n + 1)).toNat

end

end A205379.P15646660247576743388

/-! ## A205379.P7064636924618760844

`A001057(sqrt(A205381(n+1)))`
-/

namespace A205379.P7064636924618760844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.roundAway (Real.sqrt (A205381 (n + 1) : ℝ))).toNat

end

end A205379.P7064636924618760844

/-! ## A205379.P10250482432863505760

`A003602(sqrt(A205381(n+1)))`
-/

namespace A205379.P10250482432863505760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway (Real.sqrt (A205381 (n + 1) : ℝ))).toNat

end

end A205379.P10250482432863505760

/-! ## A205379.P18228792466870696012

`A008619(sqrt(A205381(n+1)))`
-/

namespace A205379.P18228792466870696012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (Real.sqrt (A205381 (n + 1) : ℝ))).toNat

end

end A205379.P18228792466870696012

/-! ## A205379.P15639888941590312882

`A004525(sqrt(A205381(n+1))+1)`
-/

namespace A205379.P15639888941590312882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (Real.sqrt (A205381 (n + 1) : ℝ) + 1)).toNat

end

end A205379.P15639888941590312882

/-! ## A205379.P891178988611953373

`A004526(sqrt(A205381(n+1))+1)`
-/

namespace A205379.P891178988611953373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.sqrt (A205381 (n + 1) : ℝ) + 1)).toNat

end

end A205379.P891178988611953373

/-! ## A205379.P7316342934079475221

`A002260(A205377(n+1))`
-/

namespace A205379.P7316342934079475221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205377 (n + 1)).toNat

end

end A205379.P7316342934079475221

/-! ## A205379.P13377188068440287240

`A097285(2*A205377(n+1)-1)`
-/

namespace A205379.P13377188068440287240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205377 (n + 1) - 1).toNat

end

end A205379.P13377188068440287240

/-! ## A205379.P17740384635938244412

`A097285(A205377(n+1)+A205377(n+1)-1)`
-/

namespace A205379.P17740384635938244412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205377 (n + 1) + (A205377 (n + 1) - 1)).toNat

end

end A205379.P17740384635938244412

/-! ## A205379.P701690128078153218

`A057555(A205381(n+1))`
-/

namespace A205379.P701690128078153218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (A205381 (n + 1)).toNat

end

end A205379.P701690128078153218

/-! ## A205379.P5362380506422981634

`A349520(A205381(n+1))%A167499(n)`
-/

namespace A205379.P5362380506422981634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349520 (A205381 (n + 1)).toNat) (A167499 n)

end

end A205379.P5362380506422981634

/-!
# A205380: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=(2j-1)^2.

The programs for A205380, there is no canonical definition to state claims against.
-/

/-! ## A205380.P5686265743033538831

`A205381(n+1)+A109049(n+1)`
-/

namespace A205380.P5686265743033538831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205381 (n + 1) + A109049 (n + 1)

end

end A205380.P5686265743033538831

/-! ## A205380.P8037571568583964293

`A205382(n+1)+A205381(n+1)`
-/

namespace A205380.P8037571568583964293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205382 (n + 1) + A205381 (n + 1)

end

end A205380.P8037571568583964293

/-! ## A205380.P1034593322761969076

`(1-2*A205378(n+1))²`
-/

namespace A205380.P1034593322761969076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A205378 (n + 1)) ^ 2

end

end A205380.P1034593322761969076

/-! ## A205380.P14176600457735246621

`A004273(A205378(n+1))²`
-/

namespace A205380.P14176600457735246621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A205378 (n + 1)).toNat ^ 2

end

end A205380.P14176600457735246621

/-! ## A205380.P6689585670964221952

`A016754(A205378(n+1)-1)`
-/

namespace A205380.P6689585670964221952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A205378 (n + 1) - 1).toNat

end

end A205380.P6689585670964221952

/-! ## A205380.P7014365769565715665

`A005408(A205378(n+1)-1)²`
-/

namespace A205380.P7014365769565715665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A205378 (n + 1) - 1).toNat ^ 2

end

end A205380.P7014365769565715665

/-! ## A205380.P10678004486112277110

`A205381(n+1)+A205376(A205377(n+1))`
-/

namespace A205380.P10678004486112277110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205381 (n + 1) + A205376 (A205377 (n + 1)).toNat

end

end A205380.P10678004486112277110

/-! ## A205380.P11215149127825663296

`A001650(A205378(n+1)²)²`
-/

namespace A205380.P11215149127825663296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A205378 (n + 1) ^ 2).toNat ^ 2

end

end A205380.P11215149127825663296

/-! ## A205380.P2658634862405553264

`A004741(A205378(n+1)²)²`
-/

namespace A205380.P2658634862405553264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A205378 (n + 1) ^ 2).toNat ^ 2

end

end A205380.P2658634862405553264

/-! ## A205380.P17723406426145536325

`A253580(A205378(n+1)²)²`
-/

namespace A205380.P17723406426145536325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 (A205378 (n + 1) ^ 2).toNat ^ 2

end

end A205380.P17723406426145536325

/-! ## A205380.P2312199604290253499

`A055086(A205378(n+1)²)²`
-/

namespace A205380.P2312199604290253499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A205378 (n + 1) ^ 2).toNat ^ 2

end

end A205380.P2312199604290253499

/-!
# A205381: s(A205379), where s(j)=(2j-1)^2.

The programs for A205381, there is no canonical definition to state claims against.
-/

/-! ## A205381.P16628966513504872670

`A205380(n+1)-A109049(n+1)`
-/

namespace A205381.P16628966513504872670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205380 (n + 1) - A109049 (n + 1)

end

end A205381.P16628966513504872670

/-! ## A205381.P14289247766608654259

`A205380(n+1)-A205382(n+1)`
-/

namespace A205381.P14289247766608654259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205380 (n + 1) - A205382 (n + 1)

end

end A205381.P14289247766608654259

/-! ## A205381.P16415530483380092308

`(1-2*A205379(n+1))²`
-/

namespace A205381.P16415530483380092308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A205379 (n + 1)) ^ 2

end

end A205381.P16415530483380092308

/-! ## A205381.P15414019957625217865

`A004273(A205379(n+1))²`
-/

namespace A205381.P15414019957625217865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A205379 (n + 1)).toNat ^ 2

end

end A205381.P15414019957625217865

/-! ## A205381.P17082766216433600846

`A016754(A205379(n+1)-1)`
-/

namespace A205381.P17082766216433600846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A205379 (n + 1) - 1).toNat

end

end A205381.P17082766216433600846

/-! ## A205381.P10717968229460418197

`A000290(2*A205379(n+1)-1)`
-/

namespace A205381.P10717968229460418197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A205379 (n + 1) - 1).toNat

end

end A205381.P10717968229460418197

/-! ## A205381.P12977736230675516325

`A000290(A205379(n+1)+A205379(n+1)-1)`
-/

namespace A205381.P12977736230675516325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A205379 (n + 1) + (A205379 (n + 1) - 1)).toNat

end

end A205381.P12977736230675516325

/-! ## A205381.P5579037835331760472

`A205380(n+1)-A205376(A205377(n+1))`
-/

namespace A205381.P5579037835331760472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205380 (n + 1) - A205376 (A205377 (n + 1)).toNat

end

end A205381.P5579037835331760472

/-! ## A205381.P1814632839202969159

`A001650(A205379(n+1)²)²`
-/

namespace A205381.P1814632839202969159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A205379 (n + 1) ^ 2).toNat ^ 2

end

end A205381.P1814632839202969159

/-! ## A205381.P15281158807133379061

`A004741(A205379(n+1)²)²`
-/

namespace A205381.P15281158807133379061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A205379 (n + 1) ^ 2).toNat ^ 2

end

end A205381.P15281158807133379061

/-! ## A205381.P7335034883908549764

`A055086(A205379(n+1)²)²`
-/

namespace A205381.P7335034883908549764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A205379 (n + 1) ^ 2).toNat ^ 2

end

end A205381.P7335034883908549764

/-!
# A205382: s(k)-s(j), where (s(k),s(j)) is the least such pair for which n divides their difference, and s(j)=(2j-1)^2.

The programs for A205382, the canonical program `A205382.P6444080827433848402` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205382 has offset 1).

The definition of A205382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205382.P13516318559245114543

`(n+1)*A205383(n+1)`
-/

namespace A205382.P13516318559245114543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205383 (n + 1)

end

end A205382.P13516318559245114543

namespace A205382

/-- `(n+1)*A205383(n+1)` -/
def P13516318559245114543.Spec : Prop :=
  ∀ n, P13516318559245114543.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P6444080827433848402

`lcm(8, 1+n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205382

/-- `lcm(8, 1+n)` -/
def P6444080827433848402.Spec : Prop :=
  ∀ n, (P6444080827433848402.a n : ℤ) = A205382 (n + 1)

theorem P6444080827433848402.correct : P6444080827433848402.Spec := by
  intro n
  simp only [A205382, Nat.add_sub_cancel]

end A205382

/-! ## A205382.P17456931692288534854

`sqrt(lcm(64, ∑[or(1, 2*n)]))`
-/

namespace A205382.P17456931692288534854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm 64 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A205382.P17456931692288534854

namespace A205382

/-- `sqrt(lcm(64, ∑[or(1, 2*n)]))` -/
def P17456931692288534854.Spec : Prop :=
  ∀ n, P17456931692288534854.a n = (A205382 (n + 1) : ℝ)

end A205382

/-! ## A205382.P17217429845356525464

`∑[8*Δ[n/gcd(8, n)]]`
-/

namespace A205382.P17217429845356525464
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 8 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205382.P17217429845356525464

namespace A205382

/-- `∑[8*Δ[n/gcd(8, n)]]` -/
def P17217429845356525464.Spec : Prop :=
  ∀ n, P17217429845356525464.a n = (A205382 (n + 1) : ℚ)

end A205382

/-! ## A205382.P1351099295819017736

`A109049(1+n)`
-/

namespace A205382.P1351099295819017736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109049 (1 + n)

end

end A205382.P1351099295819017736

namespace A205382

/-- `A109049(1+n)` -/
def P1351099295819017736.Spec : Prop :=
  ∀ n, P1351099295819017736.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P16122881449113021171

`8*A106609(n+1)`
-/

namespace A205382.P16122881449113021171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A106609 (n + 1)

end

end A205382.P16122881449113021171

namespace A205382

/-- `8*A106609(n+1)` -/
def P16122881449113021171.Spec : Prop :=
  ∀ n, P16122881449113021171.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P9210767412648883227

`sqrt(lcm(64, Δ[A000330(n)]))`
-/

namespace A205382.P9210767412648883227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm 64 (f1 (n + 1) - f1 n) : ℝ)

end

end A205382.P9210767412648883227

namespace A205382

/-- `sqrt(lcm(64, Δ[A000330(n)]))` -/
def P9210767412648883227.Spec : Prop :=
  ∀ n, P9210767412648883227.a n = (A205382 (n + 1) : ℝ)

end A205382

/-! ## A205382.P6201924926953819876

`A008590(A106609(n+1))`
-/

namespace A205382.P6201924926953819876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A106609 (n + 1)).toNat

end

end A205382.P6201924926953819876

namespace A205382

/-- `A008590(A106609(n+1))` -/
def P6201924926953819876.Spec : Prop :=
  ∀ n, P6201924926953819876.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P1276816520751611475

`filter[A109049(n), A369048(#)]`
-/

namespace A205382.P1276816520751611475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A205382.P1276816520751611475

namespace A205382

/-- `filter[A109049(n), A369048(#)]` -/
def P1276816520751611475.Spec : Prop :=
  ∀ n, P1276816520751611475.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P4783776281650173627

`2*A109045(A026741(n+1))`
-/

namespace A205382.P4783776281650173627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109045 (A026741 (n + 1)).toNat

end

end A205382.P4783776281650173627

namespace A205382

/-- `2*A109045(A026741(n+1))` -/
def P4783776281650173627.Spec : Prop :=
  ∀ n, P4783776281650173627.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P3831143513153127748

`(n+1)*sqrt(A226044(n+1))`
-/

namespace A205382.P3831143513153127748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A226044 (n + 1) : ℝ)

end

end A205382.P3831143513153127748

namespace A205382

/-- `(n+1)*sqrt(A226044(n+1))` -/
def P3831143513153127748.Spec : Prop :=
  ∀ n, P3831143513153127748.a n = (A205382 (n + 1) : ℝ)

end A205382

/-! ## A205382.P13411299670651929185

`A070290(n+1)*A109011(n+1)`
-/

namespace A205382.P13411299670651929185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070290 (n + 1) * A109011 (n + 1)

end

end A205382.P13411299670651929185

namespace A205382

/-- `A070290(n+1)*A109011(n+1)` -/
def P13411299670651929185.Spec : Prop :=
  ∀ n, P13411299670651929185.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P9118154649647948503

`A008590(n+1)/A109011(n+1)`
-/

namespace A205382.P9118154649647948503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008590 (n + 1) : ℚ) / (A109011 (n + 1) : ℚ)

end

end A205382.P9118154649647948503

namespace A205382

/-- `A008590(n+1)/A109011(n+1)` -/
def P9118154649647948503.Spec : Prop :=
  ∀ n, P9118154649647948503.a n = (A205382 (n + 1) : ℚ)

end A205382

/-! ## A205382.P14772891923169801218

`filter[A109049(n), A091247(#)]`
-/

namespace A205382.P14772891923169801218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A205382.P14772891923169801218

namespace A205382

/-- `filter[A109049(n), A091247(#)]` -/
def P14772891923169801218.Spec : Prop :=
  ∀ n, P14772891923169801218.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P9541510639607765662

`filter[A109049(n), A178226(#)]`
-/

namespace A205382.P9541510639607765662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A205382.P9541510639607765662

namespace A205382

/-- `filter[A109049(n), A178226(#)]` -/
def P9541510639607765662.Spec : Prop :=
  ∀ n, P9541510639607765662.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P1119494728781594538

`filter[A109049(n), A341996(#)]`
-/

namespace A205382.P1119494728781594538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A205382.P1119494728781594538

namespace A205382

/-- `filter[A109049(n), A341996(#)]` -/
def P1119494728781594538.Spec : Prop :=
  ∀ n, P1119494728781594538.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P13450501157764147361

`filter[A109049(n), A341999(#)]`
-/

namespace A205382.P13450501157764147361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A205382.P13450501157764147361

namespace A205382

/-- `filter[A109049(n), A341999(#)]` -/
def P13450501157764147361.Spec : Prop :=
  ∀ n, P13450501157764147361.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P14437701098425689658

`A205380(n+1)-A205381(n+1)`
-/

namespace A205382.P14437701098425689658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205380 (n + 1) - A205381 (n + 1)

end

end A205382.P14437701098425689658

namespace A205382

/-- `A205380(n+1)-A205381(n+1)` -/
def P14437701098425689658.Spec : Prop :=
  ∀ n, P14437701098425689658.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P4336656392262865705

`8*A106617(2*(n+1))`
-/

namespace A205382.P4336656392262865705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A106617 (2 * (n + 1))

end

end A205382.P4336656392262865705

namespace A205382

/-- `8*A106617(2*(n+1))` -/
def P4336656392262865705.Spec : Prop :=
  ∀ n, P4336656392262865705.a n = A205382 (n + 1)

end A205382

/-! ## A205382.P10023658116610768816

`A008590(A106617(2*(n+1)))`
-/

namespace A205382.P10023658116610768816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A106617 (2 * (n + 1))).toNat

end

end A205382.P10023658116610768816

namespace A205382

/-- `A008590(A106617(2*(n+1)))` -/
def P10023658116610768816.Spec : Prop :=
  ∀ n, P10023658116610768816.a n = A205382 (n + 1)

end A205382

/-!
# A205383: a(n) = (1/n)*A205382(n).

The programs for A205383, the canonical program `A205383.P9207413136529053647` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205383 has offset 1).

The definition of A205383 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205382, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A205383.P9207413136529053647

`1/(n+1)*A205382(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A205383

/-- `1/(n+1)*A205382(n+1)` -/
def P9207413136529053647.Spec : Prop :=
  ∀ n, P9207413136529053647.a n = (A205383 (n + 1) : ℚ)

end A205383

/-! ## A205383.P12635474935503552443

`8/gcd(8, n+1)`
-/

namespace A205383.P12635474935503552443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (Nat.gcd 8 (n + 1) : ℚ)

end

end A205383.P12635474935503552443

namespace A205383

/-- `8/gcd(8, n+1)` -/
def P12635474935503552443.Spec : Prop :=
  ∀ n, P12635474935503552443.a n = (A205383 (n + 1) : ℚ)

end A205383

/-!
# A205384: Ordered differences of numbers s(j)=(1/2)C(2j,j).

The programs for A205384, the canonical program `A205384.P6115785948312690780` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205384 has offset 1).

The definition of A205384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205384.P6115785948312690780

`A001700(A002024(n+1))-A001700(A002262(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A205384

/-- `A001700(A002024(n+1))-A001700(A002262(n))` -/
def P6115785948312690780.Spec : Prop :=
  ∀ n, P6115785948312690780.a n = A205384 (n + 1)

theorem P6115785948312690780.correct : P6115785948312690780.Spec := by
  intro n
  simp only [A205384, Nat.add_sub_cancel]

end A205384

/-! ## A205384.P12948932515899887206

`A001700(A002024(n+1))-A088218(A002260(n+1))`
-/

namespace A205384.P12948932515899887206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A002024 (n + 1)).toNat - A088218 (A002260 (n + 1)).toNat

end

end A205384.P12948932515899887206

namespace A205384

/-- `A001700(A002024(n+1))-A088218(A002260(n+1))` -/
def P12948932515899887206.Spec : Prop :=
  ∀ n, P12948932515899887206.a n = A205384 (n + 1)

end A205384

/-! ## A205384.P12846291582179558645

`A205008(A080036(1+n))/2`
-/

namespace A205384.P12846291582179558645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205008 (A080036 (1 + n)).toNat : ℚ) / 2

end

end A205384.P12846291582179558645

namespace A205384

/-- `A205008(A080036(1+n))/2` -/
def P12846291582179558645.Spec : Prop :=
  ∀ n, P12846291582179558645.a n = (A205384 (n + 1) : ℚ)

end A205384

/-!
# A205385: Least h such that n divides the h-th difference between distinct numbers (1/2)C(2j,j), as ordered in A205384.

The programs for A205385, there is no canonical definition to state claims against.
-/

/-! ## A205385.P9176970312984263719

`A205009(2*(n+1))-A205386(n+1)`
-/

namespace A205385.P9176970312984263719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205009 (2 * (n + 1)) - A205386 (n + 1)

end

end A205385.P9176970312984263719

/-! ## A205385.P1603709576141076789

`A205009(2*(n+1))+1-A205010(2*(n+1))`
-/

namespace A205385.P1603709576141076789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205009 (2 * (n + 1)) + (1 - A205010 (2 * (n + 1)))

end

end A205385.P1603709576141076789

/-! ## A205385.P4370959994342279165

`A205009(A317440(n+1))-(A205010(2*(n+1))-1)`
-/

namespace A205385.P4370959994342279165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205009 (A317440 (n + 1)).toNat - (A205010 (2 * (n + 1)) - 1)

end

end A205385.P4370959994342279165

/-! ## A205385.P6650386284691499276

`A083920(A205009(2*(n+1))-1)`
-/

namespace A205385.P6650386284691499276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A205009 (2 * (n + 1)) - 1).toNat

end

end A205385.P6650386284691499276

/-! ## A205385.P3939989817164306693

`A205009(2*n+2)-A123578(A205009(2*n+2))`
-/

namespace A205385.P3939989817164306693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205009 (2 * n + 2) - A123578 (A205009 (2 * n + 2)).toNat

end

end A205385.P3939989817164306693

/-!
# A205386: Least k such that n divides s(k)-s(j) for some j<k, where s(j)=(1/2)C(2j,j).

The programs for A205386, there is no canonical definition to state claims against.
-/

/-! ## A205386.P13458200042331772399

`A205010(2*(n+1))-1`
-/

namespace A205386.P13458200042331772399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205010 (2 * (n + 1)) - 1

end

end A205386.P13458200042331772399

/-! ## A205386.P14687822225438384189

`round(sqrt(2*A205009(2*(n+1))))`
-/

namespace A205386.P14687822225438384189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A205009 (2 * (n + 1)) : ℝ))

end

end A205386.P14687822225438384189

/-! ## A205386.P14382747233513950541

`1+A002024(A205385(n+1))`
-/

namespace A205386.P14382747233513950541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205385 (n + 1)).toNat

end

end A205386.P14382747233513950541

/-! ## A205386.P10207183739798386694

`A003057(A205385(n+1)+1)`
-/

namespace A205386.P10207183739798386694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205385 (n + 1) + 1).toNat

end

end A205386.P10207183739798386694

/-! ## A205386.P17487377538580014075

`A002024(A205009(2*(n+1)))`
-/

namespace A205386.P17487377538580014075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205009 (2 * (n + 1))).toNat

end

end A205386.P17487377538580014075

/-! ## A205386.P14338772278588032713

`A123578(A205009(2*(n+1))-1)`
-/

namespace A205386.P14338772278588032713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205009 (2 * (n + 1)) - 1).toNat

end

end A205386.P14338772278588032713

/-! ## A205386.P9795251495460963842

`A123578(A014132(A205385(n+1)))`
-/

namespace A205386.P9795251495460963842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A014132 (A205385 (n + 1)).toNat).toNat

end

end A205386.P9795251495460963842

/-! ## A205386.P303605010481856689

`A014963(A248020(n+2))*A123578(A205009(2*n+2))`
-/

namespace A205386.P303605010481856689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A248020 (n + 2)).toNat * A123578 (A205009 (2 * n + 2)).toNat

end

end A205386.P303605010481856689

/-! ## A205386.P7785609132915010952

`A003557(A000040(n+2))*A123578(A205009(2*n+2))`
-/

namespace A205386.P7785609132915010952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000040 (n + 2)).toNat * A123578 (A205009 (2 * n + 2)).toNat

end

end A205386.P7785609132915010952

/-! ## A205386.P1243248707578496843

`A097285(2*A205385(n+1))`
-/

namespace A205386.P1243248707578496843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205385 (n + 1)).toNat

end

end A205386.P1243248707578496843

/-! ## A205386.P16368600442183564158

`A000194(2*A205385(n+1))+1`
-/

namespace A205386.P16368600442183564158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205385 (n + 1)).toNat + 1

end

end A205386.P16368600442183564158

/-! ## A205386.P3672201265596902082

`A130270(2*A205010(2*(n+1))²)`
-/

namespace A205386.P3672201265596902082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (2 * A205010 (2 * (n + 1)) ^ 2).toNat

end

end A205386.P3672201265596902082

/-! ## A205386.P7381581669152666720

`A014963(A044377(n+2))*A123578(A205009(2*n+2))`
-/

namespace A205386.P7381581669152666720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A044377 (n + 2)).toNat * A123578 (A205009 (2 * n + 2)).toNat

end

end A205386.P7381581669152666720

/-!
# A205387: The index j<k such that n divides s(k)-s(j) for some j, where s(j)=(1/2)C(2j,j).

The programs for A205387, there is no canonical definition to state claims against.
-/

/-! ## A205387.P546001364684208677

`A205011(2*(n+1))-1`
-/

namespace A205387.P546001364684208677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205011 (2 * (n + 1)) - 1

end

end A205387.P546001364684208677

/-! ## A205387.P7370769056107482986

`A002260(A205385(n+1))`
-/

namespace A205387.P7370769056107482986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205385 (n + 1)).toNat

end

end A205387.P7370769056107482986

/-! ## A205387.P5799316012674226562

`A130270(A205009(2*(n+1)))`
-/

namespace A205387.P5799316012674226562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (A205009 (2 * (n + 1))).toNat

end

end A205387.P5799316012674226562

/-! ## A205387.P15798482302716264799

`A002260(A205009(2*(n+1))-1)`
-/

namespace A205387.P15798482302716264799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205009 (2 * (n + 1)) - 1).toNat

end

end A205387.P15798482302716264799

/-! ## A205387.P16408755268685126552

`A097285(2*A205385(n+1)-1)`
-/

namespace A205387.P16408755268685126552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205385 (n + 1) - 1).toNat

end

end A205387.P16408755268685126552

/-! ## A205387.P9593470155393442763

`A097285(A205385(n+1)+A205385(n+1)-1)`
-/

namespace A205387.P9593470155393442763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205385 (n + 1) + (A205385 (n + 1) - 1)).toNat

end

end A205387.P9593470155393442763

/-!
# A205388: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=(1/2)C(2j,j).

The programs for A205388, there is no canonical definition to state claims against.
-/

/-! ## A205388.P2806369474540425890

`A088218(A205386(n+1))`
-/

namespace A205388.P2806369474540425890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (A205386 (n + 1)).toNat

end

end A205388.P2806369474540425890

/-! ## A205388.P8370231896252437750

`A001700(A205386(n+1)-1)`
-/

namespace A205388.P8370231896252437750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A205386 (n + 1) - 1).toNat

end

end A205388.P8370231896252437750

/-! ## A205388.P4722325997125625454

`A210736(2*A205386(n+1))`
-/

namespace A205388.P4722325997125625454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * A205386 (n + 1)).toNat

end

end A205388.P4722325997125625454

/-! ## A205388.P16443497753254407894

`A205390(n+1)+A205389(n+1)`
-/

namespace A205388.P16443497753254407894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205390 (n + 1) + A205389 (n + 1)

end

end A205388.P16443497753254407894

/-! ## A205388.P3367260170185155890

`A205389(n+1)+(n+1)*A205391(n+1)`
-/

namespace A205388.P3367260170185155890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205389 (n + 1) + (n + 1 : ℤ) * A205391 (n + 1)

end

end A205388.P3367260170185155890

/-! ## A205388.P16524027425034959035

`A205012(2*(n+1))/2`
-/

namespace A205388.P16524027425034959035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205012 (2 * (n + 1)) : ℚ) / 2

end

end A205388.P16524027425034959035

/-! ## A205388.P7393439072298831500

`(A205014(2*(n+1))+A205013(2*(n+1)))/2`
-/

namespace A205388.P7393439072298831500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205014 (2 * (n + 1)) + A205013 (2 * (n + 1)) : ℚ) / 2

end

end A205388.P7393439072298831500

/-! ## A205388.P542439700210992373

`A205389(n+1)+A205384(A205385(n+1))`
-/

namespace A205388.P542439700210992373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205389 (n + 1) + A205384 (A205385 (n + 1)).toNat

end

end A205388.P542439700210992373

/-! ## A205388.P7335648215937285932

`A034869(A205386(n+1)²)`
-/

namespace A205388.P7335648215937285932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 (A205386 (n + 1) ^ 2).toNat

end

end A205388.P7335648215937285932

/-! ## A205388.P10968547719388452915

`A007318(2*A205386(n+1)²)`
-/

namespace A205388.P10968547719388452915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * A205386 (n + 1) ^ 2).toNat

end

end A205388.P10968547719388452915

/-! ## A205388.P6516378388090764268

`A007318(A004273(A205386(n+1)²))`
-/

namespace A205388.P6516378388090764268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A004273 (A205386 (n + 1) ^ 2).toNat).toNat

end

end A205388.P6516378388090764268

/-! ## A205388.P11376335697602751388

`A007318(A005843(A205386(n+1)²))`
-/

namespace A205388.P11376335697602751388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A005843 (A205386 (n + 1) ^ 2).toNat).toNat

end

end A205388.P11376335697602751388

/-! ## A205388.P16828897825276275636

`A007318(A042948(A205386(n+1)²))`
-/

namespace A205388.P16828897825276275636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A042948 (A205386 (n + 1) ^ 2).toNat).toNat

end

end A205388.P16828897825276275636

/-! ## A205388.P3346986132840132563

`A007318(2*A205386(n+1)*A205386(n+1))`
-/

namespace A205388.P3346986132840132563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * A205386 (n + 1) * A205386 (n + 1)).toNat

end

end A205388.P3346986132840132563

/-!
# A205389: s(A205387), where s(j)=(1/2)C(2j,j).

The programs for A205389, there is no canonical definition to state claims against.
-/

/-! ## A205389.P4116004196769848616

`A088218(A205387(n+1))`
-/

namespace A205389.P4116004196769848616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (A205387 (n + 1)).toNat

end

end A205389.P4116004196769848616

/-! ## A205389.P5398502286173585770

`A001700(A205387(n+1)-1)`
-/

namespace A205389.P5398502286173585770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (A205387 (n + 1) - 1).toNat

end

end A205389.P5398502286173585770

/-! ## A205389.P5342989327421236293

`A205388(n+1)-A205390(n+1)`
-/

namespace A205389.P5342989327421236293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205388 (n + 1) - A205390 (n + 1)

end

end A205389.P5342989327421236293

/-! ## A205389.P7840769495129542517

`A205388(n+1)-(n+1)*A205391(n+1)`
-/

namespace A205389.P7840769495129542517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205388 (n + 1) - (n + 1 : ℤ) * A205391 (n + 1)

end

end A205389.P7840769495129542517

/-! ## A205389.P14536309219065684926

`A205013(2*(n+1))/2`
-/

namespace A205389.P14536309219065684926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205013 (2 * (n + 1)) : ℚ) / 2

end

end A205389.P14536309219065684926

/-! ## A205389.P4076427013905231329

`(A205012(2*(n+1))-A205014(2*(n+1)))/2`
-/

namespace A205389.P4076427013905231329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205012 (2 * (n + 1)) - A205014 (2 * (n + 1)) : ℚ) / 2

end

end A205389.P4076427013905231329

/-! ## A205389.P1951477501952523389

`A034869(A205387(n+1)²)`
-/

namespace A205389.P1951477501952523389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 (A205387 (n + 1) ^ 2).toNat

end

end A205389.P1951477501952523389

/-! ## A205389.P12157579688172858437

`A205388(n+1)-A205384(A205385(n+1))`
-/

namespace A205389.P12157579688172858437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205388 (n + 1) - A205384 (A205385 (n + 1)).toNat

end

end A205389.P12157579688172858437

/-! ## A205389.P15939577084713110055

`A007318(2*A205387(n+1)²)`
-/

namespace A205389.P15939577084713110055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * A205387 (n + 1) ^ 2).toNat

end

end A205389.P15939577084713110055

/-! ## A205389.P4431396412111179742

`A007318(A004273(A205387(n+1)²))`
-/

namespace A205389.P4431396412111179742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A004273 (A205387 (n + 1) ^ 2).toNat).toNat

end

end A205389.P4431396412111179742

/-! ## A205389.P6934409901737698833

`A007318(A005843(A205387(n+1)²))`
-/

namespace A205389.P6934409901737698833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A005843 (A205387 (n + 1) ^ 2).toNat).toNat

end

end A205389.P6934409901737698833

/-! ## A205389.P4243181526488673290

`A007318(A007607(A205387(n+1)²))`
-/

namespace A205389.P4243181526488673290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007607 (A205387 (n + 1) ^ 2).toNat).toNat

end

end A205389.P4243181526488673290

/-! ## A205389.P14974148711923872388

`A007318(2*A205387(n+1)*A205387(n+1))`
-/

namespace A205389.P14974148711923872388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * A205387 (n + 1) * A205387 (n + 1)).toNat

end

end A205389.P14974148711923872388

/-!
# A205390: s(k)-s(j), where (k,j) is the least pair for which n divides s(k)-s(j), and s(j)=(1/2)C(2j,j).

The programs for A205390, there is no canonical definition to state claims against.
-/

/-! ## A205390.P15391992379934234487

`(n+1)*A205391(n+1)`
-/

namespace A205390.P15391992379934234487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205391 (n + 1)

end

end A205390.P15391992379934234487

/-! ## A205390.P10173874174901882164

`A205388(n+1)-A205389(n+1)`
-/

namespace A205390.P10173874174901882164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205388 (n + 1) - A205389 (n + 1)

end

end A205390.P10173874174901882164

/-! ## A205390.P3496755092271543203

`A205014(2*(n+1))/2`
-/

namespace A205390.P3496755092271543203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205014 (2 * (n + 1)) : ℚ) / 2

end

end A205390.P3496755092271543203

/-! ## A205390.P11080280056534459082

`(n+1)*A205015(2*(n+1))`
-/

namespace A205390.P11080280056534459082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205015 (2 * (n + 1))

end

end A205390.P11080280056534459082

/-! ## A205390.P5267445322492481492

`(A205012(2*(n+1))-A205013(2*(n+1)))/2`
-/

namespace A205390.P5267445322492481492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205012 (2 * (n + 1)) - A205013 (2 * (n + 1)) : ℚ) / 2

end

end A205390.P5267445322492481492

/-! ## A205390.P2842702398039403295

`A205384(A205385(n+1))`
-/

namespace A205390.P2842702398039403295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205384 (A205385 (n + 1)).toNat

end

end A205390.P2842702398039403295

/-! ## A205390.P6679692109686015087

`A205008(A205009(2*(n+1)))/2`
-/

namespace A205390.P6679692109686015087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205008 (A205009 (2 * (n + 1))).toNat : ℚ) / 2

end

end A205390.P6679692109686015087

/-!
# A205391: (1/n)*A205390(n).

The programs for A205391, there is no canonical definition to state claims against.
-/

/-! ## A205391.P3601962958309226399

`1/(n+1)*A205390(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205391.P3601962958309226399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205390 (n + 1) : ℚ)

end

end A205391.P3601962958309226399

/-! ## A205391.P1636388205208538405

`A205390(n+1)/(n+1)`
-/

namespace A205391.P1636388205208538405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205390 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205391.P1636388205208538405

/-! ## A205391.P18356254179950242304

`(A205388(n+1)-A205389(n+1))/(n+1)`
-/

namespace A205391.P18356254179950242304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205388 (n + 1) - A205389 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205391.P18356254179950242304

/-! ## A205391.P10420854079852474500

`A205015(2*(n+1))`
-/

namespace A205391.P10420854079852474500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205015 (2 * (n + 1))

end

end A205391.P10420854079852474500

/-! ## A205391.P12445993610059777073

`A205014(2*(n+1))/(2*(n+1))`
-/

namespace A205391.P12445993610059777073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205014 (2 * (n + 1)) : ℚ) / (2 * (n + 1) : ℚ)

end

end A205391.P12445993610059777073

/-! ## A205391.P1055551990916574839

`gcd(A000038(n), A205015(A317440(n+1)))`
-/

namespace A205391.P1055551990916574839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A205015 (A317440 (n + 1)).toNat)

end

end A205391.P1055551990916574839

/-! ## A205391.P11469323437603795700

`A205384(A205385(n+1))/(n+1)`
-/

namespace A205391.P11469323437603795700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205384 (A205385 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205391.P11469323437603795700

/-! ## A205391.P18356831105615585073

`A205015(A317440(n+1))+A000038(A317440(n+1)²)`
-/

namespace A205391.P18356831105615585073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205015 (A317440 (n + 1)).toNat + A000038 (A317440 (n + 1) ^ 2).toNat

end

end A205391.P18356831105615585073

/-!
# A205392: Ordered differences of numbers s(j)=ceiling(j^2/2).

The programs for A205392, the canonical program `A205392.P956909529108325684` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205392 has offset 1).

The definition of A205392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205392.P7871636400677877787

`A106249(∑[A133128(n)])`
-/

namespace A205392.P7871636400677877787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205392.P7871636400677877787

namespace A205392

/-- `A106249(∑[A133128(n)])` -/
def P7871636400677877787.Spec : Prop :=
  ∀ n, P7871636400677877787.a n = A205392 (n + 1)

end A205392

/-! ## A205392.P956909529108325684

`A004525(A120070(n+2))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A205392

/-- `A004525(A120070(n+2))` -/
def P956909529108325684.Spec : Prop :=
  ∀ n, P956909529108325684.a n = A205392 (n + 1)

theorem P956909529108325684.correct : P956909529108325684.Spec := by
  intro n
  simp only [A205392, Nat.add_sub_cancel]

end A205392

/-! ## A205392.P7202567136442692892

`A004525(sqrt(A165447(n+2)))`
-/

namespace A205392.P7202567136442692892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway (Real.sqrt (A165447 (n + 2) : ℝ))).toNat

end

end A205392.P7202567136442692892

namespace A205392

/-- `A004525(sqrt(A165447(n+2)))` -/
def P7202567136442692892.Spec : Prop :=
  ∀ n, P7202567136442692892.a n = A205392 (n + 1)

end A205392

/-! ## A205392.P6314296238584575454

`A004525(∑[A133128(n)]+1)`
-/

namespace A205392.P6314296238584575454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A205392.P6314296238584575454

namespace A205392

/-- `A004525(∑[A133128(n)]+1)` -/
def P6314296238584575454.Spec : Prop :=
  ∀ n, P6314296238584575454.a n = A205392 (n + 1)

end A205392

/-! ## A205392.P17407498722870093525

`A162330(A120070(n+2)-1)`
-/

namespace A205392.P17407498722870093525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162330 (A120070 (n + 2) - 1).toNat

end

end A205392.P17407498722870093525

namespace A205392

/-- `A162330(A120070(n+2)-1)` -/
def P17407498722870093525.Spec : Prop :=
  ∀ n, P17407498722870093525.a n = A205392 (n + 1)

end A205392

/-! ## A205392.P12695043539194086193

`A083219(A120070(n+2)-2)`
-/

namespace A205392.P12695043539194086193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A120070 (n + 2) - 2).toNat

end

end A205392.P12695043539194086193

namespace A205392

/-- `A083219(A120070(n+2)-2)` -/
def P12695043539194086193.Spec : Prop :=
  ∀ n, P12695043539194086193.a n = A205392 (n + 1)

end A205392

/-! ## A205392.P8246939790713252418

`A004525(root(A165447(n+2), 2))`
-/

namespace A205392.P8246939790713252418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A165447 (n + 2) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A205392.P8246939790713252418

namespace A205392

/-- `A004525(root(A165447(n+2), 2))` -/
def P8246939790713252418.Spec : Prop :=
  ∀ n, P8246939790713252418.a n = A205392 (n + 1)

end A205392

/-! ## A205392.P17617373152288924274

`A004524(or(2, A120070(n+2)))`
-/

namespace A205392.P17617373152288924274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 2 (A120070 (n + 2))).toNat

end

end A205392.P17617373152288924274

namespace A205392

/-- `A004524(or(2, A120070(n+2)))` -/
def P17617373152288924274.Spec : Prop :=
  ∀ n, P17617373152288924274.a n = A205392 (n + 1)

end A205392

/-! ## A205392.P4429082824579252200

`A004524(A120070(n+2)-1)+1`
-/

namespace A205392.P4429082824579252200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A120070 (n + 2) - 1).toNat + 1

end

end A205392.P4429082824579252200

namespace A205392

/-- `A004524(A120070(n+2)-1)+1` -/
def P4429082824579252200.Spec : Prop :=
  ∀ n, P4429082824579252200.a n = A205392 (n + 1)

end A205392

/-! ## A205392.P15059164074631381515

`A008619(A080412(∑[A133128(n)]))`
-/

namespace A205392.P15059164074631381515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A080412 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A205392.P15059164074631381515

namespace A205392

/-- `A008619(A080412(∑[A133128(n)]))` -/
def P15059164074631381515.Spec : Prop :=
  ∀ n, P15059164074631381515.a n = A205392 (n + 1)

end A205392

/-! ## A205392.P18242760237975072472

`A004525(A092486(∑[A133128(n)]))`
-/

namespace A205392.P18242760237975072472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A092486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A205392.P18242760237975072472

namespace A205392

/-- `A004525(A092486(∑[A133128(n)]))` -/
def P18242760237975072472.Spec : Prop :=
  ∀ n, P18242760237975072472.a n = A205392 (n + 1)

end A205392

/-!
# A205394: Least k such that n divides s(k)-s(j) for some j<k, where s(j)=ceiling(j^2/2).

The programs for A205394, there is no canonical definition to state claims against.
-/

/-! ## A205394.P17917342889388707759

`row(A205396(n+1))+1`
-/

namespace A205394.P17917342889388707759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A205396 (n + 1)).toNat + 1

end

end A205394.P17917342889388707759

/-! ## A205394.P5994636615610297677

`A172471(A205398(n+1)+A205397(n+1))`
-/

namespace A205394.P5994636615610297677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A205398 (n + 1) + A205397 (n + 1)).toNat

end

end A205394.P5994636615610297677

/-! ## A205394.P11722762791719144705

`A002024(A205396(1+n))`
-/

namespace A205394.P11722762791719144705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205396 (1 + n)).toNat

end

end A205394.P11722762791719144705

/-! ## A205394.P4889659196178085411

`1+A002024(A205393(n+1))`
-/

namespace A205394.P4889659196178085411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A002024 (A205393 (n + 1)).toNat

end

end A205394.P4889659196178085411

/-! ## A205394.P10250109025732981468

`A003057(A205393(n+1)+1)`
-/

namespace A205394.P10250109025732981468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205393 (n + 1) + 1).toNat

end

end A205394.P10250109025732981468

/-! ## A205394.P6875438097141922344

`A003057(A205396(n+1)+1)-1`
-/

namespace A205394.P6875438097141922344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205396 (n + 1) + 1).toNat - 1

end

end A205394.P6875438097141922344

/-! ## A205394.P5910208294732871403

`A002024(A014132(A205393(n+1)))`
-/

namespace A205394.P5910208294732871403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A014132 (A205393 (n + 1)).toNat).toNat

end

end A205394.P5910208294732871403

/-! ## A205394.P17219078713751683133

`A002024(A205398(n+1)+A205397(n+1))`
-/

namespace A205394.P17219078713751683133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205398 (n + 1) + A205397 (n + 1)).toNat

end

end A205394.P17219078713751683133

/-! ## A205394.P760004814207506266

`A123578(A205398(n+1)+A205397(n+1))`
-/

namespace A205394.P760004814207506266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A205398 (n + 1) + A205397 (n + 1)).toNat

end

end A205394.P760004814207506266

/-! ## A205394.P12000355837301201416

`A183110(A205398(n+1)+A205397(n+1))`
-/

namespace A205394.P12000355837301201416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183110 (A205398 (n + 1) + A205397 (n + 1)).toNat

end

end A205394.P12000355837301201416

/-!
# A205395: The index j<k such that n divides s(k)-s(j) for some j, where s(j)=ceiling(j^2/2), and k is the least index for which such an index j exists.

The programs for A205395, there is no canonical definition to state claims against.
-/

/-! ## A205395.P8042290322966120804

`A262689(2*A205397(n+1))`
-/

namespace A205395.P8042290322966120804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (2 * A205397 (n + 1)).toNat

end

end A205395.P8042290322966120804

/-! ## A205395.P285672176261491676

`A262689(A205397(n+1)+A205397(n+1)+1)`
-/

namespace A205395.P285672176261491676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A205397 (n + 1) + (A205397 (n + 1) + 1)).toNat

end

end A205395.P285672176261491676

/-! ## A205395.P9582057742641624713

`A172471(A205397(n+1))`
-/

namespace A205395.P9582057742641624713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A205397 (n + 1)).toNat

end

end A205395.P9582057742641624713

/-! ## A205395.P12821132711846994301

`A002260(A205393(n+1))`
-/

namespace A205395.P12821132711846994301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205393 (n + 1)).toNat

end

end A205395.P12821132711846994301

/-! ## A205395.P12757264493387758214

`A002024(A205397(n+1))`
-/

namespace A205395.P12757264493387758214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205397 (n + 1)).toNat

end

end A205395.P12757264493387758214

/-! ## A205395.P13858285781766547419

`A123578(or(1, A205397(n+1)))`
-/

namespace A205395.P13858285781766547419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.lor 1 (A205397 (n + 1))).toNat

end

end A205395.P13858285781766547419

/-! ## A205395.P15750058968039366689

`A002024(A205396(n+1)-A205398(n+1))`
-/

namespace A205395.P15750058968039366689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205396 (n + 1) - A205398 (n + 1)).toNat

end

end A205395.P15750058968039366689

/-! ## A205395.P2522659652260371734

`A123578(2*A205397(n+1)-A205397(n+1))`
-/

namespace A205395.P2522659652260371734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (2 * A205397 (n + 1) - A205397 (n + 1)).toNat

end

end A205395.P2522659652260371734

/-! ## A205395.P4507005942461291346

`A000196(2*A205397(n+1))`
-/

namespace A205395.P4507005942461291346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A205397 (n + 1)).toNat

end

end A205395.P4507005942461291346

/-! ## A205395.P6131023630537618041

`A000194(2*A205397(n+1)-1)`
-/

namespace A205395.P6131023630537618041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205397 (n + 1) - 1).toNat

end

end A205395.P6131023630537618041

/-! ## A205395.P9272235144472516216

`A000194(A205397(n+1)+A205397(n+1)-1)`
-/

namespace A205395.P9272235144472516216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A205397 (n + 1) + (A205397 (n + 1) - 1)).toNat

end

end A205395.P9272235144472516216

/-! ## A205395.P7544535702755038031

`A000194(2*A205397(n+1))`
-/

namespace A205395.P7544535702755038031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A205397 (n + 1)).toNat

end

end A205395.P7544535702755038031

/-! ## A205395.P10404327366998054453

`A000196(A205397(n+1)+A205397(n+1)+1)`
-/

namespace A205395.P10404327366998054453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A205397 (n + 1) + (A205397 (n + 1) + 1)).toNat

end

end A205395.P10404327366998054453

/-!
# A205396: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=ceiling(j^2/2).

The programs for A205396, there is no canonical definition to state claims against.
-/

/-! ## A205396.P13101112799859557048

`ceil(A205394(n+1)²/2)`
-/

namespace A205396.P13101112799859557048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A205394 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A205396.P13101112799859557048

/-! ## A205396.P341149125877976365

`A000982(A205394(n+1))`
-/

namespace A205396.P341149125877976365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A205394 (n + 1)).toNat

end

end A205396.P341149125877976365

/-! ## A205396.P8754860345601610257

`A001971(2*A205394(n+1))`
-/

namespace A205396.P8754860345601610257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * A205394 (n + 1)).toNat

end

end A205396.P8754860345601610257

/-! ## A205396.P15803325940179294713

`A205398(n+1)+A205397(n+1)`
-/

namespace A205396.P15803325940179294713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205398 (n + 1) + A205397 (n + 1)

end

end A205396.P15803325940179294713

/-! ## A205396.P15321582553176050530

`A205398(n+1)+A000982(A205395(n+1))`
-/

namespace A205396.P15321582553176050530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205398 (n + 1) + A000982 (A205395 (n + 1)).toNat

end

end A205396.P15321582553176050530

/-! ## A205396.P15180177179728875288

`A205397(n+1)+A205392(A205393(n+1))`
-/

namespace A205396.P15180177179728875288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205397 (n + 1) + A205392 (A205393 (n + 1)).toNat

end

end A205396.P15180177179728875288

/-! ## A205396.P7869056125452409437

`A004525(A205394(n+1)²)`
-/

namespace A205396.P7869056125452409437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A205394 (n + 1) ^ 2).toNat

end

end A205396.P7869056125452409437

/-! ## A205396.P7632529907820950437

`A083219(A205394(n+1)²)`
-/

namespace A205396.P7632529907820950437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A205394 (n + 1) ^ 2).toNat

end

end A205396.P7632529907820950437

/-! ## A205396.P4145629821859803435

`A110654(A205394(n+1)²)`
-/

namespace A205396.P4145629821859803435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A205394 (n + 1) ^ 2).toNat

end

end A205396.P4145629821859803435

/-! ## A205396.P12381281993127803934

`A004525(A205394(n+1)^2)`
-/

namespace A205396.P12381281993127803934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A205394 (n + 1) ^ 2).toNat

end

end A205396.P12381281993127803934

/-! ## A205396.P1412983315382124212

`A004526(A205394(n+1)²+1)`
-/

namespace A205396.P1412983315382124212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A205394 (n + 1) ^ 2 + 1).toNat

end

end A205396.P1412983315382124212

/-! ## A205396.P10237683958775511491

`A080412(A205394(n+1)²)/2`
-/

namespace A205396.P10237683958775511491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080412 (A205394 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A205396.P10237683958775511491

/-!
# A205397: s(A205395), where s(j)=ceiling(j^2/2).

The programs for A205397, there is no canonical definition to state claims against.
-/

/-! ## A205397.P8669763271353544363

`A205396(n+1)-A205398(n+1)`
-/

namespace A205397.P8669763271353544363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205396 (n + 1) - A205398 (n + 1)

end

end A205397.P8669763271353544363

/-! ## A205397.P11505938368020374656

`A000982(A205394(n+1))-A205398(n+1)`
-/

namespace A205397.P11505938368020374656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A205394 (n + 1)).toNat - A205398 (n + 1)

end

end A205397.P11505938368020374656

/-! ## A205397.P14617029776266479170

`ceil(A205395(n+1)²/2)`
-/

namespace A205397.P14617029776266479170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A205395 (n + 1) ^ 2 : ℚ) / 2⌉

end

end A205397.P14617029776266479170

/-! ## A205397.P4853623563752545920

`A000982(A205395(n+1))`
-/

namespace A205397.P4853623563752545920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A205395 (n + 1)).toNat

end

end A205397.P4853623563752545920

/-! ## A205397.P9165685147458893634

`A001971(2*A205395(n+1))`
-/

namespace A205397.P9165685147458893634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (2 * A205395 (n + 1)).toNat

end

end A205397.P9165685147458893634

/-! ## A205397.P7915455513590551099

`A205396(n+1)-A205392(A205393(n+1))`
-/

namespace A205397.P7915455513590551099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205396 (n + 1) - A205392 (A205393 (n + 1)).toNat

end

end A205397.P7915455513590551099

/-! ## A205397.P10605941282678366363

`A004525(A205395(n+1)²)`
-/

namespace A205397.P10605941282678366363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A205395 (n + 1) ^ 2).toNat

end

end A205397.P10605941282678366363

/-! ## A205397.P16193747422777302739

`A110654(A205395(n+1)²)`
-/

namespace A205397.P16193747422777302739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A205395 (n + 1) ^ 2).toNat

end

end A205397.P16193747422777302739

/-! ## A205397.P5026602760528108120

`A004525(A205395(n+1)^2)`
-/

namespace A205397.P5026602760528108120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A205395 (n + 1) ^ 2).toNat

end

end A205397.P5026602760528108120

/-! ## A205397.P13364624133579601087

`A110654(A205395(n+1)^2)`
-/

namespace A205397.P13364624133579601087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A205395 (n + 1) ^ 2).toNat

end

end A205397.P13364624133579601087

/-! ## A205397.P5501046661916018073

`A008619(A205395(n+1)²-1)`
-/

namespace A205397.P5501046661916018073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A205395 (n + 1) ^ 2 - 1).toNat

end

end A205397.P5501046661916018073

/-! ## A205397.P9638126630008654570

`A004524(A205395(n+1)²+2)`
-/

namespace A205397.P9638126630008654570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A205395 (n + 1) ^ 2 + 2).toNat

end

end A205397.P9638126630008654570

/-!
# A205398: s(k)-s(j), where (k,j) is the least pair for which n divides s(k)-s(j), and s(j)=ceiling(j^2/2).

The programs for A205398, there is no canonical definition to state claims against.
-/

/-! ## A205398.P3758887964465148481

`A205396(n+1)-A205397(n+1)`
-/

namespace A205398.P3758887964465148481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205396 (n + 1) - A205397 (n + 1)

end

end A205398.P3758887964465148481

/-! ## A205398.P16611328055829833751

`A000982(A205394(n+1))-A205397(n+1)`
-/

namespace A205398.P16611328055829833751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A205394 (n + 1)).toNat - A205397 (n + 1)

end

end A205398.P16611328055829833751

/-! ## A205398.P9051709588430763236

`A205396(n+1)-A000982(A205395(n+1))`
-/

namespace A205398.P9051709588430763236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205396 (n + 1) - A000982 (A205395 (n + 1)).toNat

end

end A205398.P9051709588430763236

/-! ## A205398.P2271809570437080654

`(n+1)*A205399(n+1)`
-/

namespace A205398.P2271809570437080654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205399 (n + 1)

end

end A205398.P2271809570437080654

/-! ## A205398.P1171617138535966160

`A205392(A205393(n+1))`
-/

namespace A205398.P1171617138535966160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205392 (A205393 (n + 1)).toNat

end

end A205398.P1171617138535966160

/-! ## A205398.P7697949932022368024

`log2(A011782(n+2)^A205399(n+1))`
-/

namespace A205398.P7697949932022368024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A011782 (n + 2) : ℚ) ^ (A205399 (n + 1) : ℤ) : ℝ)

end

end A205398.P7697949932022368024

/-!
# A205399: (1/n)*A205398(n).

The programs for A205399, there is no canonical definition to state claims against.
-/

/-! ## A205399.P298201115615124336

`1/(n+1)*A205398(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205399.P298201115615124336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205398 (n + 1) : ℚ)

end

end A205399.P298201115615124336

/-! ## A205399.P7087866853345475687

`A205398(n+1)/(n+1)`
-/

namespace A205399.P7087866853345475687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205398 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205399.P7087866853345475687

/-! ## A205399.P17031370583030418945

`(A205396(n+1)-A205397(n+1))/(n+1)`
-/

namespace A205399.P17031370583030418945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205396 (n + 1) - A205397 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205399.P17031370583030418945

/-! ## A205399.P13797809908186401012

`A008574(A205398(n+1))%A004767(n)`
-/

namespace A205399.P13797809908186401012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A205398 (n + 1)).toNat) (A004767 n)

end

end A205399.P13797809908186401012

/-! ## A205399.P15978704032881903235

`A008590(A205398(n+1))%A004771(n)`
-/

namespace A205399.P15978704032881903235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008590 (A205398 (n + 1)).toNat) (A004771 n)

end

end A205399.P15978704032881903235

/-! ## A205399.P14806700275966989474

`A008486(A205398(n+1))%A016789(n)`
-/

namespace A205399.P14806700275966989474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A205398 (n + 1)).toNat) (A016789 n)

end

end A205399.P14806700275966989474

/-! ## A205399.P14281476707537726778

`A008458(A205398(n+1))%A016969(n)`
-/

namespace A205399.P14281476707537726778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A205398 (n + 1)).toNat) (A016969 n)

end

end A205399.P14281476707537726778

/-! ## A205399.P17811875289421203746

`A008587(A205398(n+1))%A016897(n)`
-/

namespace A205399.P17811875289421203746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008587 (A205398 (n + 1)).toNat) (A016897 n)

end

end A205399.P17811875289421203746

/-! ## A205399.P12098602248466124326

`A008592(A205398(n+1))%A017377(n)`
-/

namespace A205399.P12098602248466124326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008592 (A205398 (n + 1)).toNat) (A017377 n)

end

end A205399.P12098602248466124326

/-! ## A205399.P14315167752981193695

`A205392(A205393(n+1))/(n+1)`
-/

namespace A205399.P14315167752981193695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205392 (A205393 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205399.P14315167752981193695

/-! ## A205399.P17646624473624751029

`A007913((n+1)*A205398(n+1))`
-/

namespace A205399.P17646624473624751029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A205398 (n + 1)).toNat

end

end A205399.P17646624473624751029

