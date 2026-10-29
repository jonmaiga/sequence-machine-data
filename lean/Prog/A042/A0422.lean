import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C011
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
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

/-!
# A042200: Numerators of continued fraction convergents to sqrt(626).

The programs for A042200, the canonical program `A042200.P15125977422861060687` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042200 has offset 0).

The definition of A042200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042200.P15125977422861060687

`ogf((25+x)/(1-50x-x^2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042200

/-- `ogf((25+x)/(1-50x-x^2))` -/
def P15125977422861060687.Spec : Prop :=
  ∀ n, P15125977422861060687.a n = A042200 n

theorem P15125977422861060687.correct : P15125977422861060687.Spec := by
  intro n
  simp only [A042200]

end A042200

/-!
# A042201: Denominators of continued fraction convergents to sqrt(626).

The programs for A042201, the canonical program `A042201.P6551765343286267054` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042201 has offset 0).

The definition of A042201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042201.P11857426631445583049

`ogf(1/(1-50x-x^2))`
-/

namespace A042201.P11857426631445583049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -50, -1] n

end

end A042201.P11857426631445583049

namespace A042201

/-- `ogf(1/(1-50x-x^2))` -/
def P11857426631445583049.Spec : Prop :=
  ∀ n, P11857426631445583049.a n = A042201 n

end A042201

/-! ## A042201.P6551765343286267054

`50*a(n-1)+a(n-2)` with `a(0)=1, a(1)=50`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042201

/-- `50*a(n-1)+a(n-2)` -/
def P6551765343286267054.Spec : Prop :=
  ∀ n, (P6551765343286267054.a n : ℤ) = A042201 n

theorem P6551765343286267054.correct : P6551765343286267054.Spec := by
  intro n
  simp only [A042201]

end A042201

/-! ## A042201.P5750479672068854432

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=50`
-/

namespace A042201.P5750479672068854432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 50] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A042201.P5750479672068854432

namespace A042201

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P5750479672068854432.Spec : Prop :=
  ∀ n, P5750479672068854432.a n = (A042201 n : ℚ)

end A042201

