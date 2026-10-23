import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A207600: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207600, there is no canonical definition to state claims against.
-/

/-! ## A207600.P7940930980240144293

`A088900(A301074(n))`
-/

namespace A207600.P7940930980240144293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (A301074 n).toNat

end

end A207600.P7940930980240144293

/-!
# A207601: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207601, there is no canonical definition to state claims against.
-/

/-! ## A207601.P16681031825522402640

`A207599(A052905(n)+9)`
-/

namespace A207601.P16681031825522402640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A052905 n + 9).toNat

end

end A207601.P16681031825522402640

/-! ## A207601.P833760616218419850

`A207599(A055999(n)+10)`
-/

namespace A207601.P833760616218419850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A055999 n + 10).toNat

end

end A207601.P833760616218419850

/-! ## A207601.P255653212925231774

`A207599(A167614(n+2)+1)`
-/

namespace A207601.P255653212925231774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A167614 (n + 2) + 1).toNat

end

end A207601.P255653212925231774

/-! ## A207601.P16342191143246988701

`A207599(A166136(n+2)-2)`
-/

namespace A207601.P16342191143246988701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A166136 (n + 2) - 2).toNat

end

end A207601.P16342191143246988701

/-! ## A207601.P8246358296542332990

`A207599(A000124(n+3)+3)`
-/

namespace A207601.P8246358296542332990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A000124 (n + 3) + 3).toNat

end

end A207601.P8246358296542332990

/-!
# A207602: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207602, there is no canonical definition to state claims against.
-/

/-! ## A207602.P12529183801696487866

`A207599(A167499(n+3))`
-/

namespace A207602.P12529183801696487866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A167499 (n + 3)).toNat

end

end A207602.P12529183801696487866

/-! ## A207602.P1458591882231206494

`A207599(A167614(n+3)+2)`
-/

namespace A207602.P1458591882231206494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A167614 (n + 3) + 2).toNat

end

end A207602.P1458591882231206494

/-! ## A207602.P5292124619968252395

`A207599(A000217(n+4)+5)`
-/

namespace A207602.P5292124619968252395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A000217 (n + 4) + 5).toNat

end

end A207602.P5292124619968252395

/-! ## A207602.P17189506880944375694

`A207599(A052905(n+1)+10)`
-/

namespace A207602.P17189506880944375694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A052905 (n + 1) + 10).toNat

end

end A207602.P17189506880944375694

/-! ## A207602.P16390221612719480380

`A207599(A055999(n+3)-2*n)`
-/

namespace A207602.P16390221612719480380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A207602.P16390221612719480380

/-!
# A207603: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207603, there is no canonical definition to state claims against.
-/

/-! ## A207603.P6628949940296134370

`A207599(A166136(n+4))`
-/

namespace A207603.P6628949940296134370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A166136 (n + 4)).toNat

end

end A207603.P6628949940296134370

/-! ## A207603.P5540536933167155775

`A207599(A167614(n+4)+3)`
-/

namespace A207603.P5540536933167155775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A167614 (n + 4) + 3).toNat

end

end A207603.P5540536933167155775

/-! ## A207603.P8991569599958048160

`A207599(A000096(n+4)+7)`
-/

namespace A207603.P8991569599958048160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A000096 (n + 4) + 7).toNat

end

end A207603.P8991569599958048160

/-! ## A207603.P435480299186822708

`A207599(A000217(n+5)+6)`
-/

namespace A207603.P435480299186822708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A000217 (n + 5) + 6).toNat

end

end A207603.P435480299186822708

/-! ## A207603.P10652880846623295806

`A207599(A052905(n+2)+11)`
-/

namespace A207603.P10652880846623295806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A052905 (n + 2) + 11).toNat

end

end A207603.P10652880846623295806

/-!
# A207604: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 1 vertically.

The programs for A207604, there is no canonical definition to state claims against.
-/

/-! ## A207604.P12355088626693937053

`A207599(A000124(n+6)+6)`
-/

namespace A207604.P12355088626693937053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A000124 (n + 6) + 6).toNat

end

end A207604.P12355088626693937053

/-! ## A207604.P7808933653161797317

`A207599(A000217(n+6)+7)`
-/

namespace A207604.P7808933653161797317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A000217 (n + 6) + 7).toNat

end

end A207604.P7808933653161797317

/-! ## A207604.P9507842292300809284

`A207599(A052905(n+3)+12)`
-/

namespace A207604.P9507842292300809284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A052905 (n + 3) + 12).toNat

end

end A207604.P9507842292300809284

/-! ## A207604.P16688857362879539668

`A207599(A055999(n+3)+13)`
-/

namespace A207604.P16688857362879539668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A055999 (n + 3) + 13).toNat

end

end A207604.P16688857362879539668

/-! ## A207604.P8138503323540335718

`A207599(A134227(n+6)-A005843(n+1))`
-/

namespace A207604.P8138503323540335718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207599 (A134227 (n + 6) - A005843 (n + 1)).toNat

end

end A207604.P8138503323540335718

/-!
# A207605: Triangle of coefficients of polynomials u(n,x) jointly generated with A106195; see the Formula section.

The programs for A207605, there is no canonical definition to state claims against.
-/

/-! ## A207605.P10649316150697261844

`A153342(comp[∑[n+2]])`
-/

namespace A207605.P10649316150697261844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153342 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A207605.P10649316150697261844

/-!
# A207606: Triangle of coefficients of polynomials u(n,x) jointly generated with A207607; see the Formula section.

The programs for A207606, the canonical program `A207606.P2309420890397332701` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207606 has offset 1).

The definition of A207606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207606.P2309420890397332701

`A207620(n+1)-A085478(n)%A207607(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A207606

/-- `A207620(n+1)-A085478(n)%A207607(n+1)` -/
def P2309420890397332701.Spec : Prop :=
  ∀ n, P2309420890397332701.a n = A207606 (n + 1)

theorem P2309420890397332701.correct : P2309420890397332701.Spec := by
  intro n
  simp only [A207606, Nat.add_sub_cancel]

end A207606

/-! ## A207606.P288998384152606779

`A140767(comp[∑[n-1]]+n)`
-/

namespace A207606.P288998384152606779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140767 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n)

end

end A207606.P288998384152606779

namespace A207606

/-- `A140767(comp[∑[n-1]]+n)` -/
def P288998384152606779.Spec : Prop :=
  ∀ n, P288998384152606779.a n = A207606 (n + 1)

end A207606

/-!
# A207607: Triangle of coefficients of polynomials v(n,x) jointly generated with A207606; see Formula section.

The programs for A207607, the canonical program `A207607.P5273861874523714085` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207607 has offset 1).

The definition of A207607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207607.P5273861874523714085

`2*A085478(n)-A165253(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A207607

/-- `2*A085478(n)-A165253(n)` -/
def P5273861874523714085.Spec : Prop :=
  ∀ n, P5273861874523714085.a n = A207607 (n + 1)

theorem P5273861874523714085.correct : P5273861874523714085.Spec := by
  intro n
  simp only [A207607, Nat.add_sub_cancel]

end A207607

/-! ## A207607.P11818368010382026206

`A128908(A028310(n))+A085478(n)`
-/

namespace A207607.P11818368010382026206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A028310 n).toNat + A085478 n

end

end A207607.P11818368010382026206

namespace A207607

/-- `A128908(A028310(n))+A085478(n)` -/
def P11818368010382026206.Spec : Prop :=
  ∀ n, P11818368010382026206.a n = A207607 (n + 1)

end A207607

/-! ## A207607.P3807624851342886617

`A128908(A000007(n)+n)+A085478(n)`
-/

namespace A207607.P3807624851342886617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A000007 n + (n : ℤ)).toNat + A085478 n

end

end A207607.P3807624851342886617

namespace A207607

/-- `A128908(A000007(n)+n)+A085478(n)` -/
def P3807624851342886617.Spec : Prop :=
  ∀ n, P3807624851342886617.a n = A207607 (n + 1)

end A207607

/-! ## A207607.P7871631486391017459

`A085478(n)-(A000007(n)-A128908(n))`
-/

namespace A207607.P7871631486391017459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n - (A000007 n - A128908 n)

end

end A207607.P7871631486391017459

namespace A207607

/-- `A085478(n)-(A000007(n)-A128908(n))` -/
def P7871631486391017459.Spec : Prop :=
  ∀ n, P7871631486391017459.a n = A207607 (n + 1)

end A207607

/-! ## A207607.P14566786561254812023

`A078812(n)-Δ[A128908(A028310(n))]`
-/

namespace A207607.P14566786561254812023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - (f1 (n + 1) - f1 n)

end

end A207607.P14566786561254812023

namespace A207607

/-- `A078812(n)-Δ[A128908(A028310(n))]` -/
def P14566786561254812023.Spec : Prop :=
  ∀ n, P14566786561254812023.a n = A207607 (n + 1)

end A207607

/-! ## A207607.P232014944826175934

`2*A165253(A007401(n+1))-A165253(n)`
-/

namespace A207607.P232014944826175934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165253 (A007401 (n + 1)).toNat - A165253 n

end

end A207607.P232014944826175934

namespace A207607

/-- `2*A165253(A007401(n+1))-A165253(n)` -/
def P232014944826175934.Spec : Prop :=
  ∀ n, P232014944826175934.a n = A207607 (n + 1)

end A207607

/-! ## A207607.P8488914564897301169

`A085478(n)+A128908(n)%A055389(n)`
-/

namespace A207607.P8488914564897301169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n + Int.tmod (A128908 n) (A055389 n)

end

end A207607.P8488914564897301169

namespace A207607

/-- `A085478(n)+A128908(n)%A055389(n)` -/
def P8488914564897301169.Spec : Prop :=
  ∀ n, P8488914564897301169.a n = A207607 (n + 1)

end A207607

/-! ## A207607.P86012672965684965

`A005843(A085478(n))-A165253(n)`
-/

namespace A207607.P86012672965684965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A085478 n).toNat - A165253 n

end

end A207607.P86012672965684965

namespace A207607

/-- `A005843(A085478(n))-A165253(n)` -/
def P86012672965684965.Spec : Prop :=
  ∀ n, P86012672965684965.a n = A207607 (n + 1)

end A207607

/-!
# A207608: Triangle of coefficients of polynomials u(n,x) jointly generated with A207609; see the Formula section.

The programs for A207608, there is no canonical definition to state claims against.
-/

/-! ## A207608.P14627735971518611169

`A207625(n+1)-floor(A208751(n+1)/2)`
-/

namespace A207608.P14627735971518611169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207625 (n + 1) - ⌊(A208751 (n + 1) : ℚ) / 2⌋

end

end A207608.P14627735971518611169

/-! ## A207608.P16489774569867906653

`A207625(n+1)-A004526(A208751(n+1))`
-/

namespace A207608.P16489774569867906653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207625 (n + 1) - A004526 (A208751 (n + 1)).toNat

end

end A207608.P16489774569867906653

/-!
# A207609: Triangle of coefficients of polynomials v(n,x) jointly generated with A207608; see Formula section.

The programs for A207609, there is no canonical definition to state claims against.
-/

/-! ## A207609.P16797713114137699002

`2*A208751(n+1)-A114188(n)`
-/

namespace A207609.P16797713114137699002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208751 (n + 1) - A114188 n

end

end A207609.P16797713114137699002

/-! ## A207609.P732262461800626317

`A004277(A208751(n+1))-A114188(n)`
-/

namespace A207609.P732262461800626317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A208751 (n + 1)).toNat - A114188 n

end

end A207609.P732262461800626317

/-! ## A207609.P2144645314416415694

`A249757(n)+A241831(A088990(n))`
-/

namespace A207609.P2144645314416415694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249757 n + A241831 (A088990 n).toNat

end

end A207609.P2144645314416415694

/-! ## A207609.P6619424754956166476

`A062196(n)-A352178(A294609(n))`
-/

namespace A207609.P6619424754956166476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062196 n - A352178 (A294609 n).toNat

end

end A207609.P6619424754956166476

/-!
# A207610: Triangle of coefficients of polynomials u(n,x) jointly generated with A207611; see the Formula section.

The programs for A207610, there is no canonical definition to state claims against.
-/

/-! ## A207610.P10836342018495131124

`A207612(n+1)/A130321(A056943(n))`
-/

namespace A207610.P10836342018495131124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207612 (n + 1) : ℚ) / (A130321 (A056943 n).toNat : ℚ)

end

end A207610.P10836342018495131124

/-!
# A207611: Triangle of coefficients of polynomials v(n,x) jointly generated with A207610; see Formula section.

The programs for A207611, there is no canonical definition to state claims against.
-/

/-! ## A207611.P15593177224557843439

`A207613(n+1)/A059268(n)`
-/

namespace A207611.P15593177224557843439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207613 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A207611.P15593177224557843439

/-! ## A207611.P12232455340690983917

`2*A053538(n)-A105422(n)`
-/

namespace A207611.P12232455340690983917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053538 n - A105422 n

end

end A207611.P12232455340690983917

/-! ## A207611.P1935002297045347620

`A208515(A038722(n+1))`
-/

namespace A207611.P1935002297045347620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (A038722 (n + 1)).toNat

end

end A207611.P1935002297045347620

/-! ## A207611.P14821482127336568822

`A208515(A061579(n)+1)`
-/

namespace A207611.P14821482127336568822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (A061579 n + 1).toNat

end

end A207611.P14821482127336568822

/-! ## A207611.P2627077128870204181

`A208515(A114327(n)+1+n)`
-/

namespace A207611.P2627077128870204181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (A114327 n + 1 + (n : ℤ)).toNat

end

end A207611.P2627077128870204181

/-! ## A207611.P11508458700152506222

`A208515(A093995(n+1)-n)`
-/

namespace A207611.P11508458700152506222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208515 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A207611.P11508458700152506222

/-! ## A207611.P12957203047445399076

`A239366(A185869(n+1)-1)+A053538(n)`
-/

namespace A207611.P12957203047445399076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (A185869 (n + 1) - 1).toNat + A053538 n

end

end A207611.P12957203047445399076

/-! ## A207611.P12056684214252669317

`A105422(n)+A005843(A053538(n)-A105422(n))`
-/

namespace A207611.P12056684214252669317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n + A005843 (A053538 n - A105422 n).toNat

end

end A207611.P12056684214252669317

/-! ## A207611.P3899458931888880304

`A005843(A053538(n))-A105422(n)`
-/

namespace A207611.P3899458931888880304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053538 n).toNat - A105422 n

end

end A207611.P3899458931888880304

/-! ## A207611.P14430546558350629012

`A005843(A053538(n))-A239366(A185869(n+1))`
-/

namespace A207611.P14430546558350629012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053538 n).toNat - A239366 (A185869 (n + 1)).toNat

end

end A207611.P14430546558350629012

/-!
# A207613: Triangle of coefficients of polynomials v(n,x) jointly generated with A207612; see Formula section.

The programs for A207613, there is no canonical definition to state claims against.
-/

/-! ## A207613.P18362053586833946028

`A059268(n)*A207611(n+1)`
-/

namespace A207613.P18362053586833946028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A207611 (n + 1)

end

end A207613.P18362053586833946028

/-! ## A207613.P14094172165721836543

`A000079(A002262(n))*A207611(n+1)`
-/

namespace A207613.P14094172165721836543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A207611 (n + 1)

end

end A207613.P14094172165721836543

/-! ## A207613.P2183175233847635959

`A011782(A002260(n+1))*A207611(n+1)`
-/

namespace A207613.P2183175233847635959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A207611 (n + 1)

end

end A207613.P2183175233847635959

/-! ## A207613.P4217137970843116314

`A059268(n)*A208515(A038722(n+1))`
-/

namespace A207613.P4217137970843116314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A208515 (A038722 (n + 1)).toNat

end

end A207613.P4217137970843116314

/-! ## A207613.P14238013659260503981

`A130321(A061579(n))*A207611(n+1)`
-/

namespace A207613.P14238013659260503981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A207611 (n + 1)

end

end A207613.P14238013659260503981

/-!
# A207615: Triangle of coefficients of polynomials v(n,x) jointly generated with A207614; see the Formula section.

The programs for A207615, there is no canonical definition to state claims against.
-/

/-! ## A207615.P277629571045541267

`2*A106195(n)-A105306(n+1)`
-/

namespace A207615.P277629571045541267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106195 n - A105306 (n + 1)

end

end A207615.P277629571045541267

/-! ## A207615.P15697069893400414702

`A105306(n+1)+A106195(n)-A062110(n)`
-/

namespace A207615.P15697069893400414702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) + (A106195 n - A062110 n)

end

end A207615.P15697069893400414702

/-! ## A207615.P10769240009407280151

`A207619(A038722(n+1))`
-/

