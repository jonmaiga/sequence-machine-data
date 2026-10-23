import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A141200: G.f. satisfies: A(x) = x + A(A(x)^2).

The programs for A141200, there is no canonical definition to state claims against.
-/

/-! ## A141200.P4918417884430708511

`A096972(A020094(n))+A049139(n+1)`
-/

namespace A141200.P4918417884430708511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (A020094 n).toNat + A049139 (n + 1)

end

end A141200.P4918417884430708511

/-! ## A141200.P6113380182826875992

`A270417(A000522(n))+A049139(n+1)`
-/

namespace A141200.P6113380182826875992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A000522 n).toNat + A049139 (n + 1)

end

end A141200.P6113380182826875992

/-! ## A141200.P13389996654587744689

`A049139(n+1)+A001842(A291113(n))`
-/

namespace A141200.P13389996654587744689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049139 (n + 1) + A001842 (A291113 n).toNat

end

end A141200.P13389996654587744689

/-! ## A141200.P13457322387144964532

`A057364(A331034(n+4)+A007581(n))`
-/

namespace A141200.P13457322387144964532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (A331034 (n + 4) + A007581 n).toNat

end

end A141200.P13457322387144964532

/-!
# A141201: G.f. satisfies: A(x)^(1/2) = x + A(x) + A(A(x)) + A(A(A(x))) + A(A(A(A(x)))) +...

The programs for A141201, there is no canonical definition to state claims against.
-/

/-! ## A141201.P17360823455603243819

`A309196(A150004(n+1))`
-/

namespace A141201.P17360823455603243819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309196 (A150004 (n + 1)).toNat

end

end A141201.P17360823455603243819

/-! ## A141201.P14472218027904564393

`A008621(A087443(n)+A087438(n))`
-/

namespace A141201.P14472218027904564393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A087443 n + A087438 n).toNat

end

end A141201.P14472218027904564393

/-! ## A141201.P4145270316380165115

`A008624(A087443(n)+A087438(n))`
-/

namespace A141201.P4145270316380165115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A087443 n + A087438 n).toNat

end

end A141201.P4145270316380165115

/-!
# A141202: G.f. satisfies: A(x + A(x)*A(-x)) = x.

The programs for A141202, there is no canonical definition to state claims against.
-/

/-! ## A141202.P8156857968451777176

`A138999(A225428(n+1)+floor(2/acot(n)))`
-/

namespace A141202.P8156857968451777176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A225428 (n + 1) + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A141202.P8156857968451777176

/-! ## A141202.P5712025258704978997

`A138999(A331936(n+1)+A225428(n+1))`
-/

namespace A141202.P5712025258704978997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A331936 (n + 1) + A225428 (n + 1)).toNat

end

end A141202.P5712025258704978997

/-!
# A141203: G.f. satisfies: A(x - x*B(x)) = x where B(x) = (A(x) - A(-x))/2, the odd bisection of A(x).

The programs for A141203, there is no canonical definition to state claims against.
-/

/-! ## A141203.P252604181346345569

`A154443(A117532(n!))`
-/

namespace A141203.P252604181346345569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A117532 (Nat.factorial n)).toNat

end

end A141203.P252604181346345569

/-! ## A141203.P13328527447876106160

`A218670(n)+A074398(A074394(n+1))`
-/

namespace A141203.P13328527447876106160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218670 n + A074398 (A074394 (n + 1)).toNat

end

end A141203.P13328527447876106160

/-!
# A141204: Let sequences X and Y consist of the least positive integers such that 2X+Y is the complement of X and X+Y is the complement of Y, starting with X(1)=1 and Y(1)=1; then this sequence equals X, while 2X+Y=A141205, Y=A141206 and X+Y=A141207.

The programs for A141204, there is no canonical definition to state claims against.
-/

/-! ## A141204.P1571299469959330613

`round(A141205(n+1)/log2(9))`
-/

namespace A141204.P1571299469959330613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A141205 (n + 1) : ℝ) / Real.logb 2 (9 : ℝ))

end

end A141204.P1571299469959330613

/-! ## A141204.P17930209252603255479

`A141205(n+1)-A141207(n+1)`
-/

namespace A141204.P17930209252603255479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141205 (n + 1) - A141207 (n + 1)

end

end A141204.P17930209252603255479

/-! ## A141204.P13812087250109973368

`A141207(n+1)-A141206(n+1)`
-/

namespace A141204.P13812087250109973368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141207 (n + 1) - A141206 (n + 1)

end

end A141204.P13812087250109973368

/-! ## A141204.P7288334263820128312

`(A141205(n+1)-A141206(n+1))/2`
-/

namespace A141204.P7288334263820128312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141205 (n + 1) - A141206 (n + 1) : ℚ) / 2

end

end A141204.P7288334263820128312

/-! ## A141204.P17038972576236683883

`A004525(A141205(n+1)-A141206(n+1))`
-/

namespace A141204.P17038972576236683883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A141205 (n + 1) - A141206 (n + 1)).toNat

end

end A141204.P17038972576236683883

/-! ## A141204.P10910038829474703436

`A026741(A141205(n+1)-A141206(n+1))`
-/

namespace A141204.P10910038829474703436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A141205 (n + 1) - A141206 (n + 1)).toNat

end

end A141204.P10910038829474703436

/-! ## A141204.P2819702594155336098

`A029578(A141205(n+1)-A141206(n+1))`
-/

namespace A141204.P2819702594155336098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A141205 (n + 1) - A141206 (n + 1)).toNat

end

end A141204.P2819702594155336098

/-! ## A141204.P11054341819936474331

`A110654(A141205(n+1)-A141206(n+1))`
-/

namespace A141204.P11054341819936474331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A141205 (n + 1) - A141206 (n + 1)).toNat

end

end A141204.P11054341819936474331

/-! ## A141204.P5358507988039020933

`A246277(A141205(n+1)-A141206(n+1))`
-/

namespace A141204.P5358507988039020933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A141205 (n + 1) - A141206 (n + 1)).toNat

end

end A141204.P5358507988039020933

/-! ## A141204.P523786708774830538

`A141205(n+1)%(A141207(n+1)%A141205(n+2))`
-/

namespace A141204.P523786708774830538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141205 (n + 1)) (Int.tmod (A141207 (n + 1)) (A141205 (n + 2)))

end

end A141204.P523786708774830538

/-!
# A141205: Let sequences X and Y consist of the least positive integers such that 2X+Y is the complement of X and X+Y is the complement of Y, starting with X(1)=1 and Y(1)=1; then this sequence equals 2X+Y, while X=A141204, Y=A141206 and X+Y=A141207.

The programs for A141205, there is no canonical definition to state claims against.
-/

/-! ## A141205.P6152423067090070415

`A141207(n+1)+A141204(n+1)`
-/

namespace A141205.P6152423067090070415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141207 (n + 1) + A141204 (n + 1)

end

end A141205.P6152423067090070415

/-! ## A141205.P990357663569867232

`A141206(n+1)+2*A141204(n+1)`
-/

namespace A141205.P990357663569867232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (n + 1) + 2 * A141204 (n + 1)

end

end A141205.P990357663569867232

/-! ## A141205.P11131138528863578581

`2*A141207(n+1)-A141206(n+1)`
-/

namespace A141205.P11131138528863578581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141207 (n + 1) - A141206 (n + 1)

end

end A141205.P11131138528863578581

/-! ## A141205.P4760932787210157261

`A141206(n+1)+A005843(A141204(n+1))`
-/

namespace A141205.P4760932787210157261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (n + 1) + A005843 (A141204 (n + 1)).toNat

end

end A141205.P4760932787210157261

/-! ## A141205.P1181318099111778753

`A005843(A141207(n+1))-A141206(n+1)`
-/

namespace A141205.P1181318099111778753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A141207 (n + 1)).toNat - A141206 (n + 1)

end

end A141205.P1181318099111778753

/-!
# A141206: Let sequences X and Y consist of the least positive integers such that 2X+Y is the complement of X and X+Y is the complement of Y, starting with X(1)=1 and Y(1)=1; then this sequence equals Y, while X=A141204, 2X+Y=A141205 and X+Y=A141207.

The programs for A141206, there is no canonical definition to state claims against.
-/

/-! ## A141206.P15501612144288535582

`A141207(n+1)-A141204(n+1)`
-/

namespace A141206.P15501612144288535582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141207 (n + 1) - A141204 (n + 1)

end

end A141206.P15501612144288535582

/-! ## A141206.P6432574428504677409

`2*A141207(n+1)-A141205(n+1)`
-/

namespace A141206.P6432574428504677409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141207 (n + 1) - A141205 (n + 1)

end

end A141206.P6432574428504677409

/-! ## A141206.P16815992783220394068

`A141205(n+1)-2*A141204(n+1)`
-/

namespace A141206.P16815992783220394068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141205 (n + 1) - 2 * A141204 (n + 1)

end

end A141206.P16815992783220394068

/-! ## A141206.P8568337527373884128

`A141205(n+1)-A005843(A141204(n+1))`
-/

namespace A141206.P8568337527373884128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141205 (n + 1) - A005843 (A141204 (n + 1)).toNat

end

end A141206.P8568337527373884128

/-! ## A141206.P14285745143932350650

`A005843(A141207(n+1))-A141205(n+1)`
-/

namespace A141206.P14285745143932350650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A141207 (n + 1)).toNat - A141205 (n + 1)

end

end A141206.P14285745143932350650

/-! ## A141206.P5129718443465508324

`A141207(n+1)+A008683(A307390(n+1))*A141204(n+1)`
-/

namespace A141206.P5129718443465508324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141207 (n + 1) + A008683 (A307390 (n + 1)).toNat * A141204 (n + 1)

end

end A141206.P5129718443465508324

/-!
# A141207: Let sequences X and Y consist of the least positive integers such that 2X+Y is the complement of X and X+Y is the complement of Y, starting with X(1)=1 and Y(1)=1; then this sequence equals X+Y, while X=A141204, 2X+Y=A141205, Y=A141206.

The programs for A141207, there is no canonical definition to state claims against.
-/

/-! ## A141207.P4509004165409041057

`A141206(n+1)+A141204(n+1)`
-/

namespace A141207.P4509004165409041057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (n + 1) + A141204 (n + 1)

end

end A141207.P4509004165409041057

/-! ## A141207.P13136257383989708008

`A141205(n+1)-A141204(n+1)`
-/

namespace A141207.P13136257383989708008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141205 (n + 1) - A141204 (n + 1)

end

end A141207.P13136257383989708008

/-! ## A141207.P4286983580823765292

`(A141206(n+1)+A141205(n+1))/2`
-/

namespace A141207.P4286983580823765292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141206 (n + 1) + A141205 (n + 1) : ℚ) / 2

end

end A141207.P4286983580823765292

/-! ## A141207.P3396614175879890617

`A004525(A141206(n+1)+A141205(n+1))`
-/

namespace A141207.P3396614175879890617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A141206 (n + 1) + A141205 (n + 1)).toNat

end

end A141207.P3396614175879890617

/-! ## A141207.P11208296304590515816

`A026741(A141206(n+1)+A141205(n+1))`
-/

namespace A141207.P11208296304590515816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A141206 (n + 1) + A141205 (n + 1)).toNat

end

end A141207.P11208296304590515816

/-! ## A141207.P14410766424523139703

`A029578(A141206(n+1)+A141205(n+1))`
-/

namespace A141207.P14410766424523139703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A141206 (n + 1) + A141205 (n + 1)).toNat

end

end A141207.P14410766424523139703

/-! ## A141207.P11021997557824591999

`A110654(A141206(n+1)+A141205(n+1))`
-/

namespace A141207.P11021997557824591999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A141206 (n + 1) + A141205 (n + 1)).toNat

end

end A141207.P11021997557824591999

/-! ## A141207.P17333016820061437511

`A246277(A141206(n+1)+A141205(n+1))`
-/

namespace A141207.P17333016820061437511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A141206 (n + 1) + A141205 (n + 1)).toNat

end

end A141207.P17333016820061437511

/-! ## A141207.P5856565123200815979

`record[Δ[(n+1)*(A141206(n+2)-(n+1))]]`
-/

namespace A141207.P5856565123200815979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A141206 (n + 2) - (n + 1 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141207.P5856565123200815979

/-!
# A141208: a(n) = prime(prime(prime(n) - 1) - 1) - 1, where prime(n) = n-th prime.

The programs for A141208, the canonical program `A141208.P7923699408276574517` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141208 has offset 1).

The definition of A141208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141208.P7923699408276574517

