import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C025
import Seq.B000.C027
import Seq.B001.C000
import Seq.B001.C003
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C023

/-!
# A041709: Denominators of continued fraction convergents to sqrt(374).

The programs for A041709, there is no canonical definition to state claims against.
-/

/-! ## A041709.P8884760109257078141

`A004396(A053448(n+1)+A042549(n))`
-/

namespace A041709.P8884760109257078141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A053448 (n + 1) + A042549 n).toNat

end

end A041709.P8884760109257078141

/-!
# A041720: Numerators of continued fraction convergents to sqrt(380).

The programs for A041720, the canonical program `A041720.P18147023330869356402` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041720 has offset 0).

The definition of A041720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041720.P18147023330869356402

`ogf((19+39x+19x^2-x^3)/(1-78x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041720

/-- `ogf((19+39x+19x^2-x^3)/(1-78x^2+x^4))` -/
def P18147023330869356402.Spec : Prop :=
  ∀ n, P18147023330869356402.a n = A041720 n

theorem P18147023330869356402.correct : P18147023330869356402.Spec := by
  intro n
  simp only [A041720]

end A041720

/-!
# A041721: Denominators of continued fraction convergents to sqrt(380).

The programs for A041721, the canonical program `A041721.P5451394667738300407` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041721 has offset 0).

The definition of A041721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041721.P6422905626521699320

`ogf((1+2x-x^2)/(1-78x^2+x^4))`
-/

namespace A041721.P6422905626521699320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -78, 0, 1] n

end

end A041721.P6422905626521699320

namespace A041721

/-- `ogf((1+2x-x^2)/(1-78x^2+x^4))` -/
def P6422905626521699320.Spec : Prop :=
  ∀ n, P6422905626521699320.a n = A041721 n

end A041721

/-! ## A041721.P5451394667738300407

`78*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=77, a(3)=156`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041721

/-- `78*a(n-2)-a(n-4)` -/
def P5451394667738300407.Spec : Prop :=
  ∀ n, P5451394667738300407.a n = A041721 n

theorem P5451394667738300407.correct : P5451394667738300407.Spec := by
  intro n
  simp only [A041721]

end A041721

/-! ## A041721.P7744223639408330203

`∑[A041171(comp[or(2, n)])]`
-/

namespace A041721.P7744223639408330203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041171 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041721.P7744223639408330203

namespace A041721

/-- `∑[A041171(comp[or(2, n)])]` -/
def P7744223639408330203.Spec : Prop :=
  ∀ n, P7744223639408330203.a n = A041721 n

end A041721

/-! ## A041721.P17482266753678305728

`∑[A041171(A042948(n))]`
-/

namespace A041721.P17482266753678305728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041171 (A042948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041721.P17482266753678305728

namespace A041721

/-- `∑[A041171(A042948(n))]` -/
def P17482266753678305728.Spec : Prop :=
  ∀ n, P17482266753678305728.a n = A041721 n

end A041721

/-! ## A041721.P5550723700959575824

`∑[A041171(A080412(2*n))]`
-/

namespace A041721.P5550723700959575824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041171 (A080412 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A041721.P5550723700959575824

namespace A041721

/-- `∑[A041171(A080412(2*n))]` -/
def P5550723700959575824.Spec : Prop :=
  ∀ n, P5550723700959575824.a n = A041721 n

end A041721

/-!
# A041725: Denominators of continued fraction convergents to sqrt(382).

The programs for A041725, there is no canonical definition to state claims against.
-/

/-! ## A041725.P6198248592110831796

`floor(A382962(n+1)/A134129(n+1))+1`
-/

namespace A041725.P6198248592110831796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A382962 (n + 1) : ℚ) / (A134129 (n + 1) : ℚ)⌋ + 1

end

end A041725.P6198248592110831796

/-!
# A041727: Denominators of continued fraction convergents to sqrt(383).

The programs for A041727, there is no canonical definition to state claims against.
-/

/-! ## A041727.P5688308952434627096

`A047227(C(A098133(3*n+1), floor(n/2)))`
-/

namespace A041727.P5688308952434627096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (Nat.choose (A098133 (3 * n + 1)).toNat ⌊(n : ℚ) / 2⌋.toNat)

end

end A041727.P5688308952434627096

/-!
# A041730: Numerators of continued fraction convergents to sqrt(385).

The programs for A041730, there is no canonical definition to state claims against.
-/

/-! ## A041730.P10637017212241549530

`A022109(∑[or(7, ∑[n-3])^4])`
-/

namespace A041730.P10637017212241549530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A041730.P10637017212241549530

/-!
# A041731: Denominators of continued fraction convergents to sqrt(385).

The programs for A041731, there is no canonical definition to state claims against.
-/

/-! ## A041731.P6768245883406642089

`a(n-2)+a(n-1)*A040365(n)` with `a(0)=1, a(1)=1`
-/

namespace A041731.P6768245883406642089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) * A040365 n

end

end A041731.P6768245883406642089

/-!
# A041733: Denominators of continued fraction convergents to sqrt(386).

The programs for A041733, there is no canonical definition to state claims against.
-/

/-! ## A041733.P637874482824315849

`A164297(A049774(n))+A140997(n+2)`
-/

namespace A041733.P637874482824315849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164297 (A049774 n).toNat + A140997 (n + 2)

end

end A041733.P637874482824315849

/-! ## A041733.P17482833634729782307

`A326046(2*(n+1))+A164297(A049774(n))`
-/

namespace A041733.P17482833634729782307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326046 (2 * (n + 1)) + A164297 (A049774 n).toNat

end

end A041733.P17482833634729782307

/-!
# A041735: Denominators of continued fraction convergents to sqrt(387).

The programs for A041735, there is no canonical definition to state claims against.
-/

/-! ## A041735.P18110268263933037903

`A008676(13*A041983(n))`
-/

namespace A041735.P18110268263933037903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (13 * A041983 n).toNat

end

end A041735.P18110268263933037903

/-!
# A041737: Denominators of continued fraction convergents to sqrt(388).

The programs for A041737, there is no canonical definition to state claims against.
-/

/-! ## A041737.P11982445200976846080

`A052083(A000142(n))+A000108(n)`
-/

namespace A041737.P11982445200976846080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052083 (A000142 n).toNat + A000108 n

end

end A041737.P11982445200976846080

/-!
# A041739: Denominators of continued fraction convergents to sqrt(389).

The programs for A041739, there is no canonical definition to state claims against.
-/

/-! ## A041739.P12469844070291506709

`A127286(A280000(n+1)+n)`
-/

namespace A041739.P12469844070291506709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127286 (A280000 (n + 1) + (n : ℤ)).toNat

end

end A041739.P12469844070291506709

/-!
# A041741: Denominators of continued fraction convergents to sqrt(390).

The programs for A041741, the canonical program `A041741.P733172070155889672` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041741 has offset 0).

The definition of A041741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041741.P733172070155889672

`158*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=155, a(5)=159, a(6)=473, a(7)=632`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041741

/-- `158*a(n-4)-a(n-8)` -/
def P733172070155889672.Spec : Prop :=
  ∀ n, P733172070155889672.a n = A041741 n

theorem P733172070155889672.correct : P733172070155889672.Spec := by
  intro n
  simp only [A041741]

end A041741

/-! ## A041741.P11233494868403151453

`A001281(A042081(n)+A041465(n))`
-/

namespace A041741.P11233494868403151453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042081 n + A041465 n).toNat

end

end A041741.P11233494868403151453

namespace A041741

/-- `A001281(A042081(n)+A041465(n))` -/
def P11233494868403151453.Spec : Prop :=
  ∀ n, P11233494868403151453.a n = A041741 n

end A041741

/-! ## A041741.P11713572961969026421

`A001281(A042485(n)+A041253(n))`
-/

namespace A041741.P11713572961969026421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042485 n + A041253 n).toNat

end

end A041741.P11713572961969026421

namespace A041741

/-- `A001281(A042485(n)+A041253(n))` -/
def P11713572961969026421.Spec : Prop :=
  ∀ n, P11713572961969026421.a n = A041741 n

end A041741

/-!
# A041743: Denominators of continued fraction convergents to sqrt(391).

The programs for A041743, there is no canonical definition to state claims against.
-/

/-! ## A041743.P4898037286409607191

`A165190(or(A000081(n), A041742(n)))`
-/

namespace A041743.P4898037286409607191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (Int.lor (A000081 n) (A041742 n)).toNat

end

end A041743.P4898037286409607191

/-! ## A041743.P9548337523743886331

`A165190(A116965(n+1)+A041742(n))`
-/

namespace A041743.P9548337523743886331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A116965 (n + 1) + A041742 n).toNat

end

end A041743.P9548337523743886331

/-! ## A041743.P17643475968627627482

`A165190(or(A033950(n+1), A041742(n)))`
-/

namespace A041743.P17643475968627627482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (Int.lor (A033950 (n + 1)) (A041742 n)).toNat

end

end A041743.P17643475968627627482

/-!
# A041745: Denominators of continued fraction convergents to sqrt(392).

The programs for A041745, the canonical program `A041745.P8095770582301270811` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041745 has offset 0).

The definition of A041745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041745.P8095770582301270811

`198*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=194, a(5)=199, a(6)=791, a(7)=990`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041745

/-- `198*a(n-4)-a(n-8)` -/
def P8095770582301270811.Spec : Prop :=
  ∀ n, P8095770582301270811.a n = A041745 n

theorem P8095770582301270811.correct : P8095770582301270811.Spec := by
  intro n
  simp only [A041745]

end A041745

/-! ## A041745.P8710996453087561872

`A041409(n)+A004526(A041409(n)-A041037(n))`
-/

namespace A041745.P8710996453087561872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041409 n + A004526 (A041409 n - A041037 n).toNat

end

end A041745.P8710996453087561872

namespace A041745

/-- `A041409(n)+A004526(A041409(n)-A041037(n))` -/
def P8710996453087561872.Spec : Prop :=
  ∀ n, P8710996453087561872.a n = A041745 n

end A041745

/-!
# A041751: Denominators of continued fraction convergents to sqrt(395).

The programs for A041751, there is no canonical definition to state claims against.
-/

/-! ## A041751.P7409105747872463793

`A001281(A042093(n)+A041473(n))`
-/

namespace A041751.P7409105747872463793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042093 n + A041473 n).toNat

end

end A041751.P7409105747872463793

/-! ## A041751.P13857126960711542328

`A001281(A042499(n)+A041259(n))`
-/

namespace A041751.P13857126960711542328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A042499 n + A041259 n).toNat

end

end A041751.P13857126960711542328

/-! ## A041751.P5235251376529350691

`A004525(A042093(n)+A041473(n))`
-/

namespace A041751.P5235251376529350691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A042093 n + A041473 n).toNat

end

end A041751.P5235251376529350691

/-!
# A041753: Denominators of continued fraction convergents to sqrt(396).

The programs for A041753, there is no canonical definition to state claims against.
-/

/-! ## A041753.P6002018002967362185

`A222235(A042729(n))`
-/

namespace A041753.P6002018002967362185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A042729 n).toNat

end

end A041753.P6002018002967362185

/-! ## A041753.P10964328143439981312

`A006370(A042729(n)+A041177(n))`
-/

namespace A041753.P10964328143439981312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A042729 n + A041177 n).toNat

end

end A041753.P10964328143439981312

/-!
# A041757: Denominators of continued fraction convergents to sqrt(398).

The programs for A041757, there is no canonical definition to state claims against.
-/

/-! ## A041757.P15066746695614107251

`A004525(A041759(n))`
-/

namespace A041757.P15066746695614107251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A041759 n).toNat

end

end A041757.P15066746695614107251

/-!
# A041758: Numerators of continued fraction convergents to sqrt(399).

The programs for A041758, the canonical program `A041758.P6520470593257485859` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041758 has offset 0).

The definition of A041758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041758.P2078946928782118821

`ogf((19+20x+19x^2-x^3)/(1-40x^2+x^4))`
-/

namespace A041758.P2078946928782118821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [19, 20, 19, -1] [1, 0, -40, 0, 1] n

end

end A041758.P2078946928782118821

namespace A041758

/-- `ogf((19+20x+19x^2-x^3)/(1-40x^2+x^4))` -/
def P2078946928782118821.Spec : Prop :=
  ∀ n, P2078946928782118821.a n = A041758 n

end A041758

/-! ## A041758.P6520470593257485859

`40*a(n-2)-a(n-4)` with `a(0)=19, a(1)=20, a(2)=779, a(3)=799`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041758

/-- `40*a(n-2)-a(n-4)` -/
def P6520470593257485859.Spec : Prop :=
  ∀ n, P6520470593257485859.a n = A041758 n

theorem P6520470593257485859.correct : P6520470593257485859.Spec := by
  intro n
  simp only [A041758]

end A041758

/-!
# A041759: Denominators of continued fraction convergents to sqrt(399).

The programs for A041759, the canonical program `A041759.P13973142953696513817` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041759 has offset 0).

The definition of A041759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041759.P4100629379738777235

`ogf((1+x-x^2)/(1-40x^2+x^4))`
-/

namespace A041759.P4100629379738777235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -40, 0, 1] n

end

end A041759.P4100629379738777235

namespace A041759

/-- `ogf((1+x-x^2)/(1-40x^2+x^4))` -/
def P4100629379738777235.Spec : Prop :=
  ∀ n, P4100629379738777235.a n = A041759 n

end A041759

/-! ## A041759.P13973142953696513817

`40*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=39, a(3)=40`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041759

/-- `40*a(n-2)-a(n-4)` -/
def P13973142953696513817.Spec : Prop :=
  ∀ n, P13973142953696513817.a n = A041759 n

theorem P13973142953696513817.correct : P13973142953696513817.Spec := by
  intro n
  simp only [A041759]

end A041759

/-!
# A041760: Numerators of continued fraction convergents to sqrt(401).

The programs for A041760, the canonical program `A041760.P10081993796438772787` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041760 has offset 0).

The definition of A041760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041760.P709790670962196371

`ogf((20+x)/(1-40x-x^2))`
-/

namespace A041760.P709790670962196371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [20, 1] [1, -40, -1] n

end

end A041760.P709790670962196371

namespace A041760

/-- `ogf((20+x)/(1-40x-x^2))` -/
def P709790670962196371.Spec : Prop :=
  ∀ n, P709790670962196371.a n = A041760 n

end A041760

/-! ## A041760.P10081993796438772787

`40*a(n-1)+a(n-2)` with `a(0)=20, a(1)=801`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041760

/-- `40*a(n-1)+a(n-2)` -/
def P10081993796438772787.Spec : Prop :=
  ∀ n, (P10081993796438772787.a n : ℤ) = A041760 n

theorem P10081993796438772787.correct : P10081993796438772787.Spec := by
  intro n
  simp only [A041760]

end A041760

/-!
# A041761: Denominators of continued fraction convergents to sqrt(401).

The programs for A041761, the canonical program `A041761.P2704753493485171128` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041761 has offset 0).

The definition of A041761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041761.P9051969966014102210

`ogf(1/(1-40x-x^2))`
-/

namespace A041761.P9051969966014102210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -40, -1] n

end

end A041761.P9051969966014102210

namespace A041761

/-- `ogf(1/(1-40x-x^2))` -/
def P9051969966014102210.Spec : Prop :=
  ∀ n, P9051969966014102210.a n = A041761 n

end A041761

/-! ## A041761.P2704753493485171128

`40*a(n-1)+a(n-2)` with `a(0)=1, a(1)=40`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041761

/-- `40*a(n-1)+a(n-2)` -/
def P2704753493485171128.Spec : Prop :=
  ∀ n, (P2704753493485171128.a n : ℤ) = A041761 n

theorem P2704753493485171128.correct : P2704753493485171128.Spec := by
  intro n
  simp only [A041761]

end A041761

/-! ## A041761.P14424645789839487704

`xor(1, a(n-1)²)/a(n-2)` with `a(0)=1, a(1)=40`
-/

namespace A041761.P14424645789839487704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 40] fun n a =>
  (Int.xor 1 (SequenceMachineLib.roundAway (a (n - 1) ^ 2)) : ℚ) / a (n - 2)

end

end A041761.P14424645789839487704

namespace A041761

/-- `xor(1, a(n-1)²)/a(n-2)` -/
def P14424645789839487704.Spec : Prop :=
  ∀ n, P14424645789839487704.a n = (A041761 n : ℚ)

end A041761

/-! ## A041761.P10171158067246092213

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=40`
-/

