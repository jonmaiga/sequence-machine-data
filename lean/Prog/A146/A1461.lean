import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A146100: Bell numbers (A000110) read mod 10.

The programs for A146100, the canonical program `A146100.P5563382916504406745` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146100 has offset 0).

The definition of A146100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146100.P5563382916504406745

`A000110(n)%10`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146100

/-- `A000110(n)%10` -/
def P5563382916504406745.Spec : Prop :=
  ∀ n, P5563382916504406745.a n = A146100 n

theorem P5563382916504406745.correct : P5563382916504406745.Spec := by
  intro n
  simp only [A146100]

end A146100

/-!
# A146101: Bell numbers (A000110) read mod 11.

The programs for A146101, the canonical program `A146101.P9905521527198011687` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146101 has offset 0).

The definition of A146101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146101.P9905521527198011687

`A000110(n)%11`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146101

/-- `A000110(n)%11` -/
def P9905521527198011687.Spec : Prop :=
  ∀ n, P9905521527198011687.a n = A146101 n

theorem P9905521527198011687.correct : P9905521527198011687.Spec := by
  intro n
  simp only [A146101]

end A146101

/-! ## A146101.P7101988404147275677

`A146112(n)%11`
-/

namespace A146101.P7101988404147275677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146112 n) 11

end

end A146101.P7101988404147275677

namespace A146101

/-- `A146112(n)%11` -/
def P7101988404147275677.Spec : Prop :=
  ∀ n, P7101988404147275677.a n = A146101 n

end A146101

/-! ## A146101.P1765871349205374441

`A010880(A146112(n))`
-/

namespace A146101.P1765871349205374441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 (A146112 n).toNat

end

end A146101.P1765871349205374441

namespace A146101

/-- `A010880(A146112(n))` -/
def P1765871349205374441.Spec : Prop :=
  ∀ n, P1765871349205374441.a n = A146101 n

end A146101

/-! ## A146101.P17738573243805468802

`abs(A292935(n)%11)`
-/

namespace A146101.P17738573243805468802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 11|

end

end A146101.P17738573243805468802

namespace A146101

/-- `abs(A292935(n)%11)` -/
def P17738573243805468802.Spec : Prop :=
  ∀ n, P17738573243805468802.a n = A146101 n

end A146101

/-! ## A146101.P18081556577369429057

`A011971(∑[n])%11`
-/

namespace A146101.P18081556577369429057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A146101.P18081556577369429057

namespace A146101

/-- `A011971(∑[n])%11` -/
def P18081556577369429057.Spec : Prop :=
  ∀ n, P18081556577369429057.a n = A146101 n

end A146101

/-! ## A146101.P12472684287043681767

`A186020(∑[n])%11`
-/

namespace A146101.P12472684287043681767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186020 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A146101.P12472684287043681767

namespace A146101

/-- `A186020(∑[n])%11` -/
def P12472684287043681767.Spec : Prop :=
  ∀ n, P12472684287043681767.a n = A146101 n

end A146101

/-! ## A146101.P233146122202221001

`Δ[A005001(n)]%11`
-/

namespace A146101.P233146122202221001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 11

end

end A146101.P233146122202221001

namespace A146101

/-- `Δ[A005001(n)]%11` -/
def P233146122202221001.Spec : Prop :=
  ∀ n, P233146122202221001.a n = A146101 n

end A146101

/-! ## A146101.P17347468976220257317

`A108087(A000124(n))%11`
-/

namespace A146101.P17347468976220257317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108087 (A000124 n).toNat) 11

end

end A146101.P17347468976220257317

namespace A146101

/-- `A108087(A000124(n))%11` -/
def P17347468976220257317.Spec : Prop :=
  ∀ n, P17347468976220257317.a n = A146101 n

end A146101

/-!
# A146102: Bell numbers (A000110) read mod 12.

The programs for A146102, the canonical program `A146102.P924366332900484755` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146102 has offset 0).

The definition of A146102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146102.P924366332900484755

`A000110(n)%12`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146102

/-- `A000110(n)%12` -/
def P924366332900484755.Spec : Prop :=
  ∀ n, P924366332900484755.a n = A146102 n

theorem P924366332900484755.correct : P924366332900484755.Spec := by
  intro n
  simp only [A146102]

end A146102

/-!
# A146103: Bell numbers (A000110) read mod 13.

The programs for A146103, the canonical program `A146103.P18229453342624043212` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146103 has offset 0).

The definition of A146103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146103.P18229453342624043212

`A000110(n)%13`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146103

/-- `A000110(n)%13` -/
def P18229453342624043212.Spec : Prop :=
  ∀ n, P18229453342624043212.a n = A146103 n

theorem P18229453342624043212.correct : P18229453342624043212.Spec := by
  intro n
  simp only [A146103]

end A146103

/-! ## A146103.P13255090351559857325

`A146116(n)%13`
-/

namespace A146103.P13255090351559857325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146116 n) 13

end

end A146103.P13255090351559857325

namespace A146103

/-- `A146116(n)%13` -/
def P13255090351559857325.Spec : Prop :=
  ∀ n, P13255090351559857325.a n = A146103 n

end A146103

/-! ## A146103.P1145670425793034785

`abs(A292935(n)%13)`
-/

namespace A146103.P1145670425793034785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 13|

end

end A146103.P1145670425793034785

namespace A146103

/-- `abs(A292935(n)%13)` -/
def P1145670425793034785.Spec : Prop :=
  ∀ n, P1145670425793034785.a n = A146103 n

end A146103

/-! ## A146103.P5276619569627647230

`A011971(∑[n])%13`
-/

namespace A146103.P5276619569627647230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 13

end

end A146103.P5276619569627647230

namespace A146103

/-- `A011971(∑[n])%13` -/
def P5276619569627647230.Spec : Prop :=
  ∀ n, P5276619569627647230.a n = A146103 n

end A146103

/-! ## A146103.P6499923059438937870

`A095149(∑[n])%13`
-/

namespace A146103.P6499923059438937870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) 13

end

end A146103.P6499923059438937870

namespace A146103

/-- `A095149(∑[n])%13` -/
def P6499923059438937870.Spec : Prop :=
  ∀ n, P6499923059438937870.a n = A146103 n

end A146103

/-! ## A146103.P7325007126640301781

`A108087(∑[n])%13`
-/

namespace A146103.P7325007126640301781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)) 13

end

end A146103.P7325007126640301781

namespace A146103

/-- `A108087(∑[n])%13` -/
def P7325007126640301781.Spec : Prop :=
  ∀ n, P7325007126640301781.a n = A146103 n

end A146103

/-! ## A146103.P5748899565450050963

`A123081(∑[n])%13`
-/

namespace A146103.P5748899565450050963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123081 (∑ j ∈ Finset.range (n + 1), f1 j)) 13

end

end A146103.P5748899565450050963

namespace A146103

/-- `A123081(∑[n])%13` -/
def P5748899565450050963.Spec : Prop :=
  ∀ n, P5748899565450050963.a n = A146103 n

end A146103

/-! ## A146103.P13446366925362927332

`A186020(∑[n])%13`
-/

namespace A146103.P13446366925362927332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186020 (∑ j ∈ Finset.range (n + 1), f1 j)) 13

end

end A146103.P13446366925362927332

namespace A146103

/-- `A186020(∑[n])%13` -/
def P13446366925362927332.Spec : Prop :=
  ∀ n, P13446366925362927332.a n = A146103 n

end A146103

/-! ## A146103.P16767318356071823652

`A346500(∑[n])%13`
-/

namespace A146103.P16767318356071823652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346500 (∑ j ∈ Finset.range (n + 1), f1 j)) 13

end

end A146103.P16767318356071823652

namespace A146103

/-- `A346500(∑[n])%13` -/
def P16767318356071823652.Spec : Prop :=
  ∀ n, P16767318356071823652.a n = A146103 n

end A146103

/-! ## A146103.P2643540490269573721

`A346517(∑[n])%13`
-/

namespace A146103.P2643540490269573721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346517 (∑ j ∈ Finset.range (n + 1), f1 j)) 13

end

end A146103.P2643540490269573721

namespace A146103

/-- `A346517(∑[n])%13` -/
def P2643540490269573721.Spec : Prop :=
  ∀ n, P2643540490269573721.a n = A146103 n

end A146103

/-!
# A146104: Bell numbers (A000110) read mod 14.

The programs for A146104, the canonical program `A146104.P18133127197390847768` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146104 has offset 0).

The definition of A146104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146104.P18133127197390847768

`A000110(n)%14`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146104

/-- `A000110(n)%14` -/
def P18133127197390847768.Spec : Prop :=
  ∀ n, P18133127197390847768.a n = A146104 n

theorem P18133127197390847768.correct : P18133127197390847768.Spec := by
  intro n
  simp only [A146104]

end A146104

/-! ## A146104.P11505189886438911500

`A146118(n)%14`
-/

namespace A146104.P11505189886438911500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146118 n) 14

end

end A146104.P11505189886438911500

namespace A146104

/-- `A146118(n)%14` -/
def P11505189886438911500.Spec : Prop :=
  ∀ n, P11505189886438911500.a n = A146104 n

end A146104

/-! ## A146104.P12696947026827430274

`A070696(A146118(n))`
-/

namespace A146104.P12696947026827430274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070696 (A146118 n).toNat

end

end A146104.P12696947026827430274

namespace A146104

/-- `A070696(A146118(n))` -/
def P12696947026827430274.Spec : Prop :=
  ∀ n, P12696947026827430274.a n = A146104 n

end A146104

/-! ## A146104.P12411940913485768725

`abs(A292935(n)%14)`
-/

namespace A146104.P12411940913485768725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 14|

end

end A146104.P12411940913485768725

namespace A146104

/-- `abs(A292935(n)%14)` -/
def P12411940913485768725.Spec : Prop :=
  ∀ n, P12411940913485768725.a n = A146104 n

end A146104

/-! ## A146104.P10915385747892458386

`A011971(∑[n])%14`
-/

namespace A146104.P10915385747892458386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 14

end

end A146104.P10915385747892458386

namespace A146104

/-- `A011971(∑[n])%14` -/
def P10915385747892458386.Spec : Prop :=
  ∀ n, P10915385747892458386.a n = A146104 n

end A146104

/-! ## A146104.P5141529335407954404

`A212431(∑[n])%14`
-/

namespace A146104.P5141529335407954404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212431 (∑ j ∈ Finset.range (n + 1), f1 j)) 14

end

end A146104.P5141529335407954404

namespace A146104

/-- `A212431(∑[n])%14` -/
def P5141529335407954404.Spec : Prop :=
  ∀ n, P5141529335407954404.a n = A146104 n

end A146104

/-! ## A146104.P11390326877951084951

`A259691(∑[n])%14`
-/

namespace A146104.P11390326877951084951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259691 (∑ j ∈ Finset.range (n + 1), f1 j)) 14

end

end A146104.P11390326877951084951

namespace A146104

/-- `A259691(∑[n])%14` -/
def P11390326877951084951.Spec : Prop :=
  ∀ n, P11390326877951084951.a n = A146104 n

end A146104

/-! ## A146104.P4141666350370979709

`Δ[A005001(n)]%14`
-/

namespace A146104.P4141666350370979709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 14

end

end A146104.P4141666350370979709

namespace A146104

/-- `Δ[A005001(n)]%14` -/
def P4141666350370979709.Spec : Prop :=
  ∀ n, P4141666350370979709.a n = A146104 n

end A146104

/-! ## A146104.P17709986538030579702

`A293024(A000096(n))%14`
-/

namespace A146104.P17709986538030579702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293024 (A000096 n).toNat) 14

end

end A146104.P17709986538030579702

namespace A146104

/-- `A293024(A000096(n))%14` -/
def P17709986538030579702.Spec : Prop :=
  ∀ n, P17709986538030579702.a n = A146104 n

end A146104

/-! ## A146104.P15283200544884733702

`A274835(A034856(n+1))%14`
-/

namespace A146104.P15283200544884733702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274835 (A034856 (n + 1)).toNat) 14

end

end A146104.P15283200544884733702

namespace A146104

/-- `A274835(A034856(n+1))%14` -/
def P15283200544884733702.Spec : Prop :=
  ∀ n, P15283200544884733702.a n = A146104 n

end A146104

/-!
# A146105: Bell numbers (A000110) read mod 15.

The programs for A146105, the canonical program `A146105.P3535934600374162943` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146105 has offset 0).

The definition of A146105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146105.P3535934600374162943

`A000110(n)%15`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146105

/-- `A000110(n)%15` -/
def P3535934600374162943.Spec : Prop :=
  ∀ n, P3535934600374162943.a n = A146105 n

theorem P3535934600374162943.correct : P3535934600374162943.Spec := by
  intro n
  simp only [A146105]

end A146105

/-! ## A146105.P6104378178430719765

`A146120(n)%15`
-/

namespace A146105.P6104378178430719765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146120 n) 15

end

end A146105.P6104378178430719765

namespace A146105

/-- `A146120(n)%15` -/
def P6104378178430719765.Spec : Prop :=
  ∀ n, P6104378178430719765.a n = A146105 n

end A146105

/-! ## A146105.P15587482824975953635

`A167463(A146120(n))`
-/

namespace A146105.P15587482824975953635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167463 (A146120 n).toNat

end

end A146105.P15587482824975953635

namespace A146105

/-- `A167463(A146120(n))` -/
def P15587482824975953635.Spec : Prop :=
  ∀ n, P15587482824975953635.a n = A146105 n

end A146105

/-! ## A146105.P4812310367456796167

`A053186(A146120(n)+49)`
-/

namespace A146105.P4812310367456796167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A146120 n + 49).toNat

end

end A146105.P4812310367456796167

namespace A146105

/-- `A053186(A146120(n)+49)` -/
def P4812310367456796167.Spec : Prop :=
  ∀ n, P4812310367456796167.a n = A146105 n

end A146105

/-! ## A146105.P4446892446763741601

`abs(A292935(n)%15)`
-/

namespace A146105.P4446892446763741601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 15|

end

end A146105.P4446892446763741601

namespace A146105

/-- `abs(A292935(n)%15)` -/
def P4446892446763741601.Spec : Prop :=
  ∀ n, P4446892446763741601.a n = A146105 n

end A146105

/-! ## A146105.P11152379378821622853

`A011971(∑[n])%15`
-/

namespace A146105.P11152379378821622853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 15

end

end A146105.P11152379378821622853

namespace A146105

/-- `A011971(∑[n])%15` -/
def P11152379378821622853.Spec : Prop :=
  ∀ n, P11152379378821622853.a n = A146105 n

end A146105

/-! ## A146105.P10885748299544524245

`A346426(∑[n])%15`
-/

namespace A146105.P10885748299544524245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346426 (∑ j ∈ Finset.range (n + 1), f1 j)) 15

end

end A146105.P10885748299544524245

namespace A146105

/-- `A346426(∑[n])%15` -/
def P10885748299544524245.Spec : Prop :=
  ∀ n, P10885748299544524245.a n = A146105 n

end A146105

/-! ## A146105.P17460110024659602672

`Δ[A005001(n)]%15`
-/

namespace A146105.P17460110024659602672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 15

end

end A146105.P17460110024659602672

namespace A146105

/-- `Δ[A005001(n)]%15` -/
def P17460110024659602672.Spec : Prop :=
  ∀ n, P17460110024659602672.a n = A146105 n

end A146105

/-! ## A146105.P5084417621285079091

`A123346(A161680(n))%15`
-/

namespace A146105.P5084417621285079091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123346 (A161680 n).toNat) 15