/-! ## A042201.P5307769727860013708

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=50`
-/

namespace A042201.P5307769727860013708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 50] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A042201.P5307769727860013708

namespace A042201

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P5307769727860013708.Spec : Prop :=
  ∀ n, P5307769727860013708.a n = A042201 n

end A042201

/-!
# A042208: Numerators of continued fraction convergents to sqrt(630).

The programs for A042208, there is no canonical definition to state claims against.
-/

/-! ## A042208.P17687761557056359579

`A041122(3*n+2)`
-/

namespace A042208.P17687761557056359579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041122 (3 * n + 2)

end

end A042208.P17687761557056359579

/-! ## A042208.P15653084946046621614

`record[A041122(A004483(n))]`
-/

namespace A042208.P15653084946046621614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041122 (A004483 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042208.P15653084946046621614

/-! ## A042208.P11141406381600529170

`record[A041122(A166517(n))]`
-/

namespace A042208.P11141406381600529170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041122 (A166517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A042208.P11141406381600529170

/-! ## A042208.P14954433855977372092

`or(1, A041122(A004483(3*n)))`
-/

namespace A042208.P14954433855977372092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041122 (A004483 (3 * n)).toNat)

end

end A042208.P14954433855977372092

/-! ## A042208.P10468744083542211678

`A041526(3*n+2)/Δ[A007494(n)]`
-/

namespace A042208.P10468744083542211678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041526 (3 * n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042208.P10468744083542211678

/-!
# A042209: Denominators of continued fraction convergents to sqrt(630).

The programs for A042209, there is no canonical definition to state claims against.
-/

/-! ## A042209.P12732384361565082650

`A041123(3*n+2)/3`
-/

namespace A042209.P12732384361565082650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041123 (3 * n + 2) : ℚ) / 3

end

end A042209.P12732384361565082650

/-!
# A042210: Numerators of continued fraction convergents to sqrt(631).

The programs for A042210, there is no canonical definition to state claims against.
-/

/-! ## A042210.P9785639538078269761

`A212112(n)+25*A341307(25*A212112(n))`
-/

namespace A042210.P9785639538078269761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212112 n + 25 * A341307 (25 * A212112 n).toNat

end

end A042210.P9785639538078269761

/-!
# A042211: Denominators of continued fraction convergents to sqrt(631).

The programs for A042211, there is no canonical definition to state claims against.
-/

/-! ## A042211.P6922261621773754578

`A341307(25*A212112(n))`
-/

namespace A042211.P6922261621773754578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (25 * A212112 n).toNat

end

end A042211.P6922261621773754578

/-!
# A042215: Denominators of continued fraction convergents to sqrt(633).

The programs for A042215, there is no canonical definition to state claims against.
-/

/-! ## A042215.P6642979382652193713

`a(n-2)+a(n-1)*A005136(a(n-2))` with `a(0)=1, a(1)=6, a(2)=19`
-/

namespace A042215.P6642979382652193713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 19] fun n a =>
  a (n - 2) + a (n - 1) * A005136 (a (n - 2)).toNat

end

end A042215.P6642979382652193713

/-!
# A042221: Denominators of continued fraction convergents to sqrt(636).

The programs for A042221, there is no canonical definition to state claims against.
-/

/-! ## A042221.P18160251853805064100

`A258251(A339782(n))`
-/

namespace A042221.P18160251853805064100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258251 (A339782 n).toNat

end

end A042221.P18160251853805064100

/-!
# A042225: Denominators of continued fraction convergents to sqrt(638).

The programs for A042225, there is no canonical definition to state claims against.
-/

/-! ## A042225.P17253836428234686438

`A190353(A133594(n)*A133619(n))`
-/

namespace A042225.P17253836428234686438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (A133594 n * A133619 n).toNat

end

end A042225.P17253836428234686438

/-!
# A042227: Denominators of continued fraction convergents to sqrt(639).

The programs for A042227, there is no canonical definition to state claims against.
-/

/-! ## A042227.P895857191914323746

`A277914(A277967(n+1)+A277871(n))`
-/

namespace A042227.P895857191914323746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277914 (A277967 (n + 1) + A277871 n).toNat

end

end A042227.P895857191914323746

/-!
# A042233: Denominators of continued fraction convergents to sqrt(642).

The programs for A042233, there is no canonical definition to state claims against.
-/

/-! ## A042233.P4720358662246598562

`A353825(A041953(n))`
-/

namespace A042233.P4720358662246598562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353825 (A041953 n).toNat

end

end A042233.P4720358662246598562

/-!
# A042235: Denominators of continued fraction convergents to sqrt(643).

The programs for A042235, there is no canonical definition to state claims against.
-/

/-! ## A042235.P3962635189405837797

`A238710(A369682(n))`
-/

namespace A042235.P3962635189405837797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238710 (A369682 n).toNat

end

end A042235.P3962635189405837797

/-!
# A042239: Denominators of continued fraction convergents to sqrt(645).

The programs for A042239, there is no canonical definition to state claims against.
-/

/-! ## A042239.P3369754946230168473

`A362500(A238720(n+1))`
-/

namespace A042239.P3369754946230168473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362500 (A238720 (n + 1)).toNat

end

end A042239.P3369754946230168473

/-!
# A042241: Denominators of continued fraction convergents to sqrt(646).

The programs for A042241, there is no canonical definition to state claims against.
-/

/-! ## A042241.P15313628139567264856

`A147365(A310398(n))+∑[A047486(n+1)]`
-/

namespace A042241.P15313628139567264856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147365 (A310398 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A042241.P15313628139567264856

/-!
# A042248: Numerators of continued fraction convergents to sqrt(650).

The programs for A042248, there is no canonical definition to state claims against.
-/

/-! ## A042248.P3473291805086514773

`gcd(5, A001078(n))*A041040(n)`
-/

namespace A042248.P3473291805086514773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A001078 n) : ℤ) * A041040 n

end

end A042248.P3473291805086514773

/-! ## A042248.P16517257822266504554

`A041040(n)*A132400((n+1)²)`
-/

namespace A042248.P16517257822266504554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041040 n * A132400 ((n + 1) ^ 2)

end

end A042248.P16517257822266504554

/-! ## A042248.P6074003584606837145

`A007599(A020639(3*(n+1))²)*A041040(n)`
-/

namespace A042248.P6074003584606837145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A020639 (3 * (n + 1)) ^ 2).toNat * A041040 n

end

end A042248.P6074003584606837145

/-! ## A042248.P6602246311857605881

`A088320(∑[A062157(n+1)])*A088320(n+1)`
-/

namespace A042248.P6602246311857605881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088320 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A088320 (n + 1)

end

end A042248.P6602246311857605881

/-!
# A042249: Denominators of continued fraction convergents to sqrt(650).

The programs for A042249, the canonical program `A042249.P11205344450646246908` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042249 has offset 0).

The definition of A042249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042249.P11205344450646246908

`102*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=101, a(3)=204`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042249

/-- `102*a(n-2)-a(n-4)` -/
def P11205344450646246908.Spec : Prop :=
  ∀ n, P11205344450646246908.a n = A042249 n

theorem P11205344450646246908.correct : P11205344450646246908.Spec := by
  intro n
  simp only [A042249]

end A042249

/-! ## A042249.P9852021428195847880

`A041041(n)/(A010673(n)²+1)`
-/

namespace A042249.P9852021428195847880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (A010673 n ^ 2 + 1 : ℚ)

end

end A042249.P9852021428195847880

namespace A042249

/-- `A041041(n)/(A010673(n)²+1)` -/
def P9852021428195847880.Spec : Prop :=
  ∀ n, P9852021428195847880.a n = (A042249 n : ℚ)

end A042249

/-! ## A042249.P13071609217769611688

`A041041(n)/A105738(gcd(n+1, 2*n))`
-/

namespace A042249.P13071609217769611688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (A105738 (Nat.gcd (n + 1) (2 * n)) : ℚ)

end

end A042249.P13071609217769611688

namespace A042249

/-- `A041041(n)/A105738(gcd(n+1, 2*n))` -/
def P13071609217769611688.Spec : Prop :=
  ∀ n, P13071609217769611688.a n = (A042249 n : ℚ)

end A042249

/-! ## A042249.P13555370612691162768

`A041041(n)/Δ[A014681(A016777(n))]`
-/

namespace A042249.P13555370612691162768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A016777 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A042249.P13555370612691162768

namespace A042249

/-- `A041041(n)/Δ[A014681(A016777(n))]` -/
def P13555370612691162768.Spec : Prop :=
  ∀ n, P13555370612691162768.a n = (A042249 n : ℚ)

end A042249

/-! ## A042249.P11891358498614727131

`A041041(n)/A042948(Δ[A042948(n)])`
-/

namespace A042249.P11891358498614727131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (A042948 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042249.P11891358498614727131

namespace A042249

/-- `A041041(n)/A042948(Δ[A042948(n)])` -/
def P11891358498614727131.Spec : Prop :=
  ∀ n, P11891358498614727131.a n = (A042249 n : ℚ)

end A042249

/-! ## A042249.P16864186255738221358

`A041041(n)/A001651(Δ[A001651(n+1)]²)`
-/

namespace A042249.P16864186255738221358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041041 n : ℚ) / (A001651 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A042249.P16864186255738221358

namespace A042249

/-- `A041041(n)/A001651(Δ[A001651(n+1)]²)` -/
def P16864186255738221358.Spec : Prop :=
  ∀ n, P16864186255738221358.a n = (A042249 n : ℚ)

end A042249

/-! ## A042249.P94315012693702115

`gcd(∑[2*A099374(n)], A041041(n))`
-/

namespace A042249.P94315012693702115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A041041 n)

end

end A042249.P94315012693702115

namespace A042249

/-- `gcd(∑[2*A099374(n)], A041041(n))` -/
def P94315012693702115.Spec : Prop :=
  ∀ n, (P94315012693702115.a n : ℤ) = A042249 n

end A042249

/-!
# A042255: Denominators of continued fraction convergents to sqrt(653).

The programs for A042255, there is no canonical definition to state claims against.
-/

/-! ## A042255.P12429173206184463508

`A087504(A322442(n))`
-/

namespace A042255.P12429173206184463508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087504 (A322442 n).toNat

end

end A042255.P12429173206184463508

/-!
# A042259: Denominators of continued fraction convergents to sqrt(655).

The programs for A042259, there is no canonical definition to state claims against.
-/

/-! ## A042259.P617247937688775585

`A060749(A239836(n)+A022896(n+3))`
-/

namespace A042259.P617247937688775585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (A239836 n + A022896 (n + 3)).toNat

end

end A042259.P617247937688775585

/-!
# A042260: Numerators of continued fraction convergents to sqrt(656).

The programs for A042260, there is no canonical definition to state claims against.
-/

/-! ## A042260.P16048847067709057799

`A022395(comp[a(n-2)+6^(n%2)])` with `a(0)=8, a(1)=0`
-/

namespace A042260.P16048847067709057799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 0] fun n f1 =>
  f1 (n - 2) + 6 ^ (n % 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022395 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A042260.P16048847067709057799

/-!
# A042261: Denominators of continued fraction convergents to sqrt(656).

The programs for A042261, there is no canonical definition to state claims against.
-/

/-! ## A042261.P13793968974512478013

`A351870(A308822(n))+A266773(n)`
-/

namespace A042261.P13793968974512478013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A308822 n).toNat + A266773 n

end

end A042261.P13793968974512478013

/-! ## A042261.P1648382499915215051

`A351870(n*A026811(n))+A266773(n)`
-/

namespace A042261.P1648382499915215051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 ((n : ℤ) * A026811 n).toNat + A266773 n

end

end A042261.P1648382499915215051

/-! ## A042261.P1623640245140187990

`A266773(n)+A161511(A000225(n)*A033301(n))`
-/

namespace A042261.P1623640245140187990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266773 n + A161511 (A000225 n * A033301 n).toNat

end

end A042261.P1623640245140187990

/-! ## A042261.P8069605609239186081

`A271315(∑[comp[6*n]]+n+2)`
-/

namespace A042261.P8069605609239186081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271315 (∑ j ∈ Finset.range (n + 1), f1 j + n + 2)

end

end A042261.P8069605609239186081

/-!
# A042263: Denominators of continued fraction convergents to sqrt(657).

The programs for A042263, there is no canonical definition to state claims against.
-/

/-! ## A042263.P6150041083537398110

`filter[A113873(n), A304569(#)]`
-/

namespace A042263.P6150041083537398110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304569 (f1 j).toNat = 1) n)

