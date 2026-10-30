import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
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
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A312400: Coordination sequence Gal.6.310.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312400, there is no canonical definition to state claims against.
-/

/-! ## A312400.P15323392482022763475

`A324758(3*n+1)+A306433(A257062(3*n+4))`
-/

namespace A312400.P15323392482022763475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (3 * n + 1) + A306433 (A257062 (3 * n + 4)).toNat

end

end A312400.P15323392482022763475

/-! ## A312400.P92031584540666666

`or(A037888(A000244(n)), A312333(n))`
-/

namespace A312400.P92031584540666666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037888 (A000244 n).toNat) (A312333 n)

end

end A312400.P92031584540666666

/-!
# A312401: Coordination sequence Gal.6.185.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312401, there is no canonical definition to state claims against.
-/

/-! ## A312401.P9655265674676029656

`A312412(n)-A116178(A180567(n*A116178(n)))`
-/

namespace A312401.P9655265674676029656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312412 n - A116178 (A180567 ((n : ℤ) * A116178 n).toNat).toNat

end

end A312401.P9655265674676029656

/-! ## A312401.P3365112991121194071

`A250120(n)-A030567(A015441(n))`
-/

namespace A312401.P3365112991121194071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A030567 (A015441 n).toNat

end

end A312401.P3365112991121194071

/-! ## A312401.P12656006920990684269

`A008579(n)-A126139(A322788(n+1))`
-/

namespace A312401.P12656006920990684269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A126139 (A322788 (n + 1)).toNat

end

end A312401.P12656006920990684269

/-! ## A312401.P16105579439589837887

`A312412(n)-A116178(A180567(n))`
-/

namespace A312401.P16105579439589837887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312412 n - A116178 (A180567 n).toNat

end

end A312401.P16105579439589837887

/-! ## A312401.P12852250590063166711

`A312412(n)-A010051(A147279(2*n+1))`
-/

namespace A312401.P12852250590063166711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312412 n - A010051 (A147279 (2 * n + 1)).toNat

end

end A312401.P12852250590063166711

/-!
# A312402: Coordination sequence Gal.4.70.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312402, the canonical program `A312402.P11095012021784612656` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312402 has offset 0).

The definition of A312402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312402.P11095012021784612656

`ogf((1+2x+3x^2+6x^3+3x^4+8x^5+4x^6+8x^7+3x^8+6x^9+3x^10+2x^11+x^12)/(1-2x+3x^2-4x^3+5x^4-6x^5+6x^6-6x^7+5x^8-4x^9+3x^10-2x^11+x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A312402

/-- `ogf((1+2x+3x^2+6x^3+3x^4+8x^5+4x^6+8x^7+3x^8+6x^9+3x^10+2x^11+x^12)/(1-2x+3x^2-4x^3+5x^4-6x^5+6x^6-6x^7+5x^8-4x^9+3x^10-2x^11+x^12))` -/
def P11095012021784612656.Spec : Prop :=
  ∀ n, P11095012021784612656.a n = A312402 n

theorem P11095012021784612656.correct : P11095012021784612656.Spec := by
  intro n
  simp only [A312402]

end A312402

/-! ## A312402.P12046811477759483809

`2*A311803(n)-A311343(n)`
-/

namespace A312402.P12046811477759483809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311803 n - A311343 n

end

end A312402.P12046811477759483809

namespace A312402

/-- `2*A311803(n)-A311343(n)` -/
def P12046811477759483809.Spec : Prop :=
  ∀ n, P12046811477759483809.a n = A312402 n

end A312402

/-! ## A312402.P5647602654774873522

`A312655(n)-A201629(A004525(n))`
-/

namespace A312402.P5647602654774873522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 n - A201629 (A004525 n).toNat

end

end A312402.P5647602654774873522

namespace A312402

/-- `A312655(n)-A201629(A004525(n))` -/
def P5647602654774873522.Spec : Prop :=
  ∀ n, P5647602654774873522.a n = A312402 n

end A312402

/-! ## A312402.P7532423713955038695

`A005843(A311803(n))-A311343(n)`
-/

namespace A312402.P7532423713955038695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311803 n).toNat - A311343 n

end

end A312402.P7532423713955038695

namespace A312402

/-- `A005843(A311803(n))-A311343(n)` -/
def P7532423713955038695.Spec : Prop :=
  ∀ n, P7532423713955038695.a n = A312402 n

end A312402

/-! ## A312402.P17142354168644228243

`A311233(2*n)-A201629(A311233(n))`
-/

namespace A312402.P17142354168644228243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311233 (2 * n) - A201629 (A311233 n).toNat

end

end A312402.P17142354168644228243

namespace A312402

/-- `A311233(2*n)-A201629(A311233(n))` -/
def P17142354168644228243.Spec : Prop :=
  ∀ n, P17142354168644228243.a n = A312402 n

end A312402

/-! ## A312402.P14225277009794904648

`A000007(n)+A311233(A005843(n))-A311233(n)`
-/

namespace A312402.P14225277009794904648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A311233 (A005843 n).toNat - A311233 n)

end

end A312402.P14225277009794904648

namespace A312402

/-- `A000007(n)+A311233(A005843(n))-A311233(n)` -/
def P14225277009794904648.Spec : Prop :=
  ∀ n, P14225277009794904648.a n = A312402 n

end A312402

/-!
# A312403: Coordination sequence Gal.6.304.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312403, there is no canonical definition to state claims against.
-/

/-! ## A312403.P10599284787155478792

`A312404(A062399(n))`
-/

namespace A312403.P10599284787155478792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312404 (A062399 n).toNat

end

end A312403.P10599284787155478792

/-! ## A312403.P2586870845361058462

`A312404(A120126(n))`
-/

namespace A312403.P2586870845361058462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312404 (A120126 n).toNat

end

end A312403.P2586870845361058462

/-! ## A312403.P11933978842762552322

`A312404(A351870(n))`
-/

namespace A312403.P11933978842762552322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312404 (A351870 n).toNat

end

end A312403.P11933978842762552322

/-! ## A312403.P16346682957920707538

`A312404(n)%A093548(n+1)`
-/

namespace A312403.P16346682957920707538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312404 n) (A093548 (n + 1))

end

end A312403.P16346682957920707538

/-! ## A312403.P9778887307852461070

`A312404(n)*A322356(A041913(n)+1)`
-/

namespace A312403.P9778887307852461070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312404 n * A322356 (A041913 n + 1).toNat

end

end A312403.P9778887307852461070

/-!
# A312404: Coordination sequence Gal.6.305.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312404, there is no canonical definition to state claims against.
-/

/-! ## A312404.P2432280991203778506

`or(A185284((5-n)²), A312403(n))`
-/

namespace A312404.P2432280991203778506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A312403 n)

end

end A312404.P2432280991203778506

/-!
# A312405: Coordination sequence Gal.4.71.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312405, there is no canonical definition to state claims against.
-/

/-! ## A312405.P5658580256957750999

`and(A312432(A062399(n)), A312439(n))`
-/

namespace A312405.P5658580256957750999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A312432 (A062399 n).toNat) (A312439 n)

end

end A312405.P5658580256957750999

/-! ## A312405.P12425089472216454778

`and(A312432(A062399(n)), A312440(n))`
-/

namespace A312405.P12425089472216454778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A312432 (A062399 n).toNat) (A312440 n)

end

end A312405.P12425089472216454778

/-! ## A312405.P4099957352024153632

`record[gcd(A217375(n+1), A312404(n))]`
-/

namespace A312405.P4099957352024153632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217375 (n + 1)) (A312404 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312405.P4099957352024153632

/-! ## A312405.P12649461868765053657

`A063725(A003462(n))+A008574(n)`
-/

namespace A312405.P12649461868765053657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A003462 n).toNat + A008574 n

end

end A312405.P12649461868765053657

/-!
# A312406: Coordination sequence Gal.6.289.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312406, there is no canonical definition to state claims against.
-/

/-! ## A312406.P10416682946838980450

`A312004(n)+A007814(A148612(n))`
-/

namespace A312406.P10416682946838980450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312004 n + A007814 (A148612 n).toNat

end

end A312406.P10416682946838980450

/-! ## A312406.P18302101783175171148

`A312895(n)+A057078(A294766(n))`
-/

namespace A312406.P18302101783175171148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A057078 (A294766 n).toNat

end

end A312406.P18302101783175171148

/-! ## A312406.P10370436963060159241

`A313683(n)-A001222(A190910(n))`
-/

namespace A312406.P10370436963060159241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n - A001222 (A190910 n).toNat

end

end A312406.P10370436963060159241

/-! ## A312406.P8706928401698643512

`A311773(n)+A170970(A331022(n+2))`
-/

namespace A312406.P8706928401698643512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311773 n + A170970 (A331022 (n + 2)).toNat

end

end A312406.P8706928401698643512

/-! ## A312406.P13422874952091071695

`A328969(A315585(n+2))+A311775(n)`
-/

namespace A312406.P13422874952091071695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328969 (A315585 (n + 2)).toNat + A311775 n

end

end A312406.P13422874952091071695

/-!
# A312407: Coordination sequence Gal.6.519.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312407, there is no canonical definition to state claims against.
-/

/-! ## A312407.P2569842034985623172

`A312408(n)-A151795(A141214(n))`
-/

namespace A312407.P2569842034985623172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312408 n - A151795 (A141214 n).toNat

end

end A312407.P2569842034985623172

/-! ## A312407.P5397368389335288997

`A312408(A062399(n))`
-/

namespace A312407.P5397368389335288997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312408 (A062399 n).toNat

end

end A312407.P5397368389335288997

/-! ## A312407.P14303084827281600278

`A312408(A120126(n))`
-/

namespace A312407.P14303084827281600278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312408 (A120126 n).toNat

end

end A312407.P14303084827281600278

/-! ## A312407.P16588069996456192032

`A312408(A351870(n))`
-/

namespace A312407.P16588069996456192032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312408 (A351870 n).toNat

end

end A312407.P16588069996456192032

/-! ## A312407.P18222172678588969372

`A312408(n)+A151795(n²)`
-/

namespace A312407.P18222172678588969372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312408 n + A151795 (n ^ 2)

end

end A312407.P18222172678588969372

/-!
# A312408: Coordination sequence Gal.6.530.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312408, there is no canonical definition to state claims against.
-/

/-! ## A312408.P4048171862038897031

`A312407(n)+A151795(A141214(n))`
-/

namespace A312408.P4048171862038897031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312407 n + A151795 (A141214 n).toNat

end

end A312408.P4048171862038897031

/-! ## A312408.P15019237336781883160

`A312407(n)+A025466(A159685(3*n+5))`
-/

namespace A312408.P15019237336781883160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312407 n + A025466 (A159685 (3 * n + 5)).toNat

end

end A312408.P15019237336781883160

/-!
# A312409: Coordination sequence Gal.6.169.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312409, there is no canonical definition to state claims against.
-/

/-! ## A312409.P1664923588839875485

`A312410(n)-A083928(A249734(n+1))`
-/

namespace A312409.P1664923588839875485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312410 n - A083928 (A249734 (n + 1)).toNat

end

end A312409.P1664923588839875485

/-! ## A312409.P1808898692783724434

`A312410(A087051(n))`
-/

namespace A312409.P1808898692783724434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312410 (A087051 n).toNat

end

end A312409.P1808898692783724434

/-! ## A312409.P670505131401691030

`A312410(A227549(n+1))`
-/

namespace A312409.P670505131401691030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312410 (A227549 (n + 1)).toNat

end

end A312409.P670505131401691030

/-! ## A312409.P18272025708840203972

`A312410(A396204(n+1))`
-/

namespace A312409.P18272025708840203972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312410 (A396204 (n + 1)).toNat

end

end A312409.P18272025708840203972

/-! ## A312409.P6846548011503751309

`A312410(n)%A095645(n)`
-/

namespace A312409.P6846548011503751309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312410 n) (A095645 n)

end

end A312409.P6846548011503751309

/-!
# A312410: Coordination sequence Gal.6.186.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312410, there is no canonical definition to state claims against.
-/

/-! ## A312410.P16669516580806266246

`A312409(n)+A083928(A249734(n+1))`
-/

namespace A312410.P16669516580806266246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312409 n + A083928 (A249734 (n + 1)).toNat

end

end A312410.P16669516580806266246

/-!
# A312411: Coordination sequence Gal.3.39.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312411, the canonical program `A312411.P1075500101393210949` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312411 has offset 0).

The definition of A312411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312411.P1075500101393210949

`ogf((1+5x+12x^2+22x^3+31x^4+32x^5+29x^6+22x^7+14x^8+5x^9+x^10)/(1+x-x^4-2x^5-x^6+x^9+x^10))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A312411

/-- `ogf((1+5x+12x^2+22x^3+31x^4+32x^5+29x^6+22x^7+14x^8+5x^9+x^10)/(1+x-x^4-2x^5-x^6+x^9+x^10))` -/
def P1075500101393210949.Spec : Prop :=
  ∀ n, P1075500101393210949.a n = A312411 n

theorem P1075500101393210949.correct : P1075500101393210949.Spec := by
  intro n
  simp only [A312411]

end A312411

/-! ## A312411.P6413893059202263927

`A008579(n)-A275964(A003946(n))`
-/

namespace A312411.P6413893059202263927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A275964 (A003946 n).toNat

end

end A312411.P6413893059202263927

namespace A312411

/-- `A008579(n)-A275964(A003946(n))` -/
def P6413893059202263927.Spec : Prop :=
  ∀ n, P6413893059202263927.a n = A312411 n

end A312411

/-! ## A312411.P2155855974234569031

`A008579(n)-A292241(A225885(2*n+5))`
-/

namespace A312411.P2155855974234569031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A292241 (A225885 (2 * n + 5)).toNat

end

end A312411.P2155855974234569031

namespace A312411

/-- `A008579(n)-A292241(A225885(2*n+5))` -/
def P2155855974234569031.Spec : Prop :=
  ∀ n, P2155855974234569031.a n = A312411 n

end A312411

/-! ## A312411.P17561793148623557314

`A312412(A227549(n+2)-1)`
-/

namespace A312411.P17561793148623557314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312412 (A227549 (n + 2) - 1).toNat

end

end A312411.P17561793148623557314

namespace A312411

/-- `A312412(A227549(n+2)-1)` -/
def P17561793148623557314.Spec : Prop :=
  ∀ n, P17561793148623557314.a n = A312411 n

end A312411

/-! ## A312411.P14185429298626854945

`A312412(n)%A070842(n+2)`
-/

namespace A312411.P14185429298626854945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312412 n) (A070842 (n + 2))

end

end A312411.P14185429298626854945

namespace A312411

/-- `A312412(n)%A070842(n+2)` -/
def P14185429298626854945.Spec : Prop :=
  ∀ n, P14185429298626854945.a n = A312411 n

end A312411

/-!
# A312412: Coordination sequence Gal.5.239.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312412, there is no canonical definition to state claims against.
-/

/-! ## A312412.P4807246031329688639

`A008579(n)-A132747(A350078(n))`
-/

namespace A312412.P4807246031329688639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A132747 (A350078 n).toNat

end

end A312412.P4807246031329688639

/-! ## A312412.P6974254316573698490

`A008579(n)-2*A244465(A003418(n))`
-/

namespace A312412.P6974254316573698490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - 2 * A244465 (A003418 n).toNat

end

end A312412.P6974254316573698490

/-! ## A312412.P15109745462005091545

`A008579(n)-A096158(A109070(n)+A096158(n+1))`
-/

namespace A312412.P15109745462005091545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A096158 (A109070 n + A096158 (n + 1)).toNat

end

end A312412.P15109745462005091545

/-! ## A312412.P14798118534873826470

`A008579(n)-A083915(A030638(n+3)+A001906(n))`
-/

namespace A312412.P14798118534873826470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A083915 (A030638 (n + 3) + A001906 n).toNat

end

end A312412.P14798118534873826470

/-! ## A312412.P1060853166814120220

`A311771(n)+A171157(A135335(n))`
-/

namespace A312412.P1060853166814120220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311771 n + A171157 (A135335 n).toNat

end

end A312412.P1060853166814120220

/-!
# A312413: Coordination sequence Gal.6.430.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312413, there is no canonical definition to state claims against.
-/

/-! ## A312413.P15679506098068795933

`A311776(n)+A185705(A001835(n))`
-/

namespace A312413.P15679506098068795933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311776 n + A185705 (A001835 n).toNat

end

end A312413.P15679506098068795933

/-! ## A312413.P7172043675972508539

`A311699(n)+A287418(A138265(n))`
-/

namespace A312413.P7172043675972508539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311699 n + A287418 (A138265 n).toNat

end

end A312413.P7172043675972508539

/-! ## A312413.P16028910292792141626

`A316345(A129988(n))+A311773(n)`
-/

namespace A312413.P16028910292792141626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316345 (A129988 n).toNat + A311773 n

end

end A312413.P16028910292792141626

/-! ## A312413.P10391073718658733684

`A341389(A001562(n+1))+A301672(n)`
-/

namespace A312413.P10391073718658733684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A001562 (n + 1)).toNat + A301672 n

end

end A312413.P10391073718658733684

/-! ## A312413.P3468021368731250173

`A353932(A285981(n)+2*A032058(n)-1)+A083031(n+1)`
-/

namespace A312413.P3468021368731250173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353932 (A285981 n + (2 * A032058 n - 1)).toNat + A083031 (n + 1)

end

end A312413.P3468021368731250173

/-!
# A312414: Coordination sequence Gal.6.505.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312414, there is no canonical definition to state claims against.
-/

/-! ## A312414.P17075107286213674993

`record[A312415(n)/A103376(n+1)]`
-/