end

end A146105.P5084417621285079091

namespace A146105

/-- `A123346(A161680(n))%15` -/
def P5084417621285079091.Spec : Prop :=
  ∀ n, P5084417621285079091.a n = A146105 n

end A146105

/-!
# A146106: Bell numbers (A000110) read mod 16.

The programs for A146106, the canonical program `A146106.P427579343279374716` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146106 has offset 0).

The definition of A146106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146106.P427579343279374716

`A000110(n)%16`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146106

/-- `A000110(n)%16` -/
def P427579343279374716.Spec : Prop :=
  ∀ n, P427579343279374716.a n = A146106 n

theorem P427579343279374716.correct : P427579343279374716.Spec := by
  intro n
  simp only [A146106]

end A146106

/-!
# A146107: Bell numbers (A000110) read mod 17.

The programs for A146107, the canonical program `A146107.P10643272300087789491` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146107 has offset 0).

The definition of A146107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146107.P10643272300087789491

`A000110(n)%17`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146107

/-- `A000110(n)%17` -/
def P10643272300087789491.Spec : Prop :=
  ∀ n, P10643272300087789491.a n = A146107 n

theorem P10643272300087789491.correct : P10643272300087789491.Spec := by
  intro n
  simp only [A146107]

end A146107

/-! ## A146107.P5229242156714627733

`abs(A292935(n)%17)`
-/

namespace A146107.P5229242156714627733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 17|

end

end A146107.P5229242156714627733

namespace A146107

/-- `abs(A292935(n)%17)` -/
def P5229242156714627733.Spec : Prop :=
  ∀ n, P5229242156714627733.a n = A146107 n

end A146107

/-! ## A146107.P16529945969648703953

`A011971(∑[n])%17`
-/

namespace A146107.P16529945969648703953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 17

end

end A146107.P16529945969648703953

namespace A146107

/-- `A011971(∑[n])%17` -/
def P16529945969648703953.Spec : Prop :=
  ∀ n, P16529945969648703953.a n = A146107 n

end A146107

/-! ## A146107.P8773570602852579891

`A095149(∑[n])%17`
-/

namespace A146107.P8773570602852579891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) 17

end

end A146107.P8773570602852579891

namespace A146107

/-- `A095149(∑[n])%17` -/
def P8773570602852579891.Spec : Prop :=
  ∀ n, P8773570602852579891.a n = A146107 n

end A146107

/-! ## A146107.P261201353069878019

`A108087(∑[n])%17`
-/

namespace A146107.P261201353069878019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)) 17

end

end A146107.P261201353069878019

namespace A146107

/-- `A108087(∑[n])%17` -/
def P261201353069878019.Spec : Prop :=
  ∀ n, P261201353069878019.a n = A146107 n

end A146107

/-! ## A146107.P13581801735797234774

`A123081(∑[n])%17`
-/

namespace A146107.P13581801735797234774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123081 (∑ j ∈ Finset.range (n + 1), f1 j)) 17

end

end A146107.P13581801735797234774

namespace A146107

/-- `A123081(∑[n])%17` -/
def P13581801735797234774.Spec : Prop :=
  ∀ n, P13581801735797234774.a n = A146107 n

end A146107

/-! ## A146107.P17614346715097239437

`A186020(∑[n])%17`
-/

namespace A146107.P17614346715097239437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186020 (∑ j ∈ Finset.range (n + 1), f1 j)) 17

end

end A146107.P17614346715097239437

namespace A146107

/-- `A186020(∑[n])%17` -/
def P17614346715097239437.Spec : Prop :=
  ∀ n, P17614346715097239437.a n = A146107 n

end A146107

/-! ## A146107.P10619305751805990626

`A327884(∑[n])%17`
-/

namespace A146107.P10619305751805990626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327884 (∑ j ∈ Finset.range (n + 1), f1 j)) 17

end

end A146107.P10619305751805990626

namespace A146107

/-- `A327884(∑[n])%17` -/
def P10619305751805990626.Spec : Prop :=
  ∀ n, P10619305751805990626.a n = A146107 n

end A146107

/-! ## A146107.P4656119900363231373

`A346500(∑[n])%17`
-/

namespace A146107.P4656119900363231373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346500 (∑ j ∈ Finset.range (n + 1), f1 j)) 17

end

end A146107.P4656119900363231373

namespace A146107

/-- `A346500(∑[n])%17` -/
def P4656119900363231373.Spec : Prop :=
  ∀ n, P4656119900363231373.a n = A146107 n

end A146107

/-! ## A146107.P5922898770829339886

`Δ[A005001(n)]%17`
-/

namespace A146107.P5922898770829339886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 17

end

end A146107.P5922898770829339886

namespace A146107

/-- `Δ[A005001(n)]%17` -/
def P5922898770829339886.Spec : Prop :=
  ∀ n, P5922898770829339886.a n = A146107 n

end A146107

/-!
# A146108: Bell numbers (A000110) read mod 18.

The programs for A146108, the canonical program `A146108.P15709170962079005620` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146108 has offset 0).

The definition of A146108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146108.P15709170962079005620

`A000110(n)%18`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146108

/-- `A000110(n)%18` -/
def P15709170962079005620.Spec : Prop :=
  ∀ n, P15709170962079005620.a n = A146108 n

theorem P15709170962079005620.correct : P15709170962079005620.Spec := by
  intro n
  simp only [A146108]

end A146108

/-!
# A146109: Bell numbers (A000110) read mod 19.

The programs for A146109, the canonical program `A146109.P18411219671695953730` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146109 has offset 0).

The definition of A146109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146109.P18411219671695953730

`A000110(n)%19`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146109

/-- `A000110(n)%19` -/
def P18411219671695953730.Spec : Prop :=
  ∀ n, P18411219671695953730.a n = A146109 n

theorem P18411219671695953730.correct : P18411219671695953730.Spec := by
  intro n
  simp only [A146109]

end A146109

/-! ## A146109.P2264788187435459183

`abs(A292935(n)%19)`
-/

namespace A146109.P2264788187435459183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 19|

end

end A146109.P2264788187435459183

namespace A146109

/-- `abs(A292935(n)%19)` -/
def P2264788187435459183.Spec : Prop :=
  ∀ n, P2264788187435459183.a n = A146109 n

end A146109

/-! ## A146109.P7700310186921328532

`A011971(∑[n])%19`
-/

namespace A146109.P7700310186921328532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 19

end

end A146109.P7700310186921328532

namespace A146109

/-- `A011971(∑[n])%19` -/
def P7700310186921328532.Spec : Prop :=
  ∀ n, P7700310186921328532.a n = A146109 n

end A146109

/-! ## A146109.P4990766374138718876

`A095149(∑[n])%19`
-/

namespace A146109.P4990766374138718876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) 19

end

end A146109.P4990766374138718876

namespace A146109

/-- `A095149(∑[n])%19` -/
def P4990766374138718876.Spec : Prop :=
  ∀ n, P4990766374138718876.a n = A146109 n

end A146109

/-! ## A146109.P14944270260042359543

`A108087(∑[n])%19`
-/

namespace A146109.P14944270260042359543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)) 19

end

end A146109.P14944270260042359543

namespace A146109

/-- `A108087(∑[n])%19` -/
def P14944270260042359543.Spec : Prop :=
  ∀ n, P14944270260042359543.a n = A146109 n

end A146109

/-! ## A146109.P1727579951215939636

`A346426(∑[n])%19`
-/

namespace A146109.P1727579951215939636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346426 (∑ j ∈ Finset.range (n + 1), f1 j)) 19

end

end A146109.P1727579951215939636

namespace A146109

/-- `A346426(∑[n])%19` -/
def P1727579951215939636.Spec : Prop :=
  ∀ n, P1727579951215939636.a n = A146109 n

end A146109

/-! ## A146109.P17758142393709993433

`Δ[A005001(n)]%19`
-/

namespace A146109.P17758142393709993433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 19

end

end A146109.P17758142393709993433

namespace A146109

/-- `Δ[A005001(n)]%19` -/
def P17758142393709993433.Spec : Prop :=
  ∀ n, P17758142393709993433.a n = A146109 n

end A146109

/-! ## A146109.P4639182621913553751

`A144150(A034856(n+1))%19`
-/

namespace A146109.P4639182621913553751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144150 (A034856 (n + 1)).toNat) 19

end

end A146109.P4639182621913553751

namespace A146109

/-- `A144150(A034856(n+1))%19` -/
def P4639182621913553751.Spec : Prop :=
  ∀ n, P4639182621913553751.a n = A146109 n

end A146109

/-!
# A146110: Bell numbers (A000110) read mod 20.

The programs for A146110, the canonical program `A146110.P1710604547079191569` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146110 has offset 0).

The definition of A146110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146110.P1710604547079191569

`A000110(n)%20`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146110

/-- `A000110(n)%20` -/
def P1710604547079191569.Spec : Prop :=
  ∀ n, P1710604547079191569.a n = A146110 n

theorem P1710604547079191569.correct : P1710604547079191569.Spec := by
  intro n
  simp only [A146110]

end A146110

/-! ## A146110.P18408049140823317720

`abs(A292935(n)%20)`
-/

namespace A146110.P18408049140823317720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 20|

end

end A146110.P18408049140823317720

namespace A146110

/-- `abs(A292935(n)%20)` -/
def P18408049140823317720.Spec : Prop :=
  ∀ n, P18408049140823317720.a n = A146110 n

end A146110

/-! ## A146110.P9880238684511880524

`A011971(∑[n])%20`
-/

namespace A146110.P9880238684511880524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 20

end

end A146110.P9880238684511880524

namespace A146110

/-- `A011971(∑[n])%20` -/
def P9880238684511880524.Spec : Prop :=
  ∀ n, P9880238684511880524.a n = A146110 n

end A146110

/-! ## A146110.P17475845270228968369

`A327884(∑[n])%20`
-/

namespace A146110.P17475845270228968369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327884 (∑ j ∈ Finset.range (n + 1), f1 j)) 20

end

end A146110.P17475845270228968369

namespace A146110

/-- `A327884(∑[n])%20` -/
def P17475845270228968369.Spec : Prop :=
  ∀ n, P17475845270228968369.a n = A146110 n

end A146110

/-! ## A146110.P12636061885312357870

`Δ[A005001(n)]%20`
-/

namespace A146110.P12636061885312357870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 20

end

end A146110.P12636061885312357870

namespace A146110

/-- `Δ[A005001(n)]%20` -/
def P12636061885312357870.Spec : Prop :=
  ∀ n, P12636061885312357870.a n = A146110 n

end A146110

/-! ## A146110.P1357412279319086177

`A346426(A000124(n))%20`
-/

namespace A146110.P1357412279319086177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346426 (A000124 n).toNat) 20

end

end A146110.P1357412279319086177

namespace A146110

/-- `A346426(A000124(n))%20` -/
def P1357412279319086177.Spec : Prop :=
  ∀ n, P1357412279319086177.a n = A146110 n

end A146110

/-! ## A146110.P16884683102836477761

`A292870(A034856(n+1))%20`
-/

namespace A146110.P16884683102836477761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292870 (A034856 (n + 1)).toNat) 20

end

end A146110.P16884683102836477761

namespace A146110

/-- `A292870(A034856(n+1))%20` -/
def P16884683102836477761.Spec : Prop :=
  ∀ n, P16884683102836477761.a n = A146110 n

end A146110

/-! ## A146110.P12735947341642013416

`A085838(A000096(n))%20`
-/

namespace A146110.P12735947341642013416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085838 (A000096 n).toNat) 20

end

end A146110.P12735947341642013416

namespace A146110

/-- `A085838(A000096(n))%20` -/
def P12735947341642013416.Spec : Prop :=
  ∀ n, P12735947341642013416.a n = A146110 n

end A146110

/-!
# A146111: Bell numbers (A000110) read mod 21.

The programs for A146111, there is no canonical definition to state claims against.
-/

/-! ## A146111.P16605355004547146935

`A000110(n)%21`
-/

namespace A146111.P16605355004547146935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 n) 21

end

end A146111.P16605355004547146935

/-! ## A146111.P4795158896008250505

`abs(A292935(n)%21)`
-/

namespace A146111.P4795158896008250505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 21|

end

end A146111.P4795158896008250505

/-! ## A146111.P16940862076053878297

`A011971(∑[n])%21`
-/

namespace A146111.P16940862076053878297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 21

end

end A146111.P16940862076053878297

/-! ## A146111.P8141769351455630475

`A095149(∑[n])%21`
-/

namespace A146111.P8141769351455630475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) 21

end

end A146111.P8141769351455630475

/-! ## A146111.P582618703635994877

`A108087(∑[n])%21`
-/

namespace A146111.P582618703635994877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)) 21

end

end A146111.P582618703635994877

/-! ## A146111.P2675131436073173798

`A259691(∑[n])%21`
-/

namespace A146111.P2675131436073173798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259691 (∑ j ∈ Finset.range (n + 1), f1 j)) 21

end

end A146111.P2675131436073173798

/-! ## A146111.P5565971368825363166

`A327884(∑[n])%21`
-/

namespace A146111.P5565971368825363166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327884 (∑ j ∈ Finset.range (n + 1), f1 j)) 21

end

end A146111.P5565971368825363166

/-! ## A146111.P16699683698412540308

`Δ[A005001(n)]%21`
-/

namespace A146111.P16699683698412540308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 21

end

end A146111.P16699683698412540308

/-! ## A146111.P7608686123480412161

`A274835(A034856(n+1))%21`
-/

namespace A146111.P7608686123480412161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274835 (A034856 (n + 1)).toNat) 21

end

end A146111.P7608686123480412161

/-! ## A146111.P17310982224966537210

`A085838(A000096(n))%21`
-/

namespace A146111.P17310982224966537210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085838 (A000096 n).toNat) 21

end

end A146111.P17310982224966537210

/-!
# A146112: Bell numbers (A000110) read mod 22.

The programs for A146112, there is no canonical definition to state claims against.
-/

/-! ## A146112.P5335386456065130498

`A000110(n)%22`
-/

namespace A146112.P5335386456065130498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 n) 22

end

end A146112.P5335386456065130498

/-! ## A146112.P14898512047479204787

`abs(A292935(n)%22)`
-/

namespace A146112.P14898512047479204787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 22|

end

end A146112.P14898512047479204787

/-! ## A146112.P13541359034766241922

`A011971(∑[n])%22`
-/

namespace A146112.P13541359034766241922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 22

end

end A146112.P13541359034766241922

/-! ## A146112.P10570528261790006759

`A095149(∑[n])%22`
-/

namespace A146112.P10570528261790006759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) 22

end

end A146112.P10570528261790006759

/-! ## A146112.P15301242359275664006

`A108087(∑[n])%22`
-/

namespace A146112.P15301242359275664006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)) 22

end

end A146112.P15301242359275664006

/-! ## A146112.P11042994580020278421

`A123081(∑[n])%22`
-/

namespace A146112.P11042994580020278421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123081 (∑ j ∈ Finset.range (n + 1), f1 j)) 22

end

end A146112.P11042994580020278421

/-! ## A146112.P1520416454592573741

`Δ[A005001(n)]%22`
-/

namespace A146112.P1520416454592573741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 22

end

end A146112.P1520416454592573741

/-! ## A146112.P11042238085907559402

`A056857(A000124(n))%22`
-/

namespace A146112.P11042238085907559402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056857 (A000124 n).toNat) 22

end

end A146112.P11042238085907559402

/-! ## A146112.P2672604265205219172