namespace A041761.P10171158067246092213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 40] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A041761.P10171158067246092213

namespace A041761

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P10171158067246092213.Spec : Prop :=
  ∀ n, P10171158067246092213.a n = A041761 n

end A041761

/-!
# A041765: Denominators of continued fraction convergents to sqrt(403).

The programs for A041765, there is no canonical definition to state claims against.
-/

/-! ## A041765.P8936815743648214199

`floor(A110654(A041764(n))/10)`
-/

namespace A041765.P8936815743648214199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110654 (A041764 n).toNat : ℚ) / 10⌋

end

end A041765.P8936815743648214199

/-!
# A041766: Numerators of continued fraction convergents to sqrt(404).

The programs for A041766, there is no canonical definition to state claims against.
-/

/-! ## A041766.P16194621903506580887

`gcd(2, n)*A041180(n)`
-/

namespace A041766.P16194621903506580887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041180 n

end

end A041766.P16194621903506580887

/-! ## A041766.P14642323526223077762

`A000034(n+1)*A041180(n)`
-/

namespace A041766.P14642323526223077762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041180 n

end

end A041766.P14642323526223077762

/-! ## A041766.P7544398338264224255

`(3-A000034(n))*A041180(n)`
-/

namespace A041766.P7544398338264224255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A000034 n) * A041180 n

