import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C011
import Seq.B006.C000
import Seq.Opaque.C001
import Seq.Opaque.C011
import Seq.Opaque.C025

/-!
# A019722: Expansion of 1/((1-4x)(1-9x)(1-12x)).

The programs for A019722, the canonical program `A019722.P17684256054958011211` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019722 has offset 0).

The definition of A019722 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019722.P17684256054958011211

`21*a(n-1)-108*a(n-2)+4^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019722

/-- `21*a(n-1)-108*a(n-2)+4^n` -/
def P17684256054958011211.Spec : Prop :=
  ∀ n, P17684256054958011211.a n = A019722 n

theorem P17684256054958011211.correct : P17684256054958011211.Spec := by
  intro n
  simp only [A019722]

end A019722

/-! ## A019722.P7133361280123526087

`A016191(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019722.P7133361280123526087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016191 n + 4 * a (n - 1)

end

end A019722.P7133361280123526087

namespace A019722

/-- `A016191(n)+4*a(n-1)` -/
def P7133361280123526087.Spec : Prop :=
  ∀ n, P7133361280123526087.a n = A019722 n

end A019722

/-! ## A019722.P15977342592254048723

`(A020978(n)+A019664(n))/2`
-/

namespace A019722.P15977342592254048723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020978 n + A019664 n : ℚ) / 2

end

end A019722.P15977342592254048723

namespace A019722

/-- `(A020978(n)+A019664(n))/2` -/
def P15977342592254048723.Spec : Prop :=
  ∀ n, P15977342592254048723.a n = (A019722 n : ℚ)

end A019722

/-! ## A019722.P10335890269671825470

`2*A020978(n)-A028157(n)`
-/

namespace A019722.P10335890269671825470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020978 n - A028157 n

end

end A019722.P10335890269671825470

namespace A019722

/-- `2*A020978(n)-A028157(n)` -/
def P10335890269671825470.Spec : Prop :=
  ∀ n, P10335890269671825470.a n = A019722 n

end A019722

/-! ## A019722.P7114919589981927402

`A019664(n)+A028157(n)-A020978(n)`
-/

namespace A019722.P7114919589981927402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019664 n + (A028157 n - A020978 n)

end

end A019722.P7114919589981927402

namespace A019722

/-- `A019664(n)+A028157(n)-A020978(n)` -/
def P7114919589981927402.Spec : Prop :=
  ∀ n, P7114919589981927402.a n = A019722 n

end A019722

/-! ## A019722.P7006134706656382430

`(A019664(n)+Δ[A016263(n)-A016260(n)])/2`
-/

namespace A019722.P7006134706656382430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016263 n - A016260 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019664 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A019722.P7006134706656382430

namespace A019722

/-- `(A019664(n)+Δ[A016263(n)-A016260(n)])/2` -/
def P7006134706656382430.Spec : Prop :=
  ∀ n, P7006134706656382430.a n = (A019722 n : ℚ)

end A019722

/-!
# A019742: Expansion of 1/((1-4x)(1-10x)(1-11x)).

The programs for A019742, the canonical program `A019742.P18012483491542826860` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019742 has offset 0).

The definition of A019742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019742.P18012483491542826860

`21*a(n-1)-110*a(n-2)+4^n` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019742

/-- `21*a(n-1)-110*a(n-2)+4^n` -/
def P18012483491542826860.Spec : Prop :=
  ∀ n, P18012483491542826860.a n = A019742 n

theorem P18012483491542826860.correct : P18012483491542826860.Spec := by
  intro n
  simp only [A019742]

end A019742

/-! ## A019742.P13246883999679562823

`Δ[A016226(n)-A016225(n)]`
-/

namespace A019742.P13246883999679562823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 n - A016225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019742.P13246883999679562823

namespace A019742

/-- `Δ[A016226(n)-A016225(n)]` -/
def P13246883999679562823.Spec : Prop :=
  ∀ n, P13246883999679562823.a n = A019742 n

end A019742

/-! ## A019742.P1939516362661193639

`2*A019687(n)-A019682(n)`
-/

namespace A019742.P1939516362661193639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019687 n - A019682 n

