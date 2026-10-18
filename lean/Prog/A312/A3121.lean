import SequenceMachineLib.Basic
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B002.C005
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
# A312100: Coordination sequence Gal.5.54.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312100, the canonical program `A312100.P12685263577647089552` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312100 has offset 0).

The definition of A312100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312100.P12901189010043148613

`abs(10*n-A315690(n))`
-/

namespace A312100.P12901189010043148613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315690 n|

end

end A312100.P12901189010043148613

namespace A312100

/-- `abs(10*n-A315690(n))` -/
def P12901189010043148613.Spec : Prop :=
  ∀ n, P12901189010043148613.a n = A312100 n

end A312100

/-! ## A312100.P12685263577647089552

`A311458(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312100

/-- `A311458(n)+Δ[A011862(n)]` -/
def P12685263577647089552.Spec : Prop :=
  ∀ n, P12685263577647089552.a n = A312100 n

theorem P12685263577647089552.correct : P12685263577647089552.Spec := by
  intro n
  simp only [A312100]

end A312100

/-! ## A312100.P11648484292986967843

`2*A008706(n)-A315690(n)`
-/

namespace A312100.P11648484292986967843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315690 n

end

end A312100.P11648484292986967843

namespace A312100

/-- `2*A008706(n)-A315690(n)` -/
def P11648484292986967843.Spec : Prop :=
  ∀ n, P11648484292986967843.a n = A312100 n

end A312100

/-! ## A312100.P12122185545554314883

`A008458(n)+A008576(n)-A314671(n)`
-/

namespace A312100.P12122185545554314883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A314671 n)

end

end A312100.P12122185545554314883

namespace A312100

/-- `A008458(n)+A008576(n)-A314671(n)` -/
def P12122185545554314883.Spec : Prop :=
  ∀ n, P12122185545554314883.a n = A312100 n

end A312100

/-! ## A312100.P14225036137576319775

`A008458(n)+A008574(n)-A315690(n)`
-/

namespace A312100.P14225036137576319775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315690 n)

end

end A312100.P14225036137576319775

namespace A312100

/-- `A008458(n)+A008574(n)-A315690(n)` -/
def P14225036137576319775.Spec : Prop :=
  ∀ n, P14225036137576319775.a n = A312100 n

end A312100

/-! ## A312100.P12802798827283982032

`A004396(n)+A311458(n)-A004396(A004396(n))`
-/

namespace A312100.P12802798827283982032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311458 n - A004396 (A004396 n).toNat)

end

end A312100.P12802798827283982032

namespace A312100

/-- `A004396(n)+A311458(n)-A004396(A004396(n))` -/
def P12802798827283982032.Spec : Prop :=
  ∀ n, P12802798827283982032.a n = A312100 n

end A312100

/-! ## A312100.P9125279927759579672

`A313100(n)-A004396(n-A004396(n))`
-/

namespace A312100.P9125279927759579672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A312100.P9125279927759579672

namespace A312100

/-- `A313100(n)-A004396(n-A004396(n))` -/
def P9125279927759579672.Spec : Prop :=
  ∀ n, P9125279927759579672.a n = A312100 n

end A312100

/-! ## A312100.P16937041499014453493

`A314945(n)-A004396(A004396(n))`
-/

namespace A312100.P16937041499014453493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314945 n - A004396 (A004396 n).toNat

end

end A312100.P16937041499014453493

namespace A312100

/-- `A314945(n)-A004396(A004396(n))` -/
def P16937041499014453493.Spec : Prop :=
  ∀ n, P16937041499014453493.a n = A312100 n

end A312100

/-! ## A312100.P11996295784675402478

`A313894(n)-A004396(A004396(2*n))`
-/

namespace A312100.P11996295784675402478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A004396 (A004396 (2 * n)).toNat

end

end A312100.P11996295784675402478

namespace A312100

/-- `A313894(n)-A004396(A004396(2*n))` -/
def P11996295784675402478.Spec : Prop :=
  ∀ n, P11996295784675402478.a n = A312100 n

end A312100

/-! ## A312100.P7989030827947162029

`(A312669(n)+A008574(n))/2`
-/

namespace A312100.P7989030827947162029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312669 n + A008574 n : ℚ) / 2

end

end A312100.P7989030827947162029

namespace A312100

/-- `(A312669(n)+A008574(n))/2` -/
def P7989030827947162029.Spec : Prop :=
  ∀ n, P7989030827947162029.a n = (A312100 n : ℚ)

end A312100

/-! ## A312100.P1164544094574425199

`A314251(n)-record[A283971(n)]`
-/

namespace A312100.P1164544094574425199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312100.P1164544094574425199

namespace A312100

/-- `A314251(n)-record[A283971(n)]` -/
def P1164544094574425199.Spec : Prop :=
  ∀ n, P1164544094574425199.a n = A312100 n

end A312100

/-! ## A312100.P4470186018879284755

`A314251(n)-A042965(n+1)`
-/

namespace A312100.P4470186018879284755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - A042965 (n + 1)

end

end A312100.P4470186018879284755

namespace A312100

/-- `A314251(n)-A042965(n+1)` -/
def P4470186018879284755.Spec : Prop :=
  ∀ n, P4470186018879284755.a n = A312100 n

end A312100

/-! ## A312100.P1599686518324453386

`A314251(n)-A004396(2*n)`
-/

namespace A312100.P1599686518324453386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - A004396 (2 * n)

end

end A312100.P1599686518324453386

namespace A312100

/-- `A314251(n)-A004396(2*n)` -/
def P1599686518324453386.Spec : Prop :=
  ∀ n, P1599686518324453386.a n = A312100 n

end A312100

/-! ## A312100.P17623555403040877415

`A314251(n)-A004525(A004773(2*n))`
-/

namespace A312100.P17623555403040877415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - A004525 (A004773 (2 * n)).toNat

end

end A312100.P17623555403040877415

namespace A312100

/-- `A314251(n)-A004525(A004773(2*n))` -/
def P17623555403040877415.Spec : Prop :=
  ∀ n, P17623555403040877415.a n = A312100 n

end A312100

/-! ## A312100.P1693834986116973020

`A008576(n)+A314251(n)-A008574(n)`
-/

namespace A312100.P1693834986116973020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314251 n - A008574 n)

end

end A312100.P1693834986116973020

namespace A312100

/-- `A008576(n)+A314251(n)-A008574(n)` -/
def P1693834986116973020.Spec : Prop :=
  ∀ n, P1693834986116973020.a n = A312100 n

end A312100

/-! ## A312100.P1662028128638342802

`A004526(A312669(n))+A004277(n)`
-/

namespace A312100.P1662028128638342802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312669 n).toNat + A004277 n

end

end A312100.P1662028128638342802

namespace A312100

/-- `A004526(A312669(n))+A004277(n)` -/
def P1662028128638342802.Spec : Prop :=
  ∀ n, P1662028128638342802.a n = A312100 n

end A312100

/-! ## A312100.P7658617500202671512

`A005843(A008458(n)-n)-A315690(n)`
-/

namespace A312100.P7658617500202671512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315690 n

end

end A312100.P7658617500202671512

namespace A312100

/-- `A005843(A008458(n)-n)-A315690(n)` -/
def P7658617500202671512.Spec : Prop :=
  ∀ n, P7658617500202671512.a n = A312100 n

end A312100

/-! ## A312100.P12902068993703042754

`round(A298786(A313909(n))/4)`
-/

namespace A312100.P12902068993703042754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A298786 (A313909 n).toNat : ℚ) / 4)

end

end A312100.P12902068993703042754

namespace A312100

/-- `round(A298786(A313909(n))/4)` -/
def P12902068993703042754.Spec : Prop :=
  ∀ n, P12902068993703042754.a n = A312100 n

end A312100

/-! ## A312100.P17897409721623348298

`A004396(n)+A004396(A312160(n)+n)`
-/

namespace A312100.P17897409721623348298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A312160 n + (n : ℤ)).toNat

end

end A312100.P17897409721623348298

namespace A312100

/-- `A004396(n)+A004396(A312160(n)+n)` -/
def P17897409721623348298.Spec : Prop :=
  ∀ n, P17897409721623348298.a n = A312100 n

end A312100

/-! ## A312100.P12467478061849977082

`A004396(n)+A004396(A312555(n)+n)`
-/

namespace A312100.P12467478061849977082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A312555 n + (n : ℤ)).toNat

end

end A312100.P12467478061849977082

namespace A312100

/-- `A004396(n)+A004396(A312555(n)+n)` -/
def P12467478061849977082.Spec : Prop :=
  ∀ n, P12467478061849977082.a n = A312100 n

end A312100

/-!
# A312101: Coordination sequence Gal.6.150.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312101, the canonical program `A312101.P13095207374321224915` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312101 has offset 0).

The definition of A312101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312101.P18035009009056751962

`A008458(n)+A008576(n)-A314668(n)`
-/

namespace A312101.P18035009009056751962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A314668 n)

end

end A312101.P18035009009056751962

namespace A312101

/-- `A008458(n)+A008576(n)-A314668(n)` -/
def P18035009009056751962.Spec : Prop :=
  ∀ n, P18035009009056751962.a n = A312101 n

end A312101

/-! ## A312101.P13095207374321224915

`A004525(A004396(n))+A312184(n)-A004525(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A312101

/-- `A004525(A004396(n))+A312184(n)-A004525(n)` -/
def P13095207374321224915.Spec : Prop :=
  ∀ n, P13095207374321224915.a n = A312101 n

theorem P13095207374321224915.correct : P13095207374321224915.Spec := by
  intro n
  simp only [A312101]

end A312101

/-! ## A312101.P5441915068260948001

`A314899(n)-A004396(A004525(n))`
-/

namespace A312101.P5441915068260948001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n - A004396 (A004525 n).toNat

end

end A312101.P5441915068260948001

namespace A312101

/-- `A314899(n)-A004396(A004525(n))` -/
def P5441915068260948001.Spec : Prop :=
  ∀ n, P5441915068260948001.a n = A312101 n

end A312101

/-! ## A312101.P4065641119503560685

`A313117(n)-round(n/3)`
-/

namespace A312101.P4065641119503560685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313117 n - SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A312101.P4065641119503560685

namespace A312101

/-- `A313117(n)-round(n/3)` -/
def P4065641119503560685.Spec : Prop :=
  ∀ n, P4065641119503560685.a n = A312101 n

end A312101

/-! ## A312101.P2458197020100985672

`A008576(n)+A313117(n)-A008486(n)`
-/

namespace A312101.P2458197020100985672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313117 n - A008486 n)

end

end A312101.P2458197020100985672

namespace A312101

/-- `A008576(n)+A313117(n)-A008486(n)` -/
def P2458197020100985672.Spec : Prop :=
  ∀ n, P2458197020100985672.a n = A312101 n

end A312101

/-! ## A312101.P15515282899356712348

`A314959(n)-A004525(n)`
-/

namespace A312101.P15515282899356712348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314959 n - A004525 n

end

end A312101.P15515282899356712348

namespace A312101

/-- `A314959(n)-A004525(n)` -/
def P15515282899356712348.Spec : Prop :=
  ∀ n, P15515282899356712348.a n = A312101 n

end A312101

/-! ## A312101.P7428403483461145634

`A314959(n)-Δ[A054925(n)]`
-/

namespace A312101.P7428403483461145634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314959 n - (f1 (n + 1) - f1 n)

end

end A312101.P7428403483461145634

namespace A312101

/-- `A314959(n)-Δ[A054925(n)]` -/
def P7428403483461145634.Spec : Prop :=
  ∀ n, P7428403483461145634.a n = A312101 n

end A312101

/-! ## A312101.P10522039101913776460

`abs(A008592(n)-A315689(n))`
-/

namespace A312101.P10522039101913776460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315689 n|

end

end A312101.P10522039101913776460

namespace A312101

/-- `abs(A008592(n)-A315689(n))` -/
def P10522039101913776460.Spec : Prop :=
  ∀ n, P10522039101913776460.a n = A312101 n

end A312101

/-! ## A312101.P5765880671131245181

`A008458(n)+A008574(n)-A315689(n)`
-/

namespace A312101.P5765880671131245181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315689 n)

end

end A312101.P5765880671131245181

namespace A312101

/-- `A008458(n)+A008574(n)-A315689(n)` -/
def P5765880671131245181.Spec : Prop :=
  ∀ n, P5765880671131245181.a n = A312101 n

end A312101

/-! ## A312101.P5202878661191248500

`A315538(n)-comp[A113801(n+1)]`
-/

namespace A312101.P5202878661191248500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A312101.P5202878661191248500

namespace A312101

/-- `A315538(n)-comp[A113801(n+1)]` -/
def P5202878661191248500.Spec : Prop :=
  ∀ n, P5202878661191248500.a n = A312101 n

end A312101

/-! ## A312101.P2415332597189137616

`A314254(n)-round(4*n/3)`
-/

namespace A312101.P2415332597189137616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n - SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))

end

end A312101.P2415332597189137616

namespace A312101

/-- `A314254(n)-round(4*n/3)` -/
def P2415332597189137616.Spec : Prop :=
  ∀ n, P2415332597189137616.a n = A312101 n

end A312101

/-! ## A312101.P1960043220590164124

`A008576(n)+A314254(n)-A008574(n)`
-/

namespace A312101.P1960043220590164124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314254 n - A008574 n)

end

end A312101.P1960043220590164124

namespace A312101

/-- `A008576(n)+A314254(n)-A008574(n)` -/
def P1960043220590164124.Spec : Prop :=
  ∀ n, P1960043220590164124.a n = A312101 n

end A312101

/-!
# A312102: Coordination sequence Gal.4.20.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312102, there is no canonical definition to state claims against.
-/

/-! ## A312102.P17385692325043603759

`A314758(n)-A109072(A007910(n))`
-/

namespace A312102.P17385692325043603759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314758 n - A109072 (A007910 n).toNat

end

end A312102.P17385692325043603759

/-! ## A312102.P4304709360153571739

`A313100(n)-A188295(A187250(n))`
-/

namespace A312102.P4304709360153571739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - A188295 (A187250 n).toNat

end

end A312102.P4304709360153571739

/-! ## A312102.P216944799372006557

`A312068(n)+A001222(A147179(n+1))`
-/

namespace A312102.P216944799372006557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312068 n + A001222 (A147179 (n + 1)).toNat

end

end A312102.P216944799372006557

/-! ## A312102.P7075805538953590713

`∑[A082116(A004062(n+1))]+n`
-/

namespace A312102.P7075805538953590713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 (A004062 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A312102.P7075805538953590713

/-! ## A312102.P14718838593739731031

`A250120(n)-A176166(A037245(n+1))`
-/

namespace A312102.P14718838593739731031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A176166 (A037245 (n + 1)).toNat

end

end A312102.P14718838593739731031

/-!
# A312103: Coordination sequence Gal.5.157.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312103, there is no canonical definition to state claims against.
-/

/-! ## A312103.P15496760317837274737

`A311269(n)+A089049(A148156(n))`
-/

namespace A312103.P15496760317837274737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311269 n + A089049 (A148156 n).toNat

end

end A312103.P15496760317837274737

/-! ## A312103.P7086569305492338214

`A312098(n)+A241471(A124216(n))`
-/

namespace A312103.P7086569305492338214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312098 n + A241471 (A124216 n).toNat

end

end A312103.P7086569305492338214

/-! ## A312103.P7607219226248926001

`or(A046145(A290891(n)), A312100(n))`
-/

namespace A312103.P7607219226248926001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046145 (A290891 n).toNat) (A312100 n)

end

end A312103.P7607219226248926001

/-! ## A312103.P15517698696270217246

`A312028(n)+A180160(A052919(n))`
-/

namespace A312103.P15517698696270217246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312028 n + A180160 (A052919 n).toNat

end

end A312103.P15517698696270217246

/-! ## A312103.P11768325274304026891

`A239504(A132790(n+1))`
-/

namespace A312103.P11768325274304026891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (A132790 (n + 1)).toNat

end

end A312103.P11768325274304026891

/-!
# A312104: Coordination sequence Gal.4.90.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312104, there is no canonical definition to state claims against.
-/

/-! ## A312104.P3549774440633144816

`A312148(n)-A257990(A146782(n+1))`
-/

namespace A312104.P3549774440633144816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312148 n - A257990 (A146782 (n + 1)).toNat

end

end A312104.P3549774440633144816

/-! ## A312104.P6038922600147914785

`A301676(n)+A242869(A024023(n))`
-/

namespace A312104.P6038922600147914785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A242869 (A024023 n).toNat

end

end A312104.P6038922600147914785

/-! ## A312104.P10567528034103631521

`A333382(A038754(n))+A311438(n)`
-/

namespace A312104.P10567528034103631521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A038754 n).toNat + A311438 n

end

end A312104.P10567528034103631521

/-! ## A312104.P15306778219943577006

`A312099(n)+A185284(A312099(n))`
-/

namespace A312104.P15306778219943577006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312099 n + A185284 (A312099 n).toNat

end

end A312104.P15306778219943577006

/-! ## A312104.P4329914444998986621

`A352727(A279560(n))+A301676(n)`
-/

namespace A312104.P4329914444998986621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352727 (A279560 n).toNat + A301676 n

end

end A312104.P4329914444998986621

/-!
# A312105: Coordination sequence Gal.4.87.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312105, there is no canonical definition to state claims against.
-/

/-! ## A312105.P7557681712632560099

`A312100(n)+A288220(A000051(n))`
-/

namespace A312105.P7557681712632560099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A288220 (A000051 n).toNat

end

end A312105.P7557681712632560099

/-! ## A312105.P1056356424552398338

`or(A188034(A323583(n)), A312100(n))`
-/

namespace A312105.P1056356424552398338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188034 (A323583 n).toNat) (A312100 n)

end

end A312105.P1056356424552398338

/-! ## A312105.P10350363038328908436

`A312100(n)+A102683(A002026(n))`
-/

namespace A312105.P10350363038328908436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A102683 (A002026 n).toNat

end

end A312105.P10350363038328908436

/-! ## A312105.P3520636139122127681

`A319995(A226022(n))+A312100(n)`
-/

namespace A312105.P3520636139122127681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (A226022 n).toNat + A312100 n

end

end A312105.P3520636139122127681

/-! ## A312105.P799836285521422603

`or(A285249(A079496(n)), A312100(n))`
-/

namespace A312105.P799836285521422603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285249 (A079496 n).toNat) (A312100 n)

end

end A312105.P799836285521422603

/-!
# A312106: Coordination sequence Gal.5.147.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312106, there is no canonical definition to state claims against.
-/

/-! ## A312106.P15363386323667405787

`A007318(n)+A007149(A017281(n))`
-/

namespace A312106.P15363386323667405787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A007149 (A017281 n).toNat

end

end A312106.P15363386323667405787

/-! ## A312106.P12144493027885284108

`A311289(n)+A001221(A020100(n))`
-/

namespace A312106.P12144493027885284108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A001221 (A020100 n).toNat

end

end A312106.P12144493027885284108

/-! ## A312106.P16623475833617291152

`A250120(n)-A071858(A036289(n))`
-/

namespace A312106.P16623475833617291152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A071858 (A036289 n).toNat

end

end A312106.P16623475833617291152

/-! ## A312106.P1591442507106597816

`A314889(n)-A001222(A072532(n))`
-/

namespace A312106.P1591442507106597816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314889 n - A001222 (A072532 n).toNat

end

end A312106.P1591442507106597816

/-! ## A312106.P11842800183512225003

`A250120(n)-A341685(A005669(n+1))`
-/

namespace A312106.P11842800183512225003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A341685 (A005669 (n + 1)).toNat

end

end A312106.P11842800183512225003

/-!
# A312107: Coordination sequence Gal.6.395.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312107, there is no canonical definition to state claims against.
-/

/-! ## A312107.P12293178331527496270

`A312041(n)+A312127(n)-A312114(n)`
-/

namespace A312107.P12293178331527496270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312041 n + (A312127 n - A312114 n)

end

end A312107.P12293178331527496270

/-! ## A312107.P8201874324610666610

`A312042(A001222(3^n))+A312127(n)-A312114(n)`
-/

namespace A312107.P8201874324610666610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312042 (A001222 (3 ^ n)).toNat + (A312127 n - A312114 n)

end

end A312107.P8201874324610666610

/-! ## A312107.P18361902553565901196

`A358775(A001181(n))+A311526(n)`
-/

namespace A312107.P18361902553565901196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358775 (A001181 n).toNat + A311526 n

end

end A312107.P18361902553565901196

/-! ## A312107.P3835913301232262727

`A312496(n)-A037215(A084152(n))`
-/

namespace A312107.P3835913301232262727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312496 n - A037215 (A084152 n).toNat

end

end A312107.P3835913301232262727

/-! ## A312107.P13574848992888270077

`A250120(n)-A087436(A007691(n+1))`
-/

namespace A312107.P13574848992888270077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A087436 (A007691 (n + 1)).toNat

end

end A312107.P13574848992888270077

/-!
# A312108: Coordination sequence Gal.6.185.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312108, there is no canonical definition to state claims against.
-/

/-! ## A312108.P8822792184250796136

`A008579(n)-(A060953(A000079(n))+A011695(n))`
-/

namespace A312108.P8822792184250796136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - (A060953 (A000079 n).toNat + A011695 n)

end

end A312108.P8822792184250796136

/-! ## A312108.P3016480212812557155

`A008579(n)-(A011695(n)+A011695(A059502(n)))`
-/

namespace A312108.P3016480212812557155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - (A011695 n + A011695 (A059502 n).toNat)

end

end A312108.P3016480212812557155

/-! ## A312108.P14279045038691327409

`A250120(n)-A347441(A297703(3*n+1))`
-/

namespace A312108.P14279045038691327409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A347441 (A297703 (3 * n + 1)).toNat

end

end A312108.P14279045038691327409

/-!
# A312109: Coordination sequence Gal.6.169.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312109, there is no canonical definition to state claims against.
-/

/-! ## A312109.P9304306346151745988

`A008579(n)-A191322(A131632(n+3))`
-/

namespace A312109.P9304306346151745988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A191322 (A131632 (n + 3)).toNat

end

end A312109.P9304306346151745988

/-! ## A312109.P16149628388389622918

`A008579(n)-A060953(A000079(n))`
-/

namespace A312109.P16149628388389622918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A060953 (A000079 n).toNat

end

end A312109.P16149628388389622918

/-! ## A312109.P14801782077444958767

`A008579(n)-A011695(A059502(n))`
-/

namespace A312109.P14801782077444958767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A011695 (A059502 n).toNat

end

end A312109.P14801782077444958767

/-! ## A312109.P10456978216803171215

`A008579(n)-A285125(A000108(n))`
-/

namespace A312109.P10456978216803171215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A285125 (A000108 n).toNat

end

end A312109.P10456978216803171215

/-!
# A312110: Coordination sequence Gal.6.398.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312110, there is no canonical definition to state claims against.
-/

/-! ## A312110.P17176647459933532016

`A312079(n)+A312133(n)-A312119(n)`
-/

namespace A312110.P17176647459933532016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312079 n + (A312133 n - A312119 n)

end

end A312110.P17176647459933532016

/-! ## A312110.P17013553953653630992

`A311421(n)+A155828(A319642(n))`
-/

namespace A312110.P17013553953653630992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311421 n + A155828 (A319642 n).toNat

end

end A312110.P17013553953653630992

/-! ## A312110.P5078835264504634242

`A311422(n)+A155828(A319642(n))`
-/

namespace A312110.P5078835264504634242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311422 n + A155828 (A319642 n).toNat

end

end A312110.P5078835264504634242

/-! ## A312110.P14179334139703210485

`A312970(n)-A030301(A161221(n))`
-/

namespace A312110.P14179334139703210485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312970 n - A030301 (A161221 n).toNat

end

end A312110.P14179334139703210485

/-! ## A312110.P13634531548577110804

`A311853(n)+A056979(A248113(n+7))`
-/

namespace A312110.P13634531548577110804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311853 n + A056979 (A248113 (n + 7)).toNat

end

end A312110.P13634531548577110804

/-!
# A312111: Coordination sequence Gal.4.95.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312111, there is no canonical definition to state claims against.
-/

/-! ## A312111.P13827949789096262391

`A311139(n)+A001222(A080635(n))`
-/

namespace A312111.P13827949789096262391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311139 n + A001222 (A080635 n).toNat

end

end A312111.P13827949789096262391

/-! ## A312111.P5163771536172720509

`A313251(n)-A001222(A148995(n))`
-/

namespace A312111.P5163771536172720509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n - A001222 (A148995 n).toNat

end

end A312111.P5163771536172720509

/-! ## A312111.P12656104045013143587

`A312033(n)+A057078(A317800(n+1))`
-/

namespace A312111.P12656104045013143587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312033 n + A057078 (A317800 (n + 1)).toNat

end

end A312111.P12656104045013143587

/-! ## A312111.P12547719937240045448

`A304095(A304135(n+1))+A301676(n)`
-/

namespace A312111.P12547719937240045448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304095 (A304135 (n + 1)).toNat + A301676 n

end

end A312111.P12547719937240045448

/-! ## A312111.P17257886111363046578

`A312112(n)-A137331(A005755(n+1))`
-/

namespace A312111.P17257886111363046578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312112 n - A137331 (A005755 (n + 1)).toNat

