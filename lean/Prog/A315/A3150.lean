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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A315000: Coordination sequence Gal.6.294.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315000, there is no canonical definition to state claims against.
-/

/-! ## A315000.P731208574389063384

`or(A127327(n²), A314999(n))`
-/

namespace A315000.P731208574389063384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127327 (n ^ 2)) (A314999 n)

end

end A315000.P731208574389063384

/-! ## A315000.P508329266679143807

`or(A058840(A001787(n)), A314999(n))`
-/

namespace A315000.P508329266679143807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058840 (A001787 n).toNat) (A314999 n)

end

end A315000.P508329266679143807

/-! ## A315000.P6757060665150887328

`or(A010872(A264850(n)), A314999(n))`
-/

namespace A315000.P6757060665150887328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010872 (A264850 n).toNat) (A314999 n)

end

end A315000.P6757060665150887328

/-! ## A315000.P7779538638396126750

`A314999(n)+A179801(A154331(n+1))`
-/

namespace A315000.P7779538638396126750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314999 n + A179801 (A154331 (n + 1)).toNat

end

end A315000.P7779538638396126750

/-!
# A315001: Coordination sequence Gal.6.190.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315001, the canonical program `A315001.P1541358025029828197` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315001 has offset 0).

The definition of A315001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315001.P1541358025029828197

`ogf((1+4x+5x^2+10x^3+8x^4+14x^5+8x^6+14x^7+8x^8+14x^9+8x^10+10x^11+5x^12+4x^13+x^14)/(1-x+x^2-x^3+x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10-x^11+x^12-x^13+x^14))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A315001

/-- `ogf((1+4x+5x^2+10x^3+8x^4+14x^5+8x^6+14x^7+8x^8+14x^9+8x^10+10x^11+5x^12+4x^13+x^14)/(1-x+x^2-x^3+x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10-x^11+x^12-x^13+x^14))` -/
def P1541358025029828197.Spec : Prop :=
  ∀ n, P1541358025029828197.a n = A315001 n

theorem P1541358025029828197.correct : P1541358025029828197.Spec := by
  intro n
  simp only [A315001]

end A315001

/-! ## A315001.P9512047938051718897

`A250120(n)-A251138(A210541(n+1))`
-/

namespace A315001.P9512047938051718897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A251138 (A210541 (n + 1)).toNat

end

end A315001.P9512047938051718897

namespace A315001

/-- `A250120(n)-A251138(A210541(n+1))` -/
def P9512047938051718897.Spec : Prop :=
  ∀ n, P9512047938051718897.a n = A315001 n

end A315001

/-! ## A315001.P10837792055341452017

`A072154(2*n)-A251138(A210541(n+1))`
-/

namespace A315001.P10837792055341452017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A251138 (A210541 (n + 1)).toNat

end

end A315001.P10837792055341452017

namespace A315001

/-- `A072154(2*n)-A251138(A210541(n+1))` -/
def P10837792055341452017.Spec : Prop :=
  ∀ n, P10837792055341452017.a n = A315001 n

end A315001

/-! ## A315001.P3874687825838142237

`record[A072154(n)^((n+1)%2)]-A251138(A210541(n+1))`
-/

namespace A315001.P3874687825838142237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A251138 (A210541 (n + 1)).toNat

end

end A315001.P3874687825838142237

namespace A315001

/-- `record[A072154(n)^((n+1)%2)]-A251138(A210541(n+1))` -/
def P3874687825838142237.Spec : Prop :=
  ∀ n, P3874687825838142237.a n = A315001 n

end A315001

/-! ## A315001.P3555302027737264197

`A004525(A310439(2*n))-A251138(A210541(n+1))`
-/

namespace A315001.P3555302027737264197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310439 (2 * n)).toNat - A251138 (A210541 (n + 1)).toNat

end

end A315001.P3555302027737264197

namespace A315001

/-- `A004525(A310439(2*n))-A251138(A210541(n+1))` -/
def P3555302027737264197.Spec : Prop :=
  ∀ n, P3555302027737264197.a n = A315001 n

end A315001

/-!
# A315002: Coordination sequence Gal.6.189.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315002, there is no canonical definition to state claims against.
-/

/-! ## A315002.P10907821097084291561

`or(A116178(n²²), A315001(n))`
-/

namespace A315002.P10907821097084291561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116178 ((n ^ 2) ^ 2)) (A315001 n)

end

end A315002.P10907821097084291561

/-! ## A315002.P14432906558062650318

`A250120(n)-A175078(A000104(n))`
-/

namespace A315002.P14432906558062650318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A175078 (A000104 n).toNat

end

end A315002.P14432906558062650318

/-! ## A315002.P2233822092741183856

`or(A190233(A001006(n)), A312526(n))`
-/

namespace A315002.P2233822092741183856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A190233 (A001006 n).toNat) (A312526 n)

end

end A315002.P2233822092741183856

/-! ## A315002.P2109276950677353294

`or(A190233(A001006(n)), A315001(n))`
-/

namespace A315002.P2109276950677353294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A190233 (A001006 n).toNat) (A315001 n)

end

end A315002.P2109276950677353294

/-! ## A315002.P9571535665624378796

`or(A005227(A339628(n)), A315001(n))`
-/

namespace A315002.P9571535665624378796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005227 (A339628 n).toNat) (A315001 n)

end

end A315002.P9571535665624378796

/-!
# A315003: Coordination sequence Gal.6.174.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315003, there is no canonical definition to state claims against.
-/

/-! ## A315003.P11285201331928621237

`A250120(n)-A056924(A005177(n))`
-/

namespace A315003.P11285201331928621237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A056924 (A005177 n).toNat

end

end A315003.P11285201331928621237

/-! ## A315003.P8796618764065878351

`A250120(n)-A269242(A001006(n))`
-/

namespace A315003.P8796618764065878351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A269242 (A001006 n).toNat

end

end A315003.P8796618764065878351

/-! ## A315003.P11921406816277251592

`A315004(n)-A351539(A148505(n))`
-/

namespace A315003.P11921406816277251592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315004 n - A351539 (A148505 n).toNat

end

end A315003.P11921406816277251592

/-! ## A315003.P15394256954784233592

`A250120(n)-A001222(A111289(n+1))`
-/

namespace A315003.P15394256954784233592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001222 (A111289 (n + 1)).toNat

end

end A315003.P15394256954784233592

/-! ## A315003.P3408822794729532570

`A250120(n)-A297044(A219039(n+1))`
-/

namespace A315003.P3408822794729532570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A297044 (A219039 (n + 1)).toNat

end

end A315003.P3408822794729532570

/-!
# A315004: Coordination sequence Gal.6.173.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315004, there is no canonical definition to state claims against.
-/

/-! ## A315004.P4176141490417366138

`A351539(A148505(n))+A315003(n)`
-/

namespace A315004.P4176141490417366138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A148505 n).toNat + A315003 n

end

end A315004.P4176141490417366138

/-! ## A315004.P10434619124584116491

`A250120(n)-A073490(A000085(n))`
-/

namespace A315004.P10434619124584116491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A073490 (A000085 n).toNat

end

end A315004.P10434619124584116491

/-! ## A315004.P1025492425818716496

`A250120(n)-A124760(A129284(n))`
-/

namespace A315004.P1025492425818716496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A124760 (A129284 n).toNat

end

end A315004.P1025492425818716496

/-! ## A315004.P11903659390608497635

`A250120(n)-A196563(A175713(n))`
-/

namespace A315004.P11903659390608497635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A196563 (A175713 n).toNat

end

end A315004.P11903659390608497635

/-! ## A315004.P14406226586279596189

`A250120(n)-A363806(A026383(n))`
-/

namespace A315004.P14406226586279596189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A363806 (A026383 n).toNat

end

end A315004.P14406226586279596189

/-!
# A315005: Coordination sequence Gal.6.281.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315005, there is no canonical definition to state claims against.
-/

/-! ## A315005.P428589178429275701

`A315006(n)-A103675(A249844(n+1))`
-/

namespace A315005.P428589178429275701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315006 n - A103675 (A249844 (n + 1)).toNat

end

end A315005.P428589178429275701

/-! ## A315005.P18433004996995067001

`A315006(n)-A103675(A275057(n))`
-/

namespace A315005.P18433004996995067001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315006 n - A103675 (A275057 n).toNat

end

end A315005.P18433004996995067001

/-! ## A315005.P10348689632706242694

`A315006(n)-A185284(A016116(n))`
-/

namespace A315005.P10348689632706242694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315006 n - A185284 (A016116 n).toNat

end

end A315005.P10348689632706242694

/-! ## A315005.P9754672258701652283

`A315006(n)-A213676(A056457(n+1))`
-/

namespace A315005.P9754672258701652283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315006 n - A213676 (A056457 (n + 1)).toNat

end

end A315005.P9754672258701652283

/-! ## A315005.P10263552711670354963

`A301298(n)+A095408(A001158(2*(n+1)))`
-/

namespace A315005.P10263552711670354963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A095408 (A001158 (2 * (n + 1))).toNat

end

end A315005.P10263552711670354963

/-!
# A315006: Coordination sequence Gal.6.280.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315006, there is no canonical definition to state claims against.
-/

/-! ## A315006.P1407530375122824824

`A315005(n)+A103675(A249844(n+1))`
-/

namespace A315006.P1407530375122824824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315005 n + A103675 (A249844 (n + 1)).toNat

end

end A315006.P1407530375122824824

/-! ## A315006.P15532461174689995686

`A315005(n)+A103675(A275057(n))`
-/

namespace A315006.P15532461174689995686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315005 n + A103675 (A275057 n).toNat

end

end A315006.P15532461174689995686

/-! ## A315006.P1453782997836864755

`or(A103675(A087955(n)), A315005(n))`
-/

namespace A315006.P1453782997836864755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103675 (A087955 n).toNat) (A315005 n)

end

end A315006.P1453782997836864755

/-! ## A315006.P1542106464735071175

`or(A103675(A140359(n)), A315005(n))`
-/

namespace A315006.P1542106464735071175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103675 (A140359 n).toNat) (A315005 n)

end

end A315006.P1542106464735071175

/-!
# A315007: Coordination sequence Gal.6.581.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315007, there is no canonical definition to state claims against.
-/

/-! ## A315007.P14940578497366369511

`A315008(n)-A118135(A187829(n+1))`
-/

namespace A315007.P14940578497366369511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315008 n - A118135 (A187829 (n + 1)).toNat

end

end A315007.P14940578497366369511

/-! ## A315007.P11562502575186188688

`A315008(n)-A185294(A112777(n+1))`
-/

namespace A315007.P11562502575186188688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315008 n - A185294 (A112777 (n + 1)).toNat

end

end A315007.P11562502575186188688

/-! ## A315007.P3933586454070689610

`A315008(n)-A185294(A265227(n+1))`
-/

namespace A315007.P3933586454070689610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315008 n - A185294 (A265227 (n + 1)).toNat

end

end A315007.P3933586454070689610

/-! ## A315007.P10653955659851190963

`A315008(n)-A185294(A047363(n+4))`
-/

namespace A315007.P10653955659851190963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315008 n - A185294 (A047363 (n + 4)).toNat

end

end A315007.P10653955659851190963

/-! ## A315007.P12744108089227164200

`A315008(A062399(n))-A026816(n)`
-/

namespace A315007.P12744108089227164200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315008 (A062399 n).toNat - A026816 n

end

end A315007.P12744108089227164200

/-!
# A315008: Coordination sequence Gal.6.580.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315008, there is no canonical definition to state claims against.
-/

/-! ## A315008.P2715989017969109055

`A315007(n)+A118135(A187829(n+1))`
-/

namespace A315008.P2715989017969109055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315007 n + A118135 (A187829 (n + 1)).toNat

end

end A315008.P2715989017969109055

/-! ## A315008.P17827123630783872536

`A315007(n)+A185294(A112777(n+1))`
-/

namespace A315008.P17827123630783872536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315007 n + A185294 (A112777 (n + 1)).toNat

end

end A315008.P17827123630783872536

/-! ## A315008.P3333725441996931535

`A315007(n)+A185294(A265227(n+1))`
-/

namespace A315008.P3333725441996931535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315007 n + A185294 (A265227 (n + 1)).toNat

end

end A315008.P3333725441996931535

/-! ## A315008.P10920992079069945947

`A315007(n)+A185294(A047363(n+4))`
-/

namespace A315008.P10920992079069945947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315007 n + A185294 (A047363 (n + 4)).toNat

end

end A315008.P10920992079069945947

/-! ## A315008.P12318115402780030038

`A315007(A062399(n))+A026816(n)`
-/

namespace A315008.P12318115402780030038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315007 (A062399 n).toNat + A026816 n

end

end A315008.P12318115402780030038

/-!
# A315009: Coordination sequence Gal.5.168.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315009, there is no canonical definition to state claims against.
-/

/-! ## A315009.P8315299639146986959

`A315010(A062399(n))-A184983(n)`
-/

namespace A315009.P8315299639146986959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315010 (A062399 n).toNat - A184983 n

end

end A315009.P8315299639146986959

/-! ## A315009.P8012666619791671562

`A315010(A062399(n))-A326527(n)`
-/

namespace A315009.P8012666619791671562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315010 (A062399 n).toNat - A326527 n

end

end A315009.P8012666619791671562

/-! ## A315009.P4721654026439626796

`A315010(n)-A185284(A310675(n))`
-/

namespace A315009.P4721654026439626796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315010 n - A185284 (A310675 n).toNat

end

end A315009.P4721654026439626796

/-! ## A315009.P3834278012604742012

`A250120(n)+A054354(A001127(n+1))`
-/

namespace A315009.P3834278012604742012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A054354 (A001127 (n + 1)).toNat

end

end A315009.P3834278012604742012

/-! ## A315009.P5717389376228898488

`A250120(n)-A008683(A032289(n+4))`
-/

namespace A315009.P5717389376228898488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A008683 (A032289 (n + 4)).toNat

end

end A315009.P5717389376228898488

/-!
# A315010: Coordination sequence Gal.5.167.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315010, there is no canonical definition to state claims against.
-/

/-! ## A315010.P6336993450966685771

`or(A004539(A087957(n)), A315009(n))`
-/

namespace A315010.P6336993450966685771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004539 (A087957 n).toNat) (A315009 n)

end

end A315010.P6336993450966685771

/-! ## A315010.P8397325828271413839

`A315009(A062399(n))+A184983(n)`
-/

namespace A315010.P8397325828271413839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315009 (A062399 n).toNat + A184983 n

end

end A315010.P8397325828271413839

/-! ## A315010.P11224286276771574102

`A326527(A062399(n))+A315009(n)`
-/

namespace A315010.P11224286276771574102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326527 (A062399 n).toNat + A315009 n

end

end A315010.P11224286276771574102

/-! ## A315010.P11641174665806588817

`A315009(n)+A185284(A310675(n))`
-/

namespace A315010.P11641174665806588817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315009 n + A185284 (A310675 n).toNat

end

end A315010.P11641174665806588817

/-! ## A315010.P8982853304620600298

`A250120(n)-A301849(A017305(n))`
-/

namespace A315010.P8982853304620600298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A301849 (A017305 n).toNat

end

end A315010.P8982853304620600298

/-!
# A315011: Coordination sequence Gal.5.267.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315011, there is no canonical definition to state claims against.
-/

/-! ## A315011.P9460249684907774546

`A311738(A087051(n))+A003056(n)`
-/

namespace A315011.P9460249684907774546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 (A087051 n).toNat + A003056 n

end

end A315011.P9460249684907774546

/-! ## A315011.P16899004531736937722

`A311738(n)+A117707(A002998(n))`
-/

namespace A315011.P16899004531736937722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 n + A117707 (A002998 n).toNat

end

end A315011.P16899004531736937722

/-! ## A315011.P13251534295530015808

`A311738(A087051(n))+A117707(n)`
-/

namespace A315011.P13251534295530015808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 (A087051 n).toNat + A117707 n

end

end A315011.P13251534295530015808

/-! ## A315011.P5084237424401874750

`A250120(n)-A324692(A240578(2*n))`
-/

namespace A315011.P5084237424401874750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A324692 (A240578 (2 * n)).toNat

end

end A315011.P5084237424401874750

/-! ## A315011.P11292213581362813105

`A008706(n)-A010873(A221483(3*n+1))`
-/

namespace A315011.P11292213581362813105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A010873 (A221483 (3 * n + 1)).toNat

end

end A315011.P11292213581362813105

/-!
# A315012: Coordination sequence Gal.6.570.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315012, there is no canonical definition to state claims against.
-/

/-! ## A315012.P1378017950030601856

`A250120(n)+A117568(A005635(n))`
-/

namespace A315012.P1378017950030601856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A117568 (A005635 n).toNat

end

end A315012.P1378017950030601856

/-! ## A315012.P16181165375966123739

`A250120(n)-A294079(A056516(n))`
-/

namespace A315012.P16181165375966123739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A294079 (A056516 n).toNat

end

end A315012.P16181165375966123739

/-! ## A315012.P2030285773897958411

`A250120(n)-A011644(A114338(n+2))`
-/

namespace A315012.P2030285773897958411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A011644 (A114338 (n + 2)).toNat

end

end A315012.P2030285773897958411

/-! ## A315012.P587544853176274326

`A250120(n)-A072783(A000081(n+3))`
-/

namespace A315012.P587544853176274326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A072783 (A000081 (n + 3)).toNat

end

end A315012.P587544853176274326

/-! ## A315012.P6878044004837869272

`A250120(n)-A343640(A341450(3*n+1))`
-/

namespace A315012.P6878044004837869272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A343640 (A341450 (3 * n + 1)).toNat

end

end A315012.P6878044004837869272

/-!
# A315013: Coordination sequence Gal.6.540.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315013, there is no canonical definition to state claims against.
-/

/-! ## A315013.P5174503524462287887

`A341514(A128734(n)+1)+A314857(n)`
-/

namespace A315013.P5174503524462287887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341514 (A128734 n + 1).toNat + A314857 n

end

end A315013.P5174503524462287887

/-! ## A315013.P10454393935931300254

`A310813(n)+A001221(A069008(n))`
-/

namespace A315013.P10454393935931300254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310813 n + A001221 (A069008 n).toNat

end

end A315013.P10454393935931300254

/-! ## A315013.P7314295783825273226

`A314857(n)+A000035(A128734(n))`
-/

namespace A315013.P7314295783825273226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314857 n + A000035 (A128734 n).toNat

end

end A315013.P7314295783825273226

/-! ## A315013.P14325094895403197863

`A311427(n)+A001222(A151121(n))`
-/

namespace A315013.P14325094895403197863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311427 n + A001222 (A151121 n).toNat

end

end A315013.P14325094895403197863

/-! ## A315013.P3520022475135974876

`A313738(n)-A007814(A062272(n))`
-/

namespace A315013.P3520022475135974876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313738 n - A007814 (A062272 n).toNat

end

end A315013.P3520022475135974876

/-!
# A315014: Coordination sequence Gal.5.270.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315014, there is no canonical definition to state claims against.
-/

/-! ## A315014.P2403961819817014170

`A314849(n)+A124761(A246039(n))`
-/

namespace A315014.P2403961819817014170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314849 n + A124761 (A246039 n).toNat

end

end A315014.P2403961819817014170

/-! ## A315014.P5996775507830152953

`A313080(n)+A010051(A006134(n))`
-/

namespace A315014.P5996775507830152953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313080 n + A010051 (A006134 n).toNat

end

end A315014.P5996775507830152953

/-! ## A315014.P16233662349662297937

`A315033(n)-A308187(A000108(n))`
-/

namespace A315014.P16233662349662297937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n - A308187 (A000108 n).toNat

end

end A315014.P16233662349662297937

/-! ## A315014.P10280529581792920989

`A008574(n)+A000120(A096977(n))`
-/

namespace A315014.P10280529581792920989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A000120 (A096977 n).toNat

end

end A315014.P10280529581792920989

/-! ## A315014.P3717942705970642418

`xor(A250120(n), A333806(A018190(n+1)))`
-/

namespace A315014.P3717942705970642418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A333806 (A018190 (n + 1)).toNat)

end

end A315014.P3717942705970642418

/-!
# A315015: Coordination sequence Gal.5.269.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315015, there is no canonical definition to state claims against.
-/

/-! ## A315015.P11761803675614411953

`A312556(n)+A059620(A047520(n))`
-/

namespace A315015.P11761803675614411953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312556 n + A059620 (A047520 n).toNat

end

end A315015.P11761803675614411953

/-! ## A315015.P7145376008871016906

`or(A000035(A275309(n)), A315014(n))`
-/

namespace A315015.P7145376008871016906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A275309 n).toNat) (A315014 n)

end

end A315015.P7145376008871016906

/-! ## A315015.P4949568835080797299

`xor(A116178(A067430(n)), A313123(n))`
-/

namespace A315015.P4949568835080797299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116178 (A067430 n).toNat) (A313123 n)

end

end A315015.P4949568835080797299

/-! ## A315015.P8132156181382546708

`A314818(n)+A051903(A181769(n))`
-/

namespace A315015.P8132156181382546708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314818 n + A051903 (A181769 n).toNat

end

end A315015.P8132156181382546708

/-! ## A315015.P2119369528835407059

`A315730(n)-A001222(A104934(n))`
-/

namespace A315015.P2119369528835407059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315730 n - A001222 (A104934 n).toNat

end

end A315015.P2119369528835407059

/-!
# A315016: Coordination sequence Gal.6.585.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315016, there is no canonical definition to state claims against.
-/

/-! ## A315016.P3702354536763981424

`or(A252459(A250014(n+1)), A312156(n))`
-/

namespace A315016.P3702354536763981424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A252459 (A250014 (n + 1)).toNat) (A312156 n)

end

end A315016.P3702354536763981424

/-! ## A315016.P18341224472922512355

`A301301(n)+A000120(A024023(n))`
-/

namespace A315016.P18341224472922512355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A000120 (A024023 n).toNat

end

end A315016.P18341224472922512355

/-! ## A315016.P749359374326694830

`A250120(n)+A129407(A261050(n))`
-/

namespace A315016.P749359374326694830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A129407 (A261050 n).toNat

end

end A315016.P749359374326694830

/-! ## A315016.P2635818978584895705

`A373362(A001349(n))+A314816(n)`
-/

namespace A315016.P2635818978584895705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373362 (A001349 n).toNat + A314816 n

end

end A315016.P2635818978584895705

/-! ## A315016.P9246875673388001101

`A250120(n)-A074290(A192728(n))`
-/

namespace A315016.P9246875673388001101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A074290 (A192728 n).toNat

end

end A315016.P9246875673388001101

/-!
# A315017: Coordination sequence Gal.6.600.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315017, there is no canonical definition to state claims against.
-/

/-! ## A315017.P11218168471908913135

`A180613(A268756(n+1)+1)`
-/

namespace A315017.P11218168471908913135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180613 (A268756 (n + 1) + 1).toNat

end

end A315017.P11218168471908913135

/-! ## A315017.P16857952395637444983

`or(A001222(A020091(n)), A314734(n))`
-/

namespace A315017.P16857952395637444983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A020091 n).toNat) (A314734 n)

end

end A315017.P16857952395637444983

/-! ## A315017.P41651078730592061

`or(A284569(A009283(n)), A312333(n))`
-/

namespace A315017.P41651078730592061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284569 (A009283 n).toNat) (A312333 n)

end

end A315017.P41651078730592061

/-! ## A315017.P4549478608440963131

`A314482(n)+A244528(A239290(n+1))`
-/

namespace A315017.P4549478608440963131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314482 n + A244528 (A239290 (n + 1)).toNat

end

end A315017.P4549478608440963131

/-!
# A315018: Coordination sequence Gal.6.193.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315018, the canonical program `A315018.P17473826540934644098` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315018 has offset 0).

The definition of A315018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315018.P17473826540934644098

`A042965(A314830(n)+1-n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315018

/-- `A042965(A314830(n)+1-n)` -/
def P17473826540934644098.Spec : Prop :=
  ∀ n, P17473826540934644098.a n = A315018 n

theorem P17473826540934644098.correct : P17473826540934644098.Spec := by
  intro n
  simp only [A315018]

end A315018

/-! ## A315018.P626304460295713902

`A042965(1-(n-A314830(n)))`
-/

namespace A315018.P626304460295713902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (1 - ((n : ℤ) - A314830 n)).toNat

end

end A315018.P626304460295713902

namespace A315018

/-- `A042965(1-(n-A314830(n)))` -/
def P626304460295713902.Spec : Prop :=
  ∀ n, P626304460295713902.a n = A315018 n

theorem P626304460295713902.correct : P626304460295713902.Spec := by
  intro n
  simp only [A315018, Nat.add_sub_cancel, A315018.P626304460295713902.a, A315018.P17473826540934644098.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A315018

/-! ## A315018.P3898352312893221049

`A004396(n)+A314836(n)-A004525(n)`
-/

namespace A315018.P3898352312893221049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314836 n - A004525 n)

end

end A315018.P3898352312893221049

namespace A315018

/-- `A004396(n)+A314836(n)-A004525(n)` -/
def P3898352312893221049.Spec : Prop :=
  ∀ n, P3898352312893221049.a n = A315018 n

end A315018

/-! ## A315018.P18376007659617426936

`A313829(n)-∑[A022003(n)]`
-/

namespace A315018.P18376007659617426936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315018.P18376007659617426936

namespace A315018

/-- `A313829(n)-∑[A022003(n)]` -/
def P18376007659617426936.Spec : Prop :=
  ∀ n, P18376007659617426936.a n = A315018 n

end A315018

/-! ## A315018.P7679050172698853350

`A313829(n)-A002264(n+1)`
-/

namespace A315018.P7679050172698853350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n - A002264 (n + 1)

end

end A315018.P7679050172698853350

namespace A315018

/-- `A313829(n)-A002264(n+1)` -/
def P7679050172698853350.Spec : Prop :=
  ∀ n, P7679050172698853350.a n = A315018 n

end A315018

/-! ## A315018.P17915361349493426100

`A004396(n)+A313829(n)-n`
-/

namespace A315018.P17915361349493426100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313829 n - (n : ℤ))

end

end A315018.P17915361349493426100

namespace A315018

/-- `A004396(n)+A313829(n)-n` -/
def P17915361349493426100.Spec : Prop :=
  ∀ n, P17915361349493426100.a n = A315018 n

end A315018

/-! ## A315018.P15261163611821055720

`A008576(n)+A313829(n)-A008486(n)`
-/

namespace A315018.P15261163611821055720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313829 n - A008486 n)

end

end A315018.P15261163611821055720

namespace A315018

/-- `A008576(n)+A313829(n)-A008486(n)` -/
def P15261163611821055720.Spec : Prop :=
  ∀ n, P15261163611821055720.a n = A315018 n

end A315018

/-! ## A315018.P1376956471275059728

`A315318(n)-A004525(n)`
-/

namespace A315018.P1376956471275059728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315318 n - A004525 n

end

end A315018.P1376956471275059728

namespace A315018

/-- `A315318(n)-A004525(n)` -/
def P1376956471275059728.Spec : Prop :=
  ∀ n, P1376956471275059728.a n = A315018 n

end A315018

/-! ## A315018.P5508457198511377111

`A008458(n)+A008574(n)-A314060(n)`
-/

namespace A315018.P5508457198511377111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314060 n)

end

end A315018.P5508457198511377111

namespace A315018

/-- `A008458(n)+A008574(n)-A314060(n)` -/
def P5508457198511377111.Spec : Prop :=
  ∀ n, P5508457198511377111.a n = A315018 n

end A315018

/-! ## A315018.P12286178964187298566

`A004396(A314094(n))+2*A004396(n)`
-/

namespace A315018.P12286178964187298566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314094 n).toNat + 2 * A004396 n

end

end A315018.P12286178964187298566

namespace A315018

/-- `A004396(A314094(n))+2*A004396(n)` -/
def P12286178964187298566.Spec : Prop :=
  ∀ n, P12286178964187298566.a n = A315018 n

end A315018

/-! ## A315018.P5942644829022290828

`A004396(A314098(n))+2*A004396(n)`
-/

namespace A315018.P5942644829022290828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314098 n).toNat + 2 * A004396 n

end

end A315018.P5942644829022290828

namespace A315018

/-- `A004396(A314098(n))+2*A004396(n)` -/
def P5942644829022290828.Spec : Prop :=
  ∀ n, P5942644829022290828.a n = A315018 n

end A315018

/-! ## A315018.P9612665751132380829

`A004525(A314208(n))+2*n`
-/

namespace A315018.P9612665751132380829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314208 n).toNat + (2 * n : ℤ)

end

end A315018.P9612665751132380829

namespace A315018

/-- `A004525(A314208(n))+2*n` -/
def P9612665751132380829.Spec : Prop :=
  ∀ n, P9612665751132380829.a n = A315018 n

end A315018

/-! ## A315018.P18344608002208020695

`A004525(A315517(n))+2*n`
-/

namespace A315018.P18344608002208020695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315517 n).toNat + (2 * n : ℤ)

end

end A315018.P18344608002208020695

namespace A315018

/-- `A004525(A315517(n))+2*n` -/
def P18344608002208020695.Spec : Prop :=
  ∀ n, P18344608002208020695.a n = A315018 n

end A315018

/-! ## A315018.P3478312562599810000

`A004396(n)+A004396(A313829(n)+n)`
-/

namespace A315018.P3478312562599810000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313829 n + (n : ℤ)).toNat

end

end A315018.P3478312562599810000

namespace A315018

/-- `A004396(n)+A004396(A313829(n)+n)` -/
def P3478312562599810000.Spec : Prop :=
  ∀ n, P3478312562599810000.a n = A315018 n

end A315018

/-! ## A315018.P5582783700387920679

`A004396(A313829(n)+2*n)`
-/

namespace A315018.P5582783700387920679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313829 n + (2 * n : ℤ)).toNat

end

end A315018.P5582783700387920679

namespace A315018

/-- `A004396(A313829(n)+2*n)` -/
def P5582783700387920679.Spec : Prop :=
  ∀ n, P5582783700387920679.a n = A315018 n

end A315018

/-! ## A315018.P6795446172216833788

`A004396(A313859(n)+2*n)`
-/

namespace A315018.P6795446172216833788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313859 n + (2 * n : ℤ)).toNat

end

end A315018.P6795446172216833788

namespace A315018

/-- `A004396(A313859(n)+2*n)` -/
def P6795446172216833788.Spec : Prop :=
  ∀ n, P6795446172216833788.a n = A315018 n

end A315018

/-! ## A315018.P13714792622877154120

`A004396(A315315(n)+2*n)`
-/

namespace A315018.P13714792622877154120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315315 n + (2 * n : ℤ)).toNat

end

end A315018.P13714792622877154120

namespace A315018

/-- `A004396(A315315(n)+2*n)` -/
def P13714792622877154120.Spec : Prop :=
  ∀ n, P13714792622877154120.a n = A315018 n

end A315018

/-! ## A315018.P15614019332219064765

`A004396(2*(A314830(n)-n))`
-/

namespace A315018.P15614019332219064765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A314830 n - (n : ℤ))).toNat

end

end A315018.P15614019332219064765

namespace A315018

/-- `A004396(2*(A314830(n)-n))` -/
def P15614019332219064765.Spec : Prop :=
  ∀ n, P15614019332219064765.a n = A315018 n

end A315018

/-! ## A315018.P3273885761314983856

`A004396(A313829(n)+n+n)`
-/

namespace A315018.P3273885761314983856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313829 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315018.P3273885761314983856

namespace A315018

/-- `A004396(A313829(n)+n+n)` -/
def P3273885761314983856.Spec : Prop :=
  ∀ n, P3273885761314983856.a n = A315018 n

end A315018

/-! ## A315018.P7408454536407958911

`A004396(A313859(n)+n+n)`
-/

namespace A315018.P7408454536407958911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313859 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315018.P7408454536407958911

namespace A315018

/-- `A004396(A313859(n)+n+n)` -/
def P7408454536407958911.Spec : Prop :=
  ∀ n, P7408454536407958911.a n = A315018 n

end A315018

/-!
# A315019: Coordination sequence Gal.6.320.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315019, the canonical program `A315019.P7036511611890630324` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315019 has offset 0).

The definition of A315019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315019.P7036511611890630324

`abs(10*n-A314057(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315019

/-- `abs(10*n-A314057(n))` -/
def P7036511611890630324.Spec : Prop :=
  ∀ n, P7036511611890630324.a n = A315019 n

theorem P7036511611890630324.correct : P7036511611890630324.Spec := by
  intro n
  simp only [A315019]

end A315019

/-! ## A315019.P7609882642143682592

`A008458(n)+A008574(n)-A314057(n)`
-/

namespace A315019.P7609882642143682592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314057 n)

end

end A315019.P7609882642143682592

namespace A315019

/-- `A008458(n)+A008574(n)-A314057(n)` -/
def P7609882642143682592.Spec : Prop :=
  ∀ n, P7609882642143682592.a n = A315019 n

end A315019

/-! ## A315019.P851610195226309207

`∑{d}[A008592(n)-A314057(n), A000010(#)]`
-/

namespace A315019.P851610195226309207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315019.P851610195226309207

namespace A315019

/-- `∑{d}[A008592(n)-A314057(n), A000010(#)]` -/
def P851610195226309207.Spec : Prop :=
  ∀ n, P851610195226309207.a n = A315019 n

end A315019

/-! ## A315019.P12348231162622890560

`A004525(A314194(n))+2*n`
-/

namespace A315019.P12348231162622890560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314194 n).toNat + (2 * n : ℤ)

end

end A315019.P12348231162622890560

namespace A315019

/-- `A004525(A314194(n))+2*n` -/
def P12348231162622890560.Spec : Prop :=
  ∀ n, P12348231162622890560.a n = A315019 n

end A315019

/-! ## A315019.P3600206449768518289

`A004525(A314210(n))+2*n`
-/

namespace A315019.P3600206449768518289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314210 n).toNat + (2 * n : ℤ)

end

end A315019.P3600206449768518289

namespace A315019

/-- `A004525(A314210(n))+2*n` -/
def P3600206449768518289.Spec : Prop :=
  ∀ n, P3600206449768518289.a n = A315019 n

end A315019

/-! ## A315019.P7325501434973439692

`A004525(A315519(n))+2*n`
-/

namespace A315019.P7325501434973439692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315519 n).toNat + (2 * n : ℤ)

end

end A315019.P7325501434973439692

namespace A315019

/-- `A004525(A315519(n))+2*n` -/
def P7325501434973439692.Spec : Prop :=
  ∀ n, P7325501434973439692.a n = A315019 n

end A315019

/-! ## A315019.P320624133046226037

`A005843(n)+A004525(A314194(n))`
-/

namespace A315019.P320624133046226037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A314194 n).toNat

end

end A315019.P320624133046226037

namespace A315019

/-- `A005843(n)+A004525(A314194(n))` -/
def P320624133046226037.Spec : Prop :=
  ∀ n, P320624133046226037.a n = A315019 n

end A315019

/-! ## A315019.P10547377802131231108

`A005843(n)+A004525(A314210(n))`
-/

namespace A315019.P10547377802131231108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A314210 n).toNat

end

end A315019.P10547377802131231108