end

end A041766.P7544398338264224255

/-! ## A041766.P16710465232584240538

`A001511(n²+2)*A041180(n)`
-/

namespace A041766.P16710465232584240538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n ^ 2 + 2) * A041180 n

end

end A041766.P16710465232584240538

/-! ## A041766.P11031293330107107471

`(2-A007814(A081346(n)))*A041180(n)`
-/

namespace A041766.P11031293330107107471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A007814 (A081346 n).toNat) * A041180 n

end

end A041766.P11031293330107107471

/-! ## A041766.P17648089782734837964

`lcm(A041180(n), A128235(A115364(n+1)))`
-/

namespace A041766.P17648089782734837964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041180 n) (A128235 (A115364 (n + 1)).toNat)

end

end A041766.P17648089782734837964

/-! ## A041766.P8301652172854689832

`A040000(A035363(n))*A041180(n)`
-/

namespace A041766.P8301652172854689832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A035363 n).toNat * A041180 n

end

end A041766.P8301652172854689832

/-!
# A041767: Denominators of continued fraction convergents to sqrt(404).

The programs for A041767, there is no canonical definition to state claims against.
-/

/-! ## A041767.P6926143819393153662

`A041181(n)/A000034(n)`
-/

namespace A041767.P6926143819393153662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041181 n : ℚ) / (A000034 n : ℚ)