end

end A312111.P17257886111363046578

/-!
# A312112: Coordination sequence Gal.6.501.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312112, there is no canonical definition to state claims against.
-/

/-! ## A312112.P10833568579792035935

`A302540(3*n+2)-A008683(A000111(n))`
-/

namespace A312112.P10833568579792035935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (3 * n + 2) - A008683 (A000111 n).toNat

end

end A312112.P10833568579792035935

/-! ## A312112.P5943673649394407693

`A312111(n)+A137331(A005755(n+1))`
-/

namespace A312112.P5943673649394407693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312111 n + A137331 (A005755 (n + 1)).toNat

end

end A312112.P5943673649394407693

/-! ## A312112.P14909647119753633682

`A328037(A338666(n+1))+A312080(n)`
-/

namespace A312112.P14909647119753633682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328037 (A338666 (n + 1)).toNat + A312080 n

end

end A312112.P14909647119753633682

/-!
# A312113: Coordination sequence Gal.6.132.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312113, the canonical program `A312113.P6642103030780361102` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312113 has offset 0).

The definition of A312113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312113.P2910947024000542430

`abs(A008592(n)-A315688(n))`
-/

namespace A312113.P2910947024000542430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315688 n|

end

end A312113.P2910947024000542430

namespace A312113

/-- `abs(A008592(n)-A315688(n))` -/
def P2910947024000542430.Spec : Prop :=
  ∀ n, P2910947024000542430.a n = A312113 n

end A312113

/-! ## A312113.P7832660449801595512

`2*A008706(n)-A315688(n)`
-/

namespace A312113.P7832660449801595512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315688 n

end

end A312113.P7832660449801595512

namespace A312113

/-- `2*A008706(n)-A315688(n)` -/
def P7832660449801595512.Spec : Prop :=
  ∀ n, P7832660449801595512.a n = A312113 n

end A312113

/-! ## A312113.P6642103030780361102

`A301298(n)-A046978(A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312113

/-- `A301298(n)-A046978(A004396(n))` -/
def P6642103030780361102.Spec : Prop :=
  ∀ n, P6642103030780361102.a n = A312113 n

theorem P6642103030780361102.correct : P6642103030780361102.Spec := by
  intro n
  simp only [A312113]

end A312113

/-! ## A312113.P70887861925981314

`A008458(n)+A008574(n)-A315688(n)`
-/

namespace A312113.P70887861925981314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315688 n)

end

end A312113.P70887861925981314

namespace A312113

/-- `A008458(n)+A008574(n)-A315688(n)` -/
def P70887861925981314.Spec : Prop :=
  ∀ n, P70887861925981314.a n = A312113 n

end A312113

/-! ## A312113.P16564779630963321809

`A004396(n)+A311312(n)-A004396(A004525(n))`
-/

namespace A312113.P16564779630963321809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311312 n - A004396 (A004525 n).toNat)

end

end A312113.P16564779630963321809

namespace A312113

/-- `A004396(n)+A311312(n)-A004396(A004525(n))` -/
def P16564779630963321809.Spec : Prop :=
  ∀ n, P16564779630963321809.a n = A312113 n

end A312113

/-! ## A312113.P10537768340885345703

`A315688(n)-A005843(A315688(n)-A008706(n))`
-/

namespace A312113.P10537768340885345703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315688 n - A005843 (A315688 n - A008706 n).toNat

end

end A312113.P10537768340885345703

namespace A312113

/-- `A315688(n)-A005843(A315688(n)-A008706(n))` -/
def P10537768340885345703.Spec : Prop :=
  ∀ n, P10537768340885345703.a n = A312113 n

end A312113

/-! ## A312113.P12343347068695146747

`A313119(n)-round(n/3)`
-/

namespace A312113.P12343347068695146747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n - SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A312113.P12343347068695146747

namespace A312113

/-- `A313119(n)-round(n/3)` -/
def P12343347068695146747.Spec : Prop :=
  ∀ n, P12343347068695146747.a n = A312113 n

end A312113

/-! ## A312113.P10415204438592673170

`A008576(n)+A313119(n)-A008486(n)`
-/

namespace A312113.P10415204438592673170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313119 n - A008486 n)

end

end A312113.P10415204438592673170

namespace A312113

/-- `A008576(n)+A313119(n)-A008486(n)` -/
def P10415204438592673170.Spec : Prop :=
  ∀ n, P10415204438592673170.a n = A312113 n

end A312113

/-! ## A312113.P10120216905932081312

`A314903(n)-A004396(A004525(n))`
-/

namespace A312113.P10120216905932081312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n - A004396 (A004525 n).toNat

end

end A312113.P10120216905932081312

namespace A312113

/-- `A314903(n)-A004396(A004525(n))` -/
def P10120216905932081312.Spec : Prop :=
  ∀ n, P10120216905932081312.a n = A312113 n

end A312113

/-! ## A312113.P5156800217773711114

`A314964(n)-A004525(n)`
-/

namespace A312113.P5156800217773711114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n - A004525 n

end

end A312113.P5156800217773711114

namespace A312113

/-- `A314964(n)-A004525(n)` -/
def P5156800217773711114.Spec : Prop :=
  ∀ n, P5156800217773711114.a n = A312113 n

end A312113

/-! ## A312113.P359324887733349648

`A314964(n)-Δ[A054925(n)]`
-/

namespace A312113.P359324887733349648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n - (f1 (n + 1) - f1 n)

end

end A312113.P359324887733349648

namespace A312113

/-- `A314964(n)-Δ[A054925(n)]` -/
def P359324887733349648.Spec : Prop :=
  ∀ n, P359324887733349648.a n = A312113 n

end A312113

/-! ## A312113.P289700298737148179

`A004396(n)+A311536(n)-A004525(n)`
-/

namespace A312113.P289700298737148179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311536 n - A004525 n)

end

end A312113.P289700298737148179

namespace A312113

/-- `A004396(n)+A311536(n)-A004525(n)` -/
def P289700298737148179.Spec : Prop :=
  ∀ n, P289700298737148179.a n = A312113 n

end A312113

/-! ## A312113.P16623055585834110233

`A310466(n)-∑[2*A022003(n)]`
-/

namespace A312113.P16623055585834110233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310466 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312113.P16623055585834110233

namespace A312113

/-- `A310466(n)-∑[2*A022003(n)]` -/
def P16623055585834110233.Spec : Prop :=
  ∀ n, P16623055585834110233.a n = A312113 n

end A312113

/-! ## A312113.P16831079575491699680

`∏{d}[A008592(n)-A315688(n), A014963(#)]`
-/

namespace A312113.P16831079575491699680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A312113.P16831079575491699680

namespace A312113

/-- `∏{d}[A008592(n)-A315688(n), A014963(#)]` -/
def P16831079575491699680.Spec : Prop :=
  ∀ n, P16831079575491699680.a n = A312113 n

end A312113

/-! ## A312113.P14103364751019478142

`A005843(A008706(n))-A315688(n)`
-/

namespace A312113.P14103364751019478142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315688 n

end

end A312113.P14103364751019478142

namespace A312113

/-- `A005843(A008706(n))-A315688(n)` -/
def P14103364751019478142.Spec : Prop :=
  ∀ n, P14103364751019478142.a n = A312113 n

end A312113

/-!
# A312114: Coordination sequence Gal.6.395.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312114, there is no canonical definition to state claims against.
-/

/-! ## A312114.P169047431853120455

`A188434(n+1)-A228348(A006463(2*(n+1)))`
-/

namespace A312114.P169047431853120455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1) - A228348 (A006463 (2 * (n + 1))).toNat

end

end A312114.P169047431853120455

/-! ## A312114.P579605702729673460

`A312131(n)-A109718(A293045(n))`
-/

namespace A312114.P579605702729673460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312131 n - A109718 (A293045 n).toNat

end

end A312114.P579605702729673460

/-! ## A312114.P1812984491266879717

`A313556(n)-A275015(A169985(n))`
-/

namespace A312114.P1812984491266879717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n - A275015 (A169985 n).toNat

end

end A312114.P1812984491266879717

/-! ## A312114.P12387523224202455192

`or(A008574(n), A068067(A001998(n)))`
-/

namespace A312114.P12387523224202455192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A068067 (A001998 n).toNat)

end

end A312114.P12387523224202455192

/-! ## A312114.P17189704147118500700

`A313689(n)-A030386(A050549(n+1))`
-/

namespace A312114.P17189704147118500700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313689 n - A030386 (A050549 (n + 1)).toNat

end

end A312114.P17189704147118500700

/-!
# A312115: Coordination sequence Gal.3.32.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312115, there is no canonical definition to state claims against.
-/

/-! ## A312115.P15213142704647591141

`A312116(n)-A185284(A235036(n))`
-/

namespace A312115.P15213142704647591141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312116 n - A185284 (A235036 n).toNat

end

end A312115.P15213142704647591141

/-! ## A312115.P7700953891488902210

`A312116(n)-A185036(A008277(n+1))`
-/

namespace A312115.P7700953891488902210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312116 n - A185036 (A008277 (n + 1)).toNat

end

end A312115.P7700953891488902210

/-! ## A312115.P8568910701850982415

`A312116(n)-A003982(A280229(n+1))`
-/

namespace A312115.P8568910701850982415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312116 n - A003982 (A280229 (n + 1)).toNat

end

end A312115.P8568910701850982415

/-! ## A312115.P16164573020313345993

`or(A101436(A154372(3*(n+1))), A301299(n))`
-/

namespace A312115.P16164573020313345993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101436 (A154372 (3 * (n + 1))).toNat) (A301299 n)

end

end A312115.P16164573020313345993

/-! ## A312115.P8385809967561497442

`A312116(A062399(n))`
-/

namespace A312115.P8385809967561497442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312116 (A062399 n).toNat

end

end A312115.P8385809967561497442

/-!
# A312116: Coordination sequence Gal.5.164.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312116, there is no canonical definition to state claims against.
-/

/-! ## A312116.P4579683409563130347

`A312115(n)+A185284(A227360(n))`
-/

namespace A312116.P4579683409563130347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312115 n + A185284 (A227360 n).toNat

end

end A312116.P4579683409563130347

/-! ## A312116.P14324936116615875459

`A312115(n)+A185284(A235036(n))`
-/

namespace A312116.P14324936116615875459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312115 n + A185284 (A235036 n).toNat

end

end A312116.P14324936116615875459

/-! ## A312116.P10066963554231618163

`A301299(n)+A188172(A257104(n))`
-/

namespace A312116.P10066963554231618163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A188172 (A257104 n).toNat

end

end A312116.P10066963554231618163

/-! ## A312116.P11423686373515710035

`A312115(n)+A011742(A145801(n+1))`
-/

namespace A312116.P11423686373515710035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312115 n + A011742 (A145801 (n + 1)).toNat

end

end A312116.P11423686373515710035

/-! ## A312116.P15047670900472682419

`A312115(n)+A003982(A280229(n+1))`
-/

namespace A312116.P15047670900472682419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312115 n + A003982 (A280229 (n + 1)).toNat

end

end A312116.P15047670900472682419

/-!
# A312117: Coordination sequence Gal.6.461.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312117, there is no canonical definition to state claims against.
-/

/-! ## A312117.P880409857678780403

`A312526(n)-A060862(A341240(n+1))`
-/

namespace A312117.P880409857678780403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312526 n - A060862 (A341240 (n + 1)).toNat

end

end A312117.P880409857678780403

/-! ## A312117.P771690071663288229

`A008574(n)+A001222(A333018(n))`
-/

namespace A312117.P771690071663288229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A333018 n).toNat

end

end A312117.P771690071663288229

/-! ## A312117.P13709946874422664276

`A311575(n)+A194591(A019299(n))`
-/

namespace A312117.P13709946874422664276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311575 n + A194591 (A019299 n).toNat

end

end A312117.P13709946874422664276

/-! ## A312117.P16879838699254259334

`or(A001222(A333018(n)), A311698(n))`
-/

namespace A312117.P16879838699254259334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A333018 n).toNat) (A311698 n)

end

end A312117.P16879838699254259334

/-! ## A312117.P5168493264736528780

`A310064(A087051(n))+n-∑[A240923(2*n+3)]`
-/

namespace A312117.P5168493264736528780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310064 (A087051 n).toNat + (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312117.P5168493264736528780

/-!
# A312118: Coordination sequence Gal.5.181.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312118, there is no canonical definition to state claims against.
-/

/-! ## A312118.P14685713435495596778

`xor(A007949(A053697(n+1)), A311984(n))`
-/

namespace A312118.P14685713435495596778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007949 (A053697 (n + 1)).toNat) (A311984 n)

end

end A312118.P14685713435495596778

/-! ## A312118.P13365843303039733186

`A160755(A313106(n))`
-/

namespace A312118.P13365843303039733186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A313106 n).toNat

end

end A312118.P13365843303039733186

/-! ## A312118.P1366666282473299864

`A312043(n)+A033909(A022087(n))`
-/

namespace A312118.P1366666282473299864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312043 n + A033909 (A022087 n).toNat

end

end A312118.P1366666282473299864

/-! ## A312118.P10514800729980994530

`A313106(n)+A081729(A001790(n))`
-/

namespace A312118.P10514800729980994530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313106 n + A081729 (A001790 n).toNat

end

end A312118.P10514800729980994530

/-! ## A312118.P15583592124021670841

`A250120(n)-A001221(A065297(n))`
-/

namespace A312118.P15583592124021670841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A065297 n).toNat

end

end A312118.P15583592124021670841

/-!
# A312119: Coordination sequence Gal.6.398.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312119, there is no canonical definition to state claims against.
-/

/-! ## A312119.P4989717397893685738

`A312079(n)+A312133(n)-A312110(n)`
-/

namespace A312119.P4989717397893685738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312079 n + (A312133 n - A312110 n)

end

end A312119.P4989717397893685738

/-! ## A312119.P16845489201979021871

`A311917(n)+A227835(A108150(n))`
-/

namespace A312119.P16845489201979021871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311917 n + A227835 (A108150 n).toNat

end

end A312119.P16845489201979021871

/-! ## A312119.P12143194480331652356

`A311928(n)+A267679(A321228(n))`
-/

namespace A312119.P12143194480331652356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311928 n + A267679 (A321228 n).toNat

end

end A312119.P12143194480331652356

/-! ## A312119.P721845689714337377

`A311929(n)+A267679(A321228(n))`
-/

namespace A312119.P721845689714337377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311929 n + A267679 (A321228 n).toNat

end

end A312119.P721845689714337377

/-! ## A312119.P12734107277509775705

`A346129(A310063(n))`
-/

namespace A312119.P12734107277509775705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (A310063 n).toNat

end

end A312119.P12734107277509775705

/-!
# A312120: Coordination sequence Gal.6.389.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312120, there is no canonical definition to state claims against.
-/

/-! ## A312120.P9563205019641599031

`A312119(n)+A293162(A228953(3*n+4))`
-/

namespace A312120.P9563205019641599031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312119 n + A293162 (A228953 (3 * n + 4)).toNat

end

end A312120.P9563205019641599031

/-! ## A312120.P15106997880240390998

`A312126(n)-A011715(A341265(n))`
-/

namespace A312120.P15106997880240390998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312126 n - A011715 (A341265 n).toNat

end

end A312120.P15106997880240390998

/-! ## A312120.P3821062744000986455

`A312142(n)-A294929(A065118(n))`
-/

namespace A312120.P3821062744000986455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312142 n - A294929 (A065118 n).toNat

end

end A312120.P3821062744000986455

/-! ## A312120.P11402815531210926490

`xor(A178090(A001611(n)), A314720(n))`
-/

namespace A312120.P11402815531210926490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178090 (A001611 n).toNat) (A314720 n)

end

end A312120.P11402815531210926490

/-!
# A312121: Coordination sequence Gal.5.164.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312121, there is no canonical definition to state claims against.
-/

/-! ## A312121.P16150301732212643939

`A312122(n)-A006927(A173881(n))`
-/

namespace A312121.P16150301732212643939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312122 n - A006927 (A173881 n).toNat

end

end A312121.P16150301732212643939

/-! ## A312121.P4604610586009281647

`A312122(n)-A178798(A068044(n))`
-/

namespace A312121.P4604610586009281647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312122 n - A178798 (A068044 n).toNat

end

end A312121.P4604610586009281647

/-! ## A312121.P16605021979071524222

`A312122(n)+A178798(A287336(n+1))`
-/

namespace A312121.P16605021979071524222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312122 n + A178798 (A287336 (n + 1)).toNat

end

end A312121.P16605021979071524222

/-! ## A312121.P3135927581166798962

`A312122(n)-A185036(A008277(n+1))`
-/

namespace A312121.P3135927581166798962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312122 n - A185036 (A008277 (n + 1)).toNat

end

end A312121.P3135927581166798962

/-! ## A312121.P9248464925723087416

`A312122(n)+A178798(A068044(n)+2)`
-/

namespace A312121.P9248464925723087416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312122 n + A178798 (A068044 n + 2).toNat

end

end A312121.P9248464925723087416

/-!
# A312122: Coordination sequence Gal.3.30.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312122, there is no canonical definition to state claims against.
-/

/-! ## A312122.P8256489596677179423

`(A312544(n)+A311598(n))/2`
-/

namespace A312122.P8256489596677179423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312544 n + A311598 n : ℚ) / 2

end

end A312122.P8256489596677179423

/-! ## A312122.P6437350726249808133

`A311598(n)+A312527(n)-A312081(n)`
-/

namespace A312122.P6437350726249808133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311598 n + (A312527 n - A312081 n)

end

end A312122.P6437350726249808133

/-! ## A312122.P10971255891382471585

`A312081(n)+A312544(n)-A312527(n)`
-/

namespace A312122.P10971255891382471585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312081 n + (A312544 n - A312527 n)

end

end A312122.P10971255891382471585

/-! ## A312122.P3629647124715240977

`A004525(A312544(n)+A311598(n))`
-/

namespace A312122.P3629647124715240977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312544 n + A311598 n).toNat

end

end A312122.P3629647124715240977

/-! ## A312122.P9143448935951650370

`A004525(A312544(n)+2*A312081(n)-A312486(n))`
-/

namespace A312122.P9143448935951650370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312544 n + (2 * A312081 n - A312486 n)).toNat

end

end A312122.P9143448935951650370

/-!
# A312123: Coordination sequence Gal.6.120.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312123, the canonical program `A312123.P2703485450737880313` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312123 has offset 0).

The definition of A312123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2507 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312123.P15065815391385863314

`A314688(n)-A128834(n)`
-/

namespace A312123.P15065815391385863314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n - A128834 n

end

end A312123.P15065815391385863314

namespace A312123

/-- `A314688(n)-A128834(n)` -/
def P15065815391385863314.Spec : Prop :=
  ∀ n, P15065815391385863314.a n = A312123 n

end A312123

/-! ## A312123.P2703485450737880313