namespace A207615.P10769240009407280151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207619 (A038722 (n + 1)).toNat

end

end A207615.P10769240009407280151

/-! ## A207615.P12193704115505254999

`A207619(A061579(n)+1)`
-/

namespace A207615.P12193704115505254999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207619 (A061579 n + 1).toNat

end

end A207615.P12193704115505254999

/-! ## A207615.P3345016829083319717

`A106195(n)+A049600(A061579(n))`
-/

namespace A207615.P3345016829083319717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n + A049600 (A061579 n).toNat

end

end A207615.P3345016829083319717

/-! ## A207615.P4217197270750120622

`A106195(n)+A049600(A038722(n+1)-1)`
-/

namespace A207615.P4217197270750120622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n + A049600 (A038722 (n + 1) - 1).toNat

end

end A207615.P4217197270750120622

/-! ## A207615.P6557646167631806661

`A105306(n+1)+2*A049600(A061579(n))`
-/

namespace A207615.P6557646167631806661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) + 2 * A049600 (A061579 n).toNat

end

end A207615.P6557646167631806661

/-! ## A207615.P5507215077564996934

`A106195(n)+A049600(A038722(n+2))`
-/

namespace A207615.P5507215077564996934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n + A049600 (A038722 (n + 2)).toNat

end

end A207615.P5507215077564996934

/-! ## A207615.P5771714155144008765

`A105306(n+1)+A005843(A106195(n)-A105306(n+1))`
-/

namespace A207615.P5771714155144008765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (n + 1) + A005843 (A106195 n - A105306 (n + 1)).toNat

end

end A207615.P5771714155144008765

/-! ## A207615.P699238341813353519

`A005843(A106195(n))-A105306(n+1)`
-/

namespace A207615.P699238341813353519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A106195 n).toNat - A105306 (n + 1)

end

end A207615.P699238341813353519

/-!
# A207616: Triangle of coefficients of polynomials u(n,x) jointly generated with A207617; see the Formula section.

The programs for A207616, the canonical program `A207616.P15871925610082526903` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207616 has offset 1).

The definition of A207616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207616.P15871925610082526903

`A210039(n+1)+A034839(n)-A034867(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A207616

/-- `A210039(n+1)+A034839(n)-A034867(n)` -/
def P15871925610082526903.Spec : Prop :=
  ∀ n, P15871925610082526903.a n = A207616 (n + 1)

theorem P15871925610082526903.correct : P15871925610082526903.Spec := by
  intro n
  simp only [A207616, Nat.add_sub_cancel]

end A207616

/-! ## A207616.P6061782619477586095

`A207622(n+1)/A059268(A091018(n))`
-/

namespace A207616.P6061782619477586095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207622 (n + 1) : ℚ) / (A059268 (A091018 n).toNat : ℚ)

end

end A207616.P6061782619477586095

namespace A207616

/-- `A207622(n+1)/A059268(A091018(n))` -/
def P6061782619477586095.Spec : Prop :=
  ∀ n, P6061782619477586095.a n = (A207616 (n + 1) : ℚ)

end A207616

/-! ## A207616.P6347985514863822434

`A209561(comp[n²]+n+1)`
-/

namespace A207616.P6347985514863822434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A207616.P6347985514863822434

namespace A207616

/-- `A209561(comp[n²]+n+1)` -/
def P6347985514863822434.Spec : Prop :=
  ∀ n, P6347985514863822434.a n = A207616 (n + 1)

end A207616

/-! ## A207616.P7821033900299859002

`A072405(eq[A010816(n), A162515(n)])`
-/

namespace A207616.P7821033900299859002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A207616.P7821033900299859002

namespace A207616

/-- `A072405(eq[A010816(n), A162515(n)])` -/
def P7821033900299859002.Spec : Prop :=
  ∀ n, P7821033900299859002.a n = A207616 (n + 1)

end A207616

/-! ## A207616.P12531808241493325773

`A072405(eq[0, A059341(n)])`
-/

namespace A207616.P12531808241493325773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207616.P12531808241493325773

namespace A207616

/-- `A072405(eq[0, A059341(n)])` -/
def P12531808241493325773.Spec : Prop :=
  ∀ n, P12531808241493325773.a n = A207616 (n + 1)

end A207616

/-! ## A207616.P8238986828241249182

`A072405(eq[0, A004175(n)])`
-/

namespace A207616.P8238986828241249182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207616.P8238986828241249182

namespace A207616

/-- `A072405(eq[0, A004175(n)])` -/
def P8238986828241249182.Spec : Prop :=
  ∀ n, P8238986828241249182.a n = A207616 (n + 1)

end A207616

/-! ## A207616.P17111213920719978079

`A072405(lt[2/A060082(n), A060082(n)])`
-/

namespace A207616.P17111213920719978079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A060082 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A207616.P17111213920719978079

namespace A207616

/-- `A072405(lt[2/A060082(n), A060082(n)])` -/
def P17111213920719978079.Spec : Prop :=
  ∀ n, P17111213920719978079.a n = A207616 (n + 1)

end A207616

/-! ## A207616.P15477467899672837947

`A072405(lt[n, A060082(n)*A072405(n)])`
-/

namespace A207616.P15477467899672837947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060082 n * A072405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A207616.P15477467899672837947

namespace A207616

/-- `A072405(lt[n, A060082(n)*A072405(n)])` -/
def P15477467899672837947.Spec : Prop :=
  ∀ n, P15477467899672837947.a n = A207616 (n + 1)

end A207616

/-!
# A207617: Triangle of coefficients of polynomials v(n,x) jointly generated with A207616; see the Formula section.

The programs for A207617, the canonical program `A207617.P12486162294747434692` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207617 has offset 1).

The definition of A207617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207617.P1034608851290351886

`A207623(n+1)/A207622(n+2)*A207616(n+2)`
-/

namespace A207617.P1034608851290351886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207623 (n + 1) : ℚ) / (A207622 (n + 2) : ℚ) * (A207616 (n + 2) : ℚ)

end

end A207617.P1034608851290351886

namespace A207617

/-- `A207623(n+1)/A207622(n+2)*A207616(n+2)` -/
def P1034608851290351886.Spec : Prop :=
  ∀ n, P1034608851290351886.a n = (A207617 (n + 1) : ℚ)

end A207617

/-! ## A207617.P12486162294747434692

`A236376(A091018(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A207617

/-- `A236376(A091018(n+1))` -/
def P12486162294747434692.Spec : Prop :=
  ∀ n, P12486162294747434692.a n = A207617 (n + 1)

theorem P12486162294747434692.correct : P12486162294747434692.Spec := by
  intro n
  simp only [A207617, Nat.add_sub_cancel]

end A207617

/-! ## A207617.P11388428796162271672

`A072405(A000037(n+2)+n+1)`
-/

namespace A207617.P11388428796162271672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (A000037 (n + 2) + (n + 1 : ℤ)).toNat

end

end A207617.P11388428796162271672

namespace A207617

/-- `A072405(A000037(n+2)+n+1)` -/
def P11388428796162271672.Spec : Prop :=
  ∀ n, P11388428796162271672.a n = A207617 (n + 1)

end A207617

/-! ## A207617.P4924584114653798243

`A072405(lt[A060082(n)+1, 0])`
-/

namespace A207617.P4924584114653798243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060082 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A207617.P4924584114653798243

namespace A207617

/-- `A072405(lt[A060082(n)+1, 0])` -/
def P4924584114653798243.Spec : Prop :=
  ∀ n, P4924584114653798243.a n = A207617 (n + 1)

end A207617

/-! ## A207617.P13384686642347940572

`A072405(lt[2, 1-A060082(n)])`
-/

namespace A207617.P13384686642347940572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A207617.P13384686642347940572

namespace A207617

/-- `A072405(lt[2, 1-A060082(n)])` -/
def P13384686642347940572.Spec : Prop :=
  ∀ n, P13384686642347940572.a n = A207617 (n + 1)

end A207617

/-! ## A207617.P3854595567194997218

`A072405(lt[A060082(n), 1/A060082(n)])`
-/

namespace A207617.P3854595567194997218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060082 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A060082 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072405 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A207617.P3854595567194997218

namespace A207617

/-- `A072405(lt[A060082(n), 1/A060082(n)])` -/
def P3854595567194997218.Spec : Prop :=
  ∀ n, P3854595567194997218.a n = A207617 (n + 1)

end A207617

/-!
# A207619: Triangle of coefficients of polynomials v(n,x) jointly generated with A207618; see the Formula section.

The programs for A207619, there is no canonical definition to state claims against.
-/

/-! ## A207619.P16842628655180162821

`A208341(n)+A049600(n)`
-/

namespace A207619.P16842628655180162821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n + A049600 n

end

end A207619.P16842628655180162821

/-! ## A207619.P18080462599010519367

`A160232(n+1)+2*A049600(n)`
-/

namespace A207619.P18080462599010519367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) + 2 * A049600 n

end

end A207619.P18080462599010519367

/-! ## A207619.P14700447325927173019

`2*A208341(n)-A160232(n+1)`
-/

namespace A207619.P14700447325927173019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208341 n - A160232 (n + 1)

end

end A207619.P14700447325927173019

/-! ## A207619.P16110381863008199348

`A105306(A038722(n+1))+2*A049600(n)`
-/

namespace A207619.P16110381863008199348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105306 (A038722 (n + 1)).toNat + 2 * A049600 n

end

end A207619.P16110381863008199348

/-! ## A207619.P16730171910073374436

`2*A208341(n)-A105306(A038722(n+1))`
-/

namespace A207619.P16730171910073374436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208341 n - A105306 (A038722 (n + 1)).toNat

end

end A207619.P16730171910073374436

/-! ## A207619.P7253341553737556866

`A160232(n+1)+A049600(A028310(n))+A049600(n)`
-/

namespace A207619.P7253341553737556866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) + (A049600 (A028310 n).toNat + A049600 n)

end

end A207619.P7253341553737556866

/-! ## A207619.P15563667415056314667

`A049600(n+1)+A121462(n+1)+A049600(n)`
-/

namespace A207619.P15563667415056314667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (n + 1) + (A121462 (n + 1) + A049600 n)

end

end A207619.P15563667415056314667

/-! ## A207619.P5486806344755563185

`A207615(A038722(n+1))`
-/

namespace A207619.P5486806344755563185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207615 (A038722 (n + 1)).toNat

end

end A207619.P5486806344755563185

/-! ## A207619.P15549882454687457427

`A106195(A061579(n))+A049600(n)`
-/

namespace A207619.P15549882454687457427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A061579 n).toNat + A049600 n

end

end A207619.P15549882454687457427

/-! ## A207619.P17114273876112725753

`A106195(A038722(n+1)-1)+A049600(n)`
-/

namespace A207619.P17114273876112725753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A038722 (n + 1) - 1).toNat + A049600 n

end

end A207619.P17114273876112725753

/-! ## A207619.P11221412764330361055

`A049600(comp[∑[n]])+A049600(n)`
-/

namespace A207619.P11221412764330361055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A049600 n

end

end A207619.P11221412764330361055

/-!
# A207620: Triangle of coefficients of polynomials u(n,x) jointly generated with A207621; see the Formula section.

The programs for A207620, the canonical program `A207620.P5954762046324026887` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207620 has offset 1).

The definition of A207620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207620.P5528502625243726455

`A207606(n+1)+A085478(n)%A207607(n+1)`
-/

namespace A207620.P5528502625243726455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207606 (n + 1) + Int.tmod (A085478 n) (A207607 (n + 1))

end

end A207620.P5528502625243726455

namespace A207620

/-- `A207606(n+1)+A085478(n)%A207607(n+1)` -/
def P5528502625243726455.Spec : Prop :=
  ∀ n, P5528502625243726455.a n = A207620 (n + 1)

end A207620

/-! ## A207620.P5954762046324026887

`A258993(n+1)+A102426(A061885(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A207620

/-- `A258993(n+1)+A102426(A061885(n))` -/
def P5954762046324026887.Spec : Prop :=
  ∀ n, P5954762046324026887.a n = A207620 (n + 1)

theorem P5954762046324026887.correct : P5954762046324026887.Spec := by
  intro n
  simp only [A207620, Nat.add_sub_cancel]

end A207620

/-! ## A207620.P5193727812919451101

`A143858(A028310(n))+A102426(A061885(n))`
-/

namespace A207620.P5193727812919451101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (A028310 n).toNat + A102426 (A061885 n).toNat

end

end A207620.P5193727812919451101

namespace A207620

/-- `A143858(A028310(n))+A102426(A061885(n))` -/
def P5193727812919451101.Spec : Prop :=
  ∀ n, P5193727812919451101.a n = A207620 (n + 1)

end A207620

/-! ## A207620.P17097826691461368949

`A143858(A066182(n+1))+A102426(A061885(n))`
-/

namespace A207620.P17097826691461368949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (A066182 (n + 1)).toNat + A102426 (A061885 n).toNat

end

end A207620.P17097826691461368949

namespace A207620

/-- `A143858(A066182(n+1))+A102426(A061885(n))` -/
def P17097826691461368949.Spec : Prop :=
  ∀ n, P17097826691461368949.a n = A207620 (n + 1)

end A207620

/-! ## A207620.P2891704094969008754

`A102426(A063657(n+1))+A102426(A061885(n))`
-/

namespace A207620.P2891704094969008754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A063657 (n + 1)).toNat + A102426 (A061885 n).toNat

end

end A207620.P2891704094969008754

namespace A207620

/-- `A102426(A063657(n+1))+A102426(A061885(n))` -/
def P2891704094969008754.Spec : Prop :=
  ∀ n, P2891704094969008754.a n = A207620 (n + 1)

end A207620

/-!
# A207621: Triangle of coefficients of polynomials v(n,x) jointly generated with A207620; see the Formula section.

The programs for A207621, the canonical program `A207621.P2290235971314170358` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207621 has offset 1).

The definition of A207621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207621.P17530411503273810788

`A128908(A028310(n))+A078812(n)`
-/

namespace A207621.P17530411503273810788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A028310 n).toNat + A078812 n

end

end A207621.P17530411503273810788

namespace A207621

/-- `A128908(A028310(n))+A078812(n)` -/
def P17530411503273810788.Spec : Prop :=
  ∀ n, P17530411503273810788.a n = A207621 (n + 1)

end A207621

/-! ## A207621.P755754680565501548

`A128908(A000007(n)+n)+A078812(n)`
-/

namespace A207621.P755754680565501548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A000007 n + (n : ℤ)).toNat + A078812 n

end

end A207621.P755754680565501548

namespace A207621

/-- `A128908(A000007(n)+n)+A078812(n)` -/
def P755754680565501548.Spec : Prop :=
  ∀ n, P755754680565501548.a n = A207621 (n + 1)

end A207621

/-! ## A207621.P2290235971314170358

`A078812(n)+A085478(n)-A165253(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A207621

/-- `A078812(n)+A085478(n)-A165253(n)` -/
def P2290235971314170358.Spec : Prop :=
  ∀ n, P2290235971314170358.a n = A207621 (n + 1)

theorem P2290235971314170358.correct : P2290235971314170358.Spec := by
  intro n
  simp only [A207621, Nat.add_sub_cancel]

end A207621

/-! ## A207621.P1503150002233384461

`A078812(n)-(A000007(n)-A128908(n))`
-/

namespace A207621.P1503150002233384461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n - (A000007 n - A128908 n)

end

end A207621.P1503150002233384461

namespace A207621

/-- `A078812(n)-(A000007(n)-A128908(n))` -/
def P1503150002233384461.Spec : Prop :=
  ∀ n, P1503150002233384461.a n = A207621 (n + 1)

end A207621

/-! ## A207621.P15455361292878018365

`A207607(n+1)+A078812(n)-A085478(n)`
-/

namespace A207621.P15455361292878018365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207607 (n + 1) + (A078812 n - A085478 n)

end

end A207621.P15455361292878018365

namespace A207621

/-- `A207607(n+1)+A078812(n)-A085478(n)` -/
def P15455361292878018365.Spec : Prop :=
  ∀ n, P15455361292878018365.a n = A207621 (n + 1)

end A207621

/-! ## A207621.P5962292860294456834

`A207606(n+2)-A165253(n)`
-/

namespace A207621.P5962292860294456834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207606 (n + 2) - A165253 n

end

end A207621.P5962292860294456834

namespace A207621

/-- `A207606(n+2)-A165253(n)` -/
def P5962292860294456834.Spec : Prop :=
  ∀ n, P5962292860294456834.a n = A207621 (n + 1)

end A207621

/-! ## A207621.P2517789448436471648

`A207607(n+1)+A128908(n+1)`
-/

namespace A207621.P2517789448436471648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207607 (n + 1) + A128908 (n + 1)

end

end A207621.P2517789448436471648

namespace A207621

/-- `A207607(n+1)+A128908(n+1)` -/
def P2517789448436471648.Spec : Prop :=
  ∀ n, P2517789448436471648.a n = A207621 (n + 1)

end A207621

/-! ## A207621.P1991648607566281508

`A111125(n)-Δ[A128908(A028310(n))]`
-/

namespace A207621.P1991648607566281508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128908 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111125 n - (f1 (n + 1) - f1 n)

end

end A207621.P1991648607566281508

namespace A207621

/-- `A111125(n)-Δ[A128908(A028310(n))]` -/
def P1991648607566281508.Spec : Prop :=
  ∀ n, P1991648607566281508.a n = A207621 (n + 1)

end A207621

/-! ## A207621.P16530876667817897448

`A078812(n)+A128908(n)%A000713(n)`
-/

namespace A207621.P16530876667817897448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n + Int.tmod (A128908 n) (A000713 n)

end

end A207621.P16530876667817897448

namespace A207621

/-- `A078812(n)+A128908(n)%A000713(n)` -/
def P16530876667817897448.Spec : Prop :=
  ∀ n, P16530876667817897448.a n = A207621 (n + 1)

end A207621

/-!
# A207622: Triangle of coefficients of polynomials u(n,x) jointly generated with A207623; see the Formula section.

The programs for A207622, the canonical program `A207622.P11482556725908799106` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207622 has offset 1).