end

end A041767.P6926143819393153662

/-! ## A041767.P1366421360166726341

`A041181(n)/A010673(n)!`
-/

namespace A041767.P1366421360166726341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041181 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A041767.P1366421360166726341

/-! ## A041767.P2079915771582400705

`A041181(n)/gcd(2, A081346(n))`
-/

namespace A041767.P2079915771582400705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041181 n : ℚ) / (Int.gcd 2 (A081346 n) : ℚ)

end

end A041767.P2079915771582400705

/-! ## A041767.P3622095671175600477

`A041181(n)/Δ[A001651(n+1)]`
-/

namespace A041767.P3622095671175600477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041181 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A041767.P3622095671175600477

/-! ## A041767.P16698813041751889041

`A041181(n)/A001511(A081346(n))`
-/

namespace A041767.P16698813041751889041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041181 n : ℚ) / (A001511 (A081346 n).toNat : ℚ)

end

end A041767.P16698813041751889041

/-! ## A041767.P10678142074811600658

`A041181(n)/A040000(A007814(n+1))`
-/

namespace A041767.P10678142074811600658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041181 n : ℚ) / (A040000 (A007814 (n + 1)).toNat : ℚ)

end

end A041767.P10678142074811600658

/-!
# A041768: Numerators of continued fraction convergents to sqrt(405).