namespace A312414.P17075107286213674993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312415 n : ℚ) / (A103376 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312414.P17075107286213674993

/-! ## A312414.P1004008028757734951

`∏{e}[5^n, A312415(#)]`
-/

namespace A312414.P1004008028757734951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A312415 (Nat.factorization (f1 n) p)

end

end A312414.P1004008028757734951

/-! ## A312414.P1625447141917965915

`A312415(A004892(n+1))`
-/

namespace A312414.P1625447141917965915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312415 (A004892 (n + 1)).toNat

end

end A312414.P1625447141917965915

/-! ## A312414.P3032768688209792098

`A312415(A004903(n+1))`
-/

namespace A312414.P3032768688209792098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312415 (A004903 (n + 1)).toNat

end

end A312414.P3032768688209792098

/-! ## A312414.P9383554041025504690

`A312415(A004914(n+1))`
-/

namespace A312414.P9383554041025504690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312415 (A004914 (n + 1)).toNat

end

end A312414.P9383554041025504690

/-!
# A312417: Coordination sequence Gal.5.251.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312417, there is no canonical definition to state claims against.
-/

/-! ## A312417.P9037047949946538706

`xor(A275964(A003946(n)), A312503(n))`
-/

namespace A312417.P9037047949946538706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A275964 (A003946 n).toNat) (A312503 n)

end

end A312417.P9037047949946538706

/-! ## A312417.P17493114551718334891

`xor(A008579(n), A046660(A173006(n+2)))`
-/

namespace A312417.P17493114551718334891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008579 n) (A046660 (A173006 (n + 2)).toNat)

end

end A312417.P17493114551718334891

/-! ## A312417.P14199582046784903989

`A312404(or(A227549(n+1), A260728(3*n+4)))`
-/

namespace A312417.P14199582046784903989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312404 (Int.lor (A227549 (n + 1)) (A260728 (3 * n + 4))).toNat

end

end A312417.P14199582046784903989

/-! ## A312417.P5946764405496512946

`A312412(or(A227549(n+1), A260728(3*n+4)))`
-/

namespace A312417.P5946764405496512946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312412 (Int.lor (A227549 (n + 1)) (A260728 (3 * n + 4))).toNat

end

end A312417.P5946764405496512946

/-! ## A312417.P11300562262056925302

`or(4*n, A280700(A344901(∑[n])))`
-/

namespace A312417.P11300562262056925302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (A280700 (A344901 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A312417.P11300562262056925302

/-!
# A312418: Coordination sequence Gal.6.287.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312418, there is no canonical definition to state claims against.
-/

/-! ## A312418.P3912199678666132287

`A311790(n)+A267635(A056612(n+1))`
-/

namespace A312418.P3912199678666132287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 n + A267635 (A056612 (n + 1)).toNat

end

end A312418.P3912199678666132287

/-! ## A312418.P607572743349680856

`A311791(n)+A267635(A056612(n+1))`
-/

namespace A312418.P607572743349680856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 n + A267635 (A056612 (n + 1)).toNat

end

end A312418.P607572743349680856

/-! ## A312418.P3824602638195705127

`A328615(n+1)+A311790(A062399(n))`
-/

namespace A312418.P3824602638195705127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (n + 1) + A311790 (A062399 n).toNat

end

end A312418.P3824602638195705127

/-! ## A312418.P442180616600267361

`A312258(n)+A186034(A299523(n+1))`
-/

namespace A312418.P442180616600267361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312258 n + A186034 (A299523 (n + 1)).toNat

end

end A312418.P442180616600267361

/-!
# A312419: Coordination sequence Gal.6.184.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312419, there is no canonical definition to state claims against.
-/

/-! ## A312419.P3818510378693090876

`A311807(n)+A276794(n²²)`
-/

namespace A312419.P3818510378693090876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A276794 ((n ^ 2) ^ 2)

end

end A312419.P3818510378693090876

/-! ## A312419.P11004869370703422751

`A313975(n)-A324662(ceil(2/3*n²))`
-/

namespace A312419.P11004869370703422751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n - A324662 ⌈(2 : ℚ) / 3 * (n ^ 2 : ℚ)⌉.toNat

end

end A312419.P11004869370703422751

/-! ## A312419.P35882999235793896

`A311762(n)+A049240(A006395(n))`
-/

namespace A312419.P35882999235793896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311762 n + A049240 (A006395 n).toNat

end

end A312419.P35882999235793896

/-! ## A312419.P7179958096684458334

`A311766(n)+A175801(A189161(n+1))`
-/

namespace A312419.P7179958096684458334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311766 n + A175801 (A189161 (n + 1)).toNat

end

end A312419.P7179958096684458334

/-! ## A312419.P12624016987904463685

`A291154(A004277(n))+A000194(n)`
-/

namespace A312419.P12624016987904463685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (A004277 n).toNat + A000194 n

end

end A312419.P12624016987904463685

/-!
# A312420: Coordination sequence Gal.5.163.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312420, there is no canonical definition to state claims against.
-/

/-! ## A312420.P13780551060417533435

`or(A098159(2*n+1)%3, A311269(n))`
-/

namespace A312420.P13780551060417533435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A098159 (2 * n + 1)) 3) (A311269 n)

end

end A312420.P13780551060417533435

/-! ## A312420.P9812093836702720019

`A312426(n)-A055641(A111277(n))`
-/

namespace A312420.P9812093836702720019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312426 n - A055641 (A111277 n).toNat

end

end A312420.P9812093836702720019

/-! ## A312420.P10454123677900876610

`A315044(n)-A001221(A006134(n))-char[6]`
-/

namespace A312420.P10454123677900876610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315044 n - A001221 (A006134 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312420.P10454123677900876610

/-! ## A312420.P4097460774371731500

`A189628(3^n)+A010064(n+1)`
-/

namespace A312420.P4097460774371731500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (3 ^ n) + A010064 (n + 1)

end

end A312420.P4097460774371731500

/-! ## A312420.P6437804298188297289

`A028836(n+1)+A001222(4^n)`
-/

namespace A312420.P6437804298188297289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028836 (n + 1) + A001222 (4 ^ n)

end

end A312420.P6437804298188297289

/-!
# A312421: Coordination sequence Gal.6.291.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312421, there is no canonical definition to state claims against.
-/

/-! ## A312421.P17537544293744088311

`A311780(n)+A010059(A002526(n))`
-/

namespace A312421.P17537544293744088311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311780 n + A010059 (A002526 n).toNat

end

end A312421.P17537544293744088311

/-! ## A312421.P2291831235146076737

`A311791(n)+A037832(A154143(n+1))`
-/

namespace A312421.P2291831235146076737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 n + A037832 (A154143 (n + 1)).toNat

end

end A312421.P2291831235146076737

/-! ## A312421.P15404995200805921316

`A312419(n)+A008963(A185236(2*n+1))`
-/

namespace A312421.P15404995200805921316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312419 n + A008963 (A185236 (2 * n + 1)).toNat

end

end A312421.P15404995200805921316

/-! ## A312421.P10982196292313461604

`∏{e}[5^n, A312580(#)]-char[A038608(2*(n+2))]`
-/

namespace A312421.P10982196292313461604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A312580 (Nat.factorization (f1 n) p) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A312421.P10982196292313461604

/-! ## A312421.P4976881607219173972

`A312405(n)+A267636(A287257(n))`
-/

namespace A312421.P4976881607219173972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312405 n + A267636 (A287257 n).toNat

end

end A312421.P4976881607219173972

/-!
# A312422: Coordination sequence Gal.4.51.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312422, there is no canonical definition to state claims against.
-/

/-! ## A312422.P11566001811911047002

`A312431(n)-A103675(A159221(n+2))`
-/

namespace A312422.P11566001811911047002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312431 n - A103675 (A159221 (n + 2)).toNat

end

end A312422.P11566001811911047002

/-! ## A312422.P8934060545396468046

`A312428(n)-A025430(A209401(3*(n+1)))`
-/

namespace A312422.P8934060545396468046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312428 n - A025430 (A209401 (3 * (n + 1))).toNat

end

end A312422.P8934060545396468046

/-! ## A312422.P14239491258353596116

`A312350(n)+A056563(A056570(n))`
-/

namespace A312422.P14239491258353596116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312350 n + A056563 (A056570 n).toNat

end

end A312422.P14239491258353596116

/-! ## A312422.P1947629969595747511

`A250120(n)-A037834(A151281(n))`
-/

namespace A312422.P1947629969595747511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A037834 (A151281 n).toNat

end

end A312422.P1947629969595747511

/-! ## A312422.P16027211776570485792

`A250120(n)-A333224(A059973(n))`
-/

namespace A312422.P16027211776570485792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A333224 (A059973 n).toNat

end

end A312422.P16027211776570485792

/-!
# A312423: Coordination sequence Gal.6.275.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312423, there is no canonical definition to state claims against.
-/

/-! ## A312423.P18217716133021390689

`xor(A001877(A218481(n)), A314473(n))`
-/

namespace A312423.P18217716133021390689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001877 (A218481 n).toNat) (A314473 n)

end

end A312423.P18217716133021390689

/-! ## A312423.P17025145643177523155

`A311762(n)+A124760(A080040(n))`
-/

namespace A312423.P17025145643177523155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311762 n + A124760 (A080040 n).toNat

end

end A312423.P17025145643177523155

/-! ## A312423.P3823509978959641325

`A312475(n)-A079979(A007052(n))`
-/

namespace A312423.P3823509978959641325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n - A079979 (A007052 n).toNat

end

end A312423.P3823509978959641325

/-! ## A312423.P6987517785817375817

`A311772(n)+A065202(A174701(n+1))`
-/

namespace A312423.P6987517785817375817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311772 n + A065202 (A174701 (n + 1)).toNat

end

end A312423.P6987517785817375817

/-! ## A312423.P14679891391284846210

`A310370(n)-A102683(A068812(n+1))`
-/

namespace A312423.P14679891391284846210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310370 n - A102683 (A068812 (n + 1)).toNat

end

end A312423.P14679891391284846210

/-!
# A312424: Coordination sequence Gal.6.170.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312424, there is no canonical definition to state claims against.
-/

/-! ## A312424.P16612606270529050473

`or(A312413(A227549(n+1)), A312418(n))`
-/

namespace A312424.P16612606270529050473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312413 (A227549 (n + 1)).toNat) (A312418 n)

end

end A312424.P16612606270529050473

/-! ## A312424.P4604222079162839319

`A008574(n)+A001222(A078591(n))`
-/

namespace A312424.P4604222079162839319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A078591 n).toNat

end

end A312424.P4604222079162839319

/-! ## A312424.P13567524899341080822

`A008574(n)+A001222(A131965(n))`
-/

namespace A312424.P13567524899341080822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A131965 n).toNat

end

end A312424.P13567524899341080822

/-! ## A312424.P9299416730765525169

`A301672(n)+A014306(A000166(n))`
-/

namespace A312424.P9299416730765525169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A014306 (A000166 n).toNat

end

end A312424.P9299416730765525169

/-! ## A312424.P5335106197244127823

`A301672(n)+A010060(A018934(n))`
-/

namespace A312424.P5335106197244127823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A010060 (A018934 n).toNat

end

end A312424.P5335106197244127823

/-!
# A312425: Coordination sequence Gal.6.168.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312425, there is no canonical definition to state claims against.
-/

/-! ## A312425.P616283367732026247

`A313026(n)-A277007(A192872(n))`
-/

namespace A312425.P616283367732026247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n - A277007 (A192872 n).toNat

end

end A312425.P616283367732026247

/-! ## A312425.P4508519135530280684

`A312433(n)-A014135(A000108(n))`
-/

namespace A312425.P4508519135530280684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312433 n - A014135 (A000108 n).toNat

end

end A312425.P4508519135530280684

/-! ## A312425.P3638103466051436145

`A312433(n)-A055641(A111277(n))`
-/

namespace A312425.P3638103466051436145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312433 n - A055641 (A111277 n).toNat

end

end A312425.P3638103466051436145

/-! ## A312425.P16802801075124344430

`A301293(n)-A188257(A033649(n))`
-/

namespace A312425.P16802801075124344430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A188257 (A033649 n).toNat

end

end A312425.P16802801075124344430

/-! ## A312425.P17184181192947900809

`A311783(n)+A156660(A243338(n+1))`
-/

namespace A312425.P17184181192947900809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311783 n + A156660 (A243338 (n + 1)).toNat

end

end A312425.P17184181192947900809

/-!
# A312426: Coordination sequence Gal.6.434.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312426, there is no canonical definition to state claims against.
-/

/-! ## A312426.P5380305848294758484

`A312420(n)+A129251(A000108(n))`
-/

namespace A312426.P5380305848294758484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312420 n + A129251 (A000108 n).toNat

end

end A312426.P5380305848294758484

/-! ## A312426.P14891956891448147133

`A312420(n)+A055641(A111277(n))`
-/

namespace A312426.P14891956891448147133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312420 n + A055641 (A111277 n).toNat

end

end A312426.P14891956891448147133

/-! ## A312426.P3175370100171220418

`A315044(n)-A001221(A006134(n))`
-/

namespace A312426.P3175370100171220418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315044 n - A001221 (A006134 n).toNat

end

end A312426.P3175370100171220418

/-! ## A312426.P4197834650516688498

`xor(A055641(A148612(n)), A312433(n))`
-/

namespace A312426.P4197834650516688498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055641 (A148612 n).toNat) (A312433 n)

end

end A312426.P4197834650516688498

/-! ## A312426.P12421118565654974725

`A313027(n)-A021913(∑[A066524(n)])`
-/

namespace A312426.P12421118565654974725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313027 n - A021913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A312426.P12421118565654974725

/-!
# A312427: Coordination sequence Gal.6.63.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312427, there is no canonical definition to state claims against.
-/

/-! ## A312427.P14634544843768751943

`A312420(n)-A178779(A253181(n+1))`
-/

namespace A312427.P14634544843768751943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312420 n - A178779 (A253181 (n + 1)).toNat

end

end A312427.P14634544843768751943

/-! ## A312427.P9036534195002497650

`A250120(n)-A001876(round(∑[3^((n-1)%(n+2))]))`
-/

namespace A312427.P9036534195002497650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001876 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A312427.P9036534195002497650

/-! ## A312427.P2193892049258826549

`A250120(n)-A001876(A003462(n))`
-/

namespace A312427.P2193892049258826549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001876 (A003462 n).toNat

end

end A312427.P2193892049258826549

/-! ## A312427.P3331283554652621562

`A250120(n)-A125184(A081714(n))`
-/

namespace A312427.P3331283554652621562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A125184 (A081714 n).toNat

end

end A312427.P3331283554652621562

/-! ## A312427.P17291010969513840673

`A250120(n)-A001876(record[A255044(n)])`
-/

namespace A312427.P17291010969513840673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001876 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A312427.P17291010969513840673

/-!
# A312428: Coordination sequence Gal.6.293.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312428, there is no canonical definition to state claims against.
-/

/-! ## A312428.P11399974685507477640

`A312483(n)-A238469(A119070(n+1))`
-/

namespace A312428.P11399974685507477640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312483 n - A238469 (A119070 (n + 1)).toNat

end

end A312428.P11399974685507477640

/-! ## A312428.P13816970238607775444

`A312422(n)+A025430(A209401(3*(n+1)))`
-/

namespace A312428.P13816970238607775444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312422 n + A025430 (A209401 (3 * (n + 1))).toNat

end

end A312428.P13816970238607775444

/-! ## A312428.P1735380169875398563

`∑[dr(A000203(A093858(n)))]`
-/

namespace A312428.P1735380169875398563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000203 (A093858 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312428.P1735380169875398563

/-! ## A312428.P12192138327437090686

`A311778(n)+A083894(A000244(n))`
-/

namespace A312428.P12192138327437090686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311778 n + A083894 (A000244 n).toNat

end

end A312428.P12192138327437090686

/-! ## A312428.P6039678844699650181

`A250120(n)-A092523(A092493(n+1))`
-/

namespace A312428.P6039678844699650181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A092523 (A092493 (n + 1)).toNat

end

end A312428.P6039678844699650181

/-!
# A312429: Coordination sequence Gal.5.164.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312429, there is no canonical definition to state claims against.
-/

/-! ## A312429.P9688074041728714042

`A312494(n)-A011745(A008517(2*n+3))`
-/

namespace A312429.P9688074041728714042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312494 n - A011745 (A008517 (2 * n + 3)).toNat

end

end A312429.P9688074041728714042

/-! ## A312429.P8870168788250874307

`A313198(n)-A001221(A006154(n))`
-/

namespace A312429.P8870168788250874307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313198 n - A001221 (A006154 n).toNat

end

end A312429.P8870168788250874307

/-! ## A312429.P15913689115754823501

`A312530(n)-A257992(A191814(n))`
-/

namespace A312429.P15913689115754823501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A257992 (A191814 n).toNat

end

end A312429.P15913689115754823501

/-! ## A312429.P13378294016099392586

`xor(A107782(A148701(n)), A312517(n))`
-/

namespace A312429.P13378294016099392586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107782 (A148701 n).toNat) (A312517 n)

end

end A312429.P13378294016099392586

/-! ## A312429.P4158486390353284933

`A312494(n)-A141728(A310701(3*n+4))`
-/

namespace A312429.P4158486390353284933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312494 n - A141728 (A310701 (3 * n + 4)).toNat

end

end A312429.P4158486390353284933

/-!
# A312430: Coordination sequence Gal.6.534.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312430, there is no canonical definition to state claims against.
-/

/-! ## A312430.P14460586684156233562

`A312431(n)-A213911(A324095(n+1))`
-/

namespace A312430.P14460586684156233562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312431 n - A213911 (A324095 (n + 1)).toNat

end

end A312430.P14460586684156233562

/-! ## A312430.P6003577775023221486

`A312431(A062399(n))`
-/

namespace A312430.P6003577775023221486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312431 (A062399 n).toNat

end

end A312430.P6003577775023221486

/-! ## A312430.P15003523313290270143

`A312431(A120126(n))`
-/

namespace A312430.P15003523313290270143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312431 (A120126 n).toNat

end

end A312430.P15003523313290270143

/-! ## A312430.P2416875682657633685

`A312431(A351870(n))`
-/

namespace A312430.P2416875682657633685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312431 (A351870 n).toNat

end

end A312430.P2416875682657633685