The definition of A207622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207622.P11482556725908799106

`A000079(n%floor(sqrt(n+1)))*A207616(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A207622

/-- `A000079(n%floor(sqrt(n+1)))*A207616(n+1)` -/
def P11482556725908799106.Spec : Prop :=
  ∀ n, P11482556725908799106.a n = A207622 (n + 1)

theorem P11482556725908799106.correct : P11482556725908799106.Spec := by
  intro n
  simp only [A207622, Nat.add_sub_cancel]

end A207622

/-! ## A207622.P15449175212812929715

`A059268(A091018(n))*A207616(n+1)`
-/

namespace A207622.P15449175212812929715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A207616 (n + 1)

end

end A207622.P15449175212812929715

namespace A207622

/-- `A059268(A091018(n))*A207616(n+1)` -/
def P15449175212812929715.Spec : Prop :=
  ∀ n, P15449175212812929715.a n = A207622 (n + 1)

end A207622

/-! ## A207622.P139441612880049210

`A059268(eq[1, A010783(n+1)])*A207616(n+1)`
-/

namespace A207622.P139441612880049210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A207616 (n + 1)

end

end A207622.P139441612880049210

namespace A207622

/-- `A059268(eq[1, A010783(n+1)])*A207616(n+1)` -/
def P139441612880049210.Spec : Prop :=
  ∀ n, P139441612880049210.a n = A207622 (n + 1)

end A207622

/-! ## A207622.P5697795351543255565

`A059268(A091018(n))*A209561(comp[n²]+n+1)`
-/

namespace A207622.P5697795351543255565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A209561 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A207622.P5697795351543255565

namespace A207622

/-- `A059268(A091018(n))*A209561(comp[n²]+n+1)` -/
def P5697795351543255565.Spec : Prop :=
  ∀ n, P5697795351543255565.a n = A207622 (n + 1)

end A207622

/-! ## A207622.P2707565915395526064

`A105070(n+1)+A004526(A207536(n+1))`
-/

namespace A207622.P2707565915395526064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 (n + 1) + A004526 (A207536 (n + 1)).toNat

end

end A207622.P2707565915395526064

namespace A207622

/-- `A105070(n+1)+A004526(A207536(n+1))` -/
def P2707565915395526064.Spec : Prop :=
  ∀ n, P2707565915395526064.a n = A207622 (n + 1)

end A207622

/-!
# A207623: Triangle of coefficients of polynomials v(n,x) jointly generated with A207622; see the Formula section.

The programs for A207623, the canonical program `A207623.P11214128450374438743` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207623 has offset 1).

The definition of A207623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207623.P11214128450374438743

`A207617(n+1)/A207616(n+2)*A207622(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A207623

/-- `A207617(n+1)/A207616(n+2)*A207622(n+2)` -/
def P11214128450374438743.Spec : Prop :=
  ∀ n, P11214128450374438743.a n = (A207623 (n + 1) : ℚ)

end A207623

/-!
# A207625: Triangle of coefficients of polynomials u(n,x) jointly generated with A207626; see the Formula section.

The programs for A207625, there is no canonical definition to state claims against.
-/

/-! ## A207625.P2601850466595878843

`A207608(n+1)+A004526(A208751(n+1))`
-/

namespace A207625.P2601850466595878843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207608 (n + 1) + A004526 (A208751 (n + 1)).toNat

end

end A207625.P2601850466595878843

/-! ## A207625.P7909771251165693581

`A366320((n+1)*A059268(n))`
-/

namespace A207625.P7909771251165693581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366320 ((n + 1 : ℤ) * A059268 n).toNat

end

end A207625.P7909771251165693581

/-!
# A207627: Triangle of coefficients of polynomials u(n,x) jointly generated with A207628; see the Formula section.

The programs for A207627, the canonical program `A207627.P14130250259770773065` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207627 has offset 1).

The definition of A207627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207627.P14130250259770773065

`A209705(A080036(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A207627

/-- `A209705(A080036(n))` -/
def P14130250259770773065.Spec : Prop :=
  ∀ n, P14130250259770773065.a n = A207627 (n + 1)

theorem P14130250259770773065.correct : P14130250259770773065.Spec := by
  intro n
  simp only [A207627, Nat.add_sub_cancel]

end A207627

/-! ## A207627.P14482975480352410789

`A209705(record[A066181(n+1)])`
-/

namespace A207627.P14482975480352410789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207627.P14482975480352410789

namespace A207627

/-- `A209705(record[A066181(n+1)])` -/
def P14482975480352410789.Spec : Prop :=
  ∀ n, P14482975480352410789.a n = A207627 (n + 1)

end A207627

/-! ## A207627.P14372060892182657842

`A209705(A123578(n)+1+n)`
-/

namespace A207627.P14372060892182657842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (A123578 n + 1 + (n : ℤ)).toNat

end

end A207627.P14372060892182657842

namespace A207627

/-- `A209705(A123578(n)+1+n)` -/
def P14372060892182657842.Spec : Prop :=
  ∀ n, P14372060892182657842.a n = A207627 (n + 1)

end A207627

/-! ## A207627.P5182246845650363188

`A209705(∑[A035214(n)]-A010054(n))`
-/

namespace A207627.P5182246845650363188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (∑ j ∈ Finset.range (n + 1), f1 j - A010054 n).toNat

end

end A207627.P5182246845650363188

namespace A207627

/-- `A209705(∑[A035214(n)]-A010054(n))` -/
def P5182246845650363188.Spec : Prop :=
  ∀ n, P5182246845650363188.a n = A207627 (n + 1)

end A207627

/-! ## A207627.P16049514631411344633

`A209705(A014132(n+1)-A010054(n))`
-/

namespace A207627.P16049514631411344633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (A014132 (n + 1) - A010054 n).toNat

end

end A207627.P16049514631411344633

namespace A207627

/-- `A209705(A014132(n+1)-A010054(n))` -/
def P16049514631411344633.Spec : Prop :=
  ∀ n, P16049514631411344633.a n = A207627 (n + 1)

end A207627

/-! ## A207627.P8861145877682165690

`A209705(eq[A029653(n), A208510(n+1)]+1)`
-/

namespace A207627.P8861145877682165690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209705 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A207627.P8861145877682165690

namespace A207627

/-- `A209705(eq[A029653(n), A208510(n+1)]+1)` -/
def P8861145877682165690.Spec : Prop :=
  ∀ n, P8861145877682165690.a n = A207627 (n + 1)

end A207627

/-!
# A207628: Triangle of coefficients of polynomials v(n,x) jointly generated with A207627; see the Formula section.

The programs for A207628, the canonical program `A207628.P18335954848228977278` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207628 has offset 1).

The definition of A207628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207628.P14225194530763462745

`abs(A293600(n+1))*A059268(n)`
-/

namespace A207628.P14225194530763462745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293600 (n + 1)| * A059268 n

end

end A207628.P14225194530763462745

namespace A207628

/-- `abs(A293600(n+1))*A059268(n)` -/
def P14225194530763462745.Spec : Prop :=
  ∀ n, P14225194530763462745.a n = A207628 (n + 1)

end A207628

/-! ## A207628.P3012632590354845037

`A029635(n)*A059268(n)-floor(acot(n))`
-/

namespace A207628.P3012632590354845037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n * A059268 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A207628.P3012632590354845037

namespace A207628

/-- `A029635(n)*A059268(n)-floor(acot(n))` -/
def P3012632590354845037.Spec : Prop :=
  ∀ n, P3012632590354845037.a n = A207628 (n + 1)

end A207628

/-! ## A207628.P18335954848228977278

`A029635(C(9, 8*n)+n)*A059268(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A207628

/-- `A029635(C(9, 8*n)+n)*A059268(n)` -/
def P18335954848228977278.Spec : Prop :=
  ∀ n, P18335954848228977278.a n = A207628 (n + 1)

theorem P18335954848228977278.correct : P18335954848228977278.Spec := by
  intro n
  simp only [A207628, Nat.add_sub_cancel]

end A207628

/-! ## A207628.P9577083280222367698

`A029635(A028310(n))*A059268(n)`
-/

namespace A207628.P9577083280222367698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A028310 n).toNat * A059268 n

end

end A207628.P9577083280222367698

namespace A207628

/-- `A029635(A028310(n))*A059268(n)` -/
def P9577083280222367698.Spec : Prop :=
  ∀ n, P9577083280222367698.a n = A207628 (n + 1)

end A207628

/-! ## A207628.P9679289300997336985

`A029635(A000007(n)+n)*A059268(n)`
-/

namespace A207628.P9679289300997336985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A000007 n + (n : ℤ)).toNat * A059268 n

end

end A207628.P9679289300997336985

namespace A207628

/-- `A029635(A000007(n)+n)*A059268(n)` -/
def P9679289300997336985.Spec : Prop :=
  ∀ n, P9679289300997336985.a n = A207628 (n + 1)

end A207628

/-! ## A207628.P17401185564924173657

`(A029635(n)-A000007(n))*A059268(n)`
-/

namespace A207628.P17401185564924173657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029635 n - A000007 n) * A059268 n

end

end A207628.P17401185564924173657

namespace A207628

/-- `(A029635(n)-A000007(n))*A059268(n)` -/
def P17401185564924173657.Spec : Prop :=
  ∀ n, P17401185564924173657.a n = A207628 (n + 1)

end A207628

/-! ## A207628.P7217122278998791181

`A029635(n)*A059268(n)-A001316(n)%2`
-/

namespace A207628.P7217122278998791181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n * A059268 n - Int.tmod (A001316 n) 2

end

end A207628.P7217122278998791181

namespace A207628

/-- `A029635(n)*A059268(n)-A001316(n)%2` -/
def P7217122278998791181.Spec : Prop :=
  ∀ n, P7217122278998791181.a n = A207628 (n + 1)

end A207628

/-! ## A207628.P17299359075768481084

`A029635(n)*A059268(n)-val(A000096(n+1), n+2)`
-/

namespace A207628.P17299359075768481084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n * A059268 n - (SequenceMachineLib.valuation (A000096 (n + 1)).toNat (n + 2) : ℤ)

end

end A207628.P17299359075768481084

namespace A207628

/-- `A029635(n)*A059268(n)-val(A000096(n+1), n+2)` -/
def P17299359075768481084.Spec : Prop :=
  ∀ n, P17299359075768481084.a n = A207628 (n + 1)

end A207628

/-! ## A207628.P12178714258812815955

`A029653(A061579(n))*A059268(n)`
-/

namespace A207628.P12178714258812815955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A061579 n).toNat * A059268 n

end

end A207628.P12178714258812815955

namespace A207628

/-- `A029653(A061579(n))*A059268(n)` -/
def P12178714258812815955.Spec : Prop :=
  ∀ n, P12178714258812815955.a n = A207628 (n + 1)

end A207628

/-! ## A207628.P315664219096101020

`(A029635(n)-A007814(A000040(n+1)))*A059268(n)`
-/

namespace A207628.P315664219096101020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029635 n - A007814 (A000040 (n + 1)).toNat) * A059268 n

end

end A207628.P315664219096101020

namespace A207628

/-- `(A029635(n)-A007814(A000040(n+1)))*A059268(n)` -/
def P315664219096101020.Spec : Prop :=
  ∀ n, P315664219096101020.a n = A207628 (n + 1)

end A207628

/-!
# A207632: Triangle of coefficients of polynomials v(n,x) jointly generated with A207631; see Formula section.

The programs for A207632, there is no canonical definition to state claims against.
-/

/-! ## A207632.P7847305036144796256

`A155161(A028310(n))+A122075(n)`
-/

namespace A207632.P7847305036144796256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A028310 n).toNat + A122075 n

end

end A207632.P7847305036144796256

/-! ## A207632.P2789584835051211945

`A155161(A000007(n)+n)+A122075(n)`
-/

namespace A207632.P2789584835051211945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A000007 n + (n : ℤ)).toNat + A122075 n

end

end A207632.P2789584835051211945

/-! ## A207632.P1733339780428340490

`A037027(n)+A122075(n)-A055830(n)`
-/

namespace A207632.P1733339780428340490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + (A122075 n - A055830 n)

end

end A207632.P1733339780428340490

/-! ## A207632.P16289209560470152678

`A037027(n)+A193737(n)-A000007(n)`
-/

namespace A207632.P16289209560470152678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + (A193737 n - A000007 n)

end

end A207632.P16289209560470152678

/-! ## A207632.P5810530181952418739

`A208609(A038722(n+1))`
-/

namespace A207632.P5810530181952418739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208609 (A038722 (n + 1)).toNat

end

end A207632.P5810530181952418739

/-! ## A207632.P15339912575554771410

`A155161(A066182(n+1))+A122075(n)`
-/

namespace A207632.P15339912575554771410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A066182 (n + 1)).toNat + A122075 n

end

end A207632.P15339912575554771410

/-! ## A207632.P7869628953041861805

`A209599(A245300(n))+A155161(A028310(n))`
-/

namespace A207632.P7869628953041861805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 (A245300 n).toNat + A155161 (A028310 n).toNat

end

end A207632.P7869628953041861805

/-! ## A207632.P15540235325278178330

`A155161(n)+A122075(n)%A054455(n)`
-/

namespace A207632.P15540235325278178330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 n + Int.tmod (A122075 n) (A054455 n)

end

end A207632.P15540235325278178330

/-! ## A207632.P15659050433452051479

`A037027(n)+A193737(n)%A000079(n)`
-/

namespace A207632.P15659050433452051479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + Int.tmod (A193737 n) (A000079 n)

end

end A207632.P15659050433452051479

/-!
# A207634: Triangle of coefficients of polynomials v(n,x) jointly generated with A207633; see Formula section.

The programs for A207634, there is no canonical definition to state claims against.
-/

/-! ## A207634.P3848981335035764252

`2*A209147(n+1)-A209125(n+1)`
-/

namespace A207634.P3848981335035764252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209147 (n + 1) - A209125 (n + 1)

end

end A207634.P3848981335035764252

/-! ## A207634.P4453845900894256043

`A004277(A209147(n+1))-A209125(n+1)`
-/

namespace A207634.P4453845900894256043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A209147 (n + 1)).toNat - A209125 (n + 1)

end

end A207634.P4453845900894256043

/-!
# A207636: Triangle of coefficients of polynomials v(n,x) jointly generated with A207635; see Formula section.

The programs for A207636, the canonical program `A207636.P15349936276195465793` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207636 has offset 1).

The definition of A207636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207636.P15349936276195465793