namespace A315019

/-- `A005843(n)+A004525(A314210(n))` -/
def P10547377802131231108.Spec : Prop :=
  ∀ n, P10547377802131231108.a n = A315019 n

end A315019

/-! ## A315019.P1126952049898570646

`A004396(A313831(n)+2*n)`
-/

namespace A315019.P1126952049898570646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313831 n + (2 * n : ℤ)).toNat

end

end A315019.P1126952049898570646

namespace A315019

/-- `A004396(A313831(n)+2*n)` -/
def P1126952049898570646.Spec : Prop :=
  ∀ n, P1126952049898570646.a n = A315019 n

end A315019

/-! ## A315019.P15336286604882189923

`A004396(A315316(n)+2*n)`
-/

namespace A315019.P15336286604882189923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315316 n + (2 * n : ℤ)).toNat

end

end A315019.P15336286604882189923

namespace A315019

/-- `A004396(A315316(n)+2*n)` -/
def P15336286604882189923.Spec : Prop :=
  ∀ n, P15336286604882189923.a n = A315019 n

end A315019

/-! ## A315019.P16495157782856679348

`A004396(2*(A314832(n)-n))`
-/

namespace A315019.P16495157782856679348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A314832 n - (n : ℤ))).toNat

end

end A315019.P16495157782856679348

namespace A315019

/-- `A004396(2*(A314832(n)-n))` -/
def P16495157782856679348.Spec : Prop :=
  ∀ n, P16495157782856679348.a n = A315019 n

end A315019

/-! ## A315019.P7414233415586185546

`A004396(A313831(n)+n+n)`
-/

namespace A315019.P7414233415586185546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313831 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315019.P7414233415586185546

namespace A315019

/-- `A004396(A313831(n)+n+n)` -/
def P7414233415586185546.Spec : Prop :=
  ∀ n, P7414233415586185546.a n = A315019 n

end A315019

/-! ## A315019.P151058819060884241

`A004396(A315316(n)+n+n)`
-/

namespace A315019.P151058819060884241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315316 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315019.P151058819060884241

namespace A315019

/-- `A004396(A315316(n)+n+n)` -/
def P151058819060884241.Spec : Prop :=
  ∀ n, P151058819060884241.a n = A315019 n

end A315019

/-! ## A315019.P15879503688034925778

`A004396(A004396(n)+A314192(n)+n)`
-/

namespace A315019.P15879503688034925778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n + (A314192 n + (n : ℤ))).toNat

end

end A315019.P15879503688034925778

namespace A315019

/-- `A004396(A004396(n)+A314192(n)+n)` -/
def P15879503688034925778.Spec : Prop :=
  ∀ n, P15879503688034925778.a n = A315019 n

end A315019

/-! ## A315019.P6747743488305246186

`A314680(2*n)-4*n`
-/

namespace A315019.P6747743488305246186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314680 (2 * n) - (4 * n : ℤ)

end

end A315019.P6747743488305246186

namespace A315019

/-- `A314680(2*n)-4*n` -/
def P6747743488305246186.Spec : Prop :=
  ∀ n, P6747743488305246186.a n = A315019 n

end A315019

/-! ## A315019.P2079944315170510827

`2*A008574(2*n)-A314244(2*n)`
-/

namespace A315019.P2079944315170510827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314244 (2 * n)

end

end A315019.P2079944315170510827

namespace A315019

/-- `2*A008574(2*n)-A314244(2*n)` -/
def P2079944315170510827.Spec : Prop :=
  ∀ n, P2079944315170510827.a n = A315019 n

end A315019

/-! ## A315019.P14220121829536869342

`A004525(A313514(2*n))`
-/

namespace A315019.P14220121829536869342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313514 (2 * n)).toNat

end

end A315019.P14220121829536869342

namespace A315019

/-- `A004525(A313514(2*n))` -/
def P14220121829536869342.Spec : Prop :=
  ∀ n, P14220121829536869342.a n = A315019 n

end A315019

/-! ## A315019.P8584399142638599036

`A004525(A313543(2*n))`
-/

namespace A315019.P8584399142638599036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313543 (2 * n)).toNat

end

end A315019.P8584399142638599036

namespace A315019

/-- `A004525(A313543(2*n))` -/
def P8584399142638599036.Spec : Prop :=
  ∀ n, P8584399142638599036.a n = A315019 n

end A315019

/-! ## A315019.P17063445543420985987

`A004525(A315183(2*n))`
-/

namespace A315019.P17063445543420985987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315183 (2 * n)).toNat

end

end A315019.P17063445543420985987

namespace A315019

/-- `A004525(A315183(2*n))` -/
def P17063445543420985987.Spec : Prop :=
  ∀ n, P17063445543420985987.a n = A315019 n

end A315019

/-!
# A315020: Coordination sequence Gal.4.76.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315020, the canonical program `A315020.P9897744658843174856` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315020 has offset 0).

The definition of A315020 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315020.P12283898697186711109

`A310397(n)+A075553(n)`
-/

namespace A315020.P12283898697186711109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n + A075553 n

end

end A315020.P12283898697186711109

namespace A315020

/-- `A310397(n)+A075553(n)` -/
def P12283898697186711109.Spec : Prop :=
  ∀ n, P12283898697186711109.a n = A315020 n

end A315020

/-! ## A315020.P9897744658843174856

`A314829(n)+Δ[A011861(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A315020

/-- `A314829(n)+Δ[A011861(n)]` -/
def P9897744658843174856.Spec : Prop :=
  ∀ n, P9897744658843174856.a n = A315020 n

theorem P9897744658843174856.correct : P9897744658843174856.Spec := by
  intro n
  simp only [A315020]

end A315020

/-! ## A315020.P8277734282554991672

`A312506(n)+A004525(A004525(n))`
-/

namespace A315020.P8277734282554991672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n + A004525 (A004525 n).toNat

end

end A315020.P8277734282554991672

namespace A315020

/-- `A312506(n)+A004525(A004525(n))` -/
def P8277734282554991672.Spec : Prop :=
  ∀ n, P8277734282554991672.a n = A315020 n

end A315020

/-! ## A315020.P6154923919205798863

`A008574(n)+A004525(A047273(n+1))`
-/

namespace A315020.P6154923919205798863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A047273 (n + 1)).toNat

end

end A315020.P6154923919205798863

namespace A315020

/-- `A008574(n)+A004525(A047273(n+1))` -/
def P6154923919205798863.Spec : Prop :=
  ∀ n, P6154923919205798863.a n = A315020 n

end A315020

/-! ## A315020.P2947758829026672424

`A008574(n)+A004525(A004525(3*n))`
-/

namespace A315020.P2947758829026672424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A004525 (3 * n)).toNat

end

end A315020.P2947758829026672424

namespace A315020

/-- `A008574(n)+A004525(A004525(3*n))` -/
def P2947758829026672424.Spec : Prop :=
  ∀ n, P2947758829026672424.a n = A315020 n

end A315020

/-! ## A315020.P11610179792312338006

`A313115(n)+A188510(n)`
-/

namespace A315020.P11610179792312338006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A188510 n

end

end A315020.P11610179792312338006

namespace A315020

/-- `A313115(n)+A188510(n)` -/
def P11610179792312338006.Spec : Prop :=
  ∀ n, P11610179792312338006.a n = A315020 n

end A315020

/-! ## A315020.P3234995064558124890

`A313826(n)-A004525(n-A004525(n))`
-/

namespace A315020.P3234995064558124890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A315020.P3234995064558124890

namespace A315020

/-- `A313826(n)-A004525(n-A004525(n))` -/
def P3234995064558124890.Spec : Prop :=
  ∀ n, P3234995064558124890.a n = A315020 n

end A315020

/-! ## A315020.P9056382516260170389

`A315320(n)-A004525(n)`
-/

namespace A315020.P9056382516260170389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315320 n - A004525 n

end

end A315020.P9056382516260170389

namespace A315020

/-- `A315320(n)-A004525(n)` -/
def P9056382516260170389.Spec : Prop :=
  ∀ n, P9056382516260170389.a n = A315020 n

theorem P9056382516260170389.correct : P9056382516260170389.Spec := by
  intro n
  simp only [A315020, Nat.add_sub_cancel, A315020.P9056382516260170389.a, A315020.P9897744658843174856.f1, A315020.P9897744658843174856.a, A004525, A004525.P4158271949796742323.a, A011861, A011861.P4500963193198654930.a, A314829, A314829.P8333159363270422796.a, A315320, A315320.P13791615069991515672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315020

/-! ## A315020.P1504077253171772595

`A315320(n)-Δ[A054925(n)]`
-/

namespace A315020.P1504077253171772595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315320 n - (f1 (n + 1) - f1 n)

end

end A315020.P1504077253171772595

namespace A315020

/-- `A315320(n)-Δ[A054925(n)]` -/
def P1504077253171772595.Spec : Prop :=
  ∀ n, P1504077253171772595.a n = A315020 n

end A315020

/-! ## A315020.P12196818131898216380

`abs(A008592(n)-A314056(n))`
-/

namespace A315020.P12196818131898216380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314056 n|

end

end A315020.P12196818131898216380

namespace A315020

/-- `abs(A008592(n)-A314056(n))` -/
def P12196818131898216380.Spec : Prop :=
  ∀ n, P12196818131898216380.a n = A315020 n

end A315020

/-! ## A315020.P11377885169007953459

`A008458(n)+A008574(n)-A314056(n)`
-/

namespace A315020.P11377885169007953459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314056 n)

end

end A315020.P11377885169007953459

namespace A315020

/-- `A008458(n)+A008574(n)-A314056(n)` -/
def P11377885169007953459.Spec : Prop :=
  ∀ n, P11377885169007953459.a n = A315020 n

end A315020

/-! ## A315020.P9827618611749495502

`A004525(A301710(n))+2*n`
-/

namespace A315020.P9827618611749495502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301710 n).toNat + (2 * n : ℤ)

end

end A315020.P9827618611749495502

namespace A315020

/-- `A004525(A301710(n))+2*n` -/
def P9827618611749495502.Spec : Prop :=
  ∀ n, P9827618611749495502.a n = A315020 n

end A315020

/-! ## A315020.P11397900132454125734

`A004525(A315520(n))+2*n`
-/

namespace A315020.P11397900132454125734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315520 n).toNat + (2 * n : ℤ)

end

end A315020.P11397900132454125734

namespace A315020

/-- `A004525(A315520(n))+2*n` -/
def P11397900132454125734.Spec : Prop :=
  ∀ n, P11397900132454125734.a n = A315020 n

end A315020

/-! ## A315020.P9835184140816217274

`A004525(A313115(2*n))`
-/

namespace A315020.P9835184140816217274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313115 (2 * n)).toNat

end

end A315020.P9835184140816217274

namespace A315020

/-- `A004525(A313115(2*n))` -/
def P9835184140816217274.Spec : Prop :=
  ∀ n, P9835184140816217274.a n = A315020 n

end A315020

/-! ## A315020.P5033544703557423604

`A004525(A314896(2*n))`
-/

namespace A315020.P5033544703557423604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314896 (2 * n)).toNat

end

end A315020.P5033544703557423604

namespace A315020

/-- `A004525(A314896(2*n))` -/
def P5033544703557423604.Spec : Prop :=
  ∀ n, P5033544703557423604.a n = A315020 n

end A315020

/-! ## A315020.P13648541829957711868

`A004525(A311501(2*n)+n)`
-/

namespace A315020.P13648541829957711868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311501 (2 * n) + (n : ℤ)).toNat

end

end A315020.P13648541829957711868

namespace A315020

/-- `A004525(A311501(2*n)+n)` -/
def P13648541829957711868.Spec : Prop :=
  ∀ n, P13648541829957711868.a n = A315020 n

end A315020

/-! ## A315020.P8824292491765661757

`A004525(A311843(2*n)+n)`
-/

namespace A315020.P8824292491765661757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311843 (2 * n) + (n : ℤ)).toNat

end

end A315020.P8824292491765661757

namespace A315020

/-- `A004525(A311843(2*n)+n)` -/
def P8824292491765661757.Spec : Prop :=
  ∀ n, P8824292491765661757.a n = A315020 n

end A315020

/-! ## A315020.P16534095175396832436

`A004525(A313793(2*n)-n)`
-/

namespace A315020.P16534095175396832436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313793 (2 * n) - (n : ℤ)).toNat

end

end A315020.P16534095175396832436

namespace A315020

/-- `A004525(A313793(2*n)-n)` -/
def P16534095175396832436.Spec : Prop :=
  ∀ n, P16534095175396832436.a n = A315020 n

end A315020

/-! ## A315020.P2437950523713835642

`A004525(A313875(2*n)-n)`
-/

namespace A315020.P2437950523713835642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313875 (2 * n) - (n : ℤ)).toNat

end

end A315020.P2437950523713835642

namespace A315020

/-- `A004525(A313875(2*n)-n)` -/
def P2437950523713835642.Spec : Prop :=
  ∀ n, P2437950523713835642.a n = A315020 n

end A315020

/-! ## A315020.P14925317913404285547

`A004525(A314829(n)+5*n)`
-/

namespace A315020.P14925317913404285547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314829 n + (5 * n : ℤ)).toNat

end

end A315020.P14925317913404285547

namespace A315020

/-- `A004525(A314829(n)+5*n)` -/
def P14925317913404285547.Spec : Prop :=
  ∀ n, P14925317913404285547.a n = A315020 n

end A315020

/-!
# A315021: Coordination sequence Gal.5.263.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315021, there is no canonical definition to state claims against.
-/

/-! ## A315021.P14120361577863406903

`record[gcd(A072668(n+1), A335335(2*n+5))]`
-/

namespace A315021.P14120361577863406903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072668 (n + 1)) (A335335 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315021.P14120361577863406903

/-! ## A315021.P17558538136917327132

`or(A010873(A209325(n)), A314727(n))`
-/

namespace A315021.P17558538136917327132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010873 (A209325 n).toNat) (A314727 n)

end

end A315021.P17558538136917327132

/-! ## A315021.P25721300510324941

`A250120(n)-A373748(A098743(3*n))`
-/

namespace A315021.P25721300510324941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A373748 (A098743 (3 * n)).toNat

end

end A315021.P25721300510324941

/-!
# A315022: Coordination sequence Gal.6.365.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315022, there is no canonical definition to state claims against.
-/

/-! ## A315022.P4755837101107595028

`A313719(n)-A000035(A212141(n))`
-/

namespace A315022.P4755837101107595028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n - A000035 (A212141 n).toNat

end

end A315022.P4755837101107595028

/-! ## A315022.P16351424921619836784

`A250120(n)-A035182(A389827(n+1))`
-/

namespace A315022.P16351424921619836784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A035182 (A389827 (n + 1)).toNat

end

end A315022.P16351424921619836784

/-! ## A315022.P10249669824560166994

`A250120(n)-A163529(A361870(2*n))`
-/

namespace A315022.P10249669824560166994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A163529 (A361870 (2 * n)).toNat

end

end A315022.P10249669824560166994

/-! ## A315022.P11793258229727090667

`A250120(n)-A307598(A279350(n+5))`
-/

namespace A315022.P11793258229727090667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A307598 (A279350 (n + 5)).toNat

end

end A315022.P11793258229727090667

/-! ## A315022.P1277956111511214070

`A314876(n)+A285320(A159886(n+1))`
-/

namespace A315022.P1277956111511214070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314876 n + A285320 (A159886 (n + 1)).toNat

end

end A315022.P1277956111511214070

/-!
# A315023: Coordination sequence Gal.6.267.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315023, there is no canonical definition to state claims against.
-/

/-! ## A315023.P3369767721043175939

`or(A102679(A017222(n)), A312725(n))`
-/

namespace A315023.P3369767721043175939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102679 (A017222 n).toNat) (A312725 n)

end

end A315023.P3369767721043175939

/-! ## A315023.P14390829207348807081

`A250120(n)-A125005((n+1)*∏{p}[n+1, #-1])`
-/

namespace A315023.P14390829207348807081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A125005 ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1))).toNat

end

end A315023.P14390829207348807081

/-! ## A315023.P12885291716128196499

`A250120(n)-A124763((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A315023.P12885291716128196499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A124763 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))).toNat

end

end A315023.P12885291716128196499

/-! ## A315023.P13390572974520970177

`A250120(n)-A024155(A024175(n))`
-/

namespace A315023.P13390572974520970177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A024155 (A024175 n).toNat

end

end A315023.P13390572974520970177

/-! ## A315023.P6325815428511928868

`A250120(n)-A046660(A026135(n))`
-/

namespace A315023.P6325815428511928868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A046660 (A026135 n).toNat

end

end A315023.P6325815428511928868

/-!
# A315024: Coordination sequence Gal.6.196.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315024, the canonical program `A315024.P11300834451067595507` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315024 has offset 0).

The definition of A315024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315024.P11300834451067595507

`A314885(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315024

/-- `A314885(n)+Δ[A011864(n)]` -/
def P11300834451067595507.Spec : Prop :=
  ∀ n, P11300834451067595507.a n = A315024 n

theorem P11300834451067595507.correct : P11300834451067595507.Spec := by
  intro n
  simp only [A315024]

end A315024

/-! ## A315024.P8020301047381631039

`abs(A008592(n)-A314052(n))`
-/

namespace A315024.P8020301047381631039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314052 n|

end

end A315024.P8020301047381631039

namespace A315024

/-- `abs(A008592(n)-A314052(n))` -/
def P8020301047381631039.Spec : Prop :=
  ∀ n, P8020301047381631039.a n = A315024 n

end A315024

/-! ## A315024.P10987157361959899330

`A008458(n)+A008574(n)-A314052(n)`
-/

namespace A315024.P10987157361959899330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314052 n)

end

end A315024.P10987157361959899330

namespace A315024

/-- `A008458(n)+A008574(n)-A314052(n)` -/
def P10987157361959899330.Spec : Prop :=
  ∀ n, P10987157361959899330.a n = A315024 n

end A315024

/-! ## A315024.P15554528161556095844

`A004525(A314234(n))+2*n`
-/

namespace A315024.P15554528161556095844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314234 n).toNat + (2 * n : ℤ)

end

end A315024.P15554528161556095844

namespace A315024

/-- `A004525(A314234(n))+2*n` -/
def P15554528161556095844.Spec : Prop :=
  ∀ n, P15554528161556095844.a n = A315024 n

end A315024

/-! ## A315024.P9465160385442443094

`A004525(A315521(n))+2*n`
-/

namespace A315024.P9465160385442443094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315521 n).toNat + (2 * n : ℤ)

end

end A315024.P9465160385442443094

namespace A315024

/-- `A004525(A315521(n))+2*n` -/
def P9465160385442443094.Spec : Prop :=
  ∀ n, P9465160385442443094.a n = A315024 n

end A315024

/-! ## A315024.P607623460156805448

`A005843(n)+A004525(A314234(n))`
-/

namespace A315024.P607623460156805448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A314234 n).toNat

end

end A315024.P607623460156805448

namespace A315024

/-- `A005843(n)+A004525(A314234(n))` -/
def P607623460156805448.Spec : Prop :=
  ∀ n, P607623460156805448.a n = A315024 n

end A315024

/-! ## A315024.P13194126595812498556

`A004396(A313834(n)+2*n)`
-/

namespace A315024.P13194126595812498556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313834 n + (2 * n : ℤ)).toNat

end

end A315024.P13194126595812498556

namespace A315024

/-- `A004396(A313834(n)+2*n)` -/
def P13194126595812498556.Spec : Prop :=
  ∀ n, P13194126595812498556.a n = A315024 n

end A315024

/-! ## A315024.P7383959138994609340

`A004396(A313869(n)+2*n)`
-/

namespace A315024.P7383959138994609340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313869 n + (2 * n : ℤ)).toNat

end

end A315024.P7383959138994609340

namespace A315024

/-- `A004396(A313869(n)+2*n)` -/
def P7383959138994609340.Spec : Prop :=
  ∀ n, P7383959138994609340.a n = A315024 n

end A315024

/-! ## A315024.P8466094481508556700

`A004396(A315307(n)+2*n)`
-/

namespace A315024.P8466094481508556700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315307 n + (2 * n : ℤ)).toNat

end

end A315024.P8466094481508556700

namespace A315024

/-- `A004396(A315307(n)+2*n)` -/
def P8466094481508556700.Spec : Prop :=
  ∀ n, P8466094481508556700.a n = A315024 n

end A315024

/-! ## A315024.P11348045246869327772

`A004396(2*(A314837(n)-n))`
-/

namespace A315024.P11348045246869327772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A314837 n - (n : ℤ))).toNat

end

end A315024.P11348045246869327772

namespace A315024

/-- `A004396(2*(A314837(n)-n))` -/
def P11348045246869327772.Spec : Prop :=
  ∀ n, P11348045246869327772.a n = A315024 n

end A315024

/-! ## A315024.P17597216228310447828

`A004396(A313834(n)+n+n)`
-/

namespace A315024.P17597216228310447828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313834 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315024.P17597216228310447828

namespace A315024

/-- `A004396(A313834(n)+n+n)` -/
def P17597216228310447828.Spec : Prop :=
  ∀ n, P17597216228310447828.a n = A315024 n

end A315024

/-! ## A315024.P1933590303866340447

`A004396(A313869(n)+n+n)`
-/

namespace A315024.P1933590303866340447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313869 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315024.P1933590303866340447

namespace A315024

/-- `A004396(A313869(n)+n+n)` -/
def P1933590303866340447.Spec : Prop :=
  ∀ n, P1933590303866340447.a n = A315024 n

end A315024

/-! ## A315024.P6169042142214440462

`A004396(A315307(n)+n+n)`
-/

namespace A315024.P6169042142214440462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315307 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315024.P6169042142214440462

namespace A315024

/-- `A004396(A315307(n)+n+n)` -/
def P6169042142214440462.Spec : Prop :=
  ∀ n, P6169042142214440462.a n = A315024 n

end A315024

/-! ## A315024.P9528908680200970882

`A004396(A314837(n)+A314837(n)-A004277(n))`
-/

namespace A315024.P9528908680200970882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314837 n + (A314837 n - A004277 n)).toNat

end

end A315024.P9528908680200970882

namespace A315024

/-- `A004396(A314837(n)+A314837(n)-A004277(n))` -/
def P9528908680200970882.Spec : Prop :=
  ∀ n, P9528908680200970882.a n = A315024 n

end A315024

/-! ## A315024.P13650370205393402388

`A004396(A314837(n)-(A004277(n)-A314837(n)))`
-/

namespace A315024.P13650370205393402388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314837 n - (A004277 n - A314837 n)).toNat

end

end A315024.P13650370205393402388

namespace A315024

/-- `A004396(A314837(n)-(A004277(n)-A314837(n)))` -/
def P13650370205393402388.Spec : Prop :=
  ∀ n, P13650370205393402388.a n = A315024 n

end A315024

/-! ## A315024.P4820428711178706667

`A312897(2*n)-4*n`
-/

namespace A315024.P4820428711178706667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312897 (2 * n) - (4 * n : ℤ)

end

end A315024.P4820428711178706667

namespace A315024

/-- `A312897(2*n)-4*n` -/
def P4820428711178706667.Spec : Prop :=
  ∀ n, P4820428711178706667.a n = A315024 n

end A315024

/-! ## A315024.P3886319077217518863

`A004525(A310438(2*n))`
-/

namespace A315024.P3886319077217518863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310438 (2 * n)).toNat

end

end A315024.P3886319077217518863

namespace A315024

/-- `A004525(A310438(2*n))` -/
def P3886319077217518863.Spec : Prop :=
  ∀ n, P3886319077217518863.a n = A315024 n

end A315024

/-! ## A315024.P13644812216943292352

`A004525(A312976(2*n))`
-/

namespace A315024.P13644812216943292352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312976 (2 * n)).toNat

end

end A315024.P13644812216943292352

namespace A315024

/-- `A004525(A312976(2*n))` -/
def P13644812216943292352.Spec : Prop :=
  ∀ n, P13644812216943292352.a n = A315024 n

end A315024

/-! ## A315024.P2747596278508511808

`A004525(A313062(2*n))`
-/

namespace A315024.P2747596278508511808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313062 (2 * n)).toNat

end

end A315024.P2747596278508511808

namespace A315024

/-- `A004525(A313062(2*n))` -/
def P2747596278508511808.Spec : Prop :=
  ∀ n, P2747596278508511808.a n = A315024 n

end A315024

/-!
# A315025: Coordination sequence Gal.6.560.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315025, there is no canonical definition to state claims against.
-/

/-! ## A315025.P6598886649617440223

`xor(A250120(n), A293896(A001333(n)))`
-/

namespace A315025.P6598886649617440223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A293896 (A001333 n).toNat)

end

end A315025.P6598886649617440223

/-! ## A315025.P775324593271641053

`xor(A250120(n), A257399(A287963(n)))`
-/

namespace A315025.P775324593271641053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A257399 (A287963 n).toNat)

end

end A315025.P775324593271641053

/-! ## A315025.P15195463925954756946

`A250120(n)-A030215(A030228(n))`
-/

namespace A315025.P15195463925954756946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A030215 (A030228 n).toNat

end

end A315025.P15195463925954756946

/-! ## A315025.P12984320406962296464

`xor(A025469(A107231(n)), A250120(n))`
-/

namespace A315025.P12984320406962296464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025469 (A107231 n).toNat) (A250120 n)

end

end A315025.P12984320406962296464

/-! ## A315025.P1415567506987560116

`xor(A214411(A000105(n)), A250120(n))`
-/

namespace A315025.P1415567506987560116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A214411 (A000105 n).toNat) (A250120 n)

end

end A315025.P1415567506987560116

/-!
# A315026: Coordination sequence Gal.6.337.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315026, the canonical program `A315026.P16538661950104496033` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315026 has offset 0).

The definition of A315026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315026.P16538661950104496033

`A301298(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A315026

/-- `A301298(n)+Δ[A011865(n)]` -/
def P16538661950104496033.Spec : Prop :=
  ∀ n, P16538661950104496033.a n = A315026 n

theorem P16538661950104496033.correct : P16538661950104496033.Spec := by
  intro n
  simp only [A315026]

end A315026

/-! ## A315026.P4192739702406399674

`A312526(n)+A004525(A004396(n))`
-/

namespace A315026.P4192739702406399674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312526 n + A004525 (A004396 n).toNat

end

end A315026.P4192739702406399674

namespace A315026

/-- `A312526(n)+A004525(A004396(n))` -/
def P4192739702406399674.Spec : Prop :=
  ∀ n, P4192739702406399674.a n = A315026 n

end A315026

/-! ## A315026.P288854059102613870

`A008574(n)+A004525(A047222(n+1))`
-/

namespace A315026.P288854059102613870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A047222 (n + 1)).toNat

end

end A315026.P288854059102613870

namespace A315026

/-- `A008574(n)+A004525(A047222(n+1))` -/
def P288854059102613870.Spec : Prop :=
  ∀ n, P288854059102613870.a n = A315026 n

end A315026

/-! ## A315026.P5892341890795127240

`A004396(n)+A314847(n)-A004525(n)`
-/

namespace A315026.P5892341890795127240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314847 n - A004525 n)

end

end A315026.P5892341890795127240

namespace A315026

/-- `A004396(n)+A314847(n)-A004525(n)` -/
def P5892341890795127240.Spec : Prop :=
  ∀ n, P5892341890795127240.a n = A315026 n

end A315026

/-! ## A315026.P13245063243969177463

`A313837(n)-A002264(n+1)`
-/

namespace A315026.P13245063243969177463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n - A002264 (n + 1)

end

end A315026.P13245063243969177463

namespace A315026

/-- `A313837(n)-A002264(n+1)` -/
def P13245063243969177463.Spec : Prop :=
  ∀ n, P13245063243969177463.a n = A315026 n

end A315026

/-! ## A315026.P16457528567120608391

`A004396(n)+A313837(n)-n`
-/

namespace A315026.P16457528567120608391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313837 n - (n : ℤ))

end

end A315026.P16457528567120608391

namespace A315026

/-- `A004396(n)+A313837(n)-n` -/
def P16457528567120608391.Spec : Prop :=
  ∀ n, P16457528567120608391.a n = A315026 n

end A315026

/-! ## A315026.P6516640603164354243

`A008576(n)+A313837(n)-A008486(n)`
-/

namespace A315026.P6516640603164354243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313837 n - A008486 n)

end

end A315026.P6516640603164354243

namespace A315026

/-- `A008576(n)+A313837(n)-A008486(n)` -/
def P6516640603164354243.Spec : Prop :=
  ∀ n, P6516640603164354243.a n = A315026 n

end A315026

/-! ## A315026.P6616803826056381690

`abs(A008592(n)-A314048(n))`
-/

namespace A315026.P6616803826056381690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314048 n|

end

end A315026.P6616803826056381690

namespace A315026

/-- `abs(A008592(n)-A314048(n))` -/
def P6616803826056381690.Spec : Prop :=
  ∀ n, P6616803826056381690.a n = A315026 n

end A315026

/-! ## A315026.P5428413965491968521

`A008458(n)+A008574(n)-A314048(n)`
-/

namespace A315026.P5428413965491968521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314048 n)

end

end A315026.P5428413965491968521

namespace A315026

/-- `A008458(n)+A008574(n)-A314048(n)` -/
def P5428413965491968521.Spec : Prop :=
  ∀ n, P5428413965491968521.a n = A315026 n

end A315026

/-! ## A315026.P1984144584129888651

`A315322(n)-A004525(n)`
-/

namespace A315026.P1984144584129888651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n - A004525 n

end

end A315026.P1984144584129888651

namespace A315026

/-- `A315322(n)-A004525(n)` -/
def P1984144584129888651.Spec : Prop :=
  ∀ n, P1984144584129888651.a n = A315026 n

end A315026

/-! ## A315026.P4811195420383708515

`A004525(A314222(n))+2*n`
-/

namespace A315026.P4811195420383708515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314222 n).toNat + (2 * n : ℤ)

end

end A315026.P4811195420383708515

namespace A315026

/-- `A004525(A314222(n))+2*n` -/
def P4811195420383708515.Spec : Prop :=
  ∀ n, P4811195420383708515.a n = A315026 n

end A315026

/-! ## A315026.P7951238383672700692

`A004525(A314240(n))+2*n`
-/

namespace A315026.P7951238383672700692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314240 n).toNat + (2 * n : ℤ)

end

end A315026.P7951238383672700692

namespace A315026

/-- `A004525(A314240(n))+2*n` -/
def P7951238383672700692.Spec : Prop :=
  ∀ n, P7951238383672700692.a n = A315026 n

end A315026

/-! ## A315026.P13058786316585621322

`A004525(A315527(n))+2*n`
-/

namespace A315026.P13058786316585621322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315527 n).toNat + (2 * n : ℤ)

end

end A315026.P13058786316585621322

namespace A315026

/-- `A004525(A315527(n))+2*n` -/
def P13058786316585621322.Spec : Prop :=
  ∀ n, P13058786316585621322.a n = A315026 n

end A315026

/-! ## A315026.P14389745624697389128

`A004525(A315538(n))+2*n`
-/

namespace A315026.P14389745624697389128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315538 n).toNat + (2 * n : ℤ)

end

end A315026.P14389745624697389128

namespace A315026

/-- `A004525(A315538(n))+2*n` -/
def P14389745624697389128.Spec : Prop :=
  ∀ n, P14389745624697389128.a n = A315026 n

end A315026

/-! ## A315026.P6669230506101358950

`A004525(A310400(2*n))`
-/

namespace A315026.P6669230506101358950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310400 (2 * n)).toNat

end

end A315026.P6669230506101358950

namespace A315026

/-- `A004525(A310400(2*n))` -/
def P6669230506101358950.Spec : Prop :=
  ∀ n, P6669230506101358950.a n = A315026 n

end A315026

/-! ## A315026.P18134799783156232181

`A004525(A310440(2*n))`
-/

namespace A315026.P18134799783156232181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310440 (2 * n)).toNat

end

end A315026.P18134799783156232181

namespace A315026

/-- `A004525(A310440(2*n))` -/
def P18134799783156232181.Spec : Prop :=
  ∀ n, P18134799783156232181.a n = A315026 n

end A315026

/-! ## A315026.P1254597844897321760

`A004525(A313546(2*n))`
-/

namespace A315026.P1254597844897321760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313546 (2 * n)).toNat

end

end A315026.P1254597844897321760

namespace A315026

/-- `A004525(A313546(2*n))` -/
def P1254597844897321760.Spec : Prop :=
  ∀ n, P1254597844897321760.a n = A315026 n

end A315026

/-! ## A315026.P17246713959608914798

`A004525(A313569(2*n))`
-/

namespace A315026.P17246713959608914798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313569 (2 * n)).toNat

end

end A315026.P17246713959608914798

namespace A315026

/-- `A004525(A313569(2*n))` -/
def P17246713959608914798.Spec : Prop :=
  ∀ n, P17246713959608914798.a n = A315026 n

end A315026

/-! ## A315026.P14229563904042031850

`A004525(A313575(2*n))`
-/

namespace A315026.P14229563904042031850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313575 (2 * n)).toNat

end

end A315026.P14229563904042031850

namespace A315026

/-- `A004525(A313575(2*n))` -/
def P14229563904042031850.Spec : Prop :=
  ∀ n, P14229563904042031850.a n = A315026 n

end A315026

/-! ## A315026.P11006440487793599273

`A004525(A313687(2*n))`
-/

namespace A315026.P11006440487793599273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313687 (2 * n)).toNat

end

end A315026.P11006440487793599273

namespace A315026

/-- `A004525(A313687(2*n))` -/
def P11006440487793599273.Spec : Prop :=
  ∀ n, P11006440487793599273.a n = A315026 n

end A315026

/-!
# A315027: Coordination sequence Gal.6.605.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315027, there is no canonical definition to state claims against.
-/

/-! ## A315027.P9930407901959801998

`A315274(A062399(n))-A342585(n+1)`
-/

namespace A315027.P9930407901959801998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315274 (A062399 n).toNat - A342585 (n + 1)

end

end A315027.P9930407901959801998

/-! ## A315027.P16093138075542048068

`A001822(n+1)²+A312943(n)+A001822(A191825(n))`
-/

namespace A315027.P16093138075542048068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1) ^ 2 + (A312943 n + A001822 (A191825 n).toNat)

end

end A315027.P16093138075542048068

/-! ## A315027.P10529724185073070648

`A001822(n+1)²+A335808(A047859(n))+A311296(n)`
-/

namespace A315027.P10529724185073070648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1) ^ 2 + (A335808 (A047859 n).toNat + A311296 n)

end

end A315027.P10529724185073070648

/-! ## A315027.P10273853566182094582

`A001822(n+1)²+A250120(n)-A280737(A001792(n))`
-/

namespace A315027.P10273853566182094582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (n + 1) ^ 2 + (A250120 n - A280737 (A001792 n).toNat)

end

end A315027.P10273853566182094582

/-! ## A315027.P8271686788361056483

`or(A054522(A051354(n)), A314511(n))`
-/

namespace A315027.P8271686788361056483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054522 (A051354 n).toNat) (A314511 n)

end

end A315027.P8271686788361056483

/-!
# A315028: Coordination sequence Gal.6.559.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315028, there is no canonical definition to state claims against.
-/

/-! ## A315028.P7467857696981806738

`and(A315035(A227549(n+1)), A315037(n))`
-/

namespace A315028.P7467857696981806738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A315035 (A227549 (n + 1)).toNat) (A315037 n)

end

end A315028.P7467857696981806738

/-! ## A315028.P15788991751115787812

`A313110(n)+A174875(A020695(n))`
-/

namespace A315028.P15788991751115787812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A174875 (A020695 n).toNat

end

end A315028.P15788991751115787812

/-! ## A315028.P13258731338186993713

`A312958(n)+A211225(A247609(n))`
-/

namespace A315028.P13258731338186993713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312958 n + A211225 (A247609 n).toNat

end

end A315028.P13258731338186993713

/-! ## A315028.P5643586406875916993

`or(A118102(A278640(n)), A313214(n))`
-/

namespace A315028.P5643586406875916993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118102 (A278640 n).toNat) (A313214 n)

end

end A315028.P5643586406875916993

/-! ## A315028.P1231284925126720374

`xor(A031346(A000757(n)), A250120(n))`
-/

namespace A315028.P1231284925126720374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A031346 (A000757 n).toNat) (A250120 n)

end

end A315028.P1231284925126720374

/-!
# A315029: Coordination sequence Gal.5.259.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315029, there is no canonical definition to state claims against.
-/

/-! ## A315029.P7363087387547666563

`A335447(A244761(n))+A250120(n)`
-/

namespace A315029.P7363087387547666563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (A244761 n).toNat + A250120 n

end

end A315029.P7363087387547666563

/-! ## A315029.P15293702735639058394

`A329747(A321405(n))+A250120(n)`
-/

namespace A315029.P15293702735639058394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329747 (A321405 n).toNat + A250120 n

end

end A315029.P15293702735639058394

/-! ## A315029.P4730631541677117599

`A335447(A244761(n))+A072154(2*n)`
-/

namespace A315029.P4730631541677117599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (A244761 n).toNat + A072154 (2 * n)

end

end A315029.P4730631541677117599

/-! ## A315029.P12914854158536570482

`A250120(n)+A124760(A274203(n))`
-/

namespace A315029.P12914854158536570482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A124760 (A274203 n).toNat

end

end A315029.P12914854158536570482

/-! ## A315029.P16924620903392299896

`A250120(n)+A065339(A339039(n))`
-/

namespace A315029.P16924620903392299896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A065339 (A339039 n).toNat

end

end A315029.P16924620903392299896

/-!
# A315030: Coordination sequence Gal.6.344.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315030, the canonical program `A315030.P10325846217098792989` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315030 has offset 0).

The definition of A315030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315030.P10325846217098792989

`A314893(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315030

/-- `A314893(n)+Δ[A011865(n)]` -/
def P10325846217098792989.Spec : Prop :=
  ∀ n, P10325846217098792989.a n = A315030 n

theorem P10325846217098792989.correct : P10325846217098792989.Spec := by
  intro n
  simp only [A315030]

end A315030

/-! ## A315030.P8562103849871457964

`A312526(n)+A004396(A004525(n))`
-/

namespace A315030.P8562103849871457964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312526 n + A004396 (A004525 n).toNat

end

end A315030.P8562103849871457964

namespace A315030

/-- `A312526(n)+A004396(A004525(n))` -/
def P8562103849871457964.Spec : Prop :=
  ∀ n, P8562103849871457964.a n = A315030 n

end A315030

/-! ## A315030.P14446334632320737000

`A313837(n)-A004396(n-A004525(n))`
-/

namespace A315030.P14446334632320737000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A315030.P14446334632320737000

namespace A315030

/-- `A313837(n)-A004396(n-A004525(n))` -/
def P14446334632320737000.Spec : Prop :=
  ∀ n, P14446334632320737000.a n = A315030 n

end A315030

/-! ## A315030.P1505837077398447201

`abs(10*n-A314043(n))`
-/

namespace A315030.P1505837077398447201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A314043 n|

end

end A315030.P1505837077398447201

namespace A315030

/-- `abs(10*n-A314043(n))` -/
def P1505837077398447201.Spec : Prop :=
  ∀ n, P1505837077398447201.a n = A315030 n

end A315030

/-! ## A315030.P2359778118532450993

`abs(A314043(n)-A008592(n))`
-/

namespace A315030.P2359778118532450993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A314043 n - A008592 n|

end

end A315030.P2359778118532450993

namespace A315030

/-- `abs(A314043(n)-A008592(n))` -/
def P2359778118532450993.Spec : Prop :=
  ∀ n, P2359778118532450993.a n = A315030 n

end A315030

/-! ## A315030.P18155076679227099364

`A008458(n)+A008574(n)-A314043(n)`
-/

namespace A315030.P18155076679227099364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314043 n)