end

end A019742.P1939516362661193639

namespace A019742

/-- `2*A019687(n)-A019682(n)` -/
def P1939516362661193639.Spec : Prop :=
  ∀ n, P1939516362661193639.a n = A019742 n

end A019742

/-! ## A019742.P6223288224730234046

`A016158(n+1)-Δ[A016225(n)]`
-/

namespace A019742.P6223288224730234046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016158 (n + 1) - (f1 (n + 1) - f1 n)

end

end A019742.P6223288224730234046

namespace A019742

/-- `A016158(n+1)-Δ[A016225(n)]` -/
def P6223288224730234046.Spec : Prop :=
  ∀ n, P6223288224730234046.a n = A019742 n

end A019742

/-! ## A019742.P8790403505104891633

`Δ[A016226(n)]-A016157(n+1)`
-/

namespace A019742.P8790403505104891633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016157 (n + 1)

end

end A019742.P8790403505104891633

namespace A019742

/-- `Δ[A016226(n)]-A016157(n+1)` -/
def P8790403505104891633.Spec : Prop :=
  ∀ n, P8790403505104891633.a n = A019742 n

end A019742

/-! ## A019742.P6486357273293918825

`A016158(n+1)-A016157(n+1)`
-/

namespace A019742.P6486357273293918825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016158 (n + 1) - A016157 (n + 1)

end

end A019742.P6486357273293918825

namespace A019742

/-- `A016158(n+1)-A016157(n+1)` -/
def P6486357273293918825.Spec : Prop :=
  ∀ n, P6486357273293918825.a n = A019742 n

end A019742

/-! ## A019742.P12098751536196066333

`Δ[A016226(n)-A016157(n)]-A016157(n)`
-/

namespace A019742.P12098751536196066333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016226 n - A016157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016157 n

end

end A019742.P12098751536196066333

namespace A019742

/-- `Δ[A016226(n)-A016157(n)]-A016157(n)` -/
def P12098751536196066333.Spec : Prop :=
  ∀ n, P12098751536196066333.a n = A019742 n

end A019742

/-!
# A019747: Expansion of 1/((1-4x)(1-10x)(1-12x)).

The programs for A019747, the canonical program `A019747.P16580310711333616400` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019747 has offset 0).

The definition of A019747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019747.P16580310711333616400

`22*a(n-1)-120*a(n-2)+4^n` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019747

/-- `22*a(n-1)-120*a(n-2)+4^n` -/
def P16580310711333616400.Spec : Prop :=
  ∀ n, P16580310711333616400.a n = A019747 n

theorem P16580310711333616400.correct : P16580310711333616400.Spec := by
  intro n
  simp only [A019747]

end A019747

/-! ## A019747.P10078559558573596918

`2^n*A016295(n)`
-/

namespace A019747.P10078559558573596918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016295 n

end

end A019747.P10078559558573596918

namespace A019747

/-- `2^n*A016295(n)` -/
def P10078559558573596918.Spec : Prop :=
  ∀ n, P10078559558573596918.a n = A019747 n

end A019747

/-! ## A019747.P14187024736252723627