The programs for A041768, there is no canonical definition to state claims against.
-/

/-! ## A041768.P18425774198937903422

`A041076(3*n+2)`
-/

namespace A041768.P18425774198937903422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041076 (3 * n + 2)

end

end A041768.P18425774198937903422

/-! ## A041768.P3140377811944623382

`or(char[1], A041076(A016789(n)))`
-/

namespace A041768.P3140377811944623382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A041076 (A016789 n).toNat)

end

end A041768.P3140377811944623382

/-! ## A041768.P11680530475215245941

`A041076(A016789(n))+C(A025460(n), 2)`
-/

namespace A041768.P11680530475215245941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041076 (A016789 n).toNat + (Nat.choose (A025460 n).toNat 2 : ℤ)

end

end A041768.P11680530475215245941

/-! ## A041768.P2339001049162041206

`A041076(A016789(n))+C(A212193(n), 9)`
-/

namespace A041768.P2339001049162041206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041076 (A016789 n).toNat + (Nat.choose (A212193 n).toNat 9 : ℤ)

end

end A041768.P2339001049162041206

/-! ## A041768.P13269906427691286096

`A161087(A025460(n)+1)+A041076(A016789(n))`
-/

namespace A041768.P13269906427691286096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161087 (A025460 n + 1).toNat + A041076 (A016789 n).toNat

end

end A041768.P13269906427691286096

/-!
# A041769: Denominators of continued fraction convergents to sqrt(405).

The programs for A041769, there is no canonical definition to state claims against.
-/

/-! ## A041769.P9480115782632383732

`A041077(3*n+2)/3`
-/

namespace A041769.P9480115782632383732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041077 (3 * n + 2) : ℚ) / 3

end

end A041769.P9480115782632383732