`A140853(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A141208

/-- `A140853(p?[a(n-1)+2]-1)` -/
def P7923699408276574517.Spec : Prop :=
  ∀ n, P7923699408276574517.a n = A141208 (n + 1)

theorem P7923699408276574517.correct : P7923699408276574517.Spec := by
  intro n
  simp only [A141208, Nat.add_sub_cancel]

end A141208

/-! ## A141208.P2358990197996243662

`A140853(A006093(n+1))`
-/

namespace A141208.P2358990197996243662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A006093 (n + 1)).toNat

end

end A141208.P2358990197996243662

namespace A141208

/-- `A140853(A006093(n+1))` -/
def P2358990197996243662.Spec : Prop :=
  ∀ n, P2358990197996243662.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P12333118981844306433

`A140853(record[A000010(n+1)])`
-/

namespace A141208.P12333118981844306433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141208.P12333118981844306433

namespace A141208

/-- `A140853(record[A000010(n+1)])` -/
def P12333118981844306433.Spec : Prop :=
  ∀ n, P12333118981844306433.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P15966419152619759109

`A140853(A000040(n+1)-1)`
-/

namespace A141208.P15966419152619759109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A000040 (n + 1) - 1).toNat

end

end A141208.P15966419152619759109

namespace A141208

/-- `A140853(A000040(n+1)-1)` -/
def P15966419152619759109.Spec : Prop :=
  ∀ n, P15966419152619759109.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P3565746556275911012

`A140853(A008578(n+2)-1)`
-/

namespace A141208.P3565746556275911012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A008578 (n + 2) - 1).toNat

end

end A141208.P3565746556275911012

namespace A141208

/-- `A140853(A008578(n+2)-1)` -/
def P3565746556275911012.Spec : Prop :=
  ∀ n, P3565746556275911012.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P15731237305037524950

`A140853(A055631(A000040(n+1)))`
-/

namespace A141208.P15731237305037524950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A055631 (A000040 (n + 1)).toNat).toNat

end

end A141208.P15731237305037524950

namespace A141208

/-- `A140853(A055631(A000040(n+1)))` -/
def P15731237305037524950.Spec : Prop :=
  ∀ n, P15731237305037524950.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P11013019729006597527

`A140853(A140853(n+1)-A275990(n+1))`
-/

namespace A141208.P11013019729006597527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A140853 (n + 1) - A275990 (n + 1)).toNat

end

end A141208.P11013019729006597527

namespace A141208

/-- `A140853(A140853(n+1)-A275990(n+1))` -/
def P11013019729006597527.Spec : Prop :=
  ∀ n, P11013019729006597527.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P7080522590412274310

`A030013(A055003(n+1))`
-/

namespace A141208.P7080522590412274310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A055003 (n + 1)).toNat

end

end A141208.P7080522590412274310

namespace A141208

/-- `A030013(A055003(n+1))` -/
def P7080522590412274310.Spec : Prop :=
  ∀ n, P7080522590412274310.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P9507631976107089317

`A030013(A175248(n+2))`
-/

namespace A141208.P9507631976107089317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A175248 (n + 2)).toNat

end

end A141208.P9507631976107089317

namespace A141208

/-- `A030013(A175248(n+2))` -/
def P9507631976107089317.Spec : Prop :=
  ∀ n, P9507631976107089317.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P1426130757228227438

`A006093(A055003(n+1)-1)`
-/

namespace A141208.P1426130757228227438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A055003 (n + 1) - 1).toNat

end

end A141208.P1426130757228227438

namespace A141208

/-- `A006093(A055003(n+1)-1)` -/
def P1426130757228227438.Spec : Prop :=
  ∀ n, P1426130757228227438.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P8171373260275536072

`A006093(A175248(n+2)-1)`
-/

namespace A141208.P8171373260275536072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A175248 (n + 2) - 1).toNat

end

end A141208.P8171373260275536072

namespace A141208

/-- `A006093(A175248(n+2)-1)` -/
def P8171373260275536072.Spec : Prop :=
  ∀ n, P8171373260275536072.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P12536143827001425408

`A048848(record[A048848(n+1)])-1`
-/

namespace A141208.P12536143827001425408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048848 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A141208.P12536143827001425408

namespace A141208

/-- `A048848(record[A048848(n+1)])-1` -/
def P12536143827001425408.Spec : Prop :=
  ∀ n, P12536143827001425408.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P6034133796340859709

`A290641(p?[A290641(n+1)])-1`
-/

namespace A141208.P6034133796340859709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A141208.P6034133796340859709

namespace A141208

/-- `A290641(p?[A290641(n+1)])-1` -/
def P6034133796340859709.Spec : Prop :=
  ∀ n, P6034133796340859709.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P10880286590185611605

`A030013(A008578(A008578(n+2)))`
-/

namespace A141208.P10880286590185611605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A008578 (A008578 (n + 2)).toNat).toNat

end

end A141208.P10880286590185611605

namespace A141208

/-- `A030013(A008578(A008578(n+2)))` -/
def P10880286590185611605.Spec : Prop :=
  ∀ n, P10880286590185611605.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P1961190135971177734

`A030013(A182986(A182986(n+2)))`
-/

namespace A141208.P1961190135971177734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (A182986 (A182986 (n + 2)).toNat).toNat

end

end A141208.P1961190135971177734

namespace A141208

/-- `A030013(A182986(A182986(n+2)))` -/
def P1961190135971177734.Spec : Prop :=
  ∀ n, P1961190135971177734.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P13713853282810708126

`A006093(A006093(A014689(n+1)+n))`
-/

namespace A141208.P13713853282810708126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (A014689 (n + 1) + (n : ℤ)).toNat).toNat

end

end A141208.P13713853282810708126

namespace A141208

/-- `A006093(A006093(A014689(n+1)+n))` -/
def P13713853282810708126.Spec : Prop :=
  ∀ n, P13713853282810708126.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P8214851579542296874

`A006093(A275990(n+1)+A006093(n+1))`
-/

namespace A141208.P8214851579542296874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A275990 (n + 1) + A006093 (n + 1)).toNat

end

end A141208.P8214851579542296874

namespace A141208

/-- `A006093(A275990(n+1)+A006093(n+1))` -/
def P8214851579542296874.Spec : Prop :=
  ∀ n, P8214851579542296874.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P9510311398198804917

`A006093(A006093(A095116(n+1)-(n+1)))`
-/

namespace A141208.P9510311398198804917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (A095116 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A141208.P9510311398198804917

namespace A141208

/-- `A006093(A006093(A095116(n+1)-(n+1)))` -/
def P9510311398198804917.Spec : Prop :=
  ∀ n, P9510311398198804917.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P13762755990386260135

`A006093(A006093(A174843(A079552(n+1))))`
-/

namespace A141208.P13762755990386260135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (A174843 (A079552 (n + 1)).toNat).toNat).toNat

end

end A141208.P13762755990386260135

namespace A141208

/-- `A006093(A006093(A174843(A079552(n+1))))` -/
def P13762755990386260135.Spec : Prop :=
  ∀ n, P13762755990386260135.a n = A141208 (n + 1)

end A141208

/-! ## A141208.P7445644398636240493

`A006093(A006093(A006093(A027750(A006218(n+1)))))`
-/

namespace A141208.P7445644398636240493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006093 (A006093 (A027750 (A006218 (n + 1)).toNat).toNat).toNat).toNat

end

end A141208.P7445644398636240493

namespace A141208

/-- `A006093(A006093(A006093(A027750(A006218(n+1)))))` -/
def P7445644398636240493.Spec : Prop :=
  ∀ n, P7445644398636240493.a n = A141208 (n + 1)

end A141208

/-!
# A141209: E.g.f. satisfies A(x)^A(x) = 1/(1 - x*A(x)).

The programs for A141209, there is no canonical definition to state claims against.
-/

/-! ## A141209.P8839995794337653468

`A225553(∑[xor(1, 10*a(n-1))])` with `a(0)=4, a(1)=0`
-/

namespace A141209.P8839995794337653468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  Nat.xor 1 (10 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225553 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141209.P8839995794337653468

/-! ## A141209.P10323907942792995531

`A177045(A289598(n+1))`
-/

namespace A141209.P10323907942792995531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177045 (A289598 (n + 1)).toNat

end

end A141209.P10323907942792995531

/-!
# A141210: Triangle read by rows, A140207^2.

The programs for A141210, there is no canonical definition to state claims against.
-/

/-! ## A141210.P12610601452105169989

`A140207(n)*A141155(n)`
-/

namespace A141210.P12610601452105169989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n * A141155 n

end

end A141210.P12610601452105169989

/-! ## A141210.P2814274556449400785

`A000041(A002262(n))*A141155(n)`
-/

namespace A141210.P2814274556449400785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat * A141155 n

end

end A141210.P2814274556449400785

/-! ## A141210.P16525891050390515177

`A000041(sqrt(A143844(n)))*A141155(n)`
-/

namespace A141210.P16525891050390515177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat * A141155 n

end

end A141210.P16525891050390515177

/-! ## A141210.P9196644357580725859

`A000041(log2(A059268(n)))*A141155(n)`
-/

namespace A141210.P9196644357580725859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A141155 n

end

end A141210.P9196644357580725859

/-! ## A141210.P2541239640853990783

`A000041(A144328(n+1))*A141155(n)`
-/

namespace A141210.P2541239640853990783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A144328 (n + 1)).toNat * A141155 n

end

end A141210.P2541239640853990783

/-! ## A141210.P10809040330687221798

`A000041(n-A057944(n))*A141155(n)`
-/

namespace A141210.P10809040330687221798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n : ℤ) - A057944 n).toNat * A141155 n

end

end A141210.P10809040330687221798

/-! ## A141210.P15615676481057874792

`A000041(A128227(abs(1-n)))*A141155(n)`
-/

namespace A141210.P15615676481057874792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A128227 |1 - (n : ℤ)|.toNat).toNat * A141155 n

end

end A141210.P15615676481057874792

/-! ## A141210.P11078398472257512793

`A000041(A002260(n+1)-1)*A141155(n)`
-/

namespace A141210.P11078398472257512793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002260 (n + 1) - 1).toNat * A141155 n

end

end A141210.P11078398472257512793

/-! ## A141210.P534264221074692419

`A000041(2*n-A061885(n))*A141155(n)`
-/

namespace A141210.P534264221074692419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((2 * n : ℤ) - A061885 n).toNat * A141155 n

end

end A141210.P534264221074692419

/-! ## A141210.P12262611915292286423

`A000041(sqrt(A133819(n+1))-1)*A141155(n)`
-/

namespace A141210.P12262611915292286423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ) - 1)).toNat * A141155 n

end

end A141210.P12262611915292286423

/-!
# A141211: Row sums of triangle A141210.

The programs for A141211, there is no canonical definition to state claims against.
-/

/-! ## A141211.P1692372172260454423

`∑[A143229(n)]`
-/

namespace A141211.P1692372172260454423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P1692372172260454423

/-! ## A141211.P14094394494071036643

`∑[A000041(n)*A000070(n)]`
-/

namespace A141211.P14094394494071036643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P14094394494071036643

/-! ## A141211.P13996081164249076246

`∑[∑[A002865(n)]*A000070(n)]`
-/

namespace A141211.P13996081164249076246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P13996081164249076246

/-! ## A141211.P11114123781235301320

`∑[A000070(n)*A035363(2*n)]`
-/

namespace A141211.P11114123781235301320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n * A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P11114123781235301320

/-! ## A141211.P13671848928053413524

`∑[A000070(n)/2*A139582(n)]`
-/

namespace A141211.P13671848928053413524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000070 n : ℚ) / 2 * (A139582 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P13671848928053413524

/-! ## A141211.P5364849199252465265

`∑[∑[A119620(2*n)]*A119620(2*n)]`
-/

namespace A141211.P5364849199252465265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A119620 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P5364849199252465265

/-! ## A141211.P17281651474735155665

`a(n-1)+A000041(n)*A025065(2*n)` with `a(0)=1`
-/

namespace A141211.P17281651474735155665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000041 n * A025065 (2 * n)

end

end A141211.P17281651474735155665

/-! ## A141211.P10186059356711471268

`a(n-1)+A143229(n)+A008683(4*(n+5))` with `a(0)=1`
-/

namespace A141211.P10186059356711471268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A143229 n + A008683 (4 * (n + 5)))

end

end A141211.P10186059356711471268

/-! ## A141211.P16263972164337578441

`∑[(A047967(n)+A000009(n))*A000070(n)]`
-/

namespace A141211.P16263972164337578441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047967 n + A000009 n) * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P16263972164337578441

/-! ## A141211.P1371856344382179456

`∑[(A295341(n)+A000726(n))*A000070(n)]`
-/

namespace A141211.P1371856344382179456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295341 n + A000726 n) * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P1371856344382179456

/-! ## A141211.P5275740791341190879

`∑[(A332281(n)+A332280(n))*A000070(n)]`
-/

namespace A141211.P5275740791341190879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332281 n + A332280 n) * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P5275740791341190879

/-! ## A141211.P9601253518712758440

`∑[∑[A100824(2*n)]*A100824(2*n)]`
-/

namespace A141211.P9601253518712758440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A100824 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P9601253518712758440

/-! ## A141211.P11103661145772472631

`∑[(A332284(n)+A332283(n))*A000070(n)]`
-/

namespace A141211.P11103661145772472631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332284 n + A332283 n) * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P11103661145772472631

/-! ## A141211.P16574902378490111011

`∑[(A237668(n)+A237667(n))*A000070(n)]`
-/

namespace A141211.P16574902378490111011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237668 n + A237667 n) * A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141211.P16574902378490111011

/-!
# A141212: a(n) = 1, if n == {1,3,4} mod 6; otherwise 0.

The programs for A141212, the canonical program `A141212.P4910256435305541039` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141212 has offset 1).

The definition of A141212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141212.P4910256435305541039

`a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=0, a(5)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A141212

/-- `a(n-6)` -/
def P4910256435305541039.Spec : Prop :=
  ∀ n, (P4910256435305541039.a n : ℤ) = A141212 (n + 1)

theorem P4910256435305541039.correct : P4910256435305541039.Spec := by
  intro n
  simp only [A141212, Nat.add_sub_cancel]

end A141212

/-!
# A141213: Defining A to be the interior angle of a regular polygon, the number of constructible regular polygons such that A is in a field extension = degree 2^n, starting with n=0. This is also the number of values of x such that phi(x)/2 = 2^n (where phi is Euler's phi function), also starting with n=0.

The programs for A141213, there is no canonical definition to state claims against.
-/

/-! ## A141213.P8235300174943843091

`∑[2-ceil(n/31)]+1`
-/

namespace A141213.P8235300174943843091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈(n : ℚ) / 31⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A141213.P8235300174943843091

/-! ## A141213.P3564798320342592460

`round(a(n-1)+2-floor(n^(1/5)))` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A141213.P3564798320342592460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 - ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

end

end A141213.P3564798320342592460

/-! ## A141213.P15585869967947798726

`∑[C(3, A151660(n))]`
-/

namespace A141213.P15585869967947798726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A151660 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141213.P15585869967947798726

/-! ## A141213.P4228175313911593691

`∑[C(3, A151935(2*n))]`
-/

namespace A141213.P4228175313911593691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A151935 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141213.P4228175313911593691

/-! ## A141213.P17707919820707478078

`∑[C(3, A151878(3*n))]`
-/

namespace A141213.P17707919820707478078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A151878 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141213.P17707919820707478078

/-!
# A141214: Defining A to be the interior angle of a regular polygon, the number of constructible regular polygons such that A is in a field extension <= degree 2^n, starting with n=0. This is also the number of values of x such that phi(x)/2 is a power of 2 <= 2^n (where phi is Euler's phi function), also starting with n=0.

The programs for A141214, there is no canonical definition to state claims against.
-/

/-! ## A141214.P11706100367447690552

`∑[∑[2-ceil(n/31)]+1]`
-/

namespace A141214.P11706100367447690552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈(n : ℚ) / 31⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141214.P11706100367447690552

/-! ## A141214.P4048057346394147554

`2*n+A272370(n+1)+3`
-/

namespace A141214.P4048057346394147554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A272370 (n + 1) + 3)

end

end A141214.P4048057346394147554

/-! ## A141214.P6294384978147827552

`-∑[A032513(n)-(2*n+3)]`
-/

namespace A141214.P6294384978147827552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 n - (2 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141214.P6294384978147827552

/-! ## A141214.P7761145119395871429

`∑[n+4]-∑[A291168(n+1)]`
-/

namespace A141214.P7761145119395871429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A141214.P7761145119395871429

/-! ## A141214.P5638109821133020670

`A272370(n+1)+A144396(n+1)`
-/

namespace A141214.P5638109821133020670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272370 (n + 1) + A144396 (n + 1)

end

end A141214.P5638109821133020670

/-!
# A141217: a(n) = prime(prime(prime(prime(n) - 1) - 1) - 1) - 1, where prime(n) is the n-th prime.

The programs for A141217, the canonical program `A141217.P8943898306650397256` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141217 has offset 1).

The definition of A141217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141217.P8943898306650397256

`A141208(A006093(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A141217

/-- `A141208(A006093(n+1))` -/
def P8943898306650397256.Spec : Prop :=
  ∀ n, P8943898306650397256.a n = A141217 (n + 1)

theorem P8943898306650397256.correct : P8943898306650397256.Spec := by
  intro n
  simp only [A141217, Nat.add_sub_cancel]

end A141217

/-! ## A141217.P6745391926336961246

`A141208(A000040(n+1)-1)`
-/

namespace A141217.P6745391926336961246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A000040 (n + 1) - 1).toNat

end

end A141217.P6745391926336961246

namespace A141217

/-- `A141208(A000040(n+1)-1)` -/
def P6745391926336961246.Spec : Prop :=
  ∀ n, P6745391926336961246.a n = A141217 (n + 1)

end A141217

/-! ## A141217.P10954806223258578538

`A141208(A008578(n+2)-1)`
-/

namespace A141217.P10954806223258578538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A008578 (n + 2) - 1).toNat

end

end A141217.P10954806223258578538

namespace A141217

/-- `A141208(A008578(n+2)-1)` -/
def P10954806223258578538.Spec : Prop :=
  ∀ n, P10954806223258578538.a n = A141217 (n + 1)

end A141217

/-! ## A141217.P4556967812683291974

`A141208(eq[2, A016001(n+1)])`
-/

namespace A141217.P4556967812683291974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141217.P4556967812683291974

namespace A141217

/-- `A141208(eq[2, A016001(n+1)])` -/
def P4556967812683291974.Spec : Prop :=
  ∀ n, P4556967812683291974.a n = A141217 (n + 1)

end A141217

/-! ## A141217.P10300413486188091729

`A141208(eq[2, A299701(n+1)])`
-/

namespace A141217.P10300413486188091729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141217.P10300413486188091729

namespace A141217

/-- `A141208(eq[2, A299701(n+1)])` -/
def P10300413486188091729.Spec : Prop :=
  ∀ n, P10300413486188091729.a n = A141217 (n + 1)

end A141217

/-! ## A141217.P11644257594124102870

`A141208(A055631(A000040(n+1)))`
-/

namespace A141217.P11644257594124102870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (A055631 (A000040 (n + 1)).toNat).toNat

end

end A141217.P11644257594124102870

namespace A141217

/-- `A141208(A055631(A000040(n+1)))` -/
def P11644257594124102870.Spec : Prop :=
  ∀ n, P11644257594124102870.a n = A141217 (n + 1)

end A141217

/-! ## A141217.P1014414862881540340

`A140853(A140853(n+1))`
-/

namespace A141217.P1014414862881540340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A140853 (n + 1)).toNat

end

end A141217.P1014414862881540340

namespace A141217

/-- `A140853(A140853(n+1))` -/
def P1014414862881540340.Spec : Prop :=
  ∀ n, P1014414862881540340.a n = A141217 (n + 1)

end A141217

/-! ## A141217.P3401216126192049635

`A175248(A055003(n+1))-1`
-/

namespace A141217.P3401216126192049635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (A055003 (n + 1)).toNat - 1

end

end A141217.P3401216126192049635

namespace A141217

/-- `A175248(A055003(n+1))-1` -/
def P3401216126192049635.Spec : Prop :=
  ∀ n, P3401216126192049635.a n = A141217 (n + 1)

end A141217

/-! ## A141217.P16288320995229645779

`A175248(A175248(n+2))-1`
-/

namespace A141217.P16288320995229645779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175248 (A175248 (n + 2)).toNat - 1

end

end A141217.P16288320995229645779

namespace A141217

/-- `A175248(A175248(n+2))-1` -/
def P16288320995229645779.Spec : Prop :=
  ∀ n, P16288320995229645779.a n = A141217 (n + 1)

end A141217

/-! ## A141217.P1054698058388623660

`A055003(A055003(n+1)-1)-1`
-/

namespace A141217.P1054698058388623660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (A055003 (n + 1) - 1).toNat - 1

end

end A141217.P1054698058388623660

namespace A141217

/-- `A055003(A055003(n+1)-1)-1` -/
def P1054698058388623660.Spec : Prop :=
  ∀ n, P1054698058388623660.a n = A141217 (n + 1)

end A141217

/-!
# A141221: Number of ways for each of 2n (labeled) people in a circle to look at either a neighbor or the diametrally opposite person, such that no eye contact occurs.

The programs for A141221, there is no canonical definition to state claims against.
-/

/-! ## A141221.P4840732844175043428

`A141385(n+1)-A014963(A141393(2*n+1))`
-/

namespace A141221.P4840732844175043428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141385 (n + 1) - A014963 (A141393 (2 * n + 1)).toNat

end

end A141221.P4840732844175043428

/-!
# A141222: Expansion of -1/(2*x) + (2*x-1)^2/(2*x*(1-4x)^(3/2)).

The programs for A141222, the canonical program `A141222.P17493585866944039732` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141222 has offset 0).

The definition of A141222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141222.P17493585866944039732

`(1+3*n+n²)*C(2*n, n)/(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A141222

/-- `(1+3*n+n²)*C(2*n, n)/(n+1)` -/
def P17493585866944039732.Spec : Prop :=
  ∀ n, P17493585866944039732.a n = (A141222 n : ℚ)

end A141222

/-! ## A141222.P2832583926291034930

`A013498(2*n+3)`
-/

namespace A141222.P2832583926291034930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013498 (2 * n + 3)

end

end A141222.P2832583926291034930

namespace A141222

/-- `A013498(2*n+3)` -/
def P2832583926291034930.Spec : Prop :=
  ∀ n, P2832583926291034930.a n = A141222 n

end A141222

/-! ## A141222.P6622102791973433572

`((n+1)²+n)*A000108(n)`
-/

namespace A141222.P6622102791973433572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) * A000108 n

end

end A141222.P6622102791973433572

namespace A141222

/-- `((n+1)²+n)*A000108(n)` -/
def P6622102791973433572.Spec : Prop :=
  ∀ n, P6622102791973433572.a n = A141222 n

end A141222

/-! ## A141222.P714979670863633783

`((n+1)²+n)*A028304(2*n)`
-/

namespace A141222.P714979670863633783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) * A028304 (2 * n)

end

end A141222.P714979670863633783

namespace A141222

/-- `((n+1)²+n)*A028304(2*n)` -/
def P714979670863633783.Spec : Prop :=
  ∀ n, P714979670863633783.a n = A141222 n

end A141222

/-! ## A141222.P2156582908855050796