`abs(A008592(n)-A315687(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312123

/-- `abs(A008592(n)-A315687(n))` -/
def P2703485450737880313.Spec : Prop :=
  ∀ n, P2703485450737880313.a n = A312123 n

theorem P2703485450737880313.correct : P2703485450737880313.Spec := by
  intro n
  simp only [A312123]

end A312123

/-! ## A312123.P5375468783350373927

`A314688(n)+A010892(n+2)`
-/

namespace A312123.P5375468783350373927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n + A010892 (n + 2)

end

end A312123.P5375468783350373927

namespace A312123

/-- `A314688(n)+A010892(n+2)` -/
def P5375468783350373927.Spec : Prop :=
  ∀ n, P5375468783350373927.a n = A312123 n

end A312123

/-! ## A312123.P6329166397620423261

`A047513(n+1)+A311257(n)-n`
-/

namespace A312123.P6329166397620423261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A311257 n - (n : ℤ))

end

end A312123.P6329166397620423261

namespace A312123

/-- `A047513(n+1)+A311257(n)-n` -/
def P6329166397620423261.Spec : Prop :=
  ∀ n, P6329166397620423261.a n = A312123 n

end A312123

/-! ## A312123.P6306985510108999961

`A314688(n)-A046978(A004396(2*n))`
-/

namespace A312123.P6306985510108999961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n - A046978 (A004396 (2 * n)).toNat

end

end A312123.P6306985510108999961

namespace A312123

/-- `A314688(n)-A046978(A004396(2*n))` -/
def P6306985510108999961.Spec : Prop :=
  ∀ n, P6306985510108999961.a n = A312123 n

end A312123

/-! ## A312123.P15668333227445684444

`A008458(n)+A008486(n)-A313485(n)`
-/

namespace A312123.P15668333227445684444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313485 n)

end

end A312123.P15668333227445684444

namespace A312123

/-- `A008458(n)+A008486(n)-A313485(n)` -/
def P15668333227445684444.Spec : Prop :=
  ∀ n, P15668333227445684444.a n = A312123 n

end A312123

/-! ## A312123.P11737794922212248157

`A008458(n)+A008574(n)-A315687(n)`
-/

namespace A312123.P11737794922212248157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315687 n)

end

end A312123.P11737794922212248157

namespace A312123

/-- `A008458(n)+A008574(n)-A315687(n)` -/
def P11737794922212248157.Spec : Prop :=
  ∀ n, P11737794922212248157.a n = A312123 n

end A312123

/-! ## A312123.P16252428233689582164

`A004525(n)+A311924(n)-A004396(A004525(n))`
-/

namespace A312123.P16252428233689582164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A311924 n - A004396 (A004525 n).toNat)

end

end A312123.P16252428233689582164

namespace A312123

/-- `A004525(n)+A311924(n)-A004396(A004525(n))` -/
def P16252428233689582164.Spec : Prop :=
  ∀ n, P16252428233689582164.a n = A312123 n

end A312123

/-! ## A312123.P2587825228131958092

`A004396(A004525(n))+A312184(n)-A004525(n)`
-/

namespace A312123.P2587825228131958092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A312184 n - A004525 n)

end

end A312123.P2587825228131958092

namespace A312123

/-- `A004396(A004525(n))+A312184(n)-A004525(n)` -/
def P2587825228131958092.Spec : Prop :=
  ∀ n, P2587825228131958092.a n = A312123 n

end A312123

/-! ## A312123.P9667862292955226246

`A314899(n)-A004525(A004396(n))`
-/

namespace A312123.P9667862292955226246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n - A004525 (A004396 n).toNat

end

end A312123.P9667862292955226246

namespace A312123

/-- `A314899(n)-A004525(A004396(n))` -/
def P9667862292955226246.Spec : Prop :=
  ∀ n, P9667862292955226246.a n = A312123 n

end A312123

/-! ## A312123.P4019322759951640207

`A314912(n)-A004396(A004525(n))`
-/

namespace A312123.P4019322759951640207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 n - A004396 (A004525 n).toNat

end

end A312123.P4019322759951640207

namespace A312123

/-- `A314912(n)-A004396(A004525(n))` -/
def P4019322759951640207.Spec : Prop :=
  ∀ n, P4019322759951640207.a n = A312123 n

end A312123

/-! ## A312123.P15838932528322797194

`A313251(n)-∑[A021913(n)]`
-/

namespace A312123.P15838932528322797194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312123.P15838932528322797194

namespace A312123

/-- `A313251(n)-∑[A021913(n)]` -/
def P15838932528322797194.Spec : Prop :=
  ∀ n, P15838932528322797194.a n = A312123 n

end A312123

/-! ## A312123.P8674269039907229773

`A313251(n)-Δ[A011848(n)]`
-/

namespace A312123.P8674269039907229773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n - (f1 (n + 1) - f1 n)

end

end A312123.P8674269039907229773

namespace A312123

/-- `A313251(n)-Δ[A011848(n)]` -/
def P8674269039907229773.Spec : Prop :=
  ∀ n, P8674269039907229773.a n = A312123 n

end A312123

/-! ## A312123.P16362165380503964414

`A313251(n)-A004524(n+1)`
-/

namespace A312123.P16362165380503964414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n - A004524 (n + 1)

end

end A312123.P16362165380503964414

namespace A312123

/-- `A313251(n)-A004524(n+1)` -/
def P16362165380503964414.Spec : Prop :=
  ∀ n, P16362165380503964414.a n = A312123 n

end A312123

/-! ## A312123.P3165894788711516285

`A004525(n)+A313251(n)-n`
-/

namespace A312123.P3165894788711516285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313251 n - (n : ℤ))

end

end A312123.P3165894788711516285

namespace A312123

/-- `A004525(n)+A313251(n)-n` -/
def P3165894788711516285.Spec : Prop :=
  ∀ n, P3165894788711516285.a n = A312123 n

end A312123

/-! ## A312123.P9555265676605227202

`A315479(n)-(A128834(n)+n)`
-/

namespace A312123.P9555265676605227202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315479 n - (A128834 n + (n : ℤ))

end

end A312123.P9555265676605227202

namespace A312123

/-- `A315479(n)-(A128834(n)+n)` -/
def P9555265676605227202.Spec : Prop :=
  ∀ n, P9555265676605227202.a n = A312123 n

end A312123

/-! ## A312123.P10144347008295776527

`A313924(n)-n`
-/

namespace A312123.P10144347008295776527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - (n : ℤ)

end

end A312123.P10144347008295776527

namespace A312123

/-- `A313924(n)-n` -/
def P10144347008295776527.Spec : Prop :=
  ∀ n, P10144347008295776527.a n = A312123 n

end A312123

/-! ## A312123.P8791244480688987757

`A315335(n)-(A134667(n)+n)`
-/

namespace A312123.P8791244480688987757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 n - (A134667 n + (n : ℤ))

end

end A312123.P8791244480688987757

namespace A312123

/-- `A315335(n)-(A134667(n)+n)` -/
def P8791244480688987757.Spec : Prop :=
  ∀ n, P8791244480688987757.a n = A312123 n

end A312123

/-! ## A312123.P765721635253694912

`A315549(n)-A047424(n+1)`
-/

namespace A312123.P765721635253694912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - A047424 (n + 1)

end

end A312123.P765721635253694912

namespace A312123

/-- `A315549(n)-A047424(n+1)` -/
def P765721635253694912.Spec : Prop :=
  ∀ n, P765721635253694912.a n = A312123 n

end A312123

/-! ## A312123.P8378261732329848690

`A312184(n)-∑[A021913(A312184(n))]`
-/

namespace A312123.P8378261732329848690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A312184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312123.P8378261732329848690

namespace A312123

/-- `A312184(n)-∑[A021913(A312184(n))]` -/
def P8378261732329848690.Spec : Prop :=
  ∀ n, P8378261732329848690.a n = A312123 n

end A312123

/-!
# A312124: Coordination sequence Gal.5.206.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312124, the canonical program `A312124.P5596801148833334333` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312124 has offset 0).

The definition of A312124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312124.P5596801148833334333

`A311958(n)+A087509(A004526(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312124

/-- `A311958(n)+A087509(A004526(n))` -/
def P5596801148833334333.Spec : Prop :=
  ∀ n, P5596801148833334333.a n = A312124 n

theorem P5596801148833334333.correct : P5596801148833334333.Spec := by
  intro n
  simp only [A312124]

end A312124

/-! ## A312124.P2839058407917981478

`A083051(n)+A000523(A001333(n))`
-/

namespace A312124.P2839058407917981478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n + A000523 (A001333 n).toNat

end

end A312124.P2839058407917981478

namespace A312124

/-- `A083051(n)+A000523(A001333(n))` -/
def P2839058407917981478.Spec : Prop :=
  ∀ n, P2839058407917981478.a n = A312124 n

end A312124

/-! ## A312124.P17739735395769031063

`A312944(n)-A353499(A297694(3*n+5))`
-/

namespace A312124.P17739735395769031063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312944 n - A353499 (A297694 (3 * n + 5)).toNat

end

end A312124.P17739735395769031063

namespace A312124

/-- `A312944(n)-A353499(A297694(3*n+5))` -/
def P17739735395769031063.Spec : Prop :=
  ∀ n, P17739735395769031063.a n = A312124 n

end A312124

/-! ## A312124.P10292068799412263845

`A250120(n)-A001221(A097336(n))`
-/

namespace A312124.P10292068799412263845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A097336 n).toNat

end

end A312124.P10292068799412263845

namespace A312124

/-- `A250120(n)-A001221(A097336(n))` -/
def P10292068799412263845.Spec : Prop :=
  ∀ n, P10292068799412263845.a n = A312124 n

end A312124

/-! ## A312124.P13094720656702023549

`A250120(n)-A031286(A139806(n+2))`
-/

namespace A312124.P13094720656702023549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A031286 (A139806 (n + 2)).toNat

end

end A312124.P13094720656702023549

namespace A312124

/-- `A250120(n)-A031286(A139806(n+2))` -/
def P13094720656702023549.Spec : Prop :=
  ∀ n, P13094720656702023549.a n = A312124 n

end A312124

/-!
# A312125: Coordination sequence Gal.6.221.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312125, the canonical program `A312125.P6689713832904846624` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312125 has offset 0).

The definition of A312125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312125.P6689713832904846624

`A311593(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A312125

/-- `A311593(n)+Δ[A011864(n)]` -/
def P6689713832904846624.Spec : Prop :=
  ∀ n, P6689713832904846624.a n = A312125 n

theorem P6689713832904846624.correct : P6689713832904846624.Spec := by
  intro n
  simp only [A312125]

end A312125

/-! ## A312125.P382197695592355000

`(A312681(n)+A008574(n))/2`
-/

namespace A312125.P382197695592355000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312681 n + A008574 n : ℚ) / 2

end

end A312125.P382197695592355000

namespace A312125

/-- `(A312681(n)+A008574(n))/2` -/
def P382197695592355000.Spec : Prop :=
  ∀ n, P382197695592355000.a n = (A312125 n : ℚ)

end A312125

/-! ## A312125.P7976583786654397354

`A008574(n)+A001281(A312681(n)-A008574(n))`
-/

namespace A312125.P7976583786654397354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A312681 n - A008574 n).toNat

end

end A312125.P7976583786654397354

namespace A312125

/-- `A008574(n)+A001281(A312681(n)-A008574(n))` -/
def P7976583786654397354.Spec : Prop :=
  ∀ n, P7976583786654397354.a n = A312125 n

end A312125

/-! ## A312125.P11741176532442987566

`A008589(n)+A001057(A315633(n))`
-/

namespace A312125.P11741176532442987566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n + A001057 (A315633 n).toNat

end

end A312125.P11741176532442987566

namespace A312125

/-- `A008589(n)+A001057(A315633(n))` -/
def P11741176532442987566.Spec : Prop :=
  ∀ n, P11741176532442987566.a n = A312125 n

end A312125

/-! ## A312125.P12326758699762655048

`A008458(n)+n-A004526(A315633(n))`
-/

namespace A312125.P12326758699762655048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A315633 n).toNat)

end

end A312125.P12326758699762655048

namespace A312125

/-- `A008458(n)+n-A004526(A315633(n))` -/
def P12326758699762655048.Spec : Prop :=
  ∀ n, P12326758699762655048.a n = A312125 n

end A312125

/-! ## A312125.P4089958356268823086

`abs(A008592(n)-A315686(n))`
-/

namespace A312125.P4089958356268823086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315686 n|

end

end A312125.P4089958356268823086

namespace A312125

/-- `abs(A008592(n)-A315686(n))` -/
def P4089958356268823086.Spec : Prop :=
  ∀ n, P4089958356268823086.a n = A312125 n

end A312125

/-! ## A312125.P9376668039191082083

`2*A008706(n)-A315686(n)`
-/

namespace A312125.P9376668039191082083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315686 n

end

end A312125.P9376668039191082083

namespace A312125

/-- `2*A008706(n)-A315686(n)` -/
def P9376668039191082083.Spec : Prop :=
  ∀ n, P9376668039191082083.a n = A312125 n

end A312125

/-! ## A312125.P11256757358637982152

`A008458(n)+A008574(n)-A315686(n)`
-/

namespace A312125.P11256757358637982152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315686 n)

end

end A312125.P11256757358637982152

namespace A312125

/-- `A008458(n)+A008574(n)-A315686(n)` -/
def P11256757358637982152.Spec : Prop :=
  ∀ n, P11256757358637982152.a n = A312125 n

end A312125

/-! ## A312125.P16832758031848087328

`A005843(A008458(n)-n)-A315686(n)`
-/

namespace A312125.P16832758031848087328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315686 n

end

end A312125.P16832758031848087328

namespace A312125

/-- `A005843(A008458(n)-n)-A315686(n)` -/
def P16832758031848087328.Spec : Prop :=
  ∀ n, P16832758031848087328.a n = A312125 n

end A312125

/-! ## A312125.P14037614515823076747

`A004526(A312681(n))+A004277(n)`
-/

namespace A312125.P14037614515823076747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312681 n).toNat + A004277 n

end

end A312125.P14037614515823076747

namespace A312125

/-- `A004526(A312681(n))+A004277(n)` -/
def P14037614515823076747.Spec : Prop :=
  ∀ n, P14037614515823076747.a n = A312125 n

end A312125

/-! ## A312125.P14953068471745505546

`A005843(n)+A004525(A312681(n))`
-/

namespace A312125.P14953068471745505546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A312681 n).toNat

end

end A312125.P14953068471745505546

namespace A312125

/-- `A005843(n)+A004525(A312681(n))` -/
def P14953068471745505546.Spec : Prop :=
  ∀ n, P14953068471745505546.a n = A312125 n

end A312125

/-! ## A312125.P5783250044877226129

`A008619(A312681(n))+A004273(n)`
-/

namespace A312125.P5783250044877226129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A312681 n).toNat + A004273 n

end

end A312125.P5783250044877226129

namespace A312125

/-- `A008619(A312681(n))+A004273(n)` -/
def P5783250044877226129.Spec : Prop :=
  ∀ n, P5783250044877226129.a n = A312125 n

end A312125

/-! ## A312125.P6966289743488062737

`A312556(n)-Δ[A011864(n)]`
-/

namespace A312125.P6966289743488062737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312556 n - (f1 (n + 1) - f1 n)

end

end A312125.P6966289743488062737

namespace A312125

/-- `A312556(n)-Δ[A011864(n)]` -/
def P6966289743488062737.Spec : Prop :=
  ∀ n, P6966289743488062737.a n = A312125 n

end A312125

/-! ## A312125.P4851022869560580730

`A001281(A312681(n)+A008574(n))`
-/

namespace A312125.P4851022869560580730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312681 n + A008574 n).toNat

end

end A312125.P4851022869560580730

namespace A312125

/-- `A001281(A312681(n)+A008574(n))` -/
def P4851022869560580730.Spec : Prop :=
  ∀ n, P4851022869560580730.a n = A312125 n

end A312125

/-!
# A312126: Coordination sequence Gal.6.437.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312126, there is no canonical definition to state claims against.
-/

/-! ## A312126.P7821856027835571477

`A312120(n)+A011715(A341265(n))`
-/

namespace A312126.P7821856027835571477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312120 n + A011715 (A341265 n).toNat

end

end A312126.P7821856027835571477

/-! ## A312126.P15057343714639056560

`A312120(n)+A212619(A315187(2*(n+2)))`
-/

namespace A312126.P15057343714639056560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312120 n + A212619 (A315187 (2 * (n + 2))).toNat

end

end A312126.P15057343714639056560

/-! ## A312126.P12089081861900532344

`A312118(n)+A033909(floor(2^(n-1)))`
-/

namespace A312126.P12089081861900532344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312118 n + A033909 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A312126.P12089081861900532344

/-! ## A312126.P10429930811825508009

`or(A240669(A245306(n)), A312100(n))`
-/

namespace A312126.P10429930811825508009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240669 (A245306 n).toNat) (A312100 n)

end

end A312126.P10429930811825508009

/-! ## A312126.P7835078917634329262

`or(A053838(A268800(n+1)), A312100(n))`
-/

namespace A312126.P7835078917634329262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053838 (A268800 (n + 1)).toNat) (A312100 n)

end

end A312126.P7835078917634329262

/-!
# A312127: Coordination sequence Gal.6.290.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312127, there is no canonical definition to state claims against.
-/

/-! ## A312127.P13146470965818467838

`A312128(n)+A312164(n)-A312165(n)`
-/

namespace A312127.P13146470965818467838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312128 n + (A312164 n - A312165 n)

end

end A312127.P13146470965818467838

/-! ## A312127.P8126359847878947581

`A312128(n)-A102683(A005316(n))`
-/

namespace A312127.P8126359847878947581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312128 n - A102683 (A005316 n).toNat

end

end A312127.P8126359847878947581

/-! ## A312127.P13917390317640567557

`A312128(n)-A025465(A335407(n))`
-/

namespace A312127.P13917390317640567557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312128 n - A025465 (A335407 n).toNat

end

end A312127.P13917390317640567557

/-! ## A312127.P2820518183699698544

`A312128(n)-A316866(A343599(n)²)`
-/

namespace A312127.P2820518183699698544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312128 n - A316866 (A343599 n ^ 2).toNat

end

end A312127.P2820518183699698544

/-! ## A312127.P8806790499467616881

`A312128(n)-A185284(A096182(n+1))`
-/

namespace A312127.P8806790499467616881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312128 n - A185284 (A096182 (n + 1)).toNat

end

end A312127.P8806790499467616881

/-!
# A312128: Coordination sequence Gal.6.291.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312128, there is no canonical definition to state claims against.
-/

/-! ## A312128.P14744537974132788602

`A312127(n)+A312165(n)-A312164(n)`
-/

namespace A312128.P14744537974132788602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312127 n + (A312165 n - A312164 n)

end

end A312128.P14744537974132788602

/-! ## A312128.P16077405252976302682

`A312127(n)+A102683(A005316(n))`
-/

namespace A312128.P16077405252976302682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312127 n + A102683 (A005316 n).toNat

end

end A312128.P16077405252976302682

/-! ## A312128.P1194814854295750318

`A312127(n)+A025465(A335407(n))`
-/

namespace A312128.P1194814854295750318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312127 n + A025465 (A335407 n).toNat

end

end A312128.P1194814854295750318

/-! ## A312128.P10130988873335088749

`A316866(A343599(n)²)+A312127(n)`
-/

namespace A312128.P10130988873335088749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A343599 n ^ 2).toNat + A312127 n

end

end A312128.P10130988873335088749

/-! ## A312128.P7427376105562324824

`A312127(n)+A185284(A096182(n+1))`
-/

namespace A312128.P7427376105562324824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312127 n + A185284 (A096182 (n + 1)).toNat

end

end A312128.P7427376105562324824

/-!
# A312129: Coordination sequence Gal.4.94.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312129, there is no canonical definition to state claims against.
-/

/-! ## A312129.P16173015381457561109

`A312140(n)-A001222(A053497(n))`
-/

namespace A312129.P16173015381457561109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n - A001222 (A053497 n).toNat

end

end A312129.P16173015381457561109

/-! ## A312129.P1945780986122887634

`∑[A338495(A210288(n)²)]`
-/

namespace A312129.P1945780986122887634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338495 (A210288 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312129.P1945780986122887634

/-! ## A312129.P3796992822279675734

`A312046(n)+A001222(A013529(n))`
-/

namespace A312129.P3796992822279675734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312046 n + A001222 (A013529 n).toNat

end

end A312129.P3796992822279675734

/-! ## A312129.P15558300735834210256

`A311275(n)+A001222(A138292(n))`
-/

namespace A312129.P15558300735834210256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311275 n + A001222 (A138292 n).toNat

end

end A312129.P15558300735834210256

/-! ## A312129.P12263234585241864311

`A311914(n)+A086080(A226547(n))`
-/

namespace A312129.P12263234585241864311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311914 n + A086080 (A226547 n).toNat

end

end A312129.P12263234585241864311

/-!
# A312130: Coordination sequence Gal.5.196.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312130, there is no canonical definition to state claims against.
-/

/-! ## A312130.P15227077612759449916

`A250120(n)-∑{p}[A073829(n+1), val(n+1, #)]`
-/

namespace A312130.P15227077612759449916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A312130.P15227077612759449916

/-! ## A312130.P17119617018675665300

`A311915(n)+A025458(A006012(n))`
-/

namespace A312130.P17119617018675665300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311915 n + A025458 (A006012 n).toNat

end

end A312130.P17119617018675665300

/-! ## A312130.P857199886987126686

`A311916(n)+A025458(A006012(n))`
-/

namespace A312130.P857199886987126686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311916 n + A025458 (A006012 n).toNat

end

end A312130.P857199886987126686

/-! ## A312130.P12342396425266410213

`A311917(n)+A025458(A006012(n))`
-/

namespace A312130.P12342396425266410213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311917 n + A025458 (A006012 n).toNat

end

end A312130.P12342396425266410213

/-! ## A312130.P4769633779567949580

`A311542(n)+A086079(A000538(n))`
-/

namespace A312130.P4769633779567949580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311542 n + A086079 (A000538 n).toNat

end

end A312130.P4769633779567949580

/-!
# A312131: Coordination sequence Gal.6.497.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312131, there is no canonical definition to state claims against.
-/

/-! ## A312131.P17803516649327022545

`A311527(n)+A267587(A100098(n))`
-/

namespace A312131.P17803516649327022545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311527 n + A267587 (A100098 n).toNat

end

end A312131.P17803516649327022545

/-! ## A312131.P14000100488839886417

`A311527(n)+A066247(A322294(n))`
-/

namespace A312131.P14000100488839886417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311527 n + A066247 (A322294 n).toNat

end

end A312131.P14000100488839886417

/-! ## A312131.P566820027032756102

`A311527(n)+A071625(A321655(n))`
-/

namespace A312131.P566820027032756102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311527 n + A071625 (A321655 n).toNat

end

end A312131.P566820027032756102

/-! ## A312131.P10377168261236590285

`A311528(n)+A071625(A321655(n))`
-/

namespace A312131.P10377168261236590285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311528 n + A071625 (A321655 n).toNat

end

end A312131.P10377168261236590285

/-! ## A312131.P16011866725254389273

`xor(A220400(A002523(n)), A312132(n))`
-/

namespace A312131.P16011866725254389273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A220400 (A002523 n).toNat) (A312132 n)

end

end A312131.P16011866725254389273

/-!
# A312132: Coordination sequence Gal.6.276.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312132, there is no canonical definition to state claims against.
-/

/-! ## A312132.P7406245004201795135

`(A312547(n)+A311608(n))/2`
-/

namespace A312132.P7406245004201795135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312547 n + A311608 n : ℚ) / 2

end

end A312132.P7406245004201795135

/-! ## A312132.P1057353677331815924

`A014682(A312547(n)+A311608(n))`
-/

namespace A312132.P1057353677331815924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A312547 n + A311608 n).toNat

end

end A312132.P1057353677331815924

/-! ## A312132.P1100064674511555771

`A004525(A312547(n)+A311608(n))`
-/

namespace A312132.P1100064674511555771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312547 n + A311608 n).toNat

end

end A312132.P1100064674511555771

/-! ## A312132.P18199434836348858516

`A026741(A312547(n)+A311608(n))`
-/

namespace A312132.P18199434836348858516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312547 n + A311608 n).toNat

end

end A312132.P18199434836348858516

/-! ## A312132.P9200991166022646230

`A052938(A312547(n)+A311608(n))-1`
-/

namespace A312132.P9200991166022646230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A312547 n + A311608 n).toNat - 1

end

end A312132.P9200991166022646230

/-! ## A312132.P15111155374707057944

`A052938(A311608(n)-(2-A312547(n)))`
-/

namespace A312132.P15111155374707057944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A311608 n - (2 - A312547 n)).toNat

end

end A312132.P15111155374707057944

/-!
# A312133: Coordination sequence Gal.6.277.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312133, there is no canonical definition to state claims against.
-/

/-! ## A312133.P1830757836877515610

`A312110(n)+A312119(n)-A312079(n)`
-/

namespace A312133.P1830757836877515610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312110 n + (A312119 n - A312079 n)

end

end A312133.P1830757836877515610

/-!
# A312134: Coordination sequence Gal.6.180.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312134, there is no canonical definition to state claims against.
-/

/-! ## A312134.P12047278161614481784

`record[A312135(n)-A036601(n)]`
-/

namespace A312134.P12047278161614481784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312135 n - A036601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312134.P12047278161614481784

/-! ## A312134.P7561759036143710457

`record[A312135(n)-A172538(n+1)]`
-/

namespace A312134.P7561759036143710457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312135 n - A172538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312134.P7561759036143710457

/-! ## A312134.P2328540870977351824

`A312135(n)-A185238(A143396(n))`
-/

namespace A312134.P2328540870977351824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312135 n - A185238 (A143396 n).toNat

end

end A312134.P2328540870977351824

/-! ## A312134.P2408187762806724751

`A312135(n)+A185016(A006649(n))`
-/

namespace A312134.P2408187762806724751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312135 n + A185016 (A006649 n).toNat

end

end A312134.P2408187762806724751

/-! ## A312134.P5579383231899976498

`A312135(A062399(n))`
-/

namespace A312134.P5579383231899976498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312135 (A062399 n).toNat

end

end A312134.P5579383231899976498

/-!
# A312135: Coordination sequence Gal.6.164.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312135, there is no canonical definition to state claims against.
-/

/-! ## A312135.P3394107273108893914

`A312134(n)+A185238(A143396(n))`
-/

namespace A312135.P3394107273108893914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312134 n + A185238 (A143396 n).toNat

end

end A312135.P3394107273108893914

/-! ## A312135.P2801890625134968286

`A312134(n)+A185238(A289918(n))`
-/

namespace A312135.P2801890625134968286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312134 n + A185238 (A289918 n).toNat

end

end A312135.P2801890625134968286

/-! ## A312135.P466181915166413141

`A185238(A143396(n))-(A185238(n)-A312134(n))`
-/

namespace A312135.P466181915166413141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A143396 n).toNat - (A185238 n - A312134 n)

end

end A312135.P466181915166413141

/-!
# A312136: Coordination sequence Gal.6.185.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312136, there is no canonical definition to state claims against.
-/

/-! ## A312136.P1479561171141138252

`A312137(n)-A079979(A114901(2*(n+1)))`
-/

namespace A312136.P1479561171141138252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312137 n - A079979 (A114901 (2 * (n + 1))).toNat

end

end A312136.P1479561171141138252

/-! ## A312136.P1777702733908057507

`record[A312137(A162350(n))]`
-/

namespace A312136.P1777702733908057507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312137 (A162350 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312136.P1777702733908057507

/-! ## A312136.P17971637192560166642

`record[A312137(A332104(n))]`
-/

namespace A312136.P17971637192560166642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312137 (A332104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312136.P17971637192560166642

/-! ## A312136.P16607506049249010534

`A312137(n)%A005808(n+1)`
-/

namespace A312136.P16607506049249010534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312137 n) (A005808 (n + 1))

end

end A312136.P16607506049249010534

/-! ## A312136.P11676266471944464069

`A312137(C(A000032(n), (n+6)²)²+n)`
-/

namespace A312136.P11676266471944464069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312137 (Nat.choose (A000032 n).toNat ((n + 6) ^ 2) ^ 2 + n)

end

end A312136.P11676266471944464069

/-!
# A312137: Coordination sequence Gal.6.186.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312137, there is no canonical definition to state claims against.
-/

/-! ## A312137.P2392690088350167916

`A312136(n)+A185274(A074909(n+4))`
-/

namespace A312137.P2392690088350167916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312136 n + A185274 (A074909 (n + 4)).toNat

end

end A312137.P2392690088350167916

/-! ## A312137.P9452882770572518118

`A312136(n)+A079979(A114901(2*(n+1)))`
-/

namespace A312137.P9452882770572518118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312136 n + A079979 (A114901 (2 * (n + 1))).toNat

end

end A312137.P9452882770572518118

/-!
# A312138: Coordination sequence Gal.6.169.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312138, there is no canonical definition to state claims against.
-/

/-! ## A312138.P17058219766686109481

`record[A312139(A162350(n))]`
-/

namespace A312138.P17058219766686109481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312139 (A162350 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312138.P17058219766686109481

/-! ## A312138.P10489780559377940532

`A312139(n)+A056979(record[abs(2-2^n)])`
-/

namespace A312138.P10489780559377940532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (2 ^ n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312139 n + A056979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A312138.P10489780559377940532

/-! ## A312138.P7655563971421452942

`A312139(n)+A000007(A037444(n))`
-/

namespace A312138.P7655563971421452942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312139 n + A000007 (A037444 n).toNat

end

end A312138.P7655563971421452942

/-! ## A312138.P12215684662176691488

`A312139(n)%A205537(A008486(n))`
-/

namespace A312138.P12215684662176691488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312139 n) (A205537 (A008486 n).toNat)

end

end A312138.P12215684662176691488

/-! ## A312138.P6345190569019475076

`A312139(A062399(n))`
-/

namespace A312138.P6345190569019475076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312139 (A062399 n).toNat

end

end A312138.P6345190569019475076

/-!
# A312140: Coordination sequence Gal.4.41.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312140, the canonical program `A312140.P16557486338365459525` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312140 has offset 0).

The definition of A312140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312140.P3032044218923009594

`A047513(n+1)+A311285(n)-n`
-/

namespace A312140.P3032044218923009594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A311285 n - (n : ℤ))

end

end A312140.P3032044218923009594

namespace A312140

/-- `A047513(n+1)+A311285(n)-n` -/
def P3032044218923009594.Spec : Prop :=
  ∀ n, P3032044218923009594.a n = A312140 n

end A312140

/-! ## A312140.P12057262772671762287

`A008458(n)+A008574(n)-A315685(n)`
-/

namespace A312140.P12057262772671762287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315685 n)

end

end A312140.P12057262772671762287

namespace A312140

/-- `A008458(n)+A008574(n)-A315685(n)` -/
def P12057262772671762287.Spec : Prop :=
  ∀ n, P12057262772671762287.a n = A312140 n

end A312140

/-! ## A312140.P5098323356927835582

`A301291(n)-A046978(A046978(n)+n)`
-/

namespace A312140.P5098323356927835582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A312140.P5098323356927835582

namespace A312140

/-- `A301291(n)-A046978(A046978(n)+n)` -/
def P5098323356927835582.Spec : Prop :=
  ∀ n, P5098323356927835582.a n = A312140 n

end A312140

/-! ## A312140.P16557486338365459525