end

end A315030.P18155076679227099364

namespace A315030

/-- `A008458(n)+A008574(n)-A314043(n)` -/
def P18155076679227099364.Spec : Prop :=
  ∀ n, P18155076679227099364.a n = A315030 n

end A315030

/-! ## A315030.P3939441217563146232

`A004525(A314247(n))+2*n`
-/

namespace A315030.P3939441217563146232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314247 n).toNat + (2 * n : ℤ)

end

end A315030.P3939441217563146232

namespace A315030

/-- `A004525(A314247(n))+2*n` -/
def P3939441217563146232.Spec : Prop :=
  ∀ n, P3939441217563146232.a n = A315030 n

end A315030

/-! ## A315030.P1356036631873901695

`A004525(A315540(n))+2*n`
-/

namespace A315030.P1356036631873901695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315540 n).toNat + (2 * n : ℤ)

end

end A315030.P1356036631873901695

namespace A315030

/-- `A004525(A315540(n))+2*n` -/
def P1356036631873901695.Spec : Prop :=
  ∀ n, P1356036631873901695.a n = A315030 n

end A315030

/-! ## A315030.P9158627861657557687

`A004525(A313103(2*n))`
-/

namespace A315030.P9158627861657557687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313103 (2 * n)).toNat

end

end A315030.P9158627861657557687

namespace A315030

/-- `A004525(A313103(2*n))` -/
def P9158627861657557687.Spec : Prop :=
  ∀ n, P9158627861657557687.a n = A315030 n

end A315030

/-! ## A315030.P12910492304243929790

`A004525(A313117(2*n))`
-/

namespace A315030.P12910492304243929790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313117 (2 * n)).toNat

end

end A315030.P12910492304243929790

namespace A315030

/-- `A004525(A313117(2*n))` -/
def P12910492304243929790.Spec : Prop :=
  ∀ n, P12910492304243929790.a n = A315030 n

end A315030

/-! ## A315030.P6052187748421419585

`A004525(A313213(2*n))`
-/

namespace A315030.P6052187748421419585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313213 (2 * n)).toNat

end

end A315030.P6052187748421419585

namespace A315030

/-- `A004525(A313213(2*n))` -/
def P6052187748421419585.Spec : Prop :=
  ∀ n, P6052187748421419585.a n = A315030 n

end A315030

/-! ## A315030.P4272840788894187604

`A004525(A314770(2*n))`
-/

namespace A315030.P4272840788894187604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314770 (2 * n)).toNat

end

end A315030.P4272840788894187604

namespace A315030

/-- `A004525(A314770(2*n))` -/
def P4272840788894187604.Spec : Prop :=
  ∀ n, P4272840788894187604.a n = A315030 n

end A315030

/-! ## A315030.P1801820238993839460

`A004525(A314899(2*n))`
-/

namespace A315030.P1801820238993839460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314899 (2 * n)).toNat

end

end A315030.P1801820238993839460

namespace A315030

/-- `A004525(A314899(2*n))` -/
def P1801820238993839460.Spec : Prop :=
  ∀ n, P1801820238993839460.a n = A315030 n

end A315030

/-! ## A315030.P3310179648508407063

`A004525(A314912(2*n))`
-/

namespace A315030.P3310179648508407063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314912 (2 * n)).toNat

end

end A315030.P3310179648508407063

namespace A315030

/-- `A004525(A314912(2*n))` -/
def P3310179648508407063.Spec : Prop :=
  ∀ n, P3310179648508407063.a n = A315030 n

end A315030

/-! ## A315030.P124983376916249959

`A004525(A315026(2*n))`
-/

namespace A315030.P124983376916249959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315026 (2 * n)).toNat

end

end A315030.P124983376916249959

namespace A315030

/-- `A004525(A315026(2*n))` -/
def P124983376916249959.Spec : Prop :=
  ∀ n, P124983376916249959.a n = A315030 n

end A315030

/-! ## A315030.P9355095514535660469

`A004525(A311475(2*n)+n)`
-/

namespace A315030.P9355095514535660469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311475 (2 * n) + (n : ℤ)).toNat

end

end A315030.P9355095514535660469

namespace A315030

/-- `A004525(A311475(2*n)+n)` -/
def P9355095514535660469.Spec : Prop :=
  ∀ n, P9355095514535660469.a n = A315030 n

end A315030

/-! ## A315030.P4626709239570391571

`A004525(A311861(2*n)+n)`
-/

namespace A315030.P4626709239570391571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311861 (2 * n) + (n : ℤ)).toNat

end

end A315030.P4626709239570391571

namespace A315030

/-- `A004525(A311861(2*n)+n)` -/
def P4626709239570391571.Spec : Prop :=
  ∀ n, P4626709239570391571.a n = A315030 n

end A315030

/-! ## A315030.P6570329223554985147

`A004525(A311924(2*n)+n)`
-/

namespace A315030.P6570329223554985147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311924 (2 * n) + (n : ℤ)).toNat

end

end A315030.P6570329223554985147

namespace A315030

/-- `A004525(A311924(2*n)+n)` -/
def P6570329223554985147.Spec : Prop :=
  ∀ n, P6570329223554985147.a n = A315030 n

end A315030

/-! ## A315030.P1926632444240154670

`A004525(A313789(2*n)-n)`
-/

namespace A315030.P1926632444240154670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313789 (2 * n) - (n : ℤ)).toNat

end

end A315030.P1926632444240154670

namespace A315030

/-- `A004525(A313789(2*n)-n)` -/
def P1926632444240154670.Spec : Prop :=
  ∀ n, P1926632444240154670.a n = A315030 n

end A315030

/-! ## A315030.P12849648269149202829

`A004525(A313794(2*n)-n)`
-/

namespace A315030.P12849648269149202829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313794 (2 * n) - (n : ℤ)).toNat

end

end A315030.P12849648269149202829

namespace A315030

/-- `A004525(A313794(2*n)-n)` -/
def P12849648269149202829.Spec : Prop :=
  ∀ n, P12849648269149202829.a n = A315030 n

end A315030

/-!
# A315031: Coordination sequence Gal.6.585.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315031, there is no canonical definition to state claims against.
-/

/-! ## A315031.P12873615901659312114

`A008586(n)+A000120(A042189(n))`
-/

namespace A315031.P12873615901659312114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A000120 (A042189 n).toNat

end

end A315031.P12873615901659312114

/-! ## A315031.P16723897274996095068

`A250120(n)+A014017(A003430(n))`
-/

namespace A315031.P16723897274996095068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A014017 (A003430 n).toNat

end

end A315031.P16723897274996095068

/-! ## A315031.P11673979986077224529

`A250120(n)-A131531(A148239(n))`
-/

namespace A315031.P11673979986077224529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A131531 (A148239 n).toNat

end

end A315031.P11673979986077224529

/-! ## A315031.P10456490257528859722

`A250120(n)-A332823(A052501(n))`
-/

namespace A315031.P10456490257528859722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A332823 (A052501 n).toNat

end

end A315031.P10456490257528859722

/-! ## A315031.P7123519698627708764

`A313836(n)-A327500(A047102(n))`
-/

namespace A315031.P7123519698627708764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n - A327500 (A047102 n).toNat

end

end A315031.P7123519698627708764

/-!
# A315032: Coordination sequence Gal.4.72.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315032, the canonical program `A315032.P2646316992499694624` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315032 has offset 0).

The definition of A315032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315032.P14747436487501987323

`A310529(A008574(n))/2-A008458(n)`
-/

namespace A315032.P14747436487501987323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310529 (A008574 n).toNat : ℚ) / 2 - (A008458 n : ℚ)

end

end A315032.P14747436487501987323

namespace A315032

/-- `A310529(A008574(n))/2-A008458(n)` -/
def P14747436487501987323.Spec : Prop :=
  ∀ n, P14747436487501987323.a n = (A315032 n : ℚ)

end A315032

/-! ## A315032.P2646316992499694624

`A008458(n)-A004525(A047588(2*n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A315032

/-- `A008458(n)-A004525(A047588(2*n+1))` -/
def P2646316992499694624.Spec : Prop :=
  ∀ n, P2646316992499694624.a n = A315032 n

theorem P2646316992499694624.correct : P2646316992499694624.Spec := by
  intro n
  simp only [A315032]

end A315032

/-! ## A315032.P2303429298857970991

`A313613(n)+A238468(n)`
-/

namespace A315032.P2303429298857970991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n + A238468 n

end

end A315032.P2303429298857970991

namespace A315032

/-- `A313613(n)+A238468(n)` -/
def P2303429298857970991.Spec : Prop :=
  ∀ n, P2303429298857970991.a n = A315032 n

end A315032

/-! ## A315032.P16564696235652676156

`A315204(n)-A175629(n)`
-/

namespace A315032.P16564696235652676156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315204 n - A175629 n

end

end A315032.P16564696235652676156

namespace A315032

/-- `A315204(n)-A175629(n)` -/
def P16564696235652676156.Spec : Prop :=
  ∀ n, P16564696235652676156.a n = A315032 n

end A315032

/-! ## A315032.P12819775627194907539

`A314954(n)-A238469(2*n)`
-/

namespace A315032.P12819775627194907539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314954 n - A238469 (2 * n)

end

end A315032.P12819775627194907539

namespace A315032

/-- `A314954(n)-A238469(2*n)` -/
def P12819775627194907539.Spec : Prop :=
  ∀ n, P12819775627194907539.a n = A315032 n

end A315032

/-! ## A315032.P15094955032885737636

`A313694(n)-A238470(n)`
-/

namespace A315032.P15094955032885737636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n - A238470 n

end

end A315032.P15094955032885737636

namespace A315032

/-- `A313694(n)-A238470(n)` -/
def P15094955032885737636.Spec : Prop :=
  ∀ n, P15094955032885737636.a n = A315032 n

end A315032

/-! ## A315032.P4850298413233848803

`abs(A008592(n)-A314040(n))`
-/

namespace A315032.P4850298413233848803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314040 n|

end

end A315032.P4850298413233848803

namespace A315032

/-- `abs(A008592(n)-A314040(n))` -/
def P4850298413233848803.Spec : Prop :=
  ∀ n, P4850298413233848803.a n = A315032 n

end A315032

/-! ## A315032.P9137564326390439403

`2*A008706(n)-A314040(n)`
-/

namespace A315032.P9137564326390439403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314040 n

end

end A315032.P9137564326390439403

namespace A315032

/-- `2*A008706(n)-A314040(n)` -/
def P9137564326390439403.Spec : Prop :=
  ∀ n, P9137564326390439403.a n = A315032 n

end A315032

/-! ## A315032.P13846451140345543101

`A008458(n)+A008574(n)-A314040(n)`
-/

namespace A315032.P13846451140345543101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314040 n)

end

end A315032.P13846451140345543101

namespace A315032

/-- `A008458(n)+A008574(n)-A314040(n)` -/
def P13846451140345543101.Spec : Prop :=
  ∀ n, P13846451140345543101.a n = A315032 n

end A315032

/-! ## A315032.P11531019885815013960

`A004396(A311914(n))+2*n`
-/

namespace A315032.P11531019885815013960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311914 n).toNat + (2 * n : ℤ)

end

end A315032.P11531019885815013960

namespace A315032

/-- `A004396(A311914(n))+2*n` -/
def P11531019885815013960.Spec : Prop :=
  ∀ n, P11531019885815013960.a n = A315032 n

end A315032

/-! ## A315032.P8781190612326213520

`A004396(A312289(n))+2*n`
-/

namespace A315032.P8781190612326213520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312289 n).toNat + (2 * n : ℤ)

end

end A315032.P8781190612326213520

namespace A315032

/-- `A004396(A312289(n))+2*n` -/
def P8781190612326213520.Spec : Prop :=
  ∀ n, P8781190612326213520.a n = A315032 n

end A315032

/-! ## A315032.P11640423946479797899

`A005843(n)+A004396(A311914(n))`
-/

namespace A315032.P11640423946479797899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A311914 n).toNat

end

end A315032.P11640423946479797899

namespace A315032

/-- `A005843(n)+A004396(A311914(n))` -/
def P11640423946479797899.Spec : Prop :=
  ∀ n, P11640423946479797899.a n = A315032 n

end A315032

/-! ## A315032.P14520989538163101515

`A005843(n)+A004396(A312289(n))`
-/

namespace A315032.P14520989538163101515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312289 n).toNat

end

end A315032.P14520989538163101515

namespace A315032

/-- `A005843(n)+A004396(A312289(n))` -/
def P14520989538163101515.Spec : Prop :=
  ∀ n, P14520989538163101515.a n = A315032 n

end A315032

/-! ## A315032.P15152248672014942076

`A008458(n)+n-A004526(A310341(n))`
-/

namespace A315032.P15152248672014942076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A310341 n).toNat)

end

end A315032.P15152248672014942076

namespace A315032

/-- `A008458(n)+n-A004526(A310341(n))` -/
def P15152248672014942076.Spec : Prop :=
  ∀ n, P15152248672014942076.a n = A315032 n

end A315032

/-! ## A315032.P8290177531912202530

`A313886(n)-Δ[A011858(n)]`
-/

namespace A315032.P8290177531912202530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313886 n - (f1 (n + 1) - f1 n)

end

end A315032.P8290177531912202530

namespace A315032

/-- `A313886(n)-Δ[A011858(n)]` -/
def P8290177531912202530.Spec : Prop :=
  ∀ n, P8290177531912202530.a n = A315032 n

end A315032

/-! ## A315032.P4160112934469940987

`A005843(A008458(n)-n)-A314040(n)`
-/

namespace A315032.P4160112934469940987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A314040 n

end

end A315032.P4160112934469940987

namespace A315032

/-- `A005843(A008458(n)-n)-A314040(n)` -/
def P4160112934469940987.Spec : Prop :=
  ∀ n, P4160112934469940987.a n = A315032 n

end A315032

/-! ## A315032.P17693134475560517890

`A004525(A314249(n))+2*n`
-/

namespace A315032.P17693134475560517890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314249 n).toNat + (2 * n : ℤ)

end

end A315032.P17693134475560517890

namespace A315032

/-- `A004525(A314249(n))+2*n` -/
def P17693134475560517890.Spec : Prop :=
  ∀ n, P17693134475560517890.a n = A315032 n

end A315032

/-! ## A315032.P11856231425016588081

`A004525(A315541(n))+2*n`
-/

namespace A315032.P11856231425016588081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315541 n).toNat + (2 * n : ℤ)

end

end A315032.P11856231425016588081

namespace A315032

/-- `A004525(A315541(n))+2*n` -/
def P11856231425016588081.Spec : Prop :=
  ∀ n, P11856231425016588081.a n = A315032 n

end A315032

/-! ## A315032.P8447325373590268368

`A004396(A310503(2*n)-A008585(n))`
-/

namespace A315032.P8447325373590268368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310503 (2 * n) - A008585 n).toNat

end

end A315032.P8447325373590268368

namespace A315032

/-- `A004396(A310503(2*n)-A008585(n))` -/
def P8447325373590268368.Spec : Prop :=
  ∀ n, P8447325373590268368.a n = A315032 n

end A315032

/-! ## A315032.P1229765267770776304

`A314193(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315032.P1229765267770776304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314193 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315032.P1229765267770776304

namespace A315032

/-- `A314193(2*n)+A008458(n+1)-(12*n+6)` -/
def P1229765267770776304.Spec : Prop :=
  ∀ n, P1229765267770776304.a n = A315032 n

end A315032

/-!
# A315033: Coordination sequence Gal.5.129.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315033, the canonical program `A315033.P12102066893602816960` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315033 has offset 0).

The definition of A315033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315033.P12102066893602816960

`A314848(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315033

/-- `A314848(n)+Δ[A011862(n)]` -/
def P12102066893602816960.Spec : Prop :=
  ∀ n, P12102066893602816960.a n = A315033 n

theorem P12102066893602816960.correct : P12102066893602816960.Spec := by
  intro n
  simp only [A315033]

end A315033

/-! ## A315033.P4197135657172005846

`A314692(n)+Δ[2*A011862(n)]`
-/

namespace A315033.P4197135657172005846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n + (f1 (n + 1) - f1 n)

end

end A315033.P4197135657172005846

namespace A315033

/-- `A314692(n)+Δ[2*A011862(n)]` -/
def P4197135657172005846.Spec : Prop :=
  ∀ n, P4197135657172005846.a n = A315033 n

theorem P4197135657172005846.correct : P4197135657172005846.Spec := by
  intro n
  simp only [A315033, Nat.add_sub_cancel, A315033.P4197135657172005846.f1, A315033.P4197135657172005846.a, A315033.P12102066893602816960.f1, A315033.P12102066893602816960.a, A011862, A011862.P9485299441699197278.a, A314692, A314692.P15104501043436561296.a, A314848, A314848.P640167569373594197.f1, A314848.P640167569373594197.a, A067251, A067251.P5430989431558208268.a, A342851, A342851.P3299205121731091990.f1, A342851.P3299205121731091990.f2, A342851.P3299205121731091990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315033

/-! ## A315033.P13905439273464248331

`A004396(n)+A314848(n)-A004396(A004396(n))`
-/

namespace A315033.P13905439273464248331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314848 n - A004396 (A004396 n).toNat)

end

end A315033.P13905439273464248331

namespace A315033

/-- `A004396(n)+A314848(n)-A004396(A004396(n))` -/
def P13905439273464248331.Spec : Prop :=
  ∀ n, P13905439273464248331.a n = A315033 n

end A315033

/-! ## A315033.P10942323270663284876

`abs(A008592(n)-A314039(n))`
-/

namespace A315033.P10942323270663284876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314039 n|

end

end A315033.P10942323270663284876

namespace A315033

/-- `abs(A008592(n)-A314039(n))` -/
def P10942323270663284876.Spec : Prop :=
  ∀ n, P10942323270663284876.a n = A315033 n

end A315033

/-! ## A315033.P7371521071573168140

`A008458(n)+A008574(n)-A314039(n)`
-/

namespace A315033.P7371521071573168140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314039 n)

end

end A315033.P7371521071573168140

namespace A315033

/-- `A008458(n)+A008574(n)-A314039(n)` -/
def P7371521071573168140.Spec : Prop :=
  ∀ n, P7371521071573168140.a n = A315033 n

end A315033

/-! ## A315033.P9482693844397659536

`A313846(n)-∑[A022003(n)]`
-/

namespace A315033.P9482693844397659536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313846 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315033.P9482693844397659536

namespace A315033

/-- `A313846(n)-∑[A022003(n)]` -/
def P9482693844397659536.Spec : Prop :=
  ∀ n, P9482693844397659536.a n = A315033 n

theorem P9482693844397659536.correct : P9482693844397659536.Spec := by
  intro n
  simp only [A315033, Nat.add_sub_cancel, A315033.P9482693844397659536.f1, A315033.P9482693844397659536.a, A315033.P12102066893602816960.f1, A315033.P12102066893602816960.a, A011862, A011862.P9485299441699197278.a, A022003, A022003.P8302093470414743033.a, A313846, A313846.P7134346169744339600.f1, A313846.P7134346169744339600.a, A314848, A314848.P640167569373594197.f1, A314848.P640167569373594197.a, A314692, A314692.P15104501043436561296.a, A067251, A067251.P5430989431558208268.a, A342851, A342851.P3299205121731091990.f1, A342851.P3299205121731091990.f2, A342851.P3299205121731091990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315033

/-! ## A315033.P7703626598161809664

`A313846(n)-Δ[A130518(n)]`
-/

namespace A315033.P7703626598161809664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313846 n - (f1 (n + 1) - f1 n)

end

end A315033.P7703626598161809664

namespace A315033

/-- `A313846(n)-Δ[A130518(n)]` -/
def P7703626598161809664.Spec : Prop :=
  ∀ n, P7703626598161809664.a n = A315033 n

end A315033

/-! ## A315033.P1280671222612362802

`A313846(n)-A002264(n+1)`
-/

namespace A315033.P1280671222612362802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313846 n - A002264 (n + 1)

end

end A315033.P1280671222612362802

namespace A315033

/-- `A313846(n)-A002264(n+1)` -/
def P1280671222612362802.Spec : Prop :=
  ∀ n, P1280671222612362802.a n = A315033 n

end A315033

/-! ## A315033.P5040276756229060531

`A008576(n)+A313846(n)-A008486(n)`
-/

namespace A315033.P5040276756229060531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313846 n - A008486 n)

end

end A315033.P5040276756229060531

namespace A315033

/-- `A008576(n)+A313846(n)-A008486(n)` -/
def P5040276756229060531.Spec : Prop :=
  ∀ n, P5040276756229060531.a n = A315033 n

end A315033

/-! ## A315033.P2210206577401694159

`A004525(A314251(n))+2*n`
-/

namespace A315033.P2210206577401694159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314251 n).toNat + (2 * n : ℤ)

end

end A315033.P2210206577401694159

namespace A315033

/-- `A004525(A314251(n))+2*n` -/
def P2210206577401694159.Spec : Prop :=
  ∀ n, P2210206577401694159.a n = A315033 n

end A315033

/-! ## A315033.P9379110687761923748

`A004525(A315546(n))+2*n`
-/

namespace A315033.P9379110687761923748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315546 n).toNat + (2 * n : ℤ)

end

end A315033.P9379110687761923748

namespace A315033

/-- `A004525(A315546(n))+2*n` -/
def P9379110687761923748.Spec : Prop :=
  ∀ n, P9379110687761923748.a n = A315033 n

end A315033

/-! ## A315033.P4143787429715455843

`A005843(n)+A004525(A314251(n))`
-/

namespace A315033.P4143787429715455843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A314251 n).toNat

end

end A315033.P4143787429715455843

namespace A315033

/-- `A005843(n)+A004525(A314251(n))` -/
def P4143787429715455843.Spec : Prop :=
  ∀ n, P4143787429715455843.a n = A315033 n

end A315033

/-! ## A315033.P3021443990685501832

`A004396(A313894(n)+2*n)`
-/

namespace A315033.P3021443990685501832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313894 n + (2 * n : ℤ)).toNat

end

end A315033.P3021443990685501832

namespace A315033

/-- `A004396(A313894(n)+2*n)` -/
def P3021443990685501832.Spec : Prop :=
  ∀ n, P3021443990685501832.a n = A315033 n

end A315033

/-! ## A315033.P7049481533937008477

`A004396(A313962(n)+2*n)`
-/

namespace A315033.P7049481533937008477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313962 n + (2 * n : ℤ)).toNat

end

end A315033.P7049481533937008477

namespace A315033

/-- `A004396(A313962(n)+2*n)` -/
def P7049481533937008477.Spec : Prop :=
  ∀ n, P7049481533937008477.a n = A315033 n

end A315033

/-! ## A315033.P14169619965552550934

`A004396(2*(A314848(n)-n))`
-/

namespace A315033.P14169619965552550934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A314848 n - (n : ℤ))).toNat

end

end A315033.P14169619965552550934

namespace A315033

/-- `A004396(2*(A314848(n)-n))` -/
def P14169619965552550934.Spec : Prop :=
  ∀ n, P14169619965552550934.a n = A315033 n

end A315033

/-! ## A315033.P17711291989055219870

`A004396(A313894(n)+n+n)`
-/

namespace A315033.P17711291989055219870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313894 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315033.P17711291989055219870

namespace A315033

/-- `A004396(A313894(n)+n+n)` -/
def P17711291989055219870.Spec : Prop :=
  ∀ n, P17711291989055219870.a n = A315033 n

end A315033

/-! ## A315033.P1719529303407385071

`A004396(A313962(n)+n+n)`
-/

namespace A315033.P1719529303407385071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313962 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315033.P1719529303407385071

namespace A315033

/-- `A004396(A313962(n)+n+n)` -/
def P1719529303407385071.Spec : Prop :=
  ∀ n, P1719529303407385071.a n = A315033 n

end A315033

/-! ## A315033.P11699987859056234412

`A004396(A004277(n)+A312555(n)+A004396(n))`
-/

namespace A315033.P11699987859056234412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004277 n + (A312555 n + A004396 n)).toNat

end

end A315033.P11699987859056234412

namespace A315033

/-- `A004396(A004277(n)+A312555(n)+A004396(n))` -/
def P11699987859056234412.Spec : Prop :=
  ∀ n, P11699987859056234412.a n = A315033 n

end A315033

/-! ## A315033.P17650410032379759940

`A314692(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A315033.P17650410032379759940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ))

end

end A315033.P17650410032379759940

namespace A315033

/-- `A314692(2*n)+A008574(n+1)-(8*n+4)` -/
def P17650410032379759940.Spec : Prop :=
  ∀ n, P17650410032379759940.a n = A315033 n

end A315033

/-! ## A315033.P14994834126691919536

`A008574(2*n)+A314692(2*n)-A008458(2*n)`
-/

namespace A315033.P14994834126691919536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (A314692 (2 * n) - A008458 (2 * n))

end

end A315033.P14994834126691919536

namespace A315033

/-- `A008574(2*n)+A314692(2*n)-A008458(2*n)` -/
def P14994834126691919536.Spec : Prop :=
  ∀ n, P14994834126691919536.a n = A315033 n

end A315033

/-!
# A315034: Coordination sequence Gal.6.323.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315034, the canonical program `A315034.P9202512944006640459` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315034 has offset 0).

The definition of A315034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315034.P9202512944006640459

`A314894(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315034

/-- `A314894(n)+Δ[A011864(n)]` -/
def P9202512944006640459.Spec : Prop :=
  ∀ n, P9202512944006640459.a n = A315034 n

theorem P9202512944006640459.correct : P9202512944006640459.Spec := by
  intro n
  simp only [A315034]

end A315034

/-! ## A315034.P11250204899760287789

`abs(A008592(n)-A314038(n))`
-/

namespace A315034.P11250204899760287789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314038 n|

end

end A315034.P11250204899760287789

namespace A315034

/-- `abs(A008592(n)-A314038(n))` -/
def P11250204899760287789.Spec : Prop :=
  ∀ n, P11250204899760287789.a n = A315034 n

end A315034

/-! ## A315034.P16401036482823437449

`A008458(n)+A008574(n)-A314038(n)`
-/

namespace A315034.P16401036482823437449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314038 n)

end

end A315034.P16401036482823437449

namespace A315034

/-- `A008458(n)+A008574(n)-A314038(n)` -/
def P16401036482823437449.Spec : Prop :=
  ∀ n, P16401036482823437449.a n = A315034 n

end A315034

/-! ## A315034.P10176729593375788303

`2*n+A004396(A311932(n))`
-/

namespace A315034.P10176729593375788303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A311932 n).toNat

end

end A315034.P10176729593375788303

namespace A315034

/-- `2*n+A004396(A311932(n))` -/
def P10176729593375788303.Spec : Prop :=
  ∀ n, P10176729593375788303.a n = A315034 n

end A315034

/-! ## A315034.P4970449244594645326

`A008585(n)-(n-A004396(A311932(n)))`
-/

namespace A315034.P4970449244594645326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A311932 n).toNat)

end

end A315034.P4970449244594645326

namespace A315034

/-- `A008585(n)-(n-A004396(A311932(n)))` -/
def P4970449244594645326.Spec : Prop :=
  ∀ n, P4970449244594645326.a n = A315034 n

end A315034

/-! ## A315034.P5827818589915207666

`A310380(n)+A011582(n)`
-/

namespace A315034.P5827818589915207666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 n + A011582 n

end

end A315034.P5827818589915207666

namespace A315034

/-- `A310380(n)+A011582(n)` -/
def P5827818589915207666.Spec : Prop :=
  ∀ n, P5827818589915207666.a n = A315034 n

theorem P5827818589915207666.correct : P5827818589915207666.Spec := by
  intro n
  simp only [A315034, Nat.add_sub_cancel, A315034.P5827818589915207666.a, A315034.P9202512944006640459.f1, A315034.P9202512944006640459.a, A011582, A011582.P16106722350450749318.a, A011864, A011864.P3547417513882699266.a, A310380, A310380.P5834693299645205668.a, A314894, A314894.P7570080516091398476.a, A008592, A008592.P4981059802862696142.a, A314117, A314117.P6288149183709967192.a, A017401, A017401.P13777489390994228607.a, A158666, A158666.P4882796267492486870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315034

/-! ## A315034.P10892987572702084218

`A180004(A314849(n))`
-/

namespace A315034.P10892987572702084218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A314849 n).toNat

end

end A315034.P10892987572702084218

namespace A315034

/-- `A180004(A314849(n))` -/
def P10892987572702084218.Spec : Prop :=
  ∀ n, P10892987572702084218.a n = A315034 n

end A315034

/-! ## A315034.P15629691910989395004

`A004525(A314253(n))+2*n`
-/

namespace A315034.P15629691910989395004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314253 n).toNat + (2 * n : ℤ)

end

end A315034.P15629691910989395004

namespace A315034

/-- `A004525(A314253(n))+2*n` -/
def P15629691910989395004.Spec : Prop :=
  ∀ n, P15629691910989395004.a n = A315034 n

end A315034

/-! ## A315034.P7780959449295902675

`A004525(A315548(n))+2*n`
-/

namespace A315034.P7780959449295902675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315548 n).toNat + (2 * n : ℤ)

end

end A315034.P7780959449295902675

namespace A315034

/-- `A004525(A315548(n))+2*n` -/
def P7780959449295902675.Spec : Prop :=
  ∀ n, P7780959449295902675.a n = A315034 n

end A315034

/-! ## A315034.P9637335847346854388

`A005843(n)+A004525(A314253(n))`
-/

namespace A315034.P9637335847346854388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A314253 n).toNat

end

end A315034.P9637335847346854388

namespace A315034

/-- `A005843(n)+A004525(A314253(n))` -/
def P9637335847346854388.Spec : Prop :=
  ∀ n, P9637335847346854388.a n = A315034 n

end A315034

/-! ## A315034.P9122901802270971661

`A005843(n)+A004525(A315548(n))`
-/

namespace A315034.P9122901802270971661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A315548 n).toNat

end

end A315034.P9122901802270971661

namespace A315034

/-- `A005843(n)+A004525(A315548(n))` -/
def P9122901802270971661.Spec : Prop :=
  ∀ n, P9122901802270971661.a n = A315034 n

end A315034

/-! ## A315034.P2920645388763789950

`A004396(A311932(n)+A008486(n))`
-/

namespace A315034.P2920645388763789950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311932 n + A008486 n).toNat

end

end A315034.P2920645388763789950

namespace A315034

/-- `A004396(A311932(n)+A008486(n))` -/
def P2920645388763789950.Spec : Prop :=
  ∀ n, P2920645388763789950.a n = A315034 n

end A315034

/-! ## A315034.P1195948022399277014

`A004396(A311932(n)+A008585(n))`
-/

namespace A315034.P1195948022399277014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311932 n + A008585 n).toNat

end

end A315034.P1195948022399277014

namespace A315034

/-- `A004396(A311932(n)+A008585(n))` -/
def P1195948022399277014.Spec : Prop :=
  ∀ n, P1195948022399277014.a n = A315034 n

end A315034

/-! ## A315034.P6778058228196676401

`A314194(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315034.P6778058228196676401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314194 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315034.P6778058228196676401

namespace A315034

/-- `A314194(2*n)+A008458(n+1)-(12*n+6)` -/
def P6778058228196676401.Spec : Prop :=
  ∀ n, P6778058228196676401.a n = A315034 n

end A315034

/-! ## A315034.P692516865175039

`A004525(A310442(2*n))`
-/

namespace A315034.P692516865175039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310442 (2 * n)).toNat