`A100320(n)+(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A141222.P2156582908855050796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A100320 n : ℚ) + (4 - 6 / (n + 1 : ℚ)) * a (n - 1)

end

end A141222.P2156582908855050796

namespace A141222

/-- `A100320(n)+(4-6/(n+1))*a(n-1)` -/
def P2156582908855050796.Spec : Prop :=
  ∀ n, P2156582908855050796.a n = (A141222 n : ℚ)

end A141222

/-! ## A141222.P3687948336497525537

`A005430(n)+A001700(n)`
-/

namespace A141222.P3687948336497525537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n + A001700 n

end

end A141222.P3687948336497525537

namespace A141222

/-- `A005430(n)+A001700(n)` -/
def P3687948336497525537.Spec : Prop :=
  ∀ n, P3687948336497525537.a n = A141222 n

end A141222

/-! ## A141222.P12229108458223708887

`A319924(n)+A010763(n)`
-/

namespace A141222.P12229108458223708887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319924 n + A010763 n

end

end A141222.P12229108458223708887

namespace A141222

/-- `A319924(n)+A010763(n)` -/
def P12229108458223708887.Spec : Prop :=
  ∀ n, P12229108458223708887.a n = A141222 n

end A141222

/-! ## A141222.P39769562308608116

`A002457(n)-A110609(n)`
-/

namespace A141222.P39769562308608116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A110609 n

end

end A141222.P39769562308608116

namespace A141222

/-- `A002457(n)-A110609(n)` -/
def P39769562308608116.Spec : Prop :=
  ∀ n, P39769562308608116.a n = A141222 n

end A141222

/-! ## A141222.P14576462093957709920

`A000108(n)*A028387(n)`
-/

namespace A141222.P14576462093957709920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A028387 n

end

end A141222.P14576462093957709920

namespace A141222

/-- `A000108(n)*A028387(n)` -/
def P14576462093957709920.Spec : Prop :=
  ∀ n, P14576462093957709920.a n = A141222 n

end A141222

/-! ## A141222.P7751009193766167215

`A000108(n)*∑[A103517(n)]`
-/

namespace A141222.P7751009193766167215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141222.P7751009193766167215

namespace A141222

/-- `A000108(n)*∑[A103517(n)]` -/
def P7751009193766167215.Spec : Prop :=
  ∀ n, P7751009193766167215.a n = A141222 n

end A141222

/-! ## A141222.P5673449722843671791

`A088218(n+1)+A005430(n)`
-/

namespace A141222.P5673449722843671791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A005430 n

end

end A141222.P5673449722843671791

namespace A141222

/-- `A088218(n+1)+A005430(n)` -/
def P5673449722843671791.Spec : Prop :=
  ∀ n, P5673449722843671791.a n = A141222 n

end A141222

/-! ## A141222.P1578436463670573146

`A110609(n)+A051924(n+1)`
-/

namespace A141222.P1578436463670573146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110609 n + A051924 (n + 1)

end

end A141222.P1578436463670573146

namespace A141222

/-- `A110609(n)+A051924(n+1)` -/
def P1578436463670573146.Spec : Prop :=
  ∀ n, P1578436463670573146.a n = A141222 n

end A141222

/-! ## A141222.P4418287793138992438

`A162551(n)+A034275(n+1)`
-/

namespace A141222.P4418287793138992438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n + A034275 (n + 1)

end

end A141222.P4418287793138992438

namespace A141222

/-- `A162551(n)+A034275(n+1)` -/
def P4418287793138992438.Spec : Prop :=
  ∀ n, P4418287793138992438.a n = A141222 n

end A141222

/-! ## A141222.P3513420212720355534

`A000108(n)*(A028552(n)+1)`
-/

namespace A141222.P3513420212720355534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (A028552 n + 1)

end

end A141222.P3513420212720355534

namespace A141222

/-- `A000108(n)*(A028552(n)+1)` -/
def P3513420212720355534.Spec : Prop :=
  ∀ n, P3513420212720355534.a n = A141222 n

end A141222

/-! ## A141222.P3144857253986390209

`A100071(2*n)+A001700(n)`
-/

namespace A141222.P3144857253986390209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * n) + A001700 n

end

end A141222.P3144857253986390209

namespace A141222

/-- `A100071(2*n)+A001700(n)` -/
def P3144857253986390209.Spec : Prop :=
  ∀ n, P3144857253986390209.a n = A141222 n

end A141222

/-! ## A141222.P11990449981677554767

`A000108(n)*A165900(n+2)`
-/

namespace A141222.P11990449981677554767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A165900 (n + 2)

end

end A141222.P11990449981677554767

namespace A141222

/-- `A000108(n)*A165900(n+2)` -/
def P11990449981677554767.Spec : Prop :=
  ∀ n, P11990449981677554767.a n = A141222 n

end A141222

/-! ## A141222.P14076236996589055991

`A212303(2*n)+A001700(n)`
-/

namespace A141222.P14076236996589055991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 (2 * n) + A001700 n

end

end A141222.P14076236996589055991

namespace A141222

/-- `A212303(2*n)+A001700(n)` -/
def P14076236996589055991.Spec : Prop :=
  ∀ n, P14076236996589055991.a n = A141222 n

end A141222

/-! ## A141222.P4445195392244427052

`A088662(2*n)-A005430(n)`
-/

namespace A141222.P4445195392244427052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088662 (2 * n) - A005430 n

end

end A141222.P4445195392244427052

namespace A141222

/-- `A088662(2*n)-A005430(n)` -/
def P4445195392244427052.Spec : Prop :=
  ∀ n, P4445195392244427052.a n = A141222 n

end A141222

/-! ## A141222.P6786443908313687413

`A001700(n)+n*A000984(n)`
-/

namespace A141222.P6786443908313687413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (n : ℤ) * A000984 n

end

end A141222.P6786443908313687413

namespace A141222

/-- `A001700(n)+n*A000984(n)` -/
def P6786443908313687413.Spec : Prop :=
  ∀ n, P6786443908313687413.a n = A141222 n

end A141222

/-! ## A141222.P2094536910847619326

`A051944(n)+n*A276666(n)`
-/

namespace A141222.P2094536910847619326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051944 n + (n : ℤ) * A276666 n

end

end A141222.P2094536910847619326

namespace A141222

/-- `A051944(n)+n*A276666(n)` -/
def P2094536910847619326.Spec : Prop :=
  ∀ n, P2094536910847619326.a n = A141222 n

end A141222

/-!
# A141223: Expansion of 1/(sqrt(1-4*x)*(1-3*x*c(x))), where c(x) is the g.f. of A000108.

The programs for A141223, there is no canonical definition to state claims against.
-/

/-! ## A141223.P3003367329312781899

`A049027(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A141223.P3003367329312781899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049027 n + 4 * a (n - 1)

end

end A141223.P3003367329312781899

/-! ## A141223.P17221582110544875199

`A067336(n+1)-A001700(n)`
-/

namespace A141223.P17221582110544875199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067336 (n + 1) - A001700 n

end

end A141223.P17221582110544875199

/-! ## A141223.P11720352231894992452

`A067336(n+1)-A088218(n+1)`
-/

namespace A141223.P11720352231894992452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067336 (n + 1) - A088218 (n + 1)

end

end A141223.P11720352231894992452

/-! ## A141223.P8272385795153331380

`2*A049027(n+1)-A001700(n)`
-/

namespace A141223.P8272385795153331380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049027 (n + 1) - A001700 n

end

end A141223.P8272385795153331380

/-! ## A141223.P16094083226526396912

`A067336(n+1)-A000984(n+1)/2`
-/

namespace A141223.P16094083226526396912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067336 (n + 1) : ℚ) - (A000984 (n + 1) : ℚ) / 2

end

end A141223.P16094083226526396912

/-! ## A141223.P7773764801019582360

`A106516(2*(n+1)²)`
-/

namespace A141223.P7773764801019582360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (2 * (n + 1) ^ 2)

end

end A141223.P7773764801019582360

/-! ## A141223.P8396528277661662651

`A131249(2*(n+1)²)`
-/

namespace A141223.P8396528277661662651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131249 (2 * (n + 1) ^ 2)

end

end A141223.P8396528277661662651

/-!
# A141224: Maximum number of points visible from some point in a square n X n lattice.

The programs for A141224, there is no canonical definition to state claims against.
-/

/-! ## A141224.P11656893702446739499

`∑[A001822(A239595(n+1)+1)+n]`
-/

namespace A141224.P11656893702446739499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A239595 (n + 1) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141224.P11656893702446739499

/-! ## A141224.P16414302408948727562

`A156262(A115266(n))+A008585(n)`
-/

namespace A141224.P16414302408948727562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (A115266 n).toNat + A008585 n

end

end A141224.P16414302408948727562

/-! ## A141224.P14611652503324790372

`A294482(n)+A171588(A296279(n))`
-/

namespace A141224.P14611652503324790372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294482 n + A171588 (A296279 n).toNat

end

end A141224.P14611652503324790372

/-! ## A141224.P4679256184388609498

`or(A084618(A141214(n)), A108949(n))`
-/

namespace A141224.P4679256184388609498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084618 (A141214 n).toNat) (A108949 n)

end

end A141224.P4679256184388609498

/-! ## A141224.P6491036013737615307

`xor(A034856(n+1), A053398(A116704(n)))`
-/

namespace A141224.P6491036013737615307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034856 (n + 1)) (A053398 (A116704 n).toNat)

end

end A141224.P6491036013737615307

/-!
# A141226: Numbers n such that the central point of the square n x n lattice sees the maximal number of points.

The programs for A141226, there is no canonical definition to state claims against.
-/

/-! ## A141226.P18351570633579342847

`eq[1, A141225(n+1)%2]+1`
-/

namespace A141226.P18351570633579342847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141225 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141226.P18351570633579342847

/-! ## A141226.P13679431661866934122

`record[or(n, A009531(A141225(n+1)))]`
-/

namespace A141226.P13679431661866934122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A009531 (A141225 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141226.P13679431661866934122

/-! ## A141226.P2047392997953445598

`record[A004442(n)*A009531(A141225(n+1))]`
-/

namespace A141226.P2047392997953445598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A009531 (A141225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141226.P2047392997953445598

/-! ## A141226.P903491034383422715

`record[A004442(n)/A009531(A141225(n+1)²)]`
-/

namespace A141226.P903491034383422715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) / (A009531 (A141225 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141226.P903491034383422715

/-! ## A141226.P15128506893427342647

`record[A000027(n+1)*A009531(A141225(n+1))]`
-/

namespace A141226.P15128506893427342647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A009531 (A141225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141226.P15128506893427342647

/-!
# A141227: Maximum number of points visible from some point in a cubic n x n x n lattice.

The programs for A141227, there is no canonical definition to state claims against.
-/

/-! ## A141227.P3370535361548315610

`xor(3, A000376(3*(n+1)))-n`
-/

namespace A141227.P3370535361548315610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A000376 (3 * (n + 1))) - (n : ℤ)

end

end A141227.P3370535361548315610

/-! ## A141227.P5607543302986358179

`A087836(lcm((n+1)*∑[(n+1)²], C(2*(n+2), 4)))`
-/

namespace A141227.P5607543302986358179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (Nat.lcm ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) (Nat.choose (2 * (n + 2)) 4))

end

end A141227.P5607543302986358179

/-!
# A141229: Odd numbers k for which A006694((k-1)/2) = 3.

The programs for A141229, there is no canonical definition to state claims against.
-/

/-! ## A141229.P6818105717129173438

`A005408(eq[3, A006694(n)])`
-/

namespace A141229.P6818105717129173438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141229.P6818105717129173438

/-! ## A141229.P4952365596655386295

`A144396(eq[3, A006694(n)])`
-/

namespace A141229.P4952365596655386295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141229.P4952365596655386295

/-! ## A141229.P18181515162775339619

`A267872(eq[3, A006694(n)])`
-/

namespace A141229.P18181515162775339619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141229.P18181515162775339619

/-! ## A141229.P17123960314253404966

`A267873(eq[3, A006694(n)])`
-/

namespace A141229.P17123960314253404966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141229.P17123960314253404966

/-! ## A141229.P3703400511621250686

`A005408(eq[4, A081844(n)])`
-/

namespace A141229.P3703400511621250686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141229.P3703400511621250686

/-! ## A141229.P13099131104306191710

`A144396(eq[4, A081844(n)])`
-/

namespace A141229.P13099131104306191710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141229.P13099131104306191710

/-! ## A141229.P15188307745649562558

`A267872(eq[4, A081844(n)])`
-/

namespace A141229.P15188307745649562558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141229.P15188307745649562558

/-! ## A141229.P17682595123142185702

`eq[3, A006694(A057979(n))]`
-/

namespace A141229.P17682595123142185702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A057979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141229.P17682595123142185702

/-!
# A141230: Odd numbers n for which A006694((n-1)/2)=4.

The programs for A141230, there is no canonical definition to state claims against.
-/

/-! ## A141230.P8175277080215311954

`eq[4, A006694(gcd(1-n, floor(n/2)))]`
-/

namespace A141230.P8175277080215311954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141230.P8175277080215311954

/-! ## A141230.P10795902730896648808

`A005408(eq[4, A006694(n)])`
-/

namespace A141230.P10795902730896648808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141230.P10795902730896648808

/-! ## A141230.P17359637462446127032

`eq[4, A006694(A057979(n))]`
-/

namespace A141230.P17359637462446127032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A057979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A141230.P17359637462446127032

/-! ## A141230.P18249522894803442179

`A144396(eq[4, A006694(n)])`
-/

namespace A141230.P18249522894803442179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141230.P18249522894803442179

/-! ## A141230.P9911717937643621550

`A267872(eq[4, A006694(n)])`
-/

namespace A141230.P9911717937643621550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141230.P9911717937643621550

/-! ## A141230.P5901125491117144368

`A267873(eq[4, A006694(n)])`
-/

namespace A141230.P5901125491117144368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141230.P5901125491117144368

/-! ## A141230.P1150347431851462267

`A005408(eq[5, A081844(n)])`
-/

namespace A141230.P1150347431851462267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141230.P1150347431851462267

/-! ## A141230.P13201895736680753417

`A267872(eq[5, A081844(n)])`
-/

namespace A141230.P13201895736680753417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141230.P13201895736680753417

/-!
# A141231: Positive integers whose prime factorizations contain only primes from A001122.

The programs for A141231, there is no canonical definition to state claims against.
-/

/-! ## A141231.P5449631658741827942

`record[A101157(A101107(n+1)-3)]`
-/

namespace A141231.P5449631658741827942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 (A101107 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141231.P5449631658741827942

/-! ## A141231.P5527640224924434147

`eq[char[A198390(n+1)], A227570(n)]`
-/

namespace A141231.P5527640224924434147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198390 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A141231.P5527640224924434147

/-! ## A141231.P7422156623662623332

`record[A101157(n+2)%A101148(n+2)]`
-/

namespace A141231.P7422156623662623332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101157 (n + 2)) (A101148 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141231.P7422156623662623332

/-! ## A141231.P1490910763516882682

`eq[A000035(n), A088569(A051890(2*n))]`
-/

namespace A141231.P1490910763516882682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A051890 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141231.P1490910763516882682

/-!
# A141232: Overpseudoprimes to base 2: composite k such that k = A137576((k-1)/2).

The programs for A141232, there is no canonical definition to state claims against.
-/

/-! ## A141232.P5097246006567677889

`A047713(A054871(n)+2)`
-/

namespace A141232.P5097246006567677889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (A054871 n + 2).toNat

end

end A141232.P5097246006567677889

/-!
# A141237: Sequence of k such that starting with P(0)=19 then k(n)*P(n-1)*(k(n)*P(n-1)-1)-1 is the least prime = P(n).

The programs for A141237, there is no canonical definition to state claims against.
-/

/-! ## A141237.P602684870936612483

`xor(3, A056239(A387037(n)))`
-/

namespace A141237.P602684870936612483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A056239 (A387037 n).toNat)

end

end A141237.P602684870936612483

/-!
# A141241: a(n) = number of divisors of n-th positive integer with a nonprime number of divisors. a(n) = the number of divisors of A139118(n).

The programs for A141241, the canonical program `A141241.P12757171948806850283` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141241 has offset 1).

The definition of A141241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A139118, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141241.P12757171948806850283

`A000005(A139118(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141241

/-- `A000005(A139118(n+1))` -/
def P12757171948806850283.Spec : Prop :=
  ∀ n, P12757171948806850283.a n = A141241 (n + 1)

theorem P12757171948806850283.correct : P12757171948806850283.Spec := by
  intro n
  simp only [A141241, Nat.add_sub_cancel]

end A141241

/-! ## A141241.P9316940124348186529

`A000005(comp[(n+1)*(3-A000005(A000005(n+1)))])`
-/

namespace A141241.P9316940124348186529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A000005 (A000005 (n + 1)).toNat)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A141241.P9316940124348186529

namespace A141241

/-- `A000005(comp[(n+1)*(3-A000005(A000005(n+1)))])` -/
def P9316940124348186529.Spec : Prop :=
  ∀ n, P9316940124348186529.a n = A141241 (n + 1)

end A141241

/-! ## A141241.P12820380693517734106

`filter[A035004(n+1), A005171(#)]`
-/

namespace A141241.P12820380693517734106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A141241.P12820380693517734106

namespace A141241

/-- `filter[A035004(n+1), A005171(#)]` -/
def P12820380693517734106.Spec : Prop :=
  ∀ n, P12820380693517734106.a n = A141241 (n + 1)

end A141241

/-! ## A141241.P8485616003831999492

`filter[A035004(n+1), A283265(#)]`
-/

namespace A141241.P8485616003831999492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A141241.P8485616003831999492

namespace A141241

/-- `filter[A035004(n+1), A283265(#)]` -/
def P8485616003831999492.Spec : Prop :=
  ∀ n, P8485616003831999492.a n = A141241 (n + 1)

end A141241

/-! ## A141241.P2230119847700234508

`A320111(2*A139118(n+1))`
-/

namespace A141241.P2230119847700234508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A139118 (n + 1)).toNat

end

end A141241.P2230119847700234508

namespace A141241

/-- `A320111(2*A139118(n+1))` -/
def P2230119847700234508.Spec : Prop :=
  ∀ n, P2230119847700234508.a n = A141241 (n + 1)

end A141241

/-! ## A141241.P9774085776659328847

`filter[A000005(n+1), A005171(#)]`
-/

namespace A141241.P9774085776659328847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A141241.P9774085776659328847

namespace A141241

/-- `filter[A000005(n+1), A005171(#)]` -/
def P9774085776659328847.Spec : Prop :=
  ∀ n, P9774085776659328847.a n = A141241 (n + 1)

end A141241

/-! ## A141241.P1711519303750901920

`filter[A000005(n+1), A283265(#)]`
-/

namespace A141241.P1711519303750901920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A141241.P1711519303750901920

namespace A141241

/-- `filter[A000005(n+1), A283265(#)]` -/
def P1711519303750901920.Spec : Prop :=
  ∀ n, P1711519303750901920.a n = A141241 (n + 1)

end A141241

/-! ## A141241.P7475661238652335437

`∑{d}[A139118(n+1), A143201(A000040(#))]`
-/

namespace A141241.P7475661238652335437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A143201 (A000040 d).toNat

end

end A141241.P7475661238652335437

namespace A141241

/-- `∑{d}[A139118(n+1), A143201(A000040(#))]` -/
def P7475661238652335437.Spec : Prop :=
  ∀ n, P7475661238652335437.a n = A141241 (n + 1)

end A141241

/-! ## A141241.P9340401237251181136

`A322483(A139118(n+1)²)`
-/

namespace A141241.P9340401237251181136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A139118 (n + 1) ^ 2).toNat

end

end A141241.P9340401237251181136

namespace A141241

/-- `A322483(A139118(n+1)²)` -/
def P9340401237251181136.Spec : Prop :=
  ∀ n, P9340401237251181136.a n = A141241 (n + 1)

end A141241

/-!
# A141242: a(n) is the number of divisors of the n-th positive integer with a prime number of divisors. In other words, a(n) is the number of divisors of A009087(n).

The programs for A141242, the canonical program `A141242.P5265677567583654278` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141242 has offset 1).

The definition of A141242 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009087, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141242.P5265677567583654278