/-! ## A041769.P13216453714844056985

`A152119(3*(n+1))/6`
-/

namespace A041769.P13216453714844056985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152119 (3 * (n + 1)) : ℚ) / 6

end

end A041769.P13216453714844056985

/-!
# A041773: Denominators of continued fraction convergents to sqrt(407).

The programs for A041773, there is no canonical definition to state claims against.
-/

/-! ## A041773.P1349120678044544674

`record[gcd(A064318(n), A293736(n))]`
-/

namespace A041773.P1349120678044544674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064318 n) (A293736 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A041773.P1349120678044544674

/-!
# A041774: Numerators of continued fraction convergents to sqrt(408).

The programs for A041774, there is no canonical definition to state claims against.
-/

/-! ## A041774.P16946134107374838203

`gcd(2, n)*A041182(n)`
-/

namespace A041774.P16946134107374838203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041182 n

end

end A041774.P16946134107374838203

/-! ## A041774.P14046822757671586080

`Δ[A007494(n)]*A041182(n)`
-/

namespace A041774.P14046822757671586080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041182 n

end

end A041774.P14046822757671586080

/-! ## A041774.P10842322947053447266

`A040001(n+2)*A041182(n)`
-/

namespace A041774.P10842322947053447266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041182 n

end

end A041774.P10842322947053447266

/-! ## A041774.P11837975976787149315

`A041182(n)*A134451(n+2)`
-/

namespace A041774.P11837975976787149315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041182 n * A134451 (n + 2)

end

end A041774.P11837975976787149315

/-! ## A041774.P13281883463652327661

`A006519(n²+2)*A041182(n)`
-/

namespace A041774.P13281883463652327661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 2) * A041182 n

end

end A041774.P13281883463652327661

/-!
# A041775: Denominators of continued fraction convergents to sqrt(408).

The programs for A041775, there is no canonical definition to state claims against.
-/

/-! ## A041775.P8986692095644411187

`A041183(n)/A000034(n)`
-/

namespace A041775.P8986692095644411187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041183 n : ℚ) / (A000034 n : ℚ)

end

end A041775.P8986692095644411187

/-! ## A041775.P7395958553483913636

`A041183(n)/A010673(n)!`
-/

namespace A041775.P7395958553483913636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041183 n : ℚ) / (Nat.factorial (A010673 n).toNat : ℚ)

end

end A041775.P7395958553483913636

/-! ## A041775.P4752376180154399555

`A041183(n)/∑[A165326(n)]`
-/

namespace A041775.P4752376180154399555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041183 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A041775.P4752376180154399555

/-! ## A041775.P870764222040338781

`A041183(n)/A105672(A105672(n+1))`
-/

namespace A041775.P870764222040338781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041183 n : ℚ) / (A105672 (A105672 (n + 1)).toNat : ℚ)

end

end A041775.P870764222040338781

/-!
# A041777: Denominators of continued fraction convergents to sqrt(409).

The programs for A041777, there is no canonical definition to state claims against.
-/

/-! ## A041777.P16908402133379943830

`A320357(eq[A029269(n), A317994(n+1)])`
-/

namespace A041777.P16908402133379943830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320357 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A041777.P16908402133379943830

/-!
# A041779: Denominators of continued fraction convergents to sqrt(410).

The programs for A041779, the canonical program `A041779.P16402720629806633835` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041779 has offset 0).

The definition of A041779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041779.P16402720629806633835

`162*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=161, a(3)=648`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041779

/-- `162*a(n-2)-a(n-4)` -/
def P16402720629806633835.Spec : Prop :=
  ∀ n, P16402720629806633835.a n = A041779 n

theorem P16402720629806633835.correct : P16402720629806633835.Spec := by
  intro n
  simp only [A041779]

end A041779

/-!
# A041781: Denominators of continued fraction convergents to sqrt(411).

The programs for A041781, there is no canonical definition to state claims against.
-/

/-! ## A041781.P2443474554533543760

`A062567(A042593(n+1))`
-/

namespace A041781.P2443474554533543760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062567 (A042593 (n + 1)).toNat

end

end A041781.P2443474554533543760

/-!
# A041787: Denominators of continued fraction convergents to sqrt(414).

The programs for A041787, there is no canonical definition to state claims against.
-/

/-! ## A041787.P16020056419504920500

`A009947(A273998(n)+A084707(n))`
-/

namespace A041787.P16020056419504920500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A273998 n + A084707 n).toNat

end

end A041787.P16020056419504920500