end

end A315034.P692516865175039

namespace A315034

/-- `A004525(A310442(2*n))` -/
def P692516865175039.Spec : Prop :=
  ∀ n, P692516865175039.a n = A315034 n

end A315034

/-! ## A315034.P13237906039646210567

`A004525(A313696(2*n))`
-/

namespace A315034.P13237906039646210567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313696 (2 * n)).toNat

end

end A315034.P13237906039646210567

namespace A315034

/-- `A004525(A313696(2*n))` -/
def P13237906039646210567.Spec : Prop :=
  ∀ n, P13237906039646210567.a n = A315034 n

end A315034

/-! ## A315034.P7199367631828073019

`A004525(A313704(2*n))`
-/

namespace A315034.P7199367631828073019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313704 (2 * n)).toNat

end

end A315034.P7199367631828073019

namespace A315034

/-- `A004525(A313704(2*n))` -/
def P7199367631828073019.Spec : Prop :=
  ∀ n, P7199367631828073019.a n = A315034 n

end A315034

/-!
# A315035: Coordination sequence Gal.6.470.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315035, there is no canonical definition to state claims against.
-/

/-! ## A315035.P8282823121580091394

`or(A312561(n), A320888(A155212(n)))`
-/

namespace A315035.P8282823121580091394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312561 n) (A320888 (A155212 n).toNat)

end

end A315035.P8282823121580091394

/-! ## A315035.P8764573211465500272

`or(A178526(A178531(n+1)), A312561(n))`
-/

namespace A315035.P8764573211465500272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178526 (A178531 (n + 1)).toNat) (A312561 n)

end

end A315035.P8764573211465500272

/-! ## A315035.P9469928758762863372

`A250120(n)+A046660(A074115(n))`
-/

namespace A315035.P9469928758762863372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A046660 (A074115 n).toNat

end

end A315035.P9469928758762863372

/-! ## A315035.P16242884763036451811

`A250120(n)+A037846(A179327(n))`
-/

namespace A315035.P16242884763036451811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A037846 (A179327 n).toNat

end

end A315035.P16242884763036451811

/-! ## A315035.P2513040037077361212

`A250120(n)+A037877(A201967(n))`
-/

namespace A315035.P2513040037077361212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A037877 (A201967 n).toNat

end

end A315035.P2513040037077361212

/-!
# A315036: Coordination sequence Gal.4.122.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315036, the canonical program `A315036.P2155873158218205657` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315036 has offset 0).

The definition of A315036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315036.P18062515212152049277

`A105812(A285869(n))+5*n`
-/

namespace A315036.P18062515212152049277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A285869 n).toNat + (5 * n : ℤ)

end

end A315036.P18062515212152049277

namespace A315036

/-- `A105812(A285869(n))+5*n` -/
def P18062515212152049277.Spec : Prop :=
  ∀ n, P18062515212152049277.a n = A315036 n

end A315036

/-! ## A315036.P14029975638961406274

`A314922(n)+A002264(A088439(n))`
-/

namespace A315036.P14029975638961406274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314922 n + A002264 (A088439 n).toNat

end

end A315036.P14029975638961406274

namespace A315036

/-- `A314922(n)+A002264(A088439(n))` -/
def P14029975638961406274.Spec : Prop :=
  ∀ n, P14029975638961406274.a n = A315036 n

theorem P14029975638961406274.correct : P14029975638961406274.Spec := by
  intro n
  simp only [A315036, Nat.add_sub_cancel, A315036.P14029975638961406274.a, A315036.P2155873158218205657.a, A002264, A002264.P5647656940077635922.a, A008706, A008706.P1571514609299617601.a, A060145, A060145.P9806475002723103157.a, A062157, A062157.P13834877263571195293.a, A088439, A088439.P15402745793749335137.a, A314922, A314922.P17749781584277462255.a, A004956, A004956.P1094694600621767936.a, A195121, A195121.P14500461516378876145.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315036

/-! ## A315036.P2155873158218205657

`A008706(n)-A062157(A060145(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315036

/-- `A008706(n)-A062157(A060145(n))` -/
def P2155873158218205657.Spec : Prop :=
  ∀ n, P2155873158218205657.a n = A315036 n

theorem P2155873158218205657.correct : P2155873158218205657.Spec := by
  intro n
  simp only [A315036]

end A315036

/-! ## A315036.P10630953828442617650

`A313786(n)-A142150(n)`
-/

namespace A315036.P10630953828442617650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 n - A142150 n

end

end A315036.P10630953828442617650

namespace A315036

/-- `A313786(n)-A142150(n)` -/
def P10630953828442617650.Spec : Prop :=
  ∀ n, P10630953828442617650.a n = A315036 n

end A315036

/-! ## A315036.P3664056228460285990

`A026741(n)+A313786(n)-n`
-/

namespace A315036.P3664056228460285990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A313786 n - (n : ℤ))

end

end A315036.P3664056228460285990

namespace A315036

/-- `A026741(n)+A313786(n)-n` -/
def P3664056228460285990.Spec : Prop :=
  ∀ n, P3664056228460285990.a n = A315036 n

end A315036

/-! ## A315036.P7597700513183933110

`A313786(n)-A004526(A193356(n+1))`
-/

namespace A315036.P7597700513183933110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 n - A004526 (A193356 (n + 1)).toNat

end

end A315036.P7597700513183933110

namespace A315036

/-- `A313786(n)-A004526(A193356(n+1))` -/
def P7597700513183933110.Spec : Prop :=
  ∀ n, P7597700513183933110.a n = A315036 n

end A315036

/-! ## A315036.P1729151355117848775

`A014681(A329670(n)+A008706(n))`
-/

namespace A315036.P1729151355117848775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A329670 n + A008706 n).toNat

end

end A315036.P1729151355117848775

namespace A315036

/-- `A014681(A329670(n)+A008706(n))` -/
def P1729151355117848775.Spec : Prop :=
  ∀ n, P1729151355117848775.a n = A315036 n

end A315036

/-! ## A315036.P14253278088891933229

`A016921(n)-A014681(A131209(n))`
-/

namespace A315036.P14253278088891933229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - A014681 (A131209 n).toNat

end

end A315036.P14253278088891933229

namespace A315036

/-- `A016921(n)-A014681(A131209(n))` -/
def P14253278088891933229.Spec : Prop :=
  ∀ n, P14253278088891933229.a n = A315036 n

end A315036

/-! ## A315036.P11246401799647779817

`A131209(n)+A040000(n)*A053438(n)`
-/

namespace A315036.P11246401799647779817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n + A040000 n * A053438 n

end

end A315036.P11246401799647779817

namespace A315036

/-- `A131209(n)+A040000(n)*A053438(n)` -/
def P11246401799647779817.Spec : Prop :=
  ∀ n, P11246401799647779817.a n = A315036 n

end A315036

/-!
# A315037: Coordination sequence Gal.5.218.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315037, there is no canonical definition to state claims against.
-/

/-! ## A315037.P18021505648883015540

`or(A273046(n+1)%3, A312979(n))`
-/

namespace A315037.P18021505648883015540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A273046 (n + 1)) 3) (A312979 n)

end

end A315037.P18021505648883015540

/-! ## A315037.P1797449461180818383

`A250120(n)+A241181(A168607(n))`
-/

namespace A315037.P1797449461180818383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A241181 (A168607 n).toNat

end

end A315037.P1797449461180818383

/-! ## A315037.P8473213307623321726

`A250120(n)+A086134(A255967(n+1))`
-/

namespace A315037.P8473213307623321726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A086134 (A255967 (n + 1)).toNat

end

end A315037.P8473213307623321726

/-! ## A315037.P1404178110525765999

`A340867(A182875(2*(n+2)))+A250120(n)`
-/

namespace A315037.P1404178110525765999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340867 (A182875 (2 * (n + 2))).toNat + A250120 n

end

end A315037.P1404178110525765999

/-! ## A315037.P11878494364487295095

`A315265(n)-A007814(A099577(2*n))`
-/

namespace A315037.P11878494364487295095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n - A007814 (A099577 (2 * n)).toNat

end

end A315037.P11878494364487295095

/-!
# A315038: Coordination sequence Gal.5.260.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315038, there is no canonical definition to state claims against.
-/

/-! ## A315038.P15445585439062322378

`A314552(n)+A293896(A150117(n))`
-/

namespace A315038.P15445585439062322378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314552 n + A293896 (A150117 n).toNat

end

end A315038.P15445585439062322378

/-! ## A315038.P287210793958667578

`A313923(n)-A353496(A006318(n))`
-/

namespace A315038.P287210793958667578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 n - A353496 (A006318 n).toNat

end

end A315038.P287210793958667578

/-! ## A315038.P2588435833190228213

`or(A178306(A030436(n)), A312561(n))`
-/

namespace A315038.P2588435833190228213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178306 (A030436 n).toNat) (A312561 n)

end

end A315038.P2588435833190228213

/-! ## A315038.P6411039252227059391

`A310264(n)+A035202(A188546(n+1))`
-/

namespace A315038.P6411039252227059391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310264 n + A035202 (A188546 (n + 1)).toNat

end

end A315038.P6411039252227059391

/-!
# A315039: Coordination sequence Gal.3.61.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315039, the canonical program `A315039.P14949474118116711109` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315039 has offset 0).

The definition of A315039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315039.P14949474118116711109

`A314922(n)+A008615(A019425(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315039

/-- `A314922(n)+A008615(A019425(n))` -/
def P14949474118116711109.Spec : Prop :=
  ∀ n, P14949474118116711109.a n = A315039 n

theorem P14949474118116711109.correct : P14949474118116711109.Spec := by
  intro n
  simp only [A315039]

end A315039

/-! ## A315039.P17727375477019011144

`A314922(n)+A002264(A133265(n))`
-/

namespace A315039.P17727375477019011144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314922 n + A002264 (A133265 n).toNat

end

end A315039.P17727375477019011144

namespace A315039

/-- `A314922(n)+A002264(A133265(n))` -/
def P17727375477019011144.Spec : Prop :=
  ∀ n, P17727375477019011144.a n = A315039 n

end A315039

/-! ## A315039.P3666431082722120429

`A314922(n)-A002264(A133265(n))*A057428(n)`
-/

namespace A315039.P3666431082722120429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314922 n - A002264 (A133265 n).toNat * A057428 n

end

end A315039.P3666431082722120429

namespace A315039

/-- `A314922(n)-A002264(A133265(n))*A057428(n)` -/
def P3666431082722120429.Spec : Prop :=
  ∀ n, P3666431082722120429.a n = A315039 n

end A315039

/-!
# A315040: Coordination sequence Gal.6.319.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315040, there is no canonical definition to state claims against.
-/

/-! ## A315040.P11864457195880837612

`A345428(n+1)+record[A345417(n+1)]`
-/

namespace A315040.P11864457195880837612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345428 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315040.P11864457195880837612

/-! ## A315040.P4765758339018342907

`record[A345417(n+1)]+2*A345426(n+1)+1+n`
-/

namespace A315040.P4765758339018342907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * A345426 (n + 1) + 1 + (n : ℤ))

end

end A315040.P4765758339018342907

/-! ## A315040.P10908546370547948560

`A311626(n)-(A292378(A000984(n))-n)`
-/

namespace A315040.P10908546370547948560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311626 n - (A292378 (A000984 n).toNat - (n : ℤ))

end

end A315040.P10908546370547948560

/-! ## A315040.P14194171059720482218

`record[A345417(n+1)]+A001478(n+1)+2*A345427(n+1)`
-/

namespace A315040.P14194171059720482218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A001478 (n + 1) + 2 * A345427 (n + 1))

end

end A315040.P14194171059720482218

/-!
# A315041: Coordination sequence Gal.6.377.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315041, there is no canonical definition to state claims against.
-/

/-! ## A315041.P6912213829147425974

`or(A023969(A267946(n+1)), A314516(n))`
-/

namespace A315041.P6912213829147425974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023969 (A267946 (n + 1)).toNat) (A314516 n)

end

end A315041.P6912213829147425974

/-! ## A315041.P6862394236836965714

`A314872(n)+A001221(A260373(n))`
-/

namespace A315041.P6862394236836965714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314872 n + A001221 (A260373 n).toNat

end

end A315041.P6862394236836965714

/-! ## A315041.P13756215252297535718

`A314516(n)+A000035(A263102(n))`
-/

namespace A315041.P13756215252297535718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314516 n + A000035 (A263102 n).toNat

end

end A315041.P13756215252297535718

/-! ## A315041.P15242043038687731696

`A313191(n)+A276935(A017438(n))`
-/

namespace A315041.P15242043038687731696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313191 n + A276935 (A017438 n).toNat

end

end A315041.P15242043038687731696

/-! ## A315041.P366659747952083770

`A313991(n)-A001222(A001764(n))`
-/

namespace A315041.P366659747952083770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313991 n - A001222 (A001764 n).toNat

end

end A315041.P366659747952083770

/-!
# A315042: Coordination sequence Gal.6.477.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315042, there is no canonical definition to state claims against.
-/

/-! ## A315042.P17410019717893628885

`∑[dr(A057436(A339418(3*n+4)))]`
-/

namespace A315042.P17410019717893628885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A057436 (A339418 (3 * n + 4)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315042.P17410019717893628885

/-! ## A315042.P15926217819239858678

`∑[A001511(A181595(2*(n+2)))]-3`
-/

namespace A315042.P15926217819239858678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A181595 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A315042.P15926217819239858678

/-! ## A315042.P4159344974437777691

`A314871(n)+A097295(A306575(n))`
-/

namespace A315042.P4159344974437777691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314871 n + A097295 (A306575 n).toNat

end

end A315042.P4159344974437777691

/-! ## A315042.P10312842592919689585

`A312506(n)+A140885(A273746(n))`
-/

namespace A315042.P10312842592919689585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n + A140885 (A273746 n).toNat

end

end A315042.P10312842592919689585

/-! ## A315042.P14176944433847331794

`A313860(n)-A001221(A020115(n))`
-/

namespace A315042.P14176944433847331794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n - A001221 (A020115 n).toNat

end

end A315042.P14176944433847331794

/-!
# A315043: Coordination sequence Gal.6.541.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315043, there is no canonical definition to state claims against.
-/

/-! ## A315043.P13863504513149674946

`A315046(n)-A352822(A056251(n+1))`
-/

namespace A315043.P13863504513149674946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315046 n - A352822 (A056251 (n + 1)).toNat

end

end A315043.P13863504513149674946

/-!
# A315044: Coordination sequence Gal.5.143.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315044, there is no canonical definition to state claims against.
-/

/-! ## A315044.P10840931611526222423

`A313235(n)+A134667(n)`
-/

namespace A315044.P10840931611526222423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313235 n + A134667 n

end

end A315044.P10840931611526222423

/-! ## A315044.P7770665541656497873

`A315045(n)+A313235(n)-A313236(n)`
-/

namespace A315044.P7770665541656497873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315045 n + A313235 n - A313236 n

end

end A315044.P7770665541656497873

/-! ## A315044.P2143925193223595044

`A313235(n)-A033999(n)*A134667(n)`
-/

namespace A315044.P2143925193223595044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313235 n - A033999 n * A134667 n

end

end A315044.P2143925193223595044

/-! ## A315044.P6132893836761609314

`A008706(n)-A321090(A036765(n))`
-/

namespace A315044.P6132893836761609314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A321090 (A036765 n).toNat

end

end A315044.P6132893836761609314

/-! ## A315044.P16663636434703295582

`A315045(n)-A368844(A121556(n+1))`
-/

namespace A315044.P16663636434703295582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315045 n - A368844 (A121556 (n + 1)).toNat

end

end A315044.P16663636434703295582

/-!
# A315045: Coordination sequence Gal.6.366.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315045, there is no canonical definition to state claims against.
-/

/-! ## A315045.P5930447996374347822

`A313236(n)+A134667(n)`
-/

namespace A315045.P5930447996374347822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313236 n + A134667 n

end

end A315045.P5930447996374347822

/-! ## A315045.P10821755616059801632

`A313236(n)-A033999(n)*A134667(n)`
-/

namespace A315045.P10821755616059801632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313236 n - A033999 n * A134667 n

end

end A315045.P10821755616059801632

/-! ## A315045.P4485548941558028861

`A314879(n)+A185118(A282662(n))`
-/

namespace A315045.P4485548941558028861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314879 n + A185118 (A282662 n).toNat

end

end A315045.P4485548941558028861

/-! ## A315045.P3895729083801434344

`A314878(n)+A185118(A190525(n))`
-/

namespace A315045.P3895729083801434344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314878 n + A185118 (A190525 n).toNat

end

end A315045.P3895729083801434344

/-! ## A315045.P5899278297184018481

`A314879(n)+A185118(A190525(n))`
-/

namespace A315045.P5899278297184018481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314879 n + A185118 (A190525 n).toNat

end

end A315045.P5899278297184018481

/-!
# A315046: Coordination sequence Gal.6.565.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315046, there is no canonical definition to state claims against.
-/

/-! ## A315046.P15709409674386749866

`or(A000035(n²²), A315043(n))`
-/

namespace A315046.P15709409674386749866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 ((n ^ 2) ^ 2)) (A315043 n)

end

end A315046.P15709409674386749866

/-! ## A315046.P6693626508373844893

`or(A007814(A007051(n)), A315043(n))`
-/

namespace A315046.P6693626508373844893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A007051 n).toNat) (A315043 n)

end

end A315046.P6693626508373844893

/-! ## A315046.P10845565559969806717

`or(A007814(A041281(n)), A315043(n))`
-/

namespace A315046.P10845565559969806717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A041281 n).toNat) (A315043 n)

end

end A315046.P10845565559969806717

/-! ## A315046.P3791912950391421462

`or(A107846(A129905(n)), A315043(n))`
-/

namespace A315046.P3791912950391421462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A129905 n).toNat) (A315043 n)

end

end A315046.P3791912950391421462

/-! ## A315046.P12076595086486863824

`or(A193238(A034749(n+1)), A315043(n))`
-/

namespace A315046.P12076595086486863824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193238 (A034749 (n + 1)).toNat) (A315043 n)

end

end A315046.P12076595086486863824

/-!
# A315047: Coordination sequence Gal.5.204.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315047, the canonical program `A315047.P453188039744734692` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315047 has offset 0).

The definition of A315047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2425 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315047.P453188039744734692

`ogf((1+6x+15x^2+29x^3+44x^4+57x^5+60x^6+57x^7+44x^8+29x^9+15x^10+6x^11+x^12)/(1+x+x^2-2x^5-2x^6-2x^7+x^10+x^11+x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A315047

/-- `ogf((1+6x+15x^2+29x^3+44x^4+57x^5+60x^6+57x^7+44x^8+29x^9+15x^10+6x^11+x^12)/(1+x+x^2-2x^5-2x^6-2x^7+x^10+x^11+x^12))` -/
def P453188039744734692.Spec : Prop :=
  ∀ n, P453188039744734692.a n = A315047 n

theorem P453188039744734692.correct : P453188039744734692.Spec := by
  intro n
  simp only [A315047]

end A315047

/-! ## A315047.P5850586793494504050

`A315048(A062399(n))`
-/

namespace A315047.P5850586793494504050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315048 (A062399 n).toNat

end

end A315047.P5850586793494504050

namespace A315047

/-- `A315048(A062399(n))` -/
def P5850586793494504050.Spec : Prop :=
  ∀ n, P5850586793494504050.a n = A315047 n

end A315047

/-! ## A315047.P17726820739409171352

`A315048(A120126(n))`
-/

namespace A315047.P17726820739409171352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315048 (A120126 n).toNat

end

end A315047.P17726820739409171352

namespace A315047

/-- `A315048(A120126(n))` -/
def P17726820739409171352.Spec : Prop :=
  ∀ n, P17726820739409171352.a n = A315047 n

end A315047

/-! ## A315047.P11173614492415170129

`A315048(A351870(n))`
-/

namespace A315047.P11173614492415170129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315048 (A351870 n).toNat

end

end A315047.P11173614492415170129

namespace A315047

/-- `A315048(A351870(n))` -/
def P11173614492415170129.Spec : Prop :=
  ∀ n, P11173614492415170129.a n = A315047 n

end A315047

/-! ## A315047.P12897274174341590618

`A140074(n²)*A315048(n)`
-/

namespace A315047.P12897274174341590618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140074 (n ^ 2) * A315048 n

end

end A315047.P12897274174341590618

namespace A315047

/-- `A140074(n²)*A315048(n)` -/
def P12897274174341590618.Spec : Prop :=
  ∀ n, P12897274174341590618.a n = A315047 n

end A315047

/-!
# A315048: Coordination sequence Gal.6.585.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315048, there is no canonical definition to state claims against.
-/

/-! ## A315048.P14027073974398165814

`A165022(A018111(n))+A045750(n)`
-/

namespace A315048.P14027073974398165814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165022 (A018111 n).toNat + A045750 n

end

end A315048.P14027073974398165814

/-!
# A315049: Coordination sequence Gal.6.268.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315049, there is no canonical definition to state claims against.
-/

/-! ## A315049.P8527597567389665792

`A334944(A265853(n))+A250120(n)`
-/

namespace A315049.P8527597567389665792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334944 (A265853 n).toNat + A250120 n

end

end A315049.P8527597567389665792

/-! ## A315049.P9369988123027471114

`A250120(n)+A060953(A247381(n+1))`
-/

namespace A315049.P9369988123027471114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A060953 (A247381 (n + 1)).toNat

end

end A315049.P9369988123027471114

/-! ## A315049.P8960501264270998491

`A250120(n)+A131963(A037276(3*(n+1)))`
-/

namespace A315049.P8960501264270998491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A131963 (A037276 (3 * (n + 1))).toNat

end

end A315049.P8960501264270998491

/-! ## A315049.P3501186351422695134

`A250120(n)+A037870(A290524(n))`
-/

namespace A315049.P3501186351422695134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A037870 (A290524 n).toNat

end

end A315049.P3501186351422695134

/-! ## A315049.P13064529442301888174

`A373954(A000930(n))+A250120(n)`
-/

namespace A315049.P13064529442301888174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373954 (A000930 n).toNat + A250120 n

end

end A315049.P13064529442301888174

/-!
# A315050: Coordination sequence Gal.5.140.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315050, the canonical program `A315050.P7466709824589789068` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315050 has offset 0).

The definition of A315050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315050.P7466709824589789068

`A042965(n+1+ceil(abs(1-8*n)/3))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A315050

/-- `A042965(n+1+ceil(abs(1-8*n)/3))` -/
def P7466709824589789068.Spec : Prop :=
  ∀ n, P7466709824589789068.a n = A315050 n

theorem P7466709824589789068.correct : P7466709824589789068.Spec := by
  intro n
  simp only [A315050]

end A315050

/-! ## A315050.P10932228183673301388

`A311816(n)+A004396(n)`
-/

namespace A315050.P10932228183673301388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A004396 n

end

end A315050.P10932228183673301388

namespace A315050

/-- `A311816(n)+A004396(n)` -/
def P10932228183673301388.Spec : Prop :=
  ∀ n, P10932228183673301388.a n = A315050 n

end A315050

/-! ## A315050.P13275525155994095484

`A301298(n)+Δ[A011862(n)]`
-/

namespace A315050.P13275525155994095484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + (f1 (n + 1) - f1 n)

end

end A315050.P13275525155994095484

namespace A315050

/-- `A301298(n)+Δ[A011862(n)]` -/
def P13275525155994095484.Spec : Prop :=
  ∀ n, P13275525155994095484.a n = A315050 n

end A315050

/-! ## A315050.P1375408210668428510

`A004772(A008576(n)+n)+1`
-/

namespace A315050.P1375408210668428510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (A008576 n + (n : ℤ)).toNat + 1

end

end A315050.P1375408210668428510

namespace A315050

/-- `A004772(A008576(n)+n)+1` -/
def P1375408210668428510.Spec : Prop :=
  ∀ n, P1375408210668428510.a n = A315050 n

end A315050

/-! ## A315050.P16639896172539164156

`A311816(n)+A002264(2*n+1)`
-/

namespace A315050.P16639896172539164156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A002264 (2 * n + 1)

end

end A315050.P16639896172539164156

namespace A315050

/-- `A311816(n)+A002264(2*n+1)` -/
def P16639896172539164156.Spec : Prop :=
  ∀ n, P16639896172539164156.a n = A315050 n

end A315050

/-! ## A315050.P17080518903740517623

`A265187(n+1)+A008576(n)+n`
-/

namespace A315050.P17080518903740517623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1) + (A008576 n + (n : ℤ))

end

end A315050.P17080518903740517623

namespace A315050

/-- `A265187(n+1)+A008576(n)+n` -/
def P17080518903740517623.Spec : Prop :=
  ∀ n, P17080518903740517623.a n = A315050 n

end A315050

/-! ## A315050.P15324566863137062529

`A312484(n)+A004396(A004396(n))`
-/

namespace A315050.P15324566863137062529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n + A004396 (A004396 n).toNat

end

end A315050.P15324566863137062529

namespace A315050

/-- `A312484(n)+A004396(A004396(n))` -/
def P15324566863137062529.Spec : Prop :=
  ∀ n, P15324566863137062529.a n = A315050 n

end A315050

/-! ## A315050.P12971791774307133057

`A301694(n)-A004396(A004396(n))`
-/

namespace A315050.P12971791774307133057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A004396 (A004396 n).toNat

end

end A315050.P12971791774307133057

namespace A315050

/-- `A301694(n)-A004396(A004396(n))` -/
def P12971791774307133057.Spec : Prop :=
  ∀ n, P12971791774307133057.a n = A315050 n

end A315050

/-! ## A315050.P10859645004066205326

`A008574(n)+A004396(2*A004396(n))`
-/

namespace A315050.P10859645004066205326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (2 * A004396 n).toNat

end

end A315050.P10859645004066205326

namespace A315050

/-- `A008574(n)+A004396(2*A004396(n))` -/
def P10859645004066205326.Spec : Prop :=
  ∀ n, P10859645004066205326.a n = A315050 n

end A315050

/-! ## A315050.P13963993259336999254

`A265187(n+1)+A265187(A008486(n)+1)`
-/

namespace A315050.P13963993259336999254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1) + A265187 (A008486 n + 1).toNat

end

end A315050.P13963993259336999254

namespace A315050

/-- `A265187(n+1)+A265187(A008486(n)+1)` -/
def P13963993259336999254.Spec : Prop :=
  ∀ n, P13963993259336999254.a n = A315050 n

end A315050

/-! ## A315050.P227713983291278223

`A004396(n)+A301298(n)-A004396(A004396(n))`
-/

namespace A315050.P227713983291278223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A301298 n - A004396 (A004396 n).toNat)

end

end A315050.P227713983291278223

namespace A315050

/-- `A004396(n)+A301298(n)-A004396(A004396(n))` -/
def P227713983291278223.Spec : Prop :=
  ∀ n, P227713983291278223.a n = A315050 n

end A315050

/-! ## A315050.P11169419719221278115

`A313860(n)-A004396(n-A004396(n))`
-/

namespace A315050.P11169419719221278115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315050.P11169419719221278115

namespace A315050

/-- `A313860(n)-A004396(n-A004396(n))` -/
def P11169419719221278115.Spec : Prop :=
  ∀ n, P11169419719221278115.a n = A315050 n

end A315050

/-! ## A315050.P18423707935453074579

`abs(A008592(n)-A314034(n))`
-/

namespace A315050.P18423707935453074579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314034 n|

end

end A315050.P18423707935453074579

namespace A315050

/-- `abs(A008592(n)-A314034(n))` -/
def P18423707935453074579.Spec : Prop :=
  ∀ n, P18423707935453074579.a n = A315050 n

end A315050

/-! ## A315050.P12571418340823469045

`2*A008706(n)-A314034(n)`
-/

namespace A315050.P12571418340823469045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314034 n

end

end A315050.P12571418340823469045

namespace A315050

/-- `2*A008706(n)-A314034(n)` -/
def P12571418340823469045.Spec : Prop :=
  ∀ n, P12571418340823469045.a n = A315050 n

end A315050

/-! ## A315050.P15600212782442402066

`A008458(n)+A008574(n)-A314034(n)`
-/

namespace A315050.P15600212782442402066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314034 n)

end

end A315050.P15600212782442402066

namespace A315050

/-- `A008458(n)+A008574(n)-A314034(n)` -/
def P15600212782442402066.Spec : Prop :=
  ∀ n, P15600212782442402066.a n = A315050 n

end A315050

/-! ## A315050.P11281059536476095409

`A004396(A219529(n))+2*A004396(n)`
-/

namespace A315050.P11281059536476095409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A219529 n).toNat + 2 * A004396 n

end

end A315050.P11281059536476095409

namespace A315050

/-- `A004396(A219529(n))+2*A004396(n)` -/
def P11281059536476095409.Spec : Prop :=
  ∀ n, P11281059536476095409.a n = A315050 n

end A315050

/-! ## A315050.P17833690297992747949

`A004396(A313894(n))+2*A004396(n)`
-/

namespace A315050.P17833690297992747949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313894 n).toNat + 2 * A004396 n

end

end A315050.P17833690297992747949

namespace A315050

/-- `A004396(A313894(n))+2*A004396(n)` -/
def P17833690297992747949.Spec : Prop :=
  ∀ n, P17833690297992747949.a n = A315050 n

end A315050

/-! ## A315050.P15033822196167957129

`A004396(A313962(n))+2*A004396(n)`
-/

namespace A315050.P15033822196167957129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313962 n).toNat + 2 * A004396 n

end

end A315050.P15033822196167957129

namespace A315050

/-- `A004396(A313962(n))+2*A004396(n)` -/
def P15033822196167957129.Spec : Prop :=
  ∀ n, P15033822196167957129.a n = A315050 n

end A315050

/-! ## A315050.P6538606722724420875

`A004396(n)+A004396(A313894(n)+n)`
-/

namespace A315050.P6538606722724420875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313894 n + (n : ℤ)).toNat

end

end A315050.P6538606722724420875

namespace A315050

/-- `A004396(n)+A004396(A313894(n)+n)` -/
def P6538606722724420875.Spec : Prop :=
  ∀ n, P6538606722724420875.a n = A315050 n

end A315050

/-! ## A315050.P10637031732930012162

`A004396(n)+A004396(A313962(n)+n)`
-/

namespace A315050.P10637031732930012162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A313962 n + (n : ℤ)).toNat

end

end A315050.P10637031732930012162

namespace A315050

/-- `A004396(n)+A004396(A313962(n)+n)` -/
def P10637031732930012162.Spec : Prop :=
  ∀ n, P10637031732930012162.a n = A315050 n

end A315050

/-!
# A315051: Coordination sequence Gal.6.600.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315051, there is no canonical definition to state claims against.
-/

/-! ## A315051.P2308559785189144496

`A250120(n)-A105805(A317674(n+1))`
-/

namespace A315051.P2308559785189144496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A105805 (A317674 (n + 1)).toNat

end

end A315051.P2308559785189144496

/-! ## A315051.P15171107087057972940

`A047363(2*n+1)+A004277(n)-A105805(A317674(n+1))`
-/

namespace A315051.P15171107087057972940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (2 * n + 1) + A004277 n - A105805 (A317674 (n + 1)).toNat

end

end A315051.P15171107087057972940

/-! ## A315051.P13086367155702429373

`A022144(n)-A047486(2*n+1)-A105805(A317674(n+1))`
-/

namespace A315051.P13086367155702429373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047486 (2 * n + 1) - A105805 (A317674 (n + 1)).toNat

end

end A315051.P13086367155702429373

/-! ## A315051.P9103793983552579656

`A022144(n)+1-A047412(2*(n+1))-A105805(A317674(n+1))`
-/

namespace A315051.P9103793983552579656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n + 1 - A047412 (2 * (n + 1)) - A105805 (A317674 (n + 1)).toNat

end

end A315051.P9103793983552579656

/-! ## A315051.P16261135840026336957

`A008574(2*n)-A047486(2*n+1)-A105805(A317674(n+1))`
-/

namespace A315051.P16261135840026336957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A047486 (2 * n + 1) - A105805 (A317674 (n + 1)).toNat

end

end A315051.P16261135840026336957

/-!
# A315052: Coordination sequence Gal.6.338.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315052, the canonical program `A315052.P7860107884433601269` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315052 has offset 0).

The definition of A315052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315052.P5485086476281202057

`(A315305(n)+A312668(n))/2`
-/

namespace A315052.P5485086476281202057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315305 n + A312668 n : ℚ) / 2

end

end A315052.P5485086476281202057

namespace A315052

/-- `(A315305(n)+A312668(n))/2` -/
def P5485086476281202057.Spec : Prop :=
  ∀ n, P5485086476281202057.a n = (A315052 n : ℚ)

end A315052

/-! ## A315052.P7860107884433601269