`2*A038207(n)-A183190(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A207636

/-- `2*A038207(n)-A183190(n)` -/
def P15349936276195465793.Spec : Prop :=
  ∀ n, P15349936276195465793.a n = A207636 (n + 1)

theorem P15349936276195465793.correct : P15349936276195465793.Spec := by
  intro n
  simp only [A207636, Nat.add_sub_cancel]

end A207636

/-! ## A207636.P10736509683937890

`A038207(n)+A200139(n)-A000007(n)`
-/

namespace A207636.P10736509683937890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + (A200139 n - A000007 n)

end

end A207636.P10736509683937890

namespace A207636

/-- `A038207(n)+A200139(n)-A000007(n)` -/
def P10736509683937890.Spec : Prop :=
  ∀ n, P10736509683937890.a n = A207636 (n + 1)

end A207636

/-! ## A207636.P5609130269610133536

`A038207(n)+A057427(n)*A200139(n)`
-/

namespace A207636.P5609130269610133536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + A057427 n * A200139 n

end

end A207636.P5609130269610133536

namespace A207636

/-- `A038207(n)+A057427(n)*A200139(n)` -/
def P5609130269610133536.Spec : Prop :=
  ∀ n, P5609130269610133536.a n = A207636 (n + 1)

end A207636

/-! ## A207636.P18120080099674647736

`A038207(n)+A200139(n)%A024537(n)`
-/

namespace A207636.P18120080099674647736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + Int.tmod (A200139 n) (A024537 n)

end

end A207636.P18120080099674647736

namespace A207636

/-- `A038207(n)+A200139(n)%A024537(n)` -/
def P18120080099674647736.Spec : Prop :=
  ∀ n, P18120080099674647736.a n = A207636 (n + 1)

end A207636

/-! ## A207636.P549328930036241677

`A200139(n)+A038207(n)%A005054(n)`
-/

namespace A207636.P549328930036241677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 n + Int.tmod (A038207 n) (A005054 n)

end

end A207636.P549328930036241677

namespace A207636

/-- `A200139(n)+A038207(n)%A005054(n)` -/
def P549328930036241677.Spec : Prop :=
  ∀ n, P549328930036241677.a n = A207636 (n + 1)

end A207636

/-! ## A207636.P11671527496708668843

`A004277(A038207(n))-A183190(n)`
-/

namespace A207636.P11671527496708668843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A038207 n).toNat - A183190 n

end

end A207636.P11671527496708668843

namespace A207636

/-- `A004277(A038207(n))-A183190(n)` -/
def P11671527496708668843.Spec : Prop :=
  ∀ n, P11671527496708668843.a n = A207636 (n + 1)

end A207636

/-!
# A207637: Squarefree sums of 3 successive primes.

The programs for A207637, the canonical program `A207637.P8278429149852337198` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207637 has offset 1).

The definition of A207637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207637.P16876062288295314438

`record[A007947(A034961(n+1))]`
-/

namespace A207637.P16876062288295314438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A034961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207637.P16876062288295314438

namespace A207637

/-- `record[A007947(A034961(n+1))]` -/
def P16876062288295314438.Spec : Prop :=
  ∀ n, P16876062288295314438.a n = A207637 (n + 1)

end A207637

/-! ## A207637.P9219404276028581473

`filter[A034961(n+1), A008966(#)]`
-/

namespace A207637.P9219404276028581473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A207637.P9219404276028581473

namespace A207637

/-- `filter[A034961(n+1), A008966(#)]` -/
def P9219404276028581473.Spec : Prop :=
  ∀ n, P9219404276028581473.a n = A207637 (n + 1)

end A207637

/-! ## A207637.P4134408097186865368

`filter[A034961(n+1), A323154(#)]`
-/

namespace A207637.P4134408097186865368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A207637.P4134408097186865368

namespace A207637

/-- `filter[A034961(n+1), A323154(#)]` -/
def P4134408097186865368.Spec : Prop :=
  ∀ n, P4134408097186865368.a n = A207637 (n + 1)

end A207637

/-! ## A207637.P13823653580736288712

`filter[A034961(n+1), A353559(#)]`
-/

namespace A207637.P13823653580736288712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A207637.P13823653580736288712

namespace A207637

/-- `filter[A034961(n+1), A353559(#)]` -/
def P13823653580736288712.Spec : Prop :=
  ∀ n, P13823653580736288712.a n = A207637 (n + 1)

end A207637

/-! ## A207637.P8278429149852337198

`filter[A034961(n+1), A353627(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A207637

/-- `filter[A034961(n+1), A353627(#)]` -/
def P8278429149852337198.Spec : Prop :=
  ∀ n, P8278429149852337198.a n = A207637 (n + 1)

theorem P8278429149852337198.correct : P8278429149852337198.Spec := by
  intro n
  simp only [A207637, Nat.add_sub_cancel]

end A207637

/-! ## A207637.P7442739301366604336

`filter[A034961(n+1), A359834(#)]`
-/

namespace A207637.P7442739301366604336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A207637.P7442739301366604336

namespace A207637

/-- `filter[A034961(n+1), A359834(#)]` -/
def P7442739301366604336.Spec : Prop :=
  ∀ n, P7442739301366604336.a n = A207637 (n + 1)

end A207637

/-! ## A207637.P15392379400541832471

`∩[A005117(n+1), A034961(n+1)]`
-/

namespace A207637.P15392379400541832471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P15392379400541832471

namespace A207637

/-- `∩[A005117(n+1), A034961(n+1)]` -/
def P15392379400541832471.Spec : Prop :=
  ∀ n, (P15392379400541832471.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P17313048801513319019

`∩[A034961(n+1), A348499(n+1)]`
-/

namespace A207637.P17313048801513319019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P17313048801513319019

namespace A207637

/-- `∩[A034961(n+1), A348499(n+1)]` -/
def P17313048801513319019.Spec : Prop :=
  ∀ n, (P17313048801513319019.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P2273481312273296699

`∩[A034961(n+1), A348506(n+1)]`
-/

namespace A207637.P2273481312273296699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P2273481312273296699

namespace A207637

/-- `∩[A034961(n+1), A348506(n+1)]` -/
def P2273481312273296699.Spec : Prop :=
  ∀ n, (P2273481312273296699.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P17930956081179611377

`record[A007947(A215848(n+1)+A001043(n+1))]`
-/

namespace A207637.P17930956081179611377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A215848 (n + 1) + A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207637.P17930956081179611377

namespace A207637

/-- `record[A007947(A215848(n+1)+A001043(n+1))]` -/
def P17930956081179611377.Spec : Prop :=
  ∀ n, P17930956081179611377.a n = A207637 (n + 1)

end A207637

/-! ## A207637.P13884886117852734774

`∩[A034961(n+1), A367801(n+1)]`
-/

namespace A207637.P13884886117852734774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P13884886117852734774

namespace A207637

/-- `∩[A034961(n+1), A367801(n+1)]` -/
def P13884886117852734774.Spec : Prop :=
  ∀ n, (P13884886117852734774.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P7557898464607247002

`∩[A034961(n+1), A087246(n+1)]`
-/

namespace A207637.P7557898464607247002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P7557898464607247002

namespace A207637

/-- `∩[A034961(n+1), A087246(n+1)]` -/
def P7557898464607247002.Spec : Prop :=
  ∀ n, (P7557898464607247002.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P16450510920433632935

`∩[A034961(n+1), A064594(n+1)]`
-/

namespace A207637.P16450510920433632935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P16450510920433632935

namespace A207637

/-- `∩[A034961(n+1), A064594(n+1)]` -/
def P16450510920433632935.Spec : Prop :=
  ∀ n, (P16450510920433632935.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P17735695338435380706

`∩[A034961(n+1), A144338(n+1)]`
-/

namespace A207637.P17735695338435380706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P17735695338435380706

namespace A207637

/-- `∩[A034961(n+1), A144338(n+1)]` -/
def P17735695338435380706.Spec : Prop :=
  ∀ n, (P17735695338435380706.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P13673056041253769169

`∩[A034961(n+1), A366882(n+1)]`
-/

namespace A207637.P13673056041253769169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P13673056041253769169

namespace A207637

/-- `∩[A034961(n+1), A366882(n+1)]` -/
def P13673056041253769169.Spec : Prop :=
  ∀ n, (P13673056041253769169.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P6749049498378132296

`∩[A034961(n+1), A348961(n+1)]`
-/

namespace A207637.P6749049498378132296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P6749049498378132296

namespace A207637

/-- `∩[A034961(n+1), A348961(n+1)]` -/
def P6749049498378132296.Spec : Prop :=
  ∀ n, (P6749049498378132296.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P11990523204718801633

`∩[A034961(n+1), A336223(n+1)]`
-/

namespace A207637.P11990523204718801633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P11990523204718801633

namespace A207637

/-- `∩[A034961(n+1), A336223(n+1)]` -/
def P11990523204718801633.Spec : Prop :=
  ∀ n, (P11990523204718801633.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P9083694427603669830

`∩[A034961(n+1), A143719(n+1)]`
-/

namespace A207637.P9083694427603669830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P9083694427603669830

namespace A207637

/-- `∩[A034961(n+1), A143719(n+1)]` -/
def P9083694427603669830.Spec : Prop :=
  ∀ n, (P9083694427603669830.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P10036396627834091190

`∩[A034961(n+1), A333634(n+1)]`
-/

namespace A207637.P10036396627834091190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P10036396627834091190

namespace A207637

/-- `∩[A034961(n+1), A333634(n+1)]` -/
def P10036396627834091190.Spec : Prop :=
  ∀ n, (P10036396627834091190.a n : ℤ) = A207637 (n + 1)

end A207637

/-! ## A207637.P14869105986010376614

`∩[A034961(n+1), A349026(n+1)]`
-/

namespace A207637.P14869105986010376614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207637.P14869105986010376614

namespace A207637

/-- `∩[A034961(n+1), A349026(n+1)]` -/
def P14869105986010376614.Spec : Prop :=
  ∀ n, (P14869105986010376614.a n : ℤ) = A207637 (n + 1)

end A207637

/-!
# A207638: Squares that can be written as a sum of 3 distinct nonzero squares in no more than one way.

The programs for A207638, there is no canonical definition to state claims against.
-/

/-! ## A207638.P13528064662972561051

`∩[A025339(n+1), n²]`
-/

namespace A207638.P13528064662972561051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025339 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A207638.P13528064662972561051

/-! ## A207638.P14399999351136041001

`eq[1, A238215(A233905(n))]²`
-/

namespace A207638.P14399999351136041001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 (A233905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A207638.P14399999351136041001

/-! ## A207638.P10335569754329246650

`eq[3, A003986(A030101(n))]²`
-/

namespace A207638.P10335569754329246650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A207638.P10335569754329246650

/-! ## A207638.P16914127090167897934

`eq[3, A003986(A325401(n))]²`
-/

namespace A207638.P16914127090167897934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A325401 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A207638.P16914127090167897934

/-! ## A207638.P8169128882091542352

`∩[A000290(n), A025339(n+1)]`
-/

namespace A207638.P8169128882091542352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207638.P8169128882091542352

/-!
# A207639: Squares that can be written as a sum of 3 distinct nonzero squares in more than one way.

The programs for A207639, there is no canonical definition to state claims against.
-/

/-! ## A207639.P14866089889491230033

`lt[8, A233905(n)]²`
-/

namespace A207639.P14866089889491230033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207639.P14866089889491230033

/-! ## A207639.P15402389630820820822

`lt[10, A264596(n)]²`
-/

namespace A207639.P15402389630820820822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207639.P15402389630820820822

/-! ## A207639.P11165408396617137806

`lt[18, A228451(n)]²`
-/

namespace A207639.P11165408396617137806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207639.P11165408396617137806

/-! ## A207639.P10674973349172152986

`lt[26, A329752(n)]²`
-/

namespace A207639.P10674973349172152986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329752 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207639.P10674973349172152986

/-! ## A207639.P17038640812275804251

`lt[1, A025442(n²)]²`
-/

namespace A207639.P17038640812275804251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207639.P17038640812275804251

/-!
# A207640: Squares that can be written as a sum of 3 distinct nonzero squares in exactly two ways.

The programs for A207640, there is no canonical definition to state claims against.
-/

/-! ## A207640.P10977672292225564874

`∩[A025340(n+1), n²]`
-/

namespace A207640.P10977672292225564874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025340 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A207640.P10977672292225564874

/-! ## A207640.P5810496641713771957

`eq[4, A007318(A233905(n))]²`
-/

namespace A207640.P5810496641713771957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A233905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A207640.P5810496641713771957

/-! ## A207640.P11034252146965388535

`∩[A000290(n), A025340(n+1)]`
-/

namespace A207640.P11034252146965388535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207640.P11034252146965388535

/-! ## A207640.P1051295214512335488

`eq[7, A112689(A342633(n))]²`
-/

namespace A207640.P1051295214512335488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A342633 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A207640.P1051295214512335488

/-! ## A207640.P14210006417333792626

`eq[7, A112689(A342633(n))]^A020639(2*(n+1))`
-/

namespace A207640.P14210006417333792626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A342633 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A207640.P14210006417333792626

/-!
# A207641: G.f.: Sum_{n>=0} x^n * Product_{k=1..n} (1+x^k)/(1-x^k).

The programs for A207641, there is no canonical definition to state claims against.
-/

/-! ## A207641.P15431446651848428165

`∑[A300415(n)]`
-/

namespace A207641.P15431446651848428165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207641.P15431446651848428165

/-! ## A207641.P2763291569422392202

`A211971(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A207641.P2763291569422392202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A211971 n + a (n - 2)

end

end A207641.P2763291569422392202

/-! ## A207641.P212540502828448533

`abs(∑[A004402(n)])`
-/

namespace A207641.P212540502828448533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A207641.P212540502828448533

/-! ## A207641.P16351846555016355930

`A015128(n)-a(n-1)` with `a(0)=1`
-/

namespace A207641.P16351846555016355930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015128 n - a (n - 1)

end

end A207641.P16351846555016355930

/-! ## A207641.P1213311845580145361

`A304627(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A207641.P1213311845580145361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304627 n + (2 - a (n - 1))

end

end A207641.P1213311845580145361

/-! ## A207641.P4571038050035504419

`2*A014968(n)-a(n-1)` with `a(0)=1`
-/

namespace A207641.P4571038050035504419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A014968 n - a (n - 1)

end

end A207641.P4571038050035504419

/-! ## A207641.P4822304673067371398

`lcm(∑[A004402(n)], A057077(n))`
-/

namespace A207641.P4822304673067371398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A057077 n)

end

end A207641.P4822304673067371398

/-! ## A207641.P7234866123887477526

`abs(∑[A015128(n)*A033999(n)])`
-/

namespace A207641.P7234866123887477526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A207641.P7234866123887477526

/-! ## A207641.P16271090406622642877

`gcd(∑[A004402(n)], A035444(2*n+1))`
-/

namespace A207641.P16271090406622642877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A035444 (2 * n + 1))

end

end A207641.P16271090406622642877

/-! ## A207641.P13722512020496237249

`lcm(A000002(n), A004402(n))-a(n-1)` with `a(0)=1`
-/

namespace A207641.P13722512020496237249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (A000002 n) (A004402 n) : ℤ) - a (n - 1)

end

end A207641.P13722512020496237249

/-! ## A207641.P4702560365670036124

`∑[A004402(n)]*A057077(2*n)`
-/

namespace A207641.P4702560365670036124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A207641.P4702560365670036124

/-! ## A207641.P18259597852109019329

`∑[A004402(n)]/A057077(A004277(n))`
-/

namespace A207641.P18259597852109019329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A057077 (A004277 n).toNat : ℚ)

end

end A207641.P18259597852109019329

/-! ## A207641.P18093106286319212574

`∑[A004402(n)]/A057077(A005408(n))`
-/

namespace A207641.P18093106286319212574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A207641.P18093106286319212574

/-! ## A207641.P2217849540682595243

`abs(∑[A001934(n)/A004403(n)*A015128(n)])`
-/

namespace A207641.P2217849540682595243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n : ℚ) / (A004403 n : ℚ) * (A015128 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A207641.P2217849540682595243

/-!
# A207644: a(n) = 1 + (n-1) + (n-2)*[(n-3)/2] + (n-3)*[(n-4)/2]*[(n-5)/3] + (n-4)*[(n-5)/2]*[(n-6)/3]*[(n-7)/4] +... where [x] = floor(x), with summation extending over the initial [n/2+1] products only.

The programs for A207644, there is no canonical definition to state claims against.
-/

/-! ## A207644.P7401160245409679874

`A002635(A182634(∑[n])+2)`
-/

namespace A207644.P7401160245409679874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A182634 (∑ j ∈ Finset.range (n + 1), f1 j) + 2).toNat

end

end A207644.P7401160245409679874

/-! ## A207644.P11894202160351474890

`A067595(A234042(n)+A000108(n))`
-/

namespace A207644.P11894202160351474890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067595 (A234042 n + A000108 n).toNat

end

end A207644.P11894202160351474890

/-! ## A207644.P1384996414769956329

`A236972(2*n+1)+A214249(A286097(n))`
-/

namespace A207644.P1384996414769956329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236972 (2 * n + 1) + A214249 (A286097 n).toNat

end

end A207644.P1384996414769956329

/-! ## A207644.P11593504831571653576

`A236972(2*n+1)+A214249(A286929(n))`
-/

namespace A207644.P11593504831571653576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236972 (2 * n + 1) + A214249 (A286929 n).toNat

end

end A207644.P11593504831571653576

/-!
# A207645: Triangle where T(n,k) = Product_{j=1..k} floor(n/j - 1), as read by rows n>=0, columns k=0..[n/2].

The programs for A207645, there is no canonical definition to state claims against.
-/

/-! ## A207645.P14908487565012085951

`A135225(record[A025581(A225530(n))])`
-/

namespace A207645.P14908487565012085951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A225530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A207645.P14908487565012085951

/-!
# A207646: Product_{k=1..n} floor(2*n/k - 1).

The programs for A207646, there is no canonical definition to state claims against.
-/

/-! ## A207646.P15694270850352092648

`A207645(n*(n+2))`
-/

namespace A207646.P15694270850352092648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207645 (n * (n + 2))

end

end A207646.P15694270850352092648

/-! ## A207646.P16310016051024280735

`A165153(∏{e}[A165148(n), #])`
-/

namespace A207646.P16310016051024280735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165153 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A207646.P16310016051024280735

/-!
# A207647: a(n) = Product_{k=1..n} floor((2*n+1)/k - 1).

The programs for A207647, there is no canonical definition to state claims against.
-/

/-! ## A207647.P8063518841380951262

`A207645((n+1)²+n)`
-/

namespace A207647.P8063518841380951262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207645 ((n + 1) ^ 2 + n)

end

end A207647.P8063518841380951262

/-! ## A207647.P3055750281764512740

`A033999(n)²*A207645(A028387(n))`
-/

namespace A207647.P3055750281764512740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A207645 (A028387 n).toNat

end

end A207647.P3055750281764512740

/-! ## A207647.P3114887715523596957

`A207645(A028387(n))%A254823(n+1)`
-/

namespace A207647.P3114887715523596957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207645 (A028387 n).toNat) (A254823 (n + 1))

end

end A207647.P3114887715523596957

/-! ## A207647.P12308445168323725200

`A030523(∑[n+1])*A207645(A028387(n))`
-/

namespace A207647.P12308445168323725200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030523 (∑ j ∈ Finset.range (n + 1), f1 j) * A207645 (A028387 n).toNat

end

end A207647.P12308445168323725200

/-! ## A207647.P13198579867913916117

`A014963(A014574(n+2))*A207645(A028387(n))`
-/

namespace A207647.P13198579867913916117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014574 (n + 2)).toNat * A207645 (A028387 n).toNat

end

end A207647.P13198579867913916117

/-!
# A207648: Expansion of e.g.f. Sum_{n>=0} 1/(n+1)! * Product_{k=1..n} ((1+x)^(n+k) - 1).

The programs for A207648, there is no canonical definition to state claims against.
-/

/-! ## A207648.P12863312997743570035

`A003658(A218937(∑[n]))`
-/

namespace A207648.P12863312997743570035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (A218937 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A207648.P12863312997743570035

/-!
# A207649: E.g.f.: Sum_{n>=0} 1/n! * Product_{k=1..n} ((1+x)^k - 1).

The programs for A207649, there is no canonical definition to state claims against.
-/

/-! ## A207649.P10186888674327230915

`n*A136110(a(n-1))` with `a(0)=1`
-/

namespace A207649.P10186888674327230915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A136110 (a (n - 1)).toNat

end

end A207649.P10186888674327230915

/-! ## A207649.P8506577655591210408

`A034887(A002866(n)+n)`
-/

namespace A207649.P8506577655591210408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A002866 n + (n : ℤ)).toNat

end

end A207649.P8506577655591210408

/-!
# A207650: Squares that can be written as a sum of 3 distinct nonzero squares in 3 or more ways.

The programs for A207650, there is no canonical definition to state claims against.
-/

/-! ## A207650.P2255051661617166717

`lt[9, A340717(n)]²`
-/

namespace A207650.P2255051661617166717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207650.P2255051661617166717

/-! ## A207650.P3836416344194631126

`lt[10, A323889(n)]²`
-/

namespace A207650.P3836416344194631126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207650.P3836416344194631126

/-! ## A207650.P14715129153566622200

`lt[15, A181787(n)]²`
-/

namespace A207650.P14715129153566622200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207650.P14715129153566622200

/-! ## A207650.P14838138422112867850

`lt[2, A025442(n²)]²`
-/

namespace A207650.P14838138422112867850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207650.P14838138422112867850

/-! ## A207650.P127829019124165872

`lt[29, A324533(2*n)]²`
-/

namespace A207650.P127829019124165872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324533 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A207650.P127829019124165872

/-!
# A207651: G.f.: Sum_{n>=0} Product_{k=1..n} (1 - (1-x)^k)/(1 - x^k).

The programs for A207651, there is no canonical definition to state claims against.
-/

/-! ## A207651.P931818990207421945

`A289495(n*(n*a(n-1)+1))+n` with `a(0)=1`
-/

namespace A207651.P931818990207421945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289495 ((n : ℤ) * ((n : ℤ) * a (n - 1) + 1)).toNat + (n : ℤ)

end

end A207651.P931818990207421945

/-! ## A207651.P4915478699148666292

`A247971(A148965(n))`
-/

namespace A207651.P4915478699148666292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A148965 n).toNat

end

end A207651.P4915478699148666292

/-! ## A207651.P4208341458492642616

`and(-5, A194640(∑[A102318(n)]))`
-/

namespace A207651.P4208341458492642616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A194640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A207651.P4208341458492642616

/-!
# A207652: G.f.: Sum_{n>=0} Product_{k=1..n} ((1+x)^k - 1)/(1 - x^k).

The programs for A207652, there is no canonical definition to state claims against.
-/

/-! ## A207652.P633784012949913650

`A028310(A351152(n)+A048715(n))`
-/

namespace A207652.P633784012949913650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A351152 n + A048715 n).toNat

end

end A207652.P633784012949913650

/-! ## A207652.P460256648607471836

`A061579(A143806(∑[n]+1))-A029001(n)`
-/

namespace A207652.P460256648607471836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A143806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat - A029001 n

end

end A207652.P460256648607471836

/-!
# A207653: G.f.: Sum_{n>=0} Product_{k=1..n} (1 - (1-x)^(2*k-1))/(1 - x^(2*k-1)).

The programs for A207653, there is no canonical definition to state claims against.
-/

/-! ## A207653.P3091530704487996673

`A261585(2*A000522(n+1))`
-/

namespace A207653.P3091530704487996673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (2 * A000522 (n + 1)).toNat

end

end A207653.P3091530704487996673

/-! ## A207653.P5380054503750695966

`A350356(A000108(n))+A349058(n)`
-/

namespace A207653.P5380054503750695966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350356 (A000108 n).toNat + A349058 n

end

end A207653.P5380054503750695966

/-!
# A207654: G.f.: Sum_{n>=0} Product_{k=1..n} ((1+x)^(2*k-1) - 1)/(1 - x^(2*k-1)).

The programs for A207654, there is no canonical definition to state claims against.
-/

/-! ## A207654.P15212250941567519577

`A227428(A219874(n))+A116956(n)`
-/

namespace A207654.P15212250941567519577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A219874 n).toNat + A116956 n

end

end A207654.P15212250941567519577

/-! ## A207654.P14653505830617010751

`A144740(A057450(n+1)+A005364(n))`
-/

namespace A207654.P14653505830617010751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 (A057450 (n + 1) + A005364 n).toNat

end

end A207654.P14653505830617010751

/-!
# A207655: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207655, there is no canonical definition to state claims against.
-/

/-! ## A207655.P4700494093150619409

`A207661(∑[4*n]+1)`
-/

namespace A207655.P4700494093150619409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207655.P4700494093150619409

/-! ## A207655.P14847638952319590988

`lcm(2, A207661(A001844(n)))`
-/

namespace A207655.P14847638952319590988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207661 (A001844 n).toNat)

end

end A207655.P14847638952319590988

/-! ## A207655.P11118466171288974541

`A207661(A001844(n))+A185255(n)`
-/

namespace A207655.P11118466171288974541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A001844 n).toNat + A185255 n

end

end A207655.P11118466171288974541

/-! ## A207655.P15468732156962248973

`A207661(A001844(n))+A185284(n)`
-/

namespace A207655.P15468732156962248973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A001844 n).toNat + A185284 n

end

end A207655.P15468732156962248973

/-! ## A207655.P4422634405677072867

`A207661(A001844(n))/A007318(∑[n+1])`
-/

namespace A207655.P4422634405677072867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207661 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A207655.P4422634405677072867

/-!
# A207656: Number of n X 3 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207656, the canonical program `A207656.P209127212320490798` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207656 has offset 1).

The definition of A207656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207656.P209127212320490798

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=6, a(1)=36, a(2)=84, a(3)=198`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A207656

/-- `3*a(n-1)-a(n-2)-a(n-3)` -/
def P209127212320490798.Spec : Prop :=
  ∀ n, P209127212320490798.a n = A207656 (n + 1)

theorem P209127212320490798.correct : P209127212320490798.Spec := by
  intro n
  simp only [A207656, Nat.add_sub_cancel]

end A207656

/-! ## A207656.P6471834065179425743

`(A048655(n+1)+1)*A014963(A098355(n))`
-/

namespace A207656.P6471834065179425743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048655 (n + 1) + 1) * A014963 (A098355 n).toNat

end

end A207656.P6471834065179425743

namespace A207656

/-- `(A048655(n+1)+1)*A014963(A098355(n))` -/
def P6471834065179425743.Spec : Prop :=
  ∀ n, P6471834065179425743.a n = A207656 (n + 1)

end A207656

/-! ## A207656.P2950258536749975054

`A207661(∑[n+3]+1)`
-/

namespace A207656.P2950258536749975054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207656.P2950258536749975054

namespace A207656

/-- `A207661(∑[n+3]+1)` -/
def P2950258536749975054.Spec : Prop :=
  ∀ n, P2950258536749975054.a n = A207656 (n + 1)

end A207656

/-! ## A207656.P5565861817962097381

`lcm(2, A207661(A034856(n+2)))`
-/

namespace A207656.P5565861817962097381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207661 (A034856 (n + 2)).toNat)

end

end A207656.P5565861817962097381

namespace A207656

/-- `lcm(2, A207661(A034856(n+2)))` -/
def P5565861817962097381.Spec : Prop :=
  ∀ n, (P5565861817962097381.a n : ℤ) = A207656 (n + 1)

end A207656

/-! ## A207656.P11164602448573292174

`A326292(n)+A207661(A034856(n+2))`
-/

namespace A207656.P11164602448573292174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A207661 (A034856 (n + 2)).toNat

end

end A207656.P11164602448573292174

namespace A207656

/-- `A326292(n)+A207661(A034856(n+2))` -/
def P11164602448573292174.Spec : Prop :=
  ∀ n, P11164602448573292174.a n = A207656 (n + 1)

end A207656

/-!
# A207657: Number of nX4 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207657, there is no canonical definition to state claims against.
-/

/-! ## A207657.P12085089787940605029

`A207661(A141214(n+1))`
-/

namespace A207657.P12085089787940605029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A141214 (n + 1)).toNat

end

end A207657.P12085089787940605029

/-! ## A207657.P2675567564171779866

`A207661(A027379(n+2))`
-/

namespace A207657.P2675567564171779866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A027379 (n + 2)).toNat

end

end A207657.P2675567564171779866

/-! ## A207657.P6786297828894125987

`A207661(A055998(n+2))`
-/

namespace A207657.P6786297828894125987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A055998 (n + 2)).toNat

end

end A207657.P6786297828894125987

/-! ## A207657.P3885912128450567261

`A207661(A155212(n)+5)`
-/

namespace A207657.P3885912128450567261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A155212 n + 5).toNat

end

end A207657.P3885912128450567261

/-! ## A207657.P7561246232830452588

`A207661(A052905(n+1)+2)`
-/

namespace A207657.P7561246232830452588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A052905 (n + 1) + 2).toNat

end

end A207657.P7561246232830452588

/-!
# A207658: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207658, there is no canonical definition to state claims against.
-/

/-! ## A207658.P5340065547561422619

`A207661(Δ[A264443(n)])`
-/

namespace A207658.P5340065547561422619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (f1 (n + 1) - f1 n).toNat

end

end A207658.P5340065547561422619

/-! ## A207658.P5360371601100011177

`A207661(A046691(n+3))`
-/

namespace A207658.P5360371601100011177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A046691 (n + 3)).toNat

end

end A207658.P5360371601100011177

/-! ## A207658.P2916996816854310764

`A207661(A060577(n+4))`
-/

namespace A207658.P2916996816854310764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A060577 (n + 4)).toNat

end

end A207658.P2916996816854310764

/-! ## A207658.P9909820053232639707

`A207661(Δ[A023545(n+1)])`
-/

namespace A207658.P9909820053232639707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (f1 (n + 1) - f1 n).toNat

end

end A207658.P9909820053232639707

/-! ## A207658.P1026803746883912025

`A207661(A000217(n+5)-4)`
-/

namespace A207658.P1026803746883912025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A000217 (n + 5) - 4).toNat

end

end A207658.P1026803746883912025

/-!
# A207659: Number of nX6 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207659, there is no canonical definition to state claims against.
-/

/-! ## A207659.P12463003201272891426

`A207661(∑[n+6]+10)`
-/

namespace A207659.P12463003201272891426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A207659.P12463003201272891426

/-!
# A207660: Number of nX7 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207660, there is no canonical definition to state claims against.
-/

/-! ## A207660.P15035413216789349311

`A207661(eq[4, A219347(n)])`
-/

namespace A207660.P15035413216789349311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207660.P15035413216789349311

/-! ## A207660.P18060311525806458658

`A207661(eq[6, A193592(n)])`
-/

namespace A207660.P18060311525806458658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207660.P18060311525806458658

/-! ## A207660.P15339945384459819916

`A207661(A052905(n+4)-1)`
-/

namespace A207660.P15339945384459819916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A052905 (n + 4) - 1).toNat

end

end A207660.P15339945384459819916

/-! ## A207660.P1801712238151897602

`A207661(eq[10, A185782(n+1)])`
-/

namespace A207660.P1801712238151897602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207660.P1801712238151897602

/-! ## A207660.P17006154588436785707

`A207661(eq[7, A200370(n+1)])`
-/

namespace A207660.P17006154588436785707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207660.P17006154588436785707

/-!
# A207661: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207661, there is no canonical definition to state claims against.
-/

/-! ## A207661.P5546324456240786602

`A207774(A242474(n+2)-1)`
-/

namespace A207661.P5546324456240786602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A242474 (n + 2) - 1).toNat

end

end A207661.P5546324456240786602

/-! ## A207661.P7419947938480935236

`A207774(C(A255408(n+1), n))`
-/

namespace A207661.P7419947938480935236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (Nat.choose (A255408 (n + 1)).toNat n)

end

end A207661.P7419947938480935236

/-! ## A207661.P9273992594180633825

`A207774(n+1)%A048255(n+1)`
-/

namespace A207661.P9273992594180633825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207774 (n + 1)) (A048255 (n + 1))

end

end A207661.P9273992594180633825

/-! ## A207661.P3397651325121698680

`A207774(n+1)^Δ[A242474(n+1)]`
-/

namespace A207661.P3397651325121698680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242474 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207774 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A207661.P3397651325121698680

/-! ## A207661.P2295734781700287783

`A207774(n+1)*A351564(ceil(2^(n-1)))`
-/

namespace A207661.P2295734781700287783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (n + 1) * A351564 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A207661.P2295734781700287783

/-!
# A207662: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207662, there is no canonical definition to state claims against.
-/

/-! ## A207662.P1585446667157299860

`A207661(A141214(n)+7)`
-/

namespace A207662.P1585446667157299860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A141214 n + 7).toNat

end

end A207662.P1585446667157299860

/-! ## A207662.P2807087653672519992

`A207661(A052905(n)+9)`
-/

namespace A207662.P2807087653672519992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A052905 n + 9).toNat

end

end A207662.P2807087653672519992

/-! ## A207662.P8317838256645079626

`A207661(A055999(n)+10)`
-/

namespace A207662.P8317838256645079626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A055999 n + 10).toNat

end

end A207662.P8317838256645079626

/-! ## A207662.P9297050021332890149

`A207661(A167614(n+2)+1)`
-/

namespace A207662.P9297050021332890149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A167614 (n + 2) + 1).toNat

end

end A207662.P9297050021332890149

/-! ## A207662.P9996068664024062745

`A207661(A166136(n+2)-2)`
-/

namespace A207662.P9996068664024062745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A166136 (n + 2) - 2).toNat

end

end A207662.P9996068664024062745

/-!
# A207663: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207663, there is no canonical definition to state claims against.
-/

/-! ## A207663.P1998861619022589957

`A207661(A167499(n+3))`
-/

namespace A207663.P1998861619022589957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A167499 (n + 3)).toNat

end

end A207663.P1998861619022589957

/-! ## A207663.P4132135395787787545

`A207661(A155212(n)+13)`
-/

namespace A207663.P4132135395787787545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A155212 n + 13).toNat

end

end A207663.P4132135395787787545

/-! ## A207663.P2234420180106865315

`A207661(A000217(n+4)+5)`
-/

namespace A207663.P2234420180106865315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A000217 (n + 4) + 5).toNat

end

end A207663.P2234420180106865315

/-! ## A207663.P11478197722459719534

`A207661(A161680(n+5)+5)`
-/

namespace A207663.P11478197722459719534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A161680 (n + 5) + 5).toNat

end

end A207663.P11478197722459719534

/-! ## A207663.P12664967013555432827

`A207661(A046691(n+2)+9)`
-/

namespace A207663.P12664967013555432827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A046691 (n + 2) + 9).toNat

end

end A207663.P12664967013555432827

/-!
# A207664: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207664, there is no canonical definition to state claims against.
-/

/-! ## A207664.P16933977001051789562

`A207661(A166136(n+4))`
-/

namespace A207664.P16933977001051789562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A166136 (n + 4)).toNat

end

end A207664.P16933977001051789562

/-! ## A207664.P3666097921567470119

`A207661(A056115(n)+21)`
-/

namespace A207664.P3666097921567470119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A056115 n + 21).toNat

end

end A207664.P3666097921567470119

/-! ## A207664.P3906082869149081564

`A207661(A167499(n+4)+1)`
-/

namespace A207664.P3906082869149081564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A167499 (n + 4) + 1).toNat

end

end A207664.P3906082869149081564

/-! ## A207664.P4805578125054369240

`A207661(A000217(n+5)+6)`
-/

namespace A207664.P4805578125054369240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A000217 (n + 5) + 6).toNat

end

end A207664.P4805578125054369240

/-! ## A207664.P11255154444940415521

`A207661(A161680(n+6)+6)`
-/

namespace A207664.P11255154444940415521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A161680 (n + 6) + 6).toNat

end

end A207664.P11255154444940415521

/-!
# A207665: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207665, there is no canonical definition to state claims against.
-/

/-! ## A207665.P17051467282430370258

`A207661(A166136(n+5)+1)`
-/

namespace A207665.P17051467282430370258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A166136 (n + 5) + 1).toNat

end

end A207665.P17051467282430370258

/-! ## A207665.P13882957973798832453

`A207661(A133263(n+6)+5)`
-/

namespace A207665.P13882957973798832453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A133263 (n + 6) + 5).toNat

end

end A207665.P13882957973798832453

/-! ## A207665.P9111578318794418496

`A207661(A152950(n+7)+4)`
-/

namespace A207665.P9111578318794418496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A152950 (n + 7) + 4).toNat

end

end A207665.P9111578318794418496

/-! ## A207665.P15957336629044825669

`A207661(A000096(n+5)+8)`
-/

namespace A207665.P15957336629044825669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A000096 (n + 5) + 8).toNat

end

end A207665.P15957336629044825669

/-! ## A207665.P17548843389079787065

`A207661(A027379(n+4)+10)`
-/

namespace A207665.P17548843389079787065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207661 (A027379 (n + 4) + 10).toNat

end

end A207665.P17548843389079787065

/-!
# A207666: Least number k = k(m) for m = A207017(n).

The programs for A207666, there is no canonical definition to state claims against.
-/

/-! ## A207666.P17044921815388077941

`A067132(eq[2, A119999(n)])`
-/

namespace A207666.P17044921815388077941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207666.P17044921815388077941

/-! ## A207666.P6606226931972170849

`A067132(∏{p}[A328023(n+2), #]*A008619(n))`
-/

namespace A207666.P6606226931972170849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328023 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A008619 n).toNat

end

end A207666.P6606226931972170849

/-! ## A207666.P4415645670047934342

`A115570(A326491(n))+A005361(n+2)`
-/

namespace A207666.P4415645670047934342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (A326491 n).toNat + A005361 (n + 2)

end

end A207666.P4415645670047934342

/-! ## A207666.P18046429329088237777

`A062842(n+2)%A238482(3*n+2)+1`
-/

namespace A207666.P18046429329088237777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062842 (n + 2)) (A238482 (3 * n + 2)) + 1

end

end A207666.P18046429329088237777

/-!
# A207667: Numbers k such that phi(k) divides k+2.

The programs for A207667, there is no canonical definition to state claims against.
-/

/-! ## A207667.P2787809617687568904

`A119388(n+1)-1`
-/

namespace A207667.P2787809617687568904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119388 (n + 1) - 1

end

end A207667.P2787809617687568904

/-! ## A207667.P18409378273400022762

`record[A119388(A126759(n))-1]`
-/

namespace A207667.P18409378273400022762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119388 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207667.P18409378273400022762

/-! ## A207667.P3384755146313400942

`abs(A119388(n+1)+A057428(n+1))`
-/

namespace A207667.P3384755146313400942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119388 (n + 1) + A057428 (n + 1)|

end

end A207667.P3384755146313400942

/-! ## A207667.P17844938310295692645

`xor(ceil(3/A040976(n+2)), A119388(n+1))`
-/

namespace A207667.P17844938310295692645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈3 / (A040976 (n + 2) : ℚ)⌉ (A119388 (n + 1))

end

end A207667.P17844938310295692645

/-! ## A207667.P11243196229286589546

`xor(ceil(3/A259153(3*n+1)), A119388(n+1))`
-/

namespace A207667.P11243196229286589546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈3 / (A259153 (3 * n + 1) : ℚ)⌉ (A119388 (n + 1))

end

end A207667.P11243196229286589546

/-!
# A207668: Number of suitable numbers k(m) for m = A207017(n).

The programs for A207668, there is no canonical definition to state claims against.
-/

/-! ## A207668.P14726251874001072757

`∏{e}[A344523(n+2)+1, #]`
-/

namespace A207668.P14726251874001072757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344523 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A207668.P14726251874001072757

/-! ## A207668.P4154220442978763283

`A208645(xor(26, A035301(n)))`
-/

namespace A207668.P4154220442978763283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 (Int.xor 26 (A035301 n)).toNat

end

end A207668.P4154220442978763283

/-! ## A207668.P17874117910525853079

`gcd(A033091(n), A118925(n+1))`
-/

namespace A207668.P17874117910525853079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033091 n) (A118925 (n + 1))

end

end A207668.P17874117910525853079

/-! ## A207668.P6813795823735079364

`A347438(A259043(A013950(n+1)))+1`
-/

namespace A207668.P6813795823735079364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A259043 (A013950 (n + 1)).toNat).toNat + 1

end

end A207668.P6813795823735079364

/-! ## A207668.P10857330673139161058

`A002033(A393987(n)+A387381(3*n+1))`
-/

namespace A207668.P10857330673139161058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A393987 n + A387381 (3 * n + 1)).toNat

end

end A207668.P10857330673139161058

/-!
# A207669: Numbers that match polynomials irreducible (mod 3), with coefficients in {0,1,2}.

The programs for A207669, there is no canonical definition to state claims against.
-/

/-! ## A207669.P12250476170491049726

`A028898(A207671(n+1))`
-/

namespace A207669.P12250476170491049726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A207671 (n + 1)).toNat