`A011972(A161680(n))%22`
-/

namespace A146112.P2672604265205219172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011972 (A161680 n).toNat) 22

end

end A146112.P2672604265205219172

/-! ## A146112.P6872231064603587014

`A133611(A008619(A002378(n)))%22`
-/

namespace A146112.P6872231064603587014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133611 (A008619 (A002378 n).toNat).toNat) 22

end

end A146112.P6872231064603587014

/-!
# A146113: Bell numbers (A000110) read mod 23.

The programs for A146113, the canonical program `A146113.P10993359019740611459` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146113 has offset 0).

The definition of A146113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146113.P10993359019740611459

`A000110(n)%23`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146113

/-- `A000110(n)%23` -/
def P10993359019740611459.Spec : Prop :=
  ∀ n, P10993359019740611459.a n = A146113 n

theorem P10993359019740611459.correct : P10993359019740611459.Spec := by
  intro n
  simp only [A146113]

end A146113

/-! ## A146113.P17667381256838764175

`abs(A292935(n)%23)`
-/

namespace A146113.P17667381256838764175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 23|

end

end A146113.P17667381256838764175

namespace A146113

/-- `abs(A292935(n)%23)` -/
def P17667381256838764175.Spec : Prop :=
  ∀ n, P17667381256838764175.a n = A146113 n

end A146113

/-! ## A146113.P2629452036360133168

`Δ[A005001(n)]%23`
-/

namespace A146113.P2629452036360133168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 23

end

end A146113.P2629452036360133168

namespace A146113

/-- `Δ[A005001(n)]%23` -/
def P2629452036360133168.Spec : Prop :=
  ∀ n, P2629452036360133168.a n = A146113 n

end A146113

/-! ## A146113.P14995840263750587520

`A011971(A000217(n))%23`
-/

namespace A146113.P14995840263750587520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (A000217 n).toNat) 23

end

end A146113.P14995840263750587520

namespace A146113

/-- `A011971(A000217(n))%23` -/
def P14995840263750587520.Spec : Prop :=
  ∀ n, P14995840263750587520.a n = A146113 n

end A146113

/-! ## A146113.P17811626902470617190

`A056857(A000124(n))%23`
-/

namespace A146113.P17811626902470617190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056857 (A000124 n).toNat) 23

end

end A146113.P17811626902470617190

namespace A146113

/-- `A056857(A000124(n))%23` -/
def P17811626902470617190.Spec : Prop :=
  ∀ n, P17811626902470617190.a n = A146113 n

end A146113

/-! ## A146113.P17679047218658588746

`A095149(A000096(n))%23`
-/

namespace A146113.P17679047218658588746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (A000096 n).toNat) 23

end

end A146113.P17679047218658588746

namespace A146113

/-- `A095149(A000096(n))%23` -/
def P17679047218658588746.Spec : Prop :=
  ∀ n, P17679047218658588746.a n = A146113 n

end A146113

/-! ## A146113.P11057167196549869010

`A011972(A161680(n))%23`
-/

namespace A146113.P11057167196549869010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011972 (A161680 n).toNat) 23

end

end A146113.P11057167196549869010

namespace A146113

/-- `A011972(A161680(n))%23` -/
def P11057167196549869010.Spec : Prop :=
  ∀ n, P11057167196549869010.a n = A146113 n

end A146113

/-! ## A146113.P16586245322450565184

`A123081(A080476(n+1))%23`
-/

namespace A146113.P16586245322450565184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123081 (A080476 (n + 1)).toNat) 23

end

end A146113.P16586245322450565184

namespace A146113

/-- `A123081(A080476(n+1))%23` -/
def P16586245322450565184.Spec : Prop :=
  ∀ n, P16586245322450565184.a n = A146113 n

end A146113

/-!
# A146114: Bell numbers (A000110) read mod 24.

The programs for A146114, the canonical program `A146114.P17833982260531170022` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146114 has offset 0).

The definition of A146114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146114.P17833982260531170022

`A000110(n)%24`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146114

/-- `A000110(n)%24` -/
def P17833982260531170022.Spec : Prop :=
  ∀ n, P17833982260531170022.a n = A146114 n

theorem P17833982260531170022.correct : P17833982260531170022.Spec := by
  intro n
  simp only [A146114]

end A146114

/-!
# A146115: Bell numbers (A000110) read mod 25.

The programs for A146115, the canonical program `A146115.P15356802500065920005` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146115 has offset 0).

The definition of A146115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146115.P15356802500065920005

`A000110(n)%25`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146115

/-- `A000110(n)%25` -/
def P15356802500065920005.Spec : Prop :=
  ∀ n, P15356802500065920005.a n = A146115 n

theorem P15356802500065920005.correct : P15356802500065920005.Spec := by
  intro n
  simp only [A146115]

end A146115

/-! ## A146115.P13164797144018723508

`A011971(∑[n])%25`
-/

namespace A146115.P13164797144018723508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 25

end

end A146115.P13164797144018723508

namespace A146115

/-- `A011971(∑[n])%25` -/
def P13164797144018723508.Spec : Prop :=
  ∀ n, P13164797144018723508.a n = A146115 n

end A146115

/-! ## A146115.P311651113424964786

`A095149(∑[n])%25`
-/

namespace A146115.P311651113424964786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) 25

end

end A146115.P311651113424964786

namespace A146115

/-- `A095149(∑[n])%25` -/
def P311651113424964786.Spec : Prop :=
  ∀ n, P311651113424964786.a n = A146115 n

end A146115

/-! ## A146115.P16095356531445035286

`A123081(∑[n])%25`
-/

namespace A146115.P16095356531445035286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123081 (∑ j ∈ Finset.range (n + 1), f1 j)) 25

end

end A146115.P16095356531445035286

namespace A146115

/-- `A123081(∑[n])%25` -/
def P16095356531445035286.Spec : Prop :=
  ∀ n, P16095356531445035286.a n = A146115 n

end A146115

/-! ## A146115.P12537532941264619550

`A346426(∑[n])%25`
-/

namespace A146115.P12537532941264619550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346426 (∑ j ∈ Finset.range (n + 1), f1 j)) 25

end

end A146115.P12537532941264619550

namespace A146115

/-- `A346426(∑[n])%25` -/
def P12537532941264619550.Spec : Prop :=
  ∀ n, P12537532941264619550.a n = A146115 n

end A146115

/-! ## A146115.P9512178979092957884

`Δ[A005001(n)]%25`
-/

namespace A146115.P9512178979092957884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 25

end

end A146115.P9512178979092957884

namespace A146115

/-- `Δ[A005001(n)]%25` -/
def P9512178979092957884.Spec : Prop :=
  ∀ n, P9512178979092957884.a n = A146115 n

end A146115

/-! ## A146115.P5546498293718244548

`A011972(C(n, 2))%25`
-/

namespace A146115.P5546498293718244548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011972 (Nat.choose n 2)) 25

end

end A146115.P5546498293718244548

namespace A146115

/-- `A011972(C(n, 2))%25` -/
def P5546498293718244548.Spec : Prop :=
  ∀ n, P5546498293718244548.a n = A146115 n

end A146115

/-!
# A146116: Bell numbers (A000110) read mod 26.

The programs for A146116, the canonical program `A146116.P15045300375888123456` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146116 has offset 0).

The definition of A146116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146116.P15045300375888123456

`A000110(n)%26`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146116

/-- `A000110(n)%26` -/
def P15045300375888123456.Spec : Prop :=
  ∀ n, P15045300375888123456.a n = A146116 n

theorem P15045300375888123456.correct : P15045300375888123456.Spec := by
  intro n
  simp only [A146116]

end A146116

/-! ## A146116.P17857819004471002181

`abs(A292935(n)%26)`
-/

namespace A146116.P17857819004471002181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 26|

end

end A146116.P17857819004471002181

namespace A146116

/-- `abs(A292935(n)%26)` -/
def P17857819004471002181.Spec : Prop :=
  ∀ n, P17857819004471002181.a n = A146116 n

end A146116

/-! ## A146116.P5156172398578137127

`A011971(∑[n])%26`
-/

namespace A146116.P5156172398578137127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 26

end

end A146116.P5156172398578137127

namespace A146116

/-- `A011971(∑[n])%26` -/
def P5156172398578137127.Spec : Prop :=
  ∀ n, P5156172398578137127.a n = A146116 n

end A146116

/-! ## A146116.P4196886363565259608

`A095149(∑[n])%26`
-/

namespace A146116.P4196886363565259608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) 26

end

end A146116.P4196886363565259608

namespace A146116

/-- `A095149(∑[n])%26` -/
def P4196886363565259608.Spec : Prop :=
  ∀ n, P4196886363565259608.a n = A146116 n

end A146116

/-! ## A146116.P9867529958410535813

`A108087(∑[n])%26`
-/

namespace A146116.P9867529958410535813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)) 26

end

end A146116.P9867529958410535813

namespace A146116

/-- `A108087(∑[n])%26` -/
def P9867529958410535813.Spec : Prop :=
  ∀ n, P9867529958410535813.a n = A146116 n

end A146116

/-! ## A146116.P4752733924907996782

`A123081(∑[n])%26`
-/

namespace A146116.P4752733924907996782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123081 (∑ j ∈ Finset.range (n + 1), f1 j)) 26

end

end A146116.P4752733924907996782

namespace A146116

/-- `A123081(∑[n])%26` -/
def P4752733924907996782.Spec : Prop :=
  ∀ n, P4752733924907996782.a n = A146116 n

end A146116

/-! ## A146116.P3535142114467518446

`A346500(∑[n])%26`
-/

namespace A146116.P3535142114467518446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346500 (∑ j ∈ Finset.range (n + 1), f1 j)) 26

end

end A146116.P3535142114467518446

namespace A146116

/-- `A346500(∑[n])%26` -/
def P3535142114467518446.Spec : Prop :=
  ∀ n, P3535142114467518446.a n = A146116 n

end A146116

/-! ## A146116.P6734417027568624908

`Δ[A005001(n)]%26`
-/

namespace A146116.P6734417027568624908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 26

end

end A146116.P6734417027568624908

namespace A146116

/-- `Δ[A005001(n)]%26` -/
def P6734417027568624908.Spec : Prop :=
  ∀ n, P6734417027568624908.a n = A146116 n

end A146116

/-! ## A146116.P14550969931410220021

`A133611(A000124(n))%26`
-/

namespace A146116.P14550969931410220021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133611 (A000124 n).toNat) 26

end

end A146116.P14550969931410220021

namespace A146116

/-- `A133611(A000124(n))%26` -/
def P14550969931410220021.Spec : Prop :=
  ∀ n, P14550969931410220021.a n = A146116 n

end A146116

/-!
# A146117: Bell numbers (A000110) read mod 27.

The programs for A146117, the canonical program `A146117.P1808314762881107789` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146117 has offset 0).

The definition of A146117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146117.P1808314762881107789

`A000110(n)%27`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146117

/-- `A000110(n)%27` -/
def P1808314762881107789.Spec : Prop :=
  ∀ n, P1808314762881107789.a n = A146117 n

theorem P1808314762881107789.correct : P1808314762881107789.Spec := by
  intro n
  simp only [A146117]

end A146117

/-!
# A146118: Bell numbers (A000110) read mod 28.

The programs for A146118, the canonical program `A146118.P5572118832429537208` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146118 has offset 0).

The definition of A146118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146118.P5572118832429537208

`A000110(n)%28`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146118

/-- `A000110(n)%28` -/
def P5572118832429537208.Spec : Prop :=
  ∀ n, P5572118832429537208.a n = A146118 n

theorem P5572118832429537208.correct : P5572118832429537208.Spec := by
  intro n
  simp only [A146118]

end A146118

/-! ## A146118.P8396336398211515033

`abs(A292935(n)%28)`
-/

namespace A146118.P8396336398211515033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 28|

end

end A146118.P8396336398211515033

namespace A146118

/-- `abs(A292935(n)%28)` -/
def P8396336398211515033.Spec : Prop :=
  ∀ n, P8396336398211515033.a n = A146118 n

end A146118

/-! ## A146118.P401612880500936902

`A123081(∑[n])%28`
-/

namespace A146118.P401612880500936902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123081 (∑ j ∈ Finset.range (n + 1), f1 j)) 28

end

end A146118.P401612880500936902

namespace A146118

/-- `A123081(∑[n])%28` -/
def P401612880500936902.Spec : Prop :=
  ∀ n, P401612880500936902.a n = A146118 n

end A146118

/-! ## A146118.P3736913058774749298

`A186020(∑[n])%28`
-/

namespace A146118.P3736913058774749298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186020 (∑ j ∈ Finset.range (n + 1), f1 j)) 28

end

end A146118.P3736913058774749298

namespace A146118

/-- `A186020(∑[n])%28` -/
def P3736913058774749298.Spec : Prop :=
  ∀ n, P3736913058774749298.a n = A146118 n

end A146118

/-! ## A146118.P6430092731645564203

`A212431(∑[n])%28`
-/

namespace A146118.P6430092731645564203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212431 (∑ j ∈ Finset.range (n + 1), f1 j)) 28

end

end A146118.P6430092731645564203

namespace A146118

/-- `A212431(∑[n])%28` -/
def P6430092731645564203.Spec : Prop :=
  ∀ n, P6430092731645564203.a n = A146118 n

end A146118

/-! ## A146118.P7449690149862869815

`A327884(∑[n])%28`
-/

namespace A146118.P7449690149862869815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327884 (∑ j ∈ Finset.range (n + 1), f1 j)) 28

end

end A146118.P7449690149862869815

namespace A146118

/-- `A327884(∑[n])%28` -/
def P7449690149862869815.Spec : Prop :=
  ∀ n, P7449690149862869815.a n = A146118 n

end A146118

/-! ## A146118.P8395172677918431548

`Δ[A005001(n)]%28`
-/

namespace A146118.P8395172677918431548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 28

end

end A146118.P8395172677918431548

namespace A146118

/-- `Δ[A005001(n)]%28` -/
def P8395172677918431548.Spec : Prop :=
  ∀ n, P8395172677918431548.a n = A146118 n

end A146118

/-! ## A146118.P16101416103400790103

`A011971(A000217(n))%28`
-/

namespace A146118.P16101416103400790103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (A000217 n).toNat) 28

end

end A146118.P16101416103400790103

namespace A146118

/-- `A011971(A000217(n))%28` -/
def P16101416103400790103.Spec : Prop :=
  ∀ n, P16101416103400790103.a n = A146118 n

end A146118

/-! ## A146118.P8150403042134790719

`A056857(A000124(n))%28`
-/

namespace A146118.P8150403042134790719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056857 (A000124 n).toNat) 28

end

end A146118.P8150403042134790719

namespace A146118

/-- `A056857(A000124(n))%28` -/
def P8150403042134790719.Spec : Prop :=
  ∀ n, P8150403042134790719.a n = A146118 n

end A146118

/-! ## A146118.P12168300445133479845

`A121207(A000096(n))%28`
-/

namespace A146118.P12168300445133479845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121207 (A000096 n).toNat) 28

end

end A146118.P12168300445133479845

namespace A146118

/-- `A121207(A000096(n))%28` -/
def P12168300445133479845.Spec : Prop :=
  ∀ n, P12168300445133479845.a n = A146118 n

end A146118

/-!
# A146119: Bell numbers (A000110) read mod 29.

The programs for A146119, the canonical program `A146119.P10093737635167235879` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146119 has offset 0).

The definition of A146119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146119.P10093737635167235879

`A000110(n)%29`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146119