`A000005(A009087(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141242

/-- `A000005(A009087(n+1))` -/
def P5265677567583654278.Spec : Prop :=
  ∀ n, P5265677567583654278.a n = A141242 (n + 1)

theorem P5265677567583654278.correct : P5265677567583654278.Spec := by
  intro n
  simp only [A141242, Nat.add_sub_cancel]

end A141242

/-! ## A141242.P14230880415490176130

`p?[A086454(n+1)]`
-/

namespace A141242.P14230880415490176130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P14230880415490176130

namespace A141242

/-- `p?[A086454(n+1)]` -/
def P14230880415490176130.Spec : Prop :=
  ∀ n, P14230880415490176130.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P10454063251014472275

`p?[A025474(n+1)+1]`
-/

namespace A141242.P10454063251014472275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P10454063251014472275

namespace A141242

/-- `p?[A025474(n+1)+1]` -/
def P10454063251014472275.Spec : Prop :=
  ∀ n, P10454063251014472275.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P5342822647661455611

`filter[A086454(n+1), A010051(#)]`
-/

namespace A141242.P5342822647661455611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A141242.P5342822647661455611

namespace A141242

/-- `filter[A086454(n+1), A010051(#)]` -/
def P5342822647661455611.Spec : Prop :=
  ∀ n, P5342822647661455611.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P11712295018959562379

`filter[A086454(n+1), A252233(#)]`
-/

namespace A141242.P11712295018959562379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A141242.P11712295018959562379

namespace A141242

/-- `filter[A086454(n+1), A252233(#)]` -/
def P11712295018959562379.Spec : Prop :=
  ∀ n, P11712295018959562379.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P7284352254169963845

`filter[A086454(n+1), A257000(#)]`
-/

namespace A141242.P7284352254169963845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A141242.P7284352254169963845

namespace A141242

/-- `filter[A086454(n+1), A257000(#)]` -/
def P7284352254169963845.Spec : Prop :=
  ∀ n, P7284352254169963845.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P2793659702011065333

`filter[A086454(n+1), A283991(#)]`
-/

namespace A141242.P2793659702011065333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283991 (f1 j).toNat = 1) n)

end

end A141242.P2793659702011065333

namespace A141242

/-- `filter[A086454(n+1), A283991(#)]` -/
def P2793659702011065333.Spec : Prop :=
  ∀ n, P2793659702011065333.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P4093465388154278920

`filter[A086454(n+2), A080339(#)]`
-/

namespace A141242.P4093465388154278920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A141242.P4093465388154278920

namespace A141242

/-- `filter[A086454(n+2), A080339(#)]` -/
def P4093465388154278920.Spec : Prop :=
  ∀ n, P4093465388154278920.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P2176994152490678051

`filter[A086454(n+2), A192490(#)]`
-/

namespace A141242.P2176994152490678051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192490 (f1 j).toNat = 1) n)

end

end A141242.P2176994152490678051

namespace A141242

/-- `filter[A086454(n+2), A192490(#)]` -/
def P2176994152490678051.Spec : Prop :=
  ∀ n, P2176994152490678051.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P6736188900232860142

`p?[A000005(n+1)]`
-/

namespace A141242.P6736188900232860142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P6736188900232860142

namespace A141242

/-- `p?[A000005(n+1)]` -/
def P6736188900232860142.Spec : Prop :=
  ∀ n, P6736188900232860142.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P2747756007527793140

`p?[A100995(n+1)+1]`
-/

namespace A141242.P2747756007527793140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P2747756007527793140

namespace A141242

/-- `p?[A100995(n+1)+1]` -/
def P2747756007527793140.Spec : Prop :=
  ∀ n, P2747756007527793140.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P12501465782941680872

`p?[1-A158052(n+1)]`
-/

namespace A141242.P12501465782941680872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A158052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P12501465782941680872

namespace A141242

/-- `p?[1-A158052(n+1)]` -/
def P12501465782941680872.Spec : Prop :=
  ∀ n, P12501465782941680872.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P5476691338590252103

`p?[A001222(A000961(n+1))+1]`
-/

namespace A141242.P5476691338590252103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000961 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P5476691338590252103

namespace A141242

/-- `p?[A001222(A000961(n+1))+1]` -/
def P5476691338590252103.Spec : Prop :=
  ∀ n, P5476691338590252103.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P3045530717259872837

`p?[A001222(A246655(n+1))+1]`
-/

namespace A141242.P3045530717259872837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A246655 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P3045530717259872837

namespace A141242

/-- `p?[A001222(A246655(n+1))+1]` -/
def P3045530717259872837.Spec : Prop :=
  ∀ n, P3045530717259872837.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P13025068543689472386

`p?[(A001222(n+1)+1)*A001221(n+1)]`
-/

namespace A141242.P13025068543689472386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) + 1) * A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P13025068543689472386

namespace A141242

/-- `p?[(A001222(n+1)+1)*A001221(n+1)]` -/
def P13025068543689472386.Spec : Prop :=
  ∀ n, P13025068543689472386.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P643334496200472742

`p?[A353362(n+1)+A353361(n+1)]`
-/

namespace A141242.P643334496200472742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (n + 1) + A353361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P643334496200472742

namespace A141242

/-- `p?[A353362(n+1)+A353361(n+1)]` -/
def P643334496200472742.Spec : Prop :=
  ∀ n, P643334496200472742.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P16711675324958464375

`p?[A001222(A138929(n+1))]`
-/

namespace A141242.P16711675324958464375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A138929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P16711675324958464375

namespace A141242

/-- `p?[A001222(A138929(n+1))]` -/
def P16711675324958464375.Spec : Prop :=
  ∀ n, P16711675324958464375.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P17610098034611201648

`A001222(2*A009087(n+1))`
-/

namespace A141242.P17610098034611201648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A009087 (n + 1)).toNat

end

end A141242.P17610098034611201648

namespace A141242

/-- `A001222(2*A009087(n+1))` -/
def P17610098034611201648.Spec : Prop :=
  ∀ n, P17610098034611201648.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P956892629728318054

`p?[A001222(record[n/a(A001221(n))])]` with `a(0)=2`
-/

namespace A141242.P956892629728318054
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (n : ℚ) / f2 (A001221 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141242.P956892629728318054

namespace A141242

/-- `p?[A001222(record[n/a(A001221(n))])]` -/
def P956892629728318054.Spec : Prop :=
  ∀ n, P956892629728318054.a n = A141242 (n + 1)

end A141242

/-! ## A141242.P17305935203353024286

`A000005(eq[2, A000005(A000005(n+1))]+1)`
-/

namespace A141242.P17305935203353024286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A141242.P17305935203353024286

namespace A141242

/-- `A000005(eq[2, A000005(A000005(n+1))]+1)` -/
def P17305935203353024286.Spec : Prop :=
  ∀ n, P17305935203353024286.a n = A141242 (n + 1)

end A141242

/-!
# A141243: Number of ways to place non-attacking knights on the n X n board.

The programs for A141243, there is no canonical definition to state claims against.
-/

/-! ## A141243.P12561299422293385966

`A395243(∑[4*n])`
-/

namespace A141243.P12561299422293385966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395243 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141243.P12561299422293385966

/-!
# A141244: Numerators in the expansion of (1-sqrt(1-x^2))/(1-x).

The programs for A141244, there is no canonical definition to state claims against.
-/

/-! ## A141244.P5041472612859528494

`lcm(16, A307768(n))/16`
-/

namespace A141244.P5041472612859528494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 16 (A307768 n) : ℚ) / 16

end

end A141244.P5041472612859528494

/-! ## A141244.P8640859053875118863

`2^∑[∑{e}[and(n, -n), #]]-A001790(floor(n/2))`
-/

namespace A141244.P8640859053875118863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A001790 ⌊(n : ℚ) / 2⌋.toNat

end

end A141244.P8640859053875118863

/-! ## A141244.P4521853630061853325

`A307768(n)/A001316(n)`
-/

namespace A141244.P4521853630061853325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307768 n : ℚ) / (A001316 n : ℚ)

end

end A141244.P4521853630061853325

/-! ## A141244.P11644456176297088539

`A307768(n)/Δ[A006046(n)]`
-/

namespace A141244.P11644456176297088539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307768 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A141244.P11644456176297088539

/-! ## A141244.P2795827094198893658

`A307768(n)/A000079(A000120(n))`
-/

namespace A141244.P2795827094198893658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307768 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A141244.P2795827094198893658

/-!
# A141245: Numerators in expansion of (1+x-sqrt(1-x^2))/(x(1-x)).

The programs for A141245, there is no canonical definition to state claims against.
-/

/-! ## A141245.P13269734894977636274

`A164991(n+2)/A048896(n)`
-/

namespace A141245.P13269734894977636274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164991 (n + 2) : ℚ) / (A048896 n : ℚ)

end

end A141245.P13269734894977636274

/-! ## A141245.P14339860746036083345

`record[A164991(A286558(n))]/A048896(n)`
-/

namespace A141245.P14339860746036083345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164991 (A286558 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A048896 n : ℚ)

end

end A141245.P14339860746036083345

/-! ## A141245.P13458320093736539179

`A086117(n+2)-A001790(A065033(n))`
-/

namespace A141245.P13458320093736539179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086117 (n + 2) - A001790 (A065033 n).toNat

end

end A141245.P13458320093736539179

/-! ## A141245.P16377178692381598326

`(A045621(n)+A000079(n))/A048896(n)`
-/

namespace A141245.P16377178692381598326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045621 n + A000079 n : ℚ) / (A048896 n : ℚ)

end

end A141245.P16377178692381598326

/-! ## A141245.P8353502180826982986

`A000265(∑[2^n]-(∏[2*or(1, n)/(n+1)]-2)/2)`
-/

namespace A141245.P8353502180826982986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (∏ j ∈ Finset.range (n + 1), f2 j - 2) / 2)).toNat

end

end A141245.P8353502180826982986

/-!
# A141246: Prime numbers related to maximal visibility in the square n X n lattice.

The programs for A141246, there is no canonical definition to state claims against.
-/

/-! ## A141246.P2420652735627423641

`floor(A141226(n+3)/2)`
-/

namespace A141246.P2420652735627423641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141226 (n + 3) : ℚ) / 2⌋

end

end A141246.P2420652735627423641

/-! ## A141246.P15324342283965452958

`A004526(A141226(n+3))`
-/

namespace A141246.P15324342283965452958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A141226 (n + 3)).toNat

end

end A141246.P15324342283965452958

/-! ## A141246.P8585194860342335992

`A002034(A141226(n+3)-1)`
-/

namespace A141246.P8585194860342335992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A141226 (n + 3) - 1).toNat

end

end A141246.P8585194860342335992

/-! ## A141246.P3204788714090316151

`A006530(A141226(n+3)-1)`
-/

namespace A141246.P3204788714090316151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A141226 (n + 3) - 1).toNat

end

end A141246.P3204788714090316151

/-! ## A141246.P12968644040105071686

`A065330(A141226(n+3)-1)`
-/

namespace A141246.P12968644040105071686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A141226 (n + 3) - 1).toNat

end

end A141246.P12968644040105071686

/-!
# A141247: Minimum number of points visible from a point in a square n X n lattice.

The programs for A141247, there is no canonical definition to state claims against.
-/

/-! ## A141247.P8015970477186957330

`A049632(n)-A185284(A211265(n+1))`
-/

namespace A141247.P8015970477186957330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A185284 (A211265 (n + 1)).toNat

end

end A141247.P8015970477186957330

/-! ## A141247.P8649878880450613701

`A049632(n)-A332671(A049647(n+1))`
-/

namespace A141247.P8649878880450613701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A332671 (A049647 (n + 1)).toNat

end

end A141247.P8649878880450613701

/-! ## A141247.P5344746032264552274

`A049632(n)-A048158(A134840(3*n+4))`
-/

namespace A141247.P5344746032264552274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A048158 (A134840 (3 * n + 4)).toNat

end

end A141247.P5344746032264552274

/-! ## A141247.P14146125409978139981

`A049691(n)+A010054(A080953(n))`
-/

namespace A141247.P14146125409978139981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + A010054 (A080953 n).toNat

end

end A141247.P14146125409978139981

/-! ## A141247.P866542989782657148

`A049632(n)-A185284(A004273(n))`
-/

namespace A141247.P866542989782657148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A185284 (A004273 n).toNat

end

end A141247.P866542989782657148

/-!
# A141248: Number of points having minimal visibility in a square n X n lattice of points.

The programs for A141248, there is no canonical definition to state claims against.
-/

/-! ## A141248.P6272967869128365048

`gcd(6, ∑[A177281(n)])²`
-/

namespace A141248.P6272967869128365048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A141248.P6272967869128365048

/-! ## A141248.P17052749648500487210

`A164886(53*n)!²`
-/

namespace A141248.P17052749648500487210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A164886 (53 * n)).toNat ^ 2

end

end A141248.P17052749648500487210

/-! ## A141248.P7321568657496847416

`∏{p}[∏[A204560(n+3)], #²]`
-/

namespace A141248.P7321568657496847416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A141248.P7321568657496847416

/-! ## A141248.P17678275847187844329

`A278254(A331946(n+1))`
-/

namespace A141248.P17678275847187844329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278254 (A331946 (n + 1)).toNat

end

end A141248.P17678275847187844329

/-! ## A141248.P17327321154938224743

`A122857(A160161(n)²)²`
-/

namespace A141248.P17327321154938224743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122857 (A160161 n ^ 2).toNat ^ 2

end

end A141248.P17327321154938224743

/-!
# A141249: Numbers n such that the central point of the square n X n lattice sees the minimal number of points.

The programs for A141249, there is no canonical definition to state claims against.
-/

/-! ## A141249.P16709038333198929582

`record[or(n, A009531(A141248(n+1)))]`
-/

namespace A141249.P16709038333198929582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A009531 (A141248 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141249.P16709038333198929582

/-! ## A141249.P1036919008789145116

`eq[2, A020639(A141248(n+1)+1)]+1`
-/

namespace A141249.P1036919008789145116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A141248 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A141249.P1036919008789145116

/-! ## A141249.P3427206733354200870

`record[A004442(n)*A009531(A141248(n+1))]`
-/

namespace A141249.P3427206733354200870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A009531 (A141248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141249.P3427206733354200870

/-! ## A141249.P7004394972029658473

`record[A000027(n+1)*A009531(A141248(n+1))]`
-/

namespace A141249.P7004394972029658473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A009531 (A141248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141249.P7004394972029658473

/-!
# A141250: Prime powers related to minimal visibility in the square n X n lattice.

The programs for A141250, there is no canonical definition to state claims against.
-/

/-! ## A141250.P12043386536775108044

`ceil(A141249(n+2)/2)`
-/

namespace A141250.P12043386536775108044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141249 (n + 2) : ℚ) / 2⌉

end

end A141250.P12043386536775108044

/-! ## A141250.P9577512297400923915

`A000463(A141249(n+2))`
-/

namespace A141250.P9577512297400923915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A141249 (n + 2)).toNat

end

end A141250.P9577512297400923915

/-! ## A141250.P2628342446194387072

`A000265(A141249(n+2)+1)`
-/

namespace A141250.P2628342446194387072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A141249 (n + 2) + 1).toNat

end

end A141250.P2628342446194387072

/-! ## A141250.P16108992340078689768

`A126257(A141249(n+2)+1)`
-/

namespace A141250.P16108992340078689768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A141249 (n + 2) + 1).toNat

end

end A141250.P16108992340078689768

/-! ## A141250.P15173899300676343134

`A284254(A141249(n+2)+1)`
-/

namespace A141250.P15173899300676343134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (A141249 (n + 2) + 1).toNat

end

end A141250.P15173899300676343134

/-!
# A141253: Number of permutations that lie in the cyclic closure of Av(132)--i.e., at least one cyclic rotation of the permutation avoids the pattern 132.

The programs for A141253, the canonical program `A141253.P13668534883310486471` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141253 has offset 1).

The definition of A141253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141253.P6925411005937283803

`(n+1)*A279557(n)`
-/

namespace A141253.P6925411005937283803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A279557 n

end

end A141253.P6925411005937283803

namespace A141253

/-- `(n+1)*A279557(n)` -/
def P6925411005937283803.Spec : Prop :=
  ∀ n, P6925411005937283803.a n = A141253 (n + 1)

end A141253

/-! ## A141253.P13668534883310486471

`(n+1)*∑[A099376(abs(1-n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A141253

/-- `(n+1)*∑[A099376(abs(1-n))]` -/
def P13668534883310486471.Spec : Prop :=
  ∀ n, P13668534883310486471.a n = A141253 (n + 1)

theorem P13668534883310486471.correct : P13668534883310486471.Spec := by
  intro n
  simp only [A141253, Nat.add_sub_cancel]

end A141253

/-! ## A141253.P3066448449508041459

`(n+1)*(abs(A104496(n+1))+1)`
-/

namespace A141253.P3066448449508041459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (|A104496 (n + 1)| + 1)

end

end A141253.P3066448449508041459

namespace A141253

/-- `(n+1)*(abs(A104496(n+1))+1)` -/
def P3066448449508041459.Spec : Prop :=
  ∀ n, P3066448449508041459.a n = A141253 (n + 1)

end A141253

/-! ## A141253.P4229478994492346503

`(n+1)*(A143955(n)+A000108(n))`
-/

namespace A141253.P4229478994492346503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A143955 n + A000108 n)

end

end A141253.P4229478994492346503

namespace A141253

/-- `(n+1)*(A143955(n)+A000108(n))` -/
def P4229478994492346503.Spec : Prop :=
  ∀ n, P4229478994492346503.a n = A141253 (n + 1)

end A141253

/-! ## A141253.P9969476962918368954

`(n+1)*(record[A126120(n)]-A014138(n))`
-/

namespace A141253.P9969476962918368954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A014138 n)

end

end A141253.P9969476962918368954

namespace A141253

/-- `(n+1)*(record[A126120(n)]-A014138(n))` -/
def P9969476962918368954.Spec : Prop :=
  ∀ n, P9969476962918368954.a n = A141253 (n + 1)

end A141253

/-! ## A141253.P17063310565629724855

`(n+1)*(A000108(n+1)-A014138(n))`
-/

namespace A141253.P17063310565629724855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 (n + 1) - A014138 n)

end

end A141253.P17063310565629724855

namespace A141253

/-- `(n+1)*(A000108(n+1)-A014138(n))` -/
def P17063310565629724855.Spec : Prop :=
  ∀ n, P17063310565629724855.a n = A141253 (n + 1)

end A141253

/-! ## A141253.P12636419609120165658

`∑[A063886(2*n+1)-∑[A000108(n+1)]]`
-/

namespace A141253.P12636419609120165658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141253.P12636419609120165658

namespace A141253

/-- `∑[A063886(2*n+1)-∑[A000108(n+1)]]` -/
def P12636419609120165658.Spec : Prop :=
  ∀ n, P12636419609120165658.a n = A141253 (n + 1)

end A141253

/-! ## A141253.P2129210470646699475

`(n+1)*(A000108(n+1)+1-∑[A000108(n)])`
-/

namespace A141253.P2129210470646699475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000108 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j))

end

end A141253.P2129210470646699475

namespace A141253

/-- `(n+1)*(A000108(n+1)+1-∑[A000108(n)])` -/
def P2129210470646699475.Spec : Prop :=
  ∀ n, P2129210470646699475.a n = A141253 (n + 1)

end A141253

/-! ## A141253.P2398800887199365263

`(n+1)*∑[A128899(∑[n]+2)]`
-/

namespace A141253.P2398800887199365263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141253.P2398800887199365263

namespace A141253

/-- `(n+1)*∑[A128899(∑[n]+2)]` -/
def P2398800887199365263.Spec : Prop :=
  ∀ n, P2398800887199365263.a n = A141253 (n + 1)

end A141253

/-!
# A141254: Number of permutations that lie in the cyclic closure of Av(123) - i.e., at least one cyclic rotation of the permutation avoids the pattern 123.

The programs for A141254, there is no canonical definition to state claims against.
-/

/-! ## A141254.P14648090324825645429

`n*A302797(a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A141254.P14648090324825645429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) * A302797 (a (n - 2) + 1).toNat