end

end A207669.P12250476170491049726

/-! ## A207669.P6601624683402337706

`eq[char[A207670(n+1)], A151933(n)]`
-/

namespace A207669.P6601624683402337706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207670 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A207669.P6601624683402337706

/-!
# A207670: Numbers that match polynomials with coefficients in {0,1,2} that are not irreducible modulo 3; complement of A207670.

The programs for A207670, there is no canonical definition to state claims against.
-/

/-! ## A207670.P8053266530213697891

`comp[A207669(n+1)-1]+1`
-/

namespace A207670.P8053266530213697891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207669 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A207670.P8053266530213697891

/-! ## A207670.P17221355347698288378

`eq[char[A207669(n+1)], A151933(n)]`
-/

namespace A207670.P17221355347698288378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207669 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A207670.P17221355347698288378

/-! ## A207670.P12301670799700948414

`A298981(n+3)%A045943(A261031(n))`
-/

namespace A207670.P12301670799700948414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298981 (n + 3)) (A045943 (A261031 n).toNat)

end

end A207670.P12301670799700948414

/-! ## A207670.P669841710417825654

`lt[A363086(A122111(2*n+3)), A300293(n)]`
-/

namespace A207670.P669841710417825654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363086 (A122111 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A207670.P669841710417825654

/-!
# A207671: Numbers in ternary representation that match nonzero polynomials with all coefficients in {0,1,2} that are irreducible modulo 3.

The programs for A207671, there is no canonical definition to state claims against.
-/

/-! ## A207671.P16498300656600698634

`A007089(A207669(n+1))`
-/

namespace A207671.P16498300656600698634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A207669 (n + 1)).toNat