end

end A042263.P6150041083537398110

/-! ## A042263.P13398374084833509138

`A004736(or(A026590(n), A126120(n)))`
-/

namespace A042263.P13398374084833509138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Int.lor (A026590 n) (A126120 n)).toNat

end

end A042263.P13398374084833509138

/-! ## A042263.P1824449027161235840

`A227050(n+1)+A205558(A000112(n))`
-/

namespace A042263.P1824449027161235840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227050 (n + 1) + A205558 (A000112 n).toNat

end

end A042263.P1824449027161235840

/-!
# A042267: Denominators of continued fraction convergents to sqrt(659).

The programs for A042267, there is no canonical definition to state claims against.
-/

/-! ## A042267.P3428718571282444944

`A008676(A041734(n))-A287337(n+1)`
-/

namespace A042267.P3428718571282444944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A041734 n).toNat - A287337 (n + 1)

end

end A042267.P3428718571282444944

/-!
# A042271: Denominators of continued fraction convergents to sqrt(661).

The programs for A042271, there is no canonical definition to state claims against.
-/

/-! ## A042271.P3961371300095890440

`A294674(∏[floor(n/2)+1])`
-/

namespace A042271.P3961371300095890440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A042271.P3961371300095890440

/-!
# A042275: Denominators of continued fraction convergents to sqrt(663).