end

end A141254.P14648090324825645429

/-! ## A141254.P1422059808598920558

`A276798(A082134(n))`
-/

namespace A141254.P1422059808598920558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A082134 n).toNat

end

end A141254.P1422059808598920558

/-! ## A141254.P12420376796052577786

`A276798(A150878(n))`
-/

namespace A141254.P12420376796052577786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150878 n).toNat

end

end A141254.P12420376796052577786

/-!
# A141255: Total number of line segments between points visible to each other in a square n X n lattice.

The programs for A141255, there is no canonical definition to state claims against.
-/

/-! ## A141255.P12059323389108899520

`A114043(n+1)-1`
-/

namespace A141255.P12059323389108899520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (n + 1) - 1

end

end A141255.P12059323389108899520

/-! ## A141255.P6976032918630364899

`A344993(n)+2*n²`
-/

namespace A141255.P6976032918630364899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344993 n + (2 * n ^ 2 : ℤ)

end

end A141255.P6976032918630364899

/-! ## A141255.P9115546480503296053

`A114146(n+1)/2-1`
-/

namespace A141255.P9115546480503296053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114146 (n + 1) : ℚ) / 2 - 1

end

end A141255.P9115546480503296053

/-! ## A141255.P3978685851970769959

`2*(A290131(n+1)+n)`
-/

namespace A141255.P3978685851970769959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A290131 (n + 1) + (n : ℤ))

end

end A141255.P3978685851970769959

/-! ## A141255.P16525059139277399634

`A058331(n)+A344993(n)-1`
-/

namespace A141255.P16525059139277399634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n + (A344993 n - 1)

end

end A141255.P16525059139277399634

/-! ## A141255.P15801602502632044529

`A290131(n+1)+A290131(n+1)+A005843(n)`
-/

namespace A141255.P15801602502632044529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290131 (n + 1) + (A290131 (n + 1) + A005843 n)

end

end A141255.P15801602502632044529

/-! ## A141255.P14964321957861377419

`A177719(2*(n+1))/4`
-/

namespace A141255.P14964321957861377419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177719 (2 * (n + 1)) : ℚ) / 4

end

end A141255.P14964321957861377419

/-! ## A141255.P1772208297348019940

`xor(A057427(A005408(n)), A114043(n+1))`
-/

namespace A141255.P1772208297348019940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A005408 n).toNat) (A114043 (n + 1))

end

end A141255.P1772208297348019940

/-! ## A141255.P9828674598416800884

`xor(A057427(A016777(n)), A114043(n+1))`
-/

namespace A141255.P9828674598416800884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (A016777 n).toNat) (A114043 (n + 1))

end

end A141255.P9828674598416800884

/-! ## A141255.P13943263582868351484

`2*A115005(n+1)`
-/

namespace A141255.P13943263582868351484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115005 (n + 1)

end

end A141255.P13943263582868351484

/-! ## A141255.P4334754558954969882

`2*(A306302(n)-n)`
-/

namespace A141255.P4334754558954969882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A306302 n - (n : ℤ))

end

end A141255.P4334754558954969882

/-! ## A141255.P11126966198494469221

`A306302(n)+A290131(n+1)`
-/

namespace A141255.P11126966198494469221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 n + A290131 (n + 1)

end

end A141255.P11126966198494469221

/-! ## A141255.P2828704212735565775

`A115005(1-A001489(n))+A115005(n+1)`
-/

namespace A141255.P2828704212735565775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115005 (1 - A001489 n).toNat + A115005 (n + 1)

end

end A141255.P2828704212735565775

/-! ## A141255.P9785923921646461674

`(A088658(n+1)+A033996(n))/2`
-/

namespace A141255.P9785923921646461674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088658 (n + 1) + A033996 n : ℚ) / 2

end

end A141255.P9785923921646461674

/-! ## A141255.P7336856401763296983

`A046092(n)+A088658(n+1)/2`
-/

namespace A141255.P7336856401763296983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046092 n : ℚ) + (A088658 (n + 1) : ℚ) / 2

end

end A141255.P7336856401763296983

/-! ## A141255.P17722070733204698268

`A331771(n+1)/2`
-/

namespace A141255.P17722070733204698268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331771 (n + 1) : ℚ) / 2

end

end A141255.P17722070733204698268

/-! ## A141255.P8531808895222924805

`A331771(n+1)-A115005(n+1)-A115005(n+1)`
-/

namespace A141255.P8531808895222924805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331771 (n + 1) - A115005 (n + 1) - A115005 (n + 1)

end

end A141255.P8531808895222924805

/-! ## A141255.P6802181124395085402

`A306302(n)+2*A331754(n+1)`
-/

namespace A141255.P6802181124395085402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306302 n + 2 * A331754 (n + 1)

end

end A141255.P6802181124395085402

/-! ## A141255.P2328142530286017125

`2*(A331756(n)+A331754(n+1))`
-/

namespace A141255.P2328142530286017125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A331756 n + A331754 (n + 1))

end

end A141255.P2328142530286017125

/-! ## A141255.P12794259847551490633

`A331773(2*(n+1))`
-/

namespace A141255.P12794259847551490633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331773 (2 * (n + 1))

end

end A141255.P12794259847551490633

/-!
# A141256: An Okazaki-like composition, see A126759.

The programs for A141256, there is no canonical definition to state claims against.
-/

/-! ## A141256.P14661627490158355366

`A292375(A313827(n²))`
-/

namespace A141256.P14661627490158355366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A313827 (n ^ 2)).toNat

end

end A141256.P14661627490158355366

/-! ## A141256.P5782231392243234044

`A292375(A314027(n²))`
-/

namespace A141256.P5782231392243234044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A314027 (n ^ 2)).toNat

end

end A141256.P5782231392243234044

/-! ## A141256.P18348526670208598854

`A292375(A314090(n²))`
-/

namespace A141256.P18348526670208598854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (A314090 (n ^ 2)).toNat

end

end A141256.P18348526670208598854

/-! ## A141256.P9984470042992030390

`A292375(A008706(n²))%A326709(n+1)`
-/

namespace A141256.P9984470042992030390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292375 (A008706 (n ^ 2)).toNat) (A326709 (n + 1))

end

end A141256.P9984470042992030390

/-! ## A141256.P7957701353022448940

`A243056(A008706(n)*A138125(n+1))`
-/

namespace A141256.P7957701353022448940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243056 (A008706 n * A138125 (n + 1)).toNat

end

end A141256.P7957701353022448940

/-!
# A141257: (1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2^5, 11, 2^2*3, 13, ...) transform in (1*2, 3*2, 2*5, 2*3, 7*2, 3*3, 2*2, 5*11, 2*2, 3*13, ...).

The programs for A141257, there is no canonical definition to state claims against.
-/

/-! ## A141257.P15980134609090844091

`A348477(2*(n+1))*A348477(2*n+1)`
-/

namespace A141257.P15980134609090844091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348477 (2 * (n + 1)) * A348477 (2 * n + 1)

end

end A141257.P15980134609090844091

/-!
# A141258: Inverse Mobius transform of the Carmichael lambda function.

The programs for A141258, there is no canonical definition to state claims against.
-/

/-! ## A141258.P17825308318767373439

`∑{d}[n+1, A002322(#)]`
-/

namespace A141258.P17825308318767373439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002322 d

end

end A141258.P17825308318767373439

/-! ## A141258.P7388881958218331904

`∑{d}[n+1, A263027(#)-1]`
-/

namespace A141258.P7388881958218331904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A263027 d - 1)

end

end A141258.P7388881958218331904

/-! ## A141258.P5532633592870994360

`∑{d}[n+1, #-A277127(#)]`
-/

namespace A141258.P5532633592870994360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A277127 d)

end

end A141258.P5532633592870994360

/-! ## A141258.P7046236712571366951

`1-∑{d}[n+1, A104194(#)]+n`
-/

namespace A141258.P7046236712571366951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A104194 d + (n : ℤ)

end

end A141258.P7046236712571366951

/-! ## A141258.P6654786196397800515

`∑{d}[n+1, A023443(A263027(#))]`
-/

namespace A141258.P6654786196397800515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023443 (A263027 d).toNat

end

end A141258.P6654786196397800515

/-! ## A141258.P12687964451278516709

`∑{d}[n+1, A023900(#)*A331314((n+1)/#)]`
-/

namespace A141258.P12687964451278516709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A331314 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A141258.P12687964451278516709

/-! ## A141258.P16173410833707776189

`∑{d}[n+1, A000005(#)*A369700((n+1)/#)]`
-/

namespace A141258.P16173410833707776189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A369700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A141258.P16173410833707776189

/-! ## A141258.P10528241181594711627

`∑{d}[n+1, A055615(#)*A365648((n+1)/#)]`
-/

namespace A141258.P10528241181594711627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A365648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A141258.P10528241181594711627

/-! ## A141258.P17905824835855530063

`∑{d}[n+1, A130054(#)*A369601((n+1)/#)]`
-/

namespace A141258.P17905824835855530063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A369601 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A141258.P17905824835855530063

/-!
# A141259: a(n) == {0,1,3,4,5,7,9,11} mod 12; n>0.

The programs for A141259, the canonical program `A141259.P16509890859027837500` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141259 has offset 1).

The definition of A141259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141259.P15904420889927529855

`comp[lcm(3, n)+1+n]+1`
-/

namespace A141259.P15904420889927529855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n + 1 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A141259.P15904420889927529855

namespace A141259