`A016196(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019747.P14187024736252723627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016196 n + 4 * a (n - 1)

end

end A019747.P14187024736252723627

namespace A019747

/-- `A016196(n)+4*a(n-1)` -/
def P14187024736252723627.Spec : Prop :=
  ∀ n, P14187024736252723627.a n = A019747 n

end A019747

/-! ## A019747.P6981924950717056108

`lcm(A000079(n), A016295(n))`
-/

namespace A019747.P6981924950717056108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A016295 n)

end

end A019747.P6981924950717056108

namespace A019747

/-- `lcm(A000079(n), A016295(n))` -/
def P6981924950717056108.Spec : Prop :=
  ∀ n, (P6981924950717056108.a n : ℤ) = A019747 n

end A019747

/-! ## A019747.P15047486835809025076

`2*A019677(n)-A019671(n)`
-/

namespace A019747.P15047486835809025076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019677 n - A019671 n

end

end A019747.P15047486835809025076

namespace A019747

/-- `2*A019677(n)-A019671(n)` -/
def P15047486835809025076.Spec : Prop :=
  ∀ n, P15047486835809025076.a n = A019747 n

end A019747

/-! ## A019747.P18237305245505402179

`(A019752(n)+A019742(n))/2`
-/

namespace A019747.P18237305245505402179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019752 n + A019742 n : ℚ) / 2

end

end A019747.P18237305245505402179

namespace A019747

/-- `(A019752(n)+A019742(n))/2` -/
def P18237305245505402179.Spec : Prop :=
  ∀ n, P18237305245505402179.a n = (A019747 n : ℚ)

end A019747

/-! ## A019747.P6149589347669390742

`A016295(n)*A117303(2*n+1)`
-/

namespace A019747.P6149589347669390742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016295 n * A117303 (2 * n + 1)

end

end A019747.P6149589347669390742

namespace A019747

/-- `A016295(n)*A117303(2*n+1)` -/
def P6149589347669390742.Spec : Prop :=
  ∀ n, P6149589347669390742.a n = A019747 n

end A019747

/-!
# A019752: G.f.: 1/((1-4x)(1-11x)(1-12x)).

The programs for A019752, the canonical program `A019752.P3421644334659185664` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019752 has offset 0).

The definition of A019752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019752.P3421644334659185664

`23*a(n-1)-132*a(n-2)+4^n` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019752

/-- `23*a(n-1)-132*a(n-2)+4^n` -/
def P3421644334659185664.Spec : Prop :=
  ∀ n, P3421644334659185664.a n = A019752 n

theorem P3421644334659185664.correct : P3421644334659185664.Spec := by
  intro n
  simp only [A019752]

end A019752

/-! ## A019752.P6260865247587447693

`(7*12^(n+2)+4^(n+2)-8*11^(n+2))/56`
-/

namespace A019752.P6260865247587447693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 12 ^ (n + 2) + 4 ^ (n + 2) : ℤ) - (8 * 11 ^ (n + 2) : ℤ) : ℚ) / 56

end

end A019752.P6260865247587447693

namespace A019752

/-- `(7*12^(n+2)+4^(n+2)-8*11^(n+2))/56` -/
def P6260865247587447693.Spec : Prop :=
  ∀ n, P6260865247587447693.a n = (A019752 n : ℚ)

end A019752

/-! ## A019752.P12090149018993492783

`Δ[A016227(n)-A016226(n)]`
-/

namespace A019752.P12090149018993492783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016227 n - A016226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019752.P12090149018993492783

namespace A019752

/-- `Δ[A016227(n)-A016226(n)]` -/
def P12090149018993492783.Spec : Prop :=
  ∀ n, P12090149018993492783.a n = A019752 n

end A019752

/-! ## A019752.P13895620870790125170

`2*A019747(n)-A019742(n)`
-/

namespace A019752.P13895620870790125170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019747 n - A019742 n

end

end A019752.P13895620870790125170

namespace A019752

/-- `2*A019747(n)-A019742(n)` -/
def P13895620870790125170.Spec : Prop :=
  ∀ n, P13895620870790125170.a n = A019752 n

end A019752

/-! ## A019752.P10006864238765890285

`A016159(n+1)-A016158(n+1)`
-/

namespace A019752.P10006864238765890285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016159 (n + 1) - A016158 (n + 1)

end

end A019752.P10006864238765890285

namespace A019752

/-- `A016159(n+1)-A016158(n+1)` -/
def P10006864238765890285.Spec : Prop :=
  ∀ n, P10006864238765890285.a n = A019752 n

end A019752

/-! ## A019752.P5277469239590033975

`A020981(n)+A020981(n)-A028160(n)`
-/

namespace A019752.P5277469239590033975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020981 n + (A020981 n - A028160 n)

end

end A019752.P5277469239590033975

namespace A019752

/-- `A020981(n)+A020981(n)-A028160(n)` -/
def P5277469239590033975.Spec : Prop :=
  ∀ n, P5277469239590033975.a n = A019752 n

end A019752

/-! ## A019752.P12737529044542752774

`2*A020981(n)-A028160(n)`
-/

namespace A019752.P12737529044542752774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020981 n - A028160 n

end

end A019752.P12737529044542752774

namespace A019752

/-- `2*A020981(n)-A028160(n)` -/
def P12737529044542752774.Spec : Prop :=
  ∀ n, P12737529044542752774.a n = A019752 n

end A019752

/-!
# A019757: Expansion of 1/((1-5*x)(1-6*x)(1-7*x)).

The programs for A019757, the canonical program `A019757.P410345754025394370` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019757 has offset 0).

The definition of A019757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019757.P410345754025394370

`13*a(n-1)-42*a(n-2)+5^n` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019757

/-- `13*a(n-1)-42*a(n-2)+5^n` -/
def P410345754025394370.Spec : Prop :=
  ∀ n, P410345754025394370.a n = A019757 n

theorem P410345754025394370.correct : P410345754025394370.Spec := by
  intro n
  simp only [A019757]

end A019757

/-! ## A019757.P6593812607445124970

`(7^(n+2)+5^(n+2)-2*6^(n+2))/2`
-/

namespace A019757.P6593812607445124970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 2) + 5 ^ (n + 2) : ℤ) - (2 * 6 ^ (n + 2) : ℤ) : ℚ) / 2

end

end A019757.P6593812607445124970

namespace A019757

/-- `(7^(n+2)+5^(n+2)-2*6^(n+2))/2` -/
def P6593812607445124970.Spec : Prop :=
  ∀ n, P6593812607445124970.a n = (A019757 n : ℚ)

end A019757

/-! ## A019757.P8984405362289951768

`Δ[A016230(n)-A016228(n)]`
-/

namespace A019757.P8984405362289951768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016230 n - A016228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019757.P8984405362289951768

namespace A019757

/-- `Δ[A016230(n)-A016228(n)]` -/
def P8984405362289951768.Spec : Prop :=
  ∀ n, P8984405362289951768.a n = A019757 n

end A019757

/-! ## A019757.P8441801231502832633

`Δ[A016241(n)-A016230(n)]`
-/

namespace A019757.P8441801231502832633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016241 n - A016230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019757.P8441801231502832633

namespace A019757

/-- `Δ[A016241(n)-A016230(n)]` -/
def P8441801231502832633.Spec : Prop :=
  ∀ n, P8441801231502832633.a n = A019757 n

end A019757

/-! ## A019757.P3266525797442774197

`A081200(n+2)-A005062(n+2)`
-/

namespace A019757.P3266525797442774197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081200 (n + 2) - A005062 (n + 2)

end

end A019757.P3266525797442774197

namespace A019757

/-- `A081200(n+2)-A005062(n+2)` -/
def P3266525797442774197.Spec : Prop :=
  ∀ n, P3266525797442774197.a n = A019757 n

end A019757

/-! ## A019757.P5044946944404897262

`A193685(∑[n+2]+3)`
-/

namespace A019757.P5044946944404897262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193685 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A019757.P5044946944404897262

namespace A019757

/-- `A193685(∑[n+2]+3)` -/
def P5044946944404897262.Spec : Prop :=
  ∀ n, P5044946944404897262.a n = A019757 n

end A019757

/-!
# A019775: Decimal expansion of sqrt(e)/2.

The programs for A019775, there is no canonical definition to state claims against.
-/

/-! ## A019775.P4841894602535761599

`9-A385496(n)`
-/

namespace A019775.P4841894602535761599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A385496 n

end

end A019775.P4841894602535761599

/-!
# A019783: Expansion of 1/((1-5*x)*(1-6*x)*(1-8*x)).

The programs for A019783, the canonical program `A019783.P1391654858361693251` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019783 has offset 0).

The definition of A019783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019783.P1391654858361693251

`14*a(n-1)-48*a(n-2)+5^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019783