/-! ## A312430.P15831582290822039476

`record[A312431(A319573(n))]`
-/

namespace A312430.P15831582290822039476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312431 (A319573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312430.P15831582290822039476

/-!
# A312431: Coordination sequence Gal.6.520.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312431, there is no canonical definition to state claims against.
-/

/-! ## A312431.P8446035373334604493

`A008579(n)-A010052(A146205(n+1))`
-/

namespace A312431.P8446035373334604493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A010052 (A146205 (n + 1)).toNat

end

end A312431.P8446035373334604493

/-! ## A312431.P3696373111365991542

`A008579(n)-A120936(A056627(n+1))`
-/

namespace A312431.P3696373111365991542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A120936 (A056627 (n + 1)).toNat

end

end A312431.P3696373111365991542

/-! ## A312431.P16155267140974940797

`A008579(n)-A289035(A129339(n+1))`
-/

namespace A312431.P16155267140974940797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A289035 (A129339 (n + 1)).toNat

end

end A312431.P16155267140974940797

/-! ## A312431.P2699521726806907663

`A008579(n)-A093385(A000217(n+5))`
-/

namespace A312431.P2699521726806907663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A093385 (A000217 (n + 5)).toNat

end

end A312431.P2699521726806907663

/-! ## A312431.P17627121915006023957

`A008579(n)-A011746(A080877(n))`
-/

namespace A312431.P17627121915006023957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A011746 (A080877 n).toNat

end

end A312431.P17627121915006023957

/-!
# A312432: Coordination sequence Gal.6.277.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312432, there is no canonical definition to state claims against.
-/

/-! ## A312432.P2957104147245605815

`A312505(n)-A244465(A003418(n))`
-/

namespace A312432.P2957104147245605815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312505 n - A244465 (A003418 n).toNat

end

end A312432.P2957104147245605815

/-! ## A312432.P15489922046048679974

`A250120(n)-A330958(n²)`
-/

namespace A312432.P15489922046048679974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A330958 (n ^ 2)

end

end A312432.P15489922046048679974

/-! ## A312432.P467801815270581850

`A072154(2*n)-A330957(n²)`
-/

namespace A312432.P467801815270581850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A330957 (n ^ 2)

end

end A312432.P467801815270581850

/-! ## A312432.P17705940688217989074

`A250120(n)-A001221(A041445(n))`
-/

namespace A312432.P17705940688217989074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A041445 n).toNat

end

end A312432.P17705940688217989074

/-! ## A312432.P18355016188359396288

`A250120(n)-A267116(A018031(n))`
-/

namespace A312432.P18355016188359396288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A267116 (A018031 n).toNat

end

end A312432.P18355016188359396288

/-!
# A312433: Coordination sequence Gal.5.190.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312433, there is no canonical definition to state claims against.
-/

/-! ## A312433.P3237788125989055622

`A301293(n)-A080846(A000578(2*n+1))`
-/

namespace A312433.P3237788125989055622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A080846 (A000578 (2 * n + 1)).toNat

end

end A312433.P3237788125989055622

/-! ## A312433.P16515374110850816336

`A312031(n)+A007814(A148612(n))`
-/

namespace A312433.P16515374110850816336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312031 n + A007814 (A148612 n).toNat

end

end A312433.P16515374110850816336

/-! ## A312433.P11647626950237435773

`A312425(n)+A055641(A111277(n))`
-/

namespace A312433.P11647626950237435773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312425 n + A055641 (A111277 n).toNat

end

end A312433.P11647626950237435773

/-! ## A312433.P9416869362206195370

`A311889(n)+A128937(A049606(n))`
-/

namespace A312433.P9416869362206195370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311889 n + A128937 (A049606 n).toNat

end

end A312433.P9416869362206195370

/-! ## A312433.P1729620729366531757

`A312031(n)+A226474(A000111(n))`
-/

namespace A312433.P1729620729366531757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312031 n + A226474 (A000111 n).toNat

end

end A312433.P1729620729366531757

/-!
# A312434: Coordination sequence Gal.4.95.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312434, there is no canonical definition to state claims against.
-/

/-! ## A312434.P12166780779950544641

`A313874(n)-A001222(A081567(n))`
-/

namespace A312434.P12166780779950544641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313874 n - A001222 (A081567 n).toNat

end

end A312434.P12166780779950544641

/-! ## A312434.P2474385390647186386

`A312506(n)-A125005(A045918(n))`
-/

namespace A312434.P2474385390647186386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n - A125005 (A045918 n).toNat

end

end A312434.P2474385390647186386

/-! ## A312434.P7602510813054250746

`A250120(n)-A373364(A370477(n))`
-/

namespace A312434.P7602510813054250746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A373364 (A370477 n).toNat

end

end A312434.P7602510813054250746

/-! ## A312434.P5856908729176007364

`A089869(A312506(n*A053632(n)))`
-/

namespace A312434.P5856908729176007364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A312506 ((n : ℤ) * A053632 n).toNat).toNat

end

end A312434.P5856908729176007364

/-! ## A312434.P6817679541311273008

`A089869(A312506(n)^A053632(n))`
-/

namespace A312434.P6817679541311273008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (SequenceMachineLib.roundAway ((A312506 n : ℚ) ^ (A053632 n : ℤ))).toNat

end

end A312434.P6817679541311273008

/-!
# A312435: Coordination sequence Gal.5.150.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312435, there is no canonical definition to state claims against.
-/

/-! ## A312435.P4665782082075546068

`A253620(n+1)+A253572(A253629(3*n+1))`
-/

namespace A312435.P4665782082075546068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253620 (n + 1) + A253572 (A253629 (3 * n + 1)).toNat

end

end A312435.P4665782082075546068

/-!
# A312436: Coordination sequence Gal.4.50.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312436, the canonical program `A312436.P6318237834392598981` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312436 has offset 0).

The definition of A312436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312436.P420279562047951991

`2*A312014(n)-A311559(n)`
-/

namespace A312436.P420279562047951991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312014 n - A311559 n

end

end A312436.P420279562047951991

namespace A312436

/-- `2*A312014(n)-A311559(n)` -/
def P420279562047951991.Spec : Prop :=
  ∀ n, P420279562047951991.a n = A312436 n

end A312436

/-! ## A312436.P3904418076366645387

`A004277(A312014(n))-A311559(n)`
-/

namespace A312436.P3904418076366645387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312014 n).toNat - A311559 n

end

end A312436.P3904418076366645387

namespace A312436

/-- `A004277(A312014(n))-A311559(n)` -/
def P3904418076366645387.Spec : Prop :=
  ∀ n, P3904418076366645387.a n = A312436 n

end A312436

/-! ## A312436.P6318237834392598981

`2*A313683(n)-A315634(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A312436

/-- `2*A313683(n)-A315634(n)` -/
def P6318237834392598981.Spec : Prop :=
  ∀ n, P6318237834392598981.a n = A312436 n

theorem P6318237834392598981.correct : P6318237834392598981.Spec := by
  intro n
  simp only [A312436]

end A312436

/-! ## A312436.P15246004983284645953

`A315634(n)-A005843(A315634(n)-A313683(n))`
-/

namespace A312436.P15246004983284645953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315634 n - A005843 (A315634 n - A313683 n).toNat

end

end A312436.P15246004983284645953

namespace A312436

/-- `A315634(n)-A005843(A315634(n)-A313683(n))` -/
def P15246004983284645953.Spec : Prop :=
  ∀ n, P15246004983284645953.a n = A312436 n

end A312436

/-! ## A312436.P6758809256654335164

`A004277(A313683(n))-A315634(n)`
-/

namespace A312436.P6758809256654335164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313683 n).toNat - A315634 n

end

end A312436.P6758809256654335164

namespace A312436

/-- `A004277(A313683(n))-A315634(n)` -/
def P6758809256654335164.Spec : Prop :=
  ∀ n, P6758809256654335164.a n = A312436 n

end A312436

/-!
# A312437: Coordination sequence Gal.4.51.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312437, there is no canonical definition to state claims against.
-/

/-! ## A312437.P11543128712682785662

`or(A311571(n), A347715(7*(n+1)))`
-/

namespace A312437.P11543128712682785662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311571 n) (A347715 (7 * (n + 1)))

end

end A312437.P11543128712682785662

/-! ## A312437.P8391165072225560372

`and(A312441(A062399(n)), A312447(n))`
-/

namespace A312437.P8391165072225560372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A312441 (A062399 n).toNat) (A312447 n)

end

end A312437.P8391165072225560372

/-! ## A312437.P15378744147551811958

`and(A312443(n), A312447(A062399(n)))`
-/

namespace A312437.P15378744147551811958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A312443 n) (A312447 (A062399 n).toNat)

end

end A312437.P15378744147551811958

/-! ## A312437.P10929866758321015689

`A353354(A149175(n))+A312042(n)`
-/

namespace A312437.P10929866758321015689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A149175 n).toNat + A312042 n

end

end A312437.P10929866758321015689

/-! ## A312437.P301640197929807297

`A312441(n)-A056926(A053625(n))`
-/

namespace A312437.P301640197929807297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312441 n - A056926 (A053625 n).toNat

end

end A312437.P301640197929807297

/-!
# A312438: Coordination sequence Gal.6.182.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312438, there is no canonical definition to state claims against.
-/

/-! ## A312438.P12630970141740536240

`A312443(n)-A328891(A141214(n))`
-/

namespace A312438.P12630970141740536240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312443 n - A328891 (A141214 n).toNat

end

end A312438.P12630970141740536240

/-! ## A312438.P4117424581056316679

`record[A008579(n)/∑[A267417(n)]]`
-/

namespace A312438.P4117424581056316679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008579 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312438.P4117424581056316679

/-! ## A312438.P6524279256691492555

`A311791(n)+A107279(A105867(n))`
-/

namespace A312438.P6524279256691492555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 n + A107279 (A105867 n).toNat

end

end A312438.P6524279256691492555

/-! ## A312438.P16342495732643729508

`A311792(n)+A107279(A105867(n))`
-/

namespace A312438.P16342495732643729508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311792 n + A107279 (A105867 n).toNat

end

end A312438.P16342495732643729508

/-! ## A312438.P17534829284563522632

`A250120(n)-A007895(A180627(n+1))`
-/

namespace A312438.P17534829284563522632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A007895 (A180627 (n + 1)).toNat

end

end A312438.P17534829284563522632

/-!
# A312439: Coordination sequence Gal.3.29.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312439, there is no canonical definition to state claims against.
-/

/-! ## A312439.P10834913839243642660

`A312440(A062399(n))`
-/

namespace A312439.P10834913839243642660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 (A062399 n).toNat

end

end A312439.P10834913839243642660

/-! ## A312439.P2206481913047473733

`A312440(A120126(n))`
-/

namespace A312439.P2206481913047473733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 (A120126 n).toNat

end

end A312439.P2206481913047473733

/-! ## A312439.P8757370498361440443

`A312440(A351870(n))`
-/

namespace A312439.P8757370498361440443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 (A351870 n).toNat

end

end A312439.P8757370498361440443

/-! ## A312439.P12131736258945792256

`record[A312440(A319573(n))]`
-/

namespace A312439.P12131736258945792256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 (A319573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312439.P12131736258945792256

/-! ## A312439.P11750741436136800940

`A312440(n)+A051767(A086645(n))`
-/

namespace A312439.P11750741436136800940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312440 n + A051767 (A086645 n).toNat

end

end A312439.P11750741436136800940

/-!
# A312441: Coordination sequence Gal.6.273.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312441, there is no canonical definition to state claims against.
-/

/-! ## A312441.P9020276698458343633

`A345952(A241591(n+1))+A312418(n)`
-/

namespace A312441.P9020276698458343633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345952 (A241591 (n + 1)).toNat + A312418 n

end

end A312441.P9020276698458343633

/-! ## A312441.P11929891121789328556

`∑[A098037(∑[A100227(n)])]`
-/

namespace A312441.P11929891121789328556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098037 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312441.P11929891121789328556

/-! ## A312441.P12871154179679997140

`A144191(A103481(n))+A008574(n)`
-/

namespace A312441.P12871154179679997140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144191 (A103481 n).toNat + A008574 n

end

end A312441.P12871154179679997140

/-! ## A312441.P3006194506121211578

`A312041(n)+A011741(A000583(n))`
-/

namespace A312441.P3006194506121211578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312041 n + A011741 (A000583 n).toNat

end

end A312441.P3006194506121211578

/-! ## A312441.P14249363938204096371

`A312042(n)+A011741(A000583(n))`
-/

namespace A312441.P14249363938204096371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312042 n + A011741 (A000583 n).toNat

end

end A312441.P14249363938204096371

/-!
# A312442: Coordination sequence Gal.5.108.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312442, there is no canonical definition to state claims against.
-/

/-! ## A312442.P6414525570904951836

`A312443(n)-A107279(A146681(n+1))`
-/

namespace A312442.P6414525570904951836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312443 n - A107279 (A146681 (n + 1)).toNat

end

end A312442.P6414525570904951836

/-! ## A312442.P12473554349469750730

`A311722(n)+A263860(A311576(2*(n+2)))`
-/

namespace A312442.P12473554349469750730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311722 n + A263860 (A311576 (2 * (n + 2))).toNat

end

end A312442.P12473554349469750730

/-! ## A312442.P15186556747940956264

`record[A313981(n)-ceil(char[2]+(n/2)²)]`
-/

namespace A312442.P15186556747940956264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313981 n - ⌈((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℚ) + ((n : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312442.P15186556747940956264

/-!
# A312443: Coordination sequence Gal.6.166.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312443, there is no canonical definition to state claims against.
-/

/-! ## A312443.P10239577128593264618

`A328891(A141214(n))+A312438(n)`
-/

namespace A312443.P10239577128593264618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328891 (A141214 n).toNat + A312438 n

end

end A312443.P10239577128593264618

/-! ## A312443.P16932992277388939106

`A311861(n)-A057078(A120588(n))`
-/

namespace A312443.P16932992277388939106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n - A057078 (A120588 n).toNat

end

end A312443.P16932992277388939106

/-! ## A312443.P5149592936987481016

`or(A312437(A062399(n)), A312442(n))`
-/

namespace A312443.P5149592936987481016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312437 (A062399 n).toNat) (A312442 n)

end

end A312443.P5149592936987481016

/-! ## A312443.P8303275741174865593

`A312286(n)+A214411(A017294(n))`
-/

namespace A312443.P8303275741174865593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312286 n + A214411 (A017294 n).toNat

end

end A312443.P8303275741174865593

/-! ## A312443.P16010901081236869198

`A342019(A086611(n))+A312365(n)`
-/

namespace A312443.P16010901081236869198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342019 (A086611 n).toNat + A312365 n

end

end A312443.P16010901081236869198

/-!
# A312444: Coordination sequence Gal.6.186.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312444, there is no canonical definition to state claims against.
-/

/-! ## A312444.P4167441916095806698

`A329313(A242527(n+1))+A312346(n)`
-/

namespace A312444.P4167441916095806698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A242527 (n + 1)).toNat + A312346 n

end

end A312444.P4167441916095806698

/-! ## A312444.P14367706953035145775

`A313031(A062399(n))-A206825(n+2)`
-/

namespace A312444.P14367706953035145775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313031 (A062399 n).toNat - A206825 (n + 2)

end

end A312444.P14367706953035145775

/-! ## A312444.P9338776651397705383

`A312479(n)-A288707(A120458(2*n))`
-/

namespace A312444.P9338776651397705383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312479 n - A288707 (A120458 (2 * n)).toNat

end

end A312444.P9338776651397705383

/-! ## A312444.P15075219060521558068

`A312480(n)-A288707(A120458(2*n))`
-/

namespace A312444.P15075219060521558068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312480 n - A288707 (A120458 (2 * n)).toNat

end

end A312444.P15075219060521558068

/-! ## A312444.P14125292512511033466

`A078175(3*n+1)-A124769(A001383(n))`
-/

namespace A312444.P14125292512511033466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078175 (3 * n + 1) - A124769 (A001383 n).toNat

end

end A312444.P14125292512511033466

/-!
# A312445: Coordination sequence Gal.5.107.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312445, there is no canonical definition to state claims against.
-/

/-! ## A312445.P9986743080544961084

`A312455(n)+A311154(n)-A311181(n)`
-/

namespace A312445.P9986743080544961084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312455 n + A311154 n - A311181 n

end

end A312445.P9986743080544961084

/-! ## A312445.P7254562579556545803

`A312456(n)-A046660(A173006(n))`
-/

namespace A312445.P7254562579556545803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n - A046660 (A173006 n).toNat

end

end A312445.P7254562579556545803

/-! ## A312445.P9135346823413751747

`A312456(n)-A331416(A199256(n+1))`
-/

namespace A312445.P9135346823413751747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n - A331416 (A199256 (n + 1)).toNat

end

end A312445.P9135346823413751747

/-! ## A312445.P17280146671176836126

`A312464(n)-A001221(A053497(n))`
-/

namespace A312445.P17280146671176836126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n - A001221 (A053497 n).toNat

end

end A312445.P17280146671176836126

/-! ## A312445.P12960694101714167097

`A312456(n)-A046660(A176631(n))`
-/

namespace A312445.P12960694101714167097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n - A046660 (A176631 n).toNat

end

end A312445.P12960694101714167097

/-!
# A312446: Coordination sequence Gal.5.108.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312446, there is no canonical definition to state claims against.
-/

/-! ## A312446.P3691638568228016441

`and(A312449(A062399(n)), A312453(n))`
-/

namespace A312446.P3691638568228016441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A312449 (A062399 n).toNat) (A312453 n)

end

end A312446.P3691638568228016441

/-! ## A312446.P8984389186529688762

`A350951(A316822(n+1))+A008574(n)`
-/

namespace A312446.P8984389186529688762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350951 (A316822 (n + 1)).toNat + A008574 n

end

end A312446.P8984389186529688762

/-! ## A312446.P12351646800920995405

`or(A008574(n), A210850(A250973(n+1)))`
-/

namespace A312446.P12351646800920995405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A210850 (A250973 (n + 1)).toNat)

end

end A312446.P12351646800920995405

/-! ## A312446.P7506430592099241982

`or(A210850(A250973(n+1)), A311340(n))`
-/

namespace A312446.P7506430592099241982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210850 (A250973 (n + 1)).toNat) (A311340 n)

end

end A312446.P7506430592099241982

/-! ## A312446.P12320712603161105049

`or(A245359(2*A207111(n+1)), A311340(n))`
-/

namespace A312446.P12320712603161105049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A245359 (2 * A207111 (n + 1)).toNat) (A311340 n)

end

end A312446.P12320712603161105049

/-!
# A312447: Coordination sequence Gal.4.66.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312447, there is no canonical definition to state claims against.
-/

/-! ## A312447.P17672397401991531403

`A310492(n)-A136164(A011782(n))-A086937(A122024(n))`
-/

namespace A312447.P17672397401991531403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310492 n - A136164 (A011782 n).toNat - A086937 (A122024 n).toNat

end

end A312447.P17672397401991531403

/-! ## A312447.P6055706411639035401

`or(A010894(A311535(n)), A312475(n))-A086937(A122024(n))`
-/

namespace A312447.P6055706411639035401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A311535 n).toNat + 21)) (A312475 n) - A086937 (A122024 n).toNat

end

end A312447.P6055706411639035401

/-!
# A312448: Coordination sequence Gal.5.63.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312448, there is no canonical definition to state claims against.
-/

/-! ## A312448.P16821691241999274891

`xor(A185284(4*n), A312450(n))`
-/

namespace A312448.P16821691241999274891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (4 * n)) (A312450 n)

end

end A312448.P16821691241999274891

/-! ## A312448.P13274613643902850839

`A096532(A313287(n)+A022843(n))`
-/

namespace A312448.P13274613643902850839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096532 (A313287 n + A022843 n).toNat

end

end A312448.P13274613643902850839

/-! ## A312448.P15487084386218519915

`A250120(n)-A003269(A087051(n))`
-/

namespace A312448.P15487084386218519915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A003269 (A087051 n).toNat

end

end A312448.P15487084386218519915

/-! ## A312448.P5391754395317044414

`A312449(n)-A025466(A061138(n))`
-/

namespace A312448.P5391754395317044414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312449 n - A025466 (A061138 n).toNat

end

end A312448.P5391754395317044414

/-! ## A312448.P4668088744738438236

`A312456(n)-A025469(A100396(n))`
-/

namespace A312448.P4668088744738438236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n - A025469 (A100396 n).toNat

end

end A312448.P4668088744738438236

/-!
# A312449: Coordination sequence Gal.5.122.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312449, there is no canonical definition to state claims against.
-/

/-! ## A312449.P12550253203711778293

`A319514(n)+A311804(A087051(n))`
-/

namespace A312449.P12550253203711778293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 n + A311804 (A087051 n).toNat

end

end A312449.P12550253203711778293

/-! ## A312449.P1381886660124870322

`A312475(A087051(n))-A079262(n)`
-/

namespace A312449.P1381886660124870322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 (A087051 n).toNat - A079262 n

end

end A312449.P1381886660124870322

/-! ## A312449.P10875967740430133529

`A250120(n)-∑[A179828(A004642(n))]`
-/

namespace A312449.P10875967740430133529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179828 (A004642 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312449.P10875967740430133529

/-! ## A312449.P11603037157465166011

`A250120(A227549(n+1))-A309687(n+2)`
-/

namespace A312449.P11603037157465166011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A227549 (n + 1)).toNat - A309687 (n + 2)

end

end A312449.P11603037157465166011

/-! ## A312449.P7528484978624520060

`∑[dr(A133280(A063727(n)))]`
-/

namespace A312449.P7528484978624520060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A133280 (A063727 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312449.P7528484978624520060

/-!
# A312450: Coordination sequence Gal.6.403.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312450, there is no canonical definition to state claims against.
-/

/-! ## A312450.P15465999826598154715

`A312606(n)-A083025(A148452(n))`
-/

namespace A312450.P15465999826598154715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312606 n - A083025 (A148452 n).toNat

end

end A312450.P15465999826598154715

/-! ## A312450.P13635736755013901403

`A312606(n)-A083025(A148453(n))`
-/

namespace A312450.P13635736755013901403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312606 n - A083025 (A148453 n).toNat

end

end A312450.P13635736755013901403

/-! ## A312450.P14555952543307583570

`A312477(n)-A333382(A059366(n))`
-/

namespace A312450.P14555952543307583570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312477 n - A333382 (A059366 n).toNat

end

end A312450.P14555952543307583570

/-! ## A312450.P17783016917911134766

`xor(A185284(A008574(n)), A312448(n))`
-/

namespace A312450.P17783016917911134766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A008574 n).toNat) (A312448 n)

end

end A312450.P17783016917911134766

/-! ## A312450.P2882646897176640842

`A312441(A087051(n))+A073484(n+1)`
-/

namespace A312450.P2882646897176640842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312441 (A087051 n).toNat + A073484 (n + 1)

end

end A312450.P2882646897176640842

/-!
# A312451: Coordination sequence Gal.5.62.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312451, the canonical program `A312451.P5851760151501331940` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312451 has offset 0).

The definition of A312451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312451.P3929449801135715759

`2*A311898(n)-A311334(n)`
-/

namespace A312451.P3929449801135715759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311898 n - A311334 n

end

end A312451.P3929449801135715759

namespace A312451

/-- `2*A311898(n)-A311334(n)` -/
def P3929449801135715759.Spec : Prop :=
  ∀ n, P3929449801135715759.a n = A312451 n

end A312451

/-! ## A312451.P5851760151501331940

`2*A313681(n)-A315631(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A312451

/-- `2*A313681(n)-A315631(n)` -/
def P5851760151501331940.Spec : Prop :=
  ∀ n, P5851760151501331940.a n = A312451 n

theorem P5851760151501331940.correct : P5851760151501331940.Spec := by
  intro n
  simp only [A312451]

end A312451

/-! ## A312451.P4243383069561912095

`A315631(n)-A005843(A315631(n)-A313681(n))`
-/

namespace A312451.P4243383069561912095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315631 n - A005843 (A315631 n - A313681 n).toNat

end

end A312451.P4243383069561912095

namespace A312451

/-- `A315631(n)-A005843(A315631(n)-A313681(n))` -/
def P4243383069561912095.Spec : Prop :=
  ∀ n, P4243383069561912095.a n = A312451 n

end A312451

/-! ## A312451.P2323604653006172118

`A004277(A311898(n))-A311334(n)`
-/

namespace A312451.P2323604653006172118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311898 n).toNat - A311334 n