`abs(A008592(n)-A314032(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315052

/-- `abs(A008592(n)-A314032(n))` -/
def P7860107884433601269.Spec : Prop :=
  ∀ n, P7860107884433601269.a n = A315052 n

theorem P7860107884433601269.correct : P7860107884433601269.Spec := by
  intro n
  simp only [A315052]

end A315052

/-! ## A315052.P123685112800748831

`2*A008706(n)-A314032(n)`
-/

namespace A315052.P123685112800748831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314032 n

end

end A315052.P123685112800748831

namespace A315052

/-- `2*A008706(n)-A314032(n)` -/
def P123685112800748831.Spec : Prop :=
  ∀ n, P123685112800748831.a n = A315052 n

end A315052

/-! ## A315052.P2740700134635620184

`A000038(n)+A008592(n)-A314032(n)`
-/

namespace A315052.P2740700134635620184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A314032 n)

end

end A315052.P2740700134635620184

namespace A315052

/-- `A000038(n)+A008592(n)-A314032(n)` -/
def P2740700134635620184.Spec : Prop :=
  ∀ n, P2740700134635620184.a n = A315052 n

end A315052

/-! ## A315052.P14751658792339766829

`A008458(n)+A008574(n)-A314032(n)`
-/

namespace A315052.P14751658792339766829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314032 n)

end

end A315052.P14751658792339766829

namespace A315052

/-- `A008458(n)+A008574(n)-A314032(n)` -/
def P14751658792339766829.Spec : Prop :=
  ∀ n, P14751658792339766829.a n = A315052 n

end A315052

/-! ## A315052.P4782268158275996074

`∑{d}[A008592(n)-A314032(n), A000010(#)]`
-/

namespace A315052.P4782268158275996074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315052.P4782268158275996074

namespace A315052

/-- `∑{d}[A008592(n)-A314032(n), A000010(#)]` -/
def P4782268158275996074.Spec : Prop :=
  ∀ n, P4782268158275996074.a n = A315052 n

end A315052

/-! ## A315052.P10579506167593402995

`A314032(n)-A005843(A314032(n)-A008706(n))`
-/

namespace A315052.P10579506167593402995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314032 n - A005843 (A314032 n - A008706 n).toNat

end

end A315052.P10579506167593402995

namespace A315052

/-- `A314032(n)-A005843(A314032(n)-A008706(n))` -/
def P10579506167593402995.Spec : Prop :=
  ∀ n, P10579506167593402995.a n = A315052 n

end A315052

/-! ## A315052.P8268561467249253369

`(A315329(n)+A312507(n))/2`
-/

namespace A315052.P8268561467249253369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315329 n + A312507 n : ℚ) / 2

end

end A315052.P8268561467249253369

namespace A315052

/-- `(A315329(n)+A312507(n))/2` -/
def P8268561467249253369.Spec : Prop :=
  ∀ n, P8268561467249253369.a n = (A315052 n : ℚ)

end A315052

/-! ## A315052.P12745068627935481147

`A180004(A314890(n))`
-/

namespace A315052.P12745068627935481147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A314890 n).toNat

end

end A315052.P12745068627935481147

namespace A315052

/-- `A180004(A314890(n))` -/
def P12745068627935481147.Spec : Prop :=
  ∀ n, P12745068627935481147.a n = A315052 n

end A315052

/-! ## A315052.P3851820360427848957

`A005843(A008706(n))-A314032(n)`
-/

namespace A315052.P3851820360427848957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314032 n

end

end A315052.P3851820360427848957

namespace A315052

/-- `A005843(A008706(n))-A314032(n)` -/
def P3851820360427848957.Spec : Prop :=
  ∀ n, P3851820360427848957.a n = A315052 n

end A315052

/-! ## A315052.P12035598260477704309

`A065502(A008458(n))-A314032(n)`
-/

namespace A315052.P12035598260477704309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A314032 n

end

end A315052.P12035598260477704309

namespace A315052

/-- `A065502(A008458(n))-A314032(n)` -/
def P12035598260477704309.Spec : Prop :=
  ∀ n, P12035598260477704309.a n = A315052 n

end A315052

/-! ## A315052.P12228215148836277736

`A315188(2*n)/A135042(2*n+1)*A135042(n+1)`
-/

namespace A315052.P12228215148836277736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315188 (2 * n) : ℚ) / (A135042 (2 * n + 1) : ℚ) * (A135042 (n + 1) : ℚ)

end

end A315052.P12228215148836277736

namespace A315052

/-- `A315188(2*n)/A135042(2*n+1)*A135042(n+1)` -/
def P12228215148836277736.Spec : Prop :=
  ∀ n, P12228215148836277736.a n = (A315052 n : ℚ)

end A315052

/-! ## A315052.P13289391184799681744

`A315478(2*n)+n-7*n`
-/

namespace A315052.P13289391184799681744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315478 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A315052.P13289391184799681744

namespace A315052

/-- `A315478(2*n)+n-7*n` -/
def P13289391184799681744.Spec : Prop :=
  ∀ n, P13289391184799681744.a n = A315052 n

end A315052

/-! ## A315052.P4049331544583834947

`A004525(A315188(2*n))`
-/

namespace A315052.P4049331544583834947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315188 (2 * n)).toNat

end

end A315052.P4049331544583834947

namespace A315052

/-- `A004525(A315188(2*n))` -/
def P4049331544583834947.Spec : Prop :=
  ∀ n, P4049331544583834947.a n = A315052 n

end A315052

/-! ## A315052.P12977298725669406449

`A004526(A315188(2*n)+1)`
-/

namespace A315052.P12977298725669406449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315188 (2 * n) + 1).toNat

end

end A315052.P12977298725669406449

namespace A315052

/-- `A004526(A315188(2*n)+1)` -/
def P12977298725669406449.Spec : Prop :=
  ∀ n, P12977298725669406449.a n = A315052 n

end A315052

/-! ## A315052.P8443516001193806426

`A004525(A313722(n)+A312668(n))`
-/

namespace A315052.P8443516001193806426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313722 n + A312668 n).toNat

end

end A315052.P8443516001193806426

namespace A315052

/-- `A004525(A313722(n)+A312668(n))` -/
def P8443516001193806426.Spec : Prop :=
  ∀ n, P8443516001193806426.a n = A315052 n

end A315052

/-! ## A315052.P17699467042241753711

`A233583(10*n+1)-A314032(n)`
-/

namespace A315052.P17699467042241753711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (10 * n + 1) - A314032 n

end

end A315052.P17699467042241753711

namespace A315052

/-- `A233583(10*n+1)-A314032(n)` -/
def P17699467042241753711.Spec : Prop :=
  ∀ n, P17699467042241753711.a n = A315052 n

end A315052

/-!
# A315053: Coordination sequence Gal.6.345.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315053, the canonical program `A315053.P5459368638815230742` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315053 has offset 0).

The definition of A315053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315053.P9704767459257425392

`A311861(n)+A004396(n)`
-/

namespace A315053.P9704767459257425392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A004396 n

end

end A315053.P9704767459257425392

namespace A315053

/-- `A311861(n)+A004396(n)` -/
def P9704767459257425392.Spec : Prop :=
  ∀ n, P9704767459257425392.a n = A315053 n

end A315053

/-! ## A315053.P10155323590753159949

`A313057(n)+A008612(2*n+1)`
-/

namespace A315053.P10155323590753159949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A008612 (2 * n + 1)

end

end A315053.P10155323590753159949

namespace A315053

/-- `A313057(n)+A008612(2*n+1)` -/
def P10155323590753159949.Spec : Prop :=
  ∀ n, P10155323590753159949.a n = A315053 n

end A315053

/-! ## A315053.P5459368638815230742

`A004396(n)+A314899(n)-A004525(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315053

/-- `A004396(n)+A314899(n)-A004525(n)` -/
def P5459368638815230742.Spec : Prop :=
  ∀ n, P5459368638815230742.a n = A315053 n

theorem P5459368638815230742.correct : P5459368638815230742.Spec := by
  intro n
  simp only [A315053]

end A315053

/-! ## A315053.P5140759410959295955

`A004396(n)+A314841(n)-A004396(A004525(n))`
-/

namespace A315053.P5140759410959295955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314841 n - A004396 (A004525 n).toNat)

end

end A315053.P5140759410959295955

namespace A315053

/-- `A004396(n)+A314841(n)-A004396(A004525(n))` -/
def P5140759410959295955.Spec : Prop :=
  ∀ n, P5140759410959295955.a n = A315053 n

theorem P5140759410959295955.correct : P5140759410959295955.Spec := by
  intro n
  simp only [A315053, Nat.add_sub_cancel, A315053.P5140759410959295955.a, A315053.P5459368638815230742.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A314841, A314841.P5099753023197914535.a, A314899, A314899.P7105760915525544627.a, A128834, A128834.P4430347604004376390.a, A312620, A312620.P764241885793850481.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315053

/-! ## A315053.P7808125969082013837

`A313251(n)+A134667(n)`
-/

namespace A315053.P7808125969082013837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A134667 n

end

end A315053.P7808125969082013837

namespace A315053

/-- `A313251(n)+A134667(n)` -/
def P7808125969082013837.Spec : Prop :=
  ∀ n, P7808125969082013837.a n = A315053 n

end A315053

/-! ## A315053.P14996236063517774219

`A313251(n)+A128834(A128834(n)+n)`
-/

namespace A315053.P14996236063517774219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A128834 (A128834 n + (n : ℤ)).toNat

end

end A315053.P14996236063517774219

namespace A315053

/-- `A313251(n)+A128834(A128834(n)+n)` -/
def P14996236063517774219.Spec : Prop :=
  ∀ n, P14996236063517774219.a n = A315053 n

end A315053

/-! ## A315053.P11988607301246116932

`A313698(n)-A128834(n-A128834(n))`
-/

namespace A315053.P11988607301246116932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A128834 ((n : ℤ) - A128834 n).toNat

end

end A315053.P11988607301246116932

namespace A315053

/-- `A313698(n)-A128834(n-A128834(n))` -/
def P11988607301246116932.Spec : Prop :=
  ∀ n, P11988607301246116932.a n = A315053 n

end A315053

/-! ## A315053.P12437348358883684398

`A310444(n)+A102283(n)`
-/

namespace A315053.P12437348358883684398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n + A102283 n

end

end A315053.P12437348358883684398

namespace A315053

/-- `A310444(n)+A102283(n)` -/
def P12437348358883684398.Spec : Prop :=
  ∀ n, P12437348358883684398.a n = A315053 n

end A315053

/-! ## A315053.P13119386995515932201

`abs(A008592(n)-A314031(n))`
-/

namespace A315053.P13119386995515932201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314031 n|

end

end A315053.P13119386995515932201

namespace A315053

/-- `abs(A008592(n)-A314031(n))` -/
def P13119386995515932201.Spec : Prop :=
  ∀ n, P13119386995515932201.a n = A315053 n

end A315053

/-! ## A315053.P17437345927002132639

`floor(A010015(n)/A314031(n))`
-/

namespace A315053.P17437345927002132639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314031 n : ℚ)⌋

end

end A315053.P17437345927002132639

namespace A315053

/-- `floor(A010015(n)/A314031(n))` -/
def P17437345927002132639.Spec : Prop :=
  ∀ n, P17437345927002132639.a n = A315053 n

end A315053

/-! ## A315053.P18213067383203693914

`A008458(n)+A008574(n)-A314031(n)`
-/

namespace A315053.P18213067383203693914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314031 n)

end

end A315053.P18213067383203693914

namespace A315053

/-- `A008458(n)+A008574(n)-A314031(n)` -/
def P18213067383203693914.Spec : Prop :=
  ∀ n, P18213067383203693914.a n = A315053 n

end A315053

/-! ## A315053.P15542392481326675417

`A313879(n)-∑[A022003(n)]`
-/

namespace A315053.P15542392481326675417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315053.P15542392481326675417

namespace A315053

/-- `A313879(n)-∑[A022003(n)]` -/
def P15542392481326675417.Spec : Prop :=
  ∀ n, P15542392481326675417.a n = A315053 n

end A315053

/-! ## A315053.P14095792597123602129

`A313879(n)-A002264(n+1)`
-/

namespace A315053.P14095792597123602129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - A002264 (n + 1)

end

end A315053.P14095792597123602129

namespace A315053

/-- `A313879(n)-A002264(n+1)` -/
def P14095792597123602129.Spec : Prop :=
  ∀ n, P14095792597123602129.a n = A315053 n

end A315053

/-! ## A315053.P15521531338768512724

`A004396(n)+A313879(n)-n`
-/

namespace A315053.P15521531338768512724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313879 n - (n : ℤ))

end

end A315053.P15521531338768512724

namespace A315053

/-- `A004396(n)+A313879(n)-n` -/
def P15521531338768512724.Spec : Prop :=
  ∀ n, P15521531338768512724.a n = A315053 n

end A315053

/-! ## A315053.P11934848637967616202

`A313879(n)+n-record[A283971(n)]`
-/

namespace A315053.P11934848637967616202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n + ((n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A315053.P11934848637967616202

namespace A315053

/-- `A313879(n)+n-record[A283971(n)]` -/
def P11934848637967616202.Spec : Prop :=
  ∀ n, P11934848637967616202.a n = A315053 n

end A315053

/-! ## A315053.P9917255870675383269

`A008576(n)+A313879(n)-A008486(n)`
-/

namespace A315053.P9917255870675383269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313879 n - A008486 n)

end

end A315053.P9917255870675383269

namespace A315053

/-- `A008576(n)+A313879(n)-A008486(n)` -/
def P9917255870675383269.Spec : Prop :=
  ∀ n, P9917255870675383269.a n = A315053 n

end A315053

/-! ## A315053.P7803646328669233825

`A315335(n)-A004525(n)`
-/

namespace A315053.P7803646328669233825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 n - A004525 n

end

end A315053.P7803646328669233825

namespace A315053

/-- `A315335(n)-A004525(n)` -/
def P7803646328669233825.Spec : Prop :=
  ∀ n, P7803646328669233825.a n = A315053 n

theorem P7803646328669233825.correct : P7803646328669233825.Spec := by
  intro n
  simp only [A315053, Nat.add_sub_cancel, A315053.P7803646328669233825.a, A315053.P5459368638815230742.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A314899, A314899.P7105760915525544627.a, A315335, A315335.P12030960458542249.a, A314841, A314841.P5099753023197914535.a, A128834, A128834.P4430347604004376390.a, A312620, A312620.P764241885793850481.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315053

/-! ## A315053.P3825261564674856630

`A074067(A314031(n))`
-/

namespace A315053.P3825261564674856630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314031 n).toNat

end

end A315053.P3825261564674856630

namespace A315053

/-- `A074067(A314031(n))` -/
def P3825261564674856630.Spec : Prop :=
  ∀ n, P3825261564674856630.a n = A315053 n

end A315053

/-! ## A315053.P1556064652157769465

`A004396(A313900(n))+2*A004396(n)`
-/

namespace A315053.P1556064652157769465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313900 n).toNat + 2 * A004396 n

end

end A315053.P1556064652157769465

namespace A315053

/-- `A004396(A313900(n))+2*A004396(n)` -/
def P1556064652157769465.Spec : Prop :=
  ∀ n, P1556064652157769465.a n = A315053 n

end A315053

/-!
# A315054: Coordination sequence Gal.4.129.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315054, there is no canonical definition to state claims against.
-/

/-! ## A315054.P14825005812642803332

`A070200(A000244(n))+A008579(n)`
-/

namespace A315054.P14825005812642803332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070200 (A000244 n).toNat + A008579 n

end

end A315054.P14825005812642803332

/-! ## A315054.P2982022791300347664

`A008579(n)+A001221(A077821(n))`
-/

namespace A315054.P2982022791300347664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001221 (A077821 n).toNat

end

end A315054.P2982022791300347664

/-! ## A315054.P4783866240436697467

`A312505(n)+A001221(A077821(n))`
-/

namespace A315054.P4783866240436697467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312505 n + A001221 (A077821 n).toNat

end

end A315054.P4783866240436697467

/-! ## A315054.P4901457954243632917

`or(A180969(A081125(n)), A314778(n))`
-/

namespace A315054.P4901457954243632917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A180969 (A081125 n).toNat) (A314778 n)

end

end A315054.P4901457954243632917

/-! ## A315054.P9388361295221551266

`A008579(n)+A001222(A339043(n+1))`
-/

namespace A315054.P9388361295221551266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001222 (A339043 (n + 1)).toNat

end

end A315054.P9388361295221551266

/-!
# A315055: Coordination sequence Gal.3.43.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315055, there is no canonical definition to state claims against.
-/

/-! ## A315055.P1175751369585589654

`2*A314937(n)-A314775(n)`
-/

namespace A315055.P1175751369585589654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314937 n - A314775 n

end

end A315055.P1175751369585589654

/-! ## A315055.P3437274647451990820

`(A315232(n)+A312776(n))/2`
-/

namespace A315055.P3437274647451990820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315232 n + A312776 n : ℚ) / 2

end

end A315055.P3437274647451990820

/-! ## A315055.P12549407632919058216

`(A315331(n)+A008579(n))/2`
-/

namespace A315055.P12549407632919058216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315331 n + A008579 n : ℚ) / 2

end

end A315055.P12549407632919058216

/-! ## A315055.P18116629273316544004

`A014682(A315331(n)+A008579(n))`
-/

namespace A315055.P18116629273316544004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315331 n + A008579 n).toNat

end

end A315055.P18116629273316544004

/-! ## A315055.P13905895451045061273

`A008579(n)+A001281(A315331(n)-A008579(n))`
-/

namespace A315055.P13905895451045061273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001281 (A315331 n - A008579 n).toNat

end

end A315055.P13905895451045061273

/-! ## A315055.P18051204828247454415

`A008579(n)+A004525(A315331(n)-A008579(n))`
-/

namespace A315055.P18051204828247454415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A315331 n - A008579 n).toNat

end

end A315055.P18051204828247454415

/-! ## A315055.P17308185713695360874

`A008579(n)+A006370(A315331(n)-A008579(n))`
-/

namespace A315055.P17308185713695360874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A006370 (A315331 n - A008579 n).toNat

end

end A315055.P17308185713695360874

/-! ## A315055.P4482700178558453853

`A026741(A315331(n)-A008579(n))+A008579(n)`
-/

namespace A315055.P4482700178558453853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315331 n - A008579 n).toNat + A008579 n

end

end A315055.P4482700178558453853

/-! ## A315055.P16346059104676164757

`A029578(A315331(n)-A008579(n))+A008579(n)`
-/

namespace A315055.P16346059104676164757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A315331 n - A008579 n).toNat + A008579 n

end

end A315055.P16346059104676164757

/-! ## A315055.P12547844380406213944

`A315331(n)-A004526(A315331(n)-A008579(n))`
-/

namespace A315055.P12547844380406213944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n - A004526 (A315331 n - A008579 n).toNat

end

end A315055.P12547844380406213944

/-! ## A315055.P14626828387912764051

`A310661(2*n)-n`
-/

namespace A315055.P14626828387912764051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310661 (2 * n) - (n : ℤ)

end

end A315055.P14626828387912764051

/-! ## A315055.P4612373666738815907

`A001281(A315331(n)+A008579(n))`
-/

namespace A315055.P4612373666738815907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315331 n + A008579 n).toNat

end

end A315055.P4612373666738815907

/-! ## A315055.P13793334778475782133

`A004525(A315331(n)+A008579(n))`
-/

namespace A315055.P13793334778475782133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315331 n + A008579 n).toNat

end

end A315055.P13793334778475782133

/-! ## A315055.P13701865727014367695

`A004526(A315331(n)+A008579(n))`
-/

namespace A315055.P13701865727014367695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315331 n + A008579 n).toNat

end

end A315055.P13701865727014367695

/-! ## A315055.P11527827471370279511

`A006370(A315331(n)+A008579(n))`
-/

namespace A315055.P11527827471370279511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A315331 n + A008579 n).toNat

end

end A315055.P11527827471370279511

/-! ## A315055.P2541037027291740020

`A026741(A315331(n)+A008579(n))`
-/

namespace A315055.P2541037027291740020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315331 n + A008579 n).toNat

end

end A315055.P2541037027291740020

/-! ## A315055.P6824009030260457926

`A029578(A315331(n)+A008579(n))`
-/

namespace A315055.P6824009030260457926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A315331 n + A008579 n).toNat

end

end A315055.P6824009030260457926

/-! ## A315055.P1123288942825934664

`A032742(A315331(n)+A008579(n))`
-/

namespace A315055.P1123288942825934664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A315331 n + A008579 n).toNat

end

end A315055.P1123288942825934664

/-! ## A315055.P17837780862203228060

`A004524(A008579(n)+A315331(n)+1)`
-/

namespace A315055.P17837780862203228060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A008579 n + (A315331 n + 1)).toNat

end

end A315055.P17837780862203228060

/-!
# A315056: Coordination sequence Gal.6.348.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315056, the canonical program `A315056.P4925321079305398332` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315056 has offset 0).

The definition of A315056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315056.P4925321079305398332

`abs(A008592(n)-A314029(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315056

/-- `abs(A008592(n)-A314029(n))` -/
def P4925321079305398332.Spec : Prop :=
  ∀ n, P4925321079305398332.a n = A315056 n

theorem P4925321079305398332.correct : P4925321079305398332.Spec := by
  intro n
  simp only [A315056]

end A315056

/-! ## A315056.P11666844846102557202

`A008458(n)+A008574(n)-A314029(n)`
-/

namespace A315056.P11666844846102557202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314029 n)

end

end A315056.P11666844846102557202

namespace A315056

/-- `A008458(n)+A008574(n)-A314029(n)` -/
def P11666844846102557202.Spec : Prop :=
  ∀ n, P11666844846102557202.a n = A315056 n

end A315056

/-! ## A315056.P18118548883960596171

`2*n+A004396(A312068(n))`
-/

namespace A315056.P18118548883960596171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A312068 n).toNat

end

end A315056.P18118548883960596171

namespace A315056

/-- `2*n+A004396(A312068(n))` -/
def P18118548883960596171.Spec : Prop :=
  ∀ n, P18118548883960596171.a n = A315056 n

end A315056

/-! ## A315056.P15724446685046118172

`A004396(A312472(n))+2*n`
-/

namespace A315056.P15724446685046118172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312472 n).toNat + (2 * n : ℤ)

end

end A315056.P15724446685046118172

namespace A315056

/-- `A004396(A312472(n))+2*n` -/
def P15724446685046118172.Spec : Prop :=
  ∀ n, P15724446685046118172.a n = A315056 n

end A315056

/-! ## A315056.P11409358464212761056

`A005843(n)+A004396(A312472(n))`
-/

namespace A315056.P11409358464212761056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312472 n).toNat

end

end A315056.P11409358464212761056

namespace A315056

/-- `A005843(n)+A004396(A312472(n))` -/
def P11409358464212761056.Spec : Prop :=
  ∀ n, P11409358464212761056.a n = A315056 n

end A315056

/-! ## A315056.P16835730020656390885

`A008585(n)-(n-A004396(A312068(n)))`
-/

namespace A315056.P16835730020656390885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A312068 n).toNat)

end

end A315056.P16835730020656390885

namespace A315056

/-- `A008585(n)-(n-A004396(A312068(n)))` -/
def P16835730020656390885.Spec : Prop :=
  ∀ n, P16835730020656390885.a n = A315056 n

end A315056

/-! ## A315056.P11785830335046899418

`A180004(A314894(n))`
-/

namespace A315056.P11785830335046899418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A314894 n).toNat

end

end A315056.P11785830335046899418

namespace A315056

/-- `A180004(A314894(n))` -/
def P11785830335046899418.Spec : Prop :=
  ∀ n, P11785830335046899418.a n = A315056 n

end A315056

/-! ## A315056.P7899167176028662069

`A004396(2*A311804(n)-n)`
-/

namespace A315056.P7899167176028662069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A311804 n - (n : ℤ)).toNat

end

end A315056.P7899167176028662069

namespace A315056

/-- `A004396(2*A311804(n)-n)` -/
def P7899167176028662069.Spec : Prop :=
  ∀ n, P7899167176028662069.a n = A315056 n

end A315056

/-! ## A315056.P17002231176730531872

`A004396(A312068(n)+A008486(n))`
-/

namespace A315056.P17002231176730531872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312068 n + A008486 n).toNat

end

end A315056.P17002231176730531872

namespace A315056

/-- `A004396(A312068(n)+A008486(n))` -/
def P17002231176730531872.Spec : Prop :=
  ∀ n, P17002231176730531872.a n = A315056 n

end A315056

/-! ## A315056.P13454027089858519045

`A004396(A312068(n)+A008585(n))`
-/

namespace A315056.P13454027089858519045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312068 n + A008585 n).toNat

end

end A315056.P13454027089858519045

namespace A315056

/-- `A004396(A312068(n)+A008585(n))` -/
def P13454027089858519045.Spec : Prop :=
  ∀ n, P13454027089858519045.a n = A315056 n

end A315056

/-! ## A315056.P3007059805351814152

`A004396(A312472(n)+A008486(n))`
-/

namespace A315056.P3007059805351814152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312472 n + A008486 n).toNat

end

end A315056.P3007059805351814152

namespace A315056

/-- `A004396(A312472(n)+A008486(n))` -/
def P3007059805351814152.Spec : Prop :=
  ∀ n, P3007059805351814152.a n = A315056 n

end A315056

/-! ## A315056.P8363186108905287297

`A004396(A005843(A311804(n))-n)`
-/

namespace A315056.P8363186108905287297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A311804 n).toNat - (n : ℤ)).toNat

end

end A315056.P8363186108905287297

namespace A315056

/-- `A004396(A005843(A311804(n))-n)` -/
def P8363186108905287297.Spec : Prop :=
  ∀ n, P8363186108905287297.a n = A315056 n

end A315056

/-! ## A315056.P13865701028591883191

`A004396(A311804(n)+A311804(n)-n)`
-/

namespace A315056.P13865701028591883191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311804 n + (A311804 n - (n : ℤ))).toNat

end

end A315056.P13865701028591883191

namespace A315056

/-- `A004396(A311804(n)+A311804(n)-n)` -/
def P13865701028591883191.Spec : Prop :=
  ∀ n, P13865701028591883191.a n = A315056 n

end A315056

/-! ## A315056.P13989041921731476712

`A004396(A311804(n)-(n-A311804(n)))`
-/

namespace A315056.P13989041921731476712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311804 n - ((n : ℤ) - A311804 n)).toNat

end

end A315056.P13989041921731476712

namespace A315056

/-- `A004396(A311804(n)-(n-A311804(n)))` -/
def P13989041921731476712.Spec : Prop :=
  ∀ n, P13989041921731476712.a n = A315056 n

end A315056

/-! ## A315056.P11351729686292204151

`A004396(A311262(2*n)-n)`
-/

namespace A315056.P11351729686292204151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A311262 (2 * n) - (n : ℤ)).toNat

end

end A315056.P11351729686292204151

namespace A315056

/-- `A004396(A311262(2*n)-n)` -/
def P11351729686292204151.Spec : Prop :=
  ∀ n, P11351729686292204151.a n = A315056 n

end A315056

/-! ## A315056.P12771988813212200161

`A314133(2*n)+n-7*n`
-/

namespace A315056.P12771988813212200161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314133 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A315056.P12771988813212200161

namespace A315056

/-- `A314133(2*n)+n-7*n` -/
def P12771988813212200161.Spec : Prop :=
  ∀ n, P12771988813212200161.a n = A315056 n

end A315056

/-! ## A315056.P8974043106339616261

`A310380(2*n)/A020639(A310380(n))`
-/

namespace A315056.P8974043106339616261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310380 (2 * n) : ℚ) / (A020639 (A310380 n).toNat : ℚ)

end

end A315056.P8974043106339616261

namespace A315056

/-- `A310380(2*n)/A020639(A310380(n))` -/
def P8974043106339616261.Spec : Prop :=
  ∀ n, P8974043106339616261.a n = (A315056 n : ℚ)

end A315056

/-! ## A315056.P9376883256618196837

`A004525(A310380(2*n))`
-/

namespace A315056.P9376883256618196837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310380 (2 * n)).toNat

end

end A315056.P9376883256618196837

namespace A315056

/-- `A004525(A310380(2*n))` -/
def P9376883256618196837.Spec : Prop :=
  ∀ n, P9376883256618196837.a n = A315056 n

end A315056

/-! ## A315056.P10104576297923491130

`A004525(A313118(2*n))`
-/

namespace A315056.P10104576297923491130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313118 (2 * n)).toNat

end

end A315056.P10104576297923491130

namespace A315056

/-- `A004525(A313118(2*n))` -/
def P10104576297923491130.Spec : Prop :=
  ∀ n, P10104576297923491130.a n = A315056 n

end A315056

/-! ## A315056.P8328593957401043377

`A004525(A313124(2*n))`
-/

namespace A315056.P8328593957401043377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313124 (2 * n)).toNat

end

end A315056.P8328593957401043377

namespace A315056

/-- `A004525(A313124(2*n))` -/
def P8328593957401043377.Spec : Prop :=
  ∀ n, P8328593957401043377.a n = A315056 n

end A315056

/-!
# A315057: Coordination sequence Gal.4.57.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315057, there is no canonical definition to state claims against.
-/

/-! ## A315057.P5741698797005472553

`A008706(n)-A284508(A203551(A263792(n+1)))`
-/

namespace A315057.P5741698797005472553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A284508 (A203551 (A263792 (n + 1)).toNat).toNat

end

end A315057.P5741698797005472553

/-! ## A315057.P5816715219278848426

`A008706(n)-A125117(A000225(n))`
-/

namespace A315057.P5816715219278848426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A125117 (A000225 n).toNat

end

end A315057.P5816715219278848426

/-! ## A315057.P5420978973105811254

`A008706(n)-A011695(A127876(n+1))`
-/

namespace A315057.P5420978973105811254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A011695 (A127876 (n + 1)).toNat

end

end A315057.P5420978973105811254

/-! ## A315057.P1865947447429214756

`A008706(n)-A144597(A182233(n+1))`
-/

namespace A315057.P1865947447429214756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A144597 (A182233 (n + 1)).toNat

end

end A315057.P1865947447429214756

/-! ## A315057.P16302841761020752006

`A093545(3*n+1)-A094916(A000788(3*(n+1)))`
-/

namespace A315057.P16302841761020752006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (3 * n + 1) - A094916 (A000788 (3 * (n + 1))).toNat

end

end A315057.P16302841761020752006

/-!
# A315058: Coordination sequence Gal.6.339.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315058, the canonical program `A315058.P1696980301468293620` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315058 has offset 0).

The definition of A315058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315058.P12125763044489799419

`A311924(n)+round(2*n/3)`
-/

namespace A315058.P12125763044489799419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A315058.P12125763044489799419

namespace A315058

/-- `A311924(n)+round(2*n/3)` -/
def P12125763044489799419.Spec : Prop :=
  ∀ n, P12125763044489799419.a n = A315058 n

end A315058

/-! ## A315058.P1696980301468293620

`abs(A008592(n)-A314028(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315058

/-- `abs(A008592(n)-A314028(n))` -/
def P1696980301468293620.Spec : Prop :=
  ∀ n, P1696980301468293620.a n = A315058 n

theorem P1696980301468293620.correct : P1696980301468293620.Spec := by
  intro n
  simp only [A315058]

end A315058

/-! ## A315058.P1269320184801294003

`A312620(n)+A004525(A004396(n))`
-/

namespace A315058.P1269320184801294003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004525 (A004396 n).toNat

end

end A315058.P1269320184801294003

namespace A315058

/-- `A312620(n)+A004525(A004396(n))` -/
def P1269320184801294003.Spec : Prop :=
  ∀ n, P1269320184801294003.a n = A315058 n

end A315058

/-! ## A315058.P11879985336565038923

`A004396(n)+A314912(n)-A004525(n)`
-/

namespace A315058.P11879985336565038923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314912 n - A004525 n)

end

end A315058.P11879985336565038923

namespace A315058

/-- `A004396(n)+A314912(n)-A004525(n)` -/
def P11879985336565038923.Spec : Prop :=
  ∀ n, P11879985336565038923.a n = A315058 n

end A315058

/-! ## A315058.P2957724134684437336

`A008458(n)+A008574(n)-A314028(n)`
-/

namespace A315058.P2957724134684437336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314028 n)

end

end A315058.P2957724134684437336

namespace A315058

/-- `A008458(n)+A008574(n)-A314028(n)` -/
def P2957724134684437336.Spec : Prop :=
  ∀ n, P2957724134684437336.a n = A315058 n

end A315058

/-! ## A315058.P10675630550405334978

`A313872(n)-A004525(n-A004396(n))`
-/

namespace A315058.P10675630550405334978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A315058.P10675630550405334978

namespace A315058

/-- `A313872(n)-A004525(n-A004396(n))` -/
def P10675630550405334978.Spec : Prop :=
  ∀ n, P10675630550405334978.a n = A315058 n

end A315058

/-! ## A315058.P10424621208494047825

`A004396(n)+A313891(n)-n`
-/

namespace A315058.P10424621208494047825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313891 n - (n : ℤ))

end

end A315058.P10424621208494047825

namespace A315058

/-- `A004396(n)+A313891(n)-n` -/
def P10424621208494047825.Spec : Prop :=
  ∀ n, P10424621208494047825.a n = A315058 n

end A315058

/-! ## A315058.P846723031714594780

`A008576(n)+A313891(n)-A008486(n)`
-/

namespace A315058.P846723031714594780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313891 n - A008486 n)

end

end A315058.P846723031714594780

namespace A315058

/-- `A008576(n)+A313891(n)-A008486(n)` -/
def P846723031714594780.Spec : Prop :=
  ∀ n, P846723031714594780.a n = A315058 n

end A315058

/-! ## A315058.P13788039082290358023

`A315322(n)-A004396(A004525(n))`
-/

namespace A315058.P13788039082290358023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n - A004396 (A004525 n).toNat

end

end A315058.P13788039082290358023

namespace A315058

/-- `A315322(n)-A004396(A004525(n))` -/
def P13788039082290358023.Spec : Prop :=
  ∀ n, P13788039082290358023.a n = A315058 n

end A315058

/-! ## A315058.P766039614640948080

`A004396(A312101(n))+2*n`
-/

namespace A315058.P766039614640948080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312101 n).toNat + (2 * n : ℤ)

end

end A315058.P766039614640948080

namespace A315058

/-- `A004396(A312101(n))+2*n` -/
def P766039614640948080.Spec : Prop :=
  ∀ n, P766039614640948080.a n = A315058 n

end A315058

/-! ## A315058.P11441132635317603658

`A004396(A312123(n))+2*n`
-/

namespace A315058.P11441132635317603658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312123 n).toNat + (2 * n : ℤ)

end

end A315058.P11441132635317603658

namespace A315058

/-- `A004396(A312123(n))+2*n` -/
def P11441132635317603658.Spec : Prop :=
  ∀ n, P11441132635317603658.a n = A315058 n

end A315058

/-! ## A315058.P10678424718316663208

`A004396(A312526(n))+2*n`
-/

namespace A315058.P10678424718316663208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312526 n).toNat + (2 * n : ℤ)

end

end A315058.P10678424718316663208

namespace A315058

/-- `A004396(A312526(n))+2*n` -/
def P10678424718316663208.Spec : Prop :=
  ∀ n, P10678424718316663208.a n = A315058 n

end A315058

/-! ## A315058.P13376099794565627066

`A074067(A314028(n))`
-/

namespace A315058.P13376099794565627066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314028 n).toNat

end

end A315058.P13376099794565627066

namespace A315058

/-- `A074067(A314028(n))` -/
def P13376099794565627066.Spec : Prop :=
  ∀ n, P13376099794565627066.a n = A315058 n

end A315058

/-! ## A315058.P12806154087355626133

`A004396(n)+A004396(A313251(n))+n`
-/

namespace A315058.P12806154087355626133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A313251 n).toNat + (n : ℤ))

end

end A315058.P12806154087355626133

namespace A315058

/-- `A004396(n)+A004396(A313251(n))+n` -/
def P12806154087355626133.Spec : Prop :=
  ∀ n, P12806154087355626133.a n = A315058 n

end A315058

/-! ## A315058.P7154233985511212887

`A004396(n)+A004396(A315067(n))+n`
-/

namespace A315058.P7154233985511212887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A315067 n).toNat + (n : ℤ))

end

end A315058.P7154233985511212887

namespace A315058

/-- `A004396(n)+A004396(A315067(n))+n` -/
def P7154233985511212887.Spec : Prop :=
  ∀ n, P7154233985511212887.a n = A315058 n

end A315058

/-! ## A315058.P13186954847318238080

`round(A008458(A315549(n))/7)`
-/

namespace A315058.P13186954847318238080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008458 (A315549 n).toNat : ℚ) / 7)

end

end A315058.P13186954847318238080

namespace A315058

/-- `round(A008458(A315549(n))/7)` -/
def P13186954847318238080.Spec : Prop :=
  ∀ n, P13186954847318238080.a n = A315058 n

end A315058

/-! ## A315058.P9503874103417260420

`A004396(A313891(n)+A004396(n))+n`
-/

namespace A315058.P9503874103417260420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313891 n + A004396 n).toNat + (n : ℤ)

end

end A315058.P9503874103417260420

namespace A315058

/-- `A004396(A313891(n)+A004396(n))+n` -/
def P9503874103417260420.Spec : Prop :=
  ∀ n, P9503874103417260420.a n = A315058 n

end A315058

/-! ## A315058.P12613232688467309766

`A004396(A313924(n)+2*n)`
-/

namespace A315058.P12613232688467309766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313924 n + (2 * n : ℤ)).toNat

end

end A315058.P12613232688467309766

namespace A315058

/-- `A004396(A313924(n)+2*n)` -/
def P12613232688467309766.Spec : Prop :=
  ∀ n, P12613232688467309766.a n = A315058 n

end A315058

/-! ## A315058.P17539035824761702091

`A004396(A315335(n)+2*n)`
-/

namespace A315058.P17539035824761702091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315335 n + (2 * n : ℤ)).toNat

end

end A315058.P17539035824761702091

namespace A315058

/-- `A004396(A315335(n)+2*n)` -/
def P17539035824761702091.Spec : Prop :=
  ∀ n, P17539035824761702091.a n = A315058 n

end A315058

/-! ## A315058.P5395330128670185258

`A004525(A315067(n)+A008706(n))`
-/

namespace A315058.P5395330128670185258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315067 n + A008706 n).toNat

end

end A315058.P5395330128670185258

namespace A315058

/-- `A004525(A315067(n)+A008706(n))` -/
def P5395330128670185258.Spec : Prop :=
  ∀ n, P5395330128670185258.a n = A315058 n

end A315058

/-!
# A315059: Coordination sequence Gal.6.586.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315059, there is no canonical definition to state claims against.
-/

/-! ## A315059.P10197844302640864699

`A268238(A000325(n))+A250120(n)`
-/

namespace A315059.P10197844302640864699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268238 (A000325 n).toNat + A250120 n

end

end A315059.P10197844302640864699

/-! ## A315059.P16332328389530235117

`A250120(n)+A217463(A005347(n))`
-/

namespace A315059.P16332328389530235117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A217463 (A005347 n).toNat

end

end A315059.P16332328389530235117

/-! ## A315059.P4932696367391472188

`A250120(n)+A001221(A306419(n))`
-/

namespace A315059.P4932696367391472188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001221 (A306419 n).toNat

end

end A315059.P4932696367391472188

/-! ## A315059.P10258661139049988092

`A297038(A338765(n))+A250120(n)`
-/

namespace A315059.P10258661139049988092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A338765 n).toNat + A250120 n

end

end A315059.P10258661139049988092

/-! ## A315059.P12722842232696166384

`xor(A188371(A287705(n)), A315058(n))`
-/

namespace A315059.P12722842232696166384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A188371 (A287705 n).toNat) (A315058 n)

end

end A315059.P12722842232696166384

/-!
# A315060: Coordination sequence Gal.5.141.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315060, the canonical program `A315060.P16370269308654090789` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315060 has offset 0).

The definition of A315060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315060.P6744733787949049234

`A250120(n)+A311440(n)-A008574(n)`
-/

namespace A315060.P6744733787949049234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A311440 n - A008574 n)

end

end A315060.P6744733787949049234

namespace A315060

/-- `A250120(n)+A311440(n)-A008574(n)` -/
def P6744733787949049234.Spec : Prop :=
  ∀ n, P6744733787949049234.a n = A315060 n

end A315060

/-! ## A315060.P16370269308654090789

`A313855(n)-A330025(n-A330025(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315060

/-- `A313855(n)-A330025(n-A330025(n))` -/
def P16370269308654090789.Spec : Prop :=
  ∀ n, P16370269308654090789.a n = A315060 n

theorem P16370269308654090789.correct : P16370269308654090789.Spec := by
  intro n
  simp only [A315060]

end A315060

/-! ## A315060.P13109139327155475823

`A008458(n)-A004525(A008458(n)-A310238(n))`
-/

namespace A315060.P13109139327155475823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A310238 n).toNat

end

end A315060.P13109139327155475823

namespace A315060

/-- `A008458(n)-A004525(A008458(n)-A310238(n))` -/
def P13109139327155475823.Spec : Prop :=
  ∀ n, P13109139327155475823.a n = A315060 n

end A315060

/-! ## A315060.P5368973257732039990

`abs(A008592(n)-A314027(n))`
-/

namespace A315060.P5368973257732039990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314027 n|

end

end A315060.P5368973257732039990

namespace A315060

/-- `abs(A008592(n)-A314027(n))` -/
def P5368973257732039990.Spec : Prop :=
  ∀ n, P5368973257732039990.a n = A315060 n

end A315060

/-! ## A315060.P426817446895818672

`floor(A010015(n)/A314027(n))`
-/

namespace A315060.P426817446895818672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314027 n : ℚ)⌋