`A004525(n)+A311843(n)-A004525(A004525(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A312140

/-- `A004525(n)+A311843(n)-A004525(A004525(n))` -/
def P16557486338365459525.Spec : Prop :=
  ∀ n, P16557486338365459525.a n = A312140 n

theorem P16557486338365459525.correct : P16557486338365459525.Spec := by
  intro n
  simp only [A312140]

end A312140

/-! ## A312140.P18086382102593131684

`A314829(n)-A046978(n)`
-/

namespace A312140.P18086382102593131684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n - A046978 n

end

end A312140.P18086382102593131684

namespace A312140

/-- `A314829(n)-A046978(n)` -/
def P18086382102593131684.Spec : Prop :=
  ∀ n, P18086382102593131684.a n = A312140 n

end A312140

/-! ## A312140.P10788667340834755723

`A201629(A004525(n))+A314829(n)-A004525(n)`
-/

namespace A312140.P10788667340834755723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A004525 n).toNat + (A314829 n - A004525 n)

end

end A312140.P10788667340834755723

namespace A312140

/-- `A201629(A004525(n))+A314829(n)-A004525(n)` -/
def P10788667340834755723.Spec : Prop :=
  ∀ n, P10788667340834755723.a n = A312140 n

end A312140

/-! ## A312140.P599938994343540928

`A008458(n)+A008486(n)-A313480(n)`
-/

namespace A312140.P599938994343540928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313480 n)

end

end A312140.P599938994343540928

namespace A312140

/-- `A008458(n)+A008486(n)-A313480(n)` -/
def P599938994343540928.Spec : Prop :=
  ∀ n, P599938994343540928.a n = A312140 n

end A312140

/-! ## A312140.P4263356361831593480

`A314896(n)-A004525(A004525(n))`
-/

namespace A312140.P4263356361831593480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n - A004525 (A004525 n).toNat

end

end A312140.P4263356361831593480

namespace A312140

/-- `A314896(n)-A004525(A004525(n))` -/
def P4263356361831593480.Spec : Prop :=
  ∀ n, P4263356361831593480.a n = A312140 n

end A312140

/-! ## A312140.P5505860042656798083

`A313115(n)-A004525(n-A004525(n))`
-/

namespace A312140.P5505860042656798083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A312140.P5505860042656798083

namespace A312140

/-- `A313115(n)-A004525(n-A004525(n))` -/
def P5505860042656798083.Spec : Prop :=
  ∀ n, P5505860042656798083.a n = A312140 n

end A312140

/-! ## A312140.P2408325324160603158

`A004525(A004525(n))+A312205(n)-A004525(n)`
-/

namespace A312140.P2408325324160603158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A312205 n - A004525 n)

end

end A312140.P2408325324160603158

namespace A312140

/-- `A004525(A004525(n))+A312205(n)-A004525(n)` -/
def P2408325324160603158.Spec : Prop :=
  ∀ n, P2408325324160603158.a n = A312140 n

end A312140

/-! ## A312140.P10320365977032920945

`A315259(n)-2*A004525(A004525(n))`
-/

namespace A312140.P10320365977032920945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - 2 * A004525 (A004525 n).toNat

end

end A312140.P10320365977032920945

namespace A312140

/-- `A315259(n)-2*A004525(A004525(n))` -/
def P10320365977032920945.Spec : Prop :=
  ∀ n, P10320365977032920945.a n = A312140 n

end A312140

/-! ## A312140.P240830731794636274

`A314969(n)-A004525(n)`
-/

namespace A312140.P240830731794636274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 n - A004525 n

end

end A312140.P240830731794636274

namespace A312140

/-- `A314969(n)-A004525(n)` -/
def P240830731794636274.Spec : Prop :=
  ∀ n, P240830731794636274.a n = A312140 n

end A312140

/-! ## A312140.P14605306682884102427

`(A312682(n)+A008574(n))/2`
-/

namespace A312140.P14605306682884102427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312682 n + A008574 n : ℚ) / 2

end

end A312140.P14605306682884102427

namespace A312140

/-- `(A312682(n)+A008574(n))/2` -/
def P14605306682884102427.Spec : Prop :=
  ∀ n, P14605306682884102427.a n = (A312140 n : ℚ)

end A312140

/-! ## A312140.P8114842856992758582

`A313258(n)-A004524(n+1)`
-/

namespace A312140.P8114842856992758582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313258 n - A004524 (n + 1)

end

end A312140.P8114842856992758582

namespace A312140

/-- `A313258(n)-A004524(n+1)` -/
def P8114842856992758582.Spec : Prop :=
  ∀ n, P8114842856992758582.a n = A312140 n

end A312140

/-! ## A312140.P11784010328681350260

`A004525(n)+A313258(n)-n`
-/

namespace A312140.P11784010328681350260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313258 n - (n : ℤ))

end

end A312140.P11784010328681350260

namespace A312140

/-- `A004525(n)+A313258(n)-n` -/
def P11784010328681350260.Spec : Prop :=
  ∀ n, P11784010328681350260.a n = A312140 n

end A312140

/-! ## A312140.P14025275894155662389

`Δ[A011861(n)]+A313793(n)-n`
-/

namespace A312140.P14025275894155662389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313793 n - (n : ℤ))

end

end A312140.P14025275894155662389

namespace A312140

/-- `Δ[A011861(n)]+A313793(n)-n` -/
def P14025275894155662389.Spec : Prop :=
  ∀ n, P14025275894155662389.a n = A312140 n

end A312140

/-! ## A312140.P4652019403132561874

`A313926(n)-n`
-/

namespace A312140.P4652019403132561874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313926 n - (n : ℤ)

end

end A312140.P4652019403132561874

namespace A312140

/-- `A313926(n)-n` -/
def P4652019403132561874.Spec : Prop :=
  ∀ n, P4652019403132561874.a n = A312140 n

end A312140

/-! ## A312140.P6591300153926388767

`A315520(n)-(A046978(n)+n)`
-/

namespace A312140.P6591300153926388767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - (A046978 n + (n : ℤ))

end

end A312140.P6591300153926388767

namespace A312140

/-- `A315520(n)-(A046978(n)+n)` -/
def P6591300153926388767.Spec : Prop :=
  ∀ n, P6591300153926388767.a n = A312140 n

end A312140

/-! ## A312140.P6740711874274872814

`A315543(n)-(A004525(A004525(n))+n)`
-/

namespace A312140.P6740711874274872814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315543 n - (A004525 (A004525 n).toNat + (n : ℤ))

end

end A312140.P6740711874274872814

namespace A312140

/-- `A315543(n)-(A004525(A004525(n))+n)` -/
def P6740711874274872814.Spec : Prop :=
  ∀ n, P6740711874274872814.a n = A312140 n

end A312140

/-! ## A312140.P8613675649398651501

`A004396(A313292(n))+n`
-/

namespace A312140.P8613675649398651501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313292 n).toNat + (n : ℤ)

end

end A312140.P8613675649398651501

namespace A312140

/-- `A004396(A313292(n))+n` -/
def P8613675649398651501.Spec : Prop :=
  ∀ n, P8613675649398651501.a n = A312140 n

end A312140

/-!
# A312141: Coordination sequence Gal.6.311.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312141, there is no canonical definition to state claims against.
-/

/-! ## A312141.P17841964479101941580

`A250120(n)-A341596(A003060(n))`
-/

namespace A312141.P17841964479101941580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A341596 (A003060 n).toNat

end

end A312141.P17841964479101941580

/-! ## A312141.P8815484058365797801

`A250120(n)-A327103(A181497(n))`
-/

namespace A312141.P8815484058365797801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A327103 (A181497 n).toNat

end

end A312141.P8815484058365797801

/-! ## A312141.P11983831703142604698

`A305052(A188532(n+1))+A250120(n)`
-/

namespace A312141.P11983831703142604698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305052 (A188532 (n + 1)).toNat + A250120 n

end

end A312141.P11983831703142604698

/-! ## A312141.P16412207342710920263

`A250120(n)-A124010(A034182(n+1))`
-/

namespace A312141.P16412207342710920263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A124010 (A034182 (n + 1)).toNat

end

end A312141.P16412207342710920263

/-! ## A312141.P7125576714775617895

`A312561(n)-A037800(A214200(n+1))`
-/

namespace A312141.P7125576714775617895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A037800 (A214200 (n + 1)).toNat

end

end A312141.P7125576714775617895

/-!
# A312142: Coordination sequence Gal.6.257.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312142, there is no canonical definition to state claims against.
-/

/-! ## A312142.P7115434346479835446

`A312139(n)+A076142(A048744(n+1))`
-/

namespace A312142.P7115434346479835446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312139 n + A076142 (A048744 (n + 1)).toNat

end

end A312142.P7115434346479835446

/-! ## A312142.P12700145528026420045

`A311860(n)+A001222(A147184(n+1))`
-/

namespace A312142.P12700145528026420045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311860 n + A001222 (A147184 (n + 1)).toNat

end

end A312142.P12700145528026420045

/-! ## A312142.P3580856059774037161

`or(A000035(A209969(n+1)), A312140(n))`
-/

namespace A312142.P3580856059774037161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A209969 (n + 1)).toNat) (A312140 n)

end

end A312142.P3580856059774037161

/-! ## A312142.P13261646245906290183

`A328979(A073631(2*(n+2)))+A312100(n)`
-/

namespace A312142.P13261646245906290183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (A073631 (2 * (n + 2))).toNat + A312100 n

end

end A312142.P13261646245906290183

/-! ## A312142.P9366287236141877167

`A312143(n)-A083895(A007051(n))`
-/

namespace A312142.P9366287236141877167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312143 n - A083895 (A007051 n).toNat

end

end A312142.P9366287236141877167

/-!
# A312143: Coordination sequence Gal.5.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312143, the canonical program `A312143.P2878235992731397495` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312143 has offset 0).

The definition of A312143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312143.P2878235992731397495

`A313682(n)-A253262(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A312143

/-- `A313682(n)-A253262(n)` -/
def P2878235992731397495.Spec : Prop :=
  ∀ n, P2878235992731397495.a n = A312143 n

theorem P2878235992731397495.correct : P2878235992731397495.Spec := by
  intro n
  simp only [A312143]

end A312143

/-! ## A312143.P4923323895308477057

`A151988(n)+A312077(n)-n`
-/

namespace A312143.P4923323895308477057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A312077 n - (n : ℤ))

end

end A312143.P4923323895308477057

namespace A312143

/-- `A151988(n)+A312077(n)-n` -/
def P4923323895308477057.Spec : Prop :=
  ∀ n, P4923323895308477057.a n = A312143 n

end A312143

/-! ## A312143.P5376660806869984983

`A047263(n+1)+A311535(n)-n`
-/

namespace A312143.P5376660806869984983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A311535 n - (n : ℤ))

end

end A312143.P5376660806869984983

namespace A312143

/-- `A047263(n+1)+A311535(n)-n` -/
def P5376660806869984983.Spec : Prop :=
  ∀ n, P5376660806869984983.a n = A312143 n

end A312143

/-! ## A312143.P3986042080352071626

`A005843(A008574(n))+n-A313476(n)`
-/

namespace A312143.P3986042080352071626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n).toNat + ((n : ℤ) - A313476 n)

end

end A312143.P3986042080352071626

namespace A312143

/-- `A005843(A008574(n))+n-A313476(n)` -/
def P3986042080352071626.Spec : Prop :=
  ∀ n, P3986042080352071626.a n = A312143 n

end A312143

/-! ## A312143.P4104348351753742369

`A008458(n)+A008486(n)-A313476(n)`
-/

namespace A312143.P4104348351753742369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313476 n)

end

end A312143.P4104348351753742369

namespace A312143

/-- `A008458(n)+A008486(n)-A313476(n)` -/
def P4104348351753742369.Spec : Prop :=
  ∀ n, P4104348351753742369.a n = A312143 n

end A312143

/-! ## A312143.P14988433086451713844

`A314886(n)-A330025(n)`
-/

namespace A312143.P14988433086451713844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314886 n - A330025 n

end

end A312143.P14988433086451713844

namespace A312143

/-- `A314886(n)-A330025(n)` -/
def P14988433086451713844.Spec : Prop :=
  ∀ n, P14988433086451713844.a n = A312143 n

end A312143

/-! ## A312143.P254158525957634687

`(A312684(n)+A008574(n))/2`
-/

namespace A312143.P254158525957634687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312684 n + A008574 n : ℚ) / 2

end

end A312143.P254158525957634687

namespace A312143

/-- `(A312684(n)+A008574(n))/2` -/
def P254158525957634687.Spec : Prop :=
  ∀ n, P254158525957634687.a n = (A312143 n : ℚ)

end A312143

/-! ## A312143.P4652486672786605841

`2*A008706(n)-A315684(n)`
-/

namespace A312143.P4652486672786605841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315684 n

end

end A312143.P4652486672786605841

namespace A312143

/-- `2*A008706(n)-A315684(n)` -/
def P4652486672786605841.Spec : Prop :=
  ∀ n, P4652486672786605841.a n = A312143 n

end A312143

/-! ## A312143.P1483733453372957163

`A008458(n)+A008574(n)-A315684(n)`
-/

namespace A312143.P1483733453372957163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315684 n)

end

end A312143.P1483733453372957163

namespace A312143

/-- `A008458(n)+A008574(n)-A315684(n)` -/
def P1483733453372957163.Spec : Prop :=
  ∀ n, P1483733453372957163.a n = A312143 n

end A312143

/-! ## A312143.P5341001926857580515

`A315536(n)-(A330025(n)+n)`
-/

namespace A312143.P5341001926857580515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315536 n - (A330025 n + (n : ℤ))

end

end A312143.P5341001926857580515

namespace A312143

/-- `A315536(n)-(A330025(n)+n)` -/
def P5341001926857580515.Spec : Prop :=
  ∀ n, P5341001926857580515.a n = A312143 n

end A312143

/-! ## A312143.P13224863593071370611

`A315742(n)-(A253262(n)+n)`
-/

namespace A312143.P13224863593071370611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - (A253262 n + (n : ℤ))

end

end A312143.P13224863593071370611

namespace A312143

/-- `A315742(n)-(A253262(n)+n)` -/
def P13224863593071370611.Spec : Prop :=
  ∀ n, P13224863593071370611.a n = A312143 n

end A312143

/-! ## A312143.P8847704894359901829

`A313928(n)-n`
-/

namespace A312143.P8847704894359901829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n - (n : ℤ)

end

end A312143.P8847704894359901829

namespace A312143

/-- `A313928(n)-n` -/
def P8847704894359901829.Spec : Prop :=
  ∀ n, P8847704894359901829.a n = A312143 n

end A312143

/-! ## A312143.P17487177700129061832

`A004396(A313295(n))+n`
-/

namespace A312143.P17487177700129061832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313295 n).toNat + (n : ℤ)

end

end A312143.P17487177700129061832

namespace A312143

/-- `A004396(A313295(n))+n` -/
def P17487177700129061832.Spec : Prop :=
  ∀ n, P17487177700129061832.a n = A312143 n

end A312143

/-!
# A312144: Coordination sequence Gal.6.151.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312144, the canonical program `A312144.P9659675028767289182` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312144 has offset 0).

The definition of A312144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312144.P13056919113455472293

`abs(9*n-A313474(n))`
-/

namespace A312144.P13056919113455472293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(9 * n : ℤ) - A313474 n|

end

end A312144.P13056919113455472293

namespace A312144

/-- `abs(9*n-A313474(n))` -/
def P13056919113455472293.Spec : Prop :=
  ∀ n, P13056919113455472293.a n = A312144 n

end A312144

/-! ## A312144.P9659675028767289182

`A313126(n)-round(n/3)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312144

/-- `A313126(n)-round(n/3)` -/
def P9659675028767289182.Spec : Prop :=
  ∀ n, P9659675028767289182.a n = A312144 n

theorem P9659675028767289182.correct : P9659675028767289182.Spec := by
  intro n
  simp only [A312144]

end A312144

/-! ## A312144.P13470292221342737405

`A314691(n)-A128834(n)`
-/

namespace A312144.P13470292221342737405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314691 n - A128834 n

end

end A312144.P13470292221342737405

namespace A312144

/-- `A314691(n)-A128834(n)` -/
def P13470292221342737405.Spec : Prop :=
  ∀ n, P13470292221342737405.a n = A312144 n

end A312144

/-! ## A312144.P12957026641578460677

`A313262(n)-A004524(n+1)`
-/

namespace A312144.P12957026641578460677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313262 n - A004524 (n + 1)

end

end A312144.P12957026641578460677

namespace A312144

/-- `A313262(n)-A004524(n+1)` -/
def P12957026641578460677.Spec : Prop :=
  ∀ n, P12957026641578460677.a n = A312144 n

end A312144

/-! ## A312144.P14479139208166223272

`A004396(n)+A313126(n)-n`
-/

namespace A312144.P14479139208166223272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313126 n - (n : ℤ))

end

end A312144.P14479139208166223272

namespace A312144

/-- `A004396(n)+A313126(n)-n` -/
def P14479139208166223272.Spec : Prop :=
  ∀ n, P14479139208166223272.a n = A312144 n

end A312144

/-! ## A312144.P15823606672194379524

`A004525(n)+A313262(n)-n`
-/

namespace A312144.P15823606672194379524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313262 n - (n : ℤ))

end

end A312144.P15823606672194379524

namespace A312144

/-- `A004525(n)+A313262(n)-n` -/
def P15823606672194379524.Spec : Prop :=
  ∀ n, P15823606672194379524.a n = A312144 n

end A312144

/-! ## A312144.P18023436550714339817

`abs(A008592(n)-(A313474(n)+n))`
-/

namespace A312144.P18023436550714339817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313474 n + (n : ℤ))|

end

end A312144.P18023436550714339817

namespace A312144

/-- `abs(A008592(n)-(A313474(n)+n))` -/
def P18023436550714339817.Spec : Prop :=
  ∀ n, P18023436550714339817.a n = A312144 n

end A312144

/-! ## A312144.P16374841873808171824

`abs(A008593(n)-(A315683(n)+n))`
-/

namespace A312144.P16374841873808171824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315683 n + (n : ℤ))|

end

end A312144.P16374841873808171824

namespace A312144

/-- `abs(A008593(n)-(A315683(n)+n))` -/
def P16374841873808171824.Spec : Prop :=
  ∀ n, P16374841873808171824.a n = A312144 n

end A312144

/-! ## A312144.P8670329123029687352

`A047513(n+1)+A311312(n)-n`
-/

namespace A312144.P8670329123029687352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + (A311312 n - (n : ℤ))

end

end A312144.P8670329123029687352

namespace A312144

/-- `A047513(n+1)+A311312(n)-n` -/
def P8670329123029687352.Spec : Prop :=
  ∀ n, P8670329123029687352.a n = A312144 n

end A312144

/-! ## A312144.P12441172246552771710

`A314903(n)-A004525(A004396(n))`
-/

namespace A312144.P12441172246552771710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n - A004525 (A004396 n).toNat

end

end A312144.P12441172246552771710

namespace A312144

/-- `A314903(n)-A004525(A004396(n))` -/
def P12441172246552771710.Spec : Prop :=
  ∀ n, P12441172246552771710.a n = A312144 n

end A312144

/-! ## A312144.P15679052100550106938

`A008576(n)+A313126(n)-A008486(n)`
-/

namespace A312144.P15679052100550106938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313126 n - A008486 n)

end

end A312144.P15679052100550106938

namespace A312144

/-- `A008576(n)+A313126(n)-A008486(n)` -/
def P15679052100550106938.Spec : Prop :=
  ∀ n, P15679052100550106938.a n = A312144 n

end A312144

/-! ## A312144.P2928781628886490321

`A008458(n)+A008486(n)-A313474(n)`
-/

namespace A312144.P2928781628886490321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313474 n)

end

end A312144.P2928781628886490321

namespace A312144

/-- `A008458(n)+A008486(n)-A313474(n)` -/
def P2928781628886490321.Spec : Prop :=
  ∀ n, P2928781628886490321.a n = A312144 n

end A312144

/-! ## A312144.P3187384060418236908

`A008458(n)+A008574(n)-A315683(n)`
-/

namespace A312144.P3187384060418236908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315683 n)

end

end A312144.P3187384060418236908

namespace A312144

/-- `A008458(n)+A008574(n)-A315683(n)` -/
def P3187384060418236908.Spec : Prop :=
  ∀ n, P3187384060418236908.a n = A312144 n

end A312144

/-! ## A312144.P13133817939658824804

`A004396(n)+A311312(n)-A004525(A004396(n))`
-/

namespace A312144.P13133817939658824804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311312 n - A004525 (A004396 n).toNat)

end

end A312144.P13133817939658824804

namespace A312144

/-- `A004396(n)+A311312(n)-A004525(A004396(n))` -/
def P13133817939658824804.Spec : Prop :=
  ∀ n, P13133817939658824804.a n = A312144 n

end A312144

/-! ## A312144.P2285955733874803657

`A314970(n)-A004525(n)`
-/

namespace A312144.P2285955733874803657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314970 n - A004525 n

end

end A312144.P2285955733874803657

namespace A312144

/-- `A314970(n)-A004525(n)` -/
def P2285955733874803657.Spec : Prop :=
  ∀ n, P2285955733874803657.a n = A312144 n

end A312144

/-! ## A312144.P12815341400766244426

`Δ[A011848(n)]+A314970(n)-n`
-/

namespace A312144.P12815341400766244426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314970 n - (n : ℤ))

end

end A312144.P12815341400766244426

namespace A312144

/-- `Δ[A011848(n)]+A314970(n)-n` -/
def P12815341400766244426.Spec : Prop :=
  ∀ n, P12815341400766244426.a n = A312144 n

end A312144

/-! ## A312144.P6183746854349219222

`A313930(n)-n`
-/

namespace A312144.P6183746854349219222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313930 n - (n : ℤ)

end

end A312144.P6183746854349219222

namespace A312144

/-- `A313930(n)-n` -/
def P6183746854349219222.Spec : Prop :=
  ∀ n, P6183746854349219222.a n = A312144 n

end A312144

/-! ## A312144.P7095540148516036718

`A004396(A313297(n))+n`
-/

namespace A312144.P7095540148516036718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313297 n).toNat + (n : ℤ)

end

end A312144.P7095540148516036718

namespace A312144

/-- `A004396(A313297(n))+n` -/
def P7095540148516036718.Spec : Prop :=
  ∀ n, P7095540148516036718.a n = A312144 n

end A312144

/-! ## A312144.P264577263211146714

`A004396(n)+A004396(A312206(n)+n)`
-/

namespace A312144.P264577263211146714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A312206 n + (n : ℤ)).toNat

end

end A312144.P264577263211146714

namespace A312144

/-- `A004396(n)+A004396(A312206(n)+n)` -/
def P264577263211146714.Spec : Prop :=
  ∀ n, P264577263211146714.a n = A312144 n

end A312144

/-! ## A312144.P4185240354809703019

`A004396(n)+A004396(A313126(n)+n)`
-/

namespace A312144.P4185240354809703019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313126 n + (n : ℤ)).toNat

end

end A312144.P4185240354809703019

namespace A312144

/-- `A004396(n)+A004396(A313126(n)+n)` -/
def P4185240354809703019.Spec : Prop :=
  ∀ n, P4185240354809703019.a n = A312144 n

end A312144

/-!
# A312145: Coordination sequence Gal.6.386.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312145, there is no canonical definition to state claims against.
-/

/-! ## A312145.P9521199202105195850

`∑[A137266(A022953(n+1))]`
-/

namespace A312145.P9521199202105195850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137266 (A022953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312145.P9521199202105195850

/-! ## A312145.P16373677248288681325

`A311531(n)+A102675(A148571(n))`
-/

namespace A312145.P16373677248288681325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311531 n + A102675 (A148571 n).toNat

end

end A312145.P16373677248288681325

/-! ## A312145.P6010616119030271525

`A312151(n)-A170959(A006721(n))`
-/

namespace A312145.P6010616119030271525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312151 n - A170959 (A006721 n).toNat

end

end A312145.P6010616119030271525

/-!
# A312146: Coordination sequence Gal.6.375.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312146, there is no canonical definition to state claims against.
-/

/-! ## A312146.P8597438379885574704

`A312140(n)+A046079(A248767(n+1))`
-/

namespace A312146.P8597438379885574704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A046079 (A248767 (n + 1)).toNat

end

end A312146.P8597438379885574704

/-! ## A312146.P5760206008528833888

`(A324575(A248767(n+1))+A312140(n))%A186916(n+1)`
-/

namespace A312146.P5760206008528833888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324575 (A248767 (n + 1)).toNat + A312140 n) (A186916 (n + 1))

end

end A312146.P5760206008528833888

/-! ## A312146.P16143578398692265047

`(A324575(A248767(n+1))+A312140(n))*A008836(n+1)²`
-/

namespace A312146.P16143578398692265047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A324575 (A248767 (n + 1)).toNat + A312140 n) * A008836 (n + 1) ^ 2

end

end A312146.P16143578398692265047

/-! ## A312146.P2657396558863546931

`A310351(n)-A061397(A294754(n))`
-/

namespace A312146.P2657396558863546931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310351 n - A061397 (A294754 n).toNat

end

end A312146.P2657396558863546931

/-! ## A312146.P2829333032426456486

`A294242(A000040(3*(n+1)))-A156348(A000085(n))`
-/

namespace A312146.P2829333032426456486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294242 (A000040 (3 * (n + 1))).toNat - A156348 (A000085 n).toNat

end

end A312146.P2829333032426456486

/-!
# A312147: Coordination sequence Gal.6.377.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312147, there is no canonical definition to state claims against.
-/

/-! ## A312147.P10533869080331994498

`A312084(n)+A001222(A076843(n+1))`
-/

namespace A312147.P10533869080331994498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312084 n + A001222 (A076843 (n + 1)).toNat

end

end A312147.P10533869080331994498

/-! ## A312147.P8946916290210512593

`A312139(n)+A102675(A003462(n))`
-/

namespace A312147.P8946916290210512593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312139 n + A102675 (A003462 n).toNat

end

end A312147.P8946916290210512593

/-! ## A312147.P16033233701793287347

`A312140(n)+A014082(A173253(n))`
-/

namespace A312147.P16033233701793287347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + A014082 (A173253 n).toNat

end

end A312147.P16033233701793287347

/-! ## A312147.P18068712756376779901

`A312162(n)-A033665(A057755(n))`
-/

namespace A312147.P18068712756376779901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n - A033665 (A057755 n).toNat

end

end A312147.P18068712756376779901

/-! ## A312147.P3184372189031381607

`A313147(n)-A326194(A000110(n))`
-/

namespace A312147.P3184372189031381607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n - A326194 (A000110 n).toNat

end

end A312147.P3184372189031381607

/-!
# A312148: Coordination sequence Gal.6.477.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312148, there is no canonical definition to state claims against.
-/

/-! ## A312148.P15388770730038487643

`A312143(n)-A178798(A003248(n+1))`
-/

namespace A312148.P15388770730038487643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312143 n - A178798 (A003248 (n + 1)).toNat

end

end A312148.P15388770730038487643

/-! ## A312148.P13239056374077070687

`∑[A001222(A041863(n)+n²)+1]`
-/

namespace A312148.P13239056374077070687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A041863 n + (n ^ 2 : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312148.P13239056374077070687

/-! ## A312148.P7747281166850678730

`A312147(n)+A055641(A002523(n))`
-/

namespace A312148.P7747281166850678730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312147 n + A055641 (A002523 n).toNat

end

end A312148.P7747281166850678730

/-! ## A312148.P18362473179413816265

`A311289(n)+A001221(A074859(n))`
-/

namespace A312148.P18362473179413816265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A001221 (A074859 n).toNat

end

end A312148.P18362473179413816265

/-! ## A312148.P10568340327315796247

`A312150(n)+A178798(A326495(n))`
-/

namespace A312148.P10568340327315796247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312150 n + A178798 (A326495 n).toNat

end

end A312148.P10568340327315796247

/-!
# A312149: Coordination sequence Gal.6.309.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312149, there is no canonical definition to state claims against.
-/

/-! ## A312149.P261040324463426633

`record[A312150(n)-A036601(n)]`
-/

namespace A312149.P261040324463426633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312150 n - A036601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312149.P261040324463426633

/-! ## A312149.P888945862335382561

`A312150(n)-A036601(A004907(n+1))`
-/

namespace A312149.P888945862335382561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312150 n - A036601 (A004907 (n + 1)).toNat

end

end A312149.P888945862335382561

/-! ## A312149.P3233604939152608788

`A312150(n)-A185284(A029747(n+1))`
-/

namespace A312149.P3233604939152608788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312150 n - A185284 (A029747 (n + 1)).toNat

end

end A312149.P3233604939152608788

/-! ## A312149.P16103888840542929065

`A312150(n)-A164292(A079191(n+1))`
-/

namespace A312149.P16103888840542929065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312150 n - A164292 (A079191 (n + 1)).toNat

end

end A312149.P16103888840542929065

/-! ## A312149.P352803316213726958

`A312150(n)-A185284(A096182(n+1))`
-/

namespace A312149.P352803316213726958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312150 n - A185284 (A096182 (n + 1)).toNat

end

end A312149.P352803316213726958

/-!
# A312150: Coordination sequence Gal.6.310.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312150, there is no canonical definition to state claims against.
-/

/-! ## A312150.P12604553924216921582

`A312149(n)+A036601(A004907(n+1))`
-/

namespace A312150.P12604553924216921582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312149 n + A036601 (A004907 (n + 1)).toNat

end

end A312150.P12604553924216921582

/-! ## A312150.P12553299452332749000

`A312149(n)+A185284(A029747(n+1))`
-/

namespace A312150.P12553299452332749000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312149 n + A185284 (A029747 (n + 1)).toNat

end

end A312150.P12553299452332749000

/-! ## A312150.P9144683469690083545

`A312149(n)+A164292(A079191(n+1))`
-/

namespace A312150.P9144683469690083545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312149 n + A164292 (A079191 (n + 1)).toNat

end

end A312150.P9144683469690083545

/-! ## A312150.P3543236432755351685

`A312149(n)+A185284(A096182(n+1))`
-/

namespace A312150.P3543236432755351685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312149 n + A185284 (A096182 (n + 1)).toNat

end

end A312150.P3543236432755351685

/-! ## A312150.P5165412043610794921

`A312149(n)+A185284(A047363(2*n+3))`
-/

namespace A312150.P5165412043610794921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312149 n + A185284 (A047363 (2 * n + 3)).toNat

end

end A312150.P5165412043610794921

/-!
# A312151: Coordination sequence Gal.6.133.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312151, the canonical program `A312151.P16179426876035507423` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312151 has offset 0).

The definition of A312151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312151.P16179426876035507423

`A311613(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A312151

/-- `A311613(n)+Δ[A011864(n)]` -/
def P16179426876035507423.Spec : Prop :=
  ∀ n, P16179426876035507423.a n = A312151 n

theorem P16179426876035507423.correct : P16179426876035507423.Spec := by
  intro n
  simp only [A312151]

end A312151

/-! ## A312151.P2886563183790844758

`A312562(n)-Δ[A011864(n)]`
-/

namespace A312151.P2886563183790844758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312562 n - (f1 (n + 1) - f1 n)

end

end A312151.P2886563183790844758

namespace A312151

/-- `A312562(n)-Δ[A011864(n)]` -/
def P2886563183790844758.Spec : Prop :=
  ∀ n, P2886563183790844758.a n = A312151 n

end A312151

/-! ## A312151.P8628796880678022537

`abs(A008592(n)-A315682(n))`
-/

namespace A312151.P8628796880678022537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315682 n|

end

end A312151.P8628796880678022537

namespace A312151

/-- `abs(A008592(n)-A315682(n))` -/
def P8628796880678022537.Spec : Prop :=
  ∀ n, P8628796880678022537.a n = A312151 n

end A312151

/-! ## A312151.P3694636686785194192

`2*A008706(n)-A315682(n)`
-/

namespace A312151.P3694636686785194192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315682 n

end

end A312151.P3694636686785194192

namespace A312151

/-- `2*A008706(n)-A315682(n)` -/
def P3694636686785194192.Spec : Prop :=
  ∀ n, P3694636686785194192.a n = A312151 n

end A312151

/-! ## A312151.P459977605340094009

`A008458(n)+A008574(n)-A315682(n)`
-/

namespace A312151.P459977605340094009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315682 n)