/-- `comp[lcm(3, n)+1+n]+1` -/
def P15904420889927529855.Spec : Prop :=
  ∀ n, (P15904420889927529855.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P16509890859027837500

`∑[and(2, (n+1)*∑[n])!]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A141259

/-- `∑[and(2, (n+1)*∑[n])!]` -/
def P16509890859027837500.Spec : Prop :=
  ∀ n, (P16509890859027837500.a n : ℤ) = A141259 (n + 1)

theorem P16509890859027837500.correct : P16509890859027837500.Spec := by
  intro n
  simp only [A141259, Nat.add_sub_cancel]

end A141259

/-! ## A141259.P913038764045136132

`∑[gcd(2, floor(((n+3)/2)²²))]`
-/

namespace A141259.P913038764045136132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊(((n + 3 : ℚ) / 2) ^ 2) ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141259.P913038764045136132

namespace A141259

/-- `∑[gcd(2, floor(((n+3)/2)²²))]` -/
def P913038764045136132.Spec : Prop :=
  ∀ n, (P913038764045136132.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P1523338309038318542

`comp[2*comp[∑[2*n%2+2]]]`
-/

namespace A141259.P1523338309038318542
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 2) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A141259.P1523338309038318542

namespace A141259

/-- `comp[2*comp[∑[2*n%2+2]]]` -/
def P1523338309038318542.Spec : Prop :=
  ∀ n, (P1523338309038318542.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P16858552160659338509

`∪[2*n+1, and(3*(n+1), -3)]`
-/

namespace A141259.P16858552160659338509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * (n + 1) : ℤ) (-3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141259.P16858552160659338509

namespace A141259

/-- `∪[2*n+1, and(3*(n+1), -3)]` -/
def P16858552160659338509.Spec : Prop :=
  ∀ n, (P16858552160659338509.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P16975849030509911697

`∑[∑[C(∑[n+2], 2)-1]%2+1]`
-/

namespace A141259.P16975849030509911697
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141259.P16975849030509911697

namespace A141259

/-- `∑[∑[C(∑[n+2], 2)-1]%2+1]` -/
def P16975849030509911697.Spec : Prop :=
  ∀ n, P16975849030509911697.a n = A141259 (n + 1)

end A141259

/-! ## A141259.P13211582728980426848

`∑[∑[floor((1-n)/4)+n]%2+1]`
-/

namespace A141259.P13211582728980426848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℤ) : ℚ) / 4⌋ + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141259.P13211582728980426848

namespace A141259

/-- `∑[∑[floor((1-n)/4)+n]%2+1]` -/
def P13211582728980426848.Spec : Prop :=
  ∀ n, P13211582728980426848.a n = A141259 (n + 1)

end A141259

/-! ## A141259.P8070993233159535937

`∪[or(2, n+1)+2*n, 2*n+1]`
-/

namespace A141259.P8070993233159535937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 1) + 2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A141259.P8070993233159535937

namespace A141259

/-- `∪[or(2, n+1)+2*n, 2*n+1]` -/
def P8070993233159535937.Spec : Prop :=
  ∀ n, (P8070993233159535937.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P14469485095071166230

`comp[2*comp[A047238(n+2)]]`
-/

namespace A141259.P14469485095071166230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A141259.P14469485095071166230

namespace A141259

/-- `comp[2*comp[A047238(n+2)]]` -/
def P14469485095071166230.Spec : Prop :=
  ∀ n, (P14469485095071166230.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P6429285114865730499

`comp[n*(4-A020639(n+1))]`
-/

namespace A141259.P6429285114865730499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 - A020639 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A141259.P6429285114865730499

namespace A141259

/-- `comp[n*(4-A020639(n+1))]` -/
def P6429285114865730499.Spec : Prop :=
  ∀ n, (P6429285114865730499.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P16769369404673492215

`∪[2*n+1, A112652(n+1)]`
-/

namespace A141259.P16769369404673492215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141259.P16769369404673492215

namespace A141259

/-- `∪[2*n+1, A112652(n+1)]` -/
def P16769369404673492215.Spec : Prop :=
  ∀ n, (P16769369404673492215.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P8492995714378155622

`∪[2*n+1, A083030(n+2)]`
-/

namespace A141259.P8492995714378155622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083030 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141259.P8492995714378155622

namespace A141259

/-- `∪[2*n+1, A083030(n+2)]` -/
def P8492995714378155622.Spec : Prop :=
  ∀ n, (P8492995714378155622.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P13300539588256043486

`∪[2*n+1, A319280(n+2)]`
-/

namespace A141259.P13300539588256043486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319280 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141259.P13300539588256043486

namespace A141259

/-- `∪[2*n+1, A319280(n+2)]` -/
def P13300539588256043486.Spec : Prop :=
  ∀ n, (P13300539588256043486.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P1266917575871093357

`comp[2*comp[A269360(2*n+1)]]`
-/

namespace A141259.P1266917575871093357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A141259.P1266917575871093357

namespace A141259

/-- `comp[2*comp[A269360(2*n+1)]]` -/
def P1266917575871093357.Spec : Prop :=
  ∀ n, (P1266917575871093357.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P306285439659259525

`comp[2*comp[Δ[A317186(n)]+n+1]]`
-/

namespace A141259.P306285439659259525
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A141259.P306285439659259525

namespace A141259

/-- `comp[2*comp[Δ[A317186(n)]+n+1]]` -/
def P306285439659259525.Spec : Prop :=
  ∀ n, (P306285439659259525.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P11069170684361139374

`∪[2*n+1, A080458(2*n+1)]`
-/

namespace A141259.P11069170684361139374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080458 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141259.P11069170684361139374

namespace A141259

/-- `∪[2*n+1, A080458(2*n+1)]` -/
def P11069170684361139374.Spec : Prop :=
  ∀ n, (P11069170684361139374.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P5331477697814293790

`∪[2*n+1, A140205(2*n+1)]`
-/

namespace A141259.P5331477697814293790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140205 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141259.P5331477697814293790

namespace A141259

/-- `∪[2*n+1, A140205(2*n+1)]` -/
def P5331477697814293790.Spec : Prop :=
  ∀ n, (P5331477697814293790.a n : ℤ) = A141259 (n + 1)

end A141259

/-! ## A141259.P7176440872610604140

`∑[A000041(and(2, a(n-2)-(n+2)))]` with `a(0)=1, a(1)=2`
-/

namespace A141259.P7176440872610604140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000041 (Int.land 2 (f1 (n - 2) - (n + 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141259.P7176440872610604140

namespace A141259

/-- `∑[A000041(and(2, a(n-2)-(n+2)))]` -/
def P7176440872610604140.Spec : Prop :=
  ∀ n, P7176440872610604140.a n = A141259 (n + 1)

end A141259

/-! ## A141259.P156851743726950364

`filter[A047252(n+2), A152822(#)]`
-/

namespace A141259.P156851743726950364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A141259.P156851743726950364

namespace A141259

/-- `filter[A047252(n+2), A152822(#)]` -/
def P156851743726950364.Spec : Prop :=
  ∀ n, P156851743726950364.a n = A141259 (n + 1)

end A141259

/-! ## A141259.P16716885267353601721

`comp[2*comp[A002517(2*n+1)]]`
-/

namespace A141259.P16716885267353601721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A141259.P16716885267353601721

namespace A141259

/-- `comp[2*comp[A002517(2*n+1)]]` -/
def P16716885267353601721.Spec : Prop :=
  ∀ n, (P16716885267353601721.a n : ℤ) = A141259 (n + 1)

end A141259

/-!
# A141260: a(n) = 1 if n == {0,1,3,4,5,7,9,11} mod 12, otherwise a(n) = 0.

The programs for A141260, the canonical program `A141260.P17744480322454022203` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141260 has offset 1).

The definition of A141260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141260.P17744480322454022203

`ceil(sin(gcd(12, 1-n)))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A141260

/-- `ceil(sin(gcd(12, 1-n)))` -/
def P17744480322454022203.Spec : Prop :=
  ∀ n, P17744480322454022203.a n = A141260 (n + 1)

theorem P17744480322454022203.correct : P17744480322454022203.Spec := by
  intro n
  simp only [A141260, Nat.add_sub_cancel]

end A141260

/-!
# A141261: (1, 2, 3, 2^2, 5, 2*3, 7, 2^3, 3^2, 2*5, 11, 2^2*3, 13,..) transform in (1+2, 3+2, 2+5, 2+3, 7+2, 3+3, 2+2, 5+11, 2+2, 3+13,..).

The programs for A141261, there is no canonical definition to state claims against.
-/

/-! ## A141261.P8105498011372197840

`A141269(n+2)-Δ[A348477(2*n+1)]`
-/

namespace A141261.P8105498011372197840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348477 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141269 (n + 2) - (f1 (n + 1) - f1 n)

end

end A141261.P8105498011372197840

/-! ## A141261.P1582132490897596813

`A348477(2*(n+1))+A348477(2*n+1)`
-/

namespace A141261.P1582132490897596813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348477 (2 * (n + 1)) + A348477 (2 * n + 1)

end

end A141261.P1582132490897596813

/-! ## A141261.P6741279211306722860

`A063655(A141257(n+1))`
-/

namespace A141261.P6741279211306722860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A141257 (n + 1)).toNat

end

end A141261.P6741279211306722860

/-!
# A141262: Mancala numbers that are prime numbers.

The programs for A141262, there is no canonical definition to state claims against.
-/

/-! ## A141262.P9859240516263663298

`p?[A007952(n)]`
-/

namespace A141262.P9859240516263663298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141262.P9859240516263663298

/-! ## A141262.P2513308720219238671

`p?[∑[A028913(n)]]`
-/

namespace A141262.P2513308720219238671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141262.P2513308720219238671

/-! ## A141262.P361607761927655817

`p?[A002491(n+1)-1]`
-/

namespace A141262.P361607761927655817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002491 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141262.P361607761927655817

/-! ## A141262.P2821220873238944558

`p?[A108696(n+1)-2]`
-/

namespace A141262.P2821220873238944558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108696 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141262.P2821220873238944558

/-! ## A141262.P10942082102613513296

`p?[2*A104738(n+1)-1]`
-/

namespace A141262.P10942082102613513296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104738 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141262.P10942082102613513296

/-! ## A141262.P7606065193690227798

`∩[A045309(n+1), A007952(n)]`
-/

namespace A141262.P7606065193690227798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P7606065193690227798

/-! ## A141262.P17923382163778707448

`∩[A045410(n+1), A007952(n)]`
-/

namespace A141262.P17923382163778707448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P17923382163778707448

/-! ## A141262.P12042489695350066899

`∩[A049596(n+1), A007952(n)]`
-/

namespace A141262.P12042489695350066899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P12042489695350066899

/-! ## A141262.P16636350889272542070

`∩[A164319(n+1), A007952(n)]`
-/

namespace A141262.P16636350889272542070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P16636350889272542070

/-! ## A141262.P17104283077180247282

`∩[A040028(n+1), A007952(n)]`
-/

namespace A141262.P17104283077180247282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P17104283077180247282

/-! ## A141262.P12097846671594882553

`∩[A040036(n+1), A007952(n)]`
-/

namespace A141262.P12097846671594882553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P12097846671594882553

/-! ## A141262.P4371366529114027218

`∩[A040044(n+1), A007952(n)]`
-/

namespace A141262.P4371366529114027218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P4371366529114027218

/-! ## A141262.P13135720996766231524

`∩[A040046(n+1), A007952(n)]`
-/

namespace A141262.P13135720996766231524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P13135720996766231524

/-! ## A141262.P4220502527013792252

`∩[A040049(n+1), A007952(n)]`
-/

namespace A141262.P4220502527013792252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P4220502527013792252

/-! ## A141262.P11031478555037302878

`∩[A040054(n+1), A007952(n)]`
-/

namespace A141262.P11031478555037302878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P11031478555037302878

/-! ## A141262.P8538666896632184858

`∩[A040060(n+1), A007952(n)]`
-/

namespace A141262.P8538666896632184858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P8538666896632184858

/-! ## A141262.P17639111947392339671

`∩[A040062(n+1), A007952(n)]`
-/

namespace A141262.P17639111947392339671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P17639111947392339671

/-! ## A141262.P3968397518932207857

`∩[A040065(n+1), A007952(n)]`
-/

namespace A141262.P3968397518932207857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P3968397518932207857

/-! ## A141262.P963924883465651139

`∩[A040078(n+1), A007952(n)]`
-/

namespace A141262.P963924883465651139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P963924883465651139

/-! ## A141262.P12607706347058071139

`∩[A040083(n+1), A007952(n)]`
-/

namespace A141262.P12607706347058071139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141262.P12607706347058071139

/-!
# A141263: Lesser of a prime/emirp pair.

The programs for A141263, there is no canonical definition to state claims against.
-/

/-! ## A141263.P16925448823984704129

`∪[A002385(n+1), A109308(n+1)]`
-/

namespace A141263.P16925448823984704129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A141263.P16925448823984704129

/-! ## A141263.P1204453637802117829

`∩[A007500(n+1), A131058(n+1)]`
-/

namespace A141263.P1204453637802117829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141263.P1204453637802117829

/-! ## A141263.P18045307639715740738

`record[A020639(A133019(n+1))]`
-/

namespace A141263.P18045307639715740738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A133019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141263.P18045307639715740738

/-! ## A141263.P16616228105321846492

`record[A020639((A006093(n+1)+1)*A004087(n+1))]`
-/

namespace A141263.P16616228105321846492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((A006093 (n + 1) + 1) * A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141263.P16616228105321846492

/-!
# A141264: Number of divisors of m^2 where m is the smallest number with exactly n divisors.

The programs for A141264, there is no canonical definition to state claims against.
-/

/-! ## A141264.P17314201870338213730

`∏{e}[A005179(n+1), A005408(#)]`
-/

namespace A141264.P17314201870338213730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005408 (Nat.factorization (f1 n).natAbs p)

end

end A141264.P17314201870338213730

/-! ## A141264.P3527862479567407970

`∏{e}[A005179(n+1), A144396(#)]`
-/

namespace A141264.P3527862479567407970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A144396 (Nat.factorization (f1 n).natAbs p)

end

end A141264.P3527862479567407970

/-! ## A141264.P13186457929038315426

`∏{e}[sqrt(A130279(n+1)), A005408(#)]`
-/

namespace A141264.P13186457929038315426
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130279 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A005408 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A141264.P13186457929038315426

/-! ## A141264.P13823472415153120752

`∏{e}[sqrt(A130279(n+1)), A144396(#)]`
-/

namespace A141264.P13823472415153120752
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130279 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A144396 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A141264.P13823472415153120752

/-! ## A141264.P2133329163601003092

`∏{e}[A081532(∑[n+1]), A005408(#)]`
-/

namespace A141264.P2133329163601003092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005408 (Nat.factorization (f1 n).natAbs p)

end

end A141264.P2133329163601003092

/-!
# A141267: Concatenate first n double factorials in reverse order.

The programs for A141267, there is no canonical definition to state claims against.
-/

/-! ## A141267.P13105067428167685981

`∑[(A333627(A015521(n))+1)*10^n]`
-/

namespace A141267.P13105067428167685981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A333627 (A015521 n).toNat + 1) * (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141267.P13105067428167685981

/-!
# A141268: Number of phylogenetic rooted trees with n unlabeled objects.

The programs for A141268, there is no canonical definition to state claims against.
-/

/-! ## A141268.P14879634852088364617

`A330762(∑[n]+1)`
-/

namespace A141268.P14879634852088364617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330762 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A141268.P14879634852088364617

/-! ## A141268.P1914004235951922148

`record[gcd(A330762(n+1), A339780(n))]`
-/

namespace A141268.P1914004235951922148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330762 (n + 1)) (A339780 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141268.P1914004235951922148

/-! ## A141268.P11508684889762779615

`record[∏{p}[n, A318849(#)]]`
-/

namespace A141268.P11508684889762779615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A318849 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141268.P11508684889762779615

/-! ## A141268.P96226517449722909

`A318849(p?[comp[n²]])`
-/

namespace A141268.P96226517449722909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318849 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A141268.P96226517449722909

/-! ## A141268.P8907185820591723724

`record[C(A318849(n+1), ∑{d}[n+1, (#%(n+1))^5])]`
-/

namespace A141268.P8907185820591723724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318849 (n + 1)).toNat (∑ d ∈ Nat.divisors (f2 n), (d % (n + 1)) ^ 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141268.P8907185820591723724

/-!
# A141271: Number of partitions of n into nonzero Mancala numbers (A007952).

The programs for A141271, there is no canonical definition to state claims against.
-/

/-! ## A141271.P11564513574196462276

`A157684(A027584(n+1)+1)`
-/

namespace A141271.P11564513574196462276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (A027584 (n + 1) + 1).toNat

end

end A141271.P11564513574196462276

/-! ## A141271.P10872444794765094972

`A029376(lt[A029381(n), A029373(n)])`
-/

namespace A141271.P10872444794765094972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A141271.P10872444794765094972

/-! ## A141271.P11992926038291843989

`A029376(lt[A029383(n), A029371(n)])`
-/

namespace A141271.P11992926038291843989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A141271.P11992926038291843989

/-! ## A141271.P3601062037794668389

`A029376(lt[A029359(n), A029357(n)]-2)`
-/

namespace A141271.P3601062037794668389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 2)

end

end A141271.P3601062037794668389

/-! ## A141271.P15481506552706265068

`A196176(A361394(n))`
-/

namespace A141271.P15481506552706265068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196176 (A361394 n).toNat

end

end A141271.P15481506552706265068

/-!
# A141272: Number of partitions of n into distinct nonzero Mancala numbers (A007952).

The programs for A141272, there is no canonical definition to state claims against.
-/

/-! ## A141272.P16513793038415171877

`A000120(A338718(A250277(n+1))-1)`
-/

namespace A141272.P16513793038415171877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A338718 (A250277 (n + 1)).toNat - 1).toNat

end

end A141272.P16513793038415171877

/-! ## A141272.P1827403903646570511

`A081603(A133404(n+1)+A001037(n))`
-/

namespace A141272.P1827403903646570511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A133404 (n + 1) + A001037 n).toNat

end

end A141272.P1827403903646570511

/-! ## A141272.P11155556297662013114

`A139351(A002260(A036069(n))+n)`
-/

namespace A141272.P11155556297662013114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A002260 (A036069 n).toNat + (n : ℤ)).toNat

end

end A141272.P11155556297662013114

/-! ## A141272.P10290130290173328636

`A276837(A189838(n+1)%A045572(n+1))`
-/

namespace A141272.P10290130290173328636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (Int.tmod (A189838 (n + 1)) (A045572 (n + 1))).toNat

end

end A141272.P10290130290173328636

/-! ## A141272.P4271045072437733441

`A287356(A050903(n+1))`
-/

namespace A141272.P4271045072437733441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287356 (A050903 (n + 1)).toNat

end

end A141272.P4271045072437733441

/-!
# A141274: Composite numbers k such that k+1 is prime and the index in the composites is also prime.

The programs for A141274, the canonical program `A141274.P557557382975155527` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141274 has offset 1).

The definition of A141274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141274.P557557382975155527

`A018252(p?[A014692(n+1)-3]+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A141274

/-- `A018252(p?[A014692(n+1)-3]+2)` -/
def P557557382975155527.Spec : Prop :=
  ∀ n, P557557382975155527.a n = A141274 (n + 1)

theorem P557557382975155527.correct : P557557382975155527.Spec := by
  intro n
  simp only [A141274, Nat.add_sub_cancel]

end A141274

/-! ## A141274.P17034169558637082378

`A141468(p?[A014692(n+1)-3]+3)`
-/

namespace A141274.P17034169558637082378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3).toNat

end

end A141274.P17034169558637082378

namespace A141274

/-- `A141468(p?[A014692(n+1)-3]+3)` -/
def P17034169558637082378.Spec : Prop :=
  ∀ n, P17034169558637082378.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P16544498891301199974

`A018252(p?[A173064(n+3)-n]+2)`
-/

namespace A141274.P16544498891301199974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 3) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A141274.P16544498891301199974

namespace A141274

/-- `A018252(p?[A173064(n+3)-n]+2)` -/
def P16544498891301199974.Spec : Prop :=
  ∀ n, P16544498891301199974.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P16173447010717848045

`p?[A018252(A000040(n+1)+2)+1]-1`
-/

namespace A141274.P16173447010717848045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000040 (n + 1) + 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141274.P16173447010717848045

namespace A141274

/-- `p?[A018252(A000040(n+1)+2)+1]-1` -/
def P16173447010717848045.Spec : Prop :=
  ∀ n, P16173447010717848045.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P5534323926705777903

`A141468(p?[A000040(n+1)-(n+3)]+3)`
-/

namespace A141274.P5534323926705777903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3).toNat

end

end A141274.P5534323926705777903

namespace A141274

/-- `A141468(p?[A000040(n+1)-(n+3)]+3)` -/
def P5534323926705777903.Spec : Prop :=
  ∀ n, P5534323926705777903.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P13431031074482203522

`p?[A079696(A008864(n+1))]-1`
-/

namespace A141274.P13431031074482203522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141274.P13431031074482203522

namespace A141274

/-- `p?[A079696(A008864(n+1))]-1` -/
def P13431031074482203522.Spec : Prop :=
  ∀ n, P13431031074482203522.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P6975138012476055412

`p?[A072022(A052147(n+1))]-1`
-/

namespace A141274.P6975138012476055412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072022 (A052147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A141274.P6975138012476055412

namespace A141274

/-- `p?[A072022(A052147(n+1))]-1` -/
def P6975138012476055412.Spec : Prop :=
  ∀ n, P6975138012476055412.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P12630641587481711017

`A176423(p?[A014689(n+1)-2])`
-/

namespace A141274.P12630641587481711017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141274.P12630641587481711017

namespace A141274

/-- `A176423(p?[A014689(n+1)-2])` -/
def P12630641587481711017.Spec : Prop :=
  ∀ n, P12630641587481711017.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P7339411384235693423

`A176423(p?[A014692(n+1)-3])`
-/

namespace A141274.P7339411384235693423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141274.P7339411384235693423

namespace A141274

/-- `A176423(p?[A014692(n+1)-3])` -/
def P7339411384235693423.Spec : Prop :=
  ∀ n, P7339411384235693423.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P8108729292869317553

`A176423(p?[A086304(n+1)-n])`
-/

namespace A141274.P8108729292869317553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141274.P8108729292869317553

namespace A141274

/-- `A176423(p?[A086304(n+1)-n])` -/
def P8108729292869317553.Spec : Prop :=
  ∀ n, P8108729292869317553.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P15435757311681052645

`A176423(p?[A173064(n+3)-n])`
-/

namespace A141274.P15435757311681052645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 3) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141274.P15435757311681052645

namespace A141274

/-- `A176423(p?[A173064(n+3)-n])` -/
def P15435757311681052645.Spec : Prop :=
  ∀ n, P15435757311681052645.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P1194303002857815745

`A176423(p?[A040976(n+1)-(n+1)])`
-/

namespace A141274.P1194303002857815745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141274.P1194303002857815745

namespace A141274

/-- `A176423(p?[A040976(n+1)-(n+1)])` -/
def P1194303002857815745.Spec : Prop :=
  ∀ n, P1194303002857815745.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P9300299302443990299

`A176423(p?[A068499(n+1)-(n+1)])`
-/

namespace A141274.P9300299302443990299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141274.P9300299302443990299

namespace A141274

/-- `A176423(p?[A068499(n+1)-(n+1)])` -/
def P9300299302443990299.Spec : Prop :=
  ∀ n, P9300299302443990299.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P270220279128648609

`A176423(p?[A006093(n+1)-(n+2)])`
-/

namespace A141274.P270220279128648609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141274.P270220279128648609

namespace A141274

/-- `A176423(p?[A006093(n+1)-(n+2)])` -/
def P270220279128648609.Spec : Prop :=
  ∀ n, P270220279128648609.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P10433587559907620723

`A176423(p?[A008578(n+1)-(n+2)])`
-/

namespace A141274.P10433587559907620723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141274.P10433587559907620723

namespace A141274

/-- `A176423(p?[A008578(n+1)-(n+2)])` -/
def P10433587559907620723.Spec : Prop :=
  ∀ n, P10433587559907620723.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P10806894223409607747

`A176423(or(1, p?[A000040(n+1)-(n+3)]))`
-/

namespace A141274.P10806894223409607747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A141274.P10806894223409607747

namespace A141274

/-- `A176423(or(1, p?[A000040(n+1)-(n+3)]))` -/
def P10806894223409607747.Spec : Prop :=
  ∀ n, P10806894223409607747.a n = A141274 (n + 1)

end A141274

/-! ## A141274.P9214777316563457357

`A004442(p?[A079696(A008864(n+1))])`
-/

namespace A141274.P9214777316563457357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A141274.P9214777316563457357

namespace A141274

/-- `A004442(p?[A079696(A008864(n+1))])` -/
def P9214777316563457357.Spec : Prop :=
  ∀ n, P9214777316563457357.a n = A141274 (n + 1)

end A141274

/-!
# A141275: Composite indices associated with A141274.

The programs for A141275, there is no canonical definition to state claims against.
-/

/-! ## A141275.P5398903500974475663

`p?[∑[A135732(n+2)]]`
-/

namespace A141275.P5398903500974475663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P5398903500974475663

/-! ## A141275.P8468809400078234943

`p?[∑[A176246(n+2)]]`
-/

namespace A141275.P8468809400078234943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P8468809400078234943

/-! ## A141275.P11688617670138198725

`p?[∑[A046933(n+3)]]`
-/

namespace A141275.P11688617670138198725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P11688617670138198725

/-! ## A141275.P5914647517536906906

`p?[A065890(n+1)-1]`
-/

namespace A141275.P5914647517536906906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P5914647517536906906

/-! ## A141275.P2684149029935760389

`p?[A162177(n+1)-1]`
-/

namespace A141275.P2684149029935760389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P2684149029935760389

/-! ## A141275.P340935239696655635

`p?[A014689(n+1)-2]`
-/

namespace A141275.P340935239696655635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P340935239696655635

/-! ## A141275.P11384866147745788959

`p?[A073170(n+1)-2]`
-/

namespace A141275.P11384866147745788959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073170 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P11384866147745788959

/-! ## A141275.P10496006235626226912

`p?[A014692(n+1)-3]`
-/

namespace A141275.P10496006235626226912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P10496006235626226912

/-! ## A141275.P14158216924497766601

`p?[A086304(n+1)-n]`
-/

namespace A141275.P14158216924497766601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P14158216924497766601

/-! ## A141275.P17763231467910305652

`p?[A086801(n+1)-n]`
-/

namespace A141275.P17763231467910305652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141275.P17763231467910305652

/-!
# A141276: a(n) = A338038(A002808(n)).

The programs for A141276, the canonical program `A141276.P6145773955166739299` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141276 has offset 1).

The definition of A141276 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A338038, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141276.P6145773955166739299

`A338038(A002808(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A141276

/-- `A338038(A002808(n+1))` -/
def P6145773955166739299.Spec : Prop :=
  ∀ n, P6145773955166739299.a n = A141276 (n + 1)

theorem P6145773955166739299.correct : P6145773955166739299.Spec := by
  intro n
  simp only [A141276, Nat.add_sub_cancel]

end A141276

/-! ## A141276.P16807571287131455820

`A338038(Δ[A053767(n)])`
-/

namespace A141276.P16807571287131455820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (f1 (n + 1) - f1 n).toNat

end

end A141276.P16807571287131455820

namespace A141276

/-- `A338038(Δ[A053767(n)])` -/
def P16807571287131455820.Spec : Prop :=
  ∀ n, P16807571287131455820.a n = A141276 (n + 1)

end A141276

/-! ## A141276.P1659025837070879547

`A338038(A018252(n+2))`
-/

namespace A141276.P1659025837070879547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (A018252 (n + 2)).toNat

end

end A141276.P1659025837070879547

namespace A141276

/-- `A338038(A018252(n+2))` -/
def P1659025837070879547.Spec : Prop :=
  ∀ n, P1659025837070879547.a n = A141276 (n + 1)

end A141276

/-! ## A141276.P4381478016884504427

`A338038(A141468(n+3))`
-/

namespace A141276.P4381478016884504427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (A141468 (n + 3)).toNat

end

end A141276.P4381478016884504427

namespace A141276

/-- `A338038(A141468(n+3))` -/
def P4381478016884504427.Spec : Prop :=
  ∀ n, P4381478016884504427.a n = A141276 (n + 1)

end A141276

/-! ## A141276.P13872683350399091956

`A338038(lt[0, A082023(n)])`
-/

namespace A141276.P13872683350399091956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A141276.P13872683350399091956

namespace A141276

/-- `A338038(lt[0, A082023(n)])` -/
def P13872683350399091956.Spec : Prop :=
  ∀ n, P13872683350399091956.a n = A141276 (n + 1)

end A141276

/-! ## A141276.P6629092191699341643

`A338038(lt[1, A107286(n)])`
-/

namespace A141276.P6629092191699341643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A141276.P6629092191699341643

namespace A141276

/-- `A338038(lt[1, A107286(n)])` -/
def P6629092191699341643.Spec : Prop :=
  ∀ n, P6629092191699341643.a n = A141276 (n + 1)

end A141276

/-! ## A141276.P1234308740856539973

`A338038(comp[C(A020639(n+1), n)])`
-/

namespace A141276.P1234308740856539973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A141276.P1234308740856539973

namespace A141276

/-- `A338038(comp[C(A020639(n+1), n)])` -/
def P1234308740856539973.Spec : Prop :=
  ∀ n, P1234308740856539973.a n = A141276 (n + 1)

end A141276

/-! ## A141276.P11539187117046112334

`A338038(lt[1, A001222(n+1)]+1)`
-/

namespace A141276.P11539187117046112334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A141276.P11539187117046112334

namespace A141276

/-- `A338038(lt[1, A001222(n+1)]+1)` -/
def P11539187117046112334.Spec : Prop :=
  ∀ n, P11539187117046112334.a n = A141276 (n + 1)

end A141276

/-! ## A141276.P13765727463798370555

`A338038(lt[2, A000005(n+1)]+1)`
-/

namespace A141276.P13765727463798370555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A141276.P13765727463798370555

namespace A141276

/-- `A338038(lt[2, A000005(n+1)]+1)` -/
def P13765727463798370555.Spec : Prop :=
  ∀ n, P13765727463798370555.a n = A141276 (n + 1)

end A141276

/-! ## A141276.P16433247088621354722

`A338038(lt[A000010(n+1), n]+1)`
-/

namespace A141276.P16433247088621354722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338038 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A141276.P16433247088621354722

namespace A141276

/-- `A338038(lt[A000010(n+1), n]+1)` -/
def P16433247088621354722.Spec : Prop :=
  ∀ n, P16433247088621354722.a n = A141276 (n + 1)

end A141276

/-!
# A141277: a(n) = k(n) mod ((sum of prime factors of k(n))+1), where k(n) = n-th composite.

The programs for A141277, there is no canonical definition to state claims against.
-/

/-! ## A141277.P10368933559272054227

`A002808(n+1)%(A046343(n+1)+1)`
-/

namespace A141277.P10368933559272054227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (A046343 (n + 1) + 1)

end

end A141277.P10368933559272054227

/-! ## A141277.P12476856333731439611

`(comp[p?[2*n+1]-3]+3)%A036288(A018252(n+2))`
-/

namespace A141277.P12476856333731439611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3 : ℤ) (A036288 (A018252 (n + 2)).toNat)

end

end A141277.P12476856333731439611

/-! ## A141277.P14963513424367162285

`A018252(n+2)%A036288(Δ[A053767(n)])`
-/

namespace A141277.P14963513424367162285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2)) (A036288 (f1 (n + 1) - f1 n).toNat)