end

end A315060.P426817446895818672

namespace A315060

/-- `floor(A010015(n)/A314027(n))` -/
def P426817446895818672.Spec : Prop :=
  ∀ n, P426817446895818672.a n = A315060 n

end A315060

/-! ## A315060.P7053838997467171554

`2*A008706(n)-A314027(n)`
-/

namespace A315060.P7053838997467171554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314027 n

end

end A315060.P7053838997467171554

namespace A315060

/-- `2*A008706(n)-A314027(n)` -/
def P7053838997467171554.Spec : Prop :=
  ∀ n, P7053838997467171554.a n = A315060 n

end A315060

/-! ## A315060.P13535465496283712455

`A008458(n)+A008574(n)-A314027(n)`
-/

namespace A315060.P13535465496283712455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314027 n)

end

end A315060.P13535465496283712455

namespace A315060

/-- `A008458(n)+A008574(n)-A314027(n)` -/
def P13535465496283712455.Spec : Prop :=
  ∀ n, P13535465496283712455.a n = A315060 n

end A315060

/-! ## A315060.P8495639487037252167

`A313916(n)-Δ[A011858(n)]`
-/

namespace A315060.P8495639487037252167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n - (f1 (n + 1) - f1 n)

end

end A315060.P8495639487037252167

namespace A315060

/-- `A313916(n)-Δ[A011858(n)]` -/
def P8495639487037252167.Spec : Prop :=
  ∀ n, P8495639487037252167.a n = A315060 n

end A315060

/-! ## A315060.P8943576220391523712

`A313916(n)-A057354(n+1)`
-/

namespace A315060.P8943576220391523712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n - A057354 (n + 1)

end

end A315060.P8943576220391523712

namespace A315060

/-- `A313916(n)-A057354(n+1)` -/
def P8943576220391523712.Spec : Prop :=
  ∀ n, P8943576220391523712.a n = A315060 n

end A315060

/-! ## A315060.P7408891215956830316

`A315547(n)-A057354(2*n+1)`
-/

namespace A315060.P7408891215956830316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A057354 (2 * n + 1)

end

end A315060.P7408891215956830316

namespace A315060

/-- `A315547(n)-A057354(2*n+1)` -/
def P7408891215956830316.Spec : Prop :=
  ∀ n, P7408891215956830316.a n = A315060 n

end A315060

/-! ## A315060.P3956301544952911880

`A008458(n)+A250120(n)-A315749(n)`
-/

namespace A315060.P3956301544952911880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315749 n)

end

end A315060.P3956301544952911880

namespace A315060

/-- `A008458(n)+A250120(n)-A315749(n)` -/
def P3956301544952911880.Spec : Prop :=
  ∀ n, P3956301544952911880.a n = A315060 n

end A315060

/-! ## A315060.P7581893856708284394

`A074067(A314027(n))`
-/

namespace A315060.P7581893856708284394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314027 n).toNat

end

end A315060.P7581893856708284394

namespace A315060

/-- `A074067(A314027(n))` -/
def P7581893856708284394.Spec : Prop :=
  ∀ n, P7581893856708284394.a n = A315060 n

end A315060

/-! ## A315060.P4546900073255624006

`A005843(A008706(n))-A314027(n)`
-/

namespace A315060.P4546900073255624006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314027 n

end

end A315060.P4546900073255624006

namespace A315060

/-- `A005843(A008706(n))-A314027(n)` -/
def P4546900073255624006.Spec : Prop :=
  ∀ n, P4546900073255624006.a n = A315060 n

end A315060

/-! ## A315060.P8437342492601001469

`A004525(A313255(n)+n)+2*n`
-/

namespace A315060.P8437342492601001469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313255 n + (n : ℤ)).toNat + (2 * n : ℤ)

end

end A315060.P8437342492601001469

namespace A315060

/-- `A004525(A313255(n)+n)+2*n` -/
def P8437342492601001469.Spec : Prop :=
  ∀ n, P8437342492601001469.a n = A315060 n

end A315060

/-! ## A315060.P16904093844228800957

`A014029(A110185(n))+A008587(n)`
-/

namespace A315060.P16904093844228800957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (A110185 n).toNat + A008587 n

end

end A315060.P16904093844228800957

namespace A315060

/-- `A014029(A110185(n))+A008587(n)` -/
def P16904093844228800957.Spec : Prop :=
  ∀ n, P16904093844228800957.a n = A315060 n

end A315060

/-! ## A315060.P18223597761079722450

`A004525(A310446(2*n))`
-/

namespace A315060.P18223597761079722450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310446 (2 * n)).toNat

end

end A315060.P18223597761079722450

namespace A315060

/-- `A004525(A310446(2*n))` -/
def P18223597761079722450.Spec : Prop :=
  ∀ n, P18223597761079722450.a n = A315060 n

end A315060

/-! ## A315060.P2347027207197860542

`A004525(A313589(2*n))`
-/

namespace A315060.P2347027207197860542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313589 (2 * n)).toNat

end

end A315060.P2347027207197860542

namespace A315060

/-- `A004525(A313589(2*n))` -/
def P2347027207197860542.Spec : Prop :=
  ∀ n, P2347027207197860542.a n = A315060 n

end A315060

/-! ## A315060.P11326725488817000864

`A004525(A310238(n)+floor(2/acot(3*n)))`
-/

namespace A315060.P11326725488817000864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310238 n + ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋).toNat

end

end A315060.P11326725488817000864

namespace A315060

/-- `A004525(A310238(n)+floor(2/acot(3*n)))` -/
def P11326725488817000864.Spec : Prop :=
  ∀ n, P11326725488817000864.a n = A315060 n

end A315060

/-! ## A315060.P14504655864273054323

`A004525(A310238(n)+A008458(n))`
-/

namespace A315060.P14504655864273054323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310238 n + A008458 n).toNat

end

end A315060.P14504655864273054323

namespace A315060

/-- `A004525(A310238(n)+A008458(n))` -/
def P14504655864273054323.Spec : Prop :=
  ∀ n, P14504655864273054323.a n = A315060 n

end A315060

/-! ## A315060.P11851691080744233952

`A004525(A310238(n)+A008588(n))`
-/

namespace A315060.P11851691080744233952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310238 n + A008588 n).toNat

end

end A315060.P11851691080744233952

namespace A315060

/-- `A004525(A310238(n)+A008588(n))` -/
def P11851691080744233952.Spec : Prop :=
  ∀ n, P11851691080744233952.a n = A315060 n

end A315060

/-!
# A315061: Coordination sequence Gal.5.130.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315061, the canonical program `A315061.P13322944318282454910` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315061 has offset 0).

The definition of A315061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315061.P13322944318282454910

`A311943(n)+A004396(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A315061

/-- `A311943(n)+A004396(n)` -/
def P13322944318282454910.Spec : Prop :=
  ∀ n, P13322944318282454910.a n = A315061 n

theorem P13322944318282454910.correct : P13322944318282454910.Spec := by
  intro n
  simp only [A315061]

end A315061

/-! ## A315061.P17740761314588410581

`A312506(n)+A004525(n)`
-/

namespace A315061.P17740761314588410581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312506 n + A004525 n

end

end A315061.P17740761314588410581

namespace A315061

/-- `A312506(n)+A004525(n)` -/
def P17740761314588410581.Spec : Prop :=
  ∀ n, P17740761314588410581.a n = A315061 n

end A315061

/-! ## A315061.P14545342313939198417

`A312682(n)+A046978(n)`
-/

namespace A315061.P14545342313939198417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312682 n + A046978 n

end

end A315061.P14545342313939198417

namespace A315061

/-- `A312682(n)+A046978(n)` -/
def P14545342313939198417.Spec : Prop :=
  ∀ n, P14545342313939198417.a n = A315061 n

end A315061

/-! ## A315061.P12541952377773884069

`A310419(n)+A075553(n)`
-/

namespace A315061.P12541952377773884069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310419 n + A075553 n

end

end A315061.P12541952377773884069

namespace A315061

/-- `A310419(n)+A075553(n)` -/
def P12541952377773884069.Spec : Prop :=
  ∀ n, P12541952377773884069.a n = A315061 n

end A315061

/-! ## A315061.P2725780933862138164

`A313152(n)+A188510(n)`
-/

namespace A315061.P2725780933862138164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n + A188510 n

end

end A315061.P2725780933862138164

namespace A315061

/-- `A313152(n)+A188510(n)` -/
def P2725780933862138164.Spec : Prop :=
  ∀ n, P2725780933862138164.a n = A315061 n

end A315061

/-! ## A315061.P15622038314109412598

`A315306(n)-A046978(n)`
-/

namespace A315061.P15622038314109412598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315306 n - A046978 n

end

end A315061.P15622038314109412598

namespace A315061

/-- `A315306(n)-A046978(n)` -/
def P15622038314109412598.Spec : Prop :=
  ∀ n, P15622038314109412598.a n = A315061 n

end A315061

/-! ## A315061.P9781115420237611156

`A014017(n+2)+A008706(n)`
-/

namespace A315061.P9781115420237611156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (n + 2) + A008706 n

end

end A315061.P9781115420237611156

namespace A315061

/-- `A014017(n+2)+A008706(n)` -/
def P9781115420237611156.Spec : Prop :=
  ∀ n, P9781115420237611156.a n = A315061 n

end A315061

/-! ## A315061.P10807573421933198858

`A301291(n)+Δ[2*A011861(n)]`
-/

namespace A315061.P10807573421933198858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + (f1 (n + 1) - f1 n)

end

end A315061.P10807573421933198858

namespace A315061

/-- `A301291(n)+Δ[2*A011861(n)]` -/
def P10807573421933198858.Spec : Prop :=
  ∀ n, P10807573421933198858.a n = A315061 n

end A315061

/-! ## A315061.P12895385437500292884

`A008706(n)-A046978(and(n, n+1))`
-/

namespace A315061.P12895385437500292884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A046978 (Nat.land n (n + 1))

end

end A315061.P12895385437500292884

namespace A315061

/-- `A008706(n)-A046978(and(n, n+1))` -/
def P12895385437500292884.Spec : Prop :=
  ∀ n, P12895385437500292884.a n = A315061 n

end A315061

/-! ## A315061.P2470293776458008149

`A301291(n)+A201629(A201629(n)/2)`
-/

namespace A315061.P2470293776458008149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A201629 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A315061.P2470293776458008149

namespace A315061

/-- `A301291(n)+A201629(A201629(n)/2)` -/
def P2470293776458008149.Spec : Prop :=
  ∀ n, P2470293776458008149.a n = A315061 n

end A315061

/-! ## A315061.P5546637363983367271

`A311843(n)+A004525(A004525(n)+n)`
-/

namespace A315061.P5546637363983367271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A315061.P5546637363983367271

namespace A315061

/-- `A311843(n)+A004525(A004525(n)+n)` -/
def P5546637363983367271.Spec : Prop :=
  ∀ n, P5546637363983367271.a n = A315061 n

end A315061

/-! ## A315061.P10299635452794665511

`A008458(n)+A008574(n)-A314026(n)`
-/

namespace A315061.P10299635452794665511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314026 n)

end

end A315061.P10299635452794665511

namespace A315061

/-- `A008458(n)+A008574(n)-A314026(n)` -/
def P10299635452794665511.Spec : Prop :=
  ∀ n, P10299635452794665511.a n = A315061 n

end A315061

/-! ## A315061.P383336903848236455

`A315259(n)-A046978(A046978(n)+n)`
-/

namespace A315061.P383336903848236455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A315061.P383336903848236455

namespace A315061

/-- `A315259(n)-A046978(A046978(n)+n)` -/
def P383336903848236455.Spec : Prop :=
  ∀ n, P383336903848236455.a n = A315061 n

end A315061

/-! ## A315061.P7729330658495033736

`A313826(n)-A046978(n-A046978(n))`
-/

namespace A315061.P7729330658495033736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 n - A046978 ((n : ℤ) - A046978 n).toNat

end

end A315061.P7729330658495033736

namespace A315061

/-- `A313826(n)-A046978(n-A046978(n))` -/
def P7729330658495033736.Spec : Prop :=
  ∀ n, P7729330658495033736.a n = A315061 n

end A315061

/-! ## A315061.P563003700593104422

`A313875(n)-A004525(n-A004525(n))`
-/

namespace A315061.P563003700593104422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A315061.P563003700593104422

namespace A315061

/-- `A313875(n)-A004525(n-A004525(n))` -/
def P563003700593104422.Spec : Prop :=
  ∀ n, P563003700593104422.a n = A315061 n

end A315061

/-! ## A315061.P12156942769402994669

`A315320(n)-A004525(A004525(n))`
-/

namespace A315061.P12156942769402994669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315320 n - A004525 (A004525 n).toNat

end

end A315061.P12156942769402994669

namespace A315061

/-- `A315320(n)-A004525(A004525(n))` -/
def P12156942769402994669.Spec : Prop :=
  ∀ n, P12156942769402994669.a n = A315061 n

end A315061

/-! ## A315061.P6219591850864938395

`A315342(n)-A004525(n)`
-/

namespace A315061.P6219591850864938395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315342 n - A004525 n

end

end A315061.P6219591850864938395

namespace A315061

/-- `A315342(n)-A004525(n)` -/
def P6219591850864938395.Spec : Prop :=
  ∀ n, P6219591850864938395.a n = A315061 n

theorem P6219591850864938395.correct : P6219591850864938395.Spec := by
  intro n
  simp only [A315061, Nat.add_sub_cancel, A315061.P6219591850864938395.a, A315061.P13322944318282454910.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A311943, A311943.P806535565075685350.a, A315342, A315342.P13198042497454481843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315061

/-! ## A315061.P2088034638230216492

`A004396(A312140(n))+2*n`
-/

namespace A315061.P2088034638230216492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312140 n).toNat + (2 * n : ℤ)

end

end A315061.P2088034638230216492

namespace A315061

/-- `A004396(A312140(n))+2*n` -/
def P2088034638230216492.Spec : Prop :=
  ∀ n, P2088034638230216492.a n = A315061 n

end A315061

/-! ## A315061.P7574952319475434363

`A074067(A314026(n))`
-/

namespace A315061.P7574952319475434363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314026 n).toNat

end

end A315061.P7574952319475434363

namespace A315061

/-- `A074067(A314026(n))` -/
def P7574952319475434363.Spec : Prop :=
  ∀ n, P7574952319475434363.a n = A315061 n

end A315061

/-! ## A315061.P13972063948194955676

`A004396(A313926(n)+2*n)`
-/

namespace A315061.P13972063948194955676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313926 n + (2 * n : ℤ)).toNat

end

end A315061.P13972063948194955676

namespace A315061

/-- `A004396(A313926(n)+2*n)` -/
def P13972063948194955676.Spec : Prop :=
  ∀ n, P13972063948194955676.a n = A315061 n

end A315061

/-!
# A315062: Coordination sequence Gal.6.324.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315062, the canonical program `A315062.P8994265039834496307` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315062 has offset 0).

The definition of A315062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315062.P8994265039834496307

`abs(A008592(n)-A314025(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A315062

/-- `abs(A008592(n)-A314025(n))` -/
def P8994265039834496307.Spec : Prop :=
  ∀ n, P8994265039834496307.a n = A315062 n

theorem P8994265039834496307.correct : P8994265039834496307.Spec := by
  intro n
  simp only [A315062]

end A315062

/-! ## A315062.P11976881546851005030

`2*A008706(n)-A314025(n)`
-/

namespace A315062.P11976881546851005030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314025 n

end

end A315062.P11976881546851005030

namespace A315062

/-- `2*A008706(n)-A314025(n)` -/
def P11976881546851005030.Spec : Prop :=
  ∀ n, P11976881546851005030.a n = A315062 n

end A315062

/-! ## A315062.P1479212187554523533

`A008458(n)+A008574(n)-A314025(n)`
-/

namespace A315062.P1479212187554523533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314025 n)

end

end A315062.P1479212187554523533

namespace A315062

/-- `A008458(n)+A008574(n)-A314025(n)` -/
def P1479212187554523533.Spec : Prop :=
  ∀ n, P1479212187554523533.a n = A315062 n

end A315062

/-! ## A315062.P17895471948695998915

`A005843(A008706(n))-A314025(n)`
-/

namespace A315062.P17895471948695998915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A314025 n

end

end A315062.P17895471948695998915

namespace A315062

/-- `A005843(A008706(n))-A314025(n)` -/
def P17895471948695998915.Spec : Prop :=
  ∀ n, P17895471948695998915.a n = A315062 n

end A315062

/-! ## A315062.P15929464931398247406

`A004396(A313929(n)+2*n)`
-/

namespace A315062.P15929464931398247406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313929 n + (2 * n : ℤ)).toNat

end

end A315062.P15929464931398247406

namespace A315062

/-- `A004396(A313929(n)+2*n)` -/
def P15929464931398247406.Spec : Prop :=
  ∀ n, P15929464931398247406.a n = A315062 n

end A315062

/-! ## A315062.P15853010453604079983

`A004396(A315345(n)+2*n)`
-/

namespace A315062.P15853010453604079983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315345 n + (2 * n : ℤ)).toNat

end

end A315062.P15853010453604079983

namespace A315062

/-- `A004396(A315345(n)+2*n)` -/
def P15853010453604079983.Spec : Prop :=
  ∀ n, P15853010453604079983.a n = A315062 n

end A315062

/-! ## A315062.P4087062530068983752

`A274616(A315345(n)+2*n)`
-/

namespace A315062.P4087062530068983752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315345 n + (2 * n : ℤ)).toNat

end

end A315062.P4087062530068983752

namespace A315062

/-- `A274616(A315345(n)+2*n)` -/
def P4087062530068983752.Spec : Prop :=
  ∀ n, P4087062530068983752.a n = A315062 n

end A315062

/-! ## A315062.P635147183961421869

`A004396(A313929(n)+n+n)`
-/

namespace A315062.P635147183961421869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313929 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315062.P635147183961421869

namespace A315062

/-- `A004396(A313929(n)+n+n)` -/
def P635147183961421869.Spec : Prop :=
  ∀ n, P635147183961421869.a n = A315062 n

end A315062

/-! ## A315062.P15347400688734425127

`A004396(A315345(n)+n+n)`
-/

namespace A315062.P15347400688734425127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315345 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315062.P15347400688734425127

namespace A315062

/-- `A004396(A315345(n)+n+n)` -/
def P15347400688734425127.Spec : Prop :=
  ∀ n, P15347400688734425127.a n = A315062 n

end A315062

/-! ## A315062.P10763679602586720547

`A274616(A315345(n)+n+n)`
-/

namespace A315062.P10763679602586720547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315345 n + (n : ℤ) + (n : ℤ)).toNat

end

end A315062.P10763679602586720547

namespace A315062

/-- `A274616(A315345(n)+n+n)` -/
def P10763679602586720547.Spec : Prop :=
  ∀ n, P10763679602586720547.a n = A315062 n

end A315062

/-! ## A315062.P7484831683187080428

`A008458(A008574(n))-A314765(A008574(n))`
-/

namespace A315062.P7484831683187080428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A314765 (A008574 n).toNat

end

end A315062.P7484831683187080428

namespace A315062

/-- `A008458(A008574(n))-A314765(A008574(n))` -/
def P7484831683187080428.Spec : Prop :=
  ∀ n, P7484831683187080428.a n = A315062 n

end A315062

/-! ## A315062.P3278691795823920663

`round(A314841(A313899(n))/5)`
-/

namespace A315062.P3278691795823920663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A314841 (A313899 n).toNat : ℚ) / 5)

end

end A315062.P3278691795823920663

namespace A315062

/-- `round(A314841(A313899(n))/5)` -/
def P3278691795823920663.Spec : Prop :=
  ∀ n, P3278691795823920663.a n = A315062 n

end A315062

/-!
# A315063: Coordination sequence Gal.5.145.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315063, there is no canonical definition to state claims against.
-/

/-! ## A315063.P15612191536663311367

`A340831(A000085(n))+A250120(n)`
-/

namespace A315063.P15612191536663311367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340831 (A000085 n).toNat + A250120 n

end

end A315063.P15612191536663311367

/-! ## A315063.P16096227923161869516

`A340831(A239082(n))+A250120(n)`
-/

namespace A315063.P16096227923161869516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340831 (A239082 n).toNat + A250120 n

end

end A315063.P16096227923161869516

/-! ## A315063.P18092996907347367117

`A340831(A000085(n))+A047363(2*n+1)+A028310(2*n)`
-/

namespace A315063.P18092996907347367117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340831 (A000085 n).toNat + (A047363 (2 * n + 1) + A028310 (2 * n))

end

end A315063.P18092996907347367117

/-! ## A315063.P4207693993212611894

`A312093(n)+A255270(A036289(n))`
-/

namespace A315063.P4207693993212611894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312093 n + A255270 (A036289 n).toNat

end

end A315063.P4207693993212611894

/-! ## A315063.P9456080311807000948

`A356225(A030227(n))+A250120(n)`
-/

namespace A315063.P9456080311807000948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (A030227 n).toNat + A250120 n

end

end A315063.P9456080311807000948

/-!
# A315064: Coordination sequence Gal.6.347.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315064, the canonical program `A315064.P9576319934094353441` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315064 has offset 0).

The definition of A315064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315064.P9576319934094353441

`A311964(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315064

/-- `A311964(n)+A004396(n)` -/
def P9576319934094353441.Spec : Prop :=
  ∀ n, P9576319934094353441.a n = A315064 n

theorem P9576319934094353441.correct : P9576319934094353441.Spec := by
  intro n
  simp only [A315064]

end A315064

/-! ## A315064.P17879491187078116334

`abs(A008592(n)-A314024(n))`
-/

namespace A315064.P17879491187078116334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314024 n|

end

end A315064.P17879491187078116334

namespace A315064

/-- `abs(A008592(n)-A314024(n))` -/
def P17879491187078116334.Spec : Prop :=
  ∀ n, P17879491187078116334.a n = A315064 n

end A315064

/-! ## A315064.P16634145832389989703

`A311964(n)+n-∑[A022003(n)]`
-/

namespace A315064.P16634145832389989703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315064.P16634145832389989703

namespace A315064

/-- `A311964(n)+n-∑[A022003(n)]` -/
def P16634145832389989703.Spec : Prop :=
  ∀ n, P16634145832389989703.a n = A315064 n

end A315064

/-! ## A315064.P4163261618088659656

`A311964(n)+n-Δ[A130518(n)]`
-/

namespace A315064.P4163261618088659656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315064.P4163261618088659656

namespace A315064

/-- `A311964(n)+n-Δ[A130518(n)]` -/
def P4163261618088659656.Spec : Prop :=
  ∀ n, P4163261618088659656.a n = A315064 n

end A315064

/-! ## A315064.P1001844309571088911

`A311964(n)+A002264(2*n+1)`
-/

namespace A315064.P1001844309571088911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + A002264 (2 * n + 1)

end

end A315064.P1001844309571088911

namespace A315064

/-- `A311964(n)+A002264(2*n+1)` -/
def P1001844309571088911.Spec : Prop :=
  ∀ n, P1001844309571088911.a n = A315064 n

theorem P1001844309571088911.correct : P1001844309571088911.Spec := by
  intro n
  simp only [A315064, Nat.add_sub_cancel, A315064.P1001844309571088911.a, A315064.P9576319934094353441.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A311964, A311964.P9332770168287071000.a, A008593, A008593.P2680892499938115192.a, A315697, A315697.P15638358996916271384.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315064

/-! ## A315064.P17674065526910317615

`A311964(n)+A008615(A005408(2*n))`
-/

namespace A315064.P17674065526910317615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + A008615 (A005408 (2 * n)).toNat

end

end A315064.P17674065526910317615

namespace A315064

/-- `A311964(n)+A008615(A005408(2*n))` -/
def P17674065526910317615.Spec : Prop :=
  ∀ n, P17674065526910317615.a n = A315064 n

end A315064

/-! ## A315064.P6999413977753429557

`A311964(n)+n-A008615(A005408(n))`
-/

namespace A315064.P6999413977753429557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + ((n : ℤ) - A008615 (A005408 n).toNat)

end

end A315064.P6999413977753429557

namespace A315064

/-- `A311964(n)+n-A008615(A005408(n))` -/
def P6999413977753429557.Spec : Prop :=
  ∀ n, P6999413977753429557.a n = A315064 n

end A315064

/-! ## A315064.P17623160839006402503

`A008458(n)+A008574(n)-A314024(n)`
-/

namespace A315064.P17623160839006402503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314024 n)

end

end A315064.P17623160839006402503

namespace A315064

/-- `A008458(n)+A008574(n)-A314024(n)` -/
def P17623160839006402503.Spec : Prop :=
  ∀ n, P17623160839006402503.a n = A315064 n

end A315064

/-! ## A315064.P3024833709475559238

`A313879(n)-A004525(n-A004396(n))`
-/

namespace A315064.P3024833709475559238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A315064.P3024833709475559238

namespace A315064

/-- `A313879(n)-A004525(n-A004396(n))` -/
def P3024833709475559238.Spec : Prop :=
  ∀ n, P3024833709475559238.a n = A315064 n

end A315064

/-! ## A315064.P3345325316167398874

`A313900(n)-floor((n+1)/3)`
-/

namespace A315064.P3345325316167398874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n - ⌊(n + 1 : ℚ) / 3⌋

end

end A315064.P3345325316167398874

namespace A315064

/-- `A313900(n)-floor((n+1)/3)` -/
def P3345325316167398874.Spec : Prop :=
  ∀ n, P3345325316167398874.a n = A315064 n

end A315064

/-! ## A315064.P15154665746400434599

`A004396(n)+A313900(n)-n`
-/

namespace A315064.P15154665746400434599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313900 n - (n : ℤ))

end

end A315064.P15154665746400434599

namespace A315064

/-- `A004396(n)+A313900(n)-n` -/
def P15154665746400434599.Spec : Prop :=
  ∀ n, P15154665746400434599.a n = A315064 n

end A315064

/-! ## A315064.P14639122307414540351

`A004525(A004773(n))+A313900(n)-n`
-/

namespace A315064.P14639122307414540351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004773 n).toNat + (A313900 n - (n : ℤ))

end

end A315064.P14639122307414540351

namespace A315064

/-- `A004525(A004773(n))+A313900(n)-n` -/
def P14639122307414540351.Spec : Prop :=
  ∀ n, P14639122307414540351.a n = A315064 n

end A315064

/-! ## A315064.P9575594975150936142

`A008576(n)+A313900(n)-A008486(n)`
-/

namespace A315064.P9575594975150936142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313900 n - A008486 n)

end

end A315064.P9575594975150936142

namespace A315064

/-- `A008576(n)+A313900(n)-A008486(n)` -/
def P9575594975150936142.Spec : Prop :=
  ∀ n, P9575594975150936142.a n = A315064 n

end A315064

/-! ## A315064.P2528939815844503598

`A004525(2*A312113(n)+n)`
-/

namespace A315064.P2528939815844503598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A312113 n + (n : ℤ)).toNat

end

end A315064.P2528939815844503598

namespace A315064

/-- `A004525(2*A312113(n)+n)` -/
def P2528939815844503598.Spec : Prop :=
  ∀ n, P2528939815844503598.a n = A315064 n

end A315064

/-! ## A315064.P13068478096767849151

`A004525(2*A312144(n)+n)`
-/

namespace A315064.P13068478096767849151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A312144 n + (n : ℤ)).toNat

end

end A315064.P13068478096767849151

namespace A315064

/-- `A004525(2*A312144(n)+n)` -/
def P13068478096767849151.Spec : Prop :=
  ∀ n, P13068478096767849151.a n = A315064 n

end A315064

/-! ## A315064.P2321428156918210029

`A004525(2*A313930(n)-n)`
-/

namespace A315064.P2321428156918210029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A313930 n - (n : ℤ)).toNat

end

end A315064.P2321428156918210029

namespace A315064

/-- `A004525(2*A313930(n)-n)` -/
def P2321428156918210029.Spec : Prop :=
  ∀ n, P2321428156918210029.a n = A315064 n

end A315064

/-! ## A315064.P14849818073903544622

`A004525(A312113(n)+A312113(n)+n)`
-/

namespace A315064.P14849818073903544622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312113 n + (A312113 n + (n : ℤ))).toNat

end

end A315064.P14849818073903544622

namespace A315064

/-- `A004525(A312113(n)+A312113(n)+n)` -/
def P14849818073903544622.Spec : Prop :=
  ∀ n, P14849818073903544622.a n = A315064 n

end A315064

/-! ## A315064.P16104700268086839430

`A004525(A312144(n)+A312144(n)+n)`
-/

namespace A315064.P16104700268086839430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312144 n + (A312144 n + (n : ℤ))).toNat

end

end A315064.P16104700268086839430

namespace A315064

/-- `A004525(A312144(n)+A312144(n)+n)` -/
def P16104700268086839430.Spec : Prop :=
  ∀ n, P16104700268086839430.a n = A315064 n

end A315064

/-! ## A315064.P4239806776668396106

`A004525(A313930(n)+A313930(n)-n)`
-/

namespace A315064.P4239806776668396106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313930 n + (A313930 n - (n : ℤ))).toNat

end

end A315064.P4239806776668396106

namespace A315064

/-- `A004525(A313930(n)+A313930(n)-n)` -/
def P4239806776668396106.Spec : Prop :=
  ∀ n, P4239806776668396106.a n = A315064 n

end A315064

/-! ## A315064.P9055394390129926546

`A004525(A313930(n)-(n-A313930(n)))`
-/

namespace A315064.P9055394390129926546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313930 n - ((n : ℤ) - A313930 n)).toNat

end

end A315064.P9055394390129926546

namespace A315064

/-- `A004525(A313930(n)-(n-A313930(n)))` -/
def P9055394390129926546.Spec : Prop :=
  ∀ n, P9055394390129926546.a n = A315064 n

end A315064

/-!
# A315065: Coordination sequence Gal.6.493.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315065, the canonical program `A315065.P12325047079994023541` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315065 has offset 0).

The definition of A315065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315065.P12325047079994023541

`A313908(n)+A250120(n)-A313855(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315065

/-- `A313908(n)+A250120(n)-A313855(n)` -/
def P12325047079994023541.Spec : Prop :=
  ∀ n, P12325047079994023541.a n = A315065 n

theorem P12325047079994023541.correct : P12325047079994023541.Spec := by
  intro n
  simp only [A315065]

end A315065

/-! ## A315065.P12636017063779238386

`A313908(n)+A313898(n)-A301718(n)`
-/

namespace A315065.P12636017063779238386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313908 n + A313898 n - A301718 n

end

end A315065.P12636017063779238386

namespace A315065

/-- `A313908(n)+A313898(n)-A301718(n)` -/
def P12636017063779238386.Spec : Prop :=
  ∀ n, P12636017063779238386.a n = A315065 n

end A315065

/-! ## A315065.P6333659239834431169

`A313908(n)+A311807(n)+A151988(n)-A301718(n)`
-/

namespace A315065.P6333659239834431169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313908 n + (A311807 n + A151988 n) - A301718 n

end

end A315065.P6333659239834431169

namespace A315065

/-- `A313908(n)+A311807(n)+A151988(n)-A301718(n)` -/
def P6333659239834431169.Spec : Prop :=
  ∀ n, P6333659239834431169.a n = A315065 n

end A315065

/-! ## A315065.P18384053854852681549

`A250120(n)+A139352(A383491(n))`
-/

namespace A315065.P18384053854852681549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A139352 (A383491 n).toNat

end

end A315065.P18384053854852681549

namespace A315065

/-- `A250120(n)+A139352(A383491(n))` -/
def P18384053854852681549.Spec : Prop :=
  ∀ n, P18384053854852681549.a n = A315065 n

end A315065

/-! ## A315065.P8692905302908254342

`A312561(n)+A078349(A351870(n)+1)`
-/

namespace A315065.P8692905302908254342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + A078349 (A351870 n + 1).toNat

end

end A315065.P8692905302908254342

namespace A315065

/-- `A312561(n)+A078349(A351870(n)+1)` -/
def P8692905302908254342.Spec : Prop :=
  ∀ n, P8692905302908254342.a n = A315065 n

end A315065

/-!
# A315066: Coordination sequence Gal.6.587.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315066, there is no canonical definition to state claims against.
-/

/-! ## A315066.P12854276076743306976

`A315056(n)+A226464(A001006(n))`
-/

namespace A315066.P12854276076743306976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315056 n + A226464 (A001006 n).toNat

end

end A315066.P12854276076743306976

/-! ## A315066.P4521994884795829218

`A313247(n)+A007814(A128158(n+1))`
-/

namespace A315066.P4521994884795829218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313247 n + A007814 (A128158 (n + 1)).toNat

end

end A315066.P4521994884795829218

/-! ## A315066.P5805038330819828689

`A341612(A000110(n))+A315034(n)`
-/

namespace A315066.P5805038330819828689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (A000110 n).toNat + A315034 n

end

end A315066.P5805038330819828689

/-! ## A315066.P6468000174422369923

`A288818(A351438(n))+A250120(n)`
-/

namespace A315066.P6468000174422369923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288818 (A351438 n).toNat + A250120 n

end

end A315066.P6468000174422369923

/-! ## A315066.P17871532451905536623

`or(A048881(A342456(n)), A315050(n))`
-/

namespace A315066.P17871532451905536623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048881 (A342456 n).toNat) (A315050 n)