end

end A207671.P16498300656600698634

/-! ## A207671.P15354885518066234986

`record[A207968(n+1)/A174127(n)!]`
-/

namespace A207671.P15354885518066234986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207968 (n + 1) : ℚ) / (Nat.factorial (A174127 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207671.P15354885518066234986

/-! ## A207671.P11657961170839161362

`A207968(or(A004247(n), A032555(n+1)))`
-/

namespace A207671.P11657961170839161362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207968 (Int.lor (A004247 n) (A032555 (n + 1))).toNat

end

end A207671.P11657961170839161362

/-! ## A207671.P6822523136919275645

`A207968(or(A032555(n+1), A048720(n)))`
-/

namespace A207671.P6822523136919275645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207968 (Int.lor (A032555 (n + 1)) (A048720 n)).toNat

end

end A207671.P6822523136919275645

/-! ## A207671.P7242565983972178091

`A207968(or(A004247(n), A207954(n+1)))`
-/

namespace A207671.P7242565983972178091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207968 (Int.lor (A004247 n) (A207954 (n + 1))).toNat

end

end A207671.P7242565983972178091

/-!
# A207672: n + [ns/r] + [nt/r], where []=floor, r=5, s=(1+sqrt(5))/2, t=1/s.

The programs for A207672, there is no canonical definition to state claims against.
-/

/-! ## A207672.P14704645227240471333

`A037477(n)+A000005(A127975(n))`
-/

namespace A207672.P14704645227240471333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n + A000005 (A127975 n).toNat

end

end A207672.P14704645227240471333

/-! ## A207672.P512383506701811111

`A248375(n)+A000005(A127975(n))`
-/

namespace A207672.P512383506701811111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 n + A000005 (A127975 n).toNat

end

end A207672.P512383506701811111

/-! ## A207672.P5766482969273059737

`A195182(A225773(n+1)-1)+floor(n/3)`
-/

namespace A207672.P5766482969273059737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195182 (A225773 (n + 1) - 1).toNat + ⌊(n : ℚ) / 3⌋

end

end A207672.P5766482969273059737

/-! ## A207672.P9511930915979702670

`A055642(A293441(n))+A004773(n)`
-/

namespace A207672.P9511930915979702670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A293441 n).toNat + A004773 n

end

end A207672.P9511930915979702670

/-! ## A207672.P5197455557957238324

`A055642(A121279(n)²)+A004523(2*n)`
-/

namespace A207672.P5197455557957238324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A121279 n ^ 2).toNat + A004523 (2 * n)

end

end A207672.P5197455557957238324

/-!
# A207673: n+[nr/s]+[nt/s], where []=floor, r=5, s=(1+sqrt(5))/2, t=1/s.

The programs for A207673, the canonical program `A207673.P13052738508329505447` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207673 has offset 1).

The definition of A207673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207673.P13052738508329505447

`A249115(n+1)+A005206(A016897(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A207673

/-- `A249115(n+1)+A005206(A016897(n))` -/
def P13052738508329505447.Spec : Prop :=
  ∀ n, P13052738508329505447.a n = A207673 (n + 1)

theorem P13052738508329505447.correct : P13052738508329505447.Spec := by
  intro n
  simp only [A207673, Nat.add_sub_cancel]

end A207673

/-! ## A207673.P14846670904929134347

`A249115(n+1)+A005206(A249115(n+1)+A003231(n+1))`
-/

namespace A207673.P14846670904929134347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1) + A005206 (A249115 (n + 1) + A003231 (n + 1)).toNat

end

end A207673.P14846670904929134347

namespace A207673

/-- `A249115(n+1)+A005206(A249115(n+1)+A003231(n+1))` -/
def P14846670904929134347.Spec : Prop :=
  ∀ n, P14846670904929134347.a n = A207673 (n + 1)

end A207673

/-! ## A207673.P7319830710816916645

`A208326(n+1)-A005408(A003231(n+1))`
-/

namespace A207673.P7319830710816916645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208326 (n + 1) - A005408 (A003231 (n + 1)).toNat

end

end A207673.P7319830710816916645

namespace A207673

/-- `A208326(n+1)-A005408(A003231(n+1))` -/
def P7319830710816916645.Spec : Prop :=
  ∀ n, P7319830710816916645.a n = A207673 (n + 1)

end A207673

/-! ## A207673.P15122870179408642529

`A005206(5*n+3)+A249115(n+1)+A005614(5*n+3)`
-/

namespace A207673.P15122870179408642529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (5 * n + 3) + (A249115 (n + 1) + A005614 (5 * n + 3))

end

end A207673.P15122870179408642529

namespace A207673

/-- `A005206(5*n+3)+A249115(n+1)+A005614(5*n+3)` -/
def P15122870179408642529.Spec : Prop :=
  ∀ n, P15122870179408642529.a n = A207673 (n + 1)

end A207673

/-! ## A207673.P15771971423639445557

`A001950(5*(n+1))-(6*n+7+A001950(n+1))`
-/

namespace A207673.P15771971423639445557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (5 * (n + 1)) - ((6 * n + 7 : ℤ) + A001950 (n + 1))

end

end A207673.P15771971423639445557

namespace A207673

/-- `A001950(5*(n+1))-(6*n+7+A001950(n+1))` -/
def P15771971423639445557.Spec : Prop :=
  ∀ n, P15771971423639445557.a n = A207673 (n + 1)

end A207673

/-! ## A207673.P17118165264353160977

`A022342(Δ[A005891(n)])-A003231(n+1)`
-/

namespace A207673.P17118165264353160977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (f1 (n + 1) - f1 n).toNat - A003231 (n + 1)

end

end A207673.P17118165264353160977

namespace A207673

/-- `A022342(Δ[A005891(n)])-A003231(n+1)` -/
def P17118165264353160977.Spec : Prop :=
  ∀ n, P17118165264353160977.a n = A207673 (n + 1)

end A207673

/-! ## A207673.P17338425042488620165

`A060143(5*(n+1))+∑[A001468(A002251(n))]`
-/

namespace A207673.P17338425042488620165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A002251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (5 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207673.P17338425042488620165

namespace A207673

/-- `A060143(5*(n+1))+∑[A001468(A002251(n))]` -/
def P17338425042488620165.Spec : Prop :=
  ∀ n, P17338425042488620165.a n = A207673 (n + 1)

end A207673

/-! ## A207673.P17777151739596363569

`A060145(A190509(n+1))+A005206(A016897(n))`
-/

namespace A207673.P17777151739596363569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A190509 (n + 1)).toNat + A005206 (A016897 n).toNat

end

end A207673.P17777151739596363569

namespace A207673

/-- `A060145(A190509(n+1))+A005206(A016897(n))` -/
def P17777151739596363569.Spec : Prop :=
  ∀ n, P17777151739596363569.a n = A207673 (n + 1)

end A207673

/-! ## A207673.P12031144420576118896

`A000201(A000201(5*(n+1)))-A182760(5*(n+1))`
-/

namespace A207673.P12031144420576118896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000201 (5 * (n + 1))).toNat - A182760 (5 * (n + 1))

end

end A207673.P12031144420576118896

namespace A207673

/-- `A000201(A000201(5*(n+1)))-A182760(5*(n+1))` -/
def P12031144420576118896.Spec : Prop :=
  ∀ n, P12031144420576118896.a n = A207673 (n + 1)

end A207673

/-!
# A207674: Numbers such that all divisors occur in their Collatz trajectories.

The programs for A207674, there is no canonical definition to state claims against.
-/

/-! ## A207674.P5537767910559105758

`eq[char[A207675(n+1)], A000007(n)]`
-/

namespace A207674.P5537767910559105758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207675 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A207674.P5537767910559105758

/-! ## A207674.P7040707108632054591

`eq[char[A207675(n+1)], A000038(n)]`
-/

namespace A207674.P7040707108632054591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207675 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A207674.P7040707108632054591

/-! ## A207674.P12048088482919439853

`eq[char[A207675(n+1)], A130706(n+1)]`
-/

namespace A207674.P12048088482919439853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207675 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A207674.P12048088482919439853

/-! ## A207674.P2707988860254877453

`eq[char[A207675(n+1)], A266220(2*n)]`
-/

namespace A207674.P2707988860254877453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207675 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266220 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A207674.P2707988860254877453

/-! ## A207674.P7424773789291801674

`eq[char[A207675(n+1)], A151933(n)]`
-/

namespace A207674.P7424773789291801674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207675 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A207674.P7424773789291801674

/-!
# A207675: Numbers such that not all divisors occur in their Collatz trajectories.

The programs for A207675, there is no canonical definition to state claims against.
-/

/-! ## A207675.P10910956084138505423

`comp[A207674(n+1)-1]+1`
-/

namespace A207675.P10910956084138505423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207674 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A207675.P10910956084138505423

/-! ## A207675.P5813143458236993173

`A065475(comp[A207674(n+1)-1])`
-/

namespace A207675.P5813143458236993173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207674 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A207675.P5813143458236993173

/-! ## A207675.P92380414387464293

`eq[char[A207674(n+1)], A000038(n)]`
-/

namespace A207675.P92380414387464293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207674 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A207675.P92380414387464293

/-! ## A207675.P3650091655272838182

`∩[A177733(n+1), A379313(n+1)]`
-/

namespace A207675.P3650091655272838182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207675.P3650091655272838182

/-! ## A207675.P10189329742816942728

`∩[A140509(n+1), A177733(n+1)]`
-/

namespace A207675.P10189329742816942728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A207675.P10189329742816942728

/-!
# A207676: Nonlinearities of 3-variable Boolean functions ordered lexicographically.

The programs for A207676, the canonical program `A207676.P1860184903875247083` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207676 has offset 0).

The definition of A207676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207676.P1860184903875247083

`A207328(2*∑[and(n, -n)²]+n)/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A207676