end

end A312451.P2323604653006172118

namespace A312451

/-- `A004277(A311898(n))-A311334(n)` -/
def P2323604653006172118.Spec : Prop :=
  ∀ n, P2323604653006172118.a n = A312451 n

end A312451

/-! ## A312451.P4308410466593018621

`2*A311898(n)-(2*A312125(n)-A312669(n))`
-/

namespace A312451.P4308410466593018621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311898 n - (2 * A312125 n - A312669 n)

end

end A312451.P4308410466593018621

namespace A312451

/-- `2*A311898(n)-(2*A312125(n)-A312669(n))` -/
def P4308410466593018621.Spec : Prop :=
  ∀ n, P4308410466593018621.a n = A312451 n

end A312451

/-! ## A312451.P9477928314904130450

`A004277(A311898(n))-(2*A312125(n)-A312669(n))`
-/

namespace A312451.P9477928314904130450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311898 n).toNat - (2 * A312125 n - A312669 n)

end

end A312451.P9477928314904130450

namespace A312451

/-- `A004277(A311898(n))-(2*A312125(n)-A312669(n))` -/
def P9477928314904130450.Spec : Prop :=
  ∀ n, P9477928314904130450.a n = A312451 n

end A312451

/-! ## A312451.P3213308693369646265

`A005843(A313681(n))-A315631(n)`
-/

namespace A312451.P3213308693369646265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313681 n).toNat - A315631 n

end

end A312451.P3213308693369646265

namespace A312451

/-- `A005843(A313681(n))-A315631(n)` -/
def P3213308693369646265.Spec : Prop :=
  ∀ n, P3213308693369646265.a n = A312451 n

end A312451

/-!
# A312452: Coordination sequence Gal.5.63.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312452, there is no canonical definition to state claims against.
-/

/-! ## A312452.P8746662971904367666

`2*A311899(n)-A311335(n)`
-/

namespace A312452.P8746662971904367666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311899 n - A311335 n

end

end A312452.P8746662971904367666

/-! ## A312452.P2765665179379872964

`A004277(A311899(n))-A311335(n)`
-/

namespace A312452.P2765665179379872964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311899 n).toNat - A311335 n

end

end A312452.P2765665179379872964

/-! ## A312452.P5693455703821790174

`A312470(n)-A324827(A290556(n))`
-/

namespace A312452.P5693455703821790174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312470 n - A324827 (A290556 n).toNat

end

end A312452.P5693455703821790174

/-! ## A312452.P49988191508827838

`A312457(n)-A010893(A181854(n+1))`
-/

namespace A312452.P49988191508827838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312457 n - A010893 ((A181854 (n + 1)).toNat + 13)

end

end A312452.P49988191508827838

/-! ## A312452.P14918052282008494650

`A311580(n)+A169988(2*n+3)*A185013(n)`
-/

namespace A312452.P14918052282008494650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311580 n + A169988 (2 * n + 3) * A185013 n

end

end A312452.P14918052282008494650

/-!
# A312453: Coordination sequence Gal.4.46.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312453, there is no canonical definition to state claims against.
-/

/-! ## A312453.P4598133899392053526

`A312470(n)-A055641(A159349(n))`
-/

namespace A312453.P4598133899392053526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312470 n - A055641 (A159349 n).toNat

end

end A312453.P4598133899392053526

/-! ## A312453.P2616831304073781210

`A328752(A315171(n))-A055641(A159349(n))`
-/

namespace A312453.P2616831304073781210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328752 (A315171 n).toNat - A055641 (A159349 n).toNat

end

end A312453.P2616831304073781210

/-! ## A312453.P3119447582154627061

`A312451(n)+A137579(A000045(n))`
-/

namespace A312453.P3119447582154627061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312451 n + A137579 (A000045 n).toNat

end

end A312453.P3119447582154627061

/-! ## A312453.P11218008348805023103

`A312402(n)+A103271(A103277(n+1))`
-/

namespace A312453.P11218008348805023103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312402 n + A103271 (A103277 (n + 1)).toNat

end

end A312453.P11218008348805023103

/-! ## A312453.P4486542023660887517

`A311900(n)+A188027(A035354(n))`
-/

namespace A312453.P4486542023660887517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311900 n + A188027 (A035354 n).toNat

end

end A312453.P4486542023660887517

/-!
# A312454: Coordination sequence Gal.6.229.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312454, there is no canonical definition to state claims against.
-/

/-! ## A312454.P2195436459625795430

`A312461(n)-A055641(A002426(n))`
-/

namespace A312454.P2195436459625795430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312461 n - A055641 (A002426 n).toNat

end

end A312454.P2195436459625795430

/-! ## A312454.P13726977842870179607

`A312461(n)-A102683(A175654(n))`
-/

namespace A312454.P13726977842870179607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312461 n - A102683 (A175654 n).toNat

end

end A312454.P13726977842870179607

/-! ## A312454.P10187234090349106081

`A312461(A062399(n))-A316869(n)`
-/

namespace A312454.P10187234090349106081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312461 (A062399 n).toNat - A316869 n

end

end A312454.P10187234090349106081

/-! ## A312454.P2507244875320379501

`A312461(n)-A046810(A146681(n+1))`
-/

namespace A312454.P2507244875320379501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312461 n - A046810 (A146681 (n + 1)).toNat

end

end A312454.P2507244875320379501

/-! ## A312454.P2615715871523596623

`A312461(n)-A056594(A250942(n+1))`
-/

namespace A312454.P2615715871523596623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312461 n - A056594 (A250942 (n + 1)).toNat

end

end A312454.P2615715871523596623

/-!
# A312455: Coordination sequence Gal.6.228.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312455, there is no canonical definition to state claims against.
-/

/-! ## A312455.P18029659550519817056

`2*A312050(n)-A311579(n)`
-/

namespace A312455.P18029659550519817056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312050 n - A311579 n

end

end A312455.P18029659550519817056

/-! ## A312455.P13972869260995637308

`A004277(A312050(n))-A311579(n)`
-/

namespace A312455.P13972869260995637308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312050 n).toNat - A311579 n

end

end A312455.P13972869260995637308

/-! ## A312455.P15414486873863006454

`A016825(n)-A147735(n+1)%4`
-/

namespace A312455.P15414486873863006454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - Int.tmod (A147735 (n + 1)) 4

end

end A312455.P15414486873863006454

/-! ## A312455.P4987621374561519141

`and(A092524(A312459(n)), A312456(n))`
-/

namespace A312455.P4987621374561519141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092524 (A312459 n).toNat) (A312456 n)

end

end A312455.P4987621374561519141

/-! ## A312455.P13516446394578579845

`A312456(n)-A262889(A077999(n))`
-/

namespace A312455.P13516446394578579845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 n - A262889 (A077999 n).toNat

end

end A312455.P13516446394578579845

/-!
# A312456: Coordination sequence Gal.6.229.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312456, there is no canonical definition to state claims against.
-/

/-! ## A312456.P16122696084133759145

`2*A311906(n)-A311340(n)`
-/

namespace A312456.P16122696084133759145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311906 n - A311340 n

end

end A312456.P16122696084133759145

/-! ## A312456.P15259783189594850507

`A004277(A311906(n))-A311340(n)`
-/

namespace A312456.P15259783189594850507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311906 n).toNat - A311340 n

end

end A312456.P15259783189594850507

/-! ## A312456.P17269440789681301932

`A005843(A311906(n))+A001489(A311340(n)+n)+n`
-/

namespace A312456.P17269440789681301932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311906 n).toNat + A001489 (A311340 n + (n : ℤ)).toNat + (n : ℤ)

end

end A312456.P17269440789681301932

/-! ## A312456.P15650319202997757155

`A311583(n)+A055029(A337492(n))`
-/

namespace A312456.P15650319202997757155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311583 n + A055029 (A337492 n).toNat

end

end A312456.P15650319202997757155

/-! ## A312456.P14998018183319714414

`or(A311583(n), A338770(A000079(n)))`
-/

namespace A312456.P14998018183319714414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311583 n) (A338770 (A000079 n).toNat)

end

end A312456.P14998018183319714414

/-!
# A312457: Coordination sequence Gal.5.103.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312457, there is no canonical definition to state claims against.
-/

/-! ## A312457.P3945066859930107933

`2*A311928(n)-A311354(n)`
-/

namespace A312457.P3945066859930107933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311928 n - A311354 n

end

end A312457.P3945066859930107933

/-! ## A312457.P5182164829810299734

`2*A312066(n)-A311591(n)`
-/

namespace A312457.P5182164829810299734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312066 n - A311591 n

end

end A312457.P5182164829810299734

/-! ## A312457.P5662085712427246796

`A004277(A311928(n))-A311354(n)`
-/

namespace A312457.P5662085712427246796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311928 n).toNat - A311354 n

end

end A312457.P5662085712427246796

/-! ## A312457.P16856705823501012807

`A005843(A312066(n))-A311591(n)`
-/

namespace A312457.P16856705823501012807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312066 n).toNat - A311591 n

end

end A312457.P16856705823501012807

/-! ## A312457.P9579023296010261088

`A004277(A311928(n))-(2*A311521(n)-A311591(n))`
-/

namespace A312457.P9579023296010261088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311928 n).toNat - (2 * A311521 n - A311591 n)

end

end A312457.P9579023296010261088

/-!
# A312458: Coordination sequence Gal.6.128.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312458, there is no canonical definition to state claims against.
-/

/-! ## A312458.P14959560132197513620

`A312462(n)-A014082(A001683(n+2))`
-/

namespace A312458.P14959560132197513620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312462 n - A014082 (A001683 (n + 2)).toNat

end

end A312458.P14959560132197513620

/-! ## A312458.P847763224834800470

`A312464(n)-A248640(2*A062196(n))`
-/

namespace A312458.P847763224834800470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n - A248640 (2 * A062196 n).toNat

end

end A312458.P847763224834800470

/-! ## A312458.P17647631417857837636

`A312466(A062399(n))-char[9]`
-/

namespace A312458.P17647631417857837636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 (A062399 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312458.P17647631417857837636

/-! ## A312458.P11810035108452666126

`A312464(A120126(n))-char[9]`
-/

namespace A312458.P11810035108452666126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 (A120126 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312458.P11810035108452666126

/-! ## A312458.P9039474012919594484

`A312466(A324666(∑[n]))-char[9]`
-/

namespace A312458.P9039474012919594484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 (A324666 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312458.P9039474012919594484

/-!
# A312459: Coordination sequence Gal.6.127.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312459, there is no canonical definition to state claims against.
-/

/-! ## A312459.P18424927462331751646

`2*A311908(n)-A311341(n)`
-/

namespace A312459.P18424927462331751646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311908 n - A311341 n

end

end A312459.P18424927462331751646

/-! ## A312459.P5892703454424167522

`A004277(A311908(n))-A311341(n)`
-/

namespace A312459.P5892703454424167522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311908 n).toNat - A311341 n

end

end A312459.P5892703454424167522

/-! ## A312459.P14397657501164387314

`A092524(A312460(n))`
-/

namespace A312459.P14397657501164387314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A312460 n).toNat

end

end A312459.P14397657501164387314

/-! ## A312459.P9731013085282114834

`and(-A318403(A016733(n)), A312461(n))`
-/

namespace A312459.P9731013085282114834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A318403 (A016733 n).toNat) (A312461 n)

end

end A312459.P9731013085282114834

/-! ## A312459.P3660045113259658538

`A312460(A062399(n))`
-/