end

end A315066.P17871532451905536623

/-!
# A315067: Coordination sequence Gal.6.349.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315067, the canonical program `A315067.P1327162686597900604` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315067 has offset 0).

The definition of A315067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315067.P1327162686597900604

`A312526(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315067

/-- `A312526(n)+A004525(n)` -/
def P1327162686597900604.Spec : Prop :=
  ∀ n, P1327162686597900604.a n = A315067 n

theorem P1327162686597900604.correct : P1327162686597900604.Spec := by
  intro n
  simp only [A315067]

end A315067

/-! ## A315067.P11586421418139648419

`A314953(n)+Δ[A011865(n)]`
-/

namespace A315067.P11586421418139648419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314953 n + (f1 (n + 1) - f1 n)

end

end A315067.P11586421418139648419

namespace A315067

/-- `A314953(n)+Δ[A011865(n)]` -/
def P11586421418139648419.Spec : Prop :=
  ∀ n, P11586421418139648419.a n = A315067 n

theorem P11586421418139648419.correct : P11586421418139648419.Spec := by
  intro n
  simp only [A315067, Nat.add_sub_cancel, A315067.P11586421418139648419.f1, A315067.P11586421418139648419.a, A315067.P1327162686597900604.a, A004525, A004525.P4158271949796742323.a, A011865, A011865.P18048699183673763300.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A314953, A314953.P5789728208216381140.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315067

/-! ## A315067.P12051973990359788156

`A312620(n)+A004396(A004525(n))`
-/

namespace A315067.P12051973990359788156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312620 n + A004396 (A004525 n).toNat

end

end A315067.P12051973990359788156

namespace A315067

/-- `A312620(n)+A004396(A004525(n))` -/
def P12051973990359788156.Spec : Prop :=
  ∀ n, P12051973990359788156.a n = A315067 n

theorem P12051973990359788156.correct : P12051973990359788156.Spec := by
  intro n
  simp only [A315067, Nat.add_sub_cancel, A315067.P12051973990359788156.a, A315067.P1327162686597900604.a, A004396, A004396.P17032557045289780609.a, A004525, A004525.P4158271949796742323.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A312620, A312620.P764241885793850481.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315067

/-! ## A315067.P10076831408081312184

`A311924(n)-A004396(n-A004525(n))+n`
-/

namespace A315067.P10076831408081312184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n - A004396 ((n : ℤ) - A004525 n).toNat + (n : ℤ)

end

end A315067.P10076831408081312184

namespace A315067

/-- `A311924(n)-A004396(n-A004525(n))+n` -/
def P10076831408081312184.Spec : Prop :=
  ∀ n, P10076831408081312184.a n = A315067 n

end A315067

/-! ## A315067.P4770858029844791541

`A004396(n)+A314847(n)-A004525(A004396(n))`
-/

namespace A315067.P4770858029844791541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314847 n - A004525 (A004396 n).toNat)

end

end A315067.P4770858029844791541

namespace A315067

/-- `A004396(n)+A314847(n)-A004525(A004396(n))` -/
def P4770858029844791541.Spec : Prop :=
  ∀ n, P4770858029844791541.a n = A315067 n

end A315067

/-! ## A315067.P11084655908739936051

`A004525(n)+A315026(n)-A004525(A004396(n))`
-/

namespace A315067.P11084655908739936051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315026 n - A004525 (A004396 n).toNat)

end

end A315067.P11084655908739936051

namespace A315067

/-- `A004525(n)+A315026(n)-A004525(A004396(n))` -/
def P11084655908739936051.Spec : Prop :=
  ∀ n, P11084655908739936051.a n = A315067 n

end A315067

/-! ## A315067.P10702583394594833853

`A004525(n)+A315030(n)-A004396(A004525(n))`
-/

namespace A315067.P10702583394594833853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315030 n - A004396 (A004525 n).toNat)

end

end A315067.P10702583394594833853

namespace A315067

/-- `A004525(n)+A315030(n)-A004396(A004525(n))` -/
def P10702583394594833853.Spec : Prop :=
  ∀ n, P10702583394594833853.a n = A315067 n

end A315067

/-! ## A315067.P3790920045947288328

`abs(A008592(n)-A314022(n))`
-/

namespace A315067.P3790920045947288328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314022 n|

end

end A315067.P3790920045947288328

namespace A315067

/-- `abs(A008592(n)-A314022(n))` -/
def P3790920045947288328.Spec : Prop :=
  ∀ n, P3790920045947288328.a n = A315067 n

end A315067

/-! ## A315067.P5321018117635778952

`floor(A010015(n)/A314022(n))`
-/

namespace A315067.P5321018117635778952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A314022 n : ℚ)⌋

end

end A315067.P5321018117635778952

namespace A315067

/-- `floor(A010015(n)/A314022(n))` -/
def P5321018117635778952.Spec : Prop :=
  ∀ n, P5321018117635778952.a n = A315067 n

end A315067

/-! ## A315067.P5339487545596243668

`A008458(n)+A008574(n)-A314022(n)`
-/

namespace A315067.P5339487545596243668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314022 n)

end

end A315067.P5339487545596243668

namespace A315067

/-- `A008458(n)+A008574(n)-A314022(n)` -/
def P5339487545596243668.Spec : Prop :=
  ∀ n, P5339487545596243668.a n = A315067 n

end A315067

/-! ## A315067.P10771610479206013458

`A313884(n)-A004525(n-A004396(n))`
-/

namespace A315067.P10771610479206013458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313884 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A315067.P10771610479206013458

namespace A315067

/-- `A313884(n)-A004525(n-A004396(n))` -/
def P10771610479206013458.Spec : Prop :=
  ∀ n, P10771610479206013458.a n = A315067 n

end A315067

/-! ## A315067.P18437724673036032874

`A313891(n)-A004396(n-A004525(n))`
-/

namespace A315067.P18437724673036032874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A315067.P18437724673036032874

namespace A315067

/-- `A313891(n)-A004396(n-A004525(n))` -/
def P18437724673036032874.Spec : Prop :=
  ∀ n, P18437724673036032874.a n = A315067 n

end A315067

/-! ## A315067.P1221322338746330611

`A315322(n)-A004525(A004396(n))`
-/

namespace A315067.P1221322338746330611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n - A004525 (A004396 n).toNat

end

end A315067.P1221322338746330611

namespace A315067

/-- `A315322(n)-A004525(A004396(n))` -/
def P1221322338746330611.Spec : Prop :=
  ∀ n, P1221322338746330611.a n = A315067 n

end A315067

/-! ## A315067.P5094942145230298088

`A315246(n)-A128834(n)`
-/

namespace A315067.P5094942145230298088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315246 n - A128834 n

end

end A315067.P5094942145230298088

namespace A315067

/-- `A315246(n)-A128834(n)` -/
def P5094942145230298088.Spec : Prop :=
  ∀ n, P5094942145230298088.a n = A315067 n

theorem P5094942145230298088.correct : P5094942145230298088.Spec := by
  intro n
  simp only [A315067, Nat.add_sub_cancel, A315067.P5094942145230298088.a, A315067.P1327162686597900604.a, A004525, A004525.P4158271949796742323.a, A128834, A128834.P4430347604004376390.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A315246, A315246.P15325396058034907963.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315067

/-! ## A315067.P14973411422031173596

`A315246(n)+A010892(n+2)`
-/

namespace A315067.P14973411422031173596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315246 n + A010892 (n + 2)

end

end A315067.P14973411422031173596

namespace A315067

/-- `A315246(n)+A010892(n+2)` -/
def P14973411422031173596.Spec : Prop :=
  ∀ n, P14973411422031173596.a n = A315067 n

end A315067

/-! ## A315067.P7351327628617681458

`A074067(A314022(n))`
-/

namespace A315067.P7351327628617681458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A314022 n).toNat

end

end A315067.P7351327628617681458

namespace A315067

/-- `A074067(A314022(n))` -/
def P7351327628617681458.Spec : Prop :=
  ∀ n, P7351327628617681458.a n = A315067 n

end A315067

/-!
# A315068: Coordination sequence Gal.5.131.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315068, the canonical program `A315068.P4253477378695981415` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315068 has offset 0).

The definition of A315068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315068.P4253477378695981415

`A311993(n)+A004396(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315068

/-- `A311993(n)+A004396(n)` -/
def P4253477378695981415.Spec : Prop :=
  ∀ n, P4253477378695981415.a n = A315068 n

theorem P4253477378695981415.correct : P4253477378695981415.Spec := by
  intro n
  simp only [A315068]

end A315068

/-! ## A315068.P3456397934501614879

`abs(A008592(n)-A314021(n))`
-/

namespace A315068.P3456397934501614879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314021 n|

end

end A315068.P3456397934501614879

namespace A315068

/-- `abs(A008592(n)-A314021(n))` -/
def P3456397934501614879.Spec : Prop :=
  ∀ n, P3456397934501614879.a n = A315068 n

end A315068

/-! ## A315068.P15977923118250397990

`A311993(n)+A002264(2*n+1)`
-/

namespace A315068.P15977923118250397990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + A002264 (2 * n + 1)

end

end A315068.P15977923118250397990

namespace A315068

/-- `A311993(n)+A002264(2*n+1)` -/
def P15977923118250397990.Spec : Prop :=
  ∀ n, P15977923118250397990.a n = A315068 n

theorem P15977923118250397990.correct : P15977923118250397990.Spec := by
  intro n
  simp only [A315068, Nat.add_sub_cancel, A315068.P15977923118250397990.a, A315068.P4253477378695981415.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A311993, A311993.P8391129564967139039.f1, A311993.P8391129564967139039.a, A011862, A011862.P9485299441699197278.a, A311344, A311344.P9479283837272976184.a, A312908, A312908.P18385197356515419689.a, A042965, A042965.P10256174339092268817.a, A298786, A298786.P14431482331037710348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315068

/-! ## A315068.P8014143700661020716

`A311993(n)+ceil((A004773(n)-2)/2)+1`
-/

namespace A315068.P8014143700661020716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + ⌈(A004773 n - 2 : ℚ) / 2⌉ + 1

end

end A315068.P8014143700661020716

namespace A315068

/-- `A311993(n)+ceil((A004773(n)-2)/2)+1` -/
def P8014143700661020716.Spec : Prop :=
  ∀ n, P8014143700661020716.a n = A315068 n

end A315068

/-! ## A315068.P4974511009945496184

`A311993(n)+A004525(A004773(n))`
-/

namespace A315068.P4974511009945496184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + A004525 (A004773 n).toNat

end

end A315068.P4974511009945496184

namespace A315068

/-- `A311993(n)+A004525(A004773(n))` -/
def P4974511009945496184.Spec : Prop :=
  ∀ n, P4974511009945496184.a n = A315068 n

end A315068

/-! ## A315068.P15316030768515398657

`A312555(n)+A004396(A004396(n))`
-/

namespace A315068.P15316030768515398657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n + A004396 (A004396 n).toNat

end

end A315068.P15316030768515398657

namespace A315068

/-- `A312555(n)+A004396(A004396(n))` -/
def P15316030768515398657.Spec : Prop :=
  ∀ n, P15316030768515398657.a n = A315068 n

end A315068

/-! ## A315068.P2654012150554047179

`A311344(n)+A004396(2*A004396(n))`
-/

namespace A315068.P2654012150554047179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + A004396 (2 * A004396 n).toNat

end

end A315068.P2654012150554047179

namespace A315068

/-- `A311344(n)+A004396(2*A004396(n))` -/
def P2654012150554047179.Spec : Prop :=
  ∀ n, P2654012150554047179.a n = A315068 n

end A315068

/-! ## A315068.P13576675190191248670

`A008458(n)+A008574(n)-A314021(n)`
-/

namespace A315068.P13576675190191248670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314021 n)

end

end A315068.P13576675190191248670

namespace A315068

/-- `A008458(n)+A008574(n)-A314021(n)` -/
def P13576675190191248670.Spec : Prop :=
  ∀ n, P13576675190191248670.a n = A315068 n

end A315068

/-! ## A315068.P12886505437338213856

`∑{d}[A008592(n)-A314021(n), A000010(#)]`
-/

namespace A315068.P12886505437338213856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A314021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315068.P12886505437338213856

namespace A315068

/-- `∑{d}[A008592(n)-A314021(n), A000010(#)]` -/
def P12886505437338213856.Spec : Prop :=
  ∀ n, P12886505437338213856.a n = A315068 n

end A315068

/-! ## A315068.P14971618061676835786

`A313894(n)-A004396(n-A004396(n))`
-/

namespace A315068.P14971618061676835786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315068.P14971618061676835786

namespace A315068

/-- `A313894(n)-A004396(n-A004396(n))` -/
def P14971618061676835786.Spec : Prop :=
  ∀ n, P14971618061676835786.a n = A315068 n

end A315068

/-! ## A315068.P8033113532009143473

`A315343(n)-A004396(A004396(n))`
-/

namespace A315068.P8033113532009143473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315343 n - A004396 (A004396 n).toNat

end

end A315068.P8033113532009143473

namespace A315068

/-- `A315343(n)-A004396(A004396(n))` -/
def P8033113532009143473.Spec : Prop :=
  ∀ n, P8033113532009143473.a n = A315068 n

end A315068

/-! ## A315068.P16112593517223061949

`2*n+A004396(A312160(n))`
-/

namespace A315068.P16112593517223061949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A312160 n).toNat

end

end A315068.P16112593517223061949

namespace A315068

/-- `2*n+A004396(A312160(n))` -/
def P16112593517223061949.Spec : Prop :=
  ∀ n, P16112593517223061949.a n = A315068 n

end A315068

/-! ## A315068.P15091948583952265737

`A008585(n)-(n-A004396(A312160(n)))`
-/

namespace A315068.P15091948583952265737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A312160 n).toNat)

end

end A315068.P15091948583952265737

namespace A315068

/-- `A008585(n)-(n-A004396(A312160(n)))` -/
def P15091948583952265737.Spec : Prop :=
  ∀ n, P15091948583952265737.a n = A315068 n

end A315068

/-! ## A315068.P14830964513899576181

`A004396(A312160(n)+A008486(n))`
-/

namespace A315068.P14830964513899576181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312160 n + A008486 n).toNat

end

end A315068.P14830964513899576181

namespace A315068

/-- `A004396(A312160(n)+A008486(n))` -/
def P14830964513899576181.Spec : Prop :=
  ∀ n, P14830964513899576181.a n = A315068 n

end A315068

/-! ## A315068.P16049744654690802464

`A004396(A312160(n)+A008585(n))`
-/

namespace A315068.P16049744654690802464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312160 n + A008585 n).toNat

end

end A315068.P16049744654690802464

namespace A315068

/-- `A004396(A312160(n)+A008585(n))` -/
def P16049744654690802464.Spec : Prop :=
  ∀ n, P16049744654690802464.a n = A315068 n

end A315068

/-!
# A315069: Coordination sequence Gal.6.325.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315069, the canonical program `A315069.P429606285114840225` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315069 has offset 0).

The definition of A315069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315069.P4887111364680487140

`A315319(n)-A330025(n)`
-/

namespace A315069.P4887111364680487140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315319 n - A330025 n

end

end A315069.P4887111364680487140

namespace A315069

/-- `A315319(n)-A330025(n)` -/
def P4887111364680487140.Spec : Prop :=
  ∀ n, P4887111364680487140.a n = A315069 n

end A315069

/-! ## A315069.P429606285114840225

`abs(A008592(n)-A314020(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315069

/-- `abs(A008592(n)-A314020(n))` -/
def P429606285114840225.Spec : Prop :=
  ∀ n, P429606285114840225.a n = A315069 n

theorem P429606285114840225.correct : P429606285114840225.Spec := by
  intro n
  simp only [A315069]

end A315069

/-! ## A315069.P13911977685619130205

`A313842(n)+A014019(n+3)`
-/

namespace A315069.P13911977685619130205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313842 n + A014019 (n + 3)

end

end A315069.P13911977685619130205

namespace A315069

/-- `A313842(n)+A014019(n+3)` -/
def P13911977685619130205.Spec : Prop :=
  ∀ n, P13911977685619130205.a n = A315069 n

end A315069

/-! ## A315069.P15811186592281962242

`2*A008706(n)-A314020(n)`
-/

namespace A315069.P15811186592281962242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314020 n

end

end A315069.P15811186592281962242

namespace A315069

/-- `2*A008706(n)-A314020(n)` -/
def P15811186592281962242.Spec : Prop :=
  ∀ n, P15811186592281962242.a n = A315069 n

end A315069

/-! ## A315069.P3886694442356376410

`A008458(n)+A008574(n)-A314020(n)`
-/

namespace A315069.P3886694442356376410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314020 n)

end

end A315069.P3886694442356376410

namespace A315069

/-- `A008458(n)+A008574(n)-A314020(n)` -/
def P3886694442356376410.Spec : Prop :=
  ∀ n, P3886694442356376410.a n = A315069 n

end A315069

/-! ## A315069.P8813225036360968231

`A250120(n)+A311535(n)-A008574(n)`
-/

namespace A315069.P8813225036360968231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A311535 n - A008574 n)

end

end A315069.P8813225036360968231

namespace A315069

/-- `A250120(n)+A311535(n)-A008574(n)` -/
def P8813225036360968231.Spec : Prop :=
  ∀ n, P8813225036360968231.a n = A315069 n

end A315069

/-! ## A315069.P5141817912443195000

`A315508(n)-A253262(n)`
-/

namespace A315069.P5141817912443195000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315508 n - A253262 n

end

end A315069.P5141817912443195000

namespace A315069

/-- `A315508(n)-A253262(n)` -/
def P5141817912443195000.Spec : Prop :=
  ∀ n, P5141817912443195000.a n = A315069 n

theorem P5141817912443195000.correct : P5141817912443195000.Spec := by
  intro n
  simp only [A315069, Nat.add_sub_cancel, A315069.P5141817912443195000.a, A315069.P429606285114840225.a, A008592, A008592.P4981059802862696142.a, A253262, A253262.P6184646248567078382.a, A314020, A314020.P15849566854326766126.f1, A314020.P15849566854326766126.a, A315508, A315508.P17212227273649796777.a, A011858, A011858.P16234308487928340219.a, A313476, A313476.P1237108097731061015.a, A312903, A312903.P5186887365123370171.a, A330025, A330025.P8729701065839544525.a, A311384, A311384.P2354907441128154650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315069

/-! ## A315069.P7004229892194212708

`A008458(n)+A250120(n)-A315742(n)`
-/

namespace A315069.P7004229892194212708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315742 n)

end

end A315069.P7004229892194212708

namespace A315069

/-- `A008458(n)+A250120(n)-A315742(n)` -/
def P7004229892194212708.Spec : Prop :=
  ∀ n, P7004229892194212708.a n = A315069 n

end A315069

/-! ## A315069.P1818546168864012703

`A313928(n)-Δ[A011858(n)]`
-/

namespace A315069.P1818546168864012703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n - (f1 (n + 1) - f1 n)

end

end A315069.P1818546168864012703

namespace A315069

/-- `A313928(n)-Δ[A011858(n)]` -/
def P1818546168864012703.Spec : Prop :=
  ∀ n, P1818546168864012703.a n = A315069 n

end A315069

/-! ## A315069.P436166575455835835

`A313928(n)-A057354(n+1)`
-/

namespace A315069.P436166575455835835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n - A057354 (n + 1)

end

end A315069.P436166575455835835

namespace A315069

/-- `A313928(n)-A057354(n+1)` -/
def P436166575455835835.Spec : Prop :=
  ∀ n, P436166575455835835.a n = A315069 n

end A315069

/-! ## A315069.P17769077717464255204

`A004396(A312162(n))+2*n`
-/

namespace A315069.P17769077717464255204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312162 n).toNat + (2 * n : ℤ)

end

end A315069.P17769077717464255204

namespace A315069

/-- `A004396(A312162(n))+2*n` -/
def P17769077717464255204.Spec : Prop :=
  ∀ n, P17769077717464255204.a n = A315069 n

end A315069

/-! ## A315069.P3830717600330114262

`A004396(A312561(n))+2*n`
-/

namespace A315069.P3830717600330114262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312561 n).toNat + (2 * n : ℤ)

end

end A315069.P3830717600330114262

namespace A315069

/-- `A004396(A312561(n))+2*n` -/
def P3830717600330114262.Spec : Prop :=
  ∀ n, P3830717600330114262.a n = A315069 n

end A315069

/-! ## A315069.P14984997578696200421

`A005843(n)+A004396(A312162(n))`
-/

namespace A315069.P14984997578696200421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312162 n).toNat

end

end A315069.P14984997578696200421

namespace A315069

/-- `A005843(n)+A004396(A312162(n))` -/
def P14984997578696200421.Spec : Prop :=
  ∀ n, P14984997578696200421.a n = A315069 n

end A315069

/-! ## A315069.P6254552890079365782

`A005843(n)+A004396(A312561(n))`
-/

namespace A315069.P6254552890079365782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312561 n).toNat

end

end A315069.P6254552890079365782

namespace A315069

/-- `A005843(n)+A004396(A312561(n))` -/
def P6254552890079365782.Spec : Prop :=
  ∀ n, P6254552890079365782.a n = A315069 n

end A315069

/-! ## A315069.P1659032015475497592

`A004396(A312561(n)+A008486(n))`
-/

namespace A315069.P1659032015475497592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312561 n + A008486 n).toNat

end

end A315069.P1659032015475497592

namespace A315069

/-- `A004396(A312561(n)+A008486(n))` -/
def P1659032015475497592.Spec : Prop :=
  ∀ n, P1659032015475497592.a n = A315069 n

end A315069

/-!
# A315070: Coordination sequence Gal.6.326.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315070, the canonical program `A315070.P1003336142198801993` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315070 has offset 0).

The definition of A315070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315070.P7074495087840552172

`abs(A008592(n)-A314019(n))`
-/

namespace A315070.P7074495087840552172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314019 n|

end

end A315070.P7074495087840552172

namespace A315070

/-- `abs(A008592(n)-A314019(n))` -/
def P7074495087840552172.Spec : Prop :=
  ∀ n, P7074495087840552172.a n = A315070 n

end A315070

/-! ## A315070.P4516288570126832509

`A314963(n)+Δ[A011864(n)]`
-/

namespace A315070.P4516288570126832509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314963 n + (f1 (n + 1) - f1 n)

end

end A315070.P4516288570126832509

namespace A315070

/-- `A314963(n)+Δ[A011864(n)]` -/
def P4516288570126832509.Spec : Prop :=
  ∀ n, P4516288570126832509.a n = A315070 n

end A315070

/-! ## A315070.P2682277575587727808

`2*A008706(n)-A314019(n)`
-/

namespace A315070.P2682277575587727808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A314019 n

end

end A315070.P2682277575587727808

namespace A315070

/-- `2*A008706(n)-A314019(n)` -/
def P2682277575587727808.Spec : Prop :=
  ∀ n, P2682277575587727808.a n = A315070 n

end A315070

/-! ## A315070.P17321307175640730811

`A135042(2*n+1)-A314019(n)`
-/

namespace A315070.P17321307175640730811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A314019 n

end

end A315070.P17321307175640730811

namespace A315070

/-- `A135042(2*n+1)-A314019(n)` -/
def P17321307175640730811.Spec : Prop :=
  ∀ n, P17321307175640730811.a n = A315070 n

end A315070

/-! ## A315070.P807823900279398835

`A008458(n)+A008574(n)-A314019(n)`
-/

namespace A315070.P807823900279398835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314019 n)

end

end A315070.P807823900279398835

namespace A315070

/-- `A008458(n)+A008574(n)-A314019(n)` -/
def P807823900279398835.Spec : Prop :=
  ∀ n, P807823900279398835.a n = A315070 n

end A315070

/-! ## A315070.P1003336142198801993

`2*n+A004396(A312163(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A315070

/-- `2*n+A004396(A312163(n))` -/
def P1003336142198801993.Spec : Prop :=
  ∀ n, P1003336142198801993.a n = A315070 n

theorem P1003336142198801993.correct : P1003336142198801993.Spec := by
  intro n
  simp only [A315070]

end A315070

/-! ## A315070.P10975070998298771806

`A004396(A312562(n))+2*n`
-/

namespace A315070.P10975070998298771806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312562 n).toNat + (2 * n : ℤ)

end

end A315070.P10975070998298771806

namespace A315070

/-- `A004396(A312562(n))+2*n` -/
def P10975070998298771806.Spec : Prop :=
  ∀ n, P10975070998298771806.a n = A315070 n

end A315070

/-! ## A315070.P4261019348380938803

`A005843(n)+A004396(A312562(n))`
-/

namespace A315070.P4261019348380938803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312562 n).toNat

end

end A315070.P4261019348380938803

namespace A315070

/-- `A005843(n)+A004396(A312562(n))` -/
def P4261019348380938803.Spec : Prop :=
  ∀ n, P4261019348380938803.a n = A315070 n

end A315070

/-! ## A315070.P18001393724841430461

`A008585(n)-(n-A004396(A312163(n)))`
-/

namespace A315070.P18001393724841430461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A312163 n).toNat)

end

end A315070.P18001393724841430461

namespace A315070

/-- `A008585(n)-(n-A004396(A312163(n)))` -/
def P18001393724841430461.Spec : Prop :=
  ∀ n, P18001393724841430461.a n = A315070 n

theorem P18001393724841430461.correct : P18001393724841430461.Spec := by
  intro n
  simp only [A315070, Nat.add_sub_cancel, A315070.P18001393724841430461.a, A315070.P1003336142198801993.a, A004396, A004396.P17032557045289780609.a, A008585, A008585.P13732812384316341435.a, A312163, A312163.P10738351713839419242.a, A310455, A310455.P786279696323869961.a, A313118, A313118.P9114111145320884075.f1, A313118.P9114111145320884075.a, A011864, A011864.P3547417513882699266.a, A310413, A310413.P8448103510463690505.a, A310496, A310496.P10218133312535367939.a, A312976, A312976.P18215844327102758922.a, A008592, A008592.P4981059802862696142.a, A011582, A011582.P16106722350450749318.a, A312935, A312935.P2491328857394467792.a, A315034, A315034.P9202512944006640459.f1, A315034.P9202512944006640459.a, A315307, A315307.P8009587205543921801.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315070

/-! ## A315070.P12131197774221013821

`A004396(A312163(n)+A008486(n))`
-/

namespace A315070.P12131197774221013821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312163 n + A008486 n).toNat

end

end A315070.P12131197774221013821

namespace A315070

/-- `A004396(A312163(n)+A008486(n))` -/
def P12131197774221013821.Spec : Prop :=
  ∀ n, P12131197774221013821.a n = A315070 n

end A315070

/-! ## A315070.P8455998815456792495

`A004396(A312163(n)+A008585(n))`
-/

namespace A315070.P8455998815456792495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312163 n + A008585 n).toNat

end

end A315070.P8455998815456792495

namespace A315070

/-- `A004396(A312163(n)+A008585(n))` -/
def P8455998815456792495.Spec : Prop :=
  ∀ n, P8455998815456792495.a n = A315070 n

end A315070

/-! ## A315070.P12225555359741060683

`A004396(A312562(n)+A008486(n))`
-/

namespace A315070.P12225555359741060683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312562 n + A008486 n).toNat

end

end A315070.P12225555359741060683

namespace A315070

/-- `A004396(A312562(n)+A008486(n))` -/
def P12225555359741060683.Spec : Prop :=
  ∀ n, P12225555359741060683.a n = A315070 n

end A315070

/-! ## A315070.P18114229750027902411

`A004396(2*A313899(n))-2*n`
-/

namespace A315070.P18114229750027902411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A313899 n).toNat - (2 * n : ℤ)

end

end A315070.P18114229750027902411

namespace A315070

/-- `A004396(2*A313899(n))-2*n` -/
def P18114229750027902411.Spec : Prop :=
  ∀ n, P18114229750027902411.a n = A315070 n

end A315070

/-!
# A315071: Coordination sequence Gal.3.46.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315071, there is no canonical definition to state claims against.
-/

/-! ## A315071.P10544572319625399347

`A315925(n)-A130717(n)`
-/

namespace A315071.P10544572319625399347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n - A130717 n

end

end A315071.P10544572319625399347

/-! ## A315071.P1961898768631996737

`A315925(n)-Δ[A130507(n)]`
-/

namespace A315071.P1961898768631996737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n - (f1 (n + 1) - f1 n)

end

end A315071.P1961898768631996737

/-! ## A315071.P16912802901552429950

`A315925(n)-Δ[Δ[A130845(n)]]`
-/

namespace A315071.P16912802901552429950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n - (f1 (n + 1) - f1 n)

end

end A315071.P16912802901552429950

/-! ## A315071.P6302999113663675032

`A315925(n)-Δ[A131358(A057353(n))]`
-/

namespace A315071.P6302999113663675032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A057353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n - (f1 (n + 1) - f1 n)

end

end A315071.P6302999113663675032

/-! ## A315071.P13955249718791152129

`A315925(n)-Δ[A131358(A131742(n))]`
-/

namespace A315071.P13955249718791152129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A131742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n - (f1 (n + 1) - f1 n)

end

end A315071.P13955249718791152129

/-! ## A315071.P16045678219379551428

`A315925(n)-Δ[A131730(n*A021913(n))]`
-/

namespace A315071.P16045678219379551428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 ((n : ℤ) * A021913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n - (f1 (n + 1) - f1 n)

end

end A315071.P16045678219379551428

/-! ## A315071.P5975628922836523406

`A314154(n)+A315925(n)-A315346(n)`
-/

namespace A315071.P5975628922836523406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314154 n + (A315925 n - A315346 n)

end

end A315071.P5975628922836523406

/-! ## A315071.P15793550493749452533

`A315925(n)-Δ[A307012(A296805(n+1))]`
-/

namespace A315071.P15793550493749452533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A296805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n - (f1 (n + 1) - f1 n)

end

end A315071.P15793550493749452533

/-!
# A315072: Coordination sequence Gal.6.597.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315072, there is no canonical definition to state claims against.
-/

/-! ## A315072.P14793468240555487839

`A315071(n)+A185284(A047486(2*n+5))`
-/

namespace A315072.P14793468240555487839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + A185284 (A047486 (2 * n + 5)).toNat

end

end A315072.P14793468240555487839

/-! ## A315072.P15875030030803755614

`A315071(n)+A185284(A000124(n))`
-/

namespace A315072.P15875030030803755614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + A185284 (A000124 n).toNat

end

end A315072.P15875030030803755614

/-! ## A315072.P14765557112327354858

`A315071(n)+A102683(A101879(n))`
-/

namespace A315072.P14765557112327354858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + A102683 (A101879 n).toNat

end

end A315072.P14765557112327354858

/-! ## A315072.P15072124627848186519

`A358006(A024493(n))+A315071(n)`
-/

namespace A315072.P15072124627848186519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358006 ((A024493 n).toNat + 32) + A315071 n

end

end A315072.P15072124627848186519

/-! ## A315072.P1958803788698480848

`A315071(n)+A185284(A310627(n))`
-/

namespace A315072.P1958803788698480848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + A185284 (A310627 n).toNat

end

end A315072.P1958803788698480848

/-!
# A315073: Coordination sequence Gal.6.606.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315073, there is no canonical definition to state claims against.
-/

/-! ## A315073.P13984189867916737810

`A315071(n)+A185284(A310616(n))`
-/

namespace A315073.P13984189867916737810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + A185284 (A310616 n).toNat

end

end A315073.P13984189867916737810

/-! ## A315073.P17546638057025319106

`A315071(n)+A185284(A312297(n))`
-/

namespace A315073.P17546638057025319106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + A185284 (A312297 n).toNat

end

end A315073.P17546638057025319106

/-! ## A315073.P3758113306600867263

`A315072(n)+A185284(A312661(n))`
-/

namespace A315073.P3758113306600867263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315072 n + A185284 (A312661 n).toNat

end

end A315073.P3758113306600867263

/-! ## A315073.P2305931068150909086

`A315071(n)+A185284(A315864(n))`
-/

namespace A315073.P2305931068150909086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + A185284 (A315864 n).toNat

end

end A315073.P2305931068150909086

/-! ## A315073.P4184386985485048240

`A315071(n)+A185284(A310627(n)+2)`
-/

namespace A315073.P4184386985485048240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + A185284 (A310627 n + 2).toNat

end

end A315073.P4184386985485048240

/-!
# A315074: Coordination sequence Gal.3.45.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315074, there is no canonical definition to state claims against.
-/

/-! ## A315074.P12139153349041027229

`A312663(n)+A305633(A007504(n))`
-/

namespace A315074.P12139153349041027229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312663 n + A305633 (A007504 n).toNat

end

end A315074.P12139153349041027229

/-! ## A315074.P14784426042447567216

`or(A001222(A151096(n)), A313005(n))`
-/

namespace A315074.P14784426042447567216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A151096 n).toNat) (A313005 n)