/-!
# A041789: Denominators of continued fraction convergents to sqrt(415).

The programs for A041789, there is no canonical definition to state claims against.
-/

/-! ## A041789.P15465279024414421258

`A256132(∏[comp[∑[n-1]]])`
-/

namespace A041789.P15465279024414421258
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256132 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A041789.P15465279024414421258

/-!
# A041791: Denominators of continued fraction convergents to sqrt(416).

The programs for A041791, there is no canonical definition to state claims against.
-/

/-! ## A041791.P10836745166952951207

`A217556(A078736(n+1))`
-/

namespace A041791.P10836745166952951207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217556 (A078736 (n + 1)).toNat

end

end A041791.P10836745166952951207

/-!
# A041793: Denominators of continued fraction convergents to sqrt(417).

The programs for A041793, there is no canonical definition to state claims against.
-/

/-! ## A041793.P6888553047928778655

`A325620(A019362(n+1))`
-/

namespace A041793.P6888553047928778655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325620 (A019362 (n + 1)).toNat

end

end A041793.P6888553047928778655

/-! ## A041793.P3841443516273918260

`A138234(record[Δ[A054540(n)]])`
-/

namespace A041793.P3841443516273918260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A041793.P3841443516273918260

/-!
# A041798: Numerators of continued fraction convergents to sqrt(420).

The programs for A041798, the canonical program `A041798.P8913951993852587280` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041798 has offset 0).

The definition of A041798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041798.P8913951993852587280