namespace A312459.P3660045113259658538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312460 (A062399 n).toNat

end

end A312459.P3660045113259658538

/-!
# A312460: Coordination sequence Gal.6.128.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312460, there is no canonical definition to state claims against.
-/

/-! ## A312460.P10281565311792616498

`xor(A004198(A273968(n+1)), A312466(n))`
-/

namespace A312460.P10281565311792616498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004198 (A273968 (n + 1)).toNat) (A312466 n)

end

end A312460.P10281565311792616498

/-! ## A312460.P3413408583037411003

`A312466(n)-∑[A014083(A224228(n))]`
-/

namespace A312460.P3413408583037411003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (A224228 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312460.P3413408583037411003

/-! ## A312460.P12893122934116315143

`record[A312464(n)-A217526(A000720(n+1))]`
-/

namespace A312460.P12893122934116315143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n - A217526 (A000720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312460.P12893122934116315143

/-!
# A312461: Coordination sequence Gal.5.58.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312461, there is no canonical definition to state claims against.
-/

/-! ## A312461.P5358150066275314284

`2*A311920(n)-A311350(n)`
-/

namespace A312461.P5358150066275314284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311920 n - A311350 n

end

end A312461.P5358150066275314284

/-! ## A312461.P11344493025525251009

`2*A312063(n)-A311589(n)`
-/

namespace A312461.P11344493025525251009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312063 n - A311589 n

end

end A312461.P11344493025525251009

/-! ## A312461.P172916647784012798

`A005843(A311920(n))-A311350(n)`
-/

namespace A312461.P172916647784012798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311920 n).toNat - A311350 n

end

end A312461.P172916647784012798

/-! ## A312461.P7042718295845162114

`A004277(A311920(n))-(2*A311510(n)-A311589(n))`
-/

namespace A312461.P7042718295845162114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311920 n).toNat - (2 * A311510 n - A311589 n)

end

end A312461.P7042718295845162114

/-! ## A312461.P16830340869419610444

`A145649(A000079(n))+A312466(n)-A067898(n)`
-/

namespace A312461.P16830340869419610444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A000079 n).toNat + (A312466 n - A067898 n)

end

end A312461.P16830340869419610444

/-!
# A312462: Coordination sequence Gal.6.224.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312462, there is no canonical definition to state claims against.
-/

/-! ## A312462.P6240752186599327546

`A312464(n)-A014082(A130599(n))`
-/

namespace A312462.P6240752186599327546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n - A014082 (A130599 n).toNat

end

end A312462.P6240752186599327546

/-! ## A312462.P15178304368428492134

`2*A311851(n)-A311228(n)-A014082(A130599(n))`
-/

namespace A312462.P15178304368428492134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311851 n - A311228 n - A014082 (A130599 n).toNat

end

end A312462.P15178304368428492134

/-! ## A312462.P10044559975224160599

`A312464(n)-A050602(A032741(A053656(n+1)))`
-/

namespace A312462.P10044559975224160599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n - A050602 (A032741 (A053656 (n + 1)).toNat).toNat

end

end A312462.P10044559975224160599

/-! ## A312462.P3628365435466135648

`A312466(n)-A001842(A174674(n))`
-/

namespace A312462.P3628365435466135648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n - A001842 (A174674 n).toNat

end

end A312462.P3628365435466135648

/-! ## A312462.P11865863457602094425

`A312464(n)-A248640(A062196(n))`
-/

namespace A312462.P11865863457602094425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n - A248640 (A062196 n).toNat

end

end A312462.P11865863457602094425

/-!
# A312463: Coordination sequence Gal.6.123.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312463, there is no canonical definition to state claims against.
-/

/-! ## A312463.P4695534357132772587

`2*A312059(n)-A311584(n)`
-/

namespace A312463.P4695534357132772587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312059 n - A311584 n

end

end A312463.P4695534357132772587

/-! ## A312463.P5224125196335434778

`A005843(A312059(n))-A311584(n)`
-/

namespace A312463.P5224125196335434778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312059 n).toNat - A311584 n

end

end A312463.P5224125196335434778

/-! ## A312463.P11418390592564895767

`A016825(n)-A147735(n+1)%4-(A312457(n)-A312470(n))`
-/

namespace A312463.P11418390592564895767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - Int.tmod (A147735 (n + 1)) 4 - (A312457 n - A312470 n)

end

end A312463.P11418390592564895767

/-! ## A312463.P12359503478951991506

`record[A312466(n)-A308919(n)]`
-/

namespace A312463.P12359503478951991506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n - A308919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312463.P12359503478951991506

/-! ## A312463.P4601300480047812756

`A016825(n)-A000122(A097403(n))`
-/

namespace A312463.P4601300480047812756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A000122 (A097403 n).toNat

end

end A312463.P4601300480047812756

/-!
# A312464: Coordination sequence Gal.6.124.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312464, there is no canonical definition to state claims against.
-/

/-! ## A312464.P5530714843802289634

`2*A311851(n)-A311228(n)`
-/

namespace A312464.P5530714843802289634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311851 n - A311228 n

end

end A312464.P5530714843802289634

/-! ## A312464.P12864909592043175634

`A004277(A311851(n))-A311228(n)`
-/

namespace A312464.P12864909592043175634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311851 n).toNat - A311228 n

end

end A312464.P12864909592043175634

/-! ## A312464.P9555607833528612374

`A312462(n)+A014082(A130599(n))`
-/

namespace A312464.P9555607833528612374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312462 n + A014082 (A130599 n).toNat

end

end A312464.P9555607833528612374

/-! ## A312464.P13057201369366348509

`∑[a(A317023(∑[n]))+1]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A312464.P13057201369366348509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 6] fun n f1 =>
  f1 (A317023 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312464.P13057201369366348509

/-! ## A312464.P10152094087368141031

`A312465(n)%A187829(n+3)!`
-/

namespace A312464.P10152094087368141031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312465 n) (Nat.factorial (A187829 (n + 3)).toNat : ℤ)

end

end A312464.P10152094087368141031

/-!
# A312465: Coordination sequence Gal.6.124.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312465, there is no canonical definition to state claims against.
-/

/-! ## A312465.P7629448077591975431

`or(A014082(A327088(n+1)), A312464(n))`
-/

namespace A312465.P7629448077591975431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014082 (A327088 (n + 1)).toNat) (A312464 n)

end

end A312465.P7629448077591975431

/-!
# A312466: Coordination sequence Gal.6.225.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312466, there is no canonical definition to state claims against.
-/

/-! ## A312466.P1772494332662984810

`2*A312062(n)-A311588(n)`
-/

namespace A312466.P1772494332662984810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312062 n - A311588 n

end

end A312466.P1772494332662984810

/-! ## A312466.P16377483453726751074

`2*A311918(n)-A311349(n)`
-/

namespace A312466.P16377483453726751074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311918 n - A311349 n

end

end A312466.P16377483453726751074

/-! ## A312466.P9309800503935037533

`A004277(A311918(n))-A311349(n)`
-/

namespace A312466.P9309800503935037533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A311918 n).toNat - A311349 n

end

end A312466.P9309800503935037533

/-! ## A312466.P1025629702905010846

`A004277(A311918(n))+A311349(n)/A260196(n+2)`
-/

namespace A312466.P1025629702905010846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A311918 n).toNat : ℚ) + (A311349 n : ℚ) / (A260196 (n + 2) : ℚ)

end

end A312466.P1025629702905010846

/-! ## A312466.P10638241462337110045

`A004277(A312062(n))-A311588(n)`
-/

namespace A312466.P10638241462337110045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312062 n).toNat - A311588 n

end

end A312466.P10638241462337110045

/-!
# A312467: Coordination sequence Gal.6.225.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312467, there is no canonical definition to state claims against.
-/

/-! ## A312467.P8578353154318726015

`or(A007230(A146615(n+1)), A312463(n))`
-/

namespace A312467.P8578353154318726015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007230 (A146615 (n + 1)).toNat) (A312463 n)

end

end A312467.P8578353154318726015

/-! ## A312467.P4964300255727942855

`A312466(n)+A000038(A073305(n))`
-/

namespace A312467.P4964300255727942855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n + A000038 (A073305 n).toNat

end

end A312467.P4964300255727942855

/-! ## A312467.P7765259910029776748

`A312464(n)+A087145(A061906(n))`
-/

namespace A312467.P7765259910029776748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n + A087145 (A061906 n).toNat

end

end A312467.P7765259910029776748

/-! ## A312467.P2931358179553254488

`A312465(n)+A087145(A061906(n))`
-/

namespace A312467.P2931358179553254488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312465 n + A087145 (A061906 n).toNat

end

end A312467.P2931358179553254488

/-! ## A312467.P11705620068075539200

`A339060(A068045(n))+A312463(n)`
-/

namespace A312467.P11705620068075539200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339060 (A068045 n).toNat + A312463 n

end

end A312467.P11705620068075539200

/-!
# A312468: Coordination sequence Gal.5.59.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312468, there is no canonical definition to state claims against.
-/

/-! ## A312468.P6792128238284249487

`A312466(n)+A051709(A063670(n))`
-/

namespace A312468.P6792128238284249487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n + A051709 (A063670 n).toNat

end

end A312468.P6792128238284249487

/-! ## A312468.P3306357934024026887

`A312466(n)+A001842(n)*A001842(A174674(n))`
-/

namespace A312468.P3306357934024026887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n + A001842 n * A001842 (A174674 n).toNat

end

end A312468.P3306357934024026887

/-! ## A312468.P2968281924042788012

`A051709(A063670(n))+2*A311918(n)-A311349(n)`
-/

namespace A312468.P2968281924042788012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (A063670 n).toNat + (2 * A311918 n - A311349 n)

end

end A312468.P2968281924042788012

/-! ## A312468.P10155665701379685165

`A312466(n)+2*A191347(A262809(n))`
-/

namespace A312468.P10155665701379685165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n + 2 * A191347 (A262809 n).toNat

end

end A312468.P10155665701379685165

/-! ## A312468.P7866183588928023724

`∑[A060594(A286173(n))]+2*n`
-/

namespace A312468.P7866183588928023724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A286173 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A312468.P7866183588928023724

/-!
# A312469: Coordination sequence Gal.5.59.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312469, there is no canonical definition to state claims against.
-/

/-! ## A312469.P14848629414356612194

`filter[A312462(n), A242718(#)]`
-/

namespace A312469.P14848629414356612194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A312469.P14848629414356612194

/-! ## A312469.P10047489050015440791

`filter[A312464(n), A242718(#)]`
-/

namespace A312469.P10047489050015440791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A312469.P10047489050015440791

/-! ## A312469.P3172675271828143465

`filter[A312465(n), A242718(#)]`
-/

namespace A312469.P3172675271828143465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A312469.P3172675271828143465

/-! ## A312469.P13397550324882331172

`A312047(n)+A024155(A096856(n))`
-/

namespace A312469.P13397550324882331172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312047 n + A024155 (A096856 n).toNat

end

end A312469.P13397550324882331172

/-! ## A312469.P5887667955676379872

`or(A312468(n), A343453(A080978(n)))`
-/

namespace A312469.P5887667955676379872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312468 n) (A343453 (A080978 n).toNat)

end

end A312469.P5887667955676379872

/-!
# A312470: Coordination sequence Gal.5.104.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312470, there is no canonical definition to state claims against.
-/

/-! ## A312470.P10296414238030800537

`A312457(n)-(A016825(n)-A147735(n+1)%4-A312463(n))`
-/

namespace A312470.P10296414238030800537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312457 n - (A016825 n - Int.tmod (A147735 (n + 1)) 4 - A312463 n)

end

end A312470.P10296414238030800537

/-! ## A312470.P10363804949369051019

`A312453(n)+A055641(A159349(n))`
-/

namespace A312470.P10363804949369051019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312453 n + A055641 (A159349 n).toNat

end

end A312470.P10363804949369051019

/-! ## A312470.P6490472310102798249

`A324827(A290556(n))+A312452(n)`
-/

namespace A312470.P6490472310102798249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324827 (A290556 n).toNat + A312452 n

end

end A312470.P6490472310102798249

/-! ## A312470.P18009607132888926996

`A324827(A290556(n))+2*A311899(n)-A311335(n)`
-/

namespace A312470.P18009607132888926996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324827 (A290556 n).toNat + (2 * A311899 n - A311335 n)

end

end A312470.P18009607132888926996

/-!
# A312471: Coordination sequence Gal.5.104.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312471, there is no canonical definition to state claims against.
-/

/-! ## A312471.P8634617319296378806

`A312464(or(n, A185293(n)))`
-/

namespace A312471.P8634617319296378806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 (Int.lor (n : ℤ) (A185293 n)).toNat

end

end A312471.P8634617319296378806

/-! ## A312471.P16684057283699811740

`A312466(or(n, A185293(n)))`
-/

namespace A312471.P16684057283699811740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 (Int.lor (n : ℤ) (A185293 n)).toNat

end

end A312471.P16684057283699811740

/-! ## A312471.P10922397087366898534

`A312466(n)+A151755(A000045(n))`
-/

namespace A312471.P10922397087366898534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n + A151755 (A000045 n).toNat

end

end A312471.P10922397087366898534

/-! ## A312471.P5116429778279030149

`or(A161116(A161134(n)²), A312466(n))`
-/

namespace A312471.P5116429778279030149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161116 (A161134 n ^ 2).toNat) (A312466 n)

end

end A312471.P5116429778279030149

/-! ## A312471.P15674896011697366634

`A312461(comp[A135368(n+1)+9])`
-/

namespace A312471.P15674896011697366634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135368 (n + 1) + 9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312461 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A312471.P15674896011697366634

/-!
# A312472: Coordination sequence Gal.6.149.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312472, the canonical program `A312472.P9748257743886067532` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312472 has offset 0).

The definition of A312472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2545 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312472.P9748257743886067532