end

end A315074.P14784426042447567216

/-! ## A315074.P2024853103823837603

`or(A001222(A151096(n)), A313133(n))`
-/

namespace A315074.P2024853103823837603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A151096 n).toNat) (A313133 n)

end

end A315074.P2024853103823837603

/-! ## A315074.P14721679036793465285

`A314929(n)+A002265(A032555(n+1))`
-/

namespace A315074.P14721679036793465285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314929 n + A002265 (A032555 (n + 1)).toNat

end

end A315074.P14721679036793465285

/-!
# A315075: Coordination sequence Gal.6.350.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315075, the canonical program `A315075.P1562562431964152742` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315075 has offset 0).

The definition of A315075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315075.P1562562431964152742

`A312065(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315075

/-- `A312065(n)+A004396(n)` -/
def P1562562431964152742.Spec : Prop :=
  ∀ n, P1562562431964152742.a n = A315075 n

theorem P1562562431964152742.correct : P1562562431964152742.Spec := by
  intro n
  simp only [A315075]

end A315075

/-! ## A315075.P13585967116394616698

`A313280(n)+A134667(n)`
-/

namespace A315075.P13585967116394616698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313280 n + A134667 n

end

end A315075.P13585967116394616698

namespace A315075

/-- `A313280(n)+A134667(n)` -/
def P13585967116394616698.Spec : Prop :=
  ∀ n, P13585967116394616698.a n = A315075 n

end A315075

/-! ## A315075.P4371420038284825292

`A008706(n)-∑[A131736(n)]`
-/

namespace A315075.P4371420038284825292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315075.P4371420038284825292

namespace A315075

/-- `A008706(n)-∑[A131736(n)]` -/
def P4371420038284825292.Spec : Prop :=
  ∀ n, P4371420038284825292.a n = A315075 n

end A315075

/-! ## A315075.P208127606013203295

`A134667(n+3)+A008706(n)`
-/

namespace A315075.P208127606013203295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (n + 3) + A008706 n

end

end A315075.P208127606013203295

namespace A315075

/-- `A134667(n+3)+A008706(n)` -/
def P208127606013203295.Spec : Prop :=
  ∀ n, P208127606013203295.a n = A315075 n

end A315075

/-! ## A315075.P12957852363303184089

`A312065(n)+A002264(2*n+1)`
-/

namespace A315075.P12957852363303184089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A002264 (2 * n + 1)

end

end A315075.P12957852363303184089

namespace A315075

/-- `A312065(n)+A002264(2*n+1)` -/
def P12957852363303184089.Spec : Prop :=
  ∀ n, P12957852363303184089.a n = A315075 n

theorem P12957852363303184089.correct : P12957852363303184089.Spec := by
  intro n
  simp only [A315075, Nat.add_sub_cancel, A315075.P12957852363303184089.a, A315075.P1562562431964152742.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A312065, A312065.P12266081500591104946.a, A008486, A008486.P11623131867527198563.a, A047513, A047513.P11792871085229594459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315075

/-! ## A315075.P9725254615501719974

`A313110(n)+A008612(2*n+1)`
-/

namespace A315075.P9725254615501719974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + A008612 (2 * n + 1)

end

end A315075.P9725254615501719974

namespace A315075

/-- `A313110(n)+A008612(2*n+1)` -/
def P9725254615501719974.Spec : Prop :=
  ∀ n, P9725254615501719974.a n = A315075 n

end A315075

/-! ## A315075.P9345534454993920352

`2*n+A312065(n)-A042965(n+1)`
-/

namespace A315075.P9345534454993920352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A312065 n - A042965 (n + 1))

end

end A315075.P9345534454993920352

namespace A315075

/-- `2*n+A312065(n)-A042965(n+1)` -/
def P9345534454993920352.Spec : Prop :=
  ∀ n, P9345534454993920352.a n = A315075 n

end A315075

/-! ## A315075.P1481373168006769136

`floor(2/acot(3*n))-A004525(A064429(2*n))`
-/

namespace A315075.P1481373168006769136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ - A004525 (A064429 (2 * n)).toNat

end

end A315075.P1481373168006769136

namespace A315075

/-- `floor(2/acot(3*n))-A004525(A064429(2*n))` -/
def P1481373168006769136.Spec : Prop :=
  ∀ n, P1481373168006769136.a n = A315075 n

end A315075

/-! ## A315075.P5533355615322865771

`A312909(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A315075.P5533355615322865771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ))

end

end A315075.P5533355615322865771

namespace A315075

/-- `A312909(2*n)+A008574(n+1)-(8*n+4)` -/
def P5533355615322865771.Spec : Prop :=
  ∀ n, P5533355615322865771.a n = A315075 n

end A315075

/-! ## A315075.P3154268510891635375

`A008706(n)-A128834(n-A128834(n))`
-/

namespace A315075.P3154268510891635375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A128834 ((n : ℤ) - A128834 n).toNat

end

end A315075.P3154268510891635375

namespace A315075

/-- `A008706(n)-A128834(n-A128834(n))` -/
def P3154268510891635375.Spec : Prop :=
  ∀ n, P3154268510891635375.a n = A315075 n

end A315075

/-! ## A315075.P3712063908711371261

`A310461(n)+A102283(n)`
-/

namespace A315075.P3712063908711371261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310461 n + A102283 n

end

end A315075.P3712063908711371261

namespace A315075

/-- `A310461(n)+A102283(n)` -/
def P3712063908711371261.Spec : Prop :=
  ∀ n, P3712063908711371261.a n = A315075 n

end A315075

/-! ## A315075.P2242070024568006686

`A310461(n)+A128834(2*n)`
-/

namespace A315075.P2242070024568006686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310461 n + A128834 (2 * n)

end

end A315075.P2242070024568006686

namespace A315075

/-- `A310461(n)+A128834(2*n)` -/
def P2242070024568006686.Spec : Prop :=
  ∀ n, P2242070024568006686.a n = A315075 n

end A315075

/-! ## A315075.P12939706044927157733

`A315257(n)-A128834(n)`
-/

namespace A315075.P12939706044927157733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315257 n - A128834 n

end

end A315075.P12939706044927157733

namespace A315075

/-- `A315257(n)-A128834(n)` -/
def P12939706044927157733.Spec : Prop :=
  ∀ n, P12939706044927157733.a n = A315075 n

end A315075

/-! ## A315075.P10916992329300169389

`A008458(n)+A008574(n)-A314015(n)`
-/

namespace A315075.P10916992329300169389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A314015 n)

end

end A315075.P10916992329300169389

namespace A315075

/-- `A008458(n)+A008574(n)-A314015(n)` -/
def P10916992329300169389.Spec : Prop :=
  ∀ n, P10916992329300169389.a n = A315075 n

end A315075

/-! ## A315075.P12027273716490476191

`A301697(n)-∑[A022003(n)]`
-/

namespace A315075.P12027273716490476191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315075.P12027273716490476191

namespace A315075

/-- `A301697(n)-∑[A022003(n)]` -/
def P12027273716490476191.Spec : Prop :=
  ∀ n, P12027273716490476191.a n = A315075 n

end A315075

/-! ## A315075.P12624970292565449975

`A301697(n)-Δ[A130518(n)]`
-/

namespace A315075.P12624970292565449975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - (f1 (n + 1) - f1 n)

end

end A315075.P12624970292565449975

namespace A315075

/-- `A301697(n)-Δ[A130518(n)]` -/
def P12624970292565449975.Spec : Prop :=
  ∀ n, P12624970292565449975.a n = A315075 n

end A315075

/-! ## A315075.P312934122359525084

`A301697(n)-A002264(n+1)`
-/

namespace A315075.P312934122359525084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A002264 (n + 1)

end

end A315075.P312934122359525084

namespace A315075

/-- `A301697(n)-A002264(n+1)` -/
def P312934122359525084.Spec : Prop :=
  ∀ n, P312934122359525084.a n = A315075 n

end A315075

/-! ## A315075.P5171315267321930596

`A301697(n)+1-A086161(n)`
-/

namespace A315075.P5171315267321930596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + (1 - A086161 n)

end

end A315075.P5171315267321930596

namespace A315075

/-- `A301697(n)+1-A086161(n)` -/
def P5171315267321930596.Spec : Prop :=
  ∀ n, P5171315267321930596.a n = A315075 n

end A315075

/-! ## A315075.P9273974780220755658

`A004396(n)+A301697(n)-n`
-/

namespace A315075.P9273974780220755658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A301697 n - (n : ℤ))

end

end A315075.P9273974780220755658

namespace A315075

/-- `A004396(n)+A301697(n)-n` -/
def P9273974780220755658.Spec : Prop :=
  ∀ n, P9273974780220755658.a n = A315075 n

end A315075

/-! ## A315075.P2986936225601632795

`A315405(n)-A186809(n)`
-/

namespace A315075.P2986936225601632795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315405 n - A186809 n

end

end A315075.P2986936225601632795

namespace A315075

/-- `A315405(n)-A186809(n)` -/
def P2986936225601632795.Spec : Prop :=
  ∀ n, P2986936225601632795.a n = A315075 n

end A315075

/-!
# A315076: Coordination sequence Gal.4.79.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315076, there is no canonical definition to state claims against.
-/

/-! ## A315076.P11222184503262996193

`A313909(n)-A001221(A091582(n+1))`
-/

namespace A315076.P11222184503262996193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313909 n - A001221 (A091582 (n + 1)).toNat

end

end A315076.P11222184503262996193

/-! ## A315076.P17816982775359275935

`or(A005614(A185544(n)), A315053(n))`
-/

namespace A315076.P17816982775359275935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005614 (A185544 n).toNat) (A315053 n)

end

end A315076.P17816982775359275935

/-! ## A315076.P6889745876559196879

`or(A071028(A057829(n+1)), A315053(n))`
-/

namespace A315076.P6889745876559196879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071028 (A057829 (n + 1)).toNat) (A315053 n)

end

end A315076.P6889745876559196879

/-! ## A315076.P7199371588139370175

`or(A010060(A006980(n+6)), A315053(n))`
-/

namespace A315076.P7199371588139370175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A006980 (n + 6)).toNat) (A315053 n)

end

end A315076.P7199371588139370175

/-! ## A315076.P7787108364976097656

`or(A001511(A065942(n)), A315053(n))`
-/

namespace A315076.P7787108364976097656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001511 (A065942 n).toNat) (A315053 n)

end

end A315076.P7787108364976097656

/-!
# A315077: Coordination sequence Gal.6.463.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315077, there is no canonical definition to state claims against.
-/

/-! ## A315077.P13952271159835396372

`A315056(n)+A082858(A062724(n))`
-/

namespace A315077.P13952271159835396372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315056 n + A082858 (A062724 n).toNat

end

end A315077.P13952271159835396372

/-! ## A315077.P13992534798146914821

`A313872(n)-A330025(A178704(n))`
-/

namespace A315077.P13992534798146914821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - A330025 (A178704 n).toNat

end

end A315077.P13992534798146914821

/-! ## A315077.P9171104347441890823

`A316826(A003398(n+1))+A313125(n)`
-/

namespace A315077.P9171104347441890823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A003398 (n + 1)).toNat + A313125 n

end

end A315077.P9171104347441890823

/-! ## A315077.P3551135327905794050

`A350723(A123125(3*n+2))+A315075(n)`
-/

namespace A315077.P3551135327905794050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350723 (A123125 (3 * n + 2)).toNat + A315075 n

end

end A315077.P3551135327905794050

/-! ## A315077.P2369372093368178483

`A301697(n)-A162642(A002854(n+1))`
-/

namespace A315077.P2369372093368178483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A162642 (A002854 (n + 1)).toNat

end

end A315077.P2369372093368178483

/-!
# A315078: Coordination sequence Gal.6.362.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315078, there is no canonical definition to state claims against.
-/

/-! ## A315078.P2065404186062078860

`or(A103754(A311375(n)), A314972(n))`
-/

namespace A315078.P2065404186062078860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103754 (A311375 n).toNat) (A314972 n)

end

end A315078.P2065404186062078860

/-! ## A315078.P14243250762109340549

`or(A004641(A189590(n+1)), A314972(n))`
-/

namespace A315078.P14243250762109340549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004641 (A189590 (n + 1)).toNat) (A314972 n)

end

end A315078.P14243250762109340549

/-! ## A315078.P6550366566591365444

`or(A177704(A145546(n+1)), A314972(n))`
-/

namespace A315078.P6550366566591365444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A177704 (A145546 (n + 1)).toNat) (A314972 n)

end

end A315078.P6550366566591365444

/-! ## A315078.P15382734689845113036

`or(A285972(A292623(n+1)), A314972(n))`
-/

namespace A315078.P15382734689845113036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285972 (A292623 (n + 1)).toNat) (A314972 n)

end

end A315078.P15382734689845113036

/-! ## A315078.P15532666703741381966

`or(A039966(A075180(n)), A314972(n))`
-/

namespace A315078.P15532666703741381966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039966 (A075180 n).toNat) (A314972 n)

end

end A315078.P15532666703741381966

/-!
# A315079: Coordination sequence Gal.5.314.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315079, there is no canonical definition to state claims against.
-/

/-! ## A315079.P9208957492377945518

`A250120(n)+A225486(A048736(n))`
-/

namespace A315079.P9208957492377945518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A225486 (A048736 n).toNat

end

end A315079.P9208957492377945518

/-! ## A315079.P9495775536832968462

`A366388(A357962(n))+A250120(n)`
-/

namespace A315079.P9495775536832968462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A357962 n).toNat + A250120 n

end

end A315079.P9495775536832968462

/-! ## A315079.P16412059631582704706

`or(A000002(A274598(n)), A312684(n))`
-/

namespace A315079.P16412059631582704706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000002 (A274598 n).toNat) (A312684 n)

end

end A315079.P16412059631582704706

/-! ## A315079.P210457067812726186

`or(A000002(A274598(n)), A313155(n))`
-/

namespace A315079.P210457067812726186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000002 (A274598 n).toNat) (A313155 n)

end

end A315079.P210457067812726186

/-! ## A315079.P15470774627772490539

`A315344(n)-A322306(A339112(n+1))`
-/

namespace A315079.P15470774627772490539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315344 n - A322306 (A339112 (n + 1)).toNat

end

end A315079.P15470774627772490539

/-!
# A315080: Coordination sequence Gal.6.596.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315080, there is no canonical definition to state claims against.
-/

/-! ## A315080.P8899869493469224510

`or(A006519(A148556(n)), A314777(n))`
-/

namespace A315080.P8899869493469224510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006519 (A148556 n).toNat) (A314777 n)

end

end A315080.P8899869493469224510

/-! ## A315080.P15638089190297747530

`or(A001221(4^n+1-2*n), A312650(n))`
-/

namespace A315080.P15638089190297747530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 ((4 ^ n : ℤ) + (1 - (2 * n : ℤ))).toNat) (A312650 n)

end

end A315080.P15638089190297747530

/-! ## A315080.P11620452173408692242

`or(A003557(A130223(n)), A313063(n))`
-/

namespace A315080.P11620452173408692242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003557 (A130223 n).toNat) (A313063 n)

end

end A315080.P11620452173408692242

/-! ## A315080.P14624502977914490456

`or(A138904(A081150(n)), A313226(n))`
-/

namespace A315080.P14624502977914490456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A138904 (A081150 n).toNat) (A313226 n)

end

end A315080.P14624502977914490456

/-!
# A315082: Coordination sequence Gal.6.608.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315082, there is no canonical definition to state claims against.
-/

/-! ## A315082.P10048496135950143113

`xor(A185284(A310099(n)), A315083(n))`
-/

namespace A315082.P10048496135950143113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A310099 n).toNat) (A315083 n)

end

end A315082.P10048496135950143113

/-! ## A315082.P12330123010218567422

`A315083(A087051(n))`
-/

namespace A315082.P12330123010218567422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315083 (A087051 n).toNat

end

end A315082.P12330123010218567422

/-! ## A315082.P2168885987981105167

`A315083(A227549(n+1))`
-/

namespace A315082.P2168885987981105167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315083 (A227549 (n + 1)).toNat

end

end A315082.P2168885987981105167

/-! ## A315082.P8566102124704682938

`A315083(A396204(n+1))`
-/

namespace A315082.P8566102124704682938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315083 (A396204 (n + 1)).toNat

end

end A315082.P8566102124704682938

/-! ## A315082.P16553642651454878594

`A315083(n)+A010891(A005248(n))`
-/

namespace A315082.P16553642651454878594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315083 n + A010891 (A005248 n).toNat

end

end A315082.P16553642651454878594

/-!
# A315083: Coordination sequence Gal.6.607.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315083, there is no canonical definition to state claims against.
-/

/-! ## A315083.P13788707791527658652

`xor(A178798(A068921(n)), A315082(n))`
-/

namespace A315083.P13788707791527658652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178798 (A068921 n).toNat) (A315082 n)

end

end A315083.P13788707791527658652

/-! ## A315083.P17359219650655442799

`xor(A185284(A310099(n)), A315082(n))`
-/

namespace A315083.P17359219650655442799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A310099 n).toNat) (A315082 n)

end

end A315083.P17359219650655442799

/-! ## A315083.P10005506220576722185

`A315082(n)+A178798(A345394(n))`
-/

namespace A315083.P10005506220576722185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315082 n + A178798 (A345394 n).toNat

end

end A315083.P10005506220576722185

/-! ## A315083.P11191152041767991682

`or(A000007(A048463(n)), A315082(n))`
-/

namespace A315083.P11191152041767991682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A048463 n).toNat) (A315082 n)

end

end A315083.P11191152041767991682

/-! ## A315083.P5174236056545252812

`or(A315082(n), A347519(A315073(2*n+1)))`
-/

namespace A315083.P5174236056545252812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A315082 n) (A347519 (A315073 (2 * n + 1)).toNat)

end

end A315083.P5174236056545252812

/-!
# A315084: Coordination sequence Gal.6.548.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315084, there is no canonical definition to state claims against.
-/

/-! ## A315084.P5544049589789147816

`eq[Δ[A027358(n+1)], A322885(n+1)]`
-/

namespace A315084.P5544049589789147816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A315084.P5544049589789147816

/-! ## A315084.P3429498559999542433

`eq[Δ[A027358(n+1)], A351219(n+1)]`
-/

namespace A315084.P3429498559999542433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A315084.P3429498559999542433

/-! ## A315084.P553207701235367936

`eq[Δ[A027358(n+1)], A238877(2*n+1)]`
-/

namespace A315084.P553207701235367936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A315084.P553207701235367936

/-! ## A315084.P12163082796554908420

`A311735(n)+A001222(A083324(n))`
-/

namespace A315084.P12163082796554908420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311735 n + A001222 (A083324 n).toNat

end

end A315084.P12163082796554908420

/-!
# A315085: Coordination sequence Gal.6.572.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315085, there is no canonical definition to state claims against.
-/

/-! ## A315085.P2200177556157372740

`A313942(n)-A001221(A350451(n))`
-/

namespace A315085.P2200177556157372740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313942 n - A001221 (A350451 n).toNat

end

end A315085.P2200177556157372740

/-!
# A315086: Coordination sequence Gal.6.567.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315086, there is no canonical definition to state claims against.
-/

/-! ## A315086.P2239741574153214381

`A314995(n)+A264442(A030186(n))`
-/

namespace A315086.P2239741574153214381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314995 n + A264442 (A030186 n).toNat

end

end A315086.P2239741574153214381

/-! ## A315086.P11537476443441845234

`A365876(A002144(n+1))-A000122(n)`
-/

namespace A315086.P11537476443441845234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365876 (A002144 (n + 1)).toNat - A000122 n

end

end A315086.P11537476443441845234

/-!
# A315087: Coordination sequence Gal.6.542.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315087, there is no canonical definition to state claims against.
-/

/-! ## A315087.P10302721824291905242

`A313321(n)+A014108(A000244(n))`
-/

namespace A315087.P10302721824291905242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n + A014108 (A000244 n).toNat

end

end A315087.P10302721824291905242

/-! ## A315087.P17342409122937836256

`A008574(n)+A007400(A357832(n))`
-/

namespace A315087.P17342409122937836256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A007400 (A357832 n).toNat

end

end A315087.P17342409122937836256

/-! ## A315087.P6065021796377477216

`A299202(A004148(n))+A250120(n)`
-/

namespace A315087.P6065021796377477216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299202 (A004148 n).toNat + A250120 n

end

end A315087.P6065021796377477216

/-! ## A315087.P12226414553007425999

`A250120(n)+A011582(A301272(n))`
-/

namespace A315087.P12226414553007425999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A011582 (A301272 n).toNat

end

end A315087.P12226414553007425999

/-! ## A315087.P4918827939089388496

`A315685(n)-A001222(A150818(n))`
-/

namespace A315087.P4918827939089388496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - A001222 (A150818 n).toNat

end

end A315087.P4918827939089388496

/-!
# A315088: Coordination sequence Gal.6.573.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315088, there is no canonical definition to state claims against.
-/

/-! ## A315088.P15131191535942113387

`A314095(n)-A275851(A034739(n+1))`
-/

namespace A315088.P15131191535942113387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314095 n - A275851 (A034739 (n + 1)).toNat

end

end A315088.P15131191535942113387

/-! ## A315088.P7471527394704241371

`A312388(n)+A001222(A001075(n))`
-/

namespace A315088.P7471527394704241371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312388 n + A001222 (A001075 n).toNat

end

end A315088.P7471527394704241371

/-! ## A315088.P14574035239622835330

`A315016(n)+A134404(A022086(n))`
-/

namespace A315088.P14574035239622835330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315016 n + A134404 (A022086 n).toNat

end

end A315088.P14574035239622835330

/-! ## A315088.P5107599333915430442

`A315016(n)+A134404(A034008(n))`
-/

namespace A315088.P5107599333915430442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315016 n + A134404 (A034008 n).toNat

end

end A315088.P5107599333915430442

/-! ## A315088.P10339880195410863438

`A315248(n)-A157658(A055798(n))`
-/

namespace A315088.P10339880195410863438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315248 n - A157658 (A055798 n).toNat

end

end A315088.P10339880195410863438

/-!
# A315089: Coordination sequence Gal.5.282.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315089, there is no canonical definition to state claims against.
-/

/-! ## A315089.P7256736240353687968

`A315095(n)+A088663(A324767(n+1))`
-/

namespace A315089.P7256736240353687968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315095 n + A088663 (A324767 (n + 1)).toNat

end

end A315089.P7256736240353687968

/-! ## A315089.P4334463286063678356

`A315095(n)-A206499(A315095(2*n+1))`
-/

namespace A315089.P4334463286063678356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315095 n - A206499 (A315095 (2 * n + 1)).toNat

end

end A315089.P4334463286063678356

/-! ## A315089.P12779893175426966375

`A330025(A029571(n))+A315095(n)`
-/

namespace A315089.P12779893175426966375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A029571 n).toNat + A315095 n

end

end A315089.P12779893175426966375

/-! ## A315089.P6311824840080042725

`A315095(n)-A022003(A246070(n))`
-/

namespace A315089.P6311824840080042725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315095 n - A022003 (A246070 n).toNat

end

end A315089.P6311824840080042725

/-! ## A315089.P17426779181546156840

`A315095(n)-A010051(A055990(n+1))`
-/

namespace A315089.P17426779181546156840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315095 n - A010051 (A055990 (n + 1)).toNat

end

end A315089.P17426779181546156840

/-!
# A315090: Coordination sequence Gal.6.600.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315090, there is no canonical definition to state claims against.
-/

/-! ## A315090.P14552312206397359897

`∑[dr(A126129(A271289(n)))]`
-/

namespace A315090.P14552312206397359897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A126129 (A271289 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315090.P14552312206397359897

/-! ## A315090.P1739821787552500545

`A001964(n)-A001222(floor(22*4^(n+1)/63))`
-/

namespace A315090.P1739821787552500545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001964 n - A001222 ⌊22 * ((4 ^ (n + 1) : ℚ) / 63)⌋.toNat

end

end A315090.P1739821787552500545

/-! ## A315090.P2132822654104320803

`A250120(n)-A129407(A247661(n))`
-/

namespace A315090.P2132822654104320803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A129407 (A247661 n).toNat

end

end A315090.P2132822654104320803

/-! ## A315090.P15225587085325941620

`A343630(A201356(n+1))+A250120(n)`
-/

namespace A315090.P15225587085325941620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343630 (A201356 (n + 1)).toNat + A250120 n

end

end A315090.P15225587085325941620

/-! ## A315090.P13603142999058055189

`A336361(A344136(n+1))+A301301(n)`
-/

namespace A315090.P13603142999058055189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336361 (A344136 (n + 1)).toNat + A301301 n

end

end A315090.P13603142999058055189

/-!
# A315092: Coordination sequence Gal.4.127.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315092, there is no canonical definition to state claims against.
-/

/-! ## A315092.P2034016637774988183

`A298792(2*n)-n`
-/

namespace A315092.P2034016637774988183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298792 (2 * n) - (n : ℤ)

end

end A315092.P2034016637774988183

/-! ## A315092.P15339527637096201816

`abs(A298792(record[and(n, n+1)])-n)`
-/

namespace A315092.P15339527637096201816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A298792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - (n : ℤ)|

end

end A315092.P15339527637096201816

/-! ## A315092.P7399021707713372577

`A000027(A298792(record[and(n, n+1)])-n)`
-/

namespace A315092.P7399021707713372577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A298792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - (n : ℤ)).toNat

end

end A315092.P7399021707713372577

/-! ## A315092.P12352901986982807864

`A313705(n)-A244895(n-A244895(n))`
-/

namespace A315092.P12352901986982807864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313705 n - A244895 ((n : ℤ) - A244895 n).toNat

end

end A315092.P12352901986982807864

/-! ## A315092.P794329077532919167

`A028310(A298792(record[and(n, n+1)])-n)`
-/

namespace A315092.P794329077532919167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A298792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - (n : ℤ)).toNat

end

end A315092.P794329077532919167

/-! ## A315092.P15240064494875027305

`A023443(A298792(record[and(n, n+1)])-(n-1))`
-/

namespace A315092.P15240064494875027305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A298792 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - ((n : ℤ) - 1)).toNat

end

end A315092.P15240064494875027305

/-!
# A315093: Coordination sequence Gal.6.605.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315093, there is no canonical definition to state claims against.
-/

/-! ## A315093.P10163227836906267147

`A314849(n)+A056974(A096946(n))`
-/

namespace A315093.P10163227836906267147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314849 n + A056974 (A096946 n).toNat

end

end A315093.P10163227836906267147

/-! ## A315093.P9095888310792616916

`A312086(n)+A255123(A003422(n))`
-/

namespace A315093.P9095888310792616916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312086 n + A255123 (A003422 n).toNat

end

end A315093.P9095888310792616916

/-! ## A315093.P2725918715631105755

`A280814(or(A022144(n), A138364(n)))`
-/

namespace A315093.P2725918715631105755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (Int.lor (A022144 n) (A138364 n)).toNat

end

end A315093.P2725918715631105755

/-! ## A315093.P15500030167676016267

`A312295(n)+A001222(A093468(n+1))`
-/

namespace A315093.P15500030167676016267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312295 n + A001222 (A093468 (n + 1)).toNat

end

end A315093.P15500030167676016267

/-! ## A315093.P17844898583759262616

`A008587(n)-A137867(A221035(n+3))`
-/

namespace A315093.P17844898583759262616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A137867 (A221035 (n + 3)).toNat

end

end A315093.P17844898583759262616

/-!
# A315094: Coordination sequence Gal.4.126.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315094, there is no canonical definition to state claims against.
-/

/-! ## A315094.P2181031210672581804

`A313709(n)-A244895(n-A244895(n))`
-/

namespace A315094.P2181031210672581804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n - A244895 ((n : ℤ) - A244895 n).toNat

end

end A315094.P2181031210672581804

/-! ## A315094.P8782174186022576233

`A313709(n)+A102283(∑[A313709(3*(n+1))])`
-/

namespace A315094.P8782174186022576233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n + A102283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A315094.P8782174186022576233

/-! ## A315094.P3616441048157138323

`A315092(n)+A037805(A000079(n))`
-/

namespace A315094.P3616441048157138323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315092 n + A037805 (A000079 n).toNat

end

end A315094.P3616441048157138323

/-! ## A315094.P9496183664587957877

`A313334(n)-A244895(A035328(n))`
-/

namespace A315094.P9496183664587957877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313334 n - A244895 (A035328 n).toNat

end

end A315094.P9496183664587957877

/-! ## A315094.P16141515442474849012

`A250120(n)+A064692(A293745(n))`
-/

namespace A315094.P16141515442474849012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A064692 (A293745 n).toNat

end

end A315094.P16141515442474849012

/-!
# A315095: Coordination sequence Gal.6.586.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315095, there is no canonical definition to state claims against.
-/

/-! ## A315095.P1912516174590128502

`A315059(n)+A238470(A000111(n))`
-/

namespace A315095.P1912516174590128502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315059 n + A238470 (A000111 n).toNat

end

end A315095.P1912516174590128502

/-! ## A315095.P18260507129766876736

`A250120(n)+A046660(A262496(n))`
-/

namespace A315095.P18260507129766876736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A046660 (A262496 n).toNat

end

end A315095.P18260507129766876736

/-! ## A315095.P15040859188645712707

`A333755(A256642(n))+A250120(n)`
-/

namespace A315095.P15040859188645712707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A256642 n).toNat + A250120 n

end

end A315095.P15040859188645712707

/-! ## A315095.P17545829095568850300

`A358379(A249163(n))+A250120(n)`
-/

namespace A315095.P17545829095568850300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358379 (A249163 n).toNat + A250120 n

end

end A315095.P17545829095568850300

/-! ## A315095.P208658947810562400

`or(A000035(A002523(n)), A315089(n))`
-/

namespace A315095.P208658947810562400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A002523 n).toNat) (A315089 n)

end

end A315095.P208658947810562400

/-!
# A315096: Coordination sequence Gal.6.594.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315096, there is no canonical definition to state claims against.
-/

/-! ## A315096.P15103017885476702170

`A291154(A291154(n+1))+A273724(n)`
-/

namespace A315096.P15103017885476702170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (A291154 (n + 1)).toNat + A273724 n

end

end A315096.P15103017885476702170

/-! ## A315096.P13229729089472585255

`A131912(n+1)-A001222(A131951(2*n))`
-/

namespace A315096.P13229729089472585255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131912 (n + 1) - A001222 (A131951 (2 * n)).toNat

end

end A315096.P13229729089472585255

/-!
# A315097: Coordination sequence Gal.6.603.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315097, there is no canonical definition to state claims against.
-/

/-! ## A315097.P6994471831537780881

`A315098(n)-A295662(A302287(n))`
-/

namespace A315097.P6994471831537780881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315098 n - A295662 (A302287 n).toNat

end

end A315097.P6994471831537780881

/-! ## A315097.P16312213419684550109

`A315098(A087051(n))`
-/

namespace A315097.P16312213419684550109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315098 (A087051 n).toNat

end

end A315097.P16312213419684550109

/-! ## A315097.P17292522325484220513

`A315098(A227549(n+1))`
-/

namespace A315097.P17292522325484220513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315098 (A227549 (n + 1)).toNat

end

end A315097.P17292522325484220513

/-! ## A315097.P4420765647790636414

`A315098(A396204(n+1))`
-/

namespace A315097.P4420765647790636414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315098 (A396204 (n + 1)).toNat

end

end A315097.P4420765647790636414

/-! ## A315097.P18260462439477099020

`or(A226474(A075927(n)), A315098(n))`
-/

namespace A315097.P18260462439477099020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A226474 (A075927 n).toNat) (A315098 n)

end

end A315097.P18260462439477099020

/-!
# A315098: Coordination sequence Gal.6.602.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315098, there is no canonical definition to state claims against.
-/

/-! ## A315098.P3574252030873466821

`A315097(n)+A185284(A310685(n))`
-/

namespace A315098.P3574252030873466821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315097 n + A185284 (A310685 n).toNat

end

end A315098.P3574252030873466821

/-! ## A315098.P14219875963977821654

`A315097(n)+A295662(A302287(n))`
-/

namespace A315098.P14219875963977821654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315097 n + A295662 (A302287 n).toNat

end

end A315098.P14219875963977821654

/-! ## A315098.P131564298765113913

`A315097(n)+A185284(A065091(n+1))`
-/

namespace A315098.P131564298765113913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315097 n + A185284 (A065091 (n + 1)).toNat

end

end A315098.P131564298765113913

/-! ## A315098.P16229876521534052669

`A315097(n)+A185284(A231302(n+1))`
-/

namespace A315098.P16229876521534052669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315097 n + A185284 (A231302 (n + 1)).toNat

end

end A315098.P16229876521534052669

/-!
# A315099: Coordination sequence Gal.5.281.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315099, there is no canonical definition to state claims against.
-/

/-! ## A315099.P475035147432323004

`A314999(n)+A141070(A055858(n))`
-/

namespace A315099.P475035147432323004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314999 n + A141070 (A055858 n).toNat

end

end A315099.P475035147432323004

/-! ## A315099.P15997606309443183598

`A010402(∑[p?[A035191(n+1)]])`
-/

namespace A315099.P15997606309443183598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010402 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A315099.P15997606309443183598

/-! ## A315099.P2084798326888494822

`A010402(∑[p?[A322423(n+1)]])`
-/

namespace A315099.P2084798326888494822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322423 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010402 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A315099.P2084798326888494822

/-! ## A315099.P2277061540080225973

`A010402(A335522(2*n+3)+ceil(n/98))`
-/

namespace A315099.P2277061540080225973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010402 (A335522 (2 * n + 3) + ⌈(n : ℚ) / 98⌉).toNat

end

end A315099.P2277061540080225973

/-! ## A315099.P6328555926705573846

`A185868(n+1)+A029837(A083323(n))`
-/

namespace A315099.P6328555926705573846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185868 (n + 1) + A029837 (A083323 n).toNat

end

end A315099.P6328555926705573846