/-- `A207328(2*∑[and(n, -n)²]+n)/2` -/
def P1860184903875247083.Spec : Prop :=
  ∀ n, P1860184903875247083.a n = (A207676 n : ℚ)

end A207676

/-! ## A207676.P13080450166583142953

`A207328(A001196(n))/2`
-/

namespace A207676.P13080450166583142953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207328 (A001196 n).toNat : ℚ) / 2

end

end A207676.P13080450166583142953

namespace A207676

/-- `A207328(A001196(n))/2` -/
def P13080450166583142953.Spec : Prop :=
  ∀ n, P13080450166583142953.a n = (A207676 n : ℚ)

end A207676

/-! ## A207676.P9227658123779695543

`A263835(A001316(n)%A088262(n+1))`
-/

namespace A207676.P9227658123779695543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263835 (Int.tmod (A001316 n) (A088262 (n + 1))).toNat

end

end A207676.P9227658123779695543

namespace A207676

/-- `A263835(A001316(n)%A088262(n+1))` -/
def P9227658123779695543.Spec : Prop :=
  ∀ n, P9227658123779695543.a n = A207676 n

end A207676

/-! ## A207676.P12007188273084530422

`A263835((A038573(n)+1)%A088262(n+1))`
-/

namespace A207676.P12007188273084530422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263835 (Int.tmod (A038573 n + 1) (A088262 (n + 1))).toNat

end

end A207676.P12007188273084530422

namespace A207676

/-- `A263835((A038573(n)+1)%A088262(n+1))` -/
def P12007188273084530422.Spec : Prop :=
  ∀ n, P12007188273084530422.a n = A207676 n

end A207676

/-! ## A207676.P6290262227391922648

`A110654(A001969(n+1)²)%A002034(n+1)`
-/

namespace A207676.P6290262227391922648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A001969 (n + 1) ^ 2).toNat) (A002034 (n + 1))

end

end A207676.P6290262227391922648

namespace A207676

/-- `A110654(A001969(n+1)²)%A002034(n+1)` -/
def P6290262227391922648.Spec : Prop :=
  ∀ n, P6290262227391922648.a n = A207676 n

end A207676

/-! ## A207676.P3240947303962411924

`A076826(A000120(n)%A008687(A265056(n)))`
-/

namespace A207676.P3240947303962411924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (Int.tmod (A000120 n) (A008687 (A265056 n).toNat)).toNat

end

end A207676.P3240947303962411924

namespace A207676

/-- `A076826(A000120(n)%A008687(A265056(n)))` -/
def P3240947303962411924.Spec : Prop :=
  ∀ n, P3240947303962411924.a n = A207676 n

end A207676

/-!
# A207677: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207677, there is no canonical definition to state claims against.
-/

/-! ## A207677.P14827405469526890724

`A207682((n+1)²+n²)`
-/

namespace A207677.P14827405469526890724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 ((n + 1) ^ 2 + n ^ 2)

end

end A207677.P14827405469526890724

/-! ## A207677.P785303649392749401

`record[A003982(n)*A207682(n+1)]`
-/

namespace A207677.P785303649392749401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207677.P785303649392749401

/-! ## A207677.P16006736626581548164

`record[gcd(A008482(n), A207682(n+1))]`
-/

namespace A207677.P16006736626581548164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A207682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207677.P16006736626581548164

/-! ## A207677.P9619500995047968045

`A207682(A001844(n))+A000007(n+1)`
-/

namespace A207677.P9619500995047968045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A001844 n).toNat + A000007 (n + 1)

end

end A207677.P9619500995047968045

/-! ## A207677.P5645062305558859288

`A023532(∑[n+1])*A207682(A001844(n))`
-/

namespace A207677.P5645062305558859288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (∑ j ∈ Finset.range (n + 1), f1 j) * A207682 (A001844 n).toNat

end

end A207677.P5645062305558859288

/-!
# A207678: Number of n X 4 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207678, there is no canonical definition to state claims against.
-/

/-! ## A207678.P227324020395312970

`A207682(A027379(n+2))`
-/

namespace A207678.P227324020395312970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A027379 (n + 2)).toNat

end

end A207678.P227324020395312970

/-! ## A207678.P3555834689309671015

`A207682(A055998(n+2))`
-/

namespace A207678.P3555834689309671015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A055998 (n + 2)).toNat

end

end A207678.P3555834689309671015

/-! ## A207678.P4777343646609013051

`A207682(A155212(n)+5)`
-/

namespace A207678.P4777343646609013051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A155212 n + 5).toNat

end

end A207678.P4777343646609013051

/-! ## A207678.P6476667590197065880

`A207682(A056000(n)+7)`
-/

namespace A207678.P6476667590197065880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A056000 n + 7).toNat

end

end A207678.P6476667590197065880

/-! ## A207678.P12476903709212108189

`A207682(A052905(n+1)+2)`
-/

namespace A207678.P12476903709212108189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A052905 (n + 1) + 2).toNat

end

end A207678.P12476903709212108189

/-!
# A207679: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207679, there is no canonical definition to state claims against.
-/

/-! ## A207679.P4564853457270655656

`A207682(A046691(n+3))`
-/

namespace A207679.P4564853457270655656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A046691 (n + 3)).toNat

end

end A207679.P4564853457270655656

/-! ## A207679.P13487295046774549302

`A207682(Δ[A023545(n+1)])`
-/

namespace A207679.P13487295046774549302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (f1 (n + 1) - f1 n).toNat

end

end A207679.P13487295046774549302

/-! ## A207679.P18142830541330949427

`A207682(A166136(n+4)-10)`
-/

namespace A207679.P18142830541330949427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A166136 (n + 4) - 10).toNat

end

end A207679.P18142830541330949427

/-! ## A207679.P6877111040386135837

`A207682(A000096(n+3)+n+2)`
-/

namespace A207679.P6877111040386135837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A207679.P6877111040386135837

/-! ## A207679.P4474880796100355583

`A207682(A000217(n+4)+n+1)`
-/

namespace A207679.P4474880796100355583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A207679.P4474880796100355583

/-!
# A207680: Number of nX6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207680, there is no canonical definition to state claims against.
-/

/-! ## A207680.P15279996922043971641

`A207682(A052905(n+3))`
-/

namespace A207680.P15279996922043971641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A052905 (n + 3)).toNat

end

end A207680.P15279996922043971641

/-! ## A207680.P16771544090914084051

`A207682(A000217(n+6)-5)`
-/

namespace A207680.P16771544090914084051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000217 (n + 6) - 5).toNat

end

end A207680.P16771544090914084051

/-! ## A207680.P13892635402390876002

`A207682(A000124(n+6)-6)`
-/

namespace A207680.P13892635402390876002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000124 (n + 6) - 6).toNat

end

end A207680.P13892635402390876002

/-! ## A207680.P9080419223992297848

`A207682(Δ[A023551(n+1)]+1)`
-/

namespace A207680.P9080419223992297848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (f1 (n + 1) - f1 n + 1).toNat

end

end A207680.P9080419223992297848

/-! ## A207680.P14926765584271614258

`A207682(Δ[A023545(n+2)]-1)`
-/

namespace A207680.P14926765584271614258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (f1 (n + 1) - f1 n - 1).toNat

end

end A207680.P14926765584271614258

/-!
# A207681: Number of n X 7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207681, there is no canonical definition to state claims against.
-/

/-! ## A207681.P190774749702531570

`A207682(Δ[A023551(n+2)])`
-/

namespace A207681.P190774749702531570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (f1 (n + 1) - f1 n).toNat

end

end A207681.P190774749702531570

/-! ## A207681.P7900366463189425625

`A207682(A027379(n+5)-3)`
-/

namespace A207681.P7900366463189425625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A027379 (n + 5) - 3).toNat

end

end A207681.P7900366463189425625

/-! ## A207681.P1301443144047427213

`A207682(A000096(n+6)-5)`
-/

namespace A207681.P1301443144047427213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000096 (n + 6) - 5).toNat

end

end A207681.P1301443144047427213

/-! ## A207681.P3959264339871385735

`A207682(A000217(n+7)-6)`
-/

namespace A207681.P3959264339871385735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000217 (n + 7) - 6).toNat

end

end A207681.P3959264339871385735

/-! ## A207681.P6685632902069887844

`A207682(A000124(n+7)-7)`
-/

namespace A207681.P6685632902069887844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000124 (n + 7) - 7).toNat

end

end A207681.P6685632902069887844

/-!
# A207682: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207682, there is no canonical definition to state claims against.
-/

/-! ## A207682.P744662773727776566

`A207879(n+1)+A014083(A244172(n+9))`
-/

namespace A207682.P744662773727776566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (n + 1) + A014083 (A244172 (n + 9)).toNat

end

end A207682.P744662773727776566

/-! ## A207682.P15729739706329389890

`A207879(n+1)+A069517(A334584(3*(n+1)))`
-/

namespace A207682.P15729739706329389890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (n + 1) + A069517 (A334584 (3 * (n + 1))).toNat

end

end A207682.P15729739706329389890

/-! ## A207682.P11726303074905754494

`A207879(n+1)%A075953(n)`
-/

namespace A207682.P11726303074905754494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207879 (n + 1)) (A075953 n)

end

end A207682.P11726303074905754494

/-! ## A207682.P8670593616568888587

`A207879(C(A358373(n+1), n))`
-/

namespace A207682.P8670593616568888587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207879 (Nat.choose (A358373 (n + 1)).toNat n)

end

end A207682.P8670593616568888587

/-! ## A207682.P1842115275344422138

`A003417(A108411(n))*A207879(n+1)`
-/

namespace A207682.P1842115275344422138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (A108411 n).toNat * A207879 (n + 1)

end

end A207682.P1842115275344422138

/-!
# A207683: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207683, there is no canonical definition to state claims against.
-/

/-! ## A207683.P9978518460350675124

`A207682(∑[n+2]+4)`
-/

namespace A207683.P9978518460350675124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207683.P9978518460350675124

/-! ## A207683.P2476095884873213710

`lcm(2, A207682(A167614(n+1)))`
-/

namespace A207683.P2476095884873213710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207682 (A167614 (n + 1)).toNat)

end

end A207683.P2476095884873213710

/-! ## A207683.P15121787101883054099

`or(A000038(n), A207682(A167614(n+1)))`
-/

namespace A207683.P15121787101883054099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A207682 (A167614 (n + 1)).toNat)

end

end A207683.P15121787101883054099

/-! ## A207683.P18378581944544724834

`A207682(A167614(n+1))*A262079(n+1)`
-/

namespace A207683.P18378581944544724834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A167614 (n + 1)).toNat * A262079 (n + 1)

end

end A207683.P18378581944544724834

/-! ## A207683.P6753931153534059342

`A207682(A167614(n+1))%A204412(n+1)`
-/

namespace A207683.P6753931153534059342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207682 (A167614 (n + 1)).toNat) (A204412 (n + 1))

end

end A207683.P6753931153534059342

/-!
# A207684: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207684, there is no canonical definition to state claims against.
-/

/-! ## A207684.P2799034094609855482

`A207682(A052905(n)+9)`
-/

namespace A207684.P2799034094609855482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A052905 n + 9).toNat

end

end A207684.P2799034094609855482

/-! ## A207684.P17340865033529446702

`A207682(A055999(n)+10)`
-/

namespace A207684.P17340865033529446702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A055999 n + 10).toNat

end

end A207684.P17340865033529446702

/-! ## A207684.P6167568775571143815

`A207682(A167614(n+2)+1)`
-/

namespace A207684.P6167568775571143815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A167614 (n + 2) + 1).toNat

end

end A207684.P6167568775571143815

/-! ## A207684.P2044760237328061502

`A207682(A167499(n+2)-1)`
-/

namespace A207684.P2044760237328061502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A167499 (n + 2) - 1).toNat

end

end A207684.P2044760237328061502

/-! ## A207684.P334748881897256314

`A207682(A112355(n+1)+4)`
-/

namespace A207684.P334748881897256314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A112355 (n + 1) + 4).toNat

end

end A207684.P334748881897256314

/-!
# A207685: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207685, there is no canonical definition to state claims against.
-/

/-! ## A207685.P3713571509313439207

`A207682(A167499(n+3))`
-/

namespace A207685.P3713571509313439207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A167499 (n + 3)).toNat

end

end A207685.P3713571509313439207

/-! ## A207685.P6844128716516749985

`A207682(A155212(n)+13)`
-/

namespace A207685.P6844128716516749985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A155212 n + 13).toNat

end

end A207685.P6844128716516749985

/-! ## A207685.P8730493770213560044

`A207682(A056000(n)+15)`
-/

namespace A207685.P8730493770213560044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A056000 n + 15).toNat

end

end A207685.P8730493770213560044

/-! ## A207685.P10160166314396949049

`A207682(A000124(n+4)+4)`
-/

namespace A207685.P10160166314396949049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000124 (n + 4) + 4).toNat

end

end A207685.P10160166314396949049

/-! ## A207685.P17069292086923735769

`A207682(A000096(n+3)+6)`
-/

namespace A207685.P17069292086923735769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000096 (n + 3) + 6).toNat

end

end A207685.P17069292086923735769

/-!
# A207686: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207686, there is no canonical definition to state claims against.
-/

/-! ## A207686.P9554040559522316556

`A207682(A166136(n+4))`
-/

namespace A207686.P9554040559522316556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A166136 (n + 4)).toNat

end

end A207686.P9554040559522316556

/-! ## A207686.P1002574525496072886

`A207682(A167499(n+4)+1)`
-/

namespace A207686.P1002574525496072886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A167499 (n + 4) + 1).toNat

end

end A207686.P1002574525496072886

/-! ## A207686.P3142286348120344208

`A207682(A167614(n+4)+3)`
-/

namespace A207686.P3142286348120344208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A167614 (n + 4) + 3).toNat

end

end A207686.P3142286348120344208

/-! ## A207686.P18245619127037527740

`A207682(A000096(n+4)+7)`
-/

namespace A207686.P18245619127037527740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000096 (n + 4) + 7).toNat

end

end A207686.P18245619127037527740

/-! ## A207686.P11264480998879921552

`A207682(A000217(n+5)+6)`
-/

namespace A207686.P11264480998879921552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000217 (n + 5) + 6).toNat

end

end A207686.P11264480998879921552

/-!
# A207687: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207687, there is no canonical definition to state claims against.
-/

/-! ## A207687.P620851126906886750

`A207682(A167499(n+5)+2)`
-/

namespace A207687.P620851126906886750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A167499 (n + 5) + 2).toNat

end

end A207687.P620851126906886750

/-! ## A207687.P10264377428126867246

`A207682(A167614(n+5)+4)`
-/

namespace A207687.P10264377428126867246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A167614 (n + 5) + 4).toNat

end

end A207687.P10264377428126867246

/-! ## A207687.P3888513483687864823