`2*A311804(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312472

/-- `2*A311804(n)-A008574(n)` -/
def P9748257743886067532.Spec : Prop :=
  ∀ n, P9748257743886067532.a n = A312472 n

theorem P9748257743886067532.correct : P9748257743886067532.Spec := by
  intro n
  simp only [A312472]

end A312472

/-! ## A312472.P10505902161572572045

`(A311804(n)-2*n)*A036453(n+1)`
-/

namespace A312472.P10505902161572572045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A311804 n - (2 * n : ℤ)) * A036453 (n + 1)

end

end A312472.P10505902161572572045

namespace A312472

/-- `(A311804(n)-2*n)*A036453(n+1)` -/
def P10505902161572572045.Spec : Prop :=
  ∀ n, P10505902161572572045.a n = A312472 n

end A312472

/-! ## A312472.P13759821717662087252

`A004275(A311804(n)-A004273(n))`
-/

namespace A312472.P13759821717662087252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311804 n - A004273 n).toNat

end

end A312472.P13759821717662087252

namespace A312472

/-- `A004275(A311804(n)-A004273(n))` -/
def P13759821717662087252.Spec : Prop :=
  ∀ n, P13759821717662087252.a n = A312472 n

end A312472

/-! ## A312472.P16023312249945605721

`A004273(A311804(n)-n)-A004273(n)`
-/

namespace A312472.P16023312249945605721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311804 n - (n : ℤ)).toNat - A004273 n

end

end A312472.P16023312249945605721

namespace A312472

/-- `A004273(A311804(n)-n)-A004273(n)` -/
def P16023312249945605721.Spec : Prop :=
  ∀ n, P16023312249945605721.a n = A312472 n

end A312472

/-! ## A312472.P9911559742642481847

`A008574(n)+A005843(A311804(n)-A008574(n))`
-/

namespace A312472.P9911559742642481847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A311804 n - A008574 n).toNat

end

end A312472.P9911559742642481847

namespace A312472

/-- `A008574(n)+A005843(A311804(n)-A008574(n))` -/
def P9911559742642481847.Spec : Prop :=
  ∀ n, P9911559742642481847.a n = A312472 n

end A312472

/-! ## A312472.P12436286653775334182

`2*A312606(n)-A312656(n)`
-/

namespace A312472.P12436286653775334182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312606 n - A312656 n

end

end A312472.P12436286653775334182

namespace A312472

/-- `2*A312606(n)-A312656(n)` -/
def P12436286653775334182.Spec : Prop :=
  ∀ n, P12436286653775334182.a n = A312472 n

theorem P12436286653775334182.correct : P12436286653775334182.Spec := by
  intro n
  simp only [A312472, Nat.add_sub_cancel, A312472.P12436286653775334182.a, A312472.P9748257743886067532.a, A008574, A008574.P1300280032690682112.a, A311804, A311804.P3844052546151158521.a, A312606, A312606.P14333884055851029271.a, A312656, A312656.P6952802278947369671.a, A004396, A004396.P17032557045289780609.a, A312068, A312068.P6869764559260015807.a, A313045, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A008458, A008458.P7339383310184415644.a, A047486, A047486.P6506762595393263252.a, A311262, A311262.P10638457918818941404.a, A004525, A004525.P4158271949796742323.a, A311331, A311331.P4887198018422537998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312472

/-! ## A312472.P8954758673144280369

`A005843(A311804(n))-A008574(n)`
-/

namespace A312472.P8954758673144280369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311804 n).toNat - A008574 n

end

end A312472.P8954758673144280369

namespace A312472

/-- `A005843(A311804(n))-A008574(n)` -/
def P8954758673144280369.Spec : Prop :=
  ∀ n, P8954758673144280369.a n = A312472 n

end A312472

/-! ## A312472.P2188313812488562355

`A004275(A311804(n))-A004275(2*n)`
-/

namespace A312472.P2188313812488562355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311804 n).toNat - A004275 (2 * n)

end

end A312472.P2188313812488562355

namespace A312472

/-- `A004275(A311804(n))-A004275(2*n)` -/
def P2188313812488562355.Spec : Prop :=
  ∀ n, P2188313812488562355.a n = A312472 n

end A312472

/-! ## A312472.P16743421881716691937

`A005843(A311804(n))+n-A008706(n)`
-/

namespace A312472.P16743421881716691937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311804 n).toNat + ((n : ℤ) - A008706 n)

end

end A312472.P16743421881716691937

namespace A312472

/-- `A005843(A311804(n))+n-A008706(n)` -/
def P16743421881716691937.Spec : Prop :=
  ∀ n, P16743421881716691937.a n = A312472 n

end A312472

/-! ## A312472.P4184493422353854056

`A004525(A311889(n))*A040000(n)`
-/

namespace A312472.P4184493422353854056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311889 n).toNat * A040000 n

end

end A312472.P4184493422353854056

namespace A312472

/-- `A004525(A311889(n))*A040000(n)` -/
def P4184493422353854056.Spec : Prop :=
  ∀ n, P4184493422353854056.a n = A312472 n

end A312472

/-! ## A312472.P15027443071458736743

`abs(A008592(n)-A315655(n))`
-/

namespace A312472.P15027443071458736743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315655 n|

end

end A312472.P15027443071458736743

namespace A312472

/-- `abs(A008592(n)-A315655(n))` -/
def P15027443071458736743.Spec : Prop :=
  ∀ n, P15027443071458736743.a n = A312472 n

end A312472

/-! ## A312472.P17418872015437321171

`2*A008706(n)-A315655(n)`
-/

namespace A312472.P17418872015437321171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315655 n

end

end A312472.P17418872015437321171

namespace A312472

/-- `2*A008706(n)-A315655(n)` -/
def P17418872015437321171.Spec : Prop :=
  ∀ n, P17418872015437321171.a n = A312472 n

end A312472

/-! ## A312472.P3370272126247514568

`abs(12*n-(A315655(n)+A005843(n)))`
-/

namespace A312472.P3370272126247514568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(12 * n : ℤ) - (A315655 n + A005843 n)|

end

end A312472.P3370272126247514568

namespace A312472

/-- `abs(12*n-(A315655(n)+A005843(n)))` -/
def P3370272126247514568.Spec : Prop :=
  ∀ n, P3370272126247514568.a n = A312472 n

end A312472

/-! ## A312472.P10464610160351986960

`A004442(A017281(n)-A315655(n))`
-/

namespace A312472.P10464610160351986960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315655 n).toNat

end

end A312472.P10464610160351986960

namespace A312472

/-- `A004442(A017281(n)-A315655(n))` -/
def P10464610160351986960.Spec : Prop :=
  ∀ n, P10464610160351986960.a n = A312472 n

end A312472

/-! ## A312472.P1338231743508304024

`A008458(n)+A008574(n)-A315655(n)`
-/

namespace A312472.P1338231743508304024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315655 n)

end

end A312472.P1338231743508304024

namespace A312472

/-- `A008458(n)+A008574(n)-A315655(n)` -/
def P1338231743508304024.Spec : Prop :=
  ∀ n, P1338231743508304024.a n = A312472 n

end A312472

/-! ## A312472.P953765646159255157

`A315655(n)-A005843(A315655(n)-A008706(n))`
-/

namespace A312472.P953765646159255157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315655 n - A005843 (A315655 n - A008706 n).toNat

end

end A312472.P953765646159255157

namespace A312472

/-- `A315655(n)-A005843(A315655(n)-A008706(n))` -/
def P953765646159255157.Spec : Prop :=
  ∀ n, P953765646159255157.a n = A312472 n

end A312472

/-! ## A312472.P8182289373360106059

`A005843(A008706(n))-A315655(n)`
-/

namespace A312472.P8182289373360106059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315655 n

end

end A312472.P8182289373360106059

namespace A312472

/-- `A005843(A008706(n))-A315655(n)` -/
def P8182289373360106059.Spec : Prop :=
  ∀ n, P8182289373360106059.a n = A312472 n

end A312472

/-! ## A312472.P552484131566018209

`A311225(2*n)-4*n`
-/

namespace A312472.P552484131566018209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311225 (2 * n) - (4 * n : ℤ)

end

end A312472.P552484131566018209

namespace A312472

/-- `A311225(2*n)-4*n` -/
def P552484131566018209.Spec : Prop :=
  ∀ n, P552484131566018209.a n = A312472 n

end A312472

/-! ## A312472.P16953958836247548917

`2*A313738(2*n)-A022144(2*n)`
-/

namespace A312472.P16953958836247548917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313738 (2 * n) - A022144 (2 * n)

end

end A312472.P16953958836247548917

namespace A312472

/-- `2*A313738(2*n)-A022144(2*n)` -/
def P16953958836247548917.Spec : Prop :=
  ∀ n, P16953958836247548917.a n = A312472 n

end A312472

/-! ## A312472.P16144000168785180817

`2*A008574(2*n)-A315767(2*n)`
-/

namespace A312472.P16144000168785180817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315767 (2 * n)

end

end A312472.P16144000168785180817

namespace A312472

/-- `2*A008574(2*n)-A315767(2*n)` -/
def P16144000168785180817.Spec : Prop :=
  ∀ n, P16144000168785180817.a n = A312472 n

end A312472

/-!
# A312473: Coordination sequence Gal.4.47.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312473, there is no canonical definition to state claims against.
-/

/-! ## A312473.P14171425667796553496

`A313229(n)-A001221(A148276(n))`
-/

namespace A312473.P14171425667796553496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313229 n - A001221 (A148276 n).toNat

end

end A312473.P14171425667796553496

/-! ## A312473.P11165565141054626293

`or(A312447(n), A343453(A080978(n)))`
-/

namespace A312473.P11165565141054626293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312447 n) (A343453 (A080978 n).toNat)

end

end A312473.P11165565141054626293

/-! ## A312473.P5235460645768023398

`A312402(n)+∑[A010893(A312326(n))]`
-/

namespace A312473.P5235460645768023398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A312326 n).toNat + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312402 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312473.P5235460645768023398

/-! ## A312473.P4754808676606695330

`A301299(n)+A000999(A002944(n+1))`
-/

namespace A312473.P4754808676606695330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A000999 (A002944 (n + 1)).toNat

end

end A312473.P4754808676606695330

/-! ## A312473.P13373638865443762574

`or(A070824(A245001(n+3)), A312472(n))`
-/

namespace A312473.P13373638865443762574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070824 (A245001 (n + 3)).toNat) (A312472 n)

end

end A312473.P13373638865443762574

/-!
# A312474: Coordination sequence Gal.4.47.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312474, there is no canonical definition to state claims against.
-/

/-! ## A312474.P9894185455104907439

`A312464(n)+A044940(A041699(n))²`
-/

namespace A312474.P9894185455104907439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 n + A044940 (A041699 n).toNat ^ 2

end

end A312474.P9894185455104907439

/-! ## A312474.P2390289095549773288

`A312457(A062399(n)+A044940(n+1))`
-/

namespace A312474.P2390289095549773288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312457 (A062399 n + A044940 (n + 1)).toNat

end

end A312474.P2390289095549773288

/-! ## A312474.P12886708848969415643

`A312464(A062399(n)+A044940(n+1))`
-/

namespace A312474.P12886708848969415643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 (A062399 n + A044940 (n + 1)).toNat

end

end A312474.P12886708848969415643

/-! ## A312474.P11737621730603831846

`A312466(A062399(n)+A044940(n+1))`
-/

namespace A312474.P11737621730603831846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 (A062399 n + A044940 (n + 1)).toNat

end

end A312474.P11737621730603831846

/-! ## A312474.P6598032129481722275

`A312466(n)+A151755(A000045(n+1))`
-/

namespace A312474.P6598032129481722275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n + A151755 (A000045 (n + 1)).toNat

end

end A312474.P6598032129481722275

/-!
# A312475: Coordination sequence Gal.3.16.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312475, the canonical program `A312475.P17325744144907721022` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312475 has offset 0).

The definition of A312475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312475.P9529766111337608227

`A004277(comp[Δ[lcm(3, n)]]+n)`
-/

namespace A312475.P9529766111337608227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n)

end

end A312475.P9529766111337608227

namespace A312475

/-- `A004277(comp[Δ[lcm(3, n)]]+n)` -/
def P9529766111337608227.Spec : Prop :=
  ∀ n, P9529766111337608227.a n = A312475 n

end A312475

/-! ## A312475.P3017980887820009378

`A004277(comp[6*n+3]+n)`
-/

namespace A312475.P3017980887820009378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A312475.P3017980887820009378

namespace A312475

/-- `A004277(comp[6*n+3]+n)` -/
def P3017980887820009378.Spec : Prop :=
  ∀ n, P3017980887820009378.a n = A312475 n

end A312475

/-! ## A312475.P4170323700574130630

`A310504(2*n)-5*n-n`
-/

namespace A312475.P4170323700574130630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310504 (2 * n) - (5 * n : ℤ) - (n : ℤ)

end

end A312475.P4170323700574130630

namespace A312475

/-- `A310504(2*n)-5*n-n` -/
def P4170323700574130630.Spec : Prop :=
  ∀ n, P4170323700574130630.a n = A312475 n

end A312475

/-! ## A312475.P13843875998949671016

`A314347(n)-A102283(n)`
-/

namespace A312475.P13843875998949671016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314347 n - A102283 n

end

end A312475.P13843875998949671016

namespace A312475

/-- `A314347(n)-A102283(n)` -/
def P13843875998949671016.Spec : Prop :=
  ∀ n, P13843875998949671016.a n = A312475 n

end A312475

/-! ## A312475.P17325744144907721022

`A004275(round(A017449(n)/5))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A312475

/-- `A004275(round(A017449(n)/5))` -/
def P17325744144907721022.Spec : Prop :=
  ∀ n, P17325744144907721022.a n = A312475 n

theorem P17325744144907721022.correct : P17325744144907721022.Spec := by
  intro n
  simp only [A312475]

end A312475

/-! ## A312475.P13229205801587381111

`A047326(n+1)+A008486(n)`
-/

namespace A312475.P13229205801587381111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047326 (n + 1) + A008486 n

end

end A312475.P13229205801587381111

namespace A312475

/-- `A047326(n+1)+A008486(n)` -/
def P13229205801587381111.Spec : Prop :=
  ∀ n, P13229205801587381111.a n = A312475 n

end A312475

/-! ## A312475.P2757008523707369667

`A151988(2*n)+A004277(n)`
-/

namespace A312475.P2757008523707369667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (2 * n) + A004277 n

end

end A312475.P2757008523707369667

namespace A312475

/-- `A151988(2*n)+A004277(n)` -/
def P2757008523707369667.Spec : Prop :=
  ∀ n, P2757008523707369667.a n = A312475 n

end A312475

/-! ## A312475.P2561992430494396300

`A314347(n)-A131736(2*n)`
-/

namespace A312475.P2561992430494396300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314347 n - A131736 (2 * n)

end

end A312475.P2561992430494396300

namespace A312475

/-- `A314347(n)-A131736(2*n)` -/
def P2561992430494396300.Spec : Prop :=
  ∀ n, P2561992430494396300.a n = A312475 n

end A312475

/-! ## A312475.P637047940951585655

`A310518(n)-Δ[2*A011858(n)]`
-/

namespace A312475.P637047940951585655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310518 n - (f1 (n + 1) - f1 n)

end

end A312475.P637047940951585655

namespace A312475

/-- `A310518(n)-Δ[2*A011858(n)]` -/
def P637047940951585655.Spec : Prop :=
  ∀ n, P637047940951585655.a n = A312475 n

end A312475

/-! ## A312475.P7289559938964022827

`A004273(A047263(n+1)+n)+1`
-/

namespace A312475.P7289559938964022827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A047263 (n + 1) + (n : ℤ)).toNat + 1

end

end A312475.P7289559938964022827

namespace A312475

/-- `A004273(A047263(n+1)+n)+1` -/
def P7289559938964022827.Spec : Prop :=
  ∀ n, P7289559938964022827.a n = A312475 n

end A312475

/-! ## A312475.P1291639513257027972

`A004275(A047263(n+1)+1+n)`
-/

namespace A312475.P1291639513257027972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047263 (n + 1) + 1 + (n : ℤ)).toNat

end

end A312475.P1291639513257027972

namespace A312475

/-- `A004275(A047263(n+1)+1+n)` -/
def P1291639513257027972.Spec : Prop :=
  ∀ n, P1291639513257027972.a n = A312475 n

end A312475

/-! ## A312475.P8015501986130935637

`A004277(n)+2*A047263(n+1)`
-/

namespace A312475.P8015501986130935637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 2 * A047263 (n + 1)

end

end A312475.P8015501986130935637

namespace A312475

/-- `A004277(n)+2*A047263(n+1)` -/
def P8015501986130935637.Spec : Prop :=
  ∀ n, P8015501986130935637.a n = A312475 n

end A312475

/-! ## A312475.P10140234019057801036

`A151988(2*n)+A004275(n+1)`
-/

namespace A312475.P10140234019057801036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (2 * n) + A004275 (n + 1)

end

end A312475.P10140234019057801036

namespace A312475

/-- `A151988(2*n)+A004275(n+1)` -/
def P10140234019057801036.Spec : Prop :=
  ∀ n, P10140234019057801036.a n = A312475 n

end A312475

/-! ## A312475.P11724232521516425152

`A004275(A047516(2*n+1)-n)`
-/

namespace A312475.P11724232521516425152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047516 (2 * n + 1) - (n : ℤ)).toNat

end

end A312475.P11724232521516425152

namespace A312475

/-- `A004275(A047516(2*n+1)-n)` -/
def P11724232521516425152.Spec : Prop :=
  ∀ n, P11724232521516425152.a n = A312475 n

end A312475

/-! ## A312475.P1069882809869792071

`A004275(A002266(n+7)+2*n)`
-/

namespace A312475.P1069882809869792071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A002266 (n + 7) + (2 * n : ℤ)).toNat

end

end A312475.P1069882809869792071

namespace A312475

/-- `A004275(A002266(n+7)+2*n)` -/
def P1069882809869792071.Spec : Prop :=
  ∀ n, P1069882809869792071.a n = A312475 n

end A312475

/-! ## A312475.P15703297674961079165

`A047326(n+1)+A008574(n)-n`
-/

namespace A312475.P15703297674961079165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047326 (n + 1) + (A008574 n - (n : ℤ))

end

end A312475.P15703297674961079165

namespace A312475

/-- `A047326(n+1)+A008574(n)-n` -/
def P15703297674961079165.Spec : Prop :=
  ∀ n, P15703297674961079165.a n = A312475 n

end A312475

/-! ## A312475.P11662794471975704023

`A047486(n+1)+A250120(n)-2*n`
-/

namespace A312475.P11662794471975704023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A250120 n - (2 * n : ℤ))

end

end A312475.P11662794471975704023

namespace A312475

/-- `A047486(n+1)+A250120(n)-2*n` -/
def P11662794471975704023.Spec : Prop :=
  ∀ n, P11662794471975704023.a n = A312475 n

end A312475

/-! ## A312475.P12761641526988130686

`2*A047263(n+1)+A051755(n+2)-2`
-/

namespace A312475.P12761641526988130686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047263 (n + 1) + (A051755 (n + 2) - 2)

end

end A312475.P12761641526988130686

namespace A312475

/-- `2*A047263(n+1)+A051755(n+2)-2` -/
def P12761641526988130686.Spec : Prop :=
  ∀ n, P12761641526988130686.a n = A312475 n

end A312475

/-! ## A312475.P18385490843454115594

`A008486(2*n)-2*A057354(2*n+1)`
-/

namespace A312475.P18385490843454115594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - 2 * A057354 (2 * n + 1)

end

end A312475.P18385490843454115594

namespace A312475

/-- `A008486(2*n)-2*A057354(2*n+1)` -/
def P18385490843454115594.Spec : Prop :=
  ∀ n, P18385490843454115594.a n = A312475 n

end A312475

/-! ## A312475.P8685288458055381877

`A004277(∑[char[A016897(n)-1]]+n)+2*n`
-/

namespace A312475.P8685288458055381877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j + n) + (2 * n : ℤ)

end

end A312475.P8685288458055381877

namespace A312475

/-- `A004277(∑[char[A016897(n)-1]]+n)+2*n` -/
def P8685288458055381877.Spec : Prop :=
  ∀ n, P8685288458055381877.a n = A312475 n

end A312475

/-!
# A312476: Coordination sequence Gal.6.520.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312476, there is no canonical definition to state claims against.
-/

/-! ## A312476.P8184492386855389933

`A312477(n)-A057354(A309863(n))`
-/

namespace A312476.P8184492386855389933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312477 n - A057354 (A309863 n).toNat

end

end A312476.P8184492386855389933

/-! ## A312476.P3634184911573370981

`A179278(C(A312481(n), A206245(n)²))`
-/

namespace A312476.P3634184911573370981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179278 (Nat.choose (A312481 n).toNat (A206245 n ^ 2).toNat)

end

end A312476.P3634184911573370981

/-! ## A312476.P6117314957589753238

`A312477(A087051(n))`
-/

namespace A312476.P6117314957589753238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312477 (A087051 n).toNat

end

end A312476.P6117314957589753238

/-! ## A312476.P1915772588731993975

`A312477(A227549(n+1))`
-/

namespace A312476.P1915772588731993975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312477 (A227549 (n + 1)).toNat

end

end A312476.P1915772588731993975

/-! ## A312476.P3238751295051766353

`A312477(A396204(n+1))`
-/

namespace A312476.P3238751295051766353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312477 (A396204 (n + 1)).toNat

end

end A312476.P3238751295051766353

/-!
# A312477: Coordination sequence Gal.4.67.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312477, there is no canonical definition to state claims against.
-/

/-! ## A312477.P7331162761490496761

`A312507(n)-A112607(A031543(3*n+5))`
-/

namespace A312477.P7331162761490496761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312507 n - A112607 (A031543 (3 * n + 5)).toNat

end

end A312477.P7331162761490496761

/-! ## A312477.P4641407880618407279

`A312476(n)+A057354(A309863(n))`
-/

namespace A312477.P4641407880618407279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312476 n + A057354 (A309863 n).toNat

end

end A312477.P4641407880618407279