/-- `A000110(n)%29` -/
def P10093737635167235879.Spec : Prop :=
  ∀ n, P10093737635167235879.a n = A146119 n

theorem P10093737635167235879.correct : P10093737635167235879.Spec := by
  intro n
  simp only [A146119]

end A146119

/-! ## A146119.P11477784238793629575

`A011971(∑[n])%29`
-/

namespace A146119.P11477784238793629575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 29

end

end A146119.P11477784238793629575

namespace A146119

/-- `A011971(∑[n])%29` -/
def P11477784238793629575.Spec : Prop :=
  ∀ n, P11477784238793629575.a n = A146119 n

end A146119

/-! ## A146119.P14095210836600837430

`A108087(∑[n])%29`
-/

namespace A146119.P14095210836600837430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108087 (∑ j ∈ Finset.range (n + 1), f1 j)) 29

end

end A146119.P14095210836600837430

namespace A146119

/-- `A108087(∑[n])%29` -/
def P14095210836600837430.Spec : Prop :=
  ∀ n, P14095210836600837430.a n = A146119 n

end A146119

/-! ## A146119.P16804107086611851874

`A186020(∑[n])%29`
-/

namespace A146119.P16804107086611851874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186020 (∑ j ∈ Finset.range (n + 1), f1 j)) 29

end

end A146119.P16804107086611851874

namespace A146119

/-- `A186020(∑[n])%29` -/
def P16804107086611851874.Spec : Prop :=
  ∀ n, P16804107086611851874.a n = A146119 n

end A146119

/-! ## A146119.P3335713854045334457

`A327884(∑[n])%29`
-/

namespace A146119.P3335713854045334457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327884 (∑ j ∈ Finset.range (n + 1), f1 j)) 29

end

end A146119.P3335713854045334457

namespace A146119

/-- `A327884(∑[n])%29` -/
def P3335713854045334457.Spec : Prop :=
  ∀ n, P3335713854045334457.a n = A146119 n

end A146119

/-! ## A146119.P2994030237514771396

`Δ[A005001(n)]%29`
-/

namespace A146119.P2994030237514771396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 29

end

end A146119.P2994030237514771396

namespace A146119

/-- `Δ[A005001(n)]%29` -/
def P2994030237514771396.Spec : Prop :=
  ∀ n, P2994030237514771396.a n = A146119 n

end A146119

/-! ## A146119.P4202306704369329648

`A144150(A034856(n+1))%29`
-/

namespace A146119.P4202306704369329648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144150 (A034856 (n + 1)).toNat) 29

end

end A146119.P4202306704369329648

namespace A146119

/-- `A144150(A034856(n+1))%29` -/
def P4202306704369329648.Spec : Prop :=
  ∀ n, P4202306704369329648.a n = A146119 n

end A146119

/-!
# A146120: Bell numbers (A000110) read mod 30.

The programs for A146120, the canonical program `A146120.P10910258608344790140` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146120 has offset 0).

The definition of A146120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146120.P10910258608344790140

`A000110(n)%30`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146120

/-- `A000110(n)%30` -/
def P10910258608344790140.Spec : Prop :=
  ∀ n, P10910258608344790140.a n = A146120 n

theorem P10910258608344790140.correct : P10910258608344790140.Spec := by
  intro n
  simp only [A146120]

end A146120

/-! ## A146120.P14174772700704645604

`abs(A292935(n)%30)`
-/

namespace A146120.P14174772700704645604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 30|

end

end A146120.P14174772700704645604

namespace A146120

/-- `abs(A292935(n)%30)` -/
def P14174772700704645604.Spec : Prop :=
  ∀ n, P14174772700704645604.a n = A146120 n

end A146120

/-! ## A146120.P14006246669011264439

`Δ[A005001(n)]%30`
-/

namespace A146120.P14006246669011264439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 30

end

end A146120.P14006246669011264439

namespace A146120

/-- `Δ[A005001(n)]%30` -/
def P14006246669011264439.Spec : Prop :=
  ∀ n, P14006246669011264439.a n = A146120 n

end A146120

/-! ## A146120.P3689395062498002303

`A011971(A000217(n))%30`
-/

namespace A146120.P3689395062498002303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (A000217 n).toNat) 30

end

end A146120.P3689395062498002303

namespace A146120

/-- `A011971(A000217(n))%30` -/
def P3689395062498002303.Spec : Prop :=
  ∀ n, P3689395062498002303.a n = A146120 n

end A146120

/-! ## A146120.P4719244193099062792

`A056857(A000124(n))%30`
-/

namespace A146120.P4719244193099062792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056857 (A000124 n).toNat) 30

end

end A146120.P4719244193099062792

namespace A146120

/-- `A056857(A000124(n))%30` -/
def P4719244193099062792.Spec : Prop :=
  ∀ n, P4719244193099062792.a n = A146120 n

end A146120

/-! ## A146120.P1518980121978953229

`A095149(A000096(n))%30`
-/

namespace A146120.P1518980121978953229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (A000096 n).toNat) 30

end

end A146120.P1518980121978953229

namespace A146120

/-- `A095149(A000096(n))%30` -/
def P1518980121978953229.Spec : Prop :=
  ∀ n, P1518980121978953229.a n = A146120 n

end A146120

/-! ## A146120.P3430821900268284332

`A292870(A034856(n+1))%30`
-/

namespace A146120.P3430821900268284332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292870 (A034856 (n + 1)).toNat) 30

end

end A146120.P3430821900268284332

namespace A146120

/-- `A292870(A034856(n+1))%30` -/
def P3430821900268284332.Spec : Prop :=
  ∀ n, P3430821900268284332.a n = A146120 n

end A146120

/-! ## A146120.P6166889700321865706

`A049020(∑[n])%30`
-/

namespace A146120.P6166889700321865706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049020 (∑ j ∈ Finset.range (n + 1), f1 j)) 30

end

end A146120.P6166889700321865706

namespace A146120

/-- `A049020(∑[n])%30` -/
def P6166889700321865706.Spec : Prop :=
  ∀ n, P6166889700321865706.a n = A146120 n

end A146120

/-!
# A146121: Bell numbers (A000110) read mod 31.

The programs for A146121, the canonical program `A146121.P1276232944455750762` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146121 has offset 0).

The definition of A146121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146121.P1276232944455750762

`A000110(n)%31`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146121

/-- `A000110(n)%31` -/
def P1276232944455750762.Spec : Prop :=
  ∀ n, P1276232944455750762.a n = A146121 n

theorem P1276232944455750762.correct : P1276232944455750762.Spec := by
  intro n
  simp only [A146121]

end A146121

/-! ## A146121.P4672418233607221350

`abs(A292935(n)%31)`
-/

namespace A146121.P4672418233607221350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A292935 n) 31|

end

end A146121.P4672418233607221350

namespace A146121

/-- `abs(A292935(n)%31)` -/
def P4672418233607221350.Spec : Prop :=
  ∀ n, P4672418233607221350.a n = A146121 n

end A146121

/-! ## A146121.P10531271156541382223

`A011971(∑[n])%31`
-/

namespace A146121.P10531271156541382223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) 31

end

end A146121.P10531271156541382223

namespace A146121

/-- `A011971(∑[n])%31` -/
def P10531271156541382223.Spec : Prop :=
  ∀ n, P10531271156541382223.a n = A146121 n

end A146121

/-! ## A146121.P4562911615510336124

`A095149(∑[n])%31`
-/

namespace A146121.P4562911615510336124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) 31

end

end A146121.P4562911615510336124

namespace A146121

/-- `A095149(∑[n])%31` -/
def P4562911615510336124.Spec : Prop :=
  ∀ n, P4562911615510336124.a n = A146121 n

end A146121

/-! ## A146121.P17986297080189238460

`Δ[A005001(n)]%31`
-/

namespace A146121.P17986297080189238460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 31

end

end A146121.P17986297080189238460

namespace A146121

/-- `Δ[A005001(n)]%31` -/
def P17986297080189238460.Spec : Prop :=
  ∀ n, P17986297080189238460.a n = A146121 n

end A146121

/-! ## A146121.P16614134686327343312

`A056857(A000124(n))%31`
-/

namespace A146121.P16614134686327343312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056857 (A000124 n).toNat) 31

end

end A146121.P16614134686327343312

namespace A146121

/-- `A056857(A000124(n))%31` -/
def P16614134686327343312.Spec : Prop :=
  ∀ n, P16614134686327343312.a n = A146121 n

end A146121

/-!
# A146122: Bell numbers (A000110) read mod 32.

The programs for A146122, the canonical program `A146122.P1184175377577680424` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146122 has offset 0).

The definition of A146122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A146122.P1184175377577680424

`A000110(n)%32`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A146122

/-- `A000110(n)%32` -/
def P1184175377577680424.Spec : Prop :=
  ∀ n, P1184175377577680424.a n = A146122 n

theorem P1184175377577680424.correct : P1184175377577680424.Spec := by
  intro n
  simp only [A146122]

end A146122

/-!
# A146127: Number of n X n binary arrays with all ones connected only in a 3X2 zee 1,1 1,2 1,3 2,3 2,4 in any orientation.

The programs for A146127, there is no canonical definition to state claims against.
-/

/-! ## A146127.P12491240673712096525

`A146129(2*(n+2))`
-/

namespace A146127.P12491240673712096525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146129 (2 * (n + 2))

end

end A146127.P12491240673712096525

/-! ## A146127.P15708658690339753338

`A146129(A248196(n))^A146129(n+1)`
-/

namespace A146127.P15708658690339753338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146129 (A248196 n).toNat : ℚ) ^ (A146129 (n + 1) : ℤ)

end

end A146127.P15708658690339753338

/-! ## A146127.P15534813218660854473

`C(A146129(A352874(n+1)), A146129(n+1))`
-/

namespace A146127.P15534813218660854473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A146129 (A352874 (n + 1)).toNat).toNat (A146129 (n + 1)).toNat

end

end A146127.P15534813218660854473

/-!
# A146130: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 3X2 zee 1,1 1,2 1,3 2,3 2,4 in any orientation.

The programs for A146130, there is no canonical definition to state claims against.
-/

/-! ## A146130.P17907704911189465954

`A146132(2*n+3)`
-/

namespace A146130.P17907704911189465954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146132 (2 * n + 3)

end

end A146130.P17907704911189465954

/-! ## A146130.P1562908364901826435

`A022998(A146132(∏{digits}[n, #]+∑{digits}[n, #]+3))`
-/

namespace A146130.P1562908364901826435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A146132 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 3)).toNat

end

end A146130.P1562908364901826435

/-! ## A146130.P18362614245136168028

`or(1, A146132(A033163(n+1)))`
-/

namespace A146130.P18362614245136168028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146132 (A033163 (n + 1)).toNat)

end

end A146130.P18362614245136168028

/-! ## A146130.P4728725334492030031

`A146132(A033163(n+1))%A065323(n)`
-/

namespace A146130.P4728725334492030031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146132 (A033163 (n + 1)).toNat) (A065323 n)

end

end A146130.P4728725334492030031

/-!
# A146131: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 3X2 zee 1,1 1,2 1,3 2,3 2,4 in any orientation.

The programs for A146131, there is no canonical definition to state claims against.
-/

/-! ## A146131.P17808960932937544914

`A088861(A393944(n))`
-/

namespace A146131.P17808960932937544914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088861 (A393944 n).toNat

end

end A146131.P17808960932937544914

/-! ## A146131.P13105177664895736635

`or(1, A089850(A120036(n)))`
-/

namespace A146131.P13105177664895736635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089850 (A120036 n).toNat)

end

end A146131.P13105177664895736635

/-! ## A146131.P17888254093855236754

`or(1, A337682(A014217(n)))`
-/

namespace A146131.P17888254093855236754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A337682 (A014217 n).toNat)

end

end A146131.P17888254093855236754

/-! ## A146131.P515457792170108101

`A241898(or(6, A076865(n)))`
-/

namespace A146131.P515457792170108101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (Int.lor 6 (A076865 n)).toNat

end

end A146131.P515457792170108101

/-!
# A146132: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 3X2 zee 1,1 1,2 1,3 2,3 2,4 in any orientation.

The programs for A146132, there is no canonical definition to state claims against.
-/

/-! ## A146132.P3602488927155471948

`A102510(A146141(n+1))`
-/

namespace A146132.P3602488927155471948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102510 (A146141 (n + 1)).toNat

end

end A146132.P3602488927155471948

/-! ## A146132.P15800749463398823143

`A123360(A146903(n+1))`
-/

namespace A146132.P15800749463398823143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123360 (A146903 (n + 1)).toNat

end

end A146132.P15800749463398823143

/-! ## A146132.P1543763883662052616

`A161957(A146474(n+1))`
-/

namespace A146132.P1543763883662052616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161957 (A146474 (n + 1)).toNat

end

end A146132.P1543763883662052616

/-! ## A146132.P13993988407836599784

`A243733(A147187(n+1))`
-/

namespace A146132.P13993988407836599784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243733 (A147187 (n + 1)).toNat

end

end A146132.P13993988407836599784

/-!
# A146133: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 3X2 zee 1,1 1,2 1,3 2,3 2,4 in any orientation.

The programs for A146133, there is no canonical definition to state claims against.
-/

/-! ## A146133.P9933093466222398457

`or(1, A265568(A351343(n)))`
-/

namespace A146133.P9933093466222398457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A265568 (A351343 n).toNat)

end

end A146133.P9933093466222398457

/-! ## A146133.P15095412687733750480

`A107686(A321662(∑[floor(2*n/5)]))`
-/

namespace A146133.P15095412687733750480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A321662 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A146133.P15095412687733750480

/-! ## A146133.P5475967265589213636

`A126337(xor(round(n²/12), A259117(n+1)))`
-/

namespace A146133.P5475967265589213636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126337 (Int.xor (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)) (A259117 (n + 1))).toNat

end

end A146133.P5475967265589213636

/-! ## A146133.P4280764206752500454

`A160587(n)%A280236(A000055(n))`
-/

namespace A146133.P4280764206752500454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160587 n) (A280236 (A000055 n).toNat)

end

end A146133.P4280764206752500454

/-! ## A146133.P10942863569703110607

`A194803(A065953(n))%A242821(n+3)`
-/

namespace A146133.P10942863569703110607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194803 (A065953 n).toNat) (A242821 (n + 3))

end

end A146133.P10942863569703110607

/-!
# A146134: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 3X2 zee 1,1 1,2 1,3 2,3 2,4 in any orientation.

The programs for A146134, there is no canonical definition to state claims against.
-/

/-! ## A146134.P6062089622734384617

`A127678(A222283(n+1)+n)`
-/

namespace A146134.P6062089622734384617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127678 (A222283 (n + 1) + (n : ℤ)).toNat

end

end A146134.P6062089622734384617

/-! ## A146134.P2012420192379512597

`A072039(A007318(n)*A007838(n))`
-/

namespace A146134.P2012420192379512597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072039 (A007318 n * A007838 n).toNat

end

end A146134.P2012420192379512597

/-! ## A146134.P10247524870562181799

`A165789(A330211(n)^A008289(n+1))`
-/

namespace A146134.P10247524870562181799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165789 (SequenceMachineLib.roundAway ((A330211 n : ℚ) ^ (A008289 (n + 1) : ℤ))).toNat

end

end A146134.P10247524870562181799

/-!
# A146135: Positive integers a(n) such that for every integer m==1(mod 4),m>=5, there exists a unique representation of m as a sum of the form a(l)+4a(s).

The programs for A146135, there is no canonical definition to state claims against.
-/