end

end A312151.P459977605340094009

namespace A312151

/-- `A008458(n)+A008574(n)-A315682(n)` -/
def P459977605340094009.Spec : Prop :=
  ∀ n, P459977605340094009.a n = A312151 n

end A312151

/-! ## A312151.P10792598765042831668

`A315682(n)-A005843(A315682(n)-A008706(n))`
-/

namespace A312151.P10792598765042831668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315682 n - A005843 (A315682 n - A008706 n).toNat

end

end A312151.P10792598765042831668

namespace A312151

/-- `A315682(n)-A005843(A315682(n)-A008706(n))` -/
def P10792598765042831668.Spec : Prop :=
  ∀ n, P10792598765042831668.a n = A312151 n

end A312151

/-! ## A312151.P14325134619858353156

`A005843(A008706(n))-A315682(n)`
-/

namespace A312151.P14325134619858353156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315682 n

end

end A312151.P14325134619858353156

namespace A312151

/-- `A005843(A008706(n))-A315682(n)` -/
def P14325134619858353156.Spec : Prop :=
  ∀ n, P14325134619858353156.a n = A312151 n

end A312151

/-! ## A312151.P16655750354139721612

`A299909(A313128(n))/6`
-/

namespace A312151.P16655750354139721612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299909 (A313128 n).toNat : ℚ) / 6

end

end A312151.P16655750354139721612

namespace A312151

/-- `A299909(A313128(n))/6` -/
def P16655750354139721612.Spec : Prop :=
  ∀ n, P16655750354139721612.a n = (A312151 n : ℚ)

end A312151

/-! ## A312151.P11592644991046978129

`A004396(A312209(n)+2*n)`
-/

namespace A312151.P11592644991046978129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312209 n + (2 * n : ℤ)).toNat

end

end A312151.P11592644991046978129

namespace A312151

/-- `A004396(A312209(n)+2*n)` -/
def P11592644991046978129.Spec : Prop :=
  ∀ n, P11592644991046978129.a n = A312151 n

end A312151

/-! ## A312151.P11934917595516970814

`A004396(A312209(n)+n+n)`
-/

namespace A312151.P11934917595516970814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312209 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312151.P11934917595516970814

namespace A312151

/-- `A004396(A312209(n)+n+n)` -/
def P11934917595516970814.Spec : Prop :=
  ∀ n, P11934917595516970814.a n = A312151 n

end A312151

/-!
# A312152: Coordination sequence Gal.6.134.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312152, the canonical program `A312152.P14206861352301570908` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312152 has offset 0).

The definition of A312152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312152.P14206861352301570908

`A004396(n)+A311549(n)-A004525(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A312152

/-- `A004396(n)+A311549(n)-A004525(n)` -/
def P14206861352301570908.Spec : Prop :=
  ∀ n, P14206861352301570908.a n = A312152 n

theorem P14206861352301570908.correct : P14206861352301570908.Spec := by
  intro n
  simp only [A312152]

end A312152

/-! ## A312152.P5480155956686070652

`A004525(A004396(n))+A312206(n)-A004525(n)`
-/

namespace A312152.P5480155956686070652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312206 n - A004525 n)

end

end A312152.P5480155956686070652

namespace A312152

/-- `A004525(A004396(n))+A312206(n)-A004525(n)` -/
def P5480155956686070652.Spec : Prop :=
  ∀ n, P5480155956686070652.a n = A312152 n

end A312152

/-! ## A312152.P16751385943881095630

`abs(A008592(n)-A315681(n))`
-/

namespace A312152.P16751385943881095630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315681 n|

end

end A312152.P16751385943881095630

namespace A312152

/-- `abs(A008592(n)-A315681(n))` -/
def P16751385943881095630.Spec : Prop :=
  ∀ n, P16751385943881095630.a n = A312152 n

end A312152

/-! ## A312152.P15629911979215604341

`2*A008706(n)-A315681(n)`
-/

namespace A312152.P15629911979215604341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315681 n

end

end A312152.P15629911979215604341

namespace A312152

/-- `2*A008706(n)-A315681(n)` -/
def P15629911979215604341.Spec : Prop :=
  ∀ n, P15629911979215604341.a n = A312152 n

end A312152

/-! ## A312152.P7815306319749540498

`A008458(n)+A008574(n)-A315681(n)`
-/

namespace A312152.P7815306319749540498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315681 n)

end

end A312152.P7815306319749540498

namespace A312152

/-- `A008458(n)+A008574(n)-A315681(n)` -/
def P7815306319749540498.Spec : Prop :=
  ∀ n, P7815306319749540498.a n = A312152 n

end A312152

/-! ## A312152.P15907751778358789476

`A315681(n)-A005843(A315681(n)-A008706(n))`
-/

namespace A312152.P15907751778358789476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - A005843 (A315681 n - A008706 n).toNat

end

end A312152.P15907751778358789476

namespace A312152

/-- `A315681(n)-A005843(A315681(n)-A008706(n))` -/
def P15907751778358789476.Spec : Prop :=
  ∀ n, P15907751778358789476.a n = A312152 n

end A312152

/-! ## A312152.P14584033933568090156

`A313129(n)-round(n/3)`
-/

namespace A312152.P14584033933568090156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313129 n - SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A312152.P14584033933568090156

namespace A312152

/-- `A313129(n)-round(n/3)` -/
def P14584033933568090156.Spec : Prop :=
  ∀ n, P14584033933568090156.a n = A312152 n

end A312152

/-! ## A312152.P17802162250325562567

`A008576(n)+A313129(n)-A008486(n)`
-/

namespace A312152.P17802162250325562567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313129 n - A008486 n)

end

end A312152.P17802162250325562567

namespace A312152

/-- `A008576(n)+A313129(n)-A008486(n)` -/
def P17802162250325562567.Spec : Prop :=
  ∀ n, P17802162250325562567.a n = A312152 n

end A312152

/-! ## A312152.P5586819504230160989

`A314974(n)-A004525(n)`
-/

namespace A312152.P5586819504230160989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314974 n - A004525 n

end

end A312152.P5586819504230160989

namespace A312152

/-- `A314974(n)-A004525(n)` -/
def P5586819504230160989.Spec : Prop :=
  ∀ n, P5586819504230160989.a n = A312152 n

end A312152

/-! ## A312152.P11748338834237418953

`A314974(n)-Δ[A054925(n)]`
-/

namespace A312152.P11748338834237418953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314974 n - (f1 (n + 1) - f1 n)

end

end A312152.P11748338834237418953

namespace A312152

/-- `A314974(n)-Δ[A054925(n)]` -/
def P11748338834237418953.Spec : Prop :=
  ∀ n, P11748338834237418953.a n = A312152 n

end A312152

/-! ## A312152.P13590929784611656412

`A005843(A008706(n))-A315681(n)`
-/

namespace A312152.P13590929784611656412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315681 n

end

end A312152.P13590929784611656412

namespace A312152

/-- `A005843(A008706(n))-A315681(n)` -/
def P13590929784611656412.Spec : Prop :=
  ∀ n, P13590929784611656412.a n = A312152 n

end A312152

/-!
# A312153: Coordination sequence Gal.6.390.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312153, there is no canonical definition to state claims against.
-/

/-! ## A312153.P14614482208757559011

`A312154(A087051(n))`
-/

namespace A312153.P14614482208757559011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312154 (A087051 n).toNat

end

end A312153.P14614482208757559011

/-! ## A312153.P6854367201121695517

`A312154(A227549(n+1))`
-/

namespace A312153.P6854367201121695517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312154 (A227549 (n + 1)).toNat

end

end A312153.P6854367201121695517

/-! ## A312153.P15723685401808193522

`A312154(A396204(n+1))`
-/

namespace A312153.P15723685401808193522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312154 (A396204 (n + 1)).toNat

end

end A312153.P15723685401808193522

/-! ## A312153.P11593163465867566777

`A312154(n^A213217(n))`
-/

namespace A312153.P11593163465867566777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312154 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A312153.P11593163465867566777

/-! ## A312153.P17716870662162749734

`A312154(n^A229889(n))`
-/

namespace A312153.P17716870662162749734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312154 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A229889 n : ℤ))).toNat

end

end A312153.P17716870662162749734

/-!
# A312155: Coordination sequence Gal.5.148.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312155, there is no canonical definition to state claims against.
-/

/-! ## A312155.P16742259744111139607

`A311997(n)+A243224(A007911(n+3))`
-/

namespace A312155.P16742259744111139607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311997 n + A243224 (A007911 (n + 3)).toNat

end

end A312155.P16742259744111139607

/-! ## A312155.P12974311922883015337

`A056975(A237015(n+1))+A002541(2*(n+1))`
-/

namespace A312155.P12974311922883015337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056975 (A237015 (n + 1)).toNat + A002541 (2 * (n + 1))

end

end A312155.P12974311922883015337

/-! ## A312155.P4431767400120237037

`∑[A001222(A213824(2*n+1)+n+1)]`
-/

namespace A312155.P4431767400120237037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A213824 (2 * n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312155.P4431767400120237037

/-! ## A312155.P8814291563751792200

`A311493(n)+A102673(A333249(n))`
-/

namespace A312155.P8814291563751792200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 n + A102673 (A333249 n).toNat

end

end A312155.P8814291563751792200

/-! ## A312155.P5958309439019058077

`A314908(n)-A278700(A140555(n+1))`
-/

namespace A312155.P5958309439019058077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314908 n - A278700 (A140555 (n + 1)).toNat

end

end A312155.P5958309439019058077

/-!
# A312156: Coordination sequence Gal.5.93.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312156, there is no canonical definition to state claims against.
-/

/-! ## A312156.P7482538379920384010

`xor(A312157(n), A340369(A253294(n+1)))`
-/

namespace A312156.P7482538379920384010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A312157 n) (A340369 (A253294 (n + 1)).toNat)

end

end A312156.P7482538379920384010

/-! ## A312156.P340708144922449590

`A312051(n)+A241460(n+2)`
-/

namespace A312156.P340708144922449590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312051 n + A241460 (n + 2)

end

end A312156.P340708144922449590

/-! ## A312156.P8404853656888951568

`∑[A055089(∑[A187452(n+1)])]`
-/

namespace A312156.P8404853656888951568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187452 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312156.P8404853656888951568

/-! ## A312156.P7179160130302672375

`∑[A055091(A239569(n+3)+1)]`
-/

namespace A312156.P7179160130302672375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A239569 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312156.P7179160130302672375

/-! ## A312156.P9040316369005672270

`A385869(n+7)+A056170(A000667(n))`
-/

namespace A312156.P9040316369005672270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385869 (n + 7) + A056170 (A000667 n).toNat

end

end A312156.P9040316369005672270

/-!
# A312157: Coordination sequence Gal.6.430.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312157, there is no canonical definition to state claims against.
-/

/-! ## A312157.P837135011950096150

`A106744(A311942(n)+A057510(n))`
-/

namespace A312157.P837135011950096150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A311942 n + A057510 n).toNat

end

end A312157.P837135011950096150

/-! ## A312157.P85661083812794286

`A312142(n)+A275855(A323340(n))`
-/

namespace A312157.P85661083812794286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312142 n + A275855 (A323340 n).toNat

end

end A312157.P85661083812794286

/-! ## A312157.P1234723378989645084

`A313125(n)-A001221(A107477(n))`
-/

namespace A312157.P1234723378989645084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n - A001221 (A107477 n).toNat

end

end A312157.P1234723378989645084

/-! ## A312157.P10523277856087980939

`A312561(n)-A180160(A340824(n+1))`
-/

namespace A312157.P10523277856087980939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A180160 (A340824 (n + 1)).toNat

end

end A312157.P10523277856087980939

/-! ## A312157.P16231589756347281208

`xor(A312156(n), A340369(A253294(n+1)))`
-/

namespace A312157.P16231589756347281208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A312156 n) (A340369 (A253294 (n + 1)).toNat)

end

end A312157.P16231589756347281208

/-!
# A312158: Coordination sequence Gal.6.285.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312158, there is no canonical definition to state claims against.
-/

/-! ## A312158.P2294903717274467669

`A312159(n)+A178798(A176488(n))`
-/

namespace A312158.P2294903717274467669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312159 n + A178798 (A176488 n).toNat

end

end A312158.P2294903717274467669

/-! ## A312158.P14430012760307876267

`A312159(n)-A178798(A035515(n))`
-/

namespace A312158.P14430012760307876267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312159 n - A178798 (A035515 n).toNat

end

end A312158.P14430012760307876267

/-! ## A312158.P55032452324082700

`A312159(n)-A178798(A347975(n))`
-/

namespace A312158.P55032452324082700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312159 n - A178798 (A347975 n).toNat

end

end A312158.P55032452324082700

/-! ## A312158.P13097021929591421870

`A312159(n)+A178798(A347975(n)+2)`
-/

namespace A312158.P13097021929591421870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312159 n + A178798 (A347975 n + 2).toNat

end

end A312158.P13097021929591421870

/-! ## A312158.P3502539983014307890

`A312159(n)-A340999(A032758(2*n+1))`
-/

namespace A312158.P3502539983014307890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312159 n - A340999 ((A032758 (2 * n + 1)).toNat + 204)

end

end A312158.P3502539983014307890

/-!
# A312159: Coordination sequence Gal.6.271.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312159, there is no canonical definition to state claims against.
-/

/-! ## A312159.P16150929339269842997

`A312158(n)+A178798(A035515(n))`
-/

namespace A312159.P16150929339269842997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312158 n + A178798 (A035515 n).toNat

end

end A312159.P16150929339269842997

/-! ## A312159.P3447509094248163651

`A312158(n)+A178798(A347975(n))`
-/

namespace A312159.P3447509094248163651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312158 n + A178798 (A347975 n).toNat

end

end A312159.P3447509094248163651

/-! ## A312159.P2172736181727783090

`A312158(n)-A178798(A176488(n))`
-/

namespace A312159.P2172736181727783090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312158 n - A178798 (A176488 n).toNat

end

end A312159.P2172736181727783090

/-! ## A312159.P8143589027687505269

`A312158(n)+A185036(A008277(n+1))`
-/

namespace A312159.P8143589027687505269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312158 n + A185036 (A008277 (n + 1)).toNat

end

end A312159.P8143589027687505269

/-!
# A312160: Coordination sequence Gal.5.100.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312160, the canonical program `A312160.P12207429850201497885` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312160 has offset 0).

The definition of A312160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312160.P12207429850201497885

`A311548(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A312160

/-- `A311548(n)+Δ[A011862(n)]` -/
def P12207429850201497885.Spec : Prop :=
  ∀ n, P12207429850201497885.a n = A312160 n

theorem P12207429850201497885.correct : P12207429850201497885.Spec := by
  intro n
  simp only [A312160]

end A312160

/-! ## A312160.P1742622480877899392

`A004396(n)+A311548(n)-A004396(A004396(n))`
-/

namespace A312160.P1742622480877899392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311548 n - A004396 (A004396 n).toNat)

end

end A312160.P1742622480877899392

namespace A312160

/-- `A004396(n)+A311548(n)-A004396(A004396(n))` -/
def P1742622480877899392.Spec : Prop :=
  ∀ n, P1742622480877899392.a n = A312160 n

end A312160

/-! ## A312160.P5495810886852894827

`A314848(n)-A128834(A004396(n))`
-/

namespace A312160.P5495810886852894827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A128834 (A004396 n).toNat

end

end A312160.P5495810886852894827

namespace A312160

/-- `A314848(n)-A128834(A004396(n))` -/
def P5495810886852894827.Spec : Prop :=
  ∀ n, P5495810886852894827.a n = A312160 n

end A312160

/-! ## A312160.P16932934920624599089

`A314971(n)-A004396(A004396(n))`
-/

namespace A312160.P16932934920624599089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314971 n - A004396 (A004396 n).toNat

end

end A312160.P16932934920624599089

namespace A312160

/-- `A314971(n)-A004396(A004396(n))` -/
def P16932934920624599089.Spec : Prop :=
  ∀ n, P16932934920624599089.a n = A312160 n

end A312160

/-! ## A312160.P6979364179377061228

`(A312683(n)+A311344(n))/2`
-/

namespace A312160.P6979364179377061228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312683 n + A311344 n : ℚ) / 2

end

end A312160.P6979364179377061228

namespace A312160

/-- `(A312683(n)+A311344(n))/2` -/
def P6979364179377061228.Spec : Prop :=
  ∀ n, P6979364179377061228.a n = (A312160 n : ℚ)

end A312160

/-! ## A312160.P9546996629639517074

`abs(A008592(n)-A315680(n))`
-/

namespace A312160.P9546996629639517074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315680 n|

end

end A312160.P9546996629639517074

namespace A312160

/-- `abs(A008592(n)-A315680(n))` -/
def P9546996629639517074.Spec : Prop :=
  ∀ n, P9546996629639517074.a n = A312160 n

end A312160

/-! ## A312160.P393375550504389993

`2*A008706(n)-A315680(n)`
-/

namespace A312160.P393375550504389993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315680 n

end

end A312160.P393375550504389993

namespace A312160

/-- `2*A008706(n)-A315680(n)` -/
def P393375550504389993.Spec : Prop :=
  ∀ n, P393375550504389993.a n = A312160 n

end A312160

/-! ## A312160.P11812539012872403641

`A017281(n)%(A315680(n)+1)`
-/

namespace A312160.P11812539012872403641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017281 n) (A315680 n + 1)

end

end A312160.P11812539012872403641

namespace A312160

/-- `A017281(n)%(A315680(n)+1)` -/
def P11812539012872403641.Spec : Prop :=
  ∀ n, P11812539012872403641.a n = A312160 n

end A312160

/-! ## A312160.P11988326264622304583

`A008458(n)+A008574(n)-A315680(n)`
-/

namespace A312160.P11988326264622304583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315680 n)

end

end A312160.P11988326264622304583

namespace A312160

/-- `A008458(n)+A008574(n)-A315680(n)` -/
def P11988326264622304583.Spec : Prop :=
  ∀ n, P11988326264622304583.a n = A312160 n

end A312160

/-! ## A312160.P10671802758672601402

`∑{d}[A008592(n)-A315680(n), A000010(#)]`
-/