/-! ## A312477.P6053816236273695396

`A312475(n)+A136164(A309863(n))`
-/

namespace A312477.P6053816236273695396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A136164 (A309863 n).toNat

end

end A312477.P6053816236273695396

/-! ## A312477.P2981598413701470950

`A312070(n)-A014359(A001519(n))`
-/

namespace A312477.P2981598413701470950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312070 n - A014359 (A001519 n).toNat

end

end A312477.P2981598413701470950

/-! ## A312477.P10659735111471599301

`A310492(n)-A136164(A011782(n))`
-/

namespace A312477.P10659735111471599301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310492 n - A136164 (A011782 n).toNat

end

end A312477.P10659735111471599301

/-!
# A312478: Coordination sequence Gal.4.67.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312478, the canonical program `A312478.P3776385342878559786` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312478 has offset 0).

The definition of A312478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312478.P3776385342878559786

`A296910(n)+A186101(A237420(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A312478

/-- `A296910(n)+A186101(A237420(n))` -/
def P3776385342878559786.Spec : Prop :=
  ∀ n, P3776385342878559786.a n = A312478 n

theorem P3776385342878559786.correct : P3776385342878559786.Spec := by
  intro n
  simp only [A312478]

end A312478

/-! ## A312478.P7258250621804325211

`A008579(n)-A028961(A053311(n))`
-/

namespace A312478.P7258250621804325211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A028961 (A053311 n).toNat

end

end A312478.P7258250621804325211

namespace A312478

/-- `A008579(n)-A028961(A053311(n))` -/
def P7258250621804325211.Spec : Prop :=
  ∀ n, P7258250621804325211.a n = A312478 n

end A312478

/-! ## A312478.P11322816516789199218

`A008579(n)-A096158(A109070(n))`
-/

namespace A312478.P11322816516789199218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A096158 (A109070 n).toNat

end

end A312478.P11322816516789199218

namespace A312478

/-- `A008579(n)-A096158(A109070(n))` -/
def P11322816516789199218.Spec : Prop :=
  ∀ n, P11322816516789199218.a n = A312478 n

end A312478

/-! ## A312478.P15153164238284626378

`A008579(n)-A206590(A002203(n))`
-/

namespace A312478.P15153164238284626378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A206590 (A002203 n).toNat

end

end A312478.P15153164238284626378

namespace A312478

/-- `A008579(n)-A206590(A002203(n))` -/
def P15153164238284626378.Spec : Prop :=
  ∀ n, P15153164238284626378.a n = A312478 n

end A312478

/-! ## A312478.P7765111057162300915

`A008579(n)-A010893(A312014(n))`
-/

namespace A312478.P7765111057162300915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A010893 ((A312014 n).toNat + 13)

end

end A312478.P7765111057162300915

namespace A312478

/-- `A008579(n)-A010893(A312014(n))` -/
def P7765111057162300915.Spec : Prop :=
  ∀ n, P7765111057162300915.a n = A312478 n

end A312478

/-!
# A312479: Coordination sequence Gal.6.188.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312479, there is no canonical definition to state claims against.
-/

/-! ## A312479.P9093320115798752151

`A312481(n)-A051903(A283920(n+1))`
-/

namespace A312479.P9093320115798752151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312481 n - A051903 (A283920 (n + 1)).toNat

end

end A312479.P9093320115798752151

/-! ## A312479.P12293049876645815979

`A312481(n)-A269250(A230045(n+1))`
-/

namespace A312479.P12293049876645815979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312481 n - A269250 (A230045 (n + 1)).toNat

end

end A312479.P12293049876645815979

/-! ## A312479.P11295852262910078271

`A312480(n)-A070201(A321228(n))`
-/

namespace A312479.P11295852262910078271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312480 n - A070201 (A321228 n).toNat

end

end A312479.P11295852262910078271

/-! ## A312479.P5173202498393188378

`A312480(A087051(n))`
-/

namespace A312479.P5173202498393188378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312480 (A087051 n).toNat

end

end A312479.P5173202498393188378

/-! ## A312479.P9509032860927893804

`A312480(A227549(n+1))`
-/

namespace A312479.P9509032860927893804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312480 (A227549 (n + 1)).toNat

end

end A312479.P9509032860927893804

/-!
# A312480: Coordination sequence Gal.6.170.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312480, there is no canonical definition to state claims against.
-/

/-! ## A312480.P7257149001369717435

`A311792(n)+A001221(A001200(n))`
-/

namespace A312480.P7257149001369717435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311792 n + A001221 (A001200 n).toNat

end

end A312480.P7257149001369717435

/-! ## A312480.P2169387644923933166

`A312464(A062399(n))+A174738(n)`
-/

namespace A312480.P2169387644923933166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312464 (A062399 n).toNat + A174738 n

end

end A312480.P2169387644923933166

/-! ## A312480.P6625796145926931743

`A311820(n)+A001222(A352857(n))`
-/

namespace A312480.P6625796145926931743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311820 n + A001222 (A352857 n).toNat

end

end A312480.P6625796145926931743

/-!
# A312481: Coordination sequence Gal.6.277.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312481, there is no canonical definition to state claims against.
-/

/-! ## A312481.P9735210965161526521

`A312479(n)+A269250(A230045(n+1))`
-/

namespace A312481.P9735210965161526521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312479 n + A269250 (A230045 (n + 1)).toNat

end

end A312481.P9735210965161526521

/-! ## A312481.P7649472636473071287

`A312476(n)+A038189(A038312(n))`
-/

namespace A312481.P7649472636473071287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312476 n + A038189 (A038312 n).toNat

end

end A312481.P7649472636473071287

/-! ## A312481.P2552663865575940482

`A312476(n)+A093492(A236571(n+1))`
-/

namespace A312481.P2552663865575940482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312476 n + A093492 (A236571 (n + 1)).toNat

end

end A312481.P2552663865575940482

/-! ## A312481.P1594561967989378824

`record[A312486(n)-A079262(n)]`
-/

namespace A312481.P1594561967989378824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312486 n - A079262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312481.P1594561967989378824

/-! ## A312481.P2522515919523181227

`A140490(n+1)-A005614(∏[n%2+2]-1)`
-/

namespace A312481.P2522515919523181227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140490 (n + 1) - A005614 (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A312481.P2522515919523181227

/-!
# A312482: Coordination sequence Gal.6.299.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312482, there is no canonical definition to state claims against.
-/

/-! ## A312482.P518911325169973288

`A312483((n^A088153(n)!)%p?[comp[n²]])`
-/

namespace A312482.P518911325169973288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312483 (n ^ Nat.factorial (A088153 n).toNat % f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A312482.P518911325169973288

/-! ## A312482.P17405559632731154795

`A312483((n^A212390(n)!)%p?[comp[n²]])`
-/

namespace A312482.P17405559632731154795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312483 (n ^ Nat.factorial (A212390 n).toNat % f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A312482.P17405559632731154795

/-! ## A312482.P8782953627285620164

`A312483((n^A216633(n+1)!)%p?[comp[n²]])`
-/

namespace A312482.P8782953627285620164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312483 (n ^ Nat.factorial (A216633 (n + 1)).toNat % f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A312482.P8782953627285620164

/-! ## A312482.P12313408807865379558

`A312483(n)-A295663(A034899(n))`
-/

namespace A312482.P12313408807865379558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312483 n - A295663 (A034899 n).toNat

end

end A312482.P12313408807865379558

/-! ## A312482.P15904860276525237056

`A312483(A062399(n))`
-/

namespace A312482.P15904860276525237056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312483 (A062399 n).toNat

end

end A312482.P15904860276525237056

/-!
# A312483: Coordination sequence Gal.6.300.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312483, there is no canonical definition to state claims against.
-/

/-! ## A312483.P4376907765247160225

`A312482(n)+A184945(A018793(n))`
-/

namespace A312483.P4376907765247160225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312482 n + A184945 (A018793 n).toNat

end

end A312483.P4376907765247160225

/-! ## A312483.P12355029667386069818

`or(A185284(A047412(2*(n+1))), A312482(n))`
-/

namespace A312483.P12355029667386069818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A047412 (2 * (n + 1))).toNat) (A312482 n)

end

end A312483.P12355029667386069818

/-!
# A312484: Coordination sequence Gal.5.81.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312484, the canonical program `A312484.P6638501064243572720` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312484 has offset 0).

The definition of A312484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312484.P4784778716812451762

`ogf((1+3x+4x^2+6x^3+4x^4+4x^5+4x^6+6x^7+4x^8+3x^9+x^10)/(1-x-x^9+x^10))`
-/

namespace A312484.P4784778716812451762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 6, 4, 4, 4, 6, 4, 3, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A312484.P4784778716812451762

namespace A312484

/-- `ogf((1+3x+4x^2+6x^3+4x^4+4x^5+4x^6+6x^7+4x^8+3x^9+x^10)/(1-x-x^9+x^10))` -/
def P4784778716812451762.Spec : Prop :=
  ∀ n, P4784778716812451762.a n = A312484 n

end A312484

/-! ## A312484.P6638501064243572720

`A311816(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A312484

/-- `A311816(n)+Δ[A011862(n)]` -/
def P6638501064243572720.Spec : Prop :=
  ∀ n, P6638501064243572720.a n = A312484 n

theorem P6638501064243572720.correct : P6638501064243572720.Spec := by
  intro n
  simp only [A312484]

end A312484

/-! ## A312484.P8037754511769958649

`A004277(A265187(1+n)+n)`
-/

namespace A312484.P8037754511769958649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A265187 (1 + n) + (n : ℤ)).toNat

end

end A312484.P8037754511769958649

namespace A312484

/-- `A004277(A265187(1+n)+n)` -/
def P8037754511769958649.Spec : Prop :=
  ∀ n, P8037754511769958649.a n = A312484 n

end A312484

/-! ## A312484.P9457192662003785566

`2*A311816(n)-A008574(n)`
-/

namespace A312484.P9457192662003785566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311816 n - A008574 n

end

end A312484.P9457192662003785566

namespace A312484

/-- `2*A311816(n)-A008574(n)` -/
def P9457192662003785566.Spec : Prop :=
  ∀ n, P9457192662003785566.a n = A312484 n

theorem P9457192662003785566.correct : P9457192662003785566.Spec := by
  intro n
  simp only [A312484, Nat.add_sub_cancel, A312484.P9457192662003785566.a, A312484.P6638501064243572720.f1, A312484.P6638501064243572720.a, A008574, A008574.P1300280032690682112.a, A011862, A011862.P9485299441699197278.a, A311816, A311816.P10667073270982388372.f1, A311816.P10667073270982388372.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312484

/-! ## A312484.P4632974085397529663

`A008574(n)+Δ[2*A011862(n)]`
-/

namespace A312484.P4632974085397529663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A312484.P4632974085397529663

namespace A312484

/-- `A008574(n)+Δ[2*A011862(n)]` -/
def P4632974085397529663.Spec : Prop :=
  ∀ n, P4632974085397529663.a n = A312484 n

theorem P4632974085397529663.correct : P4632974085397529663.Spec := by
  intro n
  simp only [A312484, Nat.add_sub_cancel, A312484.P4632974085397529663.f1, A312484.P4632974085397529663.a, A312484.P6638501064243572720.f1, A312484.P6638501064243572720.a, A008574, A008574.P1300280032690682112.a, A011862, A011862.P9485299441699197278.a, A311816, A311816.P10667073270982388372.f1, A311816.P10667073270982388372.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312484

/-! ## A312484.P16737030331327883927

`A004273(A265187(n+1)+n)+1`
-/

namespace A312484.P16737030331327883927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A265187 (n + 1) + (n : ℤ)).toNat + 1

end

end A312484.P16737030331327883927

namespace A312484

/-- `A004273(A265187(n+1)+n)+1` -/
def P16737030331327883927.Spec : Prop :=
  ∀ n, P16737030331327883927.a n = A312484 n

end A312484

/-! ## A312484.P3713074036777780146

`A004275(A265187(n+1)+1+n)`
-/

namespace A312484.P3713074036777780146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A265187 (n + 1) + 1 + (n : ℤ)).toNat

end

end A312484.P3713074036777780146

namespace A312484

/-- `A004275(A265187(n+1)+1+n)` -/
def P3713074036777780146.Spec : Prop :=
  ∀ n, P3713074036777780146.a n = A312484 n

end A312484

/-! ## A312484.P980181630037591294

`A103517(A311816(n)-(2*n+1))`
-/

namespace A312484.P980181630037591294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A311816 n - (2 * n + 1 : ℤ)).toNat

end

end A312484.P980181630037591294

namespace A312484

/-- `A103517(A311816(n)-(2*n+1))` -/
def P980181630037591294.Spec : Prop :=
  ∀ n, P980181630037591294.a n = A312484 n

end A312484

/-! ## A312484.P13059955578150401423

`A004275(A311816(n)-A004273(n))`
-/

namespace A312484.P13059955578150401423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311816 n - A004273 n).toNat

end

end A312484.P13059955578150401423

namespace A312484

/-- `A004275(A311816(n)-A004273(n))` -/
def P13059955578150401423.Spec : Prop :=
  ∀ n, P13059955578150401423.a n = A312484 n

end A312484

/-! ## A312484.P14324702764336506695

`A301694(n)-2*A004396(A004396(n))`
-/

namespace A312484.P14324702764336506695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - 2 * A004396 (A004396 n).toNat

end

end A312484.P14324702764336506695

namespace A312484

/-- `A301694(n)-2*A004396(A004396(n))` -/
def P14324702764336506695.Spec : Prop :=
  ∀ n, P14324702764336506695.a n = A312484 n

end A312484

/-! ## A312484.P2593043194451480965

`2*A298784(n)-A298784(A004396(n))`
-/

namespace A312484.P2593043194451480965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298784 n - A298784 (A004396 n).toNat

end

end A312484.P2593043194451480965

namespace A312484

/-- `2*A298784(n)-A298784(A004396(n))` -/
def P2593043194451480965.Spec : Prop :=
  ∀ n, P2593043194451480965.a n = A312484 n

end A312484

/-! ## A312484.P9498444347036247233

`A004273(A311816(n)-n)-A004273(n)`
-/

namespace A312484.P9498444347036247233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A311816 n - (n : ℤ)).toNat - A004273 n

end

end A312484.P9498444347036247233

namespace A312484

/-- `A004273(A311816(n)-n)-A004273(n)` -/
def P9498444347036247233.Spec : Prop :=
  ∀ n, P9498444347036247233.a n = A312484 n

end A312484

/-! ## A312484.P13537790941413194319

`(A008574(A265187(n+1))+A008574(n))/2`
-/

namespace A312484.P13537790941413194319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A265187 (n + 1)).toNat + A008574 n : ℚ) / 2

end

end A312484.P13537790941413194319

namespace A312484

/-- `(A008574(A265187(n+1))+A008574(n))/2` -/
def P13537790941413194319.Spec : Prop :=
  ∀ n, P13537790941413194319.a n = (A312484 n : ℚ)

end A312484

/-! ## A312484.P5223105839085534019

`A004396(n)+A311816(n)-A004396(A004396(n))`
-/

namespace A312484.P5223105839085534019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311816 n - A004396 (A004396 n).toNat)

end

end A312484.P5223105839085534019

namespace A312484

/-- `A004396(n)+A311816(n)-A004396(A004396(n))` -/
def P5223105839085534019.Spec : Prop :=
  ∀ n, P5223105839085534019.a n = A312484 n

end A312484

/-! ## A312484.P10988225531805458294

`A008574(n)+A005843(A311816(n)-A008574(n))`
-/

namespace A312484.P10988225531805458294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A311816 n - A008574 n).toNat

end

end A312484.P10988225531805458294

namespace A312484

/-- `A008574(n)+A005843(A311816(n)-A008574(n))` -/
def P10988225531805458294.Spec : Prop :=
  ∀ n, P10988225531805458294.a n = A312484 n

end A312484

/-! ## A312484.P10724017625360693644

`A310502(n)-A008612(A016813(n))`
-/

namespace A312484.P10724017625360693644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310502 n - A008612 (A016813 n).toNat

end

end A312484.P10724017625360693644

namespace A312484

/-- `A310502(n)-A008612(A016813(n))` -/
def P10724017625360693644.Spec : Prop :=
  ∀ n, P10724017625360693644.a n = A312484 n

end A312484

/-! ## A312484.P9562963219305856917

`A313201(n)-A004396(n-A004396(n))`
-/

namespace A312484.P9562963219305856917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A312484.P9562963219305856917

namespace A312484

/-- `A313201(n)-A004396(n-A004396(n))` -/
def P9562963219305856917.Spec : Prop :=
  ∀ n, P9562963219305856917.a n = A312484 n

end A312484

/-! ## A312484.P11622336255082546927

`A315050(n)-A004396(A004396(n))`
-/

namespace A312484.P11622336255082546927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315050 n - A004396 (A004396 n).toNat

end

end A312484.P11622336255082546927

namespace A312484

/-- `A315050(n)-A004396(A004396(n))` -/
def P11622336255082546927.Spec : Prop :=
  ∀ n, P11622336255082546927.a n = A312484 n

end A312484

/-! ## A312484.P17829767455038910322

`A005843(A311816(n))-A008574(n)`
-/

namespace A312484.P17829767455038910322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311816 n).toNat - A008574 n

end

end A312484.P17829767455038910322

namespace A312484

/-- `A005843(A311816(n))-A008574(n)` -/
def P17829767455038910322.Spec : Prop :=
  ∀ n, P17829767455038910322.a n = A312484 n

end A312484

/-! ## A312484.P1193508354211199060

`A004275(A311816(n))-A004275(2*n)`
-/

namespace A312484.P1193508354211199060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A311816 n).toNat - A004275 (2 * n)

end

end A312484.P1193508354211199060

namespace A312484

/-- `A004275(A311816(n))-A004275(2*n)` -/
def P1193508354211199060.Spec : Prop :=
  ∀ n, P1193508354211199060.a n = A312484 n

end A312484