/-- `14*a(n-1)-48*a(n-2)+5^n` -/
def P1391654858361693251.Spec : Prop :=
  ∀ n, P1391654858361693251.a n = A019783 n

theorem P1391654858361693251.correct : P1391654858361693251.Spec := by
  intro n
  simp only [A019783]

end A019783

/-! ## A019783.P6314530945179603393

`(8^(n+2)+2*5^(n+2)-3*6^(n+2))/6`
-/

namespace A019783.P6314530945179603393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 2) + 2 * 5 ^ (n + 2) : ℤ) - (3 * 6 ^ (n + 2) : ℤ) : ℚ) / 6

end

end A019783.P6314530945179603393

namespace A019783

/-- `(8^(n+2)+2*5^(n+2)-3*6^(n+2))/6` -/
def P6314530945179603393.Spec : Prop :=
  ∀ n, P6314530945179603393.a n = (A019783 n : ℚ)

end A019783

/-! ## A019783.P3992261441130320658

`Δ[A016243(n)-A016233(n)]`
-/

namespace A019783.P3992261441130320658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016243 n - A016233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019783.P3992261441130320658

namespace A019783

/-- `Δ[A016243(n)-A016233(n)]` -/
def P3992261441130320658.Spec : Prop :=
  ∀ n, P3992261441130320658.a n = A019783 n