end

end A141277.P14963513424367162285

/-! ## A141277.P17119652684962024336

`comp[A351078(n)]%A036288(A018252(n+2))`
-/

namespace A141277.P17119652684962024336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A036288 (A018252 (n + 2)).toNat)

end

end A141277.P17119652684962024336

/-! ## A141277.P15524464460311226317

`A002808(n+1)%A036288(A002808(n+1))`
-/

namespace A141277.P15524464460311226317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (A036288 (A002808 (n + 1)).toNat)

end

end A141277.P15524464460311226317

/-! ## A141277.P17709671204345152714

`comp[C(A006530(n+1), n)]%A036288(comp[C(A006530(n+1), n)])`
-/

namespace A141277.P17709671204345152714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A036288 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A141277.P17709671204345152714

/-! ## A141277.P14450191690656098027

`comp[C(A014963(n+1), n)]%A036288(comp[C(A014963(n+1), n)])`
-/

namespace A141277.P14450191690656098027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A036288 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A141277.P14450191690656098027

/-! ## A141277.P11725737567633328708

`comp[C(A020639(n+1), n)]%A036288(comp[C(A020639(n+1), n)])`
-/

namespace A141277.P11725737567633328708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A036288 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

end

end A141277.P11725737567633328708

/-!
# A141278: Clusters of consecutive composites in A141089.

The programs for A141278, there is no canonical definition to state claims against.
-/

/-! ## A141278.P18276144652893914504

`A195172(eq[A007953(n), A238342(n)])`
-/

namespace A141278.P18276144652893914504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A141278.P18276144652893914504

/-!
# A141279: Primes p such that p - 6^2, p - 6, p + 6 and p + 6^2 are also primes.

The programs for A141279, there is no canonical definition to state claims against.
-/

/-! ## A141279.P5052635075594541039

`A127956(A004087(n+1)+2)`
-/

namespace A141279.P5052635075594541039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127956 (A004087 (n + 1) + 2).toNat

end

end A141279.P5052635075594541039

/-! ## A141279.P11621517919887074526

`A127956(A085300(n+1)+2)`
-/

namespace A141279.P11621517919887074526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127956 (A085300 (n + 1) + 2).toNat

end

end A141279.P11621517919887074526

/-!
# A141283: Record values for number of divisors from A084260.

The programs for A141283, there is no canonical definition to state claims against.
-/

/-! ## A141283.P5439228172278481687

`record[A076982(A123000(n+1))]`
-/

namespace A141283.P5439228172278481687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (A123000 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141283.P5439228172278481687

/-! ## A141283.P17070193605921707015

`record[A076982(A286727(n+1))]`
-/

namespace A141283.P17070193605921707015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (A286727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141283.P17070193605921707015

/-!
# A141284: a(n) = (p_max - 1)*...*p*...*(p_min + 2), where p_max*...*p*...*p_min = k(n) = n-th composite.

The programs for A141284, there is no canonical definition to state claims against.
-/

/-! ## A141284.P10207942318755028916

`A002808(n+1)*(A052369(n+1)-1)*(A056608(n+1)+2)/(A052369(n+1)*A056608(n+1))`
-/

namespace A141284.P10207942318755028916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) * (A052369 (n + 1) - 1) * (A056608 (n + 1) + 2) : ℚ) / (A052369 (n + 1) * A056608 (n + 1) : ℚ)

end

end A141284.P10207942318755028916

/-!
# A141285: Largest part of the n-th partition of j in the list of colexicographically ordered partitions of j, if 1 <= n <= A000041(j).

The programs for A141285, the canonical program `A141285.P8203282120832387629` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141285 has offset 1).

The definition of A141285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228354, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141285.P8203282120832387629