/-!
# A312485: Coordination sequence Gal.6.434.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312485, there is no canonical definition to state claims against.
-/

/-! ## A312485.P15184770705700039058

`A312486(n)-A184945(A018793(n))`
-/

namespace A312485.P15184770705700039058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312486 n - A184945 (A018793 n).toNat

end

end A312485.P15184770705700039058

/-! ## A312485.P7322094021053997048

`2*A312081(n)-A311598(n)-A184945(A018793(n))`
-/

namespace A312485.P7322094021053997048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312081 n - A311598 n - A184945 (A018793 n).toNat

end

end A312485.P7322094021053997048

/-! ## A312485.P178765145418931892

`2*A312527(n)-A312544(n)-A184945(A018793(n))`
-/

namespace A312485.P178765145418931892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312527 n - A312544 n - A184945 (A018793 n).toNat

end

end A312485.P178765145418931892

/-! ## A312485.P2618911779255326268

`A312486(A062399(n))`
-/

namespace A312485.P2618911779255326268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312486 (A062399 n).toNat

end

end A312485.P2618911779255326268

/-! ## A312485.P588571835219081077

`A312486(A120126(n))`
-/

namespace A312485.P588571835219081077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312486 (A120126 n).toNat

end

end A312485.P588571835219081077

/-!
# A312486: Coordination sequence Gal.3.30.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312486, the canonical program `A312486.P7733329551798745511` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312486 has offset 0).

The definition of A312486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312486.P7733329551798745511

`ogf((1+4x+8x^2+14x^3+18x^4+20x^5+18x^6+16x^7+10x^8+2x^9+3x^10-2x^11)/(1-2x^5+x^10))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A312486

/-- `ogf((1+4x+8x^2+14x^3+18x^4+20x^5+18x^6+16x^7+10x^8+2x^9+3x^10-2x^11)/(1-2x^5+x^10))` -/
def P7733329551798745511.Spec : Prop :=
  ∀ n, P7733329551798745511.a n = A312486 n

theorem P7733329551798745511.correct : P7733329551798745511.Spec := by
  intro n
  simp only [A312486]

end A312486

/-! ## A312486.P12058452658650501728

`2*A312081(n)-A311598(n)`
-/

namespace A312486.P12058452658650501728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312081 n - A311598 n

end

end A312486.P12058452658650501728

namespace A312486

/-- `2*A312081(n)-A311598(n)` -/
def P12058452658650501728.Spec : Prop :=
  ∀ n, P12058452658650501728.a n = A312486 n

end A312486

/-! ## A312486.P15893306279898017485

`2*A312527(n)-A312544(n)`
-/

namespace A312486.P15893306279898017485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312527 n - A312544 n

end

end A312486.P15893306279898017485

namespace A312486

/-- `2*A312527(n)-A312544(n)` -/
def P15893306279898017485.Spec : Prop :=
  ∀ n, P15893306279898017485.a n = A312486 n

end A312486

/-! ## A312486.P11615421136169350860

`A004277(A312081(n))-A311598(n)`
-/

namespace A312486.P11615421136169350860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312081 n).toNat - A311598 n

end

end A312486.P11615421136169350860

namespace A312486

/-- `A004277(A312081(n))-A311598(n)` -/
def P11615421136169350860.Spec : Prop :=
  ∀ n, P11615421136169350860.a n = A312486 n

end A312486

/-! ## A312486.P8272478512762153448

`A004277(A312527(n))-A312544(n)`
-/

namespace A312486.P8272478512762153448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312527 n).toNat - A312544 n

end

end A312486.P8272478512762153448

namespace A312486

/-- `A004277(A312527(n))-A312544(n)` -/
def P8272478512762153448.Spec : Prop :=
  ∀ n, P8272478512762153448.a n = A312486 n

end A312486

/-!
# A312488: Coordination sequence Gal.6.76.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312488, there is no canonical definition to state claims against.
-/

/-! ## A312488.P4102691783604894426

`A311769(n^gcd(11, n))+A184983(n)+A057354(n)`
-/

namespace A312488.P4102691783604894426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311769 (n ^ Nat.gcd 11 n) + (A184983 n + A057354 n)

end

end A312488.P4102691783604894426

/-! ## A312488.P3957910252109258667

`A057354(n)+A311769(A062399(n))+A184983(n)`
-/

namespace A312488.P3957910252109258667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n + (A311769 (A062399 n).toNat + A184983 n)

end

end A312488.P3957910252109258667

/-! ## A312488.P1364440573114152368

`A057354(n)+A311769(A120126(n))+A184983(n)`
-/

namespace A312488.P1364440573114152368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n + (A311769 (A120126 n).toNat + A184983 n)

end

end A312488.P1364440573114152368

/-! ## A312488.P9495331843385728364

`A311804(n)+A001221(A072214(n))`
-/

namespace A312488.P9495331843385728364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + A001221 (A072214 n).toNat

end

end A312488.P9495331843385728364

/-! ## A312488.P3508997140120433984

`A250120(n)-A341524(A120897(n))`
-/

namespace A312488.P3508997140120433984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A341524 (A120897 n).toNat

end

end A312488.P3508997140120433984

/-!
# A312489: Coordination sequence Gal.6.300.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312489, there is no canonical definition to state claims against.
-/

/-! ## A312489.P8477685424885741829

`A311926(n)+A071031(A353622(3*n+1))`
-/

namespace A312489.P8477685424885741829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311926 n + A071031 (A353622 (3 * n + 1)).toNat

end

end A312489.P8477685424885741829

/-! ## A312489.P1878605545565967565

`A311926(n)+A024360(A099327(n))`
-/

namespace A312489.P1878605545565967565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311926 n + A024360 (A099327 n).toNat

end

end A312489.P1878605545565967565

/-! ## A312489.P17246533427414488327

`A163533(A294838(n))+A008579(n)`
-/

namespace A312489.P17246533427414488327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (A294838 n).toNat + A008579 n

end

end A312489.P17246533427414488327

/-! ## A312489.P12450186254924857410

`A311836(n)+A288226(A000108(n))`
-/

namespace A312489.P12450186254924857410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311836 n + A288226 (A000108 n).toNat

end

end A312489.P12450186254924857410

/-! ## A312489.P13534903395568833722

`A008579(n)-A024316(A000108(n))`
-/

namespace A312489.P13534903395568833722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A024316 (A000108 n).toNat

end

end A312489.P13534903395568833722

/-!
# A312490: Coordination sequence Gal.6.406.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312490, there is no canonical definition to state claims against.
-/

/-! ## A312490.P8053801993225493035

`A354344(A001075(n))+A312097(n)`
-/

namespace A312490.P8053801993225493035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (A001075 n).toNat + A312097 n

end

end A312490.P8053801993225493035

/-! ## A312490.P13252235126177260671

`A316864(n)+A312096(A087051(n))`
-/

namespace A312490.P13252235126177260671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n + A312096 (A087051 n).toNat

end

end A312490.P13252235126177260671

/-! ## A312490.P16753316289139778163

`A008706(n)-A087117(A292617(n))`
-/

namespace A312490.P16753316289139778163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A087117 (A292617 n).toNat

end

end A312490.P16753316289139778163

/-! ## A312490.P15372266062799057863

`A312491(A087051(n))-A316869(n)`
-/

namespace A312490.P15372266062799057863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312491 (A087051 n).toNat - A316869 n

end

end A312490.P15372266062799057863

/-! ## A312490.P2563187281317886383

`A316864(n)+A312097(n)%A075227(A311214(n))`
-/

namespace A312490.P2563187281317886383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n + Int.tmod (A312097 n) (A075227 (A311214 n).toNat)

end

end A312490.P2563187281317886383

/-!
# A312491: Coordination sequence Gal.6.309.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312491, there is no canonical definition to state claims against.
-/

/-! ## A312491.P1394989075565572737

`A315021(n)-A175402(A315002(2*n+1))`
-/

namespace A312491.P1394989075565572737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315021 n - A175402 (A315002 (2 * n + 1)).toNat

end

end A312491.P1394989075565572737

/-! ## A312491.P2345934463674600247

`A311814(A087051(n))+A002264(n)`
-/

namespace A312491.P2345934463674600247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311814 (A087051 n).toNat + A002264 n

end

end A312491.P2345934463674600247

/-! ## A312491.P8932374076261031841

`A311812(n)+A238966(A058731(n))`
-/

namespace A312491.P8932374076261031841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311812 n + A238966 (A058731 n).toNat

end

end A312491.P8932374076261031841

/-! ## A312491.P10972879933073818125

`A250120(n)-A010872(A080145(n))`
-/

namespace A312491.P10972879933073818125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A010872 (A080145 n).toNat

end

end A312491.P10972879933073818125

/-! ## A312491.P12656402948820009837

`A312476(n)-A057428(A255376(n))`
-/

namespace A312491.P12656402948820009837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312476 n - A057428 (A255376 n).toNat

end

end A312491.P12656402948820009837

/-!
# A312492: Coordination sequence Gal.6.172.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312492, there is no canonical definition to state claims against.
-/

/-! ## A312492.P11431739637024437701

`A312462(n)+A033461(A346532(n+1))`
-/

namespace A312492.P11431739637024437701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312462 n + A033461 (A346532 (n + 1)).toNat

end

end A312492.P11431739637024437701

/-! ## A312492.P17121326751724094072

`A312463(n)+A033461(A346532(n+1))`
-/

namespace A312492.P17121326751724094072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312463 n + A033461 (A346532 (n + 1)).toNat

end

end A312492.P17121326751724094072

/-! ## A312492.P9031267172479317644

`A312465(n)+A033461(A346532(n+1))`
-/

namespace A312492.P9031267172479317644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312465 n + A033461 (A346532 (n + 1)).toNat

end

end A312492.P9031267172479317644

/-! ## A312492.P13955011611446259526

`A312467(n)+A033461(A346532(n+1))`
-/

namespace A312492.P13955011611446259526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312467 n + A033461 (A346532 (n + 1)).toNat

end

end A312492.P13955011611446259526

/-! ## A312492.P3387919861954913334

`A312468(n)+A033461(A346532(n+1))`
-/

namespace A312492.P3387919861954913334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312468 n + A033461 (A346532 (n + 1)).toNat

end

end A312492.P3387919861954913334

/-!
# A312493: Coordination sequence Gal.6.279.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312493, there is no canonical definition to state claims against.
-/

/-! ## A312493.P18181222755061951453

`or(A037800(A000620(n+1)), A312483(n))`
-/

namespace A312493.P18181222755061951453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037800 (A000620 (n + 1)).toNat) (A312483 n)

end

end A312493.P18181222755061951453

/-! ## A312493.P6616064912578929014

`A250120(n)-A085021(A278953(n))`
-/

namespace A312493.P6616064912578929014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A085021 (A278953 n).toNat

end

end A312493.P6616064912578929014

/-! ## A312493.P7282841892169576355

`A312483(n)+A011647(A051434(n))`
-/

namespace A312493.P7282841892169576355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312483 n + A011647 (A051434 n).toNat

end

end A312493.P7282841892169576355

/-! ## A312493.P10184362367494470082

`A316864(A000108(n))+A312482(n)`
-/

namespace A312493.P10184362367494470082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A000108 n).toNat + A312482 n

end

end A312493.P10184362367494470082

/-! ## A312493.P2102395214414816908

`A353494(A034297(2*(n+2)))+A312483(n)`
-/

namespace A312493.P2102395214414816908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A034297 (2 * (n + 2))).toNat + A312483 n

end

end A312493.P2102395214414816908

/-!
# A312494: Coordination sequence Gal.5.166.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312494, there is no canonical definition to state claims against.
-/

/-! ## A312494.P4090847917730957004

`A312530(n)-A025465(A259702(n+2))`
-/

namespace A312494.P4090847917730957004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A025465 (A259702 (n + 2)).toNat

end

end A312494.P4090847917730957004

/-! ## A312494.P13613317047226802066

`A312530(n)-A010052(A007054(n))`
-/

namespace A312494.P13613317047226802066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A010052 (A007054 n).toNat

end

end A312494.P13613317047226802066

/-! ## A312494.P14289261244544368182

`A312530(n)-A117370(A344949(n))`
-/

namespace A312494.P14289261244544368182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A117370 (A344949 n).toNat

end

end A312494.P14289261244544368182

/-! ## A312494.P13831265058250530302

`A312530(n)-A010051(A037260(3*n+4))`
-/

namespace A312494.P13831265058250530302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A010051 (A037260 (3 * n + 4)).toNat

end

end A312494.P13831265058250530302

/-! ## A312494.P3345402136491341514

`A310819(n)+A001221(A328438(n))`
-/

namespace A312494.P3345402136491341514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310819 n + A001221 (A328438 n).toNat

end

end A312494.P3345402136491341514

/-!
# A312495: Coordination sequence Gal.6.414.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312495, there is no canonical definition to state claims against.
-/

/-! ## A312495.P4703570249519973640

`A312496(n^A061674(n))`
-/

namespace A312495.P4703570249519973640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312496 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A061674 n : ℤ))).toNat

end

end A312495.P4703570249519973640

/-! ## A312495.P6705935221619181187

`A312496(n^A061906(n))`
-/

namespace A312495.P6705935221619181187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312496 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A312495.P6705935221619181187

/-! ## A312495.P1955677165969626767

`A312496(n*A061906(n)²)`
-/

namespace A312495.P1955677165969626767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312496 ((n : ℤ) * A061906 n ^ 2).toNat

end

end A312495.P1955677165969626767

/-! ## A312495.P2546800594370999004

`A312496(n)%∑[A243003(n+1)]`
-/

namespace A312495.P2546800594370999004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312496 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A312495.P2546800594370999004

/-! ## A312495.P6930028338272366122

`A312496(n)%A349210(A004086(n))`
-/

namespace A312495.P6930028338272366122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312496 n) (A349210 ((A004086 n).toNat + 21))

end

end A312495.P6930028338272366122

/-!
# A312496: Coordination sequence Gal.6.415.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312496, there is no canonical definition to state claims against.
-/

/-! ## A312496.P16702710990511057395

`or(A105700(A184983(n)), A312495(n))`
-/

namespace A312496.P16702710990511057395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105700 (A184983 n).toNat) (A312495 n)

end

end A312496.P16702710990511057395

/-!
# A312497: Coordination sequence Gal.4.114.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312497, there is no canonical definition to state claims against.
-/

/-! ## A312497.P3733869122308754103

`A008579(n)-A325135(A052953(n+2))`
-/

namespace A312497.P3733869122308754103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A325135 (A052953 (n + 2)).toNat

end

end A312497.P3733869122308754103

/-! ## A312497.P11771409853932114032

`A008579(n)-A275964(A181809(n+3))`
-/

namespace A312497.P11771409853932114032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A275964 (A181809 (n + 3)).toNat

end

end A312497.P11771409853932114032

/-! ## A312497.P15562902699104000164

`A008579(n)-A002654(A096108(3*n+5))`
-/

namespace A312497.P15562902699104000164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A002654 (A096108 (3 * n + 5)).toNat

end

end A312497.P15562902699104000164

/-! ## A312497.P8864850016740169691

`A008579(n)-A046660(A173006(n))`
-/

namespace A312497.P8864850016740169691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A046660 (A173006 n).toNat

end

end A312497.P8864850016740169691

/-! ## A312497.P5439612971057266339

`A008579(n)-A249422(A176200(n))`
-/

namespace A312497.P5439612971057266339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A249422 (A176200 n).toNat

end

end A312497.P5439612971057266339

/-!
# A312498: Coordination sequence Gal.5.180.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312498, there is no canonical definition to state claims against.
-/

/-! ## A312498.P13567081981191221768

`A008579(n)-A240883(A111429(n))`
-/

namespace A312498.P13567081981191221768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A240883 (A111429 n).toNat

end

end A312498.P13567081981191221768

/-! ## A312498.P7874308492154110797

`A312455(A062399(n))+A262889(A312455(n))`
-/

namespace A312498.P7874308492154110797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312455 (A062399 n).toNat + A262889 (A312455 n).toNat

end

end A312498.P7874308492154110797

/-! ## A312498.P15704253823604526559

`A312456(A062399(n))+A262889(A312456(n))`
-/

namespace A312498.P15704253823604526559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 (A062399 n).toNat + A262889 (A312456 n).toNat

end

end A312498.P15704253823604526559

/-! ## A312498.P16751716431254711515

`A312455(A120126(n))+A262889(A312455(n))`
-/

namespace A312498.P16751716431254711515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312455 (A120126 n).toNat + A262889 (A312455 n).toNat

end

end A312498.P16751716431254711515

/-! ## A312498.P2516349944586997606

`A312456(A120126(n))+A262889(A312456(n))`
-/

namespace A312498.P2516349944586997606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312456 (A120126 n).toNat + A262889 (A312456 n).toNat

end

end A312498.P2516349944586997606

/-!
# A312499: Coordination sequence Gal.5.181.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312499, there is no canonical definition to state claims against.
-/

/-! ## A312499.P4187409356789809394

`2*A312098(n)-A311603(n)`
-/

namespace A312499.P4187409356789809394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312098 n - A311603 n

end

end A312499.P4187409356789809394

/-! ## A312499.P481770529045408282

`A004277(A312098(n))-A311603(n)`
-/

namespace A312499.P481770529045408282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312098 n).toNat - A311603 n

end

end A312499.P481770529045408282

/-! ## A312499.P14627636698323006908

`A311608(n)+A202952(A005927(n))`
-/

namespace A312499.P14627636698323006908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311608 n + A202952 (A005927 n).toNat

end

end A312499.P14627636698323006908

/-! ## A312499.P2327154226617297681

`A312544(n)-A000122(A007054(n))`
-/

namespace A312499.P2327154226617297681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312544 n - A000122 (A007054 n).toNat

end

end A312499.P2327154226617297681

/-! ## A312499.P6440866689793129720

`or(A311609(A120126(n)), A312498(n))`
-/

namespace A312499.P6440866689793129720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311609 (A120126 n).toNat) (A312498 n)

end

end A312499.P6440866689793129720