/-! ## A146135.P1660208051427140258

`record[or(51, n)-50]`
-/

namespace A146135.P1660208051427140258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 51 n : ℤ) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146135.P1660208051427140258

/-! ## A146135.P11658649189901286824

`record[xor(51, n)-50]`
-/

namespace A146135.P11658649189901286824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 51 n : ℤ) - 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146135.P11658649189901286824

/-! ## A146135.P13902331121209296333

`xor(50, record[or(51, n)])`
-/

namespace A146135.P13902331121209296333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 51 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 50 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A146135.P13902331121209296333

/-! ## A146135.P6560284788047750842

`record[and(or(1, n), -51)]`
-/

namespace A146135.P6560284788047750842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.lor 1 n : ℤ) (-51)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146135.P6560284788047750842

/-! ## A146135.P10499983782894853935

`record[and(n, -52)+1]`
-/

namespace A146135.P10499983782894853935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-52) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146135.P10499983782894853935

/-!
# A146136: Number of n X n binary arrays with all ones connected only in a 5-point barb 1,1 1,2 2,2 2,3 3,2 in any orientation.

The programs for A146136, there is no canonical definition to state claims against.
-/

/-! ## A146136.P3360682614334579604

`A146138(2*n+3)`
-/

namespace A146136.P3360682614334579604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146138 (2 * n + 3)

end

end A146136.P3360682614334579604

/-! ## A146136.P15559981468054328579

`A146138(A325424(n+1))%A010572(n)`
-/

namespace A146136.P15559981468054328579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146138 (A325424 (n + 1)).toNat) (A010572 n)

end

end A146136.P15559981468054328579

/-! ## A146136.P16607002707261298079

`A146138(A325424(n+1))^A146138(A140878(n+1))`
-/

namespace A146136.P16607002707261298079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146138 (A325424 (n + 1)).toNat : ℚ) ^ (A146138 (A140878 (n + 1)).toNat : ℤ)

end

end A146136.P16607002707261298079

/-!
# A146137: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 5-point barb 1,1 1,2 2,2 2,3 3,2 in any orientation.

The programs for A146137, there is no canonical definition to state claims against.
-/

/-! ## A146137.P12068890491082061639

`A259175(∏{e}[n+1, C(#+3, 3)]+(1-n)²+n)`
-/

namespace A146137.P12068890491082061639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259175 (((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 3) 3 : ℕ) : ℤ) + ((1 - (n : ℤ)) ^ 2 + (n : ℤ))).toNat

end

end A146137.P12068890491082061639

/-! ## A146137.P1570492780499364244

`A076714(A177724(n+2)+1)`
-/

namespace A146137.P1570492780499364244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076714 (A177724 (n + 2) + 1).toNat

end

end A146137.P1570492780499364244

/-! ## A146137.P8746194155507661853

`A133928(A116018(n+1)-n)`
-/

namespace A146137.P8746194155507661853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133928 (A116018 (n + 1) - (n : ℤ)).toNat

end

end A146137.P8746194155507661853

/-! ## A146137.P7430165134938871852

`A000961(A026703(C(n, floor(n/2)))²)`
-/

namespace A146137.P7430165134938871852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A026703 (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat) ^ 2).toNat

end

end A146137.P7430165134938871852

/-!
# A146138: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 5-point barb 1,1 1,2 2,2 2,3 3,2 in any orientation.

The programs for A146138, there is no canonical definition to state claims against.
-/

/-! ## A146138.P1554694570479754415

`A146136(gcd(A003418(n), A004526(n)))`
-/

namespace A146138.P1554694570479754415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146136 (Int.gcd (A003418 n) (A004526 n))

end

end A146138.P1554694570479754415

/-! ## A146138.P4991467016280590853

`A306584(A146250(n+1)²)`
-/

namespace A146138.P4991467016280590853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306584 (A146250 (n + 1) ^ 2).toNat

end

end A146138.P4991467016280590853

/-! ## A146138.P3809175955311020572

`or(1, A331965(A146149(n+1)))`
-/

namespace A146138.P3809175955311020572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A331965 (A146149 (n + 1)).toNat)

end

end A146138.P3809175955311020572

/-! ## A146138.P11625412873970856104

`∑{d}[A146149(n+1), A331965(#)]`
-/

namespace A146138.P11625412873970856104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A331965 d

end

end A146138.P11625412873970856104

/-!
# A146139: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 5-point barb 1,1 1,2 2,2 2,3 3,2 in any orientation.

The programs for A146139, there is no canonical definition to state claims against.
-/

/-! ## A146139.P4783480048545341753

`A146141(2*(n+2))`
-/

namespace A146139.P4783480048545341753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146141 (2 * (n + 2))

end

end A146139.P4783480048545341753

/-! ## A146139.P5649944122292759202

`or(1, A146141(A133012(n+1)))`
-/

namespace A146139.P5649944122292759202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146141 (A133012 (n + 1)).toNat)

end

end A146139.P5649944122292759202

/-! ## A146139.P17400809294939354595

`A178798(n)+A146141(A133012(n+1))`
-/

namespace A146139.P17400809294939354595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A146141 (A133012 (n + 1)).toNat

end

end A146139.P17400809294939354595

/-! ## A146139.P4769455846787522753

`A185044(n)+A146141(A133012(n+1))`
-/

namespace A146139.P4769455846787522753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n + A146141 (A133012 (n + 1)).toNat

end

end A146139.P4769455846787522753

/-! ## A146139.P2645777406635552831

`A146141(A133012(n+1))%A030192(n+1)`
-/

namespace A146139.P2645777406635552831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146141 (A133012 (n + 1)).toNat) (A030192 (n + 1))

end

end A146139.P2645777406635552831

/-!
# A146140: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 5-point barb 1,1 1,2 2,2 2,3 3,2 in any orientation.

The programs for A146140, there is no canonical definition to state claims against.
-/

/-! ## A146140.P13606872417915008760

`A321901(A185030(n))`
-/

namespace A146140.P13606872417915008760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321901 (A185030 n).toNat

end

end A146140.P13606872417915008760

/-! ## A146140.P16308798351077790615

`A129801(A146419(n+1))`
-/

namespace A146140.P16308798351077790615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129801 (A146419 (n + 1)).toNat

end

end A146140.P16308798351077790615

/-! ## A146140.P13189035403367852812

`A161329(A146457(n+1))`
-/

namespace A146140.P13189035403367852812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161329 (A146457 (n + 1)).toNat

end

end A146140.P13189035403367852812

/-! ## A146140.P7388952402727395177

`A181840(A146624(n+1))`
-/

namespace A146140.P7388952402727395177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181840 (A146624 (n + 1)).toNat

end

end A146140.P7388952402727395177

/-! ## A146140.P12150466345259893423

`A276883(A146904(n+1))`
-/

namespace A146140.P12150466345259893423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276883 (A146904 (n + 1)).toNat

end

end A146140.P12150466345259893423

/-!
# A146141: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 5-point barb 1,1 1,2 2,2 2,3 3,2 in any orientation.

The programs for A146141, there is no canonical definition to state claims against.
-/

/-! ## A146141.P17239928929231144535

`A102513(A146132(n+1))`
-/

namespace A146141.P17239928929231144535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102513 (A146132 (n + 1)).toNat

end

end A146141.P17239928929231144535

/-! ## A146141.P17685882532602023607

`A336366(A146474(n+1))`
-/

namespace A146141.P17685882532602023607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336366 (A146474 (n + 1)).toNat

end

end A146141.P17685882532602023607

/-!
# A146142: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 5-point barb 1,1 1,2 2,2 2,3 3,2 in any orientation.

The programs for A146142, there is no canonical definition to state claims against.
-/

/-! ## A146142.P16581756652911336980

`A335663(A000322(n)+1)`
-/

namespace A146142.P16581756652911336980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335663 (A000322 n + 1).toNat

end

end A146142.P16581756652911336980

/-! ## A146142.P14960011717401638800

`A335663(xor(3, A000322(n)))`
-/

namespace A146142.P14960011717401638800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335663 (Int.xor 3 (A000322 n)).toNat

end

end A146142.P14960011717401638800

/-! ## A146142.P7404571736554134384

`A066657(A096647(n)+A000930(n))`
-/

namespace A146142.P7404571736554134384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (A096647 n + A000930 n).toNat

end

end A146142.P7404571736554134384

/-! ## A146142.P252414925589560448

`A054531(xor(A292786(n+1), A341071(n)))`
-/

namespace A146142.P252414925589560448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (Int.xor (A292786 (n + 1)) (A341071 n)).toNat

end

end A146142.P252414925589560448

/-!
# A146143: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 5-point barb 1,1 1,2 2,2 2,3 3,2 in any orientation.

The programs for A146143, there is no canonical definition to state claims against.
-/

/-! ## A146143.P17319264559015445409

`lcm(2, A286554(A053529(n)))/2`
-/

namespace A146143.P17319264559015445409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A286554 (A053529 n).toNat) : ℚ) / 2

end

end A146143.P17319264559015445409

/-! ## A146143.P6840400686640135427

`A286554(lcm(2-n, A053529(n)))`
-/

namespace A146143.P6840400686640135427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286554 (Int.lcm (2 - (n : ℤ)) (A053529 n))

end

end A146143.P6840400686640135427

/-! ## A146143.P10457721826345798539

`A286554(A130779(n)+A053529(n))`
-/

namespace A146143.P10457721826345798539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286554 (A130779 n + A053529 n).toNat

end

end A146143.P10457721826345798539

/-!
# A146144: Number of n X n binary arrays with all ones connected only in an em 1,1 1,2 2,2 2,3 3,3 in any orientation.

The programs for A146144, there is no canonical definition to state claims against.
-/

/-! ## A146144.P1514801286038195914

`A146146(2*(n+2))`
-/

namespace A146144.P1514801286038195914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146146 (2 * (n + 2))

end

end A146144.P1514801286038195914

/-! ## A146144.P16791854308606285146

`or(1, A146146(A160217(n+1)))`
-/

namespace A146144.P16791854308606285146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146146 (A160217 (n + 1)).toNat)

end

end A146144.P16791854308606285146

/-! ## A146144.P6524987909965950133

`A146146(A160217(n+1))^A227690(n)`
-/

namespace A146144.P6524987909965950133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146146 (A160217 (n + 1)).toNat : ℚ) ^ (A227690 n : ℤ)

end

end A146144.P6524987909965950133

/-! ## A146144.P394580821137589876

`A146146(A160217(n+1))%A160193(n+2)`
-/

namespace A146144.P394580821137589876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146146 (A160217 (n + 1)).toNat) (A160193 (n + 2))

end

end A146144.P394580821137589876

/-! ## A146144.P13240012274753656579

`A146146(A160217(n+1))%A000615(n)`
-/

namespace A146144.P13240012274753656579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146146 (A160217 (n + 1)).toNat) (A000615 n)

end

end A146144.P13240012274753656579

/-!
# A146145: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in an em 1,1 1,2 2,2 2,3 3,3 in any orientation.

The programs for A146145, there is no canonical definition to state claims against.
-/

/-! ## A146145.P12291277132945548024

`A284254(A150201(n))`
-/

namespace A146145.P12291277132945548024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (A150201 n).toNat

end

end A146145.P12291277132945548024

/-! ## A146145.P7748359006128664856

`A384226(A149064(n))`
-/

namespace A146145.P7748359006128664856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384226 (A149064 n).toNat

end

end A146145.P7748359006128664856

/-! ## A146145.P13887035431142362623

`A054576(A020092(n)+1)`
-/

namespace A146145.P13887035431142362623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A020092 n + 1).toNat

end

end A146145.P13887035431142362623

/-! ## A146145.P16987314982929235342

`A054576(A020047(n)+2)`
-/

namespace A146145.P16987314982929235342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A020047 n + 2).toNat

end

end A146145.P16987314982929235342

/-!
# A146146: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in an em 1,1 1,2 2,2 2,3 3,3 in any orientation.

The programs for A146146, there is no canonical definition to state claims against.
-/

/-! ## A146146.P10516301441614435266

`A146144(∏{e}[A016116(n), #])`
-/

namespace A146146.P10516301441614435266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146144 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A146146.P10516301441614435266

/-! ## A146146.P9828953521143486987

`A146144(A065033(abs(1-n)))`
-/

namespace A146146.P9828953521143486987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146144 (A065033 |1 - (n : ℤ)|.toNat).toNat

end

end A146146.P9828953521143486987

/-! ## A146146.P1461977276095359941

`A146144(A028310(floor(n/2)))`
-/

namespace A146146.P1461977276095359941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146144 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146146.P1461977276095359941

/-! ## A146146.P6550053948428684431

`A146144(A233583(n+1)-A065033(n))`
-/

namespace A146146.P6550053948428684431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146144 (A233583 (n + 1) - A065033 n).toNat

end

end A146146.P6550053948428684431

/-! ## A146146.P10296974502185379298

`A302597(A325859(n))`
-/

namespace A146146.P10296974502185379298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302597 (A325859 n).toNat

end

end A146146.P10296974502185379298

/-!
# A146147: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in an em 1,1 1,2 2,2 2,3 3,3 in any orientation.

The programs for A146147, there is no canonical definition to state claims against.
-/

/-! ## A146147.P13392495457010934330

`A146149(2*(n+2))`
-/

namespace A146147.P13392495457010934330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146149 (2 * (n + 2))

end

end A146147.P13392495457010934330

/-! ## A146147.P7438858211618431813

`A022998(A146149(∏{digits}[n, #]+∑{digits}[n, #]+3))`
-/

namespace A146147.P7438858211618431813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A146149 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 3)).toNat

end

end A146147.P7438858211618431813

/-! ## A146147.P10702127595605687281

`A165705(A199409(n))`
-/

namespace A146147.P10702127595605687281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165705 (A199409 n).toNat

end

end A146147.P10702127595605687281

/-!
# A146149: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in an em 1,1 1,2 2,2 2,3 3,3 in any orientation.

The programs for A146149, there is no canonical definition to state claims against.
-/

/-! ## A146149.P13954699583532463065

`A146147(A028310(floor(n/2)))`
-/

namespace A146149.P13954699583532463065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146147 (A028310 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A146149.P13954699583532463065

/-! ## A146149.P17980684892366505286

`A146147(A123108(char[1]+n))`
-/

namespace A146149.P17980684892366505286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146147 (A123108 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A146149.P17980684892366505286

/-! ## A146149.P4082441252299062341

`A146147(xor(char[1], A123108(n)))`
-/

namespace A146149.P4082441252299062341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146147 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A123108 n)).toNat

end

end A146149.P4082441252299062341

/-! ## A146149.P11785922917771588113

`A146147(∑[char[A163300(n+1)]])`
-/

namespace A146149.P11785922917771588113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146147 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146149.P11785922917771588113

/-! ## A146149.P10200131054050516874

`A146147(gcd(2*n-A007494(n), n!))`
-/

namespace A146149.P10200131054050516874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146147 (Int.gcd ((2 * n : ℤ) - A007494 n) (Nat.factorial n : ℤ))

end

end A146149.P10200131054050516874

/-!
# A146150: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in an em 1,1 1,2 2,2 2,3 3,3 in any orientation.

The programs for A146150, there is no canonical definition to state claims against.
-/

/-! ## A146150.P13395899351179891153

`A000119(C(ceil((n%4+n²)/4), 6))`
-/

namespace A146150.P13395899351179891153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (Nat.choose ⌈((n % 4 + n ^ 2 : ℕ) : ℚ) / 4⌉.toNat 6)