`A207682(A133263(n+6)+5)`
-/

namespace A207687.P3888513483687864823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A133263 (n + 6) + 5).toNat

end

end A207687.P3888513483687864823

/-! ## A207687.P3895768783597192053

`A207682(A000124(n+6)+6)`
-/

namespace A207687.P3895768783597192053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000124 (n + 6) + 6).toNat

end

end A207687.P3895768783597192053

/-! ## A207687.P1719029792461292990

`A207682(A000217(n+6)+7)`
-/

namespace A207687.P1719029792461292990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207682 (A000217 (n + 6) + 7).toNat

end

end A207687.P1719029792461292990

/-!
# A207688: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207688, there is no canonical definition to state claims against.
-/

/-! ## A207688.P4465801229255476323

`A207693((n+1)²+n²)`
-/

namespace A207688.P4465801229255476323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 ((n + 1) ^ 2 + n ^ 2)

end

end A207688.P4465801229255476323

/-! ## A207688.P13327716002063803281

`lcm(2, A207693(A001844(n)))`
-/

namespace A207688.P13327716002063803281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207693 (A001844 n).toNat)

end

end A207688.P13327716002063803281

/-! ## A207688.P3233319126524210318

`record[A003982(n)*A207693(n+1)]`
-/

namespace A207688.P3233319126524210318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207688.P3233319126524210318

/-! ## A207688.P16594396758651995036

`record[gcd(A008482(n), A207693(n+1))]`
-/

namespace A207688.P16594396758651995036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A207693 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207688.P16594396758651995036

/-! ## A207688.P9498672174434689560

`A007318(C(n, 2))*A207693(A001844(n))`
-/

namespace A207688.P9498672174434689560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A207693 (A001844 n).toNat

end

end A207688.P9498672174434689560

/-!
# A207689: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207689, there is no canonical definition to state claims against.
-/

/-! ## A207689.P2749575919550316054

`A207584(n+1)/A207025(n+1)*A207584(n+1)`
-/

namespace A207689.P2749575919550316054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A207584 (n + 1) : ℚ)

end

end A207689.P2749575919550316054

/-! ## A207689.P17099048438208726257

`A207584(n+1)/A207585(n+1)*A207690(n+1)`
-/

namespace A207689.P17099048438208726257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207585 (n + 1) : ℚ) * (A207690 (n + 1) : ℚ)

end

end A207689.P17099048438208726257

/-! ## A207689.P6682808826803707886

`A207690(n+1)/A207691(n+1)*A207690(n+1)`
-/

namespace A207689.P6682808826803707886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207690 (n + 1) : ℚ) / (A207691 (n + 1) : ℚ) * (A207690 (n + 1) : ℚ)

end

end A207689.P6682808826803707886

/-! ## A207689.P6304983527949924448

`(A207584(n+1)/A207585(n+1))²*A207691(n+1)`
-/

namespace A207689.P6304983527949924448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207584 (n + 1) : ℚ) / (A207585 (n + 1) : ℚ)) ^ 2 * (A207691 (n + 1) : ℚ)

end

end A207689.P6304983527949924448

/-! ## A207689.P953189142821364716

`A207584(n+1)²/A207025(n+1)`
-/

namespace A207689.P953189142821364716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) ^ 2 : ℚ) / (A207025 (n + 1) : ℚ)

end

end A207689.P953189142821364716

/-! ## A207689.P14828323913568405711

`A207690(n+1)²/A207691(n+1)`
-/

namespace A207689.P14828323913568405711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207690 (n + 1) ^ 2 : ℚ) / (A207691 (n + 1) : ℚ)

end

end A207689.P14828323913568405711

/-!
# A207690: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207690, there is no canonical definition to state claims against.
-/

/-! ## A207690.P9396868703589144480

`A207584(n+1)/A207025(n+1)*A207585(n+1)`
-/

namespace A207690.P9396868703589144480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A207585 (n + 1) : ℚ)

end

end A207690.P9396868703589144480

/-! ## A207690.P7903702848778856583

`A207585(n+1)/A207584(n+1)*A207689(n+1)`
-/

namespace A207690.P7903702848778856583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207585 (n + 1) : ℚ) / (A207584 (n + 1) : ℚ) * (A207689 (n + 1) : ℚ)

end

end A207690.P7903702848778856583

/-! ## A207690.P17365762171230269649

`sqrt(A207689(n+1))*sqrt(A207691(n+1))`
-/

namespace A207690.P17365762171230269649
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207689 (n + 1) : ℝ) * Real.sqrt (A207691 (n + 1) : ℝ)

end

end A207690.P17365762171230269649

/-! ## A207690.P8654902442831295719

`A207584(n+1)/A207585(n+1)*A207691(n+1)`
-/

namespace A207690.P8654902442831295719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207584 (n + 1) : ℚ) / (A207585 (n + 1) : ℚ) * (A207691 (n + 1) : ℚ)

end

end A207690.P8654902442831295719

/-! ## A207690.P2522301120989476090

`sqrt(A207689(n+1)*A207691(n+1))`
-/

namespace A207690.P2522301120989476090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207689 (n + 1) * A207691 (n + 1) : ℝ)

end

end A207690.P2522301120989476090

/-!
# A207691: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207691, there is no canonical definition to state claims against.
-/

/-! ## A207691.P11789358809530191202

`A207585(n+1)/A207025(n+1)*A207585(n+1)`
-/

namespace A207691.P11789358809530191202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207585 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A207585 (n + 1) : ℚ)

end

end A207691.P11789358809530191202

/-! ## A207691.P1666145813489888225

`A207585(n+1)/A207584(n+1)*A207690(n+1)`
-/

namespace A207691.P1666145813489888225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207585 (n + 1) : ℚ) / (A207584 (n + 1) : ℚ) * (A207690 (n + 1) : ℚ)

end

end A207691.P1666145813489888225

/-! ## A207691.P17990128413693061131

`A207690(n+1)/A207689(n+1)*A207690(n+1)`
-/

namespace A207691.P17990128413693061131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207690 (n + 1) : ℚ) / (A207689 (n + 1) : ℚ) * (A207690 (n + 1) : ℚ)

end

end A207691.P17990128413693061131

/-! ## A207691.P9742386949355834885

`(A207690(n+1)/A207584(n+1))²*A207025(n+1)`
-/

namespace A207691.P9742386949355834885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207690 (n + 1) : ℚ) / (A207584 (n + 1) : ℚ)) ^ 2 * (A207025 (n + 1) : ℚ)

end

end A207691.P9742386949355834885

/-! ## A207691.P12599235875968466912

`(A207585(n+1)/A207584(n+1))²*A207689(n+1)`
-/

namespace A207691.P12599235875968466912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207585 (n + 1) : ℚ) / (A207584 (n + 1) : ℚ)) ^ 2 * (A207689 (n + 1) : ℚ)

end

end A207691.P12599235875968466912

/-! ## A207691.P2637091157137031012

`A207585(n+1)²/A207025(n+1)`
-/

namespace A207691.P2637091157137031012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207585 (n + 1) ^ 2 : ℚ) / (A207025 (n + 1) : ℚ)

end

end A207691.P2637091157137031012

/-! ## A207691.P16143933339225789024

`A207690(n+1)²/A207689(n+1)`
-/

namespace A207691.P16143933339225789024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207690 (n + 1) ^ 2 : ℚ) / (A207689 (n + 1) : ℚ)

end

end A207691.P16143933339225789024

/-!
# A207692: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207692, there is no canonical definition to state claims against.
-/

/-! ## A207692.P7231610707610918246

`A207585(n+1)/A207025(n+1)*A207586(n+1)`
-/

namespace A207692.P7231610707610918246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207585 (n + 1) : ℚ) / (A207025 (n + 1) : ℚ) * (A207586 (n + 1) : ℚ)

end

end A207692.P7231610707610918246

/-! ## A207692.P17624401837286796202

`A207693(A055999(n+4))`
-/

namespace A207692.P17624401837286796202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A055999 (n + 4)).toNat

end

end A207692.P17624401837286796202

/-! ## A207692.P9557209115896032634

`A207693(A155212(n+3)+2)`
-/

namespace A207692.P9557209115896032634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A155212 (n + 3) + 2).toNat

end

end A207692.P9557209115896032634

/-! ## A207692.P13767705100965343619

`A207693(A052905(n+4)-1)`
-/

namespace A207692.P13767705100965343619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A052905 (n + 4) - 1).toNat

end

end A207692.P13767705100965343619

/-! ## A207692.P4110203030484622405

`A207693(A034856(n+5)+n+3)`
-/

namespace A207692.P4110203030484622405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A034856 (n + 5) + (n + 3 : ℤ)).toNat

end

end A207692.P4110203030484622405

/-!
# A207693: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207693, there is no canonical definition to state claims against.
-/

/-! ## A207693.P11557931475046823411

`A210709(A067747(n+1))+A209224(n+1)`
-/

namespace A207693.P11557931475046823411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A067747 (n + 1)).toNat + A209224 (n + 1)

end

end A207693.P11557931475046823411

/-! ## A207693.P13495861188746647178

`A210709(n+11)+A209224(n+1)`
-/

namespace A207693.P13495861188746647178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (n + 11) + A209224 (n + 1)

end

end A207693.P13495861188746647178

/-! ## A207693.P16778703375306570307

`A209224(A242474(n+2)-1)`
-/

namespace A207693.P16778703375306570307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (A242474 (n + 2) - 1).toNat

end

end A207693.P16778703375306570307

/-! ## A207693.P9077783858109695634

`A209224(n+1)%A034316(n)`
-/

namespace A207693.P9077783858109695634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209224 (n + 1)) (A034316 n)

end

end A207693.P9077783858109695634

/-! ## A207693.P15427208694420768164

`A209224(ceil(sqrt(A157615(n+1))))`
-/

namespace A207693.P15427208694420768164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 ⌈Real.sqrt (A157615 (n + 1) : ℝ)⌉.toNat

end

end A207693.P15427208694420768164

/-!
# A207694: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207694, there is no canonical definition to state claims against.
-/

/-! ## A207694.P8487864601396891471

`A209224(∑[n+2]+4)`
-/

namespace A207694.P8487864601396891471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209224 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207694.P8487864601396891471

/-! ## A207694.P16448712510843518261

`lcm(2, A209224(A167614(n+1)))`
-/

namespace A207694.P16448712510843518261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209224 (A167614 (n + 1)).toNat)

end

end A207694.P16448712510843518261

/-! ## A207694.P3824590729655645785

`or(A000038(n), A209224(A167614(n+1)))`
-/

namespace A207694.P3824590729655645785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A209224 (A167614 (n + 1)).toNat)

end

end A207694.P3824590729655645785

/-! ## A207694.P6565670867851026633

`A209224(A167614(n+1))%A164606(n+1)`
-/

namespace A207694.P6565670867851026633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209224 (A167614 (n + 1)).toNat) (A164606 (n + 1))

end

end A207694.P6565670867851026633

/-! ## A207694.P16993854029938608471

`A207693(A167614(n+1))`
-/

namespace A207694.P16993854029938608471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A167614 (n + 1)).toNat

end

end A207694.P16993854029938608471

/-!
# A207695: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207695, there is no canonical definition to state claims against.
-/

/-! ## A207695.P13411029416708226757

`A207693(A052905(n)+9)`
-/

namespace A207695.P13411029416708226757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A052905 n + 9).toNat

end

end A207695.P13411029416708226757

/-! ## A207695.P13290306694413021648

`A207693(A055999(n)+10)`
-/

namespace A207695.P13290306694413021648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A055999 n + 10).toNat

end

end A207695.P13290306694413021648

/-! ## A207695.P254846848315631389

`A207693(A167614(n+2)+1)`
-/

namespace A207695.P254846848315631389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A167614 (n + 2) + 1).toNat

end

end A207695.P254846848315631389

/-! ## A207695.P15761173031831985652

`A207693(A133263(n+3)+2)`
-/

namespace A207695.P15761173031831985652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A133263 (n + 3) + 2).toNat

end

end A207695.P15761173031831985652

/-! ## A207695.P15443748126868609899

`A207693(A166136(n+2)-2)`
-/

namespace A207695.P15443748126868609899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A166136 (n + 2) - 2).toNat

end

end A207695.P15443748126868609899

/-!
# A207696: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207696, there is no canonical definition to state claims against.
-/

/-! ## A207696.P10338274923867014378

`A207693(A167499(n+3))`
-/

namespace A207696.P10338274923867014378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A167499 (n + 3)).toNat

end

end A207696.P10338274923867014378

/-! ## A207696.P2027870761447071599

`A207693(A155212(n)+13)`
-/

namespace A207696.P2027870761447071599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A155212 n + 13).toNat

end

end A207696.P2027870761447071599

/-! ## A207696.P17890376656395019729

`A207693(A167614(n+3)+2)`
-/

namespace A207696.P17890376656395019729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A167614 (n + 3) + 2).toNat

end

end A207696.P17890376656395019729

/-! ## A207696.P11115177484365296486

`A207693(A000217(n+4)+5)`
-/

namespace A207696.P11115177484365296486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A000217 (n + 4) + 5).toNat

end

end A207696.P11115177484365296486

/-! ## A207696.P5527377191474165875

`A207693(eq[16, A059268(n)]+1)`
-/

namespace A207696.P5527377191474165875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207696.P5527377191474165875

/-!
# A207697: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207697, there is no canonical definition to state claims against.
-/

/-! ## A207697.P10986340812967945801

`A207693(A166136(n+4))`
-/

namespace A207697.P10986340812967945801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A166136 (n + 4)).toNat

end

end A207697.P10986340812967945801

/-! ## A207697.P5455739365755322606

`A207693(A133263(n+5)+4)`
-/

namespace A207697.P5455739365755322606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A133263 (n + 5) + 4).toNat

end

end A207697.P5455739365755322606

/-! ## A207697.P11359069077305351414

`A207693(A000217(n+5)+6)`
-/

namespace A207697.P11359069077305351414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A000217 (n + 5) + 6).toNat

end

end A207697.P11359069077305351414

/-! ## A207697.P12503707232526043519

`A207693(A000124(n+6)-(n+1))`
-/

namespace A207697.P12503707232526043519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A207697.P12503707232526043519

/-! ## A207697.P2502078767378909758

`A207693(A055999(n+4)-Δ[n²])`
-/

namespace A207697.P2502078767378909758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A055999 (n + 4) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A207697.P2502078767378909758

/-!
# A207698: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 1 vertically.

The programs for A207698, there is no canonical definition to state claims against.
-/

/-! ## A207698.P11845501594682579884

`A207693(A167499(n+5)+2)`
-/

namespace A207698.P11845501594682579884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A167499 (n + 5) + 2).toNat

end

end A207698.P11845501594682579884

/-! ## A207698.P5178225872993230395

`A207693(A133263(n+6)+5)`
-/

namespace A207698.P5178225872993230395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A133263 (n + 6) + 5).toNat

end

end A207698.P5178225872993230395

/-! ## A207698.P11849932263244875241

`A207693(A000124(n+6)+6)`
-/

namespace A207698.P11849932263244875241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A000124 (n + 6) + 6).toNat

end

end A207698.P11849932263244875241

/-! ## A207698.P18077627887627706135

`A207693(A000096(n+5)+8)`
-/

namespace A207698.P18077627887627706135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A000096 (n + 5) + 8).toNat

end

end A207698.P18077627887627706135

/-! ## A207698.P9624714616378329939

`A207693(A000217(n+6)+7)`
-/

namespace A207698.P9624714616378329939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207693 (A000217 (n + 6) + 7).toNat

end

end A207698.P9624714616378329939

/-!
# A207699: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207699, there is no canonical definition to state claims against.
-/

/-! ## A207699.P10699760894401015343

`A207703((n+1)²+n²)`
-/

namespace A207699.P10699760894401015343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 ((n + 1) ^ 2 + n ^ 2)

end

end A207699.P10699760894401015343

/-! ## A207699.P6640970029566538602

`record[A003982(n)*A207703(n+1)]`
-/

namespace A207699.P6640970029566538602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207699.P6640970029566538602

/-! ## A207699.P17555229350300373381

`record[gcd(A008482(n), A207703(n+1))]`
-/

namespace A207699.P17555229350300373381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A207703 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207699.P17555229350300373381

/-! ## A207699.P10562030701551561681

`A207703(A001844(n))+A185284(n)`
-/

namespace A207699.P10562030701551561681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A001844 n).toNat + A185284 n

end

end A207699.P10562030701551561681

/-! ## A207699.P16816970049454995516

`gcd(A000038(n), A207703(A001844(n)))`
-/

namespace A207699.P16816970049454995516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A207703 (A001844 n).toNat)

end

end A207699.P16816970049454995516