`ogf((20+41x+20x^2-x^3)/(1-82x^2+x^4))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041798

/-- `ogf((20+41x+20x^2-x^3)/(1-82x^2+x^4))` -/
def P8913951993852587280.Spec : Prop :=
  ∀ n, P8913951993852587280.a n = A041798 n

theorem P8913951993852587280.correct : P8913951993852587280.Spec := by
  intro n
  simp only [A041798]

end A041798

/-! ## A041798.P6515729005577649076

`gcd(2, n)*A041188(n)`
-/

namespace A041798.P6515729005577649076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A041188 n

end

end A041798.P6515729005577649076

namespace A041798

/-- `gcd(2, n)*A041188(n)` -/
def P6515729005577649076.Spec : Prop :=
  ∀ n, P6515729005577649076.a n = A041798 n

end A041798

/-! ## A041798.P17433661783147639473

`Δ[A007494(n)]*A041188(n)`
-/

namespace A041798.P17433661783147639473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041188 n

end

end A041798.P17433661783147639473

namespace A041798

/-- `Δ[A007494(n)]*A041188(n)` -/
def P17433661783147639473.Spec : Prop :=
  ∀ n, P17433661783147639473.a n = A041798 n

end A041798

/-! ## A041798.P6081376455465974685

`A000034(n+1)*A041188(n)`
-/

namespace A041798.P6081376455465974685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A041188 n

end

end A041798.P6081376455465974685

namespace A041798

/-- `A000034(n+1)*A041188(n)` -/
def P6081376455465974685.Spec : Prop :=
  ∀ n, P6081376455465974685.a n = A041798 n

end A041798

/-! ## A041798.P14659475399242514478

`A040001(n+2)*A041188(n)`
-/

namespace A041798.P14659475399242514478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 2) * A041188 n

end

end A041798.P14659475399242514478

namespace A041798

/-- `A040001(n+2)*A041188(n)` -/
def P14659475399242514478.Spec : Prop :=
  ∀ n, P14659475399242514478.a n = A041798 n

end A041798

/-! ## A041798.P17706963869102218595

`2/A000034(n)*A041188(n)`
-/

namespace A041798.P17706963869102218595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A041188 n : ℚ)

end

end A041798.P17706963869102218595

namespace A041798

/-- `2/A000034(n)*A041188(n)` -/
def P17706963869102218595.Spec : Prop :=
  ∀ n, P17706963869102218595.a n = (A041798 n : ℚ)

end A041798

/-! ## A041798.P4055160968869917343

`A006519(record[xor(2, n)])*A041188(n)`
-/

namespace A041798.P4055160968869917343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * A041188 n

end

end A041798.P4055160968869917343

namespace A041798

/-- `A006519(record[xor(2, n)])*A041188(n)` -/
def P4055160968869917343.Spec : Prop :=
  ∀ n, P4055160968869917343.a n = A041798 n

end A041798

/-! ## A041798.P13149956512686972621

`A006519(A006519(n+1)+1)*A041188(n)`
-/

namespace A041798.P13149956512686972621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A006519 (n + 1) + 1).toNat * A041188 n

end

end A041798.P13149956512686972621

namespace A041798

/-- `A006519(A006519(n+1)+1)*A041188(n)` -/
def P13149956512686972621.Spec : Prop :=
  ∀ n, P13149956512686972621.a n = A041798 n

end A041798

/-! ## A041798.P10845011867250246994

`A041188(n)*A040434(n²+1)`
-/

namespace A041798.P10845011867250246994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041188 n * A040434 (n ^ 2 + 1)

end

end A041798.P10845011867250246994

namespace A041798

/-- `A041188(n)*A040434(n²+1)` -/
def P10845011867250246994.Spec : Prop :=
  ∀ n, P10845011867250246994.a n = A041798 n

end A041798

/-! ## A041798.P10184940772161621050

`A006519(n²+2)*A041188(n)`
-/

namespace A041798.P10184940772161621050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 2) * A041188 n

end

end A041798.P10184940772161621050

namespace A041798

/-- `A006519(n²+2)*A041188(n)` -/
def P10184940772161621050.Spec : Prop :=
  ∀ n, P10184940772161621050.a n = A041798 n

end A041798

/-!
# A041799: Denominators of continued fraction convergents to sqrt(420).

The programs for A041799, the canonical program `A041799.P597886608994119478` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A041799 has offset 0).

The definition of A041799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A041799.P16069001328738791848

`ogf((1+2x-x^2)/(1-82x^2+x^4))`
-/

namespace A041799.P16069001328738791848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, 0, -82, 0, 1] n

end

end A041799.P16069001328738791848

namespace A041799

/-- `ogf((1+2x-x^2)/(1-82x^2+x^4))` -/
def P16069001328738791848.Spec : Prop :=
  ∀ n, P16069001328738791848.a n = A041799 n

end A041799

/-! ## A041799.P597886608994119478

`82*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=81, a(3)=164`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A041799

/-- `82*a(n-2)-a(n-4)` -/
def P597886608994119478.Spec : Prop :=
  ∀ n, P597886608994119478.a n = A041799 n

theorem P597886608994119478.correct : P597886608994119478.Spec := by
  intro n
  simp only [A041799]

end A041799

/-! ## A041799.P1462137857968063858

`A041189(n)/A000034(n)`
-/

namespace A041799.P1462137857968063858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041189 n : ℚ) / (A000034 n : ℚ)

end

end A041799.P1462137857968063858

namespace A041799

/-- `A041189(n)/A000034(n)` -/
def P1462137857968063858.Spec : Prop :=
  ∀ n, P1462137857968063858.a n = (A041799 n : ℚ)

end A041799

/-! ## A041799.P12186114882667773063

`A041189(n)/gcd(2, A041161(n))`
-/

namespace A041799.P12186114882667773063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041189 n : ℚ) / (Int.gcd 2 (A041161 n) : ℚ)

end

end A041799.P12186114882667773063

namespace A041799

/-- `A041189(n)/gcd(2, A041161(n))` -/
def P12186114882667773063.Spec : Prop :=
  ∀ n, P12186114882667773063.a n = (A041799 n : ℚ)

end A041799

/-! ## A041799.P17460727012165568218

`A041189(n)/A020639(A006519(n+1))`
-/

namespace A041799.P17460727012165568218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041189 n : ℚ) / (A020639 (A006519 (n + 1)).toNat : ℚ)

end

end A041799.P17460727012165568218

namespace A041799

/-- `A041189(n)/A020639(A006519(n+1))` -/
def P17460727012165568218.Spec : Prop :=
  ∀ n, P17460727012165568218.a n = (A041799 n : ℚ)

end A041799

/-! ## A041799.P205301858936107220

`A041189(n)/A309890(A004793(n+1))`
-/

namespace A041799.P205301858936107220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041189 n : ℚ) / (A309890 (A004793 (n + 1)).toNat : ℚ)

end

end A041799.P205301858936107220

namespace A041799

/-- `A041189(n)/A309890(A004793(n+1))` -/
def P205301858936107220.Spec : Prop :=
  ∀ n, P205301858936107220.a n = (A041799 n : ℚ)

end A041799

/-! ## A041799.P3137742735943156819

`A041189(n)/A006519(n²+1)`
-/

namespace A041799.P3137742735943156819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041189 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A041799.P3137742735943156819

namespace A041799

/-- `A041189(n)/A006519(n²+1)` -/
def P3137742735943156819.Spec : Prop :=
  ∀ n, P3137742735943156819.a n = (A041799 n : ℚ)

end A041799