The programs for A042275, the canonical program `A042275.P1030660677313211527` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042275 has offset 0).

The definition of A042275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042275.P1030660677313211527

`206*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=203, a(5)=207, a(6)=617, a(7)=824`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042275

/-- `206*a(n-4)-a(n-8)` -/
def P1030660677313211527.Spec : Prop :=
  ∀ n, P1030660677313211527.a n = A042275 n

theorem P1030660677313211527.correct : P1030660677313211527.Spec := by
  intro n
  simp only [A042275]

end A042275

/-! ## A042275.P6090939200794500189

`A055643(A041465(n))`
-/

namespace A042275.P6090939200794500189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A041465 n).toNat

end

end A042275.P6090939200794500189

namespace A042275

/-- `A055643(A041465(n))` -/
def P6090939200794500189.Spec : Prop :=
  ∀ n, P6090939200794500189.a n = A042275 n

end A042275

/-! ## A042275.P9299255032565755822

`A098240(A042081(n))`
-/

namespace A042275.P9299255032565755822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098240 (A042081 n).toNat

end

end A042275.P9299255032565755822

namespace A042275

/-- `A098240(A042081(n))` -/
def P9299255032565755822.Spec : Prop :=
  ∀ n, P9299255032565755822.a n = A042275 n

end A042275