end

end A146150.P13395899351179891153

/-! ## A146150.P15380779390475272529

`A023135(A052800(n)+1)`
-/

namespace A146150.P15380779390475272529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023135 (A052800 n + 1).toNat

end

end A146150.P15380779390475272529

/-! ## A146150.P10856180871508927549

`A070201(A242511(n))+1`
-/

namespace A146150.P10856180871508927549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (A242511 n).toNat + 1

end

end A146150.P10856180871508927549

/-! ## A146150.P12272255096792660612

`A274773(A148146(n+1))`
-/

namespace A146150.P12272255096792660612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274773 (A148146 (n + 1)).toNat

end

end A146150.P12272255096792660612

/-! ## A146150.P17693179120348745199

`filter[A147191(n+2), A143222(#)]`
-/

namespace A146150.P17693179120348745199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143222 (f1 j).toNat = 1) n)

end

end A146150.P17693179120348745199

/-!
# A146151: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in an em 1,1 1,2 2,2 2,3 3,3 in any orientation.

The programs for A146151, there is no canonical definition to state claims against.
-/

/-! ## A146151.P2467372458575752872

`A008624(A177483(n)+A026645(n))`
-/

namespace A146151.P2467372458575752872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A177483 n + A026645 n).toNat

end

end A146151.P2467372458575752872

/-! ## A146151.P9719790562963139357

`A225545(A065033(n)*A268688(n))`
-/

namespace A146151.P9719790562963139357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A065033 n * A268688 n).toNat

end

end A146151.P9719790562963139357

/-! ## A146151.P10168343999868360147

`A283726(n+1)+A073757(A001710(n))`
-/

namespace A146151.P10168343999868360147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (n + 1) + A073757 (A001710 n).toNat

end

end A146151.P10168343999868360147

/-! ## A146151.P3949002879204763081

`A225545(A008624(2*n+1)*A268688(n))`
-/

namespace A146151.P3949002879204763081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A008624 (2 * n + 1) * A268688 n).toNat

end

end A146151.P3949002879204763081

/-!
# A146152: Number of n X n binary arrays with all ones connected only either as two by three or three by two blocks.

The programs for A146152, there is no canonical definition to state claims against.
-/

/-! ## A146152.P8233298620619731642

`or(1, A325682(n^ceil(atan(n))))`
-/

namespace A146152.P8233298620619731642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325682 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat)

end

end A146152.P8233298620619731642

/-! ## A146152.P15672255058958335396

`or(1, A325682(A253909(n)))`
-/

namespace A146152.P15672255058958335396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325682 (A253909 n).toNat)

end

end A146152.P15672255058958335396

/-!
# A146154: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only either as two by three or three by two blocks.

The programs for A146154, there is no canonical definition to state claims against.
-/

/-! ## A146154.P12845638896974701001

`A140193(A059502(n)+1)`
-/

namespace A146154.P12845638896974701001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140193 (A059502 n + 1).toNat

end

end A146154.P12845638896974701001

/-! ## A146154.P9088563175581688754

`A309932(A148115(n+1))`
-/

namespace A146154.P9088563175581688754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309932 (A148115 (n + 1)).toNat

end

end A146154.P9088563175581688754

/-! ## A146154.P6689174474648544822

`A246832(A316987(n)^4)`
-/

namespace A146154.P6689174474648544822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246832 (A316987 n ^ 4).toNat

end

end A146154.P6689174474648544822

/-! ## A146154.P2831294281190769205

`A246832(A316987(n)²²)`
-/

namespace A146154.P2831294281190769205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246832 ((A316987 n ^ 2) ^ 2).toNat

end

end A146154.P2831294281190769205

/-! ## A146154.P16577021241120181065

`ceil(A002260(A024493(n)²+1)/2)`
-/

namespace A146154.P16577021241120181065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002260 (A024493 n ^ 2 + 1).toNat : ℚ) / 2⌉

end

end A146154.P16577021241120181065

/-!
# A146155: Number of n X n binary arrays symmetric about main diagonal with all ones connected only either as two by three or three by two blocks.

The programs for A146155, there is no canonical definition to state claims against.
-/

/-! ## A146155.P10722695857818920572

`A127289(A081156(n)-A002620(n))`
-/

namespace A146155.P10722695857818920572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A081156 n - A002620 n).toNat

end

end A146155.P10722695857818920572

/-! ## A146155.P3259047420471811332

`A226080(A007097(n))+A154257(n+1)`
-/

namespace A146155.P3259047420471811332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226080 (A007097 n).toNat + A154257 (n + 1)

end

end A146155.P3259047420471811332

/-! ## A146155.P1073640461189235261

`xor(A034886(n), A059995(A306422(n+1)))`
-/

namespace A146155.P1073640461189235261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034886 n) (A059995 (A306422 (n + 1)).toNat)

end

end A146155.P1073640461189235261

/-!
# A146156: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only either as two by three or three by two blocks.

The programs for A146156, there is no canonical definition to state claims against.
-/

/-! ## A146156.P613748194934940414

`A387584(A146220(n+1))`
-/

namespace A146156.P613748194934940414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387584 (A146220 (n + 1)).toNat

end

end A146156.P613748194934940414

/-! ## A146156.P13666783233675903028

`A057475(A095022(n+1)%A242790(n+1)+1)`
-/

namespace A146156.P13666783233675903028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057475 (Int.tmod (A095022 (n + 1)) (A242790 (n + 1)) + 1).toNat

end

end A146156.P13666783233675903028

/-!
# A146158: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only either as two by three or three by two blocks.

The programs for A146158, there is no canonical definition to state claims against.
-/

/-! ## A146158.P17405658531285621094

`A089864(A351754(n+1))`
-/

namespace A146158.P17405658531285621094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A351754 (n + 1)).toNat

end

end A146158.P17405658531285621094

/-! ## A146158.P716531030683707891

`A089864(∑{d}[A264656(n+1), #])`
-/

namespace A146158.P716531030683707891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A146158.P716531030683707891

/-!
# A146159: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only either as two by three or three by two blocks.

The programs for A146159, there is no canonical definition to state claims against.
-/

/-! ## A146159.P17928543986077502950

`A062298(A245900(n+1)-A063084(n+1))`
-/

namespace A146159.P17928543986077502950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A245900 (n + 1) - A063084 (n + 1)).toNat

end

end A146159.P17928543986077502950

/-!
# A146160: Period 4: repeat [1, 4, 1, 16].

The programs for A146160, the canonical program `A146160.P4969135159180931567` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146160 has offset 1).

The definition of A146160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146160.P4745030383971887516

`A010156(n+1)`
-/

namespace A146160.P4745030383971887516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (n + 1)

end

end A146160.P4745030383971887516

namespace A146160

/-- `A010156(n+1)` -/
def P4745030383971887516.Spec : Prop :=
  ∀ n, P4745030383971887516.a n = A146160 (n + 1)

end A146160

/-! ## A146160.P4969135159180931567

`gcd(4, n+1)²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A146160

/-- `gcd(4, n+1)²` -/
def P4969135159180931567.Spec : Prop :=
  ∀ n, (P4969135159180931567.a n : ℤ) = A146160 (n + 1)

theorem P4969135159180931567.correct : P4969135159180931567.Spec := by
  intro n
  simp only [A146160, Nat.add_sub_cancel]

end A146160

/-!
# A146161: a(n) is the number of n X n matrices with entries in {1,2,3} such that all adjacent entries (in the same row or column) differ by 1 or -1.

The programs for A146161, there is no canonical definition to state claims against.
-/

/-! ## A146161.P11464474585478430189

`4^n*a(n-2)` with `a(0)=3, a(1)=8`
-/

namespace A146161.P11464474585478430189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  4 ^ n * a (n - 2)

end

end A146161.P11464474585478430189

/-! ## A146161.P4336573418444648027

`a(n-2)/(1/4)^n` with `a(0)=3, a(1)=8`
-/

namespace A146161.P4336573418444648027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 2) / ((1 : ℚ) / 4) ^ n

end

end A146161.P4336573418444648027

/-! ## A146161.P10494479005747299616

`A063759((n+1)²)`
-/

namespace A146161.P10494479005747299616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 ((n + 1) ^ 2)

end

end A146161.P10494479005747299616

/-! ## A146161.P14571150126776870316

`A163978((n+1)²)`
-/

namespace A146161.P14571150126776870316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 ((n + 1) ^ 2)

end

end A146161.P14571150126776870316

/-! ## A146161.P2825067969437298211

`abs(A134142((n+1)²))`
-/

namespace A146161.P2825067969437298211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134142 ((n + 1) ^ 2)|

end

end A146161.P2825067969437298211

/-!
# A146162: Expansion of eta(q^2)^2 * eta(q^5) / (eta(q) * eta(q^4)^2) in powers of q.

The programs for A146162, there is no canonical definition to state claims against.
-/

/-! ## A146162.P2401538024228294999

`abs(A147702(n))`
-/

namespace A146162.P2401538024228294999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147702 n|

end

end A146162.P2401538024228294999

/-! ## A146162.P5965683318065723724

`A033999(n)*A147702(n)`
-/

namespace A146162.P5965683318065723724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A147702 n

end

end A146162.P5965683318065723724

/-! ## A146162.P12346611242299109721

`gcd(A000038(n), A147702(n))`
-/

namespace A146162.P12346611242299109721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A147702 n)

end

end A146162.P12346611242299109721

/-! ## A146162.P18198883924864971894

`lcm(A147702(n), A154990(n+1))`
-/

namespace A146162.P18198883924864971894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A147702 n) (A154990 (n + 1))

end

end A146162.P18198883924864971894

/-! ## A146162.P15037560450198173219

`A036026(n)/A116494(n)*A147702(n)`
-/

namespace A146162.P15037560450198173219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036026 n : ℚ) / (A116494 n : ℚ) * (A147702 n : ℚ)

end

end A146162.P15037560450198173219

/-! ## A146162.P14733436051504992782

`A147702(n)/A033999(n+2)`
-/

namespace A146162.P14733436051504992782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147702 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A146162.P14733436051504992782

/-! ## A146162.P3224358670287595261

`lcm(A006466(n²), A147702(n))`
-/

namespace A146162.P3224358670287595261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 (n ^ 2)) (A147702 n)

end

end A146162.P3224358670287595261

/-! ## A146162.P13036941142025357647

`∑{d}[A147702(n), A000010(#)]`
-/

namespace A146162.P13036941142025357647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A146162.P13036941142025357647

/-!
# A146163: Expansion of q^(-3/4) * eta(q^2)^2 * eta(q^20) / (eta(q)^2 * eta(q^4)) in powers of q.

The programs for A146163, there is no canonical definition to state claims against.
-/

/-! ## A146163.P17265912022931615832

`A146162(4*n+3)`
-/

namespace A146163.P17265912022931615832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146162 (4 * n + 3)

end

end A146163.P17265912022931615832

/-! ## A146163.P10834404083237549888

`A036026(Δ[n²])`
-/

namespace A146163.P10834404083237549888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036026 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A146163.P10834404083237549888

/-! ## A146163.P1790450207578756292

`record[-A116494(n+1)]`
-/

namespace A146163.P1790450207578756292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A116494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146163.P1790450207578756292

/-! ## A146163.P4740148195201953440

`abs(A116494(2*n+1))`
-/

namespace A146163.P4740148195201953440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116494 (2 * n + 1)|

end

end A146163.P4740148195201953440

/-! ## A146163.P14913728249398783558

`gcd(A000038(n), A116494(2*n+1))`
-/

namespace A146163.P14913728249398783558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A116494 (2 * n + 1))

end

end A146163.P14913728249398783558

/-! ## A146163.P18105916190263059304

`lcm(A020985(n), A116494(2*n+1))`
-/

namespace A146163.P18105916190263059304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A116494 (2 * n + 1))

end

end A146163.P18105916190263059304

/-! ## A146163.P17703063829312186794

`A000007(n+1)-A116494(2*n+1)`
-/

namespace A146163.P17703063829312186794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A116494 (2 * n + 1)

end

end A146163.P17703063829312186794

/-! ## A146163.P16372568826654689288

`A000038(n+1)-A116494(2*n+1)`
-/

namespace A146163.P16372568826654689288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A116494 (2 * n + 1)

end

end A146163.P16372568826654689288

/-! ## A146163.P15438580344406937362

`1-(A116494(2*n+1)+A033999(2*n))`
-/

namespace A146163.P15438580344406937362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A116494 (2 * n + 1) + A033999 (2 * n))

end

end A146163.P15438580344406937362

/-! ## A146163.P337646147242201936

`A033999(2*n+1)*A116494(2*n+1)`
-/

namespace A146163.P337646147242201936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A116494 (2 * n + 1)

end

end A146163.P337646147242201936

/-! ## A146163.P11526480350133706183

`lcm(A057077(n), A116494(A005408(n)))`
-/

namespace A146163.P11526480350133706183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A116494 (A005408 n).toNat)

end

end A146163.P11526480350133706183

/-! ## A146163.P1903387598383706158

`A057077(2*n+1)-(A116494(2*n+1)+A057077(2*n))`
-/

namespace A146163.P1903387598383706158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n + 1) - (A116494 (2 * n + 1) + A057077 (2 * n))

end

end A146163.P1903387598383706158

/-! ## A146163.P716456937673046072

`A020985(2*n)-(A116494(2*n+1)+A020985(4*n))`
-/

namespace A146163.P716456937673046072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n) - (A116494 (2 * n + 1) + A020985 (4 * n))

end

end A146163.P716456937673046072

/-! ## A146163.P17600296755543389984

`A057077(A005408(2*n+1))*A116494(2*n+1)`
-/

namespace A146163.P17600296755543389984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A005408 (2 * n + 1)).toNat * A116494 (2 * n + 1)

end

end A146163.P17600296755543389984

/-! ## A146163.P2591160055316971809

`abs(A138532(10*n+8))`
-/

namespace A146163.P2591160055316971809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138532 (10 * n + 8)|

end

end A146163.P2591160055316971809

/-! ## A146163.P10964105126697769572

`record[gcd(A138532(2*n), A138532(n))]`
-/

namespace A146163.P10964105126697769572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138532 (2 * n)) (A138532 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A146163.P10964105126697769572

/-!
# A146164: Expansion of f(-x^4) * chi(x^5) / f(-x^5) in powers of x where f(), chi() are Ramanujan theta functions.

The programs for A146164, there is no canonical definition to state claims against.
-/

/-! ## A146164.P3817171596879750722

`A138532(2*n)`
-/

namespace A146164.P3817171596879750722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (2 * n)

end

end A146164.P3817171596879750722

/-! ## A146164.P11343257588757010219

`A145708(2*n)`
-/

namespace A146164.P11343257588757010219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145708 (2 * n)

end

end A146164.P11343257588757010219

/-! ## A146164.P11198234770838871305

`and(-1, A145708(A005843(n)))`
-/

namespace A146164.P11198234770838871305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A145708 (A005843 n).toNat)

end

end A146164.P11198234770838871305

/-! ## A146164.P4021822623622960354

`A138532(n+n)+A000122(A000040(n+1))`
-/

namespace A146164.P4021822623622960354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (n + n) + A000122 (A000040 (n + 1)).toNat

end

end A146164.P4021822623622960354

/-! ## A146164.P943681876931998572

`A138532(A005843(n))%A107953(n)`
-/

namespace A146164.P943681876931998572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138532 (A005843 n).toNat) (A107953 n)

end

end A146164.P943681876931998572

/-!
# A146167: Number of odd squarefree semiprimes (A046388) <= n.