`A001511(A228354(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A141285

/-- `A001511(A228354(n+1))` -/
def P8203282120832387629.Spec : Prop :=
  ∀ n, P8203282120832387629.a n = A141285 (n + 1)

theorem P8203282120832387629.correct : P8203282120832387629.Spec := by
  intro n
  simp only [A141285, Nat.add_sub_cancel]

end A141285

/-! ## A141285.P14109333397254872777

`val(A194602(n)+1, 2)+1`
-/

namespace A141285.P14109333397254872777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194602 n + 1).toNat 2 + 1

end

end A141285.P14109333397254872777

namespace A141285

/-- `val(A194602(n)+1, 2)+1` -/
def P14109333397254872777.Spec : Prop :=
  ∀ n, (P14109333397254872777.a n : ℤ) = A141285 (n + 1)

end A141285

/-! ## A141285.P13996333391583482343

`A194549(n+1)+A194548(n+1)`
-/

namespace A141285.P13996333391583482343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194549 (n + 1) + A194548 (n + 1)

end

end A141285.P13996333391583482343

namespace A141285

/-- `A194549(n+1)+A194548(n+1)` -/
def P13996333391583482343.Spec : Prop :=
  ∀ n, P13996333391583482343.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P16062884801649708586

`A186114(∑[n+1])`
-/

namespace A141285.P16062884801649708586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186114 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141285.P16062884801649708586

namespace A141285

/-- `A186114(∑[n+1])` -/
def P16062884801649708586.Spec : Prop :=
  ∀ n, P16062884801649708586.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P10144281073574484998

`A193870(∑[n]+1)`
-/

namespace A141285.P10144281073574484998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A141285.P10144281073574484998

namespace A141285

/-- `A193870(∑[n]+1)` -/
def P10144281073574484998.Spec : Prop :=
  ∀ n, P10144281073574484998.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P8284093440419616501

`A193870(A000124(n))%21`
-/

namespace A141285.P8284093440419616501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193870 (A000124 n).toNat) 21

end

end A141285.P8284093440419616501

namespace A141285

/-- `A193870(A000124(n))%21` -/
def P8284093440419616501.Spec : Prop :=
  ∀ n, P8284093440419616501.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P6415144535292669914

`A089309(A194602(n))+1`
-/

namespace A141285.P6415144535292669914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A194602 n).toNat + 1

end

end A141285.P6415144535292669914

namespace A141285

/-- `A089309(A194602(n))+1` -/
def P6415144535292669914.Spec : Prop :=
  ∀ n, P6415144535292669914.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P17663991793141705111

`A001511(A194602(n)+1)`
-/

namespace A141285.P17663991793141705111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A194602 n + 1).toNat

end

end A141285.P17663991793141705111

namespace A141285

/-- `A001511(A194602(n)+1)` -/
def P17663991793141705111.Spec : Prop :=
  ∀ n, P17663991793141705111.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P15560091988566104567

`A007814(A194602(n)+1)+1`
-/

namespace A141285.P15560091988566104567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A194602 n + 1).toNat + 1

end

end A141285.P15560091988566104567

namespace A141285

/-- `A007814(A194602(n)+1)+1` -/
def P15560091988566104567.Spec : Prop :=
  ∀ n, P15560091988566104567.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P10373248640487020240

`A067029(A194602(n)+1)+1`
-/

namespace A141285.P10373248640487020240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A194602 n + 1).toNat + 1

end

end A141285.P10373248640487020240

namespace A141285

/-- `A067029(A194602(n)+1)+1` -/
def P10373248640487020240.Spec : Prop :=
  ∀ n, P10373248640487020240.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P4599104796272088211

`A087117(A194602(n)+1)+1`
-/

namespace A141285.P4599104796272088211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A194602 n + 1).toNat + 1

end

end A141285.P4599104796272088211

namespace A141285

/-- `A087117(A194602(n)+1)+1` -/
def P4599104796272088211.Spec : Prop :=
  ∀ n, P4599104796272088211.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P8384528073118537148

`A285099(A194602(n)+2)+1`
-/

namespace A141285.P8384528073118537148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A194602 n + 2).toNat + 1

end

end A141285.P8384528073118537148

namespace A141285

/-- `A285099(A194602(n)+2)+1` -/
def P8384528073118537148.Spec : Prop :=
  ∀ n, P8384528073118537148.a n = A141285 (n + 1)

end A141285

/-! ## A141285.P15020398798129149855

`A000120(eq[A000120(n), A055941(n)]+1)`
-/

namespace A141285.P15020398798129149855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A141285.P15020398798129149855

namespace A141285

/-- `A000120(eq[A000120(n), A055941(n)]+1)` -/
def P15020398798129149855.Spec : Prop :=
  ∀ n, P15020398798129149855.a n = A141285 (n + 1)

end A141285

/-!
# A141286: a(n) = the smallest positive multiple of n such that a(n) is divisible by A001222(a(n)), where A001222(m) is the sum of the exponents in the prime factorization of m.

The programs for A141286, there is no canonical definition to state claims against.
-/

/-! ## A141286.P14866608171995947837

`(n+1)*A000034(A289384(n+1))`
-/

namespace A141286.P14866608171995947837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000034 (A289384 (n + 1)).toNat

end

end A141286.P14866608171995947837

/-!
# A141287: Years in which there are five Fridays in the month of February.

The programs for A141287, there is no canonical definition to state claims against.
-/

/-! ## A141287.P2971318991593690111

`A224947(n+7)`
-/

namespace A141287.P2971318991593690111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224947 (n + 7)

end

end A141287.P2971318991593690111

/-! ## A141287.P5372907346273982217

`A143994(n+1)+A040015(A175161(n))`
-/

namespace A141287.P5372907346273982217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143994 (n + 1) + A040015 (A175161 n).toNat

end

end A141287.P5372907346273982217

/-! ## A141287.P11356410453129934934

`A143994(n+1)+A000005(A087788(n+1))`
-/

namespace A141287.P11356410453129934934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143994 (n + 1) + A000005 (A087788 (n + 1)).toNat

end

end A141287.P11356410453129934934

/-! ## A141287.P18376988905395456115

`A119406(n+1)+A010685(A250133(n+1))`
-/

namespace A141287.P18376988905395456115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119406 (n + 1) + A010685 (A250133 (n + 1)).toNat

end

end A141287.P18376988905395456115

/-! ## A141287.P4449421663186580867

`A119406(n+1)+A001316(A003945(n+4))`
-/

namespace A141287.P4449421663186580867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119406 (n + 1) + A001316 (A003945 (n + 4)).toNat

end

end A141287.P4449421663186580867

/-!
# A141288: a(0)=1. a(n) = smallest positive multiple of a(n-1) such that a(n) contains the binary representation of n at least once somewhere within its binary representation.

The programs for A141288, there is no canonical definition to state claims against.
-/

/-! ## A141288.P15014600450053019373

`A225891(∏[dr(A148070(n))])`
-/

namespace A141288.P15014600450053019373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A148070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A141288.P15014600450053019373

/-! ## A141288.P1188763156860441099

`∏[A025452(A302974(n+1))]`
-/

namespace A141288.P1188763156860441099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A302974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141288.P1188763156860441099

/-! ## A141288.P5958952549062746523

`∏[A135010(∏[A323467(n+1)])]`
-/

namespace A141288.P5958952549062746523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141288.P5958952549062746523

/-! ## A141288.P18124877314768849192

`∏[A135010(∏[A097559(n+3)])]`
-/

namespace A141288.P18124877314768849192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097559 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141288.P18124877314768849192

/-!
# A141289: Triangle read by rows, n-th row = (n-2)-th row appended to the beginning of (n-1)-th row, + n.

The programs for A141289, there is no canonical definition to state claims against.
-/

/-! ## A141289.P8902825285383580622

`A106796(eq[A025437(n), A079690(n)])`
-/

namespace A141289.P8902825285383580622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106796 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A141289.P8902825285383580622

/-! ## A141289.P1607797606108118541

`A388137(A126183(n))`
-/

namespace A141289.P1607797606108118541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388137 (A126183 n).toNat

end

end A141289.P1607797606108118541

/-! ## A141289.P14657148477227510370

`A337260(eq[A030190(n), A095771(3*n+2)])`
-/

namespace A141289.P14657148477227510370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095771 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A141289.P14657148477227510370

/-! ## A141289.P10511055781821325771

`A296772(A113305(n+1))`
-/

namespace A141289.P10511055781821325771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296772 (A113305 (n + 1)).toNat

end

end A141289.P10511055781821325771

/-! ## A141289.P2326653415805719890

`A228528(A140409(n+2))`
-/

namespace A141289.P2326653415805719890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228528 (A140409 (n + 2)).toNat

end

end A141289.P2326653415805719890

/-!
# A141290: Triangle read by rows, descending antidiagonals of a (1, 3, 5, ...) * (1, 4, 16, ...) multiplication table.

The programs for A141290, there is no canonical definition to state claims against.
-/

/-! ## A141290.P16610998544013042647

`(A391685(n)+1)/2`
-/

namespace A141290.P16610998544013042647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391685 n + 1 : ℚ) / 2

end

end A141290.P16610998544013042647

/-! ## A141290.P11191587500505356126

`(2^(n-C(∑[char[∑[n]]], 2)))²*A099375(n)`
-/

namespace A141290.P11191587500505356126
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)) ^ 2 * (A099375 n : ℚ)

end

end A141290.P11191587500505356126

/-! ## A141290.P11431202263680749762

`2^(n-C(∑[char[∑[n]]], 2))*A135764(n+1)`
-/

namespace A141290.P11431202263680749762
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A135764 (n + 1) : ℚ)

end

end A141290.P11431202263680749762

/-! ## A141290.P16695444183032747045

`(∑[2*n]%(comp[∑[n]]+1)+1)*A059268(n)²`
-/

namespace A141290.P16695444183032747045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 : ℕ) : ℤ) * A059268 n ^ 2

end

end A141290.P16695444183032747045

/-! ## A141290.P17444796636564660919

`A130128((1-round(sqrt(2*(n+1))))²+2*n+1)`
-/

namespace A141290.P17444796636564660919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130128 ((1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A141290.P17444796636564660919

/-! ## A141290.P5922006603168959273

`A130128(round(sqrt(2*(n+1)))²+2*(n+1))/2`
-/

namespace A141290.P5922006603168959273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130128 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 + (2 * (n + 1) : ℤ)).toNat : ℚ) / 2

end

end A141290.P5922006603168959273

/-! ## A141290.P7714581273840347523

`A357213(A185870(n+1))`
-/

namespace A141290.P7714581273840347523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357213 (A185870 (n + 1)).toNat

end

end A141290.P7714581273840347523

/-! ## A141290.P10718766492655029750

`A059268(n)²*A099375(n)`
-/

namespace A141290.P10718766492655029750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2 * A099375 n

end

end A141290.P10718766492655029750

/-! ## A141290.P15730830934299862786

`(A075302(n)+1)*A059268(n)`
-/

namespace A141290.P15730830934299862786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075302 n + 1) * A059268 n

end

end A141290.P15730830934299862786

/-! ## A141290.P14906414421082752235

`A059268(n)*A135764(n+1)`
-/

namespace A141290.P14906414421082752235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A135764 (n + 1)

end

end A141290.P14906414421082752235

/-!
# A141291: a(n) = 4*a(n-1) + 2*n - 1.

The programs for A141291, the canonical program `A141291.P4872413684219490591` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141291 has offset 0).

The definition of A141291 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+2*n-1` (program `A141291.P4872413684219490591`, by `A141291.P4872413684219490591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141291.P4872413684219490591

`4*a(n-1)+2*n-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A141291

/-- `4*a(n-1)+2*n-1` -/
def P4872413684219490591.Spec : Prop :=
  ∀ n, P4872413684219490591.a n = A141291 n

theorem P4872413684219490591.correct : P4872413684219490591.Spec := by
  intro n
  simp only [A141291]

end A141291

/-! ## A141291.P7658055032175184902

`∑[ogf((x+x^2)/(1-5x+4x^2))]`
-/

namespace A141291.P7658055032175184902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141291.P7658055032175184902

namespace A141291

/-- `∑[ogf((x+x^2)/(1-5x+4x^2))]` -/
def P7658055032175184902.Spec : Prop :=
  ∀ n, P7658055032175184902.a n = A141291 n

end A141291

/-! ## A141291.P388459454308509681

`ogf((x+x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A141291.P388459454308509681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -6, 9, -4] n

end

end A141291.P388459454308509681

namespace A141291

/-- `ogf((x+x^2)/(1-6x+9x^2-4x^3))` -/
def P388459454308509681.Spec : Prop :=
  ∀ n, P388459454308509681.a n = A141291 n

end A141291

/-! ## A141291.P1117097352704099807

`∑[∑[floor(5*4^(n-2))]]`
-/

namespace A141291.P1117097352704099807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141291.P1117097352704099807

namespace A141291

/-- `∑[∑[floor(5*4^(n-2))]]` -/
def P1117097352704099807.Spec : Prop :=
  ∀ n, P1117097352704099807.a n = A141291 n

end A141291

/-! ## A141291.P1886721863284115349

`∑[∑[4*a(n-1)]]-1` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A141291.P1886721863284115349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 5] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A141291.P1886721863284115349

namespace A141291

/-- `∑[∑[4*a(n-1)]]-1` -/
def P1886721863284115349.Spec : Prop :=
  ∀ n, P1886721863284115349.a n = A141291 n

end A141291

/-! ## A141291.P1962516368303276466

`2*n-(1-4*a(n-1))` with `a(0)=0`
-/

namespace A141291.P1962516368303276466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - (1 - 4 * a (n - 1))

end

end A141291.P1962516368303276466

namespace A141291

/-- `2*n-(1-4*a(n-1))` -/
def P1962516368303276466.Spec : Prop :=
  ∀ n, P1962516368303276466.a n = A141291 n

end A141291

/-! ## A141291.P6198831579994564166

`lcm(4, a(n-1))+n-1+n` with `a(0)=0`
-/

namespace A141291.P6198831579994564166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) + ((n : ℤ) - 1 + (n : ℤ))

end

end A141291.P6198831579994564166

namespace A141291

/-- `lcm(4, a(n-1))+n-1+n` -/
def P6198831579994564166.Spec : Prop :=
  ∀ n, P6198831579994564166.a n = A141291 n

end A141291

/-! ## A141291.P13629339112751817917

`A172285(2*n)`
-/

namespace A141291.P13629339112751817917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 (2 * n)

end

end A141291.P13629339112751817917

namespace A141291

/-- `A172285(2*n)` -/
def P13629339112751817917.Spec : Prop :=
  ∀ n, P13629339112751817917.a n = A141291 n

end A141291

/-! ## A141291.P11178162761133484154

`A164044(n)-(n+1)`
-/

namespace A141291.P11178162761133484154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164044 n - (n + 1 : ℤ)

end

end A141291.P11178162761133484154

namespace A141291

/-- `A164044(n)-(n+1)` -/
def P11178162761133484154.Spec : Prop :=
  ∀ n, P11178162761133484154.a n = A141291 n

end A141291

/-! ## A141291.P17645023792694323221

`∑[A061547(2*n)]-1`
-/

namespace A141291.P17645023792694323221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A141291.P17645023792694323221

namespace A141291

/-- `∑[A061547(2*n)]-1` -/
def P17645023792694323221.Spec : Prop :=
  ∀ n, P17645023792694323221.a n = A141291 n

end A141291

/-! ## A141291.P11953957253741384661

`A172416(2*n)-(n+1)`
-/

namespace A141291.P11953957253741384661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172416 (2 * n) - (n + 1 : ℤ)

end

end A141291.P11953957253741384661

namespace A141291

/-- `A172416(2*n)-(n+1)` -/
def P11953957253741384661.Spec : Prop :=
  ∀ n, P11953957253741384661.a n = A141291 n

end A141291

/-! ## A141291.P15089061944028735318

`(A172447(n)-(n+1))/2`
-/

namespace A141291.P15089061944028735318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172447 n - (n + 1 : ℤ) : ℚ) / 2

end

end A141291.P15089061944028735318

namespace A141291

/-- `(A172447(n)-(n+1))/2` -/
def P15089061944028735318.Spec : Prop :=
  ∀ n, P15089061944028735318.a n = (A141291 n : ℚ)

end A141291

/-! ## A141291.P14286306496746400234

`4^n-A053088(2*n)`
-/

namespace A141291.P14286306496746400234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A053088 (2 * n)

end

end A141291.P14286306496746400234

namespace A141291

/-- `4^n-A053088(2*n)` -/
def P14286306496746400234.Spec : Prop :=
  ∀ n, P14286306496746400234.a n = A141291 n

end A141291

/-! ## A141291.P9541009567630185912

`4^n-∑[A001045(2*n)+1]`
-/

namespace A141291.P9541009567630185912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141291.P9541009567630185912

namespace A141291

/-- `4^n-∑[A001045(2*n)+1]` -/
def P9541009567630185912.Spec : Prop :=
  ∀ n, P9541009567630185912.a n = A141291 n

end A141291

/-! ## A141291.P13275100174606746775

`A068018(2*n+1)-(2*n+1)`
-/

namespace A141291.P13275100174606746775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068018 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A141291.P13275100174606746775

namespace A141291

/-- `A068018(2*n+1)-(2*n+1)` -/
def P13275100174606746775.Spec : Prop :=
  ∀ n, P13275100174606746775.a n = A141291 n

end A141291

/-! ## A141291.P17786030471906811435

`A004277(n)+4*a(n-1)-1` with `a(0)=0`
-/

namespace A141291.P17786030471906811435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004277 n + (4 * a (n - 1) - 1)

end

end A141291.P17786030471906811435

namespace A141291

/-- `A004277(n)+4*a(n-1)-1` -/
def P17786030471906811435.Spec : Prop :=
  ∀ n, P17786030471906811435.a n = A141291 n

end A141291

/-! ## A141291.P15709000014634192316

`∑[A020988(n)]-∑[floor(2^(n-1))²]`
-/

namespace A141291.P15709000014634192316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A141291.P15709000014634192316

namespace A141291

/-- `∑[A020988(n)]-∑[floor(2^(n-1))²]` -/
def P15709000014634192316.Spec : Prop :=
  ∀ n, P15709000014634192316.a n = A141291 n

end A141291

/-! ## A141291.P5460722463858212857

`A000302(n)-A073724(n)`
-/

namespace A141291.P5460722463858212857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A073724 n

end

end A141291.P5460722463858212857

namespace A141291

/-- `A000302(n)-A073724(n)` -/
def P5460722463858212857.Spec : Prop :=
  ∀ n, P5460722463858212857.a n = A141291 n

end A141291

/-! ## A141291.P16202417695936699761

`A145766(n)-A002450(n)`
-/

namespace A141291.P16202417695936699761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145766 n - A002450 n

end

end A141291.P16202417695936699761

namespace A141291

/-- `A145766(n)-A002450(n)` -/
def P16202417695936699761.Spec : Prop :=
  ∀ n, P16202417695936699761.a n = A141291 n

end A141291

/-! ## A141291.P8205175574831298040

`A172447(n)-A164044(n)`
-/

namespace A141291.P8205175574831298040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172447 n - A164044 n

end

end A141291.P8205175574831298040

namespace A141291

/-- `A172447(n)-A164044(n)` -/
def P8205175574831298040.Spec : Prop :=
  ∀ n, P8205175574831298040.a n = A141291 n

end A141291

/-!
# A141292: Conjectured values for minimal number of pieces required in a 2n-gon to square dissection that uses translation alone.

The programs for A141292, there is no canonical definition to state claims against.
-/

/-! ## A141292.P10388699101654176422

`A055642(A236551(n+1))+A047416(2*n+1)`
-/

namespace A141292.P10388699101654176422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A236551 (n + 1)).toNat + A047416 (2 * n + 1)

end

end A141292.P10388699101654176422

/-! ## A141292.P328554735790603285

`A357409(6*n+1)`
-/

namespace A141292.P328554735790603285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (6 * n + 1)

end

end A141292.P328554735790603285

/-! ## A141292.P17822283200793449936

`ceil((A329133(A007310(2*n+1))+1)/2)`
-/

namespace A141292.P17822283200793449936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A329133 (A007310 (2 * n + 1)).toNat + 1 : ℚ) / 2⌉

end

end A141292.P17822283200793449936

/-! ## A141292.P13616309693832770564

`floor(log2(A358522(n+1)*A383471(3*n+2)))`
-/

namespace A141292.P13616309693832770564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A358522 (n + 1) * A383471 (3 * n + 2)).toNat

end

end A141292.P13616309693832770564

/-! ## A141292.P17924796386467156688

`A063247(n+1)+A051903(A000108(n))`
-/

namespace A141292.P17924796386467156688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063247 (n + 1) + A051903 (A000108 n).toNat

end

end A141292.P17924796386467156688

/-!
# A141293: Primes p of the form 4*k+1 which are not of the form r^2 + 1.

The programs for A141293, there is no canonical definition to state claims against.
-/

/-! ## A141293.P4565986223165265087

`p?[4*comp[(n+1)²]+1]`
-/

namespace A141293.P4565986223165265087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141293.P4565986223165265087

/-! ## A141293.P6777547714809684742

`or(1, p?[A085989(n+1)])`
-/

namespace A141293.P6777547714809684742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141293.P6777547714809684742

/-! ## A141293.P7107947296829844700

`or(1, p?[A240950(n+1)])`
-/

namespace A141293.P7107947296829844700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A141293.P7107947296829844700

/-! ## A141293.P2705719142418490550

`∩[4*n+1, A070303(n+1)]`
-/

namespace A141293.P2705719142418490550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141293.P2705719142418490550

/-! ## A141293.P4757785240685034714

`∑{d}[p?[A016777(n)+n-char[n²]], #]-1`
-/

namespace A141293.P4757785240685034714
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A141293.P4757785240685034714

/-! ## A141293.P8707125083281024377

`eq[A092976(n), A281154(n)]`
-/

namespace A141293.P8707125083281024377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141293.P8707125083281024377

/-! ## A141293.P16839070880876478681

`eq[A225244(n), A281154(n)]`
-/

namespace A141293.P16839070880876478681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141293.P16839070880876478681

/-! ## A141293.P10246948300153656183

`eq[A143051(n), A363569(n)]`
-/

namespace A141293.P10246948300153656183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141293.P10246948300153656183

/-! ## A141293.P15318046173230677458

`eq[A281154(n), A326486(n)]`
-/

namespace A141293.P15318046173230677458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141293.P15318046173230677458

/-! ## A141293.P18032633106083011244

`eq[A281154(n), A327859(n)]`
-/

namespace A141293.P18032633106083011244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A141293.P18032633106083011244

/-!
# A141294: Triangle read by rows, A054523 * A000012, 1<=k<=n.

The programs for A141294, the canonical program `A141294.P5074448274352952984` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141294 has offset 1).

The definition of A141294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141294.P5074448274352952984

`A004736(∑[A054523(abs(1-n)+1)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A141294

/-- `A004736(∑[A054523(abs(1-n)+1)])` -/
def P5074448274352952984.Spec : Prop :=
  ∀ n, P5074448274352952984.a n = A141294 (n + 1)

theorem P5074448274352952984.correct : P5074448274352952984.Spec := by
  intro n
  simp only [A141294, Nat.add_sub_cancel]

end A141294

/-! ## A141294.P15426574903511611781

`A054523(n+1)+A004736(∑[A054523(n+1)])-1`
-/

namespace A141294.P15426574903511611781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) + (A004736 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1)

end

end A141294.P15426574903511611781

namespace A141294

/-- `A054523(n+1)+A004736(∑[A054523(n+1)])-1` -/
def P15426574903511611781.Spec : Prop :=
  ∀ n, P15426574903511611781.a n = A141294 (n + 1)

end A141294

/-! ## A141294.P7369453059940999320

`gcd(A107674(n), A210992(n))`
-/

namespace A141294.P7369453059940999320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107674 n) (A210992 n)

end

end A141294.P7369453059940999320

namespace A141294

/-- `gcd(A107674(n), A210992(n))` -/
def P7369453059940999320.Spec : Prop :=
  ∀ n, (P7369453059940999320.a n : ℤ) = A141294 (n + 1)

end A141294

/-! ## A141294.P6420198336202811160

`A210992(n)-A000122(A182872(3*(n+1)))`
-/

namespace A141294.P6420198336202811160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210992 n - A000122 (A182872 (3 * (n + 1))).toNat

end

end A141294.P6420198336202811160

namespace A141294

/-- `A210992(n)-A000122(A182872(3*(n+1)))` -/
def P6420198336202811160.Spec : Prop :=
  ∀ n, P6420198336202811160.a n = A141294 (n + 1)

end A141294

/-! ## A141294.P7346492802736914195

`gcd(A079203(A095666(n)), A306735(n))`
-/

namespace A141294.P7346492802736914195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079203 (A095666 n).toNat) (A306735 n)

end

end A141294.P7346492802736914195

namespace A141294

/-- `gcd(A079203(A095666(n)), A306735(n))` -/
def P7346492802736914195.Spec : Prop :=
  ∀ n, (P7346492802736914195.a n : ℤ) = A141294 (n + 1)

end A141294

/-!
# A141295: Largest m<=n such that all k with 1<=k<=m are divisors of n or coprime to n.

The programs for A141295, there is no canonical definition to state claims against.
-/

/-! ## A141295.P6756421183741590753

`(A073758(n+1)+n+1)%(n+2)`
-/

namespace A141295.P6756421183741590753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073758 (n + 1) + (n + 1 : ℤ)) (n + 2 : ℤ)

end

end A141295.P6756421183741590753

/-! ## A141295.P16757950037937857114

`val(A245392(n+1), 2)`
-/

namespace A141295.P16757950037937857114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A245392 (n + 1)).toNat 2

end

end A141295.P16757950037937857114

/-! ## A141295.P6109157644544640907

`val(A054432(n+1)+A034729(n+1), 2)`
-/

namespace A141295.P6109157644544640907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054432 (n + 1) + A034729 (n + 1)).toNat 2

end

end A141295.P6109157644544640907

/-! ## A141295.P2351658416315762053

`val(A054432(n+1)+A055895(n+1)/2, 2)`
-/

namespace A141295.P2351658416315762053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A054432 (n + 1) : ℚ) + (A055895 (n + 1) : ℚ) / 2)).toNat 2

end

end A141295.P2351658416315762053

/-! ## A141295.P12547645382291961540

`A002260(A073758(n+1)+∑[n+2])`
-/

namespace A141295.P12547645382291961540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A073758 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A141295.P12547645382291961540

/-! ## A141295.P5440051635419365784

`A025581(∑[n+1]-A073758(n+1))`
-/

namespace A141295.P5440051635419365784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A073758 (n + 1)).toNat

end

end A141295.P5440051635419365784

/-! ## A141295.P934152289069306705

`A193739(A134869(n+1)-A073758(n+1))`
-/

namespace A141295.P934152289069306705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A134869 (n + 1) - A073758 (n + 1)).toNat

end

end A141295.P934152289069306705

/-!
# A141297: a(n) = number of distinct (nonempty) substrings in the binary representation of n.

The programs for A141297, there is no canonical definition to state claims against.
-/

/-! ## A141297.P16019944649931256785

`A141300(n+1)+A141298(n+1)`
-/

namespace A141297.P16019944649931256785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141300 (n + 1) + A141298 (n + 1)

end

end A141297.P16019944649931256785

/-! ## A141297.P13030884684736662620

`A141298(n+1)+A000217(A070939(n+1))-A141299(n+1)`
-/

namespace A141297.P13030884684736662620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141298 (n + 1) + (A000217 (A070939 (n + 1)).toNat - A141299 (n + 1))

end

end A141297.P13030884684736662620

/-! ## A141297.P1161319438059288902

`A124770(A196168(n+1))`
-/

namespace A141297.P1161319438059288902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A196168 (n + 1)).toNat

end

end A141297.P1161319438059288902

/-! ## A141297.P7160358590804103258

`A124770(A088697(n+1))`
-/

namespace A141297.P7160358590804103258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A088697 (n + 1)).toNat

end

end A141297.P7160358590804103258

/-! ## A141297.P14839750242925592737

`A141298(A147756(n+1))`
-/

namespace A141297.P14839750242925592737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141298 (A147756 (n + 1)).toNat

end

end A141297.P14839750242925592737

/-!
# A141298: a(n) = number of distinct substrings in the binary representation of n that each occur multiple times.

The programs for A141298, there is no canonical definition to state claims against.
-/

/-! ## A141298.P17288788367057247086

`A141297(n+1)-A141300(n+1)`
-/

namespace A141298.P17288788367057247086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141297 (n + 1) - A141300 (n + 1)

end

end A141298.P17288788367057247086

/-! ## A141298.P4866818841369993515

`A141297(n+1)-(A000217(A070939(n+1))-A141299(n+1))`
-/

namespace A141298.P4866818841369993515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141297 (n + 1) - (A000217 (A070939 (n + 1)).toNat - A141299 (n + 1))

end

end A141298.P4866818841369993515

/-! ## A141298.P9479981571683018715

`A124770(A196168(n+1))-A141300(n+1)`
-/

namespace A141298.P9479981571683018715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A196168 (n + 1)).toNat - A141300 (n + 1)

end

end A141298.P9479981571683018715

/-! ## A141298.P5132688443735257181

`A124770(A088697(n+1))-A141300(n+1)`
-/

namespace A141298.P5132688443735257181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A088697 (n + 1)).toNat - A141300 (n + 1)

end

end A141298.P5132688443735257181

/-! ## A141298.P9501637488278519110

`A124770(A080303(n+1))-A141300(n+1)`
-/

namespace A141298.P9501637488278519110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 (A080303 (n + 1)).toNat - A141300 (n + 1)

end

end A141298.P9501637488278519110

/-!
# A141299: a(n) = number (with repetition) of (not necessarily distinct) substrings in the binary representation of n that each occur multiple times.

The programs for A141299, there is no canonical definition to state claims against.
-/

/-! ## A141299.P12576530000213566409

`A000217(A070939(n+1))-A141300(n+1)`
-/

namespace A141299.P12576530000213566409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A070939 (n + 1)).toNat - A141300 (n + 1)

end

end A141299.P12576530000213566409