/-!
# A042277: Denominators of continued fraction convergents to sqrt(664).

The programs for A042277, there is no canonical definition to state claims against.
-/

/-! ## A042277.P4847041982147978070

`∑{d}[A261898(n), A262357(#)]`
-/

namespace A042277.P4847041982147978070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A262357 d

end

end A042277.P4847041982147978070

/-!
# A042283: Denominators of continued fraction convergents to sqrt(667).

The programs for A042283, there is no canonical definition to state claims against.
-/

/-! ## A042283.P5441082344329565213

`a(n-2)+a(n-1)*A335458(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6`
-/

namespace A042283.P5441082344329565213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 6] fun n a =>
  a (n - 2) + a (n - 1) * A335458 (a (n - 1)).toNat

end

end A042283.P5441082344329565213

/-!
# A042285: Denominators of continued fraction convergents to sqrt(668).

The programs for A042285, there is no canonical definition to state claims against.
-/

/-! ## A042285.P14098068869944892888

`a(n-2)+a(n-1)*A040642(n)` with `a(0)=1, a(1)=1`
-/

namespace A042285.P14098068869944892888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040642 n

end

end A042285.P14098068869944892888

/-!
# A042287: Denominators of continued fraction convergents to sqrt(669).

The programs for A042287, there is no canonical definition to state claims against.
-/

/-! ## A042287.P8027402840167764879

`A397176(A189589(n+2))`
-/

namespace A042287.P8027402840167764879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397176 (A189589 (n + 2)).toNat

end

end A042287.P8027402840167764879

/-!
# A042289: Denominators of continued fraction convergents to sqrt(670).

The programs for A042289, there is no canonical definition to state claims against.
-/

/-! ## A042289.P9204833754481755677

`A005206(A042288(n))/16`
-/

namespace A042289.P9204833754481755677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005206 (A042288 n).toNat : ℚ) / 16

end

end A042289.P9204833754481755677

/-!
# A042293: Denominators of continued fraction convergents to sqrt(672).

The programs for A042293, there is no canonical definition to state claims against.
-/

/-! ## A042293.P6917689115308048893

`A065033(A042297(n)-1)`
-/

namespace A042293.P6917689115308048893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A042297 n - 1).toNat

end

end A042293.P6917689115308048893

/-!
# A042297: Denominators of continued fraction convergents to sqrt(674).

The programs for A042297, there is no canonical definition to state claims against.
-/

/-! ## A042297.P12245732475678933886

`A004525(A042299(n))`
-/

namespace A042297.P12245732475678933886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042299 n).toNat

end

end A042297.P12245732475678933886

/-!
# A042298: Numerators of continued fraction convergents to sqrt(675).

The programs for A042298, the canonical program `A042298.P6560677371426732849` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042298 has offset 0).

The definition of A042298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042298.P6560677371426732849