The programs for A146167, there is no canonical definition to state claims against.
-/

/-! ## A146167.P14890237382634377812

`∑[char[∏{p}[2*n+3, -#]-1]]`
-/

namespace A146167.P14890237382634377812
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (-(p : ℤ)) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146167.P14890237382634377812

/-! ## A146167.P17926014175534922676

`∑[∑{e}[∑{e}[n+1, and(#, (n+1)²)], #]]`
-/

namespace A146167.P17926014175534922676
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.land (Nat.factorization (f3 n) p) ((n + 1) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146167.P17926014175534922676

/-! ## A146167.P10223862854386469700

`∑[(∑{e}[n+1, #]!/∏{e}[n+1, #!]-1)%gcd(2, n)]`
-/

namespace A146167.P10223862854386469700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ) - 1)) (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146167.P10223862854386469700

/-! ## A146167.P1641308747730792902

`∑[C(val(∑{e}[n+1, #²]+n+1, n+3), 3^(n%2))]`
-/

namespace A146167.P1641308747730792902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2 + (n + 1)) (n + 3)) (3 ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146167.P1641308747730792902

/-! ## A146167.P580109376285197836

`∑[xor(n, n+1)%3*val(∑{e}[n+1, #²]+n+1, n+3)]`
-/

namespace A146167.P580109376285197836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) % 3 * SequenceMachineLib.valuation (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2 + (n + 1)) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146167.P580109376285197836

/-! ## A146167.P1440602762166210910

`∑[A353481(n+1)]`
-/

namespace A146167.P1440602762166210910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146167.P1440602762166210910

/-! ## A146167.P12158470459028688515

`A302643(or(1, n+2))`
-/

namespace A146167.P12158470459028688515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (Nat.lor 1 (n + 2))

end

end A146167.P12158470459028688515

/-! ## A146167.P9755151101564916905

`∑[A359465(n+1)]-1`
-/

namespace A146167.P9755151101564916905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A146167.P9755151101564916905

/-! ## A146167.P5144998028432868679

`∑[A354926(2*(n+1))]`
-/

namespace A146167.P5144998028432868679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354926 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146167.P5144998028432868679

/-! ## A146167.P14894225176508775786

`∑[A339661(4*(n+1))]`
-/

namespace A146167.P14894225176508775786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339661 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A146167.P14894225176508775786

/-!
# A146168: Number of odd squarefree semiprimes (A046388) < 2^n.

The programs for A146168, there is no canonical definition to state claims against.
-/

/-! ## A146168.P2572079171683664297

`A302643(2^(n+1)+1)`
-/

namespace A146168.P2572079171683664297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302643 (2 ^ (n + 1) + 1)

end

end A146168.P2572079171683664297

/-! ## A146168.P6105165537252015661

`A057427(n)*A302643(A048578(n))`
-/

namespace A146168.P6105165537252015661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A302643 (A048578 n).toNat

end

end A146168.P6105165537252015661

/-! ## A146168.P11879568807633298337

`A052146(A019497(n)*A346734(n))`
-/

namespace A146168.P11879568807633298337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A019497 n * A346734 n).toNat

end

end A146168.P11879568807633298337

/-! ## A146168.P5484769263350936664

`A002024(A123071(n))-A047201(n+1)`
-/

namespace A146168.P5484769263350936664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A123071 n).toNat - A047201 (n + 1)

end

end A146168.P5484769263350936664

/-!
# A146169: Percentage (rounded) of semiprimes <= 2^n which are odd and squarefree.

The programs for A146169, there is no canonical definition to state claims against.
-/

/-! ## A146169.P3773313506564430547

`round(A146168(n+2)/A125527(n+2)*100)`
-/

namespace A146169.P3773313506564430547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A146168 (n + 2) : ℚ) / (A125527 (n + 2) : ℚ) * 100)

end

end A146169.P3773313506564430547

/-!
# A146170: Percentage (rounded) of odd numbers < 2^n which are primes or squarefree semiprimes.

The programs for A146170, there is no canonical definition to state claims against.
-/

/-! ## A146170.P15771287166551394704

`round((A146168(n+1)+A007053(n+1)-1)/2^n*100)`
-/

namespace A146170.P15771287166551394704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A146168 (n + 1) + A007053 (n + 1) - 1 : ℚ) / (2 ^ n : ℚ) * 100)

end

end A146170.P15771287166551394704

/-!
# A146171: Number of n X n binary arrays with all ones connected only in a 110-100-111 pattern in any orientation.

The programs for A146171, there is no canonical definition to state claims against.
-/

/-! ## A146171.P10948975328159034409

`A146173(2*(n+2))`
-/

namespace A146171.P10948975328159034409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146173 (2 * (n + 2))

end

end A146171.P10948975328159034409

/-! ## A146171.P13629385308678402767

`A146173(A080147(n+1))^A199523(n+1)`
-/

namespace A146171.P13629385308678402767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146173 (A080147 (n + 1)).toNat : ℚ) ^ (A199523 (n + 1) : ℤ)

end

end A146171.P13629385308678402767

/-!
# A146172: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 110-100-111 pattern in any orientation.

The programs for A146172, there is no canonical definition to state claims against.
-/

/-! ## A146172.P11330118432587860740

`A146189(a(n-2)+n)` with `a(0)=1, a(1)=1`
-/

namespace A146172.P11330118432587860740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A146189 (a (n - 2) + (n : ℤ)).toNat

end

end A146172.P11330118432587860740

/-! ## A146172.P6678984134006417057

`A146189(A000005(5^n))`
-/

namespace A146172.P6678984134006417057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146189 (A000005 (5 ^ n)).toNat

end

end A146172.P6678984134006417057

/-! ## A146172.P11797448021851366638

`A146189(∑[A146017(n+1)])`
-/

namespace A146172.P11797448021851366638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146172.P11797448021851366638

/-! ## A146172.P15659665609362898345

`A146189(∑[A146040(n+1)])`
-/

namespace A146172.P15659665609362898345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146172.P15659665609362898345

/-!
# A146173: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 110-100-111 pattern in any orientation.

The programs for A146173, there is no canonical definition to state claims against.
-/

/-! ## A146173.P279390955597501958

`A146171(∏{e}[2^floor(n/2), #])`
-/

namespace A146173.P279390955597501958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146171 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A146173.P279390955597501958

/-! ## A146173.P10058241069323889765

`A146171(gcd(n!, ceil(abs((1-n)/2))))`
-/

namespace A146173.P10058241069323889765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146171 (Int.gcd (Nat.factorial n : ℤ) ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉)

end

end A146173.P10058241069323889765

/-! ## A146173.P569747914922003406

`A146190(∑[A061906(n)])`
-/

namespace A146173.P569747914922003406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A146173.P569747914922003406

/-!
# A146174: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 110-100-111 pattern in any orientation.

The programs for A146174, there is no canonical definition to state claims against.
-/

/-! ## A146174.P10465862173907330890

`A146176(2*(n+2))`
-/

namespace A146174.P10465862173907330890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146176 (2 * (n + 2))

end

end A146174.P10465862173907330890

/-! ## A146174.P4114792570601479168

`or(1, A146176(A005408(n+1)))`
-/

namespace A146174.P4114792570601479168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146176 (A005408 (n + 1)).toNat)

end

end A146174.P4114792570601479168

/-! ## A146174.P6724515316047140492

`or(1, A146176(A182318(n+1)))`
-/

namespace A146174.P6724515316047140492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146176 (A182318 (n + 1)).toNat)

end

end A146174.P6724515316047140492

/-! ## A146174.P3239778743367085329

`A146176(A005408(n+1))%A175163(n)`
-/

namespace A146174.P3239778743367085329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146176 (A005408 (n + 1)).toNat) (A175163 n)

end

end A146174.P3239778743367085329

/-! ## A146174.P17780281242555014845

`A146176(A182318(n+1))%A010904(n)`
-/

namespace A146174.P17780281242555014845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146176 (A182318 (n + 1)).toNat) (A010904 n)

end

end A146174.P17780281242555014845

/-!
# A146175: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 110-100-111 pattern in any orientation.

The programs for A146175, there is no canonical definition to state claims against.
-/

/-! ## A146175.P12424184709519307280

`A156070(∑[lt[2^val(n+1, 2), 6]])`
-/

namespace A146175.P12424184709519307280
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A146175.P12424184709519307280

/-! ## A146175.P9861833577175702613

`A156070(A047800(n))`
-/

namespace A146175.P9861833577175702613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A047800 n).toNat

end

end A146175.P9861833577175702613

/-! ## A146175.P3501534011923199498

`A156070(A115015(n+1))`
-/

namespace A146175.P3501534011923199498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A115015 (n + 1)).toNat

end

end A146175.P3501534011923199498

/-! ## A146175.P12668681203270550858

`A156070(A194082(n+2))`
-/

namespace A146175.P12668681203270550858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A194082 (n + 2)).toNat

end

end A146175.P12668681203270550858

/-!
# A146176: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 110-100-111 pattern in any orientation.

The programs for A146176, there is no canonical definition to state claims against.
-/

/-! ## A146176.P4552609912393694645

`A146174(or(A004526(n), A378454(n+1)))`
-/

namespace A146176.P4552609912393694645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146174 (Int.lor (A004526 n) (A378454 (n + 1))).toNat

end

end A146176.P4552609912393694645

/-! ## A146176.P8894820046743692162

`A146174(A004526(n)+2-A055642(3*(n+1)))`
-/

namespace A146176.P8894820046743692162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146174 (A004526 n + 2 - A055642 (3 * (n + 1))).toNat

end

end A146176.P8894820046743692162

/-! ## A146176.P8968385554769651452

`or(A028422(A146250(n+1)), A146261(n+1))`
-/

namespace A146176.P8968385554769651452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028422 (A146250 (n + 1)).toNat) (A146261 (n + 1))

end

end A146176.P8968385554769651452

/-! ## A146176.P4386179990185495458

`or(A028422(A146261(n+5)), A146261(n+1))`
-/

namespace A146176.P4386179990185495458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028422 (A146261 (n + 5)).toNat) (A146261 (n + 1))

end

end A146176.P4386179990185495458

/-! ## A146176.P2624073044304118572

`A056670(A146274(n+1))`
-/

namespace A146176.P2624073044304118572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056670 (A146274 (n + 1)).toNat

end

end A146176.P2624073044304118572

/-!
# A146177: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 110-100-111 pattern in any orientation.

The programs for A146177, there is no canonical definition to state claims against.
-/

/-! ## A146177.P6564261149550065323

`A347498(A250663(n))`
-/

namespace A146177.P6564261149550065323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347498 (A250663 n).toNat

end

end A146177.P6564261149550065323

/-! ## A146177.P4132750699803543128

`A146194(A032555(n+1))`
-/

namespace A146177.P4132750699803543128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146194 (A032555 (n + 1)).toNat

end

end A146177.P4132750699803543128

/-! ## A146177.P9094799182410570835

`A358024(A024727(n+1))`
-/

namespace A146177.P9094799182410570835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358024 (A024727 (n + 1)).toNat

end

end A146177.P9094799182410570835

/-! ## A146177.P1400460079941694636

`A160085(A216631(n+2))`
-/

namespace A146177.P1400460079941694636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160085 (A216631 (n + 2)).toNat

end

end A146177.P1400460079941694636

/-! ## A146177.P1561650479333596093

`filter[A147137(n+1), A059620(#)]`
-/

namespace A146177.P1561650479333596093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059620 (f1 j).toNat = 1) n)

end

end A146177.P1561650479333596093

/-!
# A146178: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 110-100-111 pattern in any orientation.

The programs for A146178, there is no canonical definition to state claims against.
-/

/-! ## A146178.P2032359898003040605

`A213340(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A146178.P2032359898003040605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A213340 (a (n - 1)).toNat

end

end A146178.P2032359898003040605

/-! ## A146178.P2099802236149221565

`A277688(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=5`
-/

namespace A146178.P2099802236149221565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 5] fun n a =>
  A277688 (a (n - 1)).toNat

end

end A146178.P2099802236149221565

/-! ## A146178.P5297075386637963486

`A001650(C(C(n, 2), n+1)+1)`
-/

namespace A146178.P5297075386637963486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (Nat.choose (Nat.choose n 2) (n + 1) + 1)

end

end A146178.P5297075386637963486

/-!
# A146179: Digit sums of Cullen numbers.

The programs for A146179, the canonical program `A146179.P3940575950661472435` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A146179 has offset 1).

The definition of A146179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A146179.P3940575950661472435

`∑{digits}[n*2^n+1, #]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A146179

/-- `∑{digits}[n*2^n+1, #]` -/
def P3940575950661472435.Spec : Prop :=
  ∀ n, (P3940575950661472435.a n : ℤ) = A146179 (n + 1)

theorem P3940575950661472435.correct : P3940575950661472435.Spec := by
  intro n
  simp only [A146179, Nat.add_sub_cancel]

end A146179

/-! ## A146179.P730853555300944395

`∑{digits}[A036289(n), #]+1`
-/

namespace A146179.P730853555300944395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A146179.P730853555300944395

namespace A146179

/-- `∑{digits}[A036289(n), #]+1` -/
def P730853555300944395.Spec : Prop :=
  ∀ n, (P730853555300944395.a n : ℤ) = A146179 (n + 1)

end A146179

/-! ## A146179.P13893548275937595179

`∑{digits}[2*A001787(n), #]+1`
-/

namespace A146179.P13893548275937595179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A146179.P13893548275937595179

namespace A146179

/-- `∑{digits}[2*A001787(n), #]+1` -/
def P13893548275937595179.Spec : Prop :=
  ∀ n, (P13893548275937595179.a n : ℤ) = A146179 (n + 1)

end A146179

/-! ## A146179.P16998472625662952724

`∑{digits}[n*A000079(n), #]+1`
-/

namespace A146179.P16998472625662952724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A146179.P16998472625662952724

namespace A146179

/-- `∑{digits}[n*A000079(n), #]+1` -/
def P16998472625662952724.Spec : Prop :=
  ∀ n, (P16998472625662952724.a n : ℤ) = A146179 (n + 1)

end A146179

/-! ## A146179.P8259142917303625866

`∑{digits}[n*Δ[A000225(n)], #]+1`
-/

namespace A146179.P8259142917303625866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A146179.P8259142917303625866

namespace A146179

/-- `∑{digits}[n*Δ[A000225(n)], #]+1` -/
def P8259142917303625866.Spec : Prop :=
  ∀ n, (P8259142917303625866.a n : ℤ) = A146179 (n + 1)

end A146179

/-! ## A146179.P9922039506003462545

`∑{digits}[n*A011782(n+1), #]+1`
-/

namespace A146179.P9922039506003462545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A146179.P9922039506003462545

namespace A146179

/-- `∑{digits}[n*A011782(n+1), #]+1` -/
def P9922039506003462545.Spec : Prop :=
  ∀ n, (P9922039506003462545.a n : ℤ) = A146179 (n + 1)

end A146179

/-! ## A146179.P5372568881322695486

`A029579(2*∑{digits}[2*A001787(n), #])`
-/

namespace A146179.P5372568881322695486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A146179.P5372568881322695486

namespace A146179

/-- `A029579(2*∑{digits}[2*A001787(n), #])` -/
def P5372568881322695486.Spec : Prop :=
  ∀ n, P5372568881322695486.a n = A146179 (n + 1)

end A146179

/-! ## A146179.P14859856787435443620

`A000122(or(2, n))+∑{digits}[A002064(n), #]`
-/

namespace A146179.P14859856787435443620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.lor 2 n) + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A146179.P14859856787435443620

namespace A146179

/-- `A000122(or(2, n))+∑{digits}[A002064(n), #]` -/
def P14859856787435443620.Spec : Prop :=
  ∀ n, P14859856787435443620.a n = A146179 (n + 1)

end A146179

/-!
# A146180: Number of n X n binary arrays with all ones connected only in a 110-111-100 pattern in any orientation.

The programs for A146180, there is no canonical definition to state claims against.
-/

/-! ## A146180.P971925995817347669

`A146182(2*(n+2))`
-/

namespace A146180.P971925995817347669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146182 (2 * (n + 2))

end

end A146180.P971925995817347669

/-! ## A146180.P10997658087949255373

`or(1, A146182(A144396(n+1)))`
-/

namespace A146180.P10997658087949255373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146182 (A144396 (n + 1)).toNat)