namespace A312160.P10671802758672601402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A312160.P10671802758672601402

namespace A312160

/-- `∑{d}[A008592(n)-A315680(n), A000010(#)]` -/
def P10671802758672601402.Spec : Prop :=
  ∀ n, P10671802758672601402.a n = A312160 n

end A312160

/-! ## A312160.P13608544224762303767

`A315680(n)-A005843(A315680(n)-A008706(n))`
-/

namespace A312160.P13608544224762303767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315680 n - A005843 (A315680 n - A008706 n).toNat

end

end A312160.P13608544224762303767

namespace A312160

/-- `A315680(n)-A005843(A315680(n)-A008706(n))` -/
def P13608544224762303767.Spec : Prop :=
  ∀ n, P13608544224762303767.a n = A312160 n

end A312160

/-! ## A312160.P2274036951491526255

`A313125(n)-A004396(n-A004396(n))`
-/

namespace A312160.P2274036951491526255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A312160.P2274036951491526255

namespace A312160

/-- `A313125(n)-A004396(n-A004396(n))` -/
def P2274036951491526255.Spec : Prop :=
  ∀ n, P2274036951491526255.a n = A312160 n

end A312160

/-! ## A312160.P15989715713860880197

`A005843(A008706(n))-A315680(n)`
-/

namespace A312160.P15989715713860880197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315680 n

end

end A312160.P15989715713860880197

namespace A312160

/-- `A005843(A008706(n))-A315680(n)` -/
def P15989715713860880197.Spec : Prop :=
  ∀ n, P15989715713860880197.a n = A312160 n

end A312160

/-! ## A312160.P7147157031582772057

`A311548(n)+A033183(A004771(n))`
-/

namespace A312160.P7147157031582772057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311548 n + A033183 (A004771 n).toNat

end

end A312160.P7147157031582772057

namespace A312160

/-- `A311548(n)+A033183(A004771(n))` -/
def P7147157031582772057.Spec : Prop :=
  ∀ n, P7147157031582772057.a n = A312160 n

end A312160

/-! ## A312160.P6362992683765561860

`A313153(n)-A033183(A004771(2*n))`
-/

namespace A312160.P6362992683765561860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313153 n - A033183 (A004771 (2 * n)).toNat

end

end A312160.P6362992683765561860

namespace A312160

/-- `A313153(n)-A033183(A004771(2*n))` -/
def P6362992683765561860.Spec : Prop :=
  ∀ n, P6362992683765561860.a n = A312160 n

end A312160

/-!
# A312161: Coordination sequence Gal.6.445.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312161, there is no canonical definition to state claims against.
-/

/-! ## A312161.P17239842919794954583

`A311943(n)+A220400(A073951(n+1))`
-/

namespace A312161.P17239842919794954583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311943 n + A220400 (A073951 (n + 1)).toNat

end

end A312161.P17239842919794954583

/-! ## A312161.P9200885809835326155

`∑[A333224(∑[A013948(n+1)])]`
-/

namespace A312161.P9200885809835326155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312161.P9200885809835326155

/-! ## A312161.P16137294233755677835

`∑[A007895(∑[A101867(3*(n+1))])]`
-/

namespace A312161.P16137294233755677835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101867 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312161.P16137294233755677835

/-! ## A312161.P3639973174450837505

`∑[A333224(∑[A095163(3*n+4)])]`
-/

namespace A312161.P3639973174450837505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095163 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312161.P3639973174450837505

/-! ## A312161.P12733245687866290201

`A312205(n)-val(A333894(3*(n+1))+1, 2)`
-/

namespace A312161.P12733245687866290201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312205 n - (SequenceMachineLib.valuation (A333894 (3 * (n + 1)) + 1).toNat 2 : ℤ)

end

end A312161.P12733245687866290201

/-!
# A312162: Coordination sequence Gal.6.233.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312162, the canonical program `A312162.P8460047677510331873` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312162 has offset 0).

The definition of A312162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312162.P12839662361560283702

`A313692(n)-A253262(n)`
-/

namespace A312162.P12839662361560283702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n - A253262 n

end

end A312162.P12839662361560283702

namespace A312162

/-- `A313692(n)-A253262(n)` -/
def P12839662361560283702.Spec : Prop :=
  ∀ n, P12839662361560283702.a n = A312162 n

end A312162

/-! ## A312162.P13415855249937351479

`A314898(n)-A330025(n)`
-/

namespace A312162.P13415855249937351479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n - A330025 n

end

end A312162.P13415855249937351479

namespace A312162

/-- `A314898(n)-A330025(n)` -/
def P13415855249937351479.Spec : Prop :=
  ∀ n, P13415855249937351479.a n = A312162 n

end A312162

/-! ## A312162.P8460047677510331873

`A047263(A008574(n)+1-A330025(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312162

/-- `A047263(A008574(n)+1-A330025(n))` -/
def P8460047677510331873.Spec : Prop :=
  ∀ n, P8460047677510331873.a n = A312162 n

theorem P8460047677510331873.correct : P8460047677510331873.Spec := by
  intro n
  simp only [A312162]

end A312162

/-! ## A312162.P10278108363806558394

`A047263(1-(A330025(n)-A008574(n)))`
-/

namespace A312162.P10278108363806558394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (1 - (A330025 n - A008574 n)).toNat

end

end A312162.P10278108363806558394

namespace A312162

/-- `A047263(1-(A330025(n)-A008574(n)))` -/
def P10278108363806558394.Spec : Prop :=
  ∀ n, P10278108363806558394.a n = A312162 n

theorem P10278108363806558394.correct : P10278108363806558394.Spec := by
  intro n
  simp only [A312162, Nat.add_sub_cancel, A312162.P10278108363806558394.a, A312162.P8460047677510331873.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A312162

/-! ## A312162.P13472999214201703929

`A313078(n)+A014019(n+3)`
-/

namespace A312162.P13472999214201703929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313078 n + A014019 (n + 3)

end

end A312162.P13472999214201703929

namespace A312162

/-- `A313078(n)+A014019(n+3)` -/
def P13472999214201703929.Spec : Prop :=
  ∀ n, P13472999214201703929.a n = A312162 n

end A312162

/-! ## A312162.P4269072365033470795

`A313116(n)-A330025(n-A330025(n))`
-/

namespace A312162.P4269072365033470795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A312162.P4269072365033470795

namespace A312162

/-- `A313116(n)-A330025(n-A330025(n))` -/
def P4269072365033470795.Spec : Prop :=
  ∀ n, P4269072365033470795.a n = A312162 n

end A312162

/-! ## A312162.P3806638066732788283

`A315255(n)-2*A330025(n)`
-/

namespace A312162.P3806638066732788283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315255 n - 2 * A330025 n

end

end A312162.P3806638066732788283

namespace A312162

/-- `A315255(n)-2*A330025(n)` -/
def P3806638066732788283.Spec : Prop :=
  ∀ n, P3806638066732788283.a n = A312162 n

end A312162

/-! ## A312162.P11591033177956923803

`abs(A008592(n)-A315679(n))`
-/

namespace A312162.P11591033177956923803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315679 n|

end

end A312162.P11591033177956923803

namespace A312162

/-- `abs(A008592(n)-A315679(n))` -/
def P11591033177956923803.Spec : Prop :=
  ∀ n, P11591033177956923803.a n = A312162 n

end A312162

/-! ## A312162.P16249507024283708144

`2*A008706(n)-A315679(n)`
-/

namespace A312162.P16249507024283708144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315679 n

end

end A312162.P16249507024283708144

namespace A312162

/-- `2*A008706(n)-A315679(n)` -/
def P16249507024283708144.Spec : Prop :=
  ∀ n, P16249507024283708144.a n = A312162 n

end A312162

/-! ## A312162.P4512327240684621956

`A008458(n)+A008574(n)-A315679(n)`
-/

namespace A312162.P4512327240684621956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315679 n)

end

end A312162.P4512327240684621956

namespace A312162

/-- `A008458(n)+A008574(n)-A315679(n)` -/
def P4512327240684621956.Spec : Prop :=
  ∀ n, P4512327240684621956.a n = A312162 n

end A312162

/-! ## A312162.P6684581698828121454

`A315679(n)-A005843(A315679(n)-A008706(n))`
-/

namespace A312162.P6684581698828121454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - A005843 (A315679 n - A008706 n).toNat

end

end A312162.P6684581698828121454

namespace A312162

/-- `A315679(n)-A005843(A315679(n)-A008706(n))` -/
def P6684581698828121454.Spec : Prop :=
  ∀ n, P6684581698828121454.a n = A312162 n

end A312162

/-! ## A312162.P16752310800984056937

`A311535(n)+A004525(A312684(n)-A311535(n))`
-/

namespace A312162.P16752310800984056937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n + A004525 (A312684 n - A311535 n).toNat

end

end A312162.P16752310800984056937

namespace A312162

/-- `A311535(n)+A004525(A312684(n)-A311535(n))` -/
def P16752310800984056937.Spec : Prop :=
  ∀ n, P16752310800984056937.a n = A312162 n

end A312162

/-! ## A312162.P12738677741649084088

`A313154(n)-Δ[A011858(n)]`
-/

namespace A312162.P12738677741649084088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n - (f1 (n + 1) - f1 n)

end

end A312162.P12738677741649084088

namespace A312162

/-- `A313154(n)-Δ[A011858(n)]` -/
def P12738677741649084088.Spec : Prop :=
  ∀ n, P12738677741649084088.a n = A312162 n

end A312162

/-! ## A312162.P5369585130025676228

`A313154(n)-A057354(n+1)`
-/

namespace A312162.P5369585130025676228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n - A057354 (n + 1)

end

end A312162.P5369585130025676228

namespace A312162

/-- `A313154(n)-A057354(n+1)` -/
def P5369585130025676228.Spec : Prop :=
  ∀ n, P5369585130025676228.a n = A312162 n

end A312162

/-! ## A312162.P16352494309584881427

`A313154(n)-A110654(A057354(2*n))`
-/

namespace A312162.P16352494309584881427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n - A110654 (A057354 (2 * n)).toNat

end

end A312162.P16352494309584881427

namespace A312162

/-- `A313154(n)-A110654(A057354(2*n))` -/
def P16352494309584881427.Spec : Prop :=
  ∀ n, P16352494309584881427.a n = A312162 n

end A312162

/-! ## A312162.P11272817901918764917

`A005843(A008706(n))-A315679(n)`
-/

namespace A312162.P11272817901918764917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315679 n

end

end A312162.P11272817901918764917

namespace A312162

/-- `A005843(A008706(n))-A315679(n)` -/
def P11272817901918764917.Spec : Prop :=
  ∀ n, P11272817901918764917.a n = A312162 n

end A312162

/-! ## A312162.P8919203295014106501

`A313154(n)-A008676(A016777(2*n))`
-/

namespace A312162.P8919203295014106501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n - A008676 (A016777 (2 * n)).toNat

end

end A312162.P8919203295014106501

namespace A312162

/-- `A313154(n)-A008676(A016777(2*n))` -/
def P8919203295014106501.Spec : Prop :=
  ∀ n, P8919203295014106501.a n = A312162 n

end A312162

/-!
# A312163: Coordination sequence Gal.6.234.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312163, the canonical program `A312163.P10738351713839419242` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312163 has offset 0).

The definition of A312163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312163.P10738351713839419242

`2*A313118(n)-A310455(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A312163

/-- `2*A313118(n)-A310455(n)` -/
def P10738351713839419242.Spec : Prop :=
  ∀ n, P10738351713839419242.a n = A312163 n

theorem P10738351713839419242.correct : P10738351713839419242.Spec := by
  intro n
  simp only [A312163]

end A312163

/-! ## A312163.P14946246888167270639

`abs(A008592(n)-A315678(n))`
-/

namespace A312163.P14946246888167270639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315678 n|

end

end A312163.P14946246888167270639

namespace A312163

/-- `abs(A008592(n)-A315678(n))` -/
def P14946246888167270639.Spec : Prop :=
  ∀ n, P14946246888167270639.a n = A312163 n

end A312163

/-! ## A312163.P6204305826685540046

`2*A008706(n)-A315678(n)`
-/

namespace A312163.P6204305826685540046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315678 n

end

end A312163.P6204305826685540046

namespace A312163

/-- `2*A008706(n)-A315678(n)` -/
def P6204305826685540046.Spec : Prop :=
  ∀ n, P6204305826685540046.a n = A312163 n

end A312163

/-! ## A312163.P551450828805304157

`A135042(2*n+1)-A315678(n)`
-/

namespace A312163.P551450828805304157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315678 n

end

end A312163.P551450828805304157

namespace A312163

/-- `A135042(2*n+1)-A315678(n)` -/
def P551450828805304157.Spec : Prop :=
  ∀ n, P551450828805304157.a n = A312163 n

end A312163

/-! ## A312163.P14315621507722995012

`A008458(n)+A008574(n)-A315678(n)`
-/

namespace A312163.P14315621507722995012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315678 n)

end

end A312163.P14315621507722995012

namespace A312163

/-- `A008458(n)+A008574(n)-A315678(n)` -/
def P14315621507722995012.Spec : Prop :=
  ∀ n, P14315621507722995012.a n = A312163 n

end A312163

/-! ## A312163.P6432996895924700310

`(A312685(n)+A311385(n))/2`
-/

namespace A312163.P6432996895924700310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312685 n + A311385 n : ℚ) / 2

end

end A312163.P6432996895924700310

namespace A312163

/-- `(A312685(n)+A311385(n))/2` -/
def P6432996895924700310.Spec : Prop :=
  ∀ n, P6432996895924700310.a n = (A312163 n : ℚ)

end A312163

/-! ## A312163.P6706617277780069801

`A311385(n)+A004525(A312685(n)-A311385(n))`
-/

namespace A312163.P6706617277780069801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311385 n + A004525 (A312685 n - A311385 n).toNat

end

end A312163.P6706617277780069801

namespace A312163

/-- `A311385(n)+A004525(A312685(n)-A311385(n))` -/
def P6706617277780069801.Spec : Prop :=
  ∀ n, P6706617277780069801.a n = A312163 n

end A312163

/-! ## A312163.P14243249820105997838

`A005843(A313118(n))-A310455(n)`
-/

namespace A312163.P14243249820105997838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313118 n).toNat - A310455 n

end

end A312163.P14243249820105997838

namespace A312163

/-- `A005843(A313118(n))-A310455(n)` -/
def P14243249820105997838.Spec : Prop :=
  ∀ n, P14243249820105997838.a n = A312163 n

end A312163

/-! ## A312163.P14150283685990816271

`A005843(A008706(n))-A315678(n)`
-/

namespace A312163.P14150283685990816271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315678 n

end

end A312163.P14150283685990816271

namespace A312163

/-- `A005843(A008706(n))-A315678(n)` -/
def P14150283685990816271.Spec : Prop :=
  ∀ n, P14150283685990816271.a n = A312163 n

end A312163

/-! ## A312163.P3144548952105587519

`A065502(A008458(n))-A315678(n)`
-/

namespace A312163.P3144548952105587519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315678 n

end

end A312163.P3144548952105587519

namespace A312163

/-- `A065502(A008458(n))-A315678(n)` -/
def P3144548952105587519.Spec : Prop :=
  ∀ n, P3144548952105587519.a n = A312163 n

end A312163

/-! ## A312163.P3822225491085409609

`A004525(A312685(n)+A311385(n))`
-/

namespace A312163.P3822225491085409609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312685 n + A311385 n).toNat

end

end A312163.P3822225491085409609

namespace A312163

/-- `A004525(A312685(n)+A311385(n))` -/
def P3822225491085409609.Spec : Prop :=
  ∀ n, P3822225491085409609.a n = A312163 n

end A312163

/-! ## A312163.P10823513512798613155

`A004525(A312209(n)+A311553(n))`
-/

namespace A312163.P10823513512798613155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312209 n + A311553 n).toNat

end

end A312163.P10823513512798613155

namespace A312163

/-- `A004525(A312209(n)+A311553(n))` -/
def P10823513512798613155.Spec : Prop :=
  ∀ n, P10823513512798613155.a n = A312163 n

end A312163

/-! ## A312163.P18425785242204292094

`A233583(A017281(n))-A315678(n)`
-/

namespace A312163.P18425785242204292094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315678 n

end

end A312163.P18425785242204292094

namespace A312163

/-- `A233583(A017281(n))-A315678(n)` -/
def P18425785242204292094.Spec : Prop :=
  ∀ n, P18425785242204292094.a n = A312163 n

end A312163

/-!
# A312164: Coordination sequence Gal.6.424.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312164, there is no canonical definition to state claims against.
-/

/-! ## A312164.P10746887685284209226

`A312127(n)+A312165(n)-A312128(n)`
-/

namespace A312164.P10746887685284209226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312127 n + (A312165 n - A312128 n)

end

end A312164.P10746887685284209226

/-! ## A312164.P7254064983200945789

`A312165(n)-A102683(A005316(n))`
-/

namespace A312164.P7254064983200945789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312165 n - A102683 (A005316 n).toNat

end

end A312164.P7254064983200945789

/-! ## A312164.P9697669013669177361

`A312165(n)-A025465(A335407(n))`
-/

namespace A312164.P9697669013669177361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312165 n - A025465 (A335407 n).toNat

end

end A312164.P9697669013669177361

/-! ## A312164.P5685316270063248028

`A312165(n)-A185284(A096182(n+1))`
-/

namespace A312164.P5685316270063248028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312165 n - A185284 (A096182 (n + 1)).toNat

end

end A312164.P5685316270063248028

/-! ## A312164.P17489837925883160385

`A312165(A062399(n))`
-/

namespace A312164.P17489837925883160385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312165 (A062399 n).toNat

end

end A312164.P17489837925883160385

/-!
# A312165: Coordination sequence Gal.6.407.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312165, there is no canonical definition to state claims against.
-/

/-! ## A312165.P5763664435964915548

`A312128(n)+A312164(n)-A312127(n)`
-/

namespace A312165.P5763664435964915548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312128 n + (A312164 n - A312127 n)

end

end A312165.P5763664435964915548

/-! ## A312165.P102640500155778757

`A312164(n)+A102683(A005316(n))`
-/

namespace A312165.P102640500155778757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312164 n + A102683 (A005316 n).toNat

end

end A312165.P102640500155778757

/-! ## A312165.P6906176339107254005

`A312164(n)+A025465(A335407(n))`
-/

namespace A312165.P6906176339107254005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312164 n + A025465 (A335407 n).toNat

end

end A312165.P6906176339107254005

/-! ## A312165.P4324785858730916213

`A316866(A343599(n)²)+A312164(n)`
-/

namespace A312165.P4324785858730916213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A343599 n ^ 2).toNat + A312164 n

end

end A312165.P4324785858730916213

/-! ## A312165.P7070458581447291947

`A312164(n)+A185284(A096182(n+1))`
-/

namespace A312165.P7070458581447291947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312164 n + A185284 (A096182 (n + 1)).toNat

end

end A312165.P7070458581447291947

/-!
# A312166: Coordination sequence Gal.6.498.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312166, there is no canonical definition to state claims against.
-/

/-! ## A312166.P3821270093555394585

`A312164(n)+A178798(A257083(n))`
-/

namespace A312166.P3821270093555394585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312164 n + A178798 (A257083 n).toNat

end

end A312166.P3821270093555394585

/-! ## A312166.P3727281060701865116

`A380573(A311940(n))`
-/

namespace A312166.P3727281060701865116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (A311940 n).toNat

end

end A312166.P3727281060701865116

/-! ## A312166.P6479207923782636963

`record[A038722(3*(n+1))-A008483(n)]`
-/

namespace A312166.P6479207923782636963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (3 * (n + 1)) - A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312166.P6479207923782636963

/-! ## A312166.P1222431748943746033

`A312104(n)+A089311(A109545(n))`
-/

namespace A312166.P1222431748943746033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312104 n + A089311 (A109545 n).toNat

end

end A312166.P1222431748943746033

/-! ## A312166.P7968224846324630917

`A312164(n)+A185284(A312139(n))`
-/

namespace A312166.P7968224846324630917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312164 n + A185284 (A312139 n).toNat

end

end A312166.P7968224846324630917

/-!
# A312168: Coordination sequence Gal.6.58.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312168, there is no canonical definition to state claims against.
-/

/-! ## A312168.P18419604664111612007

`A171178(A022144(n))-A008486(n)`
-/

namespace A312168.P18419604664111612007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171178 (A022144 n).toNat - A008486 n

end

end A312168.P18419604664111612007

/-! ## A312168.P10739416067720613686

`lt[A035002(A035002(n+1)), A132339(3*n+1)]`
-/

namespace A312168.P10739416067720613686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035002 (A035002 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132339 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A312168.P10739416067720613686

/-!
# A312169: Coordination sequence Gal.5.230.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312169, there is no canonical definition to state claims against.
-/

/-! ## A312169.P8237461030074722997

`A312172(n)-A007814(A148510(n))`
-/

namespace A312169.P8237461030074722997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312172 n - A007814 (A148510 n).toNat

end

end A312169.P8237461030074722997

/-! ## A312169.P11394129032939462487

`or(A098418(A056606(n)), A311818(n))`
-/

namespace A312169.P11394129032939462487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098418 (A056606 n).toNat) (A311818 n)

end

end A312169.P11394129032939462487

/-! ## A312169.P3885308111450789174

`or(A244415(A070743(n+1)), A311212(n))`
-/

namespace A312169.P3885308111450789174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A244415 (A070743 (n + 1)).toNat) (A311212 n)

end

end A312169.P3885308111450789174

/-! ## A312169.P6826289990413490066

`or(A244415(A070743(n+1)), A311818(n))`
-/

namespace A312169.P6826289990413490066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A244415 (A070743 (n + 1)).toNat) (A311818 n)

end

end A312169.P6826289990413490066

/-!
# A312170: Coordination sequence Gal.5.231.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312170, there is no canonical definition to state claims against.
-/

/-! ## A312170.P6653420072961206777

`eq[A012257(n), A342585(A131303(n+1))]`
-/

namespace A312170.P6653420072961206777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342585 (A131303 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312170.P6653420072961206777

/-! ## A312170.P13880284427876275744

`A250120(n)-A035232(A364467(3*n+4))`
-/

namespace A312170.P13880284427876275744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A035232 (A364467 (3 * n + 4)).toNat

end

end A312170.P13880284427876275744

/-! ## A312170.P3162924683324497753

`∪[record[A137152(3*n+1)], A137168(n+3)]`
-/

namespace A312170.P3162924683324497753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137152 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137168 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A312170.P3162924683324497753

/-! ## A312170.P6905101613168187161

`A313604(n)-A001221(A005493(n))`
-/

namespace A312170.P6905101613168187161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313604 n - A001221 (A005493 n).toNat

end

end A312170.P6905101613168187161

/-! ## A312170.P17091332070277535547

`xor(A001221(A000302(n)), A314634(n))`
-/

namespace A312170.P17091332070277535547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A000302 n).toNat) (A314634 n)

end

end A312170.P17091332070277535547

/-!
# A312171: Coordination sequence Gal.6.376.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312171, there is no canonical definition to state claims against.
-/

/-! ## A312171.P13151469017351871079

`A314706(n)-A244895(A035008(3*n))`
-/

namespace A312171.P13151469017351871079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n - A244895 (A035008 (3 * n)).toNat

end

end A312171.P13151469017351871079

/-! ## A312171.P2105265388023507600

`eq[A089533(n+1), A285573(2*n+3)]`
-/

namespace A312171.P2105265388023507600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312171.P2105265388023507600

/-! ## A312171.P8839266395370168178

`or(A000035(A182819(n)), A311570(n))`
-/

namespace A312171.P8839266395370168178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A182819 n).toNat) (A311570 n)

end

end A312171.P8839266395370168178

/-! ## A312171.P13050396691591864978

`or(A224965(A124733(n+1)), A311570(n))`
-/

namespace A312171.P13050396691591864978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A224965 (A124733 (n + 1)).toNat) (A311570 n)

end

end A312171.P13050396691591864978

/-! ## A312171.P4957701687488876597

`A311570(n)+A000035(A311570(n)+A182819(n))`
-/

namespace A312171.P4957701687488876597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311570 n + A000035 (A311570 n + A182819 n).toNat

end

end A312171.P4957701687488876597

/-!
# A312172: Coordination sequence Gal.6.430.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312172, there is no canonical definition to state claims against.
-/

/-! ## A312172.P1393754844866785248

`A312041(n)+A102683(A005001(n))`
-/

namespace A312172.P1393754844866785248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312041 n + A102683 (A005001 n).toNat

end

end A312172.P1393754844866785248

/-! ## A312172.P3251044553328314910

`A312169(n)+A007814(A148510(n))`
-/

namespace A312172.P3251044553328314910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312169 n + A007814 (A148510 n).toNat

end

end A312172.P3251044553328314910

/-! ## A312172.P6161791889709943472

`or(A151878(A308764(n+1)), A312043(n))`
-/

namespace A312172.P6161791889709943472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151878 (A308764 (n + 1)).toNat) (A312043 n)

end

end A312172.P6161791889709943472

/-! ## A312172.P11834094227269458549

`A274876(A268995(3*(n+1)))+A010064(n+1)`
-/