end A019783

/-! ## A019783.P7594167549836090424

`A016304(n)+A016311(n)-A016295(n)`
-/

namespace A019783.P7594167549836090424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016304 n + (A016311 n - A016295 n)

end

end A019783.P7594167549836090424

namespace A019783

/-- `A016304(n)+A016311(n)-A016295(n)` -/
def P7594167549836090424.Spec : Prop :=
  ∀ n, P7594167549836090424.a n = A019783 n

end A019783

/-! ## A019783.P14184788837295400942

`2*A019839(n)-A020346(n)`
-/

namespace A019783.P14184788837295400942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019839 n - A020346 n

end

end A019783.P14184788837295400942

namespace A019783

/-- `2*A019839(n)-A020346(n)` -/
def P14184788837295400942.Spec : Prop :=
  ∀ n, P14184788837295400942.a n = A019783 n

end A019783

/-!
# A019793: Expansion of 1/((1-5x)(1-6x)(1-9x)).

The programs for A019793, the canonical program `A019793.P10745697896409494973` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019793 has offset 0).

The definition of A019793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019793.P10745697896409494973

`15*a(n-1)-54*a(n-2)+5^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019793

/-- `15*a(n-1)-54*a(n-2)+5^n` -/
def P10745697896409494973.Spec : Prop :=
  ∀ n, P10745697896409494973.a n = A019793 n

theorem P10745697896409494973.correct : P10745697896409494973.Spec := by
  intro n
  simp only [A019793]

end A019793

/-! ## A019793.P1469281642316827

`Δ[A016244(n)-A016234(n)]`
-/

namespace A019793.P1469281642316827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016244 n - A016234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019793.P1469281642316827

namespace A019793

/-- `Δ[A016244(n)-A016234(n)]` -/
def P1469281642316827.Spec : Prop :=
  ∀ n, P1469281642316827.a n = A019793 n

end A019793

/-! ## A019793.P14364636737758638769

`2*A016244(n)-A016228(n)`
-/

namespace A019793.P14364636737758638769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016244 n - A016228 n

end

end A019793.P14364636737758638769

namespace A019793

/-- `2*A016244(n)-A016228(n)` -/
def P14364636737758638769.Spec : Prop :=
  ∀ n, P14364636737758638769.a n = A019793 n

end A019793

/-! ## A019793.P268863303584133374

`A016298(n)+A016306(n)-A016295(n)`
-/

namespace A019793.P268863303584133374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016298 n + (A016306 n - A016295 n)

end

end A019793.P268863303584133374

namespace A019793

/-- `A016298(n)+A016306(n)-A016295(n)` -/
def P268863303584133374.Spec : Prop :=
  ∀ n, P268863303584133374.a n = A019793 n

end A019793

/-! ## A019793.P12908525338063009990

`2*A019869(n)-A020566(n)`
-/

namespace A019793.P12908525338063009990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019869 n - A020566 n

end

end A019793.P12908525338063009990

namespace A019793

/-- `2*A019869(n)-A020566(n)` -/
def P12908525338063009990.Spec : Prop :=
  ∀ n, P12908525338063009990.a n = A019793 n

end A019793