end

end A146180.P10997658087949255373

/-! ## A146180.P7543798802849012044

`lcm(A146182(A144396(n+1)), A146193(n+1))`
-/

namespace A146180.P7543798802849012044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A146182 (A144396 (n + 1)).toNat) (A146193 (n + 1))

end

end A146180.P7543798802849012044

/-!
# A146181: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 110-111-100 pattern in any orientation.

The programs for A146181, there is no canonical definition to state claims against.
-/

/-! ## A146181.P17256614620272481048

`∏{p}[A146233(n+1)², #]`
-/

namespace A146181.P17256614620272481048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146233 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A146181.P17256614620272481048

/-! ## A146181.P15185146359030655187

`A146233(a(n-2)+n)` with `a(0)=1, a(1)=1`
-/

namespace A146181.P15185146359030655187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A146233 (a (n - 2) + (n : ℤ)).toNat

end

end A146181.P15185146359030655187

/-! ## A146181.P4662728830632513125

`A146233(A004892(n+2))`
-/

namespace A146181.P4662728830632513125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146233 (A004892 (n + 2)).toNat

end

end A146181.P4662728830632513125

/-! ## A146181.P5870939639143209309

`A146233(A000005(5^n))`
-/

namespace A146181.P5870939639143209309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146233 (A000005 (5 ^ n)).toNat

end

end A146181.P5870939639143209309

/-!
# A146182: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 110-111-100 pattern in any orientation.

The programs for A146182, there is no canonical definition to state claims against.
-/

/-! ## A146182.P1056498011806330788

`A146180(∏{e}[2^floor(n/2), #])`
-/

namespace A146182.P1056498011806330788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146180 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A146182.P1056498011806330788

/-! ## A146182.P11530188830083544124

`∏{e}[A016116(n), A146180(#)]`
-/

namespace A146182.P11530188830083544124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A146180 (Nat.factorization (f1 n).natAbs p)

end

end A146182.P11530188830083544124

/-! ## A146182.P1327614656407496592

`A146180(A065033(abs(1-n)))`
-/

namespace A146182.P1327614656407496592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146180 (A065033 |1 - (n : ℤ)|.toNat).toNat

end

end A146182.P1327614656407496592

/-! ## A146182.P11990735719309283074

`A146180(A123108(2*A123108(n)))`
-/

namespace A146182.P11990735719309283074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146180 (A123108 (2 * A123108 n).toNat).toNat

end

end A146182.P11990735719309283074

/-! ## A146182.P16278326033733378162

`A146180(A329670(n)+A004526(n))`
-/

namespace A146182.P16278326033733378162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146180 (A329670 n + A004526 n).toNat

end

end A146182.P16278326033733378162

/-!
# A146183: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 110-111-100 pattern in any orientation.

The programs for A146183, there is no canonical definition to state claims against.
-/

/-! ## A146183.P7535613238218689039

`A146185(2*n+3)`
-/

namespace A146183.P7535613238218689039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146185 (2 * n + 3)

end

end A146183.P7535613238218689039

/-! ## A146183.P10686954216804232899

`or(1, A146185(A144396(n+1)))`
-/

namespace A146183.P10686954216804232899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146185 (A144396 (n + 1)).toNat)

end

end A146183.P10686954216804232899

/-! ## A146183.P432525224994615746

`A235044(n)+A146185(A144396(n+1))`
-/

namespace A146183.P432525224994615746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 n + A146185 (A144396 (n + 1)).toNat

end

end A146183.P432525224994615746

/-! ## A146183.P14003964716547968583

`A146185(A144396(n+1))%A016792(n)`
-/

namespace A146183.P14003964716547968583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146185 (A144396 (n + 1)).toNat) (A016792 n)

end

end A146183.P14003964716547968583

/-! ## A146183.P11287438621731863313

`or(1, A146185(A182318(n+1)))`
-/

namespace A146183.P11287438621731863313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146185 (A182318 (n + 1)).toNat)

end

end A146183.P11287438621731863313

/-!
# A146184: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 110-111-100 pattern in any orientation.

The programs for A146184, there is no canonical definition to state claims against.
-/

/-! ## A146184.P13799412848107767036

`A147135(2*n+3-∑{digits}[n, #])`
-/

namespace A146184.P13799412848107767036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147135 (2 * n + 3 - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A146184.P13799412848107767036

/-! ## A146184.P13614265949942488678

`A146734((n+2)*∑[char[10*n]]%10)`
-/

namespace A146184.P13614265949942488678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146734 ((n + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j) % 10))

end

end A146184.P13614265949942488678

/-! ## A146184.P13936546236531525223

`A146734((n+2)*∏{digits}[∑[char[10*n]], #])`
-/

namespace A146184.P13936546236531525223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146734 ((n + 2) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod)

end

end A146184.P13936546236531525223

/-! ## A146184.P6240188164745463905

`A178832(A011939(n))`
-/

namespace A146184.P6240188164745463905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A011939 n).toNat

end

end A146184.P6240188164745463905

/-! ## A146184.P9455123138693241011

`A196372(A100135(n))`
-/

namespace A146184.P9455123138693241011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196372 (A100135 n).toNat

end

end A146184.P9455123138693241011

/-!
# A146185: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 110-111-100 pattern in any orientation.

The programs for A146185, there is no canonical definition to state claims against.
-/

/-! ## A146185.P5872930052613422148

`A038124(A146474(n+1))`
-/

namespace A146185.P5872930052613422148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038124 (A146474 (n + 1)).toNat

end

end A146185.P5872930052613422148

/-! ## A146185.P8508717450100229159

`A094548(A146020(n+1))`
-/

namespace A146185.P8508717450100229159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094548 (A146020 (n + 1)).toNat

end

end A146185.P8508717450100229159

/-! ## A146185.P503274348297415158

`A157966(A147096(n+1))`
-/

namespace A146185.P503274348297415158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A147096 (n + 1)).toNat

end

end A146185.P503274348297415158

/-! ## A146185.P12997654798390943306

`A258266(A146237(n+1))`
-/

namespace A146185.P12997654798390943306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (A146237 (n + 1)).toNat

end

end A146185.P12997654798390943306

/-! ## A146185.P16699857386809658261

`A344291(A146458(n+1))`
-/

namespace A146185.P16699857386809658261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 (A146458 (n + 1)).toNat

end

end A146185.P16699857386809658261

/-!
# A146186: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 110-111-100 pattern in any orientation.

The programs for A146186, there is no canonical definition to state claims against.
-/

/-! ## A146186.P5090843247681710068

`or(1, A193592(A347041(n)))`
-/

namespace A146186.P5090843247681710068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193592 (A347041 n).toNat)

end

end A146186.P5090843247681710068

/-! ## A146186.P11226716716966868750

`or(1, A205617(A114800(3*n+1)))`
-/

namespace A146186.P11226716716966868750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A205617 (A114800 (3 * n + 1)).toNat)

end

end A146186.P11226716716966868750

/-! ## A146186.P11543225581206505358

`A342194(A336343(n)-A147955(n))`
-/

namespace A146186.P11543225581206505358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A336343 n - A147955 n).toNat

end

end A146186.P11543225581206505358

/-! ## A146186.P14455290296906792040

`A193592(xor(A185118(n), A347041(n)))`
-/

namespace A146186.P14455290296906792040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (Int.xor (A185118 n) (A347041 n)).toNat

end

end A146186.P14455290296906792040

/-! ## A146186.P3917819883274994792

`A160552(A002773(n))%A258876(2*(n+1))`
-/

namespace A146186.P3917819883274994792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160552 (A002773 n).toNat) (A258876 (2 * (n + 1)))

end

end A146186.P3917819883274994792

/-!
# A146187: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 110-111-100 pattern in any orientation.

The programs for A146187, there is no canonical definition to state claims against.
-/

/-! ## A146187.P14771456673871617396

`A209869(A034234(n))`
-/

namespace A146187.P14771456673871617396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209869 (A034234 n).toNat

end

end A146187.P14771456673871617396

/-! ## A146187.P7633998307579621912

`or(1, A054899(A002898(n)))`
-/

namespace A146187.P7633998307579621912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A054899 (A002898 n).toNat)

end

end A146187.P7633998307579621912

/-!
# A146188: Number of n X n binary arrays with all ones connected only in a 101-111-100 pattern in any orientation.

The programs for A146188, there is no canonical definition to state claims against.
-/

/-! ## A146188.P6437978895646995609

`A146190(2*(n+2))`
-/

namespace A146188.P6437978895646995609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146190 (2 * (n + 2))

end

end A146188.P6437978895646995609

/-! ## A146188.P2419955027058966690

`or(1, A146190(A144396(n+1)))`
-/

namespace A146188.P2419955027058966690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146190 (A144396 (n + 1)).toNat)

end

end A146188.P2419955027058966690

/-! ## A146188.P10963449467596211782

`or(1, A146190(A307782(n+1)))`
-/

namespace A146188.P10963449467596211782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146190 (A307782 (n + 1)).toNat)

end

end A146188.P10963449467596211782

/-! ## A146188.P14359708390786129765

`lcm(A146190(A144396(n+1)), A146193(n+1))`
-/

namespace A146188.P14359708390786129765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A146190 (A144396 (n + 1)).toNat) (A146193 (n + 1))

end

end A146188.P14359708390786129765

/-! ## A146188.P15265793801908575135

`and(A057428(n+1), A146190(A053438(n+2)))`
-/

namespace A146188.P15265793801908575135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A146190 (A053438 (n + 2)).toNat)

end

end A146188.P15265793801908575135

/-!
# A146190: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 101-111-100 pattern in any orientation.

The programs for A146190, there is no canonical definition to state claims against.
-/

/-! ## A146190.P7674513578146296713

`A146188(floor(n/2)+C(2, n))`
-/

namespace A146190.P7674513578146296713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146188 (⌊(n : ℚ) / 2⌋ + (Nat.choose 2 n : ℤ)).toNat

end

end A146190.P7674513578146296713

/-! ## A146190.P9319887656805507360

`A146188(gcd(C(2, n), floor(n/2)))`
-/

namespace A146190.P9319887656805507360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146188 (Int.gcd (Nat.choose 2 n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A146190.P9319887656805507360

/-! ## A146190.P15598568723399979084

`A146188(∏{e}[2^floor(n/2), #])`
-/

namespace A146190.P15598568723399979084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146188 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A146190.P15598568723399979084

/-! ## A146190.P13779062423115280167

`A146188(round(acot(n))+floor(n/2))`
-/

namespace A146190.P13779062423115280167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146188 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ)) + ⌊(n : ℚ) / 2⌋).toNat

end

end A146190.P13779062423115280167

/-! ## A146190.P7482767511229974313

`A146188(xor(C(n, n²), floor(n/2)))`
-/

namespace A146190.P7482767511229974313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146188 (Int.xor (Nat.choose n (n ^ 2) : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A146190.P7482767511229974313

/-!
# A146191: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 101-111-100 pattern in any orientation.

The programs for A146191, there is no canonical definition to state claims against.
-/

/-! ## A146191.P2515548765193003853

`A146193(2*(n+2))`
-/

namespace A146191.P2515548765193003853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146193 (2 * (n + 2))

end

end A146191.P2515548765193003853

/-! ## A146191.P12106740704931527307

`or(1, A146193(A144396(n+1)))`
-/

namespace A146191.P12106740704931527307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146193 (A144396 (n + 1)).toNat)

end

end A146191.P12106740704931527307

/-! ## A146191.P4545503803143489952

`or(1, A146193(A152955(n+1)))`
-/

namespace A146191.P4545503803143489952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146193 (A152955 (n + 1)).toNat)

end

end A146191.P4545503803143489952

/-! ## A146191.P3166390111028845979

`or(1, A146193(A172458(n+1)))`
-/

namespace A146191.P3166390111028845979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146193 (A172458 (n + 1)).toNat)

end

end A146191.P3166390111028845979

/-! ## A146191.P4826835780756824290

`or(1, A146193(A307782(n+1)))`
-/

namespace A146191.P4826835780756824290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A146193 (A307782 (n + 1)).toNat)

end

end A146191.P4826835780756824290

/-!
# A146192: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 101-111-100 pattern in any orientation.

The programs for A146192, there is no canonical definition to state claims against.
-/

/-! ## A146192.P9308174121186603701

`A147166(lcm(n, ∑{digits}[n, #])+2)`
-/

namespace A146192.P9308174121186603701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147166 (Nat.lcm n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 2)

end

end A146192.P9308174121186603701

/-! ## A146192.P5233523265790159771

`A291168(A118029(n))`
-/

namespace A146192.P5233523265790159771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (A118029 n).toNat

end

end A146192.P5233523265790159771

/-! ## A146192.P357784628163146493

`A147166(A341935(n)+2)`
-/

namespace A146192.P357784628163146493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147166 (A341935 n + 2).toNat

end

end A146192.P357784628163146493

/-! ## A146192.P3303033711036383990

`A147265(A341935(n)+2)`
-/

namespace A146192.P3303033711036383990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147265 (A341935 n + 2).toNat

end

end A146192.P3303033711036383990

/-! ## A146192.P7119851709477514825

`A004738(A146260(n+1)²)`
-/

namespace A146192.P7119851709477514825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A146260 (n + 1) ^ 2).toNat

end

end A146192.P7119851709477514825

/-!
# A146193: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 101-111-100 pattern in any orientation.

The programs for A146193, there is no canonical definition to state claims against.
-/

/-! ## A146193.P9759090548737801332

`A146191(or(A004526(n), A378454(n+1)))`
-/

namespace A146193.P9759090548737801332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146191 (Int.lor (A004526 n) (A378454 (n + 1))).toNat

end

end A146193.P9759090548737801332

/-! ## A146193.P15757734131075741312

`A146191(A004526(n)+2-A055642(3*(n+1)))`
-/

namespace A146193.P15757734131075741312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146191 (A004526 n + 2 - A055642 (3 * (n + 1))).toNat

end

end A146193.P15757734131075741312

/-!
# A146195: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 101-111-100 pattern in any orientation.

The programs for A146195, there is no canonical definition to state claims against.
-/

/-! ## A146195.P3292809534628845369

`A105705(abs(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A146195.P3292809534628845369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A105705 |a (n - 2) - a (n - 1)|.toNat

end

end A146195.P3292809534628845369

/-! ## A146195.P4486276266915148211

`A374442(A034827(n))`
-/

namespace A146195.P4486276266915148211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374442 (A034827 n).toNat

end

end A146195.P4486276266915148211

/-! ## A146195.P9718366506554182870

`A336420(A284418(n))`
-/

namespace A146195.P9718366506554182870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (A284418 n).toNat

end

end A146195.P9718366506554182870