namespace A312172.P11834094227269458549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274876 (A268995 (3 * (n + 1))).toNat + A010064 (n + 1)

end

end A312172.P11834094227269458549

/-! ## A312172.P4853459842707135212

`A312041(n)+A131531(A325258(n))`
-/

namespace A312172.P4853459842707135212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312041 n + A131531 (A325258 n).toNat

end

end A312172.P4853459842707135212

/-!
# A312173: Coordination sequence Gal.5.206.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312173, there is no canonical definition to state claims against.
-/

/-! ## A312173.P17465481126316755924

`A324870(∑[3^n])+A312081(n)`
-/

namespace A312173.P17465481126316755924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324870 (∑ j ∈ Finset.range (n + 1), f1 j) + A312081 n

end

end A312173.P17465481126316755924

/-! ## A312173.P12555313181246286659

`A311599(n)+A055641(C(n+7, 7))`
-/

namespace A312173.P12555313181246286659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311599 n + A055641 (Nat.choose (n + 7) 7)

end

end A312173.P12555313181246286659

/-! ## A312173.P13923545823882904341

`A311600(n)+A055641(C(n+7, 7))`
-/

namespace A312173.P13923545823882904341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311600 n + A055641 (Nat.choose (n + 7) 7)

end

end A312173.P13923545823882904341

/-! ## A312173.P18252466037609309548

`A311601(n)+A055641(C(n+7, 7))`
-/

namespace A312173.P18252466037609309548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n + A055641 (Nat.choose (n + 7) 7)

end

end A312173.P18252466037609309548

/-!
# A312174: Coordination sequence Gal.6.512.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312174, there is no canonical definition to state claims against.
-/

/-! ## A312174.P16261796938410270612

`A180101(A045375(n+1))+A180101(n)`
-/

namespace A312174.P16261796938410270612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A045375 (n + 1)).toNat + A180101 n

end

end A312174.P16261796938410270612

/-! ## A312174.P15699175903000619137

`eq[A025581(n), A162401(A346520(n))]`
-/

namespace A312174.P15699175903000619137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (A346520 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312174.P15699175903000619137

/-! ## A312174.P11566813116016776859

`eq[1, A170845(A091355(n+1))]`
-/

namespace A312174.P11566813116016776859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170845 (A091355 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A312174.P11566813116016776859

/-! ## A312174.P4907121185422798712

`eq[1, A025581(A336534(n+2))]`
-/

namespace A312174.P4907121185422798712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A336534 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A312174.P4907121185422798712

/-! ## A312174.P15833563035626221838

`eq[A129154(n)%7, A004247(n)]`
-/

namespace A312174.P15833563035626221838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129154 n) 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312174.P15833563035626221838

/-!
# A312175: Coordination sequence Gal.6.465.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312175, there is no canonical definition to state claims against.
-/

/-! ## A312175.P18112221571394648935

`A105700(n)+A311513(n)-A010051(A002212(n))`
-/

namespace A312175.P18112221571394648935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n + (A311513 n - A010051 (A002212 n).toNat)

end

end A312175.P18112221571394648935

/-! ## A312175.P13782877081801445928

`A105700(n)+A312101(n)-A105700(A070198(n))`
-/

namespace A312175.P13782877081801445928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n + (A312101 n - A105700 (A070198 n).toNat)

end

end A312175.P13782877081801445928

/-! ## A312175.P7583536903075889116

`A105700(n)+A312140(n)-A001221(A261664(n))`
-/

namespace A312175.P7583536903075889116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n + (A312140 n - A001221 (A261664 n).toNat)

end

end A312175.P7583536903075889116

/-! ## A312175.P16585176385833146977

`A375750(n+1)+A003434(A179190(n))`
-/

namespace A312175.P16585176385833146977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375750 (n + 1) + A003434 (A179190 n).toNat

end

end A312175.P16585176385833146977

/-! ## A312175.P17892233949432730752

`A084139(n)-A227761(A033818(n+1))`
-/

namespace A312175.P17892233949432730752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084139 n - A227761 (A033818 (n + 1)).toNat

end

end A312175.P17892233949432730752

/-!
# A312176: Coordination sequence Gal.6.213.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312176, there is no canonical definition to state claims against.
-/

/-! ## A312176.P14630681959522358506

`A140490(n+1)-A330168(abs(1-8*n))`
-/

namespace A312176.P14630681959522358506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140490 (n + 1) - A330168 |1 - (8 * n : ℤ)|.toNat

end

end A312176.P14630681959522358506

/-! ## A312176.P5276294388362472088

`A313556(n)-A007877(A008354(n))`
-/

namespace A312176.P5276294388362472088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n - A007877 (A008354 n).toNat

end

end A312176.P5276294388362472088

/-! ## A312176.P8874490611119222137

`or(A102677(A083575(n)), A312077(n))`
-/

namespace A312176.P8874490611119222137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102677 (A083575 n).toNat) (A312077 n)

end

end A312176.P8874490611119222137

/-! ## A312176.P2215032520581344689

`or(A102677(A083575(n)), A312079(n))`
-/

namespace A312176.P2215032520581344689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102677 (A083575 n).toNat) (A312079 n)

end

end A312176.P2215032520581344689

/-! ## A312176.P12937664240282444907

`A276340(n)+A175860(A029744(3*(n+1)))`
-/

namespace A312176.P12937664240282444907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276340 n + A175860 (A029744 (3 * (n + 1))).toNat

end

end A312176.P12937664240282444907

/-!
# A312177: Coordination sequence Gal.6.257.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312177, there is no canonical definition to state claims against.
-/

/-! ## A312177.P3658506982606817359

`xor(A014577(A154118(n)), A276855(n))`
-/

namespace A312177.P3658506982606817359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014577 (A154118 n).toNat) (A276855 n)

end

end A312177.P3658506982606817359

/-! ## A312177.P6082806622222029241

`A301298(n)-A010059(A124809(n+1))`
-/

namespace A312177.P6082806622222029241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A010059 (A124809 (n + 1)).toNat

end

end A312177.P6082806622222029241

/-! ## A312177.P5652341580049234966

`A312065(A062399(n))+A172274(n)`
-/

namespace A312177.P5652341580049234966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 (A062399 n).toNat + A172274 n

end

end A312177.P5652341580049234966

/-! ## A312177.P16487049645802403524

`A312065(A120126(n))+A172274(n)`
-/

namespace A312177.P16487049645802403524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 (A120126 n).toNat + A172274 n

end

end A312177.P16487049645802403524

/-! ## A312177.P16589702180600253806

`A366750(A000045(n))+A301676(n)`
-/

namespace A312177.P16589702180600253806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366750 (A000045 n).toNat + A301676 n

end

end A312177.P16589702180600253806

/-!
# A312178: Coordination sequence Gal.6.19.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312178, there is no canonical definition to state claims against.
-/

/-! ## A312178.P10825954565618198916

`A314511(n)-A064692(A070428(n))`
-/

namespace A312178.P10825954565618198916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314511 n - A064692 (A070428 n).toNat

end

end A312178.P10825954565618198916

/-! ## A312178.P17836011390730823858

`A311964(n)+A255482(A020132(n))`
-/

namespace A312178.P17836011390730823858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + A255482 (A020132 n).toNat

end

end A312178.P17836011390730823858

/-! ## A312178.P14365248662055906601

`A314049(n)-A001222(A081704(n))`
-/

namespace A312178.P14365248662055906601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n - A001222 (A081704 n).toNat

end

end A312178.P14365248662055906601

/-! ## A312178.P2604388321440721550

`A390991(A327143(n+1))+A390673(3*n+2)`
-/

namespace A312178.P2604388321440721550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390991 (A327143 (n + 1)).toNat + A390673 (3 * n + 2)

end

end A312178.P2604388321440721550

/-!
# A312179: Coordination sequence Gal.6.476.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312179, there is no canonical definition to state claims against.
-/

/-! ## A312179.P18307215068733301415

`A312101(A351870(n))+A111775(A072154(n))`
-/

namespace A312179.P18307215068733301415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 (A351870 n).toNat + A111775 (A072154 n).toNat

end

end A312179.P18307215068733301415

/-! ## A312179.P4533837396949728532

`A312131(n)+A174699(A000602(n))`
-/

namespace A312179.P4533837396949728532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312131 n + A174699 (A000602 n).toNat

end

end A312179.P4533837396949728532

/-! ## A312179.P10769571053908233075

`xor(A312948(n), A343640(A179222(n+1)))`
-/

namespace A312179.P10769571053908233075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A312948 n) (A343640 (A179222 (n + 1)).toNat)

end

end A312179.P10769571053908233075

/-! ## A312179.P8304156458488521647

`A328615(A350354(n))+A312083(n)`
-/

namespace A312179.P8304156458488521647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A350354 n).toNat + A312083 n

end

end A312179.P8304156458488521647

/-! ## A312179.P9866794257180412709

`A301676(n)+A033665(A153503(n+1))`
-/

namespace A312179.P9866794257180412709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A033665 (A153503 (n + 1)).toNat

end

end A312179.P9866794257180412709

/-!
# A312180: Coordination sequence Gal.5.197.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312180, there is no canonical definition to state claims against.
-/

/-! ## A312180.P12634129112206124787

`A103298(A283236(n+1))+2*n`
-/

namespace A312180.P12634129112206124787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A283236 (n + 1)).toNat + (2 * n : ℤ)

end

end A312180.P12634129112206124787

/-! ## A312180.P16298449180322421348

`A312185(n)-A088722(A004117(n))`
-/

namespace A312180.P16298449180322421348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312185 n - A088722 (A004117 n).toNat

end

end A312180.P16298449180322421348

/-! ## A312180.P3572037770884520145

`A312181(n)-A055641(A108304(n))`
-/

namespace A312180.P3572037770884520145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312181 n - A055641 (A108304 n).toNat

end

end A312180.P3572037770884520145

/-! ## A312180.P13554844570626638864

`A313268(n)-A275024(A167606(n))`
-/

namespace A312180.P13554844570626638864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313268 n - A275024 (A167606 n).toNat

end

end A312180.P13554844570626638864

/-! ## A312180.P14161525839628743708

`xor(A288670(A328459(n)), A314730(n))`
-/

namespace A312180.P14161525839628743708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288670 (A328459 n).toNat) (A314730 n)

end

end A312180.P14161525839628743708

/-!
# A312181: Coordination sequence Gal.6.424.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312181, there is no canonical definition to state claims against.
-/

/-! ## A312181.P209989226761973130

`A313121(n)-A307194(A059270(n))`
-/

namespace A312181.P209989226761973130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313121 n - A307194 (A059270 n).toNat

end

end A312181.P209989226761973130

/-! ## A312181.P13278157981848984324

`∑[A242443(∑[A284682(n+1)])]`
-/

namespace A312181.P13278157981848984324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312181.P13278157981848984324

/-! ## A312181.P12360074357669151821

`A312180(n)+A055641(A108304(n))`
-/

namespace A312181.P12360074357669151821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312180 n + A055641 (A108304 n).toNat

end

end A312181.P12360074357669151821

/-! ## A312181.P2392471317177621745

`A337228(A155955(n))+A311954(n)`
-/

namespace A312181.P2392471317177621745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337228 (A155955 n).toNat + A311954 n

end

end A312181.P2392471317177621745

/-! ## A312181.P9011988640376074784

`A250120(n)-A345927(A335559(n))`
-/

namespace A312181.P9011988640376074784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A345927 (A335559 n).toNat

end

end A312181.P9011988640376074784

/-!
# A312182: Coordination sequence Gal.6.386.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312182, there is no canonical definition to state claims against.
-/

/-! ## A312182.P13333570524922630837

`A312184(n)-A133010(∑[char[1]+n]+1)`
-/

namespace A312182.P13333570524922630837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n - A133010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A312182.P13333570524922630837

/-! ## A312182.P13866293174260383440

`A312184(n)-A332671(A176561(n))`
-/

namespace A312182.P13866293174260383440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312184 n - A332671 (A176561 n).toNat

end

end A312182.P13866293174260383440

/-! ## A312182.P2794980353203137134

`A312188(n^A207539(n))-char[A167499(n)]`
-/

namespace A312182.P2794980353203137134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312188 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A207539 n : ℤ))).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A312182.P2794980353203137134

/-! ## A312182.P6988117034669983006

`A311488(n^gcd(11, n))+∑[A219180(2*n+1)]`
-/

namespace A312182.P6988117034669983006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219180 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311488 (n ^ Nat.gcd 11 n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312182.P6988117034669983006

/-! ## A312182.P15575184609562980040

`A376652(n+1)-A121549(A281270(n+3))`
-/

namespace A312182.P15575184609562980040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376652 (n + 1) - A121549 (A281270 (n + 3)).toNat

end

end A312182.P15575184609562980040

/-!
# A312183: Coordination sequence Gal.4.42.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312183, the canonical program `A312183.P11443846749482432599` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312183 has offset 0).

The definition of A312183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312183.P3293024292795571189

`A312974(n)-A238470(n)`
-/

namespace A312183.P3293024292795571189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n - A238470 n

end

end A312183.P3293024292795571189

namespace A312183

/-- `A312974(n)-A238470(n)` -/
def P3293024292795571189.Spec : Prop :=
  ∀ n, P3293024292795571189.a n = A312183 n

end A312183

/-! ## A312183.P11443846749482432599

`A311586(n)+Δ[A011860(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312183

/-- `A311586(n)+Δ[A011860(n)]` -/
def P11443846749482432599.Spec : Prop :=
  ∀ n, P11443846749482432599.a n = A312183 n

theorem P11443846749482432599.correct : P11443846749482432599.Spec := by
  intro n
  simp only [A312183]

end A312183

/-! ## A312183.P3511000226531904810

`A312680(n)-Δ[A011860(n)]`
-/

namespace A312183.P3511000226531904810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312680 n - (f1 (n + 1) - f1 n)

end

end A312183.P3511000226531904810

namespace A312183

/-- `A312680(n)-Δ[A011860(n)]` -/
def P3511000226531904810.Spec : Prop :=
  ∀ n, P3511000226531904810.a n = A312183 n

end A312183

/-! ## A312183.P14731896204548549912

`A312549(n)+A238468(A238468(n)+n)`
-/

namespace A312183.P14731896204548549912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n + A238468 (A238468 n + (n : ℤ)).toNat

end

end A312183.P14731896204548549912

namespace A312183

/-- `A312549(n)+A238468(A238468(n)+n)` -/
def P14731896204548549912.Spec : Prop :=
  ∀ n, P14731896204548549912.a n = A312183 n

end A312183

/-! ## A312183.P12967705765466461659

`abs(A008592(n)-A315676(n))`
-/

namespace A312183.P12967705765466461659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315676 n|

end

end A312183.P12967705765466461659

namespace A312183

/-- `abs(A008592(n)-A315676(n))` -/
def P12967705765466461659.Spec : Prop :=
  ∀ n, P12967705765466461659.a n = A312183 n

end A312183

/-! ## A312183.P9743046521315604002

`2*A008706(n)-A315676(n)`
-/

namespace A312183.P9743046521315604002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315676 n

end

end A312183.P9743046521315604002

namespace A312183

/-- `2*A008706(n)-A315676(n)` -/
def P9743046521315604002.Spec : Prop :=
  ∀ n, P9743046521315604002.a n = A312183 n

end A312183

/-! ## A312183.P4719720740335655366

`A008458(n)+A008574(n)-A315676(n)`
-/

namespace A312183.P4719720740335655366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315676 n)

end

end A312183.P4719720740335655366

namespace A312183

/-- `A008458(n)+A008574(n)-A315676(n)` -/
def P4719720740335655366.Spec : Prop :=
  ∀ n, P4719720740335655366.a n = A312183 n

end A312183

/-! ## A312183.P13848571327388205782

`A315676(n)-A005843(A315676(n)-A008706(n))`
-/

namespace A312183.P13848571327388205782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315676 n - A005843 (A315676 n - A008706 n).toNat

end

end A312183.P13848571327388205782

namespace A312183

/-- `A315676(n)-A005843(A315676(n)-A008706(n))` -/
def P13848571327388205782.Spec : Prop :=
  ∀ n, P13848571327388205782.a n = A312183 n

end A312183

/-! ## A312183.P10927866759060939380

`A005843(A008706(n))-A315676(n)`
-/

namespace A312183.P10927866759060939380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315676 n

end

end A312183.P10927866759060939380

namespace A312183

/-- `A005843(A008706(n))-A315676(n)` -/
def P10927866759060939380.Spec : Prop :=
  ∀ n, P10927866759060939380.a n = A312183 n

end A312183

/-! ## A312183.P5247652998455709842

`round(A008576(A313289(n))/3)`
-/

namespace A312183.P5247652998455709842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A313289 n).toNat : ℚ) / 3)

end

end A312183.P5247652998455709842

namespace A312183

/-- `round(A008576(A313289(n))/3)` -/
def P5247652998455709842.Spec : Prop :=
  ∀ n, P5247652998455709842.a n = A312183 n

end A312183

/-! ## A312183.P11576760959477201991

`A004396(A312680(n)+2*n)`
-/

namespace A312183.P11576760959477201991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312680 n + (2 * n : ℤ)).toNat

end

end A312183.P11576760959477201991

namespace A312183

/-- `A004396(A312680(n)+2*n)` -/
def P11576760959477201991.Spec : Prop :=
  ∀ n, P11576760959477201991.a n = A312183 n

end A312183

/-! ## A312183.P7425306330185086341

`A274616(A312680(n)+2*n)`
-/

namespace A312183.P7425306330185086341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A312680 n + (2 * n : ℤ)).toNat

end

end A312183.P7425306330185086341

namespace A312183

/-- `A274616(A312680(n)+2*n)` -/
def P7425306330185086341.Spec : Prop :=
  ∀ n, P7425306330185086341.a n = A312183 n

end A312183

/-! ## A312183.P3109518703163714138

`A004396(A312680(n)+n+n)`
-/

namespace A312183.P3109518703163714138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312680 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312183.P3109518703163714138

namespace A312183

/-- `A004396(A312680(n)+n+n)` -/
def P3109518703163714138.Spec : Prop :=
  ∀ n, P3109518703163714138.a n = A312183 n

end A312183

/-! ## A312183.P7562062110353370851

`A274616(A312680(n)+n+n)`
-/

namespace A312183.P7562062110353370851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A312680 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312183.P7562062110353370851

namespace A312183

/-- `A274616(A312680(n)+n+n)` -/
def P7562062110353370851.Spec : Prop :=
  ∀ n, P7562062110353370851.a n = A312183 n

end A312183

/-!
# A312184: Coordination sequence Gal.6.155.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312184, the canonical program `A312184.P16435784878311802560` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312184 has offset 0).

The definition of A312184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312184.P16435784878311802560

`A004772(A312123(n)-n)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A312184

/-- `A004772(A312123(n)-n)+1` -/
def P16435784878311802560.Spec : Prop :=
  ∀ n, P16435784878311802560.a n = A312184 n

theorem P16435784878311802560.correct : P16435784878311802560.Spec := by
  intro n
  simp only [A312184]

end A312184

/-! ## A312184.P7008995930196767510

`A004525(n)+A312123(n)-A004396(A004525(n))`
-/

namespace A312184.P7008995930196767510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312123 n - A004396 (A004525 n).toNat)

end

end A312184.P7008995930196767510

namespace A312184

/-- `A004525(n)+A312123(n)-A004396(A004525(n))` -/
def P7008995930196767510.Spec : Prop :=
  ∀ n, P7008995930196767510.a n = A312184 n

end A312184

/-! ## A312184.P4018323747007606752

`A314726(n)-A128834(n)`
-/

namespace A312184.P4018323747007606752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n - A128834 n

end

end A312184.P4018323747007606752

namespace A312184

/-- `A314726(n)-A128834(n)` -/
def P4018323747007606752.Spec : Prop :=
  ∀ n, P4018323747007606752.a n = A312184 n

end A312184

/-! ## A312184.P12033671393513688415

`A314726(n)+A010892(n+2)`
-/

namespace A312184.P12033671393513688415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n + A010892 (n + 2)

end

end A312184.P12033671393513688415

namespace A312184

/-- `A314726(n)+A010892(n+2)` -/
def P12033671393513688415.Spec : Prop :=
  ∀ n, P12033671393513688415.a n = A312184 n

end A312184

/-! ## A312184.P16441407606299595043

`A314959(n)-A004525(A004396(n))`
-/

namespace A312184.P16441407606299595043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314959 n - A004525 (A004396 n).toNat

end

end A312184.P16441407606299595043

namespace A312184

/-- `A314959(n)-A004525(A004396(n))` -/
def P16441407606299595043.Spec : Prop :=
  ∀ n, P16441407606299595043.a n = A312184 n

end A312184

/-! ## A312184.P1304974599051989337

`A313283(n)-∑[A021913(n)]`
-/

namespace A312184.P1304974599051989337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313283 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312184.P1304974599051989337

namespace A312184

/-- `A313283(n)-∑[A021913(n)]` -/
def P1304974599051989337.Spec : Prop :=
  ∀ n, P1304974599051989337.a n = A312184 n

end A312184

/-! ## A312184.P13875219601736408360

`A313283(n)-Δ[A011848(n)]`
-/

namespace A312184.P13875219601736408360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313283 n - (f1 (n + 1) - f1 n)

end

end A312184.P13875219601736408360

namespace A312184

/-- `A313283(n)-Δ[A011848(n)]` -/
def P13875219601736408360.Spec : Prop :=
  ∀ n, P13875219601736408360.a n = A312184 n

end A312184

/-! ## A312184.P17392978602778774760

`A313283(n)-A004524(n+1)`
-/

namespace A312184.P17392978602778774760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313283 n - A004524 (n + 1)

end

end A312184.P17392978602778774760

namespace A312184

/-- `A313283(n)-A004524(n+1)` -/
def P17392978602778774760.Spec : Prop :=
  ∀ n, P17392978602778774760.a n = A312184 n

end A312184

/-! ## A312184.P2767972492121165370

`A004525(n)+A313283(n)-n`
-/

namespace A312184.P2767972492121165370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313283 n - (n : ℤ))

end

end A312184.P2767972492121165370

namespace A312184

/-- `A004525(n)+A313283(n)-n` -/
def P2767972492121165370.Spec : Prop :=
  ∀ n, P2767972492121165370.a n = A312184 n

end A312184

/-! ## A312184.P4895597179369020770

`abs(A008592(n)-A315675(n))`
-/

namespace A312184.P4895597179369020770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315675 n|

end

end A312184.P4895597179369020770

namespace A312184

/-- `abs(A008592(n)-A315675(n))` -/
def P4895597179369020770.Spec : Prop :=
  ∀ n, P4895597179369020770.a n = A312184 n

end A312184

/-! ## A312184.P6895323510937847179

`A008458(n)+A008574(n)-A315675(n)`
-/

namespace A312184.P6895323510937847179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315675 n)

end

end A312184.P6895323510937847179

namespace A312184

/-- `A008458(n)+A008574(n)-A315675(n)` -/
def P6895323510937847179.Spec : Prop :=
  ∀ n, P6895323510937847179.a n = A312184 n

end A312184

/-! ## A312184.P12166955457576421959

`A004396(2*(A312123(n)-n))`
-/

namespace A312184.P12166955457576421959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A312123 n - (n : ℤ))).toNat

end

end A312184.P12166955457576421959

namespace A312184

/-- `A004396(2*(A312123(n)-n))` -/
def P12166955457576421959.Spec : Prop :=
  ∀ n, P12166955457576421959.a n = A312184 n

end A312184

/-!
# A312185: Coordination sequence Gal.6.154.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312185, the canonical program `A312185.P1603995867192302310` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312185 has offset 0).

The definition of A312185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312185.P14751890815854385123

`abs(A008592(n)-A315674(n))`
-/

namespace A312185.P14751890815854385123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315674 n|

end

end A312185.P14751890815854385123

namespace A312185

/-- `abs(A008592(n)-A315674(n))` -/
def P14751890815854385123.Spec : Prop :=
  ∀ n, P14751890815854385123.a n = A312185 n

end A312185

/-! ## A312185.P13221208237100942287

`2*A008706(n)-A315674(n)`
-/

namespace A312185.P13221208237100942287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315674 n

end

end A312185.P13221208237100942287

namespace A312185

/-- `2*A008706(n)-A315674(n)` -/
def P13221208237100942287.Spec : Prop :=
  ∀ n, P13221208237100942287.a n = A312185 n

end A312185

/-! ## A312185.P1567551356200759915

`A008458(n)+A008574(n)-A315674(n)`
-/

namespace A312185.P1567551356200759915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315674 n)

end

end A312185.P1567551356200759915

namespace A312185

/-- `A008458(n)+A008574(n)-A315674(n)` -/
def P1567551356200759915.Spec : Prop :=
  ∀ n, P1567551356200759915.a n = A312185 n

end A312185

/-! ## A312185.P17609668818546683863

`A315674(n)-A005843(A315674(n)-A008706(n))`
-/

namespace A312185.P17609668818546683863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315674 n - A005843 (A315674 n - A008706 n).toNat

end

end A312185.P17609668818546683863

namespace A312185

/-- `A315674(n)-A005843(A315674(n)-A008706(n))` -/
def P17609668818546683863.Spec : Prop :=
  ∀ n, P17609668818546683863.a n = A312185 n