`ogf((25+26x+25x^2-x^3)/(1-52x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042298

/-- `ogf((25+26x+25x^2-x^3)/(1-52x^2+x^4))` -/
def P6560677371426732849.Spec : Prop :=
  ∀ n, P6560677371426732849.a n = A042298 n

theorem P6560677371426732849.correct : P6560677371426732849.Spec := by
  intro n
  simp only [A042298]

end A042298

/-! ## A042298.P10529342092092574903

`gcd(5, A041048(n))*A041042(n)`
-/

namespace A042298.P10529342092092574903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 5 (A041048 n) : ℤ) * A041042 n

end

end A042298.P10529342092092574903

namespace A042298

/-- `gcd(5, A041048(n))*A041042(n)` -/
def P10529342092092574903.Spec : Prop :=
  ∀ n, P10529342092092574903.a n = A042298 n

end A042298

/-! ## A042298.P7801498169362555510

`A041042(n)*A132400(2*n+1)`
-/

namespace A042298.P7801498169362555510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041042 n * A132400 (2 * n + 1)

end

end A042298.P7801498169362555510

namespace A042298

/-- `A041042(n)*A132400(2*n+1)` -/
def P7801498169362555510.Spec : Prop :=
  ∀ n, P7801498169362555510.a n = A042298 n

end A042298

/-! ## A042298.P14114238006067593945

`A001519(A000032(gcd(n, n+2)))*A041042(n)`
-/

namespace A042298.P14114238006067593945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A000032 (Nat.gcd n (n + 2))).toNat * A041042 n

end

end A042298.P14114238006067593945

namespace A042298

/-- `A001519(A000032(gcd(n, n+2)))*A041042(n)` -/
def P14114238006067593945.Spec : Prop :=
  ∀ n, P14114238006067593945.a n = A042298 n

end A042298

/-! ## A042298.P13055730635345348383

`A002531(A008585(n+1))*A132400(2*n+1)`
-/

namespace A042298.P13055730635345348383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (A008585 (n + 1)).toNat * A132400 (2 * n + 1)

end

end A042298.P13055730635345348383

namespace A042298

/-- `A002531(A008585(n+1))*A132400(2*n+1)` -/
def P13055730635345348383.Spec : Prop :=
  ∀ n, P13055730635345348383.a n = A042298 n

end A042298

/-! ## A042298.P10925303938754340268

`A002531(3*(n+1))*A190173(A102457(3*n+4))`
-/

namespace A042298.P10925303938754340268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (3 * (n + 1)) * A190173 (A102457 (3 * n + 4)).toNat

end

end A042298.P10925303938754340268

namespace A042298

/-- `A002531(3*(n+1))*A190173(A102457(3*n+4))` -/
def P10925303938754340268.Spec : Prop :=
  ∀ n, P10925303938754340268.a n = A042298 n

end A042298

/-!
# A042299: Denominators of continued fraction convergents to sqrt(675).

The programs for A042299, the canonical program `A042299.P6682768256537634380` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A042299 has offset 0).

The definition of A042299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A042299.P11055309369807942852

`ogf((1+x-x^2)/(1-52x^2+x^4))`
-/

namespace A042299.P11055309369807942852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -52, 0, 1] n

end

end A042299.P11055309369807942852

namespace A042299

/-- `ogf((1+x-x^2)/(1-52x^2+x^4))` -/
def P11055309369807942852.Spec : Prop :=
  ∀ n, P11055309369807942852.a n = A042299 n

end A042299

/-! ## A042299.P6682768256537634380

`52*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=51, a(3)=52`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A042299

/-- `52*a(n-2)-a(n-4)` -/
def P6682768256537634380.Spec : Prop :=
  ∀ n, P6682768256537634380.a n = A042299 n

theorem P6682768256537634380.correct : P6682768256537634380.Spec := by
  intro n
  simp only [A042299]

end A042299

/-! ## A042299.P11693672075861423499

`A041043(n)/A132400(A004273(n))`
-/

namespace A042299.P11693672075861423499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041043 n : ℚ) / (A132400 (A004273 n).toNat : ℚ)

end

end A042299.P11693672075861423499

namespace A042299

/-- `A041043(n)/A132400(A004273(n))` -/
def P11693672075861423499.Spec : Prop :=
  ∀ n, P11693672075861423499.a n = (A042299 n : ℚ)

end A042299

/-! ## A042299.P8951833214640042663

`A041043(n)/A348747(Δ[A212161(n)])`
-/

namespace A042299.P8951833214640042663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041043 n : ℚ) / (A348747 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A042299.P8951833214640042663

namespace A042299

/-- `A041043(n)/A348747(Δ[A212161(n)])` -/
def P8951833214640042663.Spec : Prop :=
  ∀ n, P8951833214640042663.a n = (A042299 n : ℚ)

end A042299

/-! ## A042299.P16095221958563700310

`A041043(n)/A132400(n²)`
-/

namespace A042299.P16095221958563700310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041043 n : ℚ) / (A132400 (n ^ 2) : ℚ)

end

end A042299.P16095221958563700310

namespace A042299

/-- `A041043(n)/A132400(n²)` -/
def P16095221958563700310.Spec : Prop :=
  ∀ n, P16095221958563700310.a n = (A042299 n : ℚ)

end A042299

/-! ## A042299.P10859171804588498909

`gcd(∑[A041043(2*n)], A041043(n))`
-/

namespace A042299.P10859171804588498909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041043 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A041043 n)

end

end A042299.P10859171804588498909

namespace A042299

/-- `gcd(∑[A041043(2*n)], A041043(n))` -/
def P10859171804588498909.Spec : Prop :=
  ∀ n, (P10859171804588498909.a n : ℤ) = A042299 n

end A042299