end A312185

/-! ## A312185.P15388458489134324870

`A005843(A008706(n))-A315674(n)`
-/

namespace A312185.P15388458489134324870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315674 n

end

end A312185.P15388458489134324870

namespace A312185

/-- `A005843(A008706(n))-A315674(n)` -/
def P15388458489134324870.Spec : Prop :=
  ∀ n, P15388458489134324870.a n = A312185 n

end A312185

/-! ## A312185.P5886576895248042020

`A004396(A312681(n)+2*n)`
-/

namespace A312185.P5886576895248042020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312681 n + (2 * n : ℤ)).toNat

end

end A312185.P5886576895248042020

namespace A312185

/-- `A004396(A312681(n)+2*n)` -/
def P5886576895248042020.Spec : Prop :=
  ∀ n, P5886576895248042020.a n = A312185 n

end A312185

/-! ## A312185.P1603995867192302310

`A004396(2*(A312125(n)-n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A312185

/-- `A004396(2*(A312125(n)-n))` -/
def P1603995867192302310.Spec : Prop :=
  ∀ n, P1603995867192302310.a n = A312185 n

theorem P1603995867192302310.correct : P1603995867192302310.Spec := by
  intro n
  simp only [A312185]

end A312185

/-! ## A312185.P7787299712397936142

`A004396(A312681(n)+n+n)`
-/

namespace A312185.P7787299712397936142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312681 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312185.P7787299712397936142

namespace A312185

/-- `A004396(A312681(n)+n+n)` -/
def P7787299712397936142.Spec : Prop :=
  ∀ n, P7787299712397936142.a n = A312185 n

end A312185

/-! ## A312185.P8637375377097691679

`A004396(A005843(A312125(n)-n))`
-/

namespace A312185.P8637375377097691679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A312125 n - (n : ℤ)).toNat).toNat

end

end A312185.P8637375377097691679

namespace A312185

/-- `A004396(A005843(A312125(n)-n))` -/
def P8637375377097691679.Spec : Prop :=
  ∀ n, P8637375377097691679.a n = A312185 n

end A312185

/-!
# A312186: Coordination sequence Gal.6.433.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312186, there is no canonical definition to state claims against.
-/

/-! ## A312186.P17557252014846472240

`A312624(n)-A107078(A000560(n+2))`
-/

namespace A312186.P17557252014846472240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312624 n - A107078 (A000560 (n + 2)).toNat

end

end A312186.P17557252014846472240

/-! ## A312186.P16139000719903422596

`record[A312195(n)-A024791(n+1)²]`
-/

namespace A312186.P16139000719903422596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312195 n - A024791 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312186.P16139000719903422596

/-! ## A312186.P12043281616335321675

`A311620(n)+A085975(A000244(n))`
-/

namespace A312186.P12043281616335321675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311620 n + A085975 (A000244 n).toNat

end

end A312186.P12043281616335321675

/-! ## A312186.P10672610611189375037

`A312183(n)+A001877(A193472(n))`
-/

namespace A312186.P10672610611189375037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312183 n + A001877 (A193472 n).toNat

end

end A312186.P10672610611189375037

/-! ## A312186.P13444220060251012522

`A352822(A125655(n))+A301684(n)`
-/

namespace A312186.P13444220060251012522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (A125655 n).toNat + A301684 n

end

end A312186.P13444220060251012522

/-!
# A312187: Coordination sequence Gal.6.378.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312187, there is no canonical definition to state claims against.
-/

/-! ## A312187.P13481781219544759744

`A312188(A140765(∑[n]))`
-/

namespace A312187.P13481781219544759744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312188 (A140765 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A312187.P13481781219544759744

/-! ## A312187.P16164573253087289064

`A312188(A324662(∑[n]))`
-/

namespace A312187.P16164573253087289064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312188 (A324662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A312187.P16164573253087289064

/-! ## A312187.P9401869564080034517

`A312188(n)%A128337(n+1)`
-/

namespace A312187.P9401869564080034517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312188 n) (A128337 (n + 1))

end

end A312187.P9401869564080034517

/-! ## A312187.P4791964291877343269

`A312188(A062399(n))`
-/

namespace A312187.P4791964291877343269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312188 (A062399 n).toNat

end

end A312187.P4791964291877343269

/-! ## A312187.P6760667875272052439

`A312188(A120126(n))`
-/

namespace A312187.P6760667875272052439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312188 (A120126 n).toNat

end

end A312187.P6760667875272052439

/-!
# A312189: Coordination sequence Gal.6.417.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312189, there is no canonical definition to state claims against.
-/

/-! ## A312189.P14626822727659798183

`A001492(A079496(n))*A312190(n)-A105390(n+1)`
-/

namespace A312189.P14626822727659798183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (A079496 n).toNat * A312190 n - A105390 (n + 1)

end

end A312189.P14626822727659798183

/-! ## A312189.P16290845403845654467

`A001492(A134067(n))*A312190(n)-A105390(n+1)`
-/

namespace A312189.P16290845403845654467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 (A134067 n).toNat * A312190 n - A105390 (n + 1)

end

end A312189.P16290845403845654467

/-! ## A312189.P2501323596713865732

`A312190(A062399(n))`
-/

namespace A312189.P2501323596713865732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312190 (A062399 n).toNat

end

end A312189.P2501323596713865732

/-! ## A312189.P4166228235100479253

`A312190(A120126(n))`
-/

namespace A312189.P4166228235100479253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312190 (A120126 n).toNat

end

end A312189.P4166228235100479253

/-! ## A312189.P1444532778468600002

`A312190(A351870(n))`
-/

namespace A312189.P1444532778468600002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312190 (A351870 n).toNat

end

end A312189.P1444532778468600002

/-!
# A312191: Coordination sequence Gal.6.416.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312191, there is no canonical definition to state claims against.
-/

/-! ## A312191.P4488259460086293959

`A312192(n)-A025469(n²²)`
-/

namespace A312191.P4488259460086293959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312192 n - A025469 ((n ^ 2) ^ 2)

end

end A312191.P4488259460086293959

/-! ## A312191.P7872247854239701492

`A312192(n)-A059117(A309864(n))`
-/

namespace A312191.P7872247854239701492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312192 n - A059117 (A309864 n).toNat

end

end A312191.P7872247854239701492

/-! ## A312191.P11186104129839594931

`A089868(A312192(n)%A232274(n+1))`
-/

namespace A312191.P11186104129839594931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (Int.tmod (A312192 n) (A232274 (n + 1))).toNat

end

end A312191.P11186104129839594931

/-! ## A312191.P9001591802238428580

`A025469(n)+A312192(n)-A025469(A223432(n+1))`
-/

namespace A312191.P9001591802238428580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + (A312192 n - A025469 (A223432 (n + 1)).toNat)

end

end A312191.P9001591802238428580

/-! ## A312191.P16500818573623372070

`A312192(A062399(n))`
-/

namespace A312191.P16500818573623372070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312192 (A062399 n).toNat

end

end A312191.P16500818573623372070

/-!
# A312192: Coordination sequence Gal.6.399.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312192, there is no canonical definition to state claims against.
-/

/-! ## A312192.P13715543374668322389

`A312191(n)+A025469(n²²)`
-/

namespace A312192.P13715543374668322389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312191 n + A025469 ((n ^ 2) ^ 2)

end

end A312192.P13715543374668322389

/-! ## A312192.P4443959960750610622

`A312191(n)+A059117(A309864(n))`
-/

namespace A312192.P4443959960750610622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312191 n + A059117 (A309864 n).toNat

end

end A312192.P4443959960750610622

/-! ## A312192.P17217406213548070849

`A312191(n)+A185284(A263132(n+1))`
-/

namespace A312192.P17217406213548070849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312191 n + A185284 (A263132 (n + 1)).toNat

end

end A312192.P17217406213548070849

/-! ## A312192.P2905956132543899845

`A089868(A312191(n)%A232274(n+1))`
-/

namespace A312192.P2905956132543899845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (Int.tmod (A312191 n) (A232274 (n + 1))).toNat

end

end A312192.P2905956132543899845

/-!
# A312193: Coordination sequence Gal.6.377.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312193, there is no canonical definition to state claims against.
-/

/-! ## A312193.P12775292642413452129

`A321936(A291896(n))+A312190(n)`
-/

namespace A312193.P12775292642413452129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A291896 n).toNat + A312190 n

end

end A312193.P12775292642413452129

/-! ## A312193.P12983303893588344664

`record[A312194(n)-A047197(n+1)]`
-/

namespace A312193.P12983303893588344664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312194 n - A047197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312193.P12983303893588344664

/-! ## A312193.P16053016871933155009

`A313115(n)+A014021(A014001(n))`
-/

namespace A312193.P16053016871933155009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A014021 (A014001 n).toNat

end

end A312193.P16053016871933155009

/-! ## A312193.P14250762066501547386

`A312160(n)+A007814(A027467(n))`
-/

namespace A312193.P14250762066501547386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n + A007814 (A027467 n).toNat

end

end A312193.P14250762066501547386

/-! ## A312193.P3663759334801659238

`A312160(n)+A079979(A183876(n))`
-/

namespace A312193.P3663759334801659238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n + A079979 (A183876 n).toNat

end

end A312193.P3663759334801659238

/-!
# A312194: Coordination sequence Gal.6.156.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312194, the canonical program `A312194.P11075138989351160431` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312194 has offset 0).

The definition of A312194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312194.P7239596344637270524

`A312963(n)-∑[A131736(n)]`
-/

namespace A312194.P7239596344637270524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312194.P7239596344637270524

namespace A312194

/-- `A312963(n)-∑[A131736(n)]` -/
def P7239596344637270524.Spec : Prop :=
  ∀ n, P7239596344637270524.a n = A312194 n

end A312194

/-! ## A312194.P11075138989351160431

`A314899(n)-A134667(A004525(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A312194

/-- `A314899(n)-A134667(A004525(n))` -/
def P11075138989351160431.Spec : Prop :=
  ∀ n, P11075138989351160431.a n = A312194 n

theorem P11075138989351160431.correct : P11075138989351160431.Spec := by
  intro n
  simp only [A312194]

end A312194

/-! ## A312194.P17717765414162880323

`abs(A008592(n)-A315673(n))`
-/

namespace A312194.P17717765414162880323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315673 n|

end

end A312194.P17717765414162880323

namespace A312194

/-- `abs(A008592(n)-A315673(n))` -/
def P17717765414162880323.Spec : Prop :=
  ∀ n, P17717765414162880323.a n = A312194 n

end A312194

/-! ## A312194.P15696915462507397525

`2*A008706(n)-A315673(n)`
-/

namespace A312194.P15696915462507397525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315673 n

end

end A312194.P15696915462507397525

namespace A312194

/-- `2*A008706(n)-A315673(n)` -/
def P15696915462507397525.Spec : Prop :=
  ∀ n, P15696915462507397525.a n = A312194 n

end A312194

/-! ## A312194.P16883159023307589597

`A184418(A008574(n))-A315673(n)`
-/

namespace A312194.P16883159023307589597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315673 n

end

end A312194.P16883159023307589597

namespace A312194

/-- `A184418(A008574(n))-A315673(n)` -/
def P16883159023307589597.Spec : Prop :=
  ∀ n, P16883159023307589597.a n = A312194 n

end A312194

/-! ## A312194.P15797606241477930916

`A008458(n)+A008574(n)-A315673(n)`
-/

namespace A312194.P15797606241477930916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315673 n)

end

end A312194.P15797606241477930916

namespace A312194

/-- `A008458(n)+A008574(n)-A315673(n)` -/
def P15797606241477930916.Spec : Prop :=
  ∀ n, P15797606241477930916.a n = A312194 n

end A312194

/-! ## A312194.P18140318932705612700

`(A008592(n)-A315673(n))^(A000007(n)+1)`
-/

namespace A312194.P18140318932705612700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A315673 n : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A312194.P18140318932705612700

namespace A312194

/-- `(A008592(n)-A315673(n))^(A000007(n)+1)` -/
def P18140318932705612700.Spec : Prop :=
  ∀ n, P18140318932705612700.a n = (A312194 n : ℚ)

end A312194

/-! ## A312194.P11450865802519831596

`A315673(n)-A005843(A315673(n)-A008706(n))`
-/

namespace A312194.P11450865802519831596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315673 n - A005843 (A315673 n - A008706 n).toNat

end

end A312194.P11450865802519831596

namespace A312194

/-- `A315673(n)-A005843(A315673(n)-A008706(n))` -/
def P11450865802519831596.Spec : Prop :=
  ∀ n, P11450865802519831596.a n = A312194 n

end A312194

/-! ## A312194.P9883793788737410337

`A004525(n)+A312144(n)-A004396(A004525(n))`
-/

namespace A312194.P9883793788737410337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312144 n - A004396 (A004525 n).toNat)

end

end A312194.P9883793788737410337

namespace A312194

/-- `A004525(n)+A312144(n)-A004396(A004525(n))` -/
def P9883793788737410337.Spec : Prop :=
  ∀ n, P9883793788737410337.a n = A312194 n

end A312194

/-! ## A312194.P5074486670639301638

`A314964(n)-A004525(A004396(n))`
-/

namespace A312194.P5074486670639301638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n - A004525 (A004396 n).toNat

end

end A312194.P5074486670639301638

namespace A312194

/-- `A314964(n)-A004525(A004396(n))` -/
def P5074486670639301638.Spec : Prop :=
  ∀ n, P5074486670639301638.a n = A312194 n

end A312194

/-! ## A312194.P4280813836856196889

`A311536(n)+A002264(A030118(n))`
-/

namespace A312194.P4280813836856196889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + A002264 (A030118 n).toNat

end

end A312194.P4280813836856196889

namespace A312194

/-- `A311536(n)+A002264(A030118(n))` -/
def P4280813836856196889.Spec : Prop :=
  ∀ n, P4280813836856196889.a n = A312194 n

end A312194

/-! ## A312194.P9459332482978799681

`A314970(n)-A004396(A004525(n))`
-/

namespace A312194.P9459332482978799681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314970 n - A004396 (A004525 n).toNat

end

end A312194.P9459332482978799681

namespace A312194

/-- `A314970(n)-A004396(A004525(n))` -/
def P9459332482978799681.Spec : Prop :=
  ∀ n, P9459332482978799681.a n = A312194 n

end A312194

/-! ## A312194.P11001088071419470570

`A312065(n)+∑[A021913(A312065(n))]`
-/

namespace A312194.P11001088071419470570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A312065 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312194.P11001088071419470570

namespace A312194

/-- `A312065(n)+∑[A021913(A312065(n))]` -/
def P11001088071419470570.Spec : Prop :=
  ∀ n, P11001088071419470570.a n = A312194 n

end A312194

/-! ## A312194.P12624592073575516365

`A004396(n)+A311536(n)-A004525(A004396(n))`
-/

namespace A312194.P12624592073575516365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311536 n - A004525 (A004396 n).toNat)

end

end A312194.P12624592073575516365

namespace A312194

/-- `A004396(n)+A311536(n)-A004525(A004396(n))` -/
def P12624592073575516365.Spec : Prop :=
  ∀ n, P12624592073575516365.a n = A312194 n

end A312194

/-! ## A312194.P13971996666046700864

`A005843(A008706(n))-A315673(n)`
-/

namespace A312194.P13971996666046700864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315673 n

end

end A312194.P13971996666046700864

namespace A312194

/-- `A005843(A008706(n))-A315673(n)` -/
def P13971996666046700864.Spec : Prop :=
  ∀ n, P13971996666046700864.a n = A312194 n

end A312194

/-!
# A312195: Coordination sequence Gal.5.67.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312195, the canonical program `A312195.P11497264696370298054` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312195 has offset 0).

The definition of A312195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312195.P11497264696370298054

`A314898(n)-A330025(A330025(n)+n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312195

/-- `A314898(n)-A330025(A330025(n)+n)` -/
def P11497264696370298054.Spec : Prop :=
  ∀ n, P11497264696370298054.a n = A312195 n

theorem P11497264696370298054.correct : P11497264696370298054.Spec := by
  intro n
  simp only [A312195]

end A312195

/-! ## A312195.P15271909491976918932

`A313719(n)-A253262(n)`
-/

namespace A312195.P15271909491976918932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n - A253262 n

end

end A312195.P15271909491976918932

namespace A312195

/-- `A313719(n)-A253262(n)` -/
def P15271909491976918932.Spec : Prop :=
  ∀ n, P15271909491976918932.a n = A312195 n

end A312195

/-! ## A312195.P7728393225829750106

`A314943(n)-A330025(n)`
-/

namespace A312195.P7728393225829750106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 n - A330025 n

end

end A312195.P7728393225829750106

namespace A312195

/-- `A314943(n)-A330025(n)` -/
def P7728393225829750106.Spec : Prop :=
  ∀ n, P7728393225829750106.a n = A312195 n

end A312195

/-! ## A312195.P10917786972928240995

`A312684(n)-A004525(A312684(n)-A311535(n))`
-/

namespace A312195.P10917786972928240995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312684 n - A004525 (A312684 n - A311535 n).toNat

end

end A312195.P10917786972928240995

namespace A312195

/-- `A312684(n)-A004525(A312684(n)-A311535(n))` -/
def P10917786972928240995.Spec : Prop :=
  ∀ n, P10917786972928240995.a n = A312195 n

end A312195

/-! ## A312195.P8666286203827376648

`abs(A008592(n)-A315672(n))`
-/

namespace A312195.P8666286203827376648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315672 n|

end

end A312195.P8666286203827376648

namespace A312195

/-- `abs(A008592(n)-A315672(n))` -/
def P8666286203827376648.Spec : Prop :=
  ∀ n, P8666286203827376648.a n = A312195 n

end A312195

/-! ## A312195.P4927352046869882685

`A008458(n)+A008574(n)-A315672(n)`
-/

namespace A312195.P4927352046869882685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315672 n)

end

end A312195.P4927352046869882685

namespace A312195

/-- `A008458(n)+A008574(n)-A315672(n)` -/
def P4927352046869882685.Spec : Prop :=
  ∀ n, P4927352046869882685.a n = A312195 n

end A312195

/-! ## A312195.P6155267253225384901

`∑{d}[A008592(n)-A315672(n), A000010(#)]`
-/

namespace A312195.P6155267253225384901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A312195.P6155267253225384901

namespace A312195

/-- `∑{d}[A008592(n)-A315672(n), A000010(#)]` -/
def P6155267253225384901.Spec : Prop :=
  ∀ n, P6155267253225384901.a n = A312195 n

end A312195

/-! ## A312195.P13080269819042207315

`A004396(A312684(n)+2*n)`
-/

namespace A312195.P13080269819042207315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312684 n + (2 * n : ℤ)).toNat

end

end A312195.P13080269819042207315

namespace A312195

/-- `A004396(A312684(n)+2*n)` -/
def P13080269819042207315.Spec : Prop :=
  ∀ n, P13080269819042207315.a n = A312195 n

end A312195

/-! ## A312195.P10407837089868496940

`A004396(2*(A312143(n)-n))`
-/

namespace A312195.P10407837089868496940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A312143 n - (n : ℤ))).toNat

end

end A312195.P10407837089868496940

namespace A312195

/-- `A004396(2*(A312143(n)-n))` -/
def P10407837089868496940.Spec : Prop :=
  ∀ n, P10407837089868496940.a n = A312195 n

end A312195

/-! ## A312195.P15100888296351854493

`A004396(A312684(n)+n+n)`
-/

namespace A312195.P15100888296351854493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312684 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312195.P15100888296351854493

namespace A312195

/-- `A004396(A312684(n)+n+n)` -/
def P15100888296351854493.Spec : Prop :=
  ∀ n, P15100888296351854493.a n = A312195 n

end A312195

/-! ## A312195.P8591097483156891846

`A004396(2*A004396(A313295(n)))`
-/

namespace A312195.P8591097483156891846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A004396 (A313295 n).toNat).toNat

end

end A312195.P8591097483156891846

namespace A312195

/-- `A004396(2*A004396(A313295(n)))` -/
def P8591097483156891846.Spec : Prop :=
  ∀ n, P8591097483156891846.a n = A312195 n

end A312195

/-! ## A312195.P12459290777063761891

`A004525(A312684(n)+A311535(n))`
-/

namespace A312195.P12459290777063761891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312684 n + A311535 n).toNat

end

end A312195.P12459290777063761891

namespace A312195

/-- `A004525(A312684(n)+A311535(n))` -/
def P12459290777063761891.Spec : Prop :=
  ∀ n, P12459290777063761891.a n = A312195 n

end A312195

/-!
# A312196: Coordination sequence Gal.6.476.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312196, there is no canonical definition to state claims against.
-/

/-! ## A312196.P3820917806000769883

`eq[A025581(n), A063265(A035649(n+1))]`
-/

namespace A312196.P3820917806000769883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063265 (A035649 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312196.P3820917806000769883

/-! ## A312196.P6440361672744951160

`∑[dr(A018293(A188999(n+1)))]`
-/

namespace A312196.P6440361672744951160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A018293 (A188999 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312196.P6440361672744951160

/-! ## A312196.P2349040362402295496

`eq[A002995(A143999(n+1)), A025581(n)]`
-/

namespace A312196.P2349040362402295496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 (A143999 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312196.P2349040362402295496

/-! ## A312196.P2949469132036187905

`eq[A003558(A161086(n+1)), A025581(n)]`
-/

namespace A312196.P2949469132036187905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A161086 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312196.P2949469132036187905

/-! ## A312196.P17707219981328155317

`eq[A115577(A283938(n+1)), A122201(n)]`
-/

namespace A312196.P17707219981328155317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (A283938 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312196.P17707219981328155317

/-!
# A312197: Coordination sequence Gal.6.609.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312197, there is no canonical definition to state claims against.
-/

/-! ## A312197.P7032310768413444328

`A312199(A062399(n))-A045698(n)`
-/

namespace A312197.P7032310768413444328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312199 (A062399 n).toNat - A045698 n

end

end A312197.P7032310768413444328

/-! ## A312197.P1899453521965820835

`A312199(n)-A011736(A332345(n))`
-/

namespace A312197.P1899453521965820835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312199 n - A011736 (A332345 n).toNat

end

end A312197.P1899453521965820835

/-! ## A312197.P14015839605493587111

`A312199(n)-A045698(A112014(n+1))`
-/

namespace A312197.P14015839605493587111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312199 n - A045698 (A112014 (n + 1)).toNat

end

end A312197.P14015839605493587111

/-! ## A312197.P10978120586951092898

`A011736(A106472(n))+A312183(n)-A045698(n)`
-/

namespace A312197.P10978120586951092898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011736 (A106472 n).toNat + (A312183 n - A045698 n)

end

end A312197.P10978120586951092898

/-! ## A312197.P8588339540238849023

`A261466(A310755(n))`
-/

namespace A312197.P8588339540238849023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (A310755 n).toNat

end

end A312197.P8588339540238849023

/-!
# A312198: Coordination sequence Gal.6.611.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312198, there is no canonical definition to state claims against.
-/

/-! ## A312198.P14286428185812667475

`A312128(n)+A248327(A003239(n))`
-/

namespace A312198.P14286428185812667475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312128 n + A248327 (A003239 n).toNat

end

end A312198.P14286428185812667475

/-! ## A312198.P10799442640522976534

`A312200(n)-A280639(A067067(n))`
-/

namespace A312198.P10799442640522976534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312200 n - A280639 (A067067 n).toNat

end

end A312198.P10799442640522976534

/-! ## A312198.P3336169719494041899

`A312197(n)+A010894(A310398(n))`
-/

namespace A312198.P3336169719494041899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312197 n + A010894 ((A310398 n).toNat + 21)

end

end A312198.P3336169719494041899

/-! ## A312198.P10011334134138028135

`A312197(n)+A010894(A056020(n+1))`
-/

namespace A312198.P10011334134138028135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312197 n + A010894 ((A056020 (n + 1)).toNat + 21)

end

end A312198.P10011334134138028135

/-!
# A312199: Coordination sequence Gal.6.371.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312199, there is no canonical definition to state claims against.
-/

/-! ## A312199.P11648879870977660882

`A312197(A062399(n))+A045698(n)`
-/

namespace A312199.P11648879870977660882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312197 (A062399 n).toNat + A045698 n

end

end A312199.P11648879870977660882

/-! ## A312199.P18241348054440583786

`A312183(n)+A011736(A106472(n))`
-/

namespace A312199.P18241348054440583786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312183 n + A011736 (A106472 n).toNat

end

end A312199.P18241348054440583786

/-! ## A312199.P16208531887480959375

`A312197(n)+A011736(A332345(n))`
-/

namespace A312199.P16208531887480959375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312197 n + A011736 (A332345 n).toNat

end

end A312199.P16208531887480959375

/-! ## A312199.P5669375367607142008

`A312197(n)+A045698(A112014(n+1))`
-/

namespace A312199.P5669375367607142008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312197 n + A045698 (A112014 (n + 1)).toNat

end

end A312199.P5669375367607142008

/-! ## A312199.P8933912301587543417

`A354921(3*n+1)-A354911(A354910(n))`
-/

namespace A312199.P8933912301587543417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354921 (3 * n + 1) - A354911 (A354910 n).toNat

end

end A312199.P8933912301587543417

