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
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A022400: Fibonacci sequence beginning 1, 30.

The programs for A022400, the canonical program `A022400.P6465424376949074487` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022400 has offset 0).

The definition of A022400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022400.P6465424376949074487

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022400

/-- `a(n-1)+a(n-2)` -/
def P6465424376949074487.Spec : Prop :=
  ∀ n, (P6465424376949074487.a n : ℤ) = A022400 n

theorem P6465424376949074487.correct : P6465424376949074487.Spec := by
  intro n
  simp only [A022400]

end A022400

/-! ## A022400.P14135693645876234589

`A022399(n)+A000045(n)`
-/

namespace A022400.P14135693645876234589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022399 n + A000045 n

end

end A022400.P14135693645876234589

namespace A022400

/-- `A022399(n)+A000045(n)` -/
def P14135693645876234589.Spec : Prop :=
  ∀ n, P14135693645876234589.a n = A022400 n

end A022400

/-! ## A022400.P15975636700034248303

`A022360(n)+A000285(n)`
-/

namespace A022400.P15975636700034248303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022360 n + A000285 n

end

end A022400.P15975636700034248303

namespace A022400

/-- `A022360(n)+A000285(n)` -/
def P15975636700034248303.Spec : Prop :=
  ∀ n, P15975636700034248303.a n = A022400 n

end A022400

/-! ## A022400.P12030808992854300319

`A022110(n)+A022093(n)`
-/

namespace A022400.P12030808992854300319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022093 n

end

end A022400.P12030808992854300319

namespace A022400

/-- `A022110(n)+A022093(n)` -/
def P12030808992854300319.Spec : Prop :=
  ∀ n, P12030808992854300319.a n = A022400 n

end A022400

/-! ## A022400.P6477946890549793620

`A022345(n)+A022109(n)`
-/

namespace A022400.P6477946890549793620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022109 n

end

end A022400.P6477946890549793620

namespace A022400

/-- `A022345(n)+A022109(n)` -/
def P6477946890549793620.Spec : Prop :=
  ∀ n, P6477946890549793620.a n = A022400 n

end A022400

/-! ## A022400.P16746222212874662883

`A022346(n)+A022108(n)`
-/

namespace A022400.P16746222212874662883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022108 n

end

end A022400.P16746222212874662883

namespace A022400

/-- `A022346(n)+A022108(n)` -/
def P16746222212874662883.Spec : Prop :=
  ∀ n, P16746222212874662883.a n = A022400 n

end A022400

/-! ## A022400.P12269150432271263575

`A022347(n)+A022107(n)`
-/

namespace A022400.P12269150432271263575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022107 n

end

end A022400.P12269150432271263575

namespace A022400

/-- `A022347(n)+A022107(n)` -/
def P12269150432271263575.Spec : Prop :=
  ∀ n, P12269150432271263575.a n = A022400 n

end A022400

/-! ## A022400.P1384349189953347747

`A022348(n)+A022106(n)`
-/

namespace A022400.P1384349189953347747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022106 n

end

end A022400.P1384349189953347747

namespace A022400

/-- `A022348(n)+A022106(n)` -/
def P1384349189953347747.Spec : Prop :=
  ∀ n, P1384349189953347747.a n = A022400 n

end A022400

/-! ## A022400.P15479097785392007811

`A022349(n)+A022105(n)`
-/

namespace A022400.P15479097785392007811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022105 n

end

end A022400.P15479097785392007811

namespace A022400

/-- `A022349(n)+A022105(n)` -/
def P15479097785392007811.Spec : Prop :=
  ∀ n, P15479097785392007811.a n = A022400 n

end A022400

/-! ## A022400.P2052486377304806615

`A022350(n)+A022104(n)`
-/

namespace A022400.P2052486377304806615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022104 n

end

end A022400.P2052486377304806615

namespace A022400

/-- `A022350(n)+A022104(n)` -/
def P2052486377304806615.Spec : Prop :=
  ∀ n, P2052486377304806615.a n = A022400 n

end A022400

/-! ## A022400.P5691687882710183222

`A022351(n)+A022103(n)`
-/

namespace A022400.P5691687882710183222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022103 n

end

end A022400.P5691687882710183222

namespace A022400

/-- `A022351(n)+A022103(n)` -/
def P5691687882710183222.Spec : Prop :=
  ∀ n, P5691687882710183222.a n = A022400 n

end A022400

/-! ## A022400.P1154728679404775469

`A022352(n)+A022102(n)`
-/

namespace A022400.P1154728679404775469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022102 n

end

end A022400.P1154728679404775469

namespace A022400

/-- `A022352(n)+A022102(n)` -/
def P1154728679404775469.Spec : Prop :=
  ∀ n, P1154728679404775469.a n = A022400 n

end A022400

/-! ## A022400.P17607725091482587294

`A022353(n)+A022101(n)`
-/

namespace A022400.P17607725091482587294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022101 n

end

end A022400.P17607725091482587294

namespace A022400

/-- `A022353(n)+A022101(n)` -/
def P17607725091482587294.Spec : Prop :=
  ∀ n, P17607725091482587294.a n = A022400 n

end A022400

/-! ## A022400.P940492536033943988

`A022354(n)+A022100(n)`
-/

namespace A022400.P940492536033943988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022100 n

end

end A022400.P940492536033943988

namespace A022400

/-- `A022354(n)+A022100(n)` -/
def P940492536033943988.Spec : Prop :=
  ∀ n, P940492536033943988.a n = A022400 n

end A022400

/-! ## A022400.P3272893290376355304

`A022355(n)+A022099(n)`
-/

namespace A022400.P3272893290376355304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022099 n

end

end A022400.P3272893290376355304

namespace A022400

/-- `A022355(n)+A022099(n)` -/
def P3272893290376355304.Spec : Prop :=
  ∀ n, P3272893290376355304.a n = A022400 n

end A022400

/-! ## A022400.P9248231346734800559

`A022356(n)+A022098(n)`
-/

namespace A022400.P9248231346734800559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022098 n

end

end A022400.P9248231346734800559

namespace A022400

/-- `A022356(n)+A022098(n)` -/
def P9248231346734800559.Spec : Prop :=
  ∀ n, P9248231346734800559.a n = A022400 n

end A022400

/-! ## A022400.P375088917382899083

`A022357(n)+A022097(n)`
-/

namespace A022400.P375088917382899083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022097 n

end

end A022400.P375088917382899083

namespace A022400

/-- `A022357(n)+A022097(n)` -/
def P375088917382899083.Spec : Prop :=
  ∀ n, P375088917382899083.a n = A022400 n

end A022400

/-! ## A022400.P12277335635715904946

`A022358(n)+A022096(n)`
-/

namespace A022400.P12277335635715904946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022096 n

end

end A022400.P12277335635715904946

namespace A022400

/-- `A022358(n)+A022096(n)` -/
def P12277335635715904946.Spec : Prop :=
  ∀ n, P12277335635715904946.a n = A022400 n

end A022400

/-! ## A022400.P8696911701498291146

`A022359(n)+A022095(n)`
-/

namespace A022400.P8696911701498291146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A022095 n

end

end A022400.P8696911701498291146

namespace A022400

/-- `A022359(n)+A022095(n)` -/
def P8696911701498291146.Spec : Prop :=
  ∀ n, P8696911701498291146.a n = A022400 n

end A022400

/-! ## A022400.P6039513567523778831

`A022391(n)+A022092(n)`
-/

namespace A022400.P6039513567523778831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 n + A022092 n

end

end A022400.P6039513567523778831

namespace A022400

/-- `A022391(n)+A022092(n)` -/
def P6039513567523778831.Spec : Prop :=
  ∀ n, P6039513567523778831.a n = A022400 n

end A022400

/-!
# A022401: Fibonacci sequence beginning 1, 31.

The programs for A022401, the canonical program `A022401.P15490128363252553230` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022401 has offset 0).

The definition of A022401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022401.P15490128363252553230

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=31`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022401

/-- `a(n-1)+a(n-2)` -/
def P15490128363252553230.Spec : Prop :=
  ∀ n, (P15490128363252553230.a n : ℤ) = A022401 n

theorem P15490128363252553230.correct : P15490128363252553230.Spec := by
  intro n
  simp only [A022401]

end A022401

/-! ## A022401.P3159958892768982884

`A022400(n)+A000045(n)`
-/

namespace A022401.P3159958892768982884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022400 n + A000045 n

end

end A022401.P3159958892768982884

namespace A022401

/-- `A022400(n)+A000045(n)` -/
def P3159958892768982884.Spec : Prop :=
  ∀ n, P3159958892768982884.a n = A022401 n

end A022401

/-! ## A022401.P3188667434909567965

`A022361(n)+A000285(n)`
-/

namespace A022401.P3188667434909567965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n + A000285 n

end

end A022401.P3188667434909567965

namespace A022401

/-- `A022361(n)+A000285(n)` -/
def P3188667434909567965.Spec : Prop :=
  ∀ n, P3188667434909567965.a n = A022401 n

end A022401

/-! ## A022401.P16580653882176777672

`A022345(n)+A022110(n)`
-/

namespace A022401.P16580653882176777672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022110 n

end

end A022401.P16580653882176777672

namespace A022401

/-- `A022345(n)+A022110(n)` -/
def P16580653882176777672.Spec : Prop :=
  ∀ n, P16580653882176777672.a n = A022401 n

end A022401

/-! ## A022401.P14463347389535539198

`A022346(n)+A022109(n)`
-/

namespace A022401.P14463347389535539198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022109 n

end

end A022401.P14463347389535539198

namespace A022401

/-- `A022346(n)+A022109(n)` -/
def P14463347389535539198.Spec : Prop :=
  ∀ n, P14463347389535539198.a n = A022401 n

end A022401

/-! ## A022401.P14143979096699454929

`A022347(n)+A022108(n)`
-/

namespace A022401.P14143979096699454929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022108 n

end

end A022401.P14143979096699454929

namespace A022401

/-- `A022347(n)+A022108(n)` -/
def P14143979096699454929.Spec : Prop :=
  ∀ n, P14143979096699454929.a n = A022401 n

end A022401

/-! ## A022401.P14981344936771491378

`A022348(n)+A022107(n)`
-/

namespace A022401.P14981344936771491378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022107 n

end

end A022401.P14981344936771491378

namespace A022401

/-- `A022348(n)+A022107(n)` -/
def P14981344936771491378.Spec : Prop :=
  ∀ n, P14981344936771491378.a n = A022401 n

end A022401

/-! ## A022401.P9763914231131919128

`A022349(n)+A022106(n)`
-/

namespace A022401.P9763914231131919128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022106 n

end

end A022401.P9763914231131919128

namespace A022401

/-- `A022349(n)+A022106(n)` -/
def P9763914231131919128.Spec : Prop :=
  ∀ n, P9763914231131919128.a n = A022401 n

end A022401

/-! ## A022401.P4449101738752200142

`A022350(n)+A022105(n)`
-/

namespace A022401.P4449101738752200142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022105 n

end

end A022401.P4449101738752200142

namespace A022401

/-- `A022350(n)+A022105(n)` -/
def P4449101738752200142.Spec : Prop :=
  ∀ n, P4449101738752200142.a n = A022401 n

end A022401

/-! ## A022401.P14178287676928404980

`A022351(n)+A022104(n)`
-/

namespace A022401.P14178287676928404980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022104 n

end

end A022401.P14178287676928404980

namespace A022401

/-- `A022351(n)+A022104(n)` -/
def P14178287676928404980.Spec : Prop :=
  ∀ n, P14178287676928404980.a n = A022401 n

end A022401

/-! ## A022401.P2823073866940688995

`A022352(n)+A022103(n)`
-/

namespace A022401.P2823073866940688995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022103 n

end

end A022401.P2823073866940688995

namespace A022401

/-- `A022352(n)+A022103(n)` -/
def P2823073866940688995.Spec : Prop :=
  ∀ n, P2823073866940688995.a n = A022401 n

end A022401

/-! ## A022401.P17352672498489386662

`A022353(n)+A022102(n)`
-/

namespace A022401.P17352672498489386662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022102 n

end

end A022401.P17352672498489386662

namespace A022401

/-- `A022353(n)+A022102(n)` -/
def P17352672498489386662.Spec : Prop :=
  ∀ n, P17352672498489386662.a n = A022401 n

end A022401

/-! ## A022401.P3311709215694882321

`A022354(n)+A022101(n)`
-/

namespace A022401.P3311709215694882321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022101 n

end

end A022401.P3311709215694882321

namespace A022401

/-- `A022354(n)+A022101(n)` -/
def P3311709215694882321.Spec : Prop :=
  ∀ n, P3311709215694882321.a n = A022401 n

end A022401

/-! ## A022401.P4929279970113419900

`A022355(n)+A022100(n)`
-/

namespace A022401.P4929279970113419900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022100 n

end

end A022401.P4929279970113419900

namespace A022401

/-- `A022355(n)+A022100(n)` -/
def P4929279970113419900.Spec : Prop :=
  ∀ n, P4929279970113419900.a n = A022401 n

end A022401

/-! ## A022401.P7693003705962066145

`A022356(n)+A022099(n)`
-/

namespace A022401.P7693003705962066145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022099 n

end

end A022401.P7693003705962066145

namespace A022401

/-- `A022356(n)+A022099(n)` -/
def P7693003705962066145.Spec : Prop :=
  ∀ n, P7693003705962066145.a n = A022401 n

end A022401

/-! ## A022401.P14592803814776530589

`A022357(n)+A022098(n)`
-/

namespace A022401.P14592803814776530589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022098 n

end

end A022401.P14592803814776530589

namespace A022401

/-- `A022357(n)+A022098(n)` -/
def P14592803814776530589.Spec : Prop :=
  ∀ n, P14592803814776530589.a n = A022401 n

end A022401

/-! ## A022401.P1477775645776692041

`A022358(n)+A022097(n)`
-/

namespace A022401.P1477775645776692041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022097 n

end

end A022401.P1477775645776692041

namespace A022401

/-- `A022358(n)+A022097(n)` -/
def P1477775645776692041.Spec : Prop :=
  ∀ n, P1477775645776692041.a n = A022401 n

end A022401

/-! ## A022401.P8768834719301601221

`A022359(n)+A022096(n)`
-/

namespace A022401.P8768834719301601221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A022096 n

end

end A022401.P8768834719301601221

namespace A022401

/-- `A022359(n)+A022096(n)` -/
def P8768834719301601221.Spec : Prop :=
  ∀ n, P8768834719301601221.a n = A022401 n

end A022401

/-! ## A022401.P11728259892417149172

`A022360(n)+A022095(n)`
-/

namespace A022401.P11728259892417149172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022360 n + A022095 n

end

end A022401.P11728259892417149172

namespace A022401

/-- `A022360(n)+A022095(n)` -/
def P11728259892417149172.Spec : Prop :=
  ∀ n, P11728259892417149172.a n = A022401 n

end A022401

/-! ## A022401.P17032630041757693454

`A022391(n)+A022093(n)`
-/

namespace A022401.P17032630041757693454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 n + A022093 n

end

end A022401.P17032630041757693454

namespace A022401

/-- `A022391(n)+A022093(n)` -/
def P17032630041757693454.Spec : Prop :=
  ∀ n, P17032630041757693454.a n = A022401 n

end A022401

/-!
# A022402: Fibonacci sequence beginning 1, 32.

The programs for A022402, the canonical program `A022402.P1318547867331901762` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022402 has offset 0).

The definition of A022402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022402.P1318547867331901762

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022402

/-- `a(n-1)+a(n-2)` -/
def P1318547867331901762.Spec : Prop :=
  ∀ n, (P1318547867331901762.a n : ℤ) = A022402 n

theorem P1318547867331901762.correct : P1318547867331901762.Spec := by
  intro n
  simp only [A022402]

end A022402

/-! ## A022402.P9239670139987851160

`31*A000045(n)+A000045(n+1)`
-/

namespace A022402.P9239670139987851160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * A000045 n + A000045 (n + 1)

end

end A022402.P9239670139987851160

namespace A022402

/-- `31*A000045(n)+A000045(n+1)` -/
def P9239670139987851160.Spec : Prop :=
  ∀ n, P9239670139987851160.a n = A022402 n

end A022402

/-! ## A022402.P10666780509448222185

`A022401(n)+A000045(n)`
-/

namespace A022402.P10666780509448222185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022401 n + A000045 n

end

end A022402.P10666780509448222185

namespace A022402

/-- `A022401(n)+A000045(n)` -/
def P10666780509448222185.Spec : Prop :=
  ∀ n, P10666780509448222185.a n = A022402 n

end A022402

/-! ## A022402.P7094619725553162386

`A022362(n)+A000285(n)`
-/

namespace A022402.P7094619725553162386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022362 n + A000285 n

end

end A022402.P7094619725553162386

namespace A022402

/-- `A022362(n)+A000285(n)` -/
def P7094619725553162386.Spec : Prop :=
  ∀ n, P7094619725553162386.a n = A022402 n

end A022402

/-! ## A022402.P6584412418267792332

`A022346(n)+A022110(n)`
-/

namespace A022402.P6584412418267792332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022110 n

end

end A022402.P6584412418267792332

namespace A022402

/-- `A022346(n)+A022110(n)` -/
def P6584412418267792332.Spec : Prop :=
  ∀ n, P6584412418267792332.a n = A022402 n

end A022402

/-! ## A022402.P13573586368670019630

`A022347(n)+A022109(n)`
-/

namespace A022402.P13573586368670019630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022109 n

end

end A022402.P13573586368670019630

namespace A022402

/-- `A022347(n)+A022109(n)` -/
def P13573586368670019630.Spec : Prop :=
  ∀ n, P13573586368670019630.a n = A022402 n

end A022402

/-! ## A022402.P18262556411931015262

`A022348(n)+A022108(n)`
-/

namespace A022402.P18262556411931015262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022108 n

end

end A022402.P18262556411931015262

namespace A022402

/-- `A022348(n)+A022108(n)` -/
def P18262556411931015262.Spec : Prop :=
  ∀ n, P18262556411931015262.a n = A022402 n

end A022402

/-! ## A022402.P2659091438810586264

`A022349(n)+A022107(n)`
-/

namespace A022402.P2659091438810586264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022107 n

end

end A022402.P2659091438810586264

namespace A022402

/-- `A022349(n)+A022107(n)` -/
def P2659091438810586264.Spec : Prop :=
  ∀ n, P2659091438810586264.a n = A022402 n

end A022402

/-! ## A022402.P10255029811838757267

`A022350(n)+A022106(n)`
-/

namespace A022402.P10255029811838757267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022106 n

end

end A022402.P10255029811838757267

namespace A022402

/-- `A022350(n)+A022106(n)` -/
def P10255029811838757267.Spec : Prop :=
  ∀ n, P10255029811838757267.a n = A022402 n

end A022402

/-! ## A022402.P2853115727746754295

`A022351(n)+A022105(n)`
-/

namespace A022402.P2853115727746754295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022105 n

end

end A022402.P2853115727746754295

namespace A022402

/-- `A022351(n)+A022105(n)` -/
def P2853115727746754295.Spec : Prop :=
  ∀ n, P2853115727746754295.a n = A022402 n

end A022402

/-! ## A022402.P13431898163351008075

`A022352(n)+A022104(n)`
-/

namespace A022402.P13431898163351008075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022104 n

end

end A022402.P13431898163351008075

namespace A022402

/-- `A022352(n)+A022104(n)` -/
def P13431898163351008075.Spec : Prop :=
  ∀ n, P13431898163351008075.a n = A022402 n

end A022402

/-! ## A022402.P14875515886978005444

`A022353(n)+A022103(n)`
-/

namespace A022402.P14875515886978005444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022103 n

end

end A022402.P14875515886978005444

namespace A022402

/-- `A022353(n)+A022103(n)` -/
def P14875515886978005444.Spec : Prop :=
  ∀ n, P14875515886978005444.a n = A022402 n

end A022402

/-! ## A022402.P8533206290083173080

`A022354(n)+A022102(n)`
-/

namespace A022402.P8533206290083173080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022102 n

end

end A022402.P8533206290083173080

namespace A022402

/-- `A022354(n)+A022102(n)` -/
def P8533206290083173080.Spec : Prop :=
  ∀ n, P8533206290083173080.a n = A022402 n

end A022402

/-! ## A022402.P6243685115712731099

`A022355(n)+A022101(n)`
-/

namespace A022402.P6243685115712731099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022101 n

end

end A022402.P6243685115712731099

namespace A022402

/-- `A022355(n)+A022101(n)` -/
def P6243685115712731099.Spec : Prop :=
  ∀ n, P6243685115712731099.a n = A022402 n

end A022402

/-! ## A022402.P10953580383383855129

`A022356(n)+A022100(n)`
-/

namespace A022402.P10953580383383855129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022100 n

end

end A022402.P10953580383383855129

namespace A022402

/-- `A022356(n)+A022100(n)` -/
def P10953580383383855129.Spec : Prop :=
  ∀ n, P10953580383383855129.a n = A022402 n

end A022402

/-! ## A022402.P12351417363664283174

`A022357(n)+A022099(n)`
-/

namespace A022402.P12351417363664283174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022099 n

end

end A022402.P12351417363664283174

namespace A022402

/-- `A022357(n)+A022099(n)` -/
def P12351417363664283174.Spec : Prop :=
  ∀ n, P12351417363664283174.a n = A022402 n

end A022402

/-! ## A022402.P5316829530891243061

`A022358(n)+A022098(n)`
-/

namespace A022402.P5316829530891243061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022098 n

end

end A022402.P5316829530891243061

namespace A022402

/-- `A022358(n)+A022098(n)` -/
def P5316829530891243061.Spec : Prop :=
  ∀ n, P5316829530891243061.a n = A022402 n

end A022402

/-! ## A022402.P13827936104106008167

`A022359(n)+A022097(n)`
-/

namespace A022402.P13827936104106008167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A022097 n

end

end A022402.P13827936104106008167

namespace A022402

/-- `A022359(n)+A022097(n)` -/
def P13827936104106008167.Spec : Prop :=
  ∀ n, P13827936104106008167.a n = A022402 n

end A022402

/-! ## A022402.P8496836294587583547

`A022360(n)+A022096(n)`
-/

namespace A022402.P8496836294587583547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022360 n + A022096 n

end

end A022402.P8496836294587583547

namespace A022402

/-- `A022360(n)+A022096(n)` -/
def P8496836294587583547.Spec : Prop :=
  ∀ n, P8496836294587583547.a n = A022402 n

end A022402

/-! ## A022402.P9303776591313577691

`A022361(n)+A022095(n)`
-/

namespace A022402.P9303776591313577691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n + A022095 n

end

end A022402.P9303776591313577691

namespace A022402

/-- `A022361(n)+A022095(n)` -/
def P9303776591313577691.Spec : Prop :=
  ∀ n, P9303776591313577691.a n = A022402 n

end A022402

/-!
# A022403: a(0)=a(1)=3; thereafter a(n) = a(n-1) + a(n-2) + 1.

The programs for A022403, the canonical program `A022403.P9976567656786197575` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022403 has offset 0).

The definition of A022403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022403.P9976567656786197575`, by `A022403.P9976567656786197575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022403.P9976567656786197575

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022403

/-- `a(n-1)+a(n-2)+1` -/
def P9976567656786197575.Spec : Prop :=
  ∀ n, (P9976567656786197575.a n : ℤ) = A022403 n

theorem P9976567656786197575.correct : P9976567656786197575.Spec := by
  intro n
  simp only [A022403]

end A022403

/-! ## A022403.P3678476199057476221

`ogf((3-3x+x^2)/(1-2x+x^3))`
-/

namespace A022403.P3678476199057476221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 1] [1, -2, 0, 1] n

end

end A022403.P3678476199057476221

namespace A022403

/-- `ogf((3-3x+x^2)/(1-2x+x^3))` -/
def P3678476199057476221.Spec : Prop :=
  ∀ n, P3678476199057476221.a n = A022403 n

end A022403

/-! ## A022403.P10171853411447134743

`a(n-1)-xor(-1, a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A022403.P10171853411447134743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 2))

end

end A022403.P10171853411447134743

namespace A022403

/-- `a(n-1)-xor(-1, a(n-2))` -/
def P10171853411447134743.Spec : Prop :=
  ∀ n, P10171853411447134743.a n = A022403 n

end A022403

/-! ## A022403.P6133668973456805862

`∑[2*a(n-1)-a(n-3)]` with `a(0)=3, a(1)=0, a(2)=4, a(3)=4`
-/

namespace A022403.P6133668973456805862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 4, 4] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022403.P6133668973456805862

namespace A022403

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P6133668973456805862.Spec : Prop :=
  ∀ n, P6133668973456805862.a n = A022403 n

end A022403

/-! ## A022403.P11580594356428744998

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=3, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A022403.P11580594356428744998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A022403.P11580594356428744998

namespace A022403

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P11580594356428744998.Spec : Prop :=
  ∀ n, P11580594356428744998.a n = A022403 n

end A022403

/-! ## A022403.P6389365866090383508

`4/2-(1-a(n-1)-a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A022403.P6389365866090383508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n a =>
  (4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2))

end

end A022403.P6389365866090383508

namespace A022403

/-- `4/2-(1-a(n-1)-a(n-2))` -/
def P6389365866090383508.Spec : Prop :=
  ∀ n, P6389365866090383508.a n = (A022403 n : ℚ)

end A022403

/-! ## A022403.P2343467474666755579

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=3, a(1)=0, a(2)=4, a(3)=4`
-/

namespace A022403.P2343467474666755579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 4, 4] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022403.P2343467474666755579

namespace A022403

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P2343467474666755579.Spec : Prop :=
  ∀ n, P2343467474666755579.a n = A022403 n

end A022403

/-! ## A022403.P1181445234654318998

`2-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A022403.P1181445234654318998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A022403.P1181445234654318998

namespace A022403

/-- `2-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P1181445234654318998.Spec : Prop :=
  ∀ n, P1181445234654318998.a n = A022403 n

end A022403

/-! ## A022403.P1546349339856663534

`a(n-1)-(gcd(2, a(n-1))-2-a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A022403.P1546349339856663534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 1) - ((Int.gcd 2 (a (n - 1)) : ℤ) - 2 - a (n - 2))

end

end A022403.P1546349339856663534

namespace A022403

/-- `a(n-1)-(gcd(2, a(n-1))-2-a(n-2))` -/
def P1546349339856663534.Spec : Prop :=
  ∀ n, P1546349339856663534.a n = A022403 n

end A022403

/-! ## A022403.P16530054677671557852

`or(2, A355288(n))`
-/

namespace A022403.P16530054677671557852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A355288 n)

end

end A022403.P16530054677671557852

namespace A022403

/-- `or(2, A355288(n))` -/
def P16530054677671557852.Spec : Prop :=
  ∀ n, P16530054677671557852.a n = A022403 n

end A022403

/-! ## A022403.P11523609352254126416

`A022087(n+1)-1`
-/

namespace A022403.P11523609352254126416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (n + 1) - 1

end

end A022403.P11523609352254126416

namespace A022403

/-- `A022087(n+1)-1` -/
def P11523609352254126416.Spec : Prop :=
  ∀ n, P11523609352254126416.a n = A022403 n

end A022403

/-! ## A022403.P12553336357340145676

`2*A001595(n)+1`
-/

namespace A022403.P12553336357340145676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001595 n + 1

end

end A022403.P12553336357340145676

namespace A022403

/-- `2*A001595(n)+1` -/
def P12553336357340145676.Spec : Prop :=
  ∀ n, P12553336357340145676.a n = A022403 n

end A022403

/-! ## A022403.P8059231170364497084

`∑[2*A006355(n)]+1`
-/

namespace A022403.P8059231170364497084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022403.P8059231170364497084

namespace A022403

/-- `∑[2*A006355(n)]+1` -/
def P8059231170364497084.Spec : Prop :=
  ∀ n, P8059231170364497084.a n = A022403 n

end A022403

/-! ## A022403.P1698930540934432775

`∑[2*A118658(n)]-1`
-/

namespace A022403.P1698930540934432775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A022403.P1698930540934432775

namespace A022403

/-- `∑[2*A118658(n)]-1` -/
def P1698930540934432775.Spec : Prop :=
  ∀ n, P1698930540934432775.a n = A022403 n

end A022403

/-! ## A022403.P7303531957661347880

`2*A055389(n+1)-1`
-/

namespace A022403.P7303531957661347880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055389 (n + 1) - 1

end

end A022403.P7303531957661347880

namespace A022403

/-- `2*A055389(n+1)-1` -/
def P7303531957661347880.Spec : Prop :=
  ∀ n, P7303531957661347880.a n = A022403 n

end A022403

/-! ## A022403.P2014726556170774707

`2*A019274(n+1)+3`
-/

namespace A022403.P2014726556170774707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019274 (n + 1) + 3

end

end A022403.P2014726556170774707

namespace A022403

/-- `2*A019274(n+1)+3` -/
def P2014726556170774707.Spec : Prop :=
  ∀ n, P2014726556170774707.a n = A022403 n

end A022403

/-! ## A022403.P11780039346922229107

`4*A000045(n+1)-1`
-/

namespace A022403.P11780039346922229107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 1) - 1

end

end A022403.P11780039346922229107

namespace A022403

/-- `4*A000045(n+1)-1` -/
def P11780039346922229107.Spec : Prop :=
  ∀ n, P11780039346922229107.a n = A022403 n

end A022403

/-! ## A022403.P133468238904283621

`2*A001588(n+1)-3`
-/

namespace A022403.P133468238904283621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001588 (n + 1) - 3

end

end A022403.P133468238904283621

namespace A022403

/-- `2*A001588(n+1)-3` -/
def P133468238904283621.Spec : Prop :=
  ∀ n, P133468238904283621.a n = A022403 n

end A022403

/-! ## A022403.P18071793929517471456

`4*A000071(n+1)+3`
-/

namespace A022403.P18071793929517471456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000071 (n + 1) + 3

end

end A022403.P18071793929517471456

namespace A022403

/-- `4*A000071(n+1)+3` -/
def P18071793929517471456.Spec : Prop :=
  ∀ n, P18071793929517471456.a n = A022403 n

end A022403

/-! ## A022403.P10146164790147389513

`or(3, A179999(2*n+1))`
-/

namespace A022403.P10146164790147389513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A179999 (2 * n + 1))

end

end A022403.P10146164790147389513

namespace A022403

/-- `or(3, A179999(2*n+1))` -/
def P10146164790147389513.Spec : Prop :=
  ∀ n, P10146164790147389513.a n = A022403 n

end A022403

/-!
# A022404: Least highly composite number divisible by n.

The programs for A022404, there is no canonical definition to state claims against.
-/

/-! ## A022404.P9744472974704622259

`A106612(A306585(n+1)/A002635(n))`
-/

namespace A022404.P9744472974704622259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (SequenceMachineLib.roundAway ((A306585 (n + 1) : ℚ) / (A002635 n : ℚ))).toNat

end

end A022404.P9744472974704622259

/-! ## A022404.P12630383035793058081

`A140635(A306585(n+1)/A002635(n))`
-/

namespace A022404.P12630383035793058081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.roundAway ((A306585 (n + 1) : ℚ) / (A002635 n : ℚ))).toNat

end

end A022404.P12630383035793058081

/-! ## A022404.P15603283646037199537

`lcm(A182576(A226532(n+1)), A226532(n+1))`
-/

namespace A022404.P15603283646037199537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A182576 (A226532 (n + 1)).toNat) (A226532 (n + 1))

end

end A022404.P15603283646037199537

/-!
# A022405: a(n) = a(n-1)*a(n-2) - a(n-3), with a(1) = 0, a(2) = 1, a(3) = 2.

The programs for A022405, the canonical program `A022405.P14569938769363155526` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022405 has offset 1).

The definition of A022405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)-a(n-3)` (program `A022405.P14569938769363155526`, by `A022405.P14569938769363155526.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022405.P14569938769363155526

`a(n-1)*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022405

/-- `a(n-1)*a(n-2)-a(n-3)` -/
def P14569938769363155526.Spec : Prop :=
  ∀ n, P14569938769363155526.a n = A022405 (n + 1)

theorem P14569938769363155526.correct : P14569938769363155526.Spec := by
  intro n
  simp only [A022405, Nat.add_sub_cancel]

end A022405

/-! ## A022405.P12409309901063775507

`a(n-1)/a(n-2)^(-1)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A022405.P12409309901063775507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ) - a (n - 3)

end

end A022405.P12409309901063775507

namespace A022405

/-- `a(n-1)/a(n-2)^(-1)-a(n-3)` -/
def P12409309901063775507.Spec : Prop :=
  ∀ n, P12409309901063775507.a n = (A022405 (n + 1) : ℚ)

end A022405

/-!
# A022406: a(0)=3, a(1)=7; thereafter a(n) = a(n-1) + a(n-2) + 1.

The programs for A022406, the canonical program `A022406.P2105456868625626518` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022406 has offset 0).

The definition of A022406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022406.P2105456868625626518`, by `A022406.P2105456868625626518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022406.P2105456868625626518

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022406

/-- `a(n-1)+a(n-2)+1` -/
def P2105456868625626518.Spec : Prop :=
  ∀ n, (P2105456868625626518.a n : ℤ) = A022406 n

theorem P2105456868625626518.correct : P2105456868625626518.Spec := by
  intro n
  simp only [A022406]

end A022406

/-! ## A022406.P8323790177790071762

`A022403(n+1)`
-/

namespace A022406.P8323790177790071762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 (n + 1)

end

end A022406.P8323790177790071762

namespace A022406

/-- `A022403(n+1)` -/
def P8323790177790071762.Spec : Prop :=
  ∀ n, P8323790177790071762.a n = A022406 n

end A022406

/-! ## A022406.P6133584797024943401

`4*A000045(n+2)-1`
-/

namespace A022406.P6133584797024943401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (n + 2) - 1

end

end A022406.P6133584797024943401

namespace A022406

/-- `4*A000045(n+2)-1` -/
def P6133584797024943401.Spec : Prop :=
  ∀ n, P6133584797024943401.a n = A022406 n

end A022406

/-! ## A022406.P14271150724780871957

`ogf((3+x-3x^2)/(1-2x+x^3))`
-/

namespace A022406.P14271150724780871957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -3] [1, -2, 0, 1] n

end

end A022406.P14271150724780871957

namespace A022406

/-- `ogf((3+x-3x^2)/(1-2x+x^3))` -/
def P14271150724780871957.Spec : Prop :=
  ∀ n, P14271150724780871957.a n = A022406 n

end A022406

/-! ## A022406.P10695980289785895113

`or(3, floor(ϕ*a(n-1)))` with `a(0)=3`
-/

namespace A022406.P10695980289785895113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 3 ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A022406.P10695980289785895113

namespace A022406

/-- `or(3, floor(ϕ*a(n-1)))` -/
def P10695980289785895113.Spec : Prop :=
  ∀ n, P10695980289785895113.a n = A022406 n

end A022406

/-! ## A022406.P12021775943231872089

`or(3, round(ϕ*a(n-1)))` with `a(0)=3`
-/

namespace A022406.P12021775943231872089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 3 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A022406.P12021775943231872089

namespace A022406

/-- `or(3, round(ϕ*a(n-1)))` -/
def P12021775943231872089.Spec : Prop :=
  ∀ n, P12021775943231872089.a n = A022406 n

end A022406

/-! ## A022406.P17595370256830665860

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=3, a(1)=5, a(2)=5`
-/

namespace A022406.P17595370256830665860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 5] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A022406.P17595370256830665860

namespace A022406

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P17595370256830665860.Spec : Prop :=
  ∀ n, P17595370256830665860.a n = A022406 n

end A022406

/-! ## A022406.P14558819193730885666

`A355288(n+1)`
-/

namespace A022406.P14558819193730885666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355288 (n + 1)

end

end A022406.P14558819193730885666

namespace A022406

/-- `A355288(n+1)` -/
def P14558819193730885666.Spec : Prop :=
  ∀ n, P14558819193730885666.a n = A022406 n

end A022406

/-! ## A022406.P307524734541166668

`A192746(n)+2`
-/

namespace A022406.P307524734541166668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192746 n + 2

end

end A022406.P307524734541166668

namespace A022406

/-- `A192746(n)+2` -/
def P307524734541166668.Spec : Prop :=
  ∀ n, P307524734541166668.a n = A022406 n

end A022406

/-! ## A022406.P4900464650727298356

`∑[A022087(n)]+3`
-/

namespace A022406.P4900464650727298356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A022406.P4900464650727298356

namespace A022406

/-- `∑[A022087(n)]+3` -/
def P4900464650727298356.Spec : Prop :=
  ∀ n, P4900464650727298356.a n = A022406 n

end A022406

/-! ## A022406.P9157345718106365979

`A022087(n+2)-1`
-/

namespace A022406.P9157345718106365979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (n + 2) - 1

end

end A022406.P9157345718106365979

namespace A022406

/-- `A022087(n+2)-1` -/
def P9157345718106365979.Spec : Prop :=
  ∀ n, P9157345718106365979.a n = A022406 n

end A022406

/-! ## A022406.P12420060061366918206

`record[A355288(abs(1-n))]`
-/

namespace A022406.P12420060061366918206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355288 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022406.P12420060061366918206

namespace A022406

/-- `record[A355288(abs(1-n))]` -/
def P12420060061366918206.Spec : Prop :=
  ∀ n, P12420060061366918206.a n = A022406 n

end A022406

/-! ## A022406.P5997905796902760689

`∑[2*A055389(n)]+1`
-/

namespace A022406.P5997905796902760689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022406.P5997905796902760689

namespace A022406

/-- `∑[2*A055389(n)]+1` -/
def P5997905796902760689.Spec : Prop :=
  ∀ n, P5997905796902760689.a n = A022406 n

end A022406

/-! ## A022406.P5081540791118764746

`∑[4*A000045(n)]+3`
-/

namespace A022406.P5081540791118764746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A022406.P5081540791118764746

namespace A022406

/-- `∑[4*A000045(n)]+3` -/
def P5081540791118764746.Spec : Prop :=
  ∀ n, P5081540791118764746.a n = A022406 n

end A022406

/-! ## A022406.P18011941237370271980

`record[2*A118658(n)-1]`
-/

namespace A022406.P18011941237370271980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118658 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022406.P18011941237370271980

namespace A022406

/-- `record[2*A118658(n)-1]` -/
def P18011941237370271980.Spec : Prop :=
  ∀ n, P18011941237370271980.a n = A022406 n

end A022406

/-! ## A022406.P9529688906610296880

`2*A001595(n+1)+1`
-/

namespace A022406.P9529688906610296880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001595 (n + 1) + 1

end

end A022406.P9529688906610296880

namespace A022406

/-- `2*A001595(n+1)+1` -/
def P9529688906610296880.Spec : Prop :=
  ∀ n, P9529688906610296880.a n = A022406 n

end A022406

/-! ## A022406.P8471634416049107477

`A179999(2*n+3)+1`
-/

namespace A022406.P8471634416049107477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179999 (2 * n + 3) + 1

end

end A022406.P8471634416049107477

namespace A022406

/-- `A179999(2*n+3)+1` -/
def P8471634416049107477.Spec : Prop :=
  ∀ n, P8471634416049107477.a n = A022406 n

end A022406

/-! ## A022406.P16474115526101524335

`A192952(n)+3*(n+1)`
-/

namespace A022406.P16474115526101524335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 n + (3 * (n + 1) : ℤ)

end

end A022406.P16474115526101524335

namespace A022406

/-- `A192952(n)+3*(n+1)` -/
def P16474115526101524335.Spec : Prop :=
  ∀ n, P16474115526101524335.a n = A022406 n

end A022406

/-! ## A022406.P5046655166063810136

`A020701(n)+A001610(n)`
-/

namespace A022406.P5046655166063810136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + A001610 n

end

end A022406.P5046655166063810136

namespace A022406

/-- `A020701(n)+A001610(n)` -/
def P5046655166063810136.Spec : Prop :=
  ∀ n, P5046655166063810136.a n = A022406 n

end A022406

/-! ## A022406.P7326722367442424075

`A022320(n)+A000032(n)`
-/

namespace A022406.P7326722367442424075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A000032 n

end

end A022406.P7326722367442424075

namespace A022406

/-- `A022320(n)+A000032(n)` -/
def P7326722367442424075.Spec : Prop :=
  ∀ n, P7326722367442424075.a n = A022406 n

end A022406

/-!
# A022407: a(n) = a(n-1) + a(n-2) + 1, with a(0)=3, a(1)=8.

The programs for A022407, the canonical program `A022407.P866170686072896612` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022407 has offset 0).

The definition of A022407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022407.P866170686072896612`, by `A022407.P866170686072896612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022407.P866170686072896612

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022407

/-- `a(n-1)+a(n-2)+1` -/
def P866170686072896612.Spec : Prop :=
  ∀ n, (P866170686072896612.a n : ℤ) = A022407 n

theorem P866170686072896612.correct : P866170686072896612.Spec := by
  intro n
  simp only [A022407]

end A022407

/-! ## A022407.P17181781143837660278

`ogf((3+2x-4x^2)/(1-2x+x^3))`
-/

namespace A022407.P17181781143837660278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, -4] [1, -2, 0, 1] n

end

end A022407.P17181781143837660278

namespace A022407

/-- `ogf((3+2x-4x^2)/(1-2x+x^3))` -/
def P17181781143837660278.Spec : Prop :=
  ∀ n, P17181781143837660278.a n = A022407 n

end A022407

/-! ## A022407.P9796807080066211490

`A022130(n)-1`
-/

namespace A022407.P9796807080066211490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n - 1

end

end A022407.P9796807080066211490

namespace A022407

/-- `A022130(n)-1` -/
def P9796807080066211490.Spec : Prop :=
  ∀ n, P9796807080066211490.a n = A022407 n

end A022407

/-! ## A022407.P7651102190104542691

`A187892(n+2)-2`
-/

namespace A022407.P7651102190104542691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 (n + 2) - 2

end

end A022407.P7651102190104542691

namespace A022407

/-- `A187892(n+2)-2` -/
def P7651102190104542691.Spec : Prop :=
  ∀ n, P7651102190104542691.a n = A022407 n

end A022407

/-! ## A022407.P8288789262948979307

`round((6-ϕ)*A000045(n+2))-1`
-/

namespace A022407.P8288789262948979307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 - Real.goldenRatio) * (A000045 (n + 2) : ℝ)) - 1

end

end A022407.P8288789262948979307

namespace A022407

/-- `round((6-ϕ)*A000045(n+2))-1` -/
def P8288789262948979307.Spec : Prop :=
  ∀ n, P8288789262948979307.a n = A022407 n

end A022407

/-! ## A022407.P13384398381054682356

`A022321(n)+A000032(n)`
-/

namespace A022407.P13384398381054682356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A000032 n

end

end A022407.P13384398381054682356

namespace A022407

/-- `A022321(n)+A000032(n)` -/
def P13384398381054682356.Spec : Prop :=
  ∀ n, P13384398381054682356.a n = A022407 n

end A022407

/-! ## A022407.P9065808178563685062

`A022406(n)+A000045(n)`
-/

namespace A022407.P9065808178563685062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 n + A000045 n

end

end A022407.P9065808178563685062

namespace A022407

/-- `A022406(n)+A000045(n)` -/
def P9065808178563685062.Spec : Prop :=
  ∀ n, P9065808178563685062.a n = A022407 n

end A022407

/-! ## A022407.P10430329584563445717

`A022113(n)+A001595(n)`
-/

namespace A022407.P10430329584563445717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A001595 n

end

end A022407.P10430329584563445717

namespace A022407

/-- `A022113(n)+A001595(n)` -/
def P10430329584563445717.Spec : Prop :=
  ∀ n, P10430329584563445717.a n = A022407 n

end A022407

/-! ## A022407.P3187921318760969490

`A022311(n)+A013655(n)`
-/

namespace A022407.P3187921318760969490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A013655 n

end

end A022407.P3187921318760969490

namespace A022407

/-- `A022311(n)+A013655(n)` -/
def P3187921318760969490.Spec : Prop :=
  ∀ n, P3187921318760969490.a n = A022407 n

end A022407

/-! ## A022407.P5360200468888567812

`A022308(n)+A020701(n)`
-/

namespace A022407.P5360200468888567812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A020701 n

end

end A022407.P5360200468888567812

namespace A022407

/-- `A022308(n)+A020701(n)` -/
def P5360200468888567812.Spec : Prop :=
  ∀ n, P5360200468888567812.a n = A022407 n

end A022407

/-! ## A022407.P2729575556044830250

`A022319(n)+A020695(n)`
-/

namespace A022407.P2729575556044830250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A020695 n

end

end A022407.P2729575556044830250

namespace A022407

/-- `A022319(n)+A020695(n)` -/
def P2729575556044830250.Spec : Prop :=
  ∀ n, P2729575556044830250.a n = A022407 n

end A022407

/-! ## A022407.P11972808495809764236

`A022403(n)+A022088(n)`
-/

namespace A022407.P11972808495809764236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 n + A022088 n

end

end A022407.P11972808495809764236

namespace A022407

/-- `A022403(n)+A022088(n)` -/
def P11972808495809764236.Spec : Prop :=
  ∀ n, P11972808495809764236.a n = A022407 n

end A022407

/-! ## A022407.P7213883961871651164

`A104449(n)+A022312(n)`
-/

namespace A022407.P7213883961871651164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022312 n

end

end A022407.P7213883961871651164

namespace A022407

/-- `A104449(n)+A022312(n)` -/
def P7213883961871651164.Spec : Prop :=
  ∀ n, P7213883961871651164.a n = A022407 n

end A022407

/-! ## A022407.P14031129864561618990

`A118658(n)+A022322(n)`
-/

namespace A022407.P14031129864561618990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022322 n

end

end A022407.P14031129864561618990

namespace A022407

/-- `A118658(n)+A022322(n)` -/
def P14031129864561618990.Spec : Prop :=
  ∀ n, P14031129864561618990.a n = A022407 n

end A022407

/-! ## A022407.P2162442223745364037

`A168674(n)+A048577(n)`
-/

namespace A022407.P2162442223745364037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + A048577 n

end

end A022407.P2162442223745364037

namespace A022407

/-- `A168674(n)+A048577(n)` -/
def P2162442223745364037.Spec : Prop :=
  ∀ n, P2162442223745364037.a n = A022407 n

end A022407

/-! ## A022407.P1691978230487307449

`A192746(n)+A157725(n)`
-/

namespace A022407.P1691978230487307449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192746 n + A157725 n

end

end A022407.P1691978230487307449

namespace A022407

/-- `A192746(n)+A157725(n)` -/
def P1691978230487307449.Spec : Prop :=
  ∀ n, P1691978230487307449.a n = A022407 n

end A022407

/-! ## A022407.P7804530571735688096

`A377628(n)+A022096(n)`
-/

namespace A022407.P7804530571735688096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n + A022096 n

end

end A022407.P7804530571735688096

namespace A022407

/-- `A377628(n)+A022096(n)` -/
def P7804530571735688096.Spec : Prop :=
  ∀ n, P7804530571735688096.a n = A022407 n

end A022407

/-! ## A022407.P791765812235155375

`A020732(n)-A152163(n)`
-/

namespace A022407.P791765812235155375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n - A152163 n

end

end A022407.P791765812235155375

namespace A022407

/-- `A020732(n)-A152163(n)` -/
def P791765812235155375.Spec : Prop :=
  ∀ n, P791765812235155375.a n = A022407 n

end A022407

/-! ## A022407.P17932876322860610480

`A022121(n)+A000071(n+1)`
-/

namespace A022407.P17932876322860610480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A000071 (n + 1)

end

end A022407.P17932876322860610480

namespace A022407

/-- `A022121(n)+A000071(n+1)` -/
def P17932876322860610480.Spec : Prop :=
  ∀ n, P17932876322860610480.a n = A022407 n

end A022407

/-! ## A022407.P18120052288233264684

`A022403(n+1)+A000045(n)`
-/

namespace A022407.P18120052288233264684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 (n + 1) + A000045 n

end

end A022407.P18120052288233264684

namespace A022407

/-- `A022403(n+1)+A000045(n)` -/
def P18120052288233264684.Spec : Prop :=
  ∀ n, P18120052288233264684.a n = A022407 n

end A022407

/-!
# A022408: a(n) = a(n-1) + a(n-2) + 1, with a(0)=3, a(1)=9.

The programs for A022408, the canonical program `A022408.P18395182556693668952` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022408 has offset 0).

The definition of A022408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022408.P18395182556693668952`, by `A022408.P18395182556693668952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022408.P18395182556693668952

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022408

/-- `a(n-1)+a(n-2)+1` -/
def P18395182556693668952.Spec : Prop :=
  ∀ n, (P18395182556693668952.a n : ℤ) = A022408 n

theorem P18395182556693668952.correct : P18395182556693668952.Spec := by
  intro n
  simp only [A022408]

end A022408

/-! ## A022408.P12794436794261799370

`ogf((3+3x-5x^2)/(1-2x+x^3))`
-/

namespace A022408.P12794436794261799370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, -5] [1, -2, 0, 1] n

end

end A022408.P12794436794261799370

namespace A022408

/-- `ogf((3+3x-5x^2)/(1-2x+x^3))` -/
def P12794436794261799370.Spec : Prop :=
  ∀ n, P12794436794261799370.a n = A022408 n

end A022408

/-! ## A022408.P6715748292793862856

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=3, a(1)=7, a(2)=5`
-/

namespace A022408.P6715748292793862856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 5] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A022408.P6715748292793862856

namespace A022408

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P6715748292793862856.Spec : Prop :=
  ∀ n, P6715748292793862856.a n = A022408 n

end A022408

/-! ## A022408.P8291720726564626655

`A022382(n)-1`
-/

namespace A022408.P8291720726564626655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n - 1

end

end A022408.P8291720726564626655

namespace A022408

/-- `A022382(n)-1` -/
def P8291720726564626655.Spec : Prop :=
  ∀ n, P8291720726564626655.a n = A022408 n

end A022408

/-! ## A022408.P11401747982608988821

`2*A022318(n)+1`
-/

namespace A022408.P11401747982608988821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022318 n + 1

end

end A022408.P11401747982608988821

namespace A022408

/-- `2*A022318(n)+1` -/
def P11401747982608988821.Spec : Prop :=
  ∀ n, P11401747982608988821.a n = A022408 n

end A022408

/-! ## A022408.P12608946366544191875

`2*A001060(n)-1`
-/

namespace A022408.P12608946366544191875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001060 n - 1

end

end A022408.P12608946366544191875

namespace A022408

/-- `2*A001060(n)-1` -/
def P12608946366544191875.Spec : Prop :=
  ∀ n, P12608946366544191875.a n = A022408 n

end A022408

/-! ## A022408.P13104618773331843135

`2*A013655(n+1)-1`
-/

namespace A022408.P13104618773331843135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013655 (n + 1) - 1

end

end A022408.P13104618773331843135

namespace A022408

/-- `2*A013655(n+1)-1` -/
def P13104618773331843135.Spec : Prop :=
  ∀ n, P13104618773331843135.a n = A022408 n

end A022408

/-! ## A022408.P18150642813768054145

`2*A187890(n+3)-3`
-/

namespace A022408.P18150642813768054145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187890 (n + 3) - 3

end

end A022408.P18150642813768054145

namespace A022408

/-- `2*A187890(n+3)-3` -/
def P18150642813768054145.Spec : Prop :=
  ∀ n, P18150642813768054145.a n = A022408 n

end A022408

/-! ## A022408.P13158169969378674955

`A022322(n)+A000032(n)`
-/

namespace A022408.P13158169969378674955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + A000032 n

end

end A022408.P13158169969378674955

namespace A022408

/-- `A022322(n)+A000032(n)` -/
def P13158169969378674955.Spec : Prop :=
  ∀ n, P13158169969378674955.a n = A022408 n

end A022408

/-! ## A022408.P5829246206790829186

`A022407(n)+A000045(n)`
-/

namespace A022408.P5829246206790829186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022407 n + A000045 n

end

end A022408.P5829246206790829186

namespace A022408

/-- `A022407(n)+A000045(n)` -/
def P5829246206790829186.Spec : Prop :=
  ∀ n, P5829246206790829186.a n = A022408 n

end A022408

/-! ## A022408.P2771318697763124809

`A022318(n)+A001060(n)`
-/

namespace A022408.P2771318697763124809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A001060 n

end

end A022408.P2771318697763124809

namespace A022408

/-- `A022318(n)+A001060(n)` -/
def P2771318697763124809.Spec : Prop :=
  ∀ n, P2771318697763124809.a n = A022408 n

end A022408

/-! ## A022408.P6667873481398345878

`A022120(n)+A001610(n)`
-/

namespace A022408.P6667873481398345878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A001610 n

end

end A022408.P6667873481398345878

namespace A022408

/-- `A022120(n)+A001610(n)` -/
def P6667873481398345878.Spec : Prop :=
  ∀ n, P6667873481398345878.a n = A022408 n

end A022408

/-! ## A022408.P5206289396938156060

`A022312(n)+A013655(n)`
-/

namespace A022408.P5206289396938156060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A013655 n

end

end A022408.P5206289396938156060

namespace A022408

/-- `A022312(n)+A013655(n)` -/
def P5206289396938156060.Spec : Prop :=
  ∀ n, P5206289396938156060.a n = A022408 n

end A022408

/-! ## A022408.P508795784174010250

`A022309(n)+A020701(n)`
-/

namespace A022408.P508795784174010250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A020701 n

end

end A022408.P508795784174010250

namespace A022408

/-- `A022309(n)+A020701(n)` -/
def P508795784174010250.Spec : Prop :=
  ∀ n, P508795784174010250.a n = A022408 n

end A022408

/-! ## A022408.P4088766784766912176

`A022320(n)+A020695(n)`
-/

namespace A022408.P4088766784766912176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A020695 n

end

end A022408.P4088766784766912176

namespace A022408

/-- `A022320(n)+A020695(n)` -/
def P4088766784766912176.Spec : Prop :=
  ∀ n, P4088766784766912176.a n = A022408 n

end A022408

/-! ## A022408.P16378018555351233923

`A022403(n)+A022089(n)`
-/

namespace A022408.P16378018555351233923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 n + A022089 n

end

end A022408.P16378018555351233923

namespace A022408

/-- `A022403(n)+A022089(n)` -/
def P16378018555351233923.Spec : Prop :=
  ∀ n, P16378018555351233923.a n = A022408 n

end A022408

/-! ## A022408.P4477286045935060560

`A104449(n)+A022313(n)`
-/

namespace A022408.P4477286045935060560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022313 n

end

end A022408.P4477286045935060560

namespace A022408

/-- `A104449(n)+A022313(n)` -/
def P4477286045935060560.Spec : Prop :=
  ∀ n, P4477286045935060560.a n = A022408 n

end A022408

/-! ## A022408.P8163861671739425701

`A118658(n)+A022323(n)`
-/

namespace A022408.P8163861671739425701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022323 n

end

end A022408.P8163861671739425701

namespace A022408

/-- `A118658(n)+A022323(n)` -/
def P8163861671739425701.Spec : Prop :=
  ∀ n, P8163861671739425701.a n = A022408 n

end A022408

/-! ## A022408.P4242937240208662978

`A294157(n)+A001595(n)`
-/

namespace A022408.P4242937240208662978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294157 n + A001595 n

end

end A022408.P4242937240208662978

namespace A022408

/-- `A294157(n)+A001595(n)` -/
def P4242937240208662978.Spec : Prop :=
  ∀ n, P4242937240208662978.a n = A022408 n

end A022408

/-! ## A022408.P8143489586424007744

`A377628(n)+A022097(n)`
-/

namespace A022408.P8143489586424007744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n + A022097 n

end

end A022408.P8143489586424007744

namespace A022408

/-- `A377628(n)+A022097(n)` -/
def P8143489586424007744.Spec : Prop :=
  ∀ n, P8143489586424007744.a n = A022408 n

end A022408

/-!
# A022409: a(n) = a(n-1) + a(n-2) + 1, with a(0)=3, a(1)=10.

The programs for A022409, the canonical program `A022409.P5224055492790679979` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022409 has offset 0).

The definition of A022409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022409.P5224055492790679979`, by `A022409.P5224055492790679979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022409.P5224055492790679979

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022409

/-- `a(n-1)+a(n-2)+1` -/
def P5224055492790679979.Spec : Prop :=
  ∀ n, (P5224055492790679979.a n : ℤ) = A022409 n

theorem P5224055492790679979.correct : P5224055492790679979.Spec := by
  intro n
  simp only [A022409]

end A022409

/-! ## A022409.P7003373937482137100

`ogf((3+4x-6x^2)/(1-2x+x^3))`
-/

namespace A022409.P7003373937482137100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -6] [1, -2, 0, 1] n

end

end A022409.P7003373937482137100

namespace A022409

/-- `ogf((3+4x-6x^2)/(1-2x+x^3))` -/
def P7003373937482137100.Spec : Prop :=
  ∀ n, P7003373937482137100.a n = A022409 n

end A022409

/-! ## A022409.P2906573826630550140

`A022131(n)-1`
-/

namespace A022409.P2906573826630550140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n - 1

end

end A022409.P2906573826630550140

namespace A022409

/-- `A022131(n)-1` -/
def P2906573826630550140.Spec : Prop :=
  ∀ n, P2906573826630550140.a n = A022409 n

end A022409

/-! ## A022409.P10359211897732826392

`A022323(n)+A000032(n)`
-/

namespace A022409.P10359211897732826392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n + A000032 n

end

end A022409.P10359211897732826392

namespace A022409

/-- `A022323(n)+A000032(n)` -/
def P10359211897732826392.Spec : Prop :=
  ∀ n, P10359211897732826392.a n = A022409 n

end A022409

/-! ## A022409.P13726655926964261265

`A022408(n)+A000045(n)`
-/

namespace A022409.P13726655926964261265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022408 n + A000045 n

end

end A022409.P13726655926964261265

namespace A022409

/-- `A022408(n)+A000045(n)` -/
def P13726655926964261265.Spec : Prop :=
  ∀ n, P13726655926964261265.a n = A022409 n

end A022409

/-! ## A022409.P8666547839586342836

`A022319(n)+A001060(n)`
-/

namespace A022409.P8666547839586342836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A001060 n

end

end A022409.P8666547839586342836

namespace A022409

/-- `A022319(n)+A001060(n)` -/
def P8666547839586342836.Spec : Prop :=
  ∀ n, P8666547839586342836.a n = A022409 n

end A022409

/-! ## A022409.P3027902363954488594

`A022114(n)+A001595(n)`
-/

namespace A022409.P3027902363954488594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A001595 n

end

end A022409.P3027902363954488594

namespace A022409

/-- `A022114(n)+A001595(n)` -/
def P3027902363954488594.Spec : Prop :=
  ∀ n, P3027902363954488594.a n = A022409 n

end A022409

/-! ## A022409.P18303787570906060647

`A022121(n)+A001610(n)`
-/

namespace A022409.P18303787570906060647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A001610 n

end

end A022409.P18303787570906060647

namespace A022409

/-- `A022121(n)+A001610(n)` -/
def P18303787570906060647.Spec : Prop :=
  ∀ n, P18303787570906060647.a n = A022409 n

end A022409

/-! ## A022409.P6801310417238822168

`A022313(n)+A013655(n)`
-/

namespace A022409.P6801310417238822168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A013655 n

end

end A022409.P6801310417238822168

namespace A022409

/-- `A022313(n)+A013655(n)` -/
def P6801310417238822168.Spec : Prop :=
  ∀ n, P6801310417238822168.a n = A022409 n

end A022409

/-! ## A022409.P8154073199656121939

`A022310(n)+A020701(n)`
-/

namespace A022409.P8154073199656121939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A020701 n

end

end A022409.P8154073199656121939

namespace A022409

/-- `A022310(n)+A020701(n)` -/
def P8154073199656121939.Spec : Prop :=
  ∀ n, P8154073199656121939.a n = A022409 n

end A022409

/-! ## A022409.P7527723055944045477

`A022321(n)+A020695(n)`
-/

namespace A022409.P7527723055944045477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A020695 n

end

end A022409.P7527723055944045477

namespace A022409

/-- `A022321(n)+A020695(n)` -/
def P7527723055944045477.Spec : Prop :=
  ∀ n, P7527723055944045477.a n = A022409 n

end A022409

/-! ## A022409.P6866944156870654681

`A022308(n)+A022120(n)`
-/

namespace A022409.P6866944156870654681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022120 n

end

end A022409.P6866944156870654681

namespace A022409

/-- `A022308(n)+A022120(n)` -/
def P6866944156870654681.Spec : Prop :=
  ∀ n, P6866944156870654681.a n = A022409 n

end A022409

/-! ## A022409.P6732235345565306887

`A022318(n)+A022112(n)`
-/

namespace A022409.P6732235345565306887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A022112 n

end

end A022409.P6732235345565306887

namespace A022409

/-- `A022318(n)+A022112(n)` -/
def P6732235345565306887.Spec : Prop :=
  ∀ n, P6732235345565306887.a n = A022409 n

end A022409

/-! ## A022409.P15666748572114332477

`A022403(n)+A022090(n)`
-/

namespace A022409.P15666748572114332477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 n + A022090 n

end

end A022409.P15666748572114332477

namespace A022409

/-- `A022403(n)+A022090(n)` -/
def P15666748572114332477.Spec : Prop :=
  ∀ n, P15666748572114332477.a n = A022409 n

end A022409

/-! ## A022409.P2128921381247367830

`A022406(n)+A022086(n)`
-/

namespace A022409.P2128921381247367830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 n + A022086 n

end

end A022409.P2128921381247367830

namespace A022409

/-- `A022406(n)+A022086(n)` -/
def P2128921381247367830.Spec : Prop :=
  ∀ n, P2128921381247367830.a n = A022409 n

end A022409

/-! ## A022409.P13448429906187884856

`A104449(n)+A022314(n)`
-/

namespace A022409.P13448429906187884856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022314 n

end

end A022409.P13448429906187884856

namespace A022409

/-- `A104449(n)+A022314(n)` -/
def P13448429906187884856.Spec : Prop :=
  ∀ n, P13448429906187884856.a n = A022409 n

end A022409

/-! ## A022409.P2365533864785972888

`A118658(n)+A022324(n)`
-/

namespace A022409.P2365533864785972888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022324 n

end

end A022409.P2365533864785972888

namespace A022409

/-- `A118658(n)+A022324(n)` -/
def P2365533864785972888.Spec : Prop :=
  ∀ n, P2365533864785972888.a n = A022409 n

end A022409

/-! ## A022409.P3670451640958833792

`A377628(n)+A022098(n)`
-/

namespace A022409.P3670451640958833792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n + A022098 n

end

end A022409.P3670451640958833792

namespace A022409

/-- `A377628(n)+A022098(n)` -/
def P3670451640958833792.Spec : Prop :=
  ∀ n, P3670451640958833792.a n = A022409 n

end A022409

/-! ## A022409.P398950467738979124

`A022410(n)-A000045(n)`
-/

namespace A022409.P398950467738979124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022410 n - A000045 n

end

end A022409.P398950467738979124

namespace A022409

/-- `A022410(n)-A000045(n)` -/
def P398950467738979124.Spec : Prop :=
  ∀ n, P398950467738979124.a n = A022409 n

end A022409

/-! ## A022409.P5272556585234994107

`A022132(n)-A001588(n)`
-/

namespace A022409.P5272556585234994107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n - A001588 n

end

end A022409.P5272556585234994107

namespace A022409

/-- `A022132(n)-A001588(n)` -/
def P5272556585234994107.Spec : Prop :=
  ∀ n, P5272556585234994107.a n = A022409 n

end A022409

/-!
# A022410: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=3, a(1)=11.

The programs for A022410, the canonical program `A022410.P1272345190762470195` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022410 has offset 0).

The definition of A022410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022410.P1272345190762470195`, by `A022410.P1272345190762470195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022410.P1272345190762470195

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022410

/-- `a(n-1)+a(n-2)+1` -/
def P1272345190762470195.Spec : Prop :=
  ∀ n, (P1272345190762470195.a n : ℤ) = A022410 n

theorem P1272345190762470195.correct : P1272345190762470195.Spec := by
  intro n
  simp only [A022410]

end A022410

/-! ## A022410.P606600217235361201

`2*a(n-1)-a(n-3)` with `a(0)=3, a(1)=11, a(2)=15`
-/

namespace A022410.P606600217235361201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11, 15] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022410.P606600217235361201

namespace A022410

/-- `2*a(n-1)-a(n-3)` -/
def P606600217235361201.Spec : Prop :=
  ∀ n, P606600217235361201.a n = A022410 n

end A022410

/-! ## A022410.P13031290517607265549

`A156279(n+1)-1`
-/

namespace A022410.P13031290517607265549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 (n + 1) - 1

end

end A022410.P13031290517607265549

namespace A022410

/-- `A156279(n+1)-1` -/
def P13031290517607265549.Spec : Prop :=
  ∀ n, P13031290517607265549.a n = A022410 n

end A022410

/-! ## A022410.P18125215810878202235

`ogf((3+5x-7x^2)/(1-2x+x^3))`
-/

namespace A022410.P18125215810878202235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5, -7] [1, -2, 0, 1] n

end

end A022410.P18125215810878202235

namespace A022410

/-- `ogf((3+5x-7x^2)/(1-2x+x^3))` -/
def P18125215810878202235.Spec : Prop :=
  ∀ n, P18125215810878202235.a n = A022410 n

end A022410

/-! ## A022410.P181361088748829446

`2*A022319(n)+1`
-/

namespace A022410.P181361088748829446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022319 n + 1

end

end A022410.P181361088748829446

namespace A022410

/-- `2*A022319(n)+1` -/
def P181361088748829446.Spec : Prop :=
  ∀ n, P181361088748829446.a n = A022410 n

end A022410

/-! ## A022410.P15875955123058058574

`2*A022112(n)-1`
-/

namespace A022410.P15875955123058058574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022112 n - 1

end

end A022410.P15875955123058058574

namespace A022410

/-- `2*A022112(n)-1` -/
def P15875955123058058574.Spec : Prop :=
  ∀ n, P15875955123058058574.a n = A022410 n

end A022410

/-! ## A022410.P11868102107754779517

`2*A168674(n)+3`
-/

namespace A022410.P11868102107754779517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168674 n + 3

end

end A022410.P11868102107754779517

namespace A022410

/-- `2*A168674(n)+3` -/
def P11868102107754779517.Spec : Prop :=
  ∀ n, P11868102107754779517.a n = A022410 n

end A022410

/-! ## A022410.P8658118307246152750

`4*A001610(n)+3`
-/

namespace A022410.P8658118307246152750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001610 n + 3

end

end A022410.P8658118307246152750

namespace A022410

/-- `4*A001610(n)+3` -/
def P8658118307246152750.Spec : Prop :=
  ∀ n, P8658118307246152750.a n = A022410 n

end A022410

/-! ## A022410.P10160542773453094529

`4*A000032(n+1)-1`
-/

namespace A022410.P10160542773453094529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000032 (n + 1) - 1

end

end A022410.P10160542773453094529

namespace A022410

/-- `4*A000032(n+1)-1` -/
def P10160542773453094529.Spec : Prop :=
  ∀ n, P10160542773453094529.a n = A022410 n

end A022410

/-! ## A022410.P695643461619132242

`4*A000204(n+1)-1`
-/

namespace A022410.P695643461619132242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000204 (n + 1) - 1

end

end A022410.P695643461619132242

namespace A022410

/-- `4*A000204(n+1)-1` -/
def P695643461619132242.Spec : Prop :=
  ∀ n, P695643461619132242.a n = A022410 n

end A022410

/-! ## A022410.P10590090933683463272

`2*A380821(n+1)-3`
-/

namespace A022410.P10590090933683463272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380821 (n + 1) - 3

end

end A022410.P10590090933683463272

namespace A022410

/-- `2*A380821(n+1)-3` -/
def P10590090933683463272.Spec : Prop :=
  ∀ n, P10590090933683463272.a n = A022410 n

end A022410

/-! ## A022410.P14983234837337848146

`abs(4*∑[A000032(abs(1-n))]-1)`
-/

namespace A022410.P14983234837337848146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1|

end

end A022410.P14983234837337848146

namespace A022410

/-- `abs(4*∑[A000032(abs(1-n))]-1)` -/
def P14983234837337848146.Spec : Prop :=
  ∀ n, P14983234837337848146.a n = A022410 n

end A022410

/-! ## A022410.P12420318603331900986

`A022324(n)+A000032(n)`
-/

namespace A022410.P12420318603331900986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022324 n + A000032 n

end

end A022410.P12420318603331900986

namespace A022410

/-- `A022324(n)+A000032(n)` -/
def P12420318603331900986.Spec : Prop :=
  ∀ n, P12420318603331900986.a n = A022410 n

end A022410

/-! ## A022410.P1891736899179450446

`A022409(n)+A000045(n)`
-/

namespace A022410.P1891736899179450446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022409 n + A000045 n

end

end A022410.P1891736899179450446

namespace A022410

/-- `A022409(n)+A000045(n)` -/
def P1891736899179450446.Spec : Prop :=
  ∀ n, P1891736899179450446.a n = A022410 n

end A022410

/-! ## A022410.P1564497766006714515

`A022320(n)+A001060(n)`
-/

namespace A022410.P1564497766006714515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A001060 n

end

end A022410.P1564497766006714515

namespace A022410

/-- `A022320(n)+A001060(n)` -/
def P1564497766006714515.Spec : Prop :=
  ∀ n, P1564497766006714515.a n = A022410 n

end A022410

/-! ## A022410.P9322428078110926047

`A022367(n)+A001595(n)`
-/

namespace A022410.P9322428078110926047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A001595 n

end

end A022410.P9322428078110926047

namespace A022410

/-- `A022367(n)+A001595(n)` -/
def P9322428078110926047.Spec : Prop :=
  ∀ n, P9322428078110926047.a n = A022410 n

end A022410

/-! ## A022410.P14955048938462573765

`A022379(n)+A001610(n)`
-/

namespace A022410.P14955048938462573765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A001610 n

end

end A022410.P14955048938462573765

namespace A022410

/-- `A022379(n)+A001610(n)` -/
def P14955048938462573765.Spec : Prop :=
  ∀ n, P14955048938462573765.a n = A022410 n

end A022410

/-! ## A022410.P16885139097933778197

`A022314(n)+A013655(n)`
-/

namespace A022410.P16885139097933778197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n + A013655 n

end

end A022410.P16885139097933778197

namespace A022410

/-- `A022314(n)+A013655(n)` -/
def P16885139097933778197.Spec : Prop :=
  ∀ n, P16885139097933778197.a n = A022410 n

end A022410

/-! ## A022410.P3907416426122899359

`A022311(n)+A020701(n)`
-/

namespace A022410.P3907416426122899359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A020701 n

end

end A022410.P3907416426122899359

namespace A022410

/-- `A022311(n)+A020701(n)` -/
def P3907416426122899359.Spec : Prop :=
  ∀ n, P3907416426122899359.a n = A022410 n

end A022410

/-! ## A022410.P8536969499453773187

`A022322(n)+A020695(n)`
-/

namespace A022410.P8536969499453773187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + A020695 n

end

end A022410.P8536969499453773187

namespace A022410

/-- `A022322(n)+A020695(n)` -/
def P8536969499453773187.Spec : Prop :=
  ∀ n, P8536969499453773187.a n = A022410 n

end A022410

/-!
# A022411: a(n) = a(n-1) + a(n-2) + 1, with a(0)=3, a(1)=12.

The programs for A022411, the canonical program `A022411.P11753458006192866545` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022411 has offset 0).

The definition of A022411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022411.P11753458006192866545`, by `A022411.P11753458006192866545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022411.P11753458006192866545

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022411

/-- `a(n-1)+a(n-2)+1` -/
def P11753458006192866545.Spec : Prop :=
  ∀ n, (P11753458006192866545.a n : ℤ) = A022411 n

theorem P11753458006192866545.correct : P11753458006192866545.Spec := by
  intro n
  simp only [A022411]

end A022411

/-! ## A022411.P2993196592576188131

`ogf((3+6x-8x^2)/(1-2x+x^3))`
-/

namespace A022411.P2993196592576188131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -8] [1, -2, 0, 1] n

end

end A022411.P2993196592576188131

namespace A022411

/-- `ogf((3+6x-8x^2)/(1-2x+x^3))` -/
def P2993196592576188131.Spec : Prop :=
  ∀ n, P2993196592576188131.a n = A022411 n

end A022411

/-! ## A022411.P9292018036755635824

`A022132(n)-1`
-/

namespace A022411.P9292018036755635824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n - 1

end

end A022411.P9292018036755635824

namespace A022411

/-- `A022132(n)-1` -/
def P9292018036755635824.Spec : Prop :=
  ∀ n, P9292018036755635824.a n = A022411 n

end A022411

/-! ## A022411.P16773473251213336411

`A022325(n)+A000032(n)`
-/

namespace A022411.P16773473251213336411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n + A000032 n

end

end A022411.P16773473251213336411

namespace A022411

/-- `A022325(n)+A000032(n)` -/
def P16773473251213336411.Spec : Prop :=
  ∀ n, P16773473251213336411.a n = A022411 n

end A022411

/-! ## A022411.P4167734766407153894

`A022410(n)+A000045(n)`
-/

namespace A022411.P4167734766407153894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022410 n + A000045 n

end

end A022411.P4167734766407153894

namespace A022411

/-- `A022410(n)+A000045(n)` -/
def P4167734766407153894.Spec : Prop :=
  ∀ n, P4167734766407153894.a n = A022411 n

end A022411

/-! ## A022411.P4723699317962374143

`A022321(n)+A001060(n)`
-/

namespace A022411.P4723699317962374143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A001060 n

end

end A022411.P4723699317962374143

namespace A022411

/-- `A022321(n)+A001060(n)` -/
def P4723699317962374143.Spec : Prop :=
  ∀ n, P4723699317962374143.a n = A022411 n

end A022411

/-! ## A022411.P1857556690858231919

`A022115(n)+A001595(n)`
-/

namespace A022411.P1857556690858231919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A001595 n

end

end A022411.P1857556690858231919

namespace A022411

/-- `A022115(n)+A001595(n)` -/
def P1857556690858231919.Spec : Prop :=
  ∀ n, P1857556690858231919.a n = A022411 n

end A022411

/-! ## A022411.P10560386680606764846

`A022122(n)+A001610(n)`
-/

namespace A022411.P10560386680606764846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A001610 n

end

end A022411.P10560386680606764846

namespace A022411

/-- `A022122(n)+A001610(n)` -/
def P10560386680606764846.Spec : Prop :=
  ∀ n, P10560386680606764846.a n = A022411 n

end A022411

/-! ## A022411.P132347029184022220

`A022315(n)+A013655(n)`
-/

namespace A022411.P132347029184022220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n + A013655 n

end

end A022411.P132347029184022220

namespace A022411

/-- `A022315(n)+A013655(n)` -/
def P132347029184022220.Spec : Prop :=
  ∀ n, P132347029184022220.a n = A022411 n

end A022411

/-! ## A022411.P13752326778132042006

`A022312(n)+A020701(n)`
-/

namespace A022411.P13752326778132042006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A020701 n

end

end A022411.P13752326778132042006

namespace A022411

/-- `A022312(n)+A020701(n)` -/
def P13752326778132042006.Spec : Prop :=
  ∀ n, P13752326778132042006.a n = A022411 n

end A022411

/-! ## A022411.P7260423926822884327

`A022323(n)+A020695(n)`
-/

namespace A022411.P7260423926822884327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n + A020695 n

end

end A022411.P7260423926822884327

namespace A022411

/-- `A022323(n)+A020695(n)` -/
def P7260423926822884327.Spec : Prop :=
  ∀ n, P7260423926822884327.a n = A022411 n

end A022411

/-! ## A022411.P3723818183990781998

`A022309(n)+A022121(n)`
-/

namespace A022411.P3723818183990781998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022121 n

end

end A022411.P3723818183990781998

namespace A022411

/-- `A022309(n)+A022121(n)` -/
def P3723818183990781998.Spec : Prop :=
  ∀ n, P3723818183990781998.a n = A022411 n

end A022411

/-! ## A022411.P378772892927116425

`A022310(n)+A022120(n)`
-/

namespace A022411.P378772892927116425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A022120 n

end

end A022411.P378772892927116425

namespace A022411

/-- `A022310(n)+A022120(n)` -/
def P378772892927116425.Spec : Prop :=
  ∀ n, P378772892927116425.a n = A022411 n

end A022411

/-! ## A022411.P10938849435852318408

`A022319(n)+A022113(n)`
-/

namespace A022411.P10938849435852318408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A022113 n

end

end A022411.P10938849435852318408

namespace A022411

/-- `A022319(n)+A022113(n)` -/
def P10938849435852318408.Spec : Prop :=
  ∀ n, P10938849435852318408.a n = A022411 n

end A022411

/-! ## A022411.P8623984011288863348

`A022320(n)+A022112(n)`
-/

namespace A022411.P8623984011288863348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A022112 n

end

end A022411.P8623984011288863348

namespace A022411

/-- `A022320(n)+A022112(n)` -/
def P8623984011288863348.Spec : Prop :=
  ∀ n, P8623984011288863348.a n = A022411 n

end A022411

/-! ## A022411.P13643133026609889449

`A022403(n)+A022092(n)`
-/

namespace A022411.P13643133026609889449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 n + A022092 n

end

end A022411.P13643133026609889449

namespace A022411

/-- `A022403(n)+A022092(n)` -/
def P13643133026609889449.Spec : Prop :=
  ∀ n, P13643133026609889449.a n = A022411 n

end A022411

/-! ## A022411.P10051649784490579279

`A022406(n)+A022088(n)`
-/

namespace A022411.P10051649784490579279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 n + A022088 n

end

end A022411.P10051649784490579279

namespace A022411

/-- `A022406(n)+A022088(n)` -/
def P10051649784490579279.Spec : Prop :=
  ∀ n, P10051649784490579279.a n = A022411 n

end A022411

/-! ## A022411.P14969132915694787457

`A022407(n)+A022087(n)`
-/

namespace A022411.P14969132915694787457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022407 n + A022087 n

end

end A022411.P14969132915694787457

namespace A022411

/-- `A022407(n)+A022087(n)` -/
def P14969132915694787457.Spec : Prop :=
  ∀ n, P14969132915694787457.a n = A022411 n

end A022411

/-! ## A022411.P17938136995437960779

`A022408(n)+A022086(n)`
-/

namespace A022411.P17938136995437960779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022408 n + A022086 n

end

end A022411.P17938136995437960779

namespace A022411

/-- `A022408(n)+A022086(n)` -/
def P17938136995437960779.Spec : Prop :=
  ∀ n, P17938136995437960779.a n = A022411 n

end A022411

/-! ## A022411.P12900123893613656692

`A022379(n)+A022308(n)`
-/

namespace A022411.P12900123893613656692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022308 n

end

end A022411.P12900123893613656692

namespace A022411

/-- `A022379(n)+A022308(n)` -/
def P12900123893613656692.Spec : Prop :=
  ∀ n, P12900123893613656692.a n = A022411 n

end A022411

/-!
# A022412: Expansion of 1/((1-x)(1-5x)(1-6x)(1-11x)).

The programs for A022412, the canonical program `A022412.P5591446245294432790` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022412 has offset 0).

The definition of A022412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022412.P5591446245294432790

`17*a(n-1)-66*a(n-2)+(5^(n+1)-1)/4` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022412

/-- `17*a(n-1)-66*a(n-2)+(5^(n+1)-1)/4` -/
def P5591446245294432790.Spec : Prop :=
  ∀ n, P5591446245294432790.a n = (A022412 n : ℚ)

end A022412

/-! ## A022412.P3521139798554626843

`5^(n+3)/24+11^(n+3)/300-1/200-6^(n+3)/25`
-/

namespace A022412.P3521139798554626843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 3) : ℚ) / 24 + (11 ^ (n + 3) : ℚ) / 300 - (1 : ℚ) / 200 - (6 ^ (n + 3) : ℚ) / 25

end

end A022412.P3521139798554626843

namespace A022412

/-- `5^(n+3)/24+11^(n+3)/300-1/200-6^(n+3)/25` -/
def P3521139798554626843.Spec : Prop :=
  ∀ n, P3521139798554626843.a n = (A022412 n : ℚ)

end A022412

/-! ## A022412.P16782485512714870061

`∑[A019854(n)]`
-/

namespace A022412.P16782485512714870061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022412.P16782485512714870061

namespace A022412

/-- `∑[A019854(n)]` -/
def P16782485512714870061.Spec : Prop :=
  ∀ n, P16782485512714870061.a n = A022412 n

end A022412

/-!
# A022413: Kim-sums: "Kimberling sums" K_n + K_2.

The programs for A022413, the canonical program `A022413.P14775061010759171751` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022413 has offset 0).

The definition of A022413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022413.P9754525788140054250

`ceil(a(n-1)/ϕ+n+2)` with `a(0)=1, a(1)=5`
-/

namespace A022413.P9754525788140054250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌈(a (n - 1) : ℝ) / Real.goldenRatio + (n + 2 : ℝ)⌉

end

end A022413.P9754525788140054250

namespace A022413

/-- `ceil(a(n-1)/ϕ+n+2)` -/
def P9754525788140054250.Spec : Prop :=
  ∀ n, P9754525788140054250.a n = A022413 n

end A022413

/-! ## A022413.P11995709859865209032

`floor(a(n-1)/ϕ+n+3)` with `a(0)=1, a(1)=5`
-/

namespace A022413.P11995709859865209032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.goldenRatio + (n + 3 : ℝ)⌋

end

end A022413.P11995709859865209032

namespace A022413

/-- `floor(a(n-1)/ϕ+n+3)` -/
def P11995709859865209032.Spec : Prop :=
  ∀ n, P11995709859865209032.a n = A022413 n

end A022413

/-! ## A022413.P14775061010759171751

`floor(n*(3-n/a(n-1)))+3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022413

/-- `floor(n*(3-n/a(n-1)))+3` -/
def P14775061010759171751.Spec : Prop :=
  ∀ n, P14775061010759171751.a n = A022413 n

theorem P14775061010759171751.correct : P14775061010759171751.Spec := by
  intro n
  simp only [A022413]

end A022413

/-! ## A022413.P11849276600994932628

`floor(n*ϕ²)+2-or(1, -n)%2`
-/

namespace A022413.P11849276600994932628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2 - Int.tmod (Int.lor 1 (-(n : ℤ))) 2

end

end A022413.P11849276600994932628

namespace A022413

/-- `floor(n*ϕ²)+2-or(1, -n)%2` -/
def P11849276600994932628.Spec : Prop :=
  ∀ n, P11849276600994932628.a n = A022413 n

end A022413

/-! ## A022413.P15393786048969677626

`char[xor(1, n)+1]+ceil(n*ϕ²)+1`
-/

namespace A022413.P15393786048969677626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ + 1)

end

end A022413.P15393786048969677626

namespace A022413

/-- `char[xor(1, n)+1]+ceil(n*ϕ²)+1` -/
def P15393786048969677626.Spec : Prop :=
  ∀ n, P15393786048969677626.a n = A022413 n

end A022413

/-! ## A022413.P1235752304829576634

`2*ceil(n*ϕ²)+1-floor(n*ϕ²)`
-/

namespace A022413.P1235752304829576634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ + 1 - ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

end

end A022413.P1235752304829576634

namespace A022413

/-- `2*ceil(n*ϕ²)+1-floor(n*ϕ²)` -/
def P1235752304829576634.Spec : Prop :=
  ∀ n, P1235752304829576634.a n = A022413 n

end A022413

/-! ## A022413.P17523342986987142759

`A323161(A284621(n+1))`
-/

namespace A022413.P17523342986987142759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A284621 (n + 1)).toNat

end

end A022413.P17523342986987142759

namespace A022413

/-- `A323161(A284621(n+1))` -/
def P17523342986987142759.Spec : Prop :=
  ∀ n, P17523342986987142759.a n = A022413 n

end A022413

/-! ## A022413.P4541639254404009776

`A319702(A288713(n+1))`
-/

namespace A022413.P4541639254404009776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A288713 (n + 1)).toNat

end

end A022413.P4541639254404009776

namespace A022413

/-- `A319702(A288713(n+1))` -/
def P4541639254404009776.Spec : Prop :=
  ∀ n, P4541639254404009776.a n = A022413 n

end A022413

/-! ## A022413.P18212521171140744980

`A189662(A189662(n+1))`
-/

namespace A022413.P18212521171140744980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (A189662 (n + 1)).toNat

end

end A022413.P18212521171140744980

namespace A022413

/-- `A189662(A189662(n+1))` -/
def P18212521171140744980.Spec : Prop :=
  ∀ n, P18212521171140744980.a n = A022413 n

end A022413

/-! ## A022413.P15280448542061769210

`A026355(comp[A026355(n)]-n)`
-/

namespace A022413.P15280448542061769210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A022413.P15280448542061769210

namespace A022413

/-- `A026355(comp[A026355(n)]-n)` -/
def P15280448542061769210.Spec : Prop :=
  ∀ n, P15280448542061769210.a n = A022413 n

end A022413

/-! ## A022413.P5003181723293989383

`record[A003842(n)²+n]`
-/

namespace A022413.P5003181723293989383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 n ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022413.P5003181723293989383

namespace A022413

/-- `record[A003842(n)²+n]` -/
def P5003181723293989383.Spec : Prop :=
  ∀ n, P5003181723293989383.a n = A022413 n

end A022413

/-! ## A022413.P3748128488711404689

`A057544(A004957(n))`
-/

namespace A022413.P3748128488711404689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (A004957 n).toNat

end

end A022413.P3748128488711404689

namespace A022413

/-- `A057544(A004957(n))` -/
def P3748128488711404689.Spec : Prop :=
  ∀ n, P3748128488711404689.a n = A022413 n

end A022413

/-! ## A022413.P17524146711603736785

`A057544(A026352(n))`
-/

namespace A022413.P17524146711603736785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057544 (A026352 n).toNat

end

end A022413.P17524146711603736785

namespace A022413

/-- `A057544(A026352(n))` -/
def P17524146711603736785.Spec : Prop :=
  ∀ n, P17524146711603736785.a n = A022413 n

end A022413

/-! ## A022413.P1519902910312908555

`A065475(A007066(n+1))`
-/

namespace A022413.P1519902910312908555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A007066 (n + 1)).toNat

end

end A022413.P1519902910312908555

namespace A022413

/-- `A065475(A007066(n+1))` -/
def P1519902910312908555.Spec : Prop :=
  ∀ n, P1519902910312908555.a n = A022413 n

end A022413

/-! ## A022413.P5832172486587088778

`A054082(2*A054082(2*(n+1)))`
-/

namespace A022413.P5832172486587088778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054082 (2 * A054082 (2 * (n + 1))).toNat

end

end A022413.P5832172486587088778

namespace A022413

/-- `A054082(2*A054082(2*(n+1)))` -/
def P5832172486587088778.Spec : Prop :=
  ∀ n, P5832172486587088778.a n = A022413 n

end A022413

/-! ## A022413.P13537836036551495172

`A189662(A026354(A007066(A026351(n))))`
-/

namespace A022413.P13537836036551495172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (A026354 (A007066 (A026351 n).toNat).toNat).toNat

end

end A022413.P13537836036551495172

namespace A022413

/-- `A189662(A026354(A007066(A026351(n))))` -/
def P13537836036551495172.Spec : Prop :=
  ∀ n, P13537836036551495172.a n = A022413 n

end A022413

/-! ## A022413.P11457916011110772563

`A123070(A001950(A123070(A001950(n+1))))`
-/

namespace A022413.P11457916011110772563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A001950 (A123070 (A001950 (n + 1)).toNat).toNat).toNat

end

end A022413.P11457916011110772563

namespace A022413

/-- `A123070(A001950(A123070(A001950(n+1))))` -/
def P11457916011110772563.Spec : Prop :=
  ∀ n, P11457916011110772563.a n = A022413 n

end A022413

/-!
# A022414: Kim-sums: "Kimberling sums" K_n + K_3.

The programs for A022414, the canonical program `A022414.P15866858124123457630` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022414 has offset 0).

The definition of A022414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022414.P1451291448880526319

`A073929(A004956(n)+2)`
-/

namespace A022414.P1451291448880526319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A004956 n + 2).toNat

end

end A022414.P1451291448880526319

namespace A022414

/-- `A073929(A004956(n)+2)` -/
def P1451291448880526319.Spec : Prop :=
  ∀ n, P1451291448880526319.a n = A022414 n

end A022414

/-! ## A022414.P15866858124123457630

`A002251(A022413(n)-n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022414

/-- `A002251(A022413(n)-n)` -/
def P15866858124123457630.Spec : Prop :=
  ∀ n, P15866858124123457630.a n = A022414 n

theorem P15866858124123457630.correct : P15866858124123457630.Spec := by
  intro n
  simp only [A022414]

end A022414

/-! ## A022414.P8851976255864474862

`A073929(A189662(n+1)+1)`
-/

namespace A022414.P8851976255864474862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A189662 (n + 1) + 1).toNat

end

end A022414.P8851976255864474862

namespace A022414

/-- `A073929(A189662(n+1)+1)` -/
def P8851976255864474862.Spec : Prop :=
  ∀ n, P8851976255864474862.a n = A022414 n

end A022414

/-! ## A022414.P1202924560518190137

`A002251(record[and(2, A001468(n))+n+1])`
-/

namespace A022414.P1202924560518190137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001468 n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022414.P1202924560518190137

namespace A022414

/-- `A002251(record[and(2, A001468(n))+n+1])` -/
def P1202924560518190137.Spec : Prop :=
  ∀ n, P1202924560518190137.a n = A022414 n

end A022414

/-! ## A022414.P2393989647278560200

`A002251(A103517(n)-A060144(n))`
-/

namespace A022414.P2393989647278560200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A103517 n - A060144 n).toNat

end

end A022414.P2393989647278560200

namespace A022414

/-- `A002251(A103517(n)-A060144(n))` -/
def P2393989647278560200.Spec : Prop :=
  ∀ n, P2393989647278560200.a n = A022414 n

end A022414

/-! ## A022414.P15967706568387315334

`A002251(A189662(n+1)+A057427(n))`
-/

namespace A022414.P15967706568387315334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A189662 (n + 1) + A057427 n).toNat

end

end A022414.P15967706568387315334

namespace A022414

/-- `A002251(A189662(n+1)+A057427(n))` -/
def P15967706568387315334.Spec : Prop :=
  ∀ n, P15967706568387315334.a n = A022414 n

end A022414

/-! ## A022414.P2031506821059169070

`A002251(A004956(n)+A020639(A008458(n)))`
-/

namespace A022414.P2031506821059169070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A004956 n + A020639 (A008458 n).toNat).toNat

end

end A022414.P2031506821059169070

namespace A022414

/-- `A002251(A004956(n)+A020639(A008458(n)))` -/
def P2031506821059169070.Spec : Prop :=
  ∀ n, P2031506821059169070.a n = A022414 n

end A022414

/-! ## A022414.P834303475998215691

`A073929(A001468(A002251(n))+A000201(n+1))`
-/

namespace A022414.P834303475998215691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A001468 (A002251 n).toNat + A000201 (n + 1)).toNat

end

end A022414.P834303475998215691

namespace A022414

/-- `A073929(A001468(A002251(n))+A000201(n+1))` -/
def P834303475998215691.Spec : Prop :=
  ∀ n, P834303475998215691.a n = A022414 n

end A022414

/-!
# A022415: Kim-sums: "Kimberling sums" K_n + K_4.

The programs for A022415, the canonical program `A022415.P15745490843547950395` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022415 has offset 0).

The definition of A022415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022415.P12892131544816656672

`floor(n*ϕ²)+8%(5*(2*n+1))`
-/

namespace A022415.P12892131544816656672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + ((8 % (5 * (2 * n + 1)) : ℕ) : ℤ)

end

end A022415.P12892131544816656672

namespace A022415

/-- `floor(n*ϕ²)+8%(5*(2*n+1))` -/
def P12892131544816656672.Spec : Prop :=
  ∀ n, P12892131544816656672.a n = A022415 n

end A022415

/-! ## A022415.P13506154345769505402

`ceil(ϕ*n)+5%(n+2)²+n+2`
-/

namespace A022415.P13506154345769505402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉ + ((5 % (n + 2) ^ 2 + (n + 2) : ℕ) : ℤ)

end

end A022415.P13506154345769505402

namespace A022415

/-- `ceil(ϕ*n)+5%(n+2)²+n+2` -/
def P13506154345769505402.Spec : Prop :=
  ∀ n, P13506154345769505402.a n = A022415 n

end A022415

/-! ## A022415.P5193198800817679023

`A022416(n)-A122553(n)`
-/

namespace A022415.P5193198800817679023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022416 n - A122553 n

end

end A022415.P5193198800817679023

namespace A022415

/-- `A022416(n)-A122553(n)` -/
def P5193198800817679023.Spec : Prop :=
  ∀ n, P5193198800817679023.a n = A022415 n

end A022415

/-! ## A022415.P15745490843547950395

`A374359(n+1)+A022413(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022415

/-- `A374359(n+1)+A022413(n)` -/
def P15745490843547950395.Spec : Prop :=
  ∀ n, P15745490843547950395.a n = A022415 n

theorem P15745490843547950395.correct : P15745490843547950395.Spec := by
  intro n
  simp only [A022415]

end A022415

/-! ## A022415.P2974504597496477016

`A022413(n)+A040006(n)-1`
-/

namespace A022415.P2974504597496477016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 n + (A040006 n - 1)

end

end A022415.P2974504597496477016

namespace A022415

/-- `A022413(n)+A040006(n)-1` -/
def P2974504597496477016.Spec : Prop :=
  ∀ n, P2974504597496477016.a n = A022415 n

end A022415

/-! ## A022415.P1418752641684732725

`A099267(n+1)+A020793(n)+n`
-/

namespace A022415.P1418752641684732725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1) + (A020793 n + (n : ℤ))

end

end A022415.P1418752641684732725

namespace A022415

/-- `A099267(n+1)+A020793(n)+n` -/
def P1418752641684732725.Spec : Prop :=
  ∀ n, P1418752641684732725.a n = A022415 n

end A022415

/-! ## A022415.P6476941596755037642

`A022413(n)+A001060(n²%(n+1))`
-/

namespace A022415.P6476941596755037642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 n + A001060 (n ^ 2 % (n + 1))

end

end A022415.P6476941596755037642

namespace A022415

/-- `A022413(n)+A001060(n²%(n+1))` -/
def P6476941596755037642.Spec : Prop :=
  ∀ n, P6476941596755037642.a n = A022415 n

end A022415

/-! ## A022415.P9678989099811596022

`A151574(A001316(n))+A022413(n)`
-/

namespace A022415.P9678989099811596022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 (A001316 n).toNat + A022413 n

end

end A022415.P9678989099811596022

namespace A022415

/-- `A151574(A001316(n))+A022413(n)` -/
def P9678989099811596022.Spec : Prop :=
  ∀ n, P9678989099811596022.a n = A022415 n

end A022415

/-! ## A022415.P13755609159823918906

`A004957(n)+A001348(A000032(floor(1/(n+1))))`
-/

namespace A022415.P13755609159823918906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n + A001348 (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat).toNat

end

end A022415.P13755609159823918906

namespace A022415

/-- `A004957(n)+A001348(A000032(floor(1/(n+1))))` -/
def P13755609159823918906.Spec : Prop :=
  ∀ n, P13755609159823918906.a n = A022415 n

end A022415

/-! ## A022415.P1799232719237658314

`A026356(n+1)+A001622(A026356(n+1)/A007066(n+1))`
-/

namespace A022415.P1799232719237658314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1) + A001622 ((SequenceMachineLib.roundAway ((A026356 (n + 1) : ℚ) / (A007066 (n + 1) : ℚ))).toNat + 1)

end

end A022415.P1799232719237658314

namespace A022415

/-- `A026356(n+1)+A001622(A026356(n+1)/A007066(n+1))` -/
def P1799232719237658314.Spec : Prop :=
  ∀ n, P1799232719237658314.a n = A022415 n

end A022415

/-! ## A022415.P6718509562802605938

`A040006(n)+A004956(A004956(n))`
-/

namespace A022415.P6718509562802605938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n + A004956 (A004956 n).toNat

end

end A022415.P6718509562802605938

namespace A022415

/-- `A040006(n)+A004956(A004956(n))` -/
def P6718509562802605938.Spec : Prop :=
  ∀ n, P6718509562802605938.a n = A022415 n

end A022415

/-! ## A022415.P6314032427258097540

`A020793(n)+A004956(A026351(n))`
-/

namespace A022415.P6314032427258097540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020793 n + A004956 (A026351 n).toNat

end

end A022415.P6314032427258097540

namespace A022415

/-- `A020793(n)+A004956(A026351(n))` -/
def P6314032427258097540.Spec : Prop :=
  ∀ n, P6314032427258097540.a n = A022415 n

end A022415

/-! ## A022415.P6989225664189192861

`A020793(n)+A005206(A047924(n))`
-/

namespace A022415.P6989225664189192861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020793 n + A005206 (A047924 n).toNat

end

end A022415.P6989225664189192861

namespace A022415

/-- `A020793(n)+A005206(A047924(n))` -/
def P6989225664189192861.Spec : Prop :=
  ∀ n, P6989225664189192861.a n = A022415 n

end A022415

/-! ## A022415.P8725602160884015984

`record[root(n+9, A014675(n))]`
-/

namespace A022415.P8725602160884015984
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℝ) ^ (1 / (A014675 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022415.P8725602160884015984

namespace A022415

/-- `record[root(n+9, A014675(n))]` -/
def P8725602160884015984.Spec : Prop :=
  ∀ n, P8725602160884015984.a n = (A022415 n : ℝ)

end A022415

/-! ## A022415.P9453714013988045286

`record[A054088(Δ[n-A003849(n)]+1)+1+n]`
-/

namespace A022415.P9453714013988045286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003849 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054088 (f2 (n + 1) - f2 n + 1).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022415.P9453714013988045286

namespace A022415

/-- `record[A054088(Δ[n-A003849(n)]+1)+1+n]` -/
def P9453714013988045286.Spec : Prop :=
  ∀ n, P9453714013988045286.a n = A022415 n

end A022415

/-! ## A022415.P9254955377821106055

`A107820(A022413(n))`
-/

namespace A022415.P9254955377821106055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107820 (A022413 n).toNat

end

end A022415.P9254955377821106055

namespace A022415

/-- `A107820(A022413(n))` -/
def P9254955377821106055.Spec : Prop :=
  ∀ n, P9254955377821106055.a n = A022415 n

end A022415

/-! ## A022415.P2144829392332280465

`A040006(n)-A024000(A022413(n))`
-/

namespace A022415.P2144829392332280465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n - A024000 (A022413 n).toNat

end

end A022415.P2144829392332280465

namespace A022415

/-- `A040006(n)-A024000(A022413(n))` -/
def P2144829392332280465.Spec : Prop :=
  ∀ n, P2144829392332280465.a n = A022415 n

end A022415

/-!
# A022416: Kim-sums: "Kimberling sums" K_n + K_5.

The programs for A022416, the canonical program `A022416.P16872466725811465008` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022416 has offset 0).

The definition of A022416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022416.P4195109435786691111

`A122553(n)+A022415(n)`
-/

namespace A022416.P4195109435786691111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + A022415 n

end

end A022416.P4195109435786691111

namespace A022416

/-- `A122553(n)+A022415(n)` -/
def P4195109435786691111.Spec : Prop :=
  ∀ n, P4195109435786691111.a n = A022416 n

end A022416

/-! ## A022416.P11789471519187971092

`A022418(n)+1-A040006(n)`
-/

namespace A022416.P11789471519187971092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022418 n + (1 - A040006 n)

end

end A022416.P11789471519187971092

namespace A022416

/-- `A022418(n)+1-A040006(n)` -/
def P11789471519187971092.Spec : Prop :=
  ∀ n, P11789471519187971092.a n = A022416 n

end A022416

/-! ## A022416.P11868066831639020803

`A022418(n)-A374359(n+1)`
-/

namespace A022416.P11868066831639020803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022418 n - A374359 (n + 1)

end

end A022416.P11868066831639020803

namespace A022416

/-- `A022418(n)-A374359(n+1)` -/
def P11868066831639020803.Spec : Prop :=
  ∀ n, P11868066831639020803.a n = A022416 n

end A022416

/-! ## A022416.P11917067992457821368

`2*A022418(n)-A022420(n)`
-/

namespace A022416.P11917067992457821368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022418 n - A022420 n

end

end A022416.P11917067992457821368

namespace A022416

/-- `2*A022418(n)-A022420(n)` -/
def P11917067992457821368.Spec : Prop :=
  ∀ n, P11917067992457821368.a n = A022416 n

end A022416

/-! ## A022416.P16872466725811465008

`A022415(n)+A048883(n)%6`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022416

/-- `A022415(n)+A048883(n)%6` -/
def P16872466725811465008.Spec : Prop :=
  ∀ n, P16872466725811465008.a n = A022416 n

theorem P16872466725811465008.correct : P16872466725811465008.Spec := by
  intro n
  simp only [A022416]

end A022416

/-! ## A022416.P6829555130573947741

`A323237(2*n+1)+A022415(n)`
-/

namespace A022416.P6829555130573947741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323237 (2 * n + 1) + A022415 n

end

end A022416.P6829555130573947741

namespace A022416

/-- `A323237(2*n+1)+A022415(n)` -/
def P6829555130573947741.Spec : Prop :=
  ∀ n, P6829555130573947741.a n = A022416 n

end A022416

/-! ## A022416.P10084504651405968833

`A022420(n)-2*A374359(n+1)`
-/

namespace A022416.P10084504651405968833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022420 n - 2 * A374359 (n + 1)

end

end A022416.P10084504651405968833

namespace A022416

/-- `A022420(n)-2*A374359(n+1)` -/
def P10084504651405968833.Spec : Prop :=
  ∀ n, P10084504651405968833.a n = A022416 n

end A022416

/-! ## A022416.P15750091037144678378

`A048250(A001316(n))+A022415(n)`
-/

namespace A022416.P15750091037144678378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A001316 n).toNat + A022415 n

end

end A022416.P15750091037144678378

namespace A022416

/-- `A048250(A001316(n))+A022415(n)` -/
def P15750091037144678378.Spec : Prop :=
  ∀ n, P15750091037144678378.a n = A022416 n

end A022416

/-! ## A022416.P2973097100550131556

`A022418(n)-A151574(A001316(n))`
-/

namespace A022416.P2973097100550131556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022418 n - A151574 (A001316 n).toNat

end

end A022416.P2973097100550131556

namespace A022416

/-- `A022418(n)-A151574(A001316(n))` -/
def P2973097100550131556.Spec : Prop :=
  ∀ n, P2973097100550131556.a n = A022416 n

end A022416

/-! ## A022416.P13029743822132535812

`A269733(A022423(n)-A022413(n))+A022413(n)`
-/

namespace A022416.P13029743822132535812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269733 (A022423 n - A022413 n).toNat + A022413 n

end

end A022416.P13029743822132535812

namespace A022416

/-- `A269733(A022423(n)-A022413(n))+A022413(n)` -/
def P13029743822132535812.Spec : Prop :=
  ∀ n, P13029743822132535812.a n = A022416 n

end A022416

/-! ## A022416.P13756814457338307071

`A022415(n)+A014963(A132171(n))`
-/

namespace A022416.P13756814457338307071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022415 n + A014963 (A132171 n).toNat

end

end A022416.P13756814457338307071

namespace A022416

/-- `A022415(n)+A014963(A132171(n))` -/
def P13756814457338307071.Spec : Prop :=
  ∀ n, P13756814457338307071.a n = A022416 n

end A022416

/-! ## A022416.P2994561289024628031

`A158478(2*n+1)+A022415(n)`
-/

namespace A022416.P2994561289024628031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (2 * n + 1) + A022415 n

end

end A022416.P2994561289024628031

namespace A022416

/-- `A158478(2*n+1)+A022415(n)` -/
def P2994561289024628031.Spec : Prop :=
  ∀ n, P2994561289024628031.a n = A022416 n

end A022416

/-! ## A022416.P6709600270049548734

`A233334(A022415(n))`
-/

namespace A022416.P6709600270049548734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233334 (A022415 n).toNat

end

end A022416.P6709600270049548734

namespace A022416

/-- `A233334(A022415(n))` -/
def P6709600270049548734.Spec : Prop :=
  ∀ n, P6709600270049548734.a n = A022416 n

end A022416

/-! ## A022416.P3033146127294691008

`A189662(A022415(n))-A189662(n+1)`
-/

namespace A022416.P3033146127294691008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (A022415 n).toNat - A189662 (n + 1)

end

end A022416.P3033146127294691008

namespace A022416

/-- `A189662(A022415(n))-A189662(n+1)` -/
def P3033146127294691008.Spec : Prop :=
  ∀ n, P3033146127294691008.a n = A022416 n

end A022416

/-! ## A022416.P17798551134468642110

`2-A024000(A022418(n)-A040006(n))`
-/

namespace A022416.P17798551134468642110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (A022418 n - A040006 n).toNat

end

end A022416.P17798551134468642110

namespace A022416

/-- `2-A024000(A022418(n)-A040006(n))` -/
def P17798551134468642110.Spec : Prop :=
  ∀ n, P17798551134468642110.a n = A022416 n

end A022416

/-! ## A022416.P12435912999800126724

`A022415(n)+A014963(A048883(n))`
-/

namespace A022416.P12435912999800126724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022415 n + A014963 (A048883 n).toNat

end

end A022416.P12435912999800126724

namespace A022416

/-- `A022415(n)+A014963(A048883(n))` -/
def P12435912999800126724.Spec : Prop :=
  ∀ n, P12435912999800126724.a n = A022416 n

end A022416

/-! ## A022416.P17652128855701234588

`A007066(n+1)+9%A183603(n+1)`
-/

namespace A022416.P17652128855701234588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) + Int.tmod 9 (A183603 (n + 1))

end

end A022416.P17652128855701234588

namespace A022416

/-- `A007066(n+1)+9%A183603(n+1)` -/
def P17652128855701234588.Spec : Prop :=
  ∀ n, P17652128855701234588.a n = A022416 n

end A022416

/-! ## A022416.P15018940488078112243

`A158405(A133263(n))+A022415(n)`
-/

namespace A022416.P15018940488078112243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A133263 n).toNat + A022415 n

end

end A022416.P15018940488078112243

namespace A022416

/-- `A158405(A133263(n))+A022415(n)` -/
def P15018940488078112243.Spec : Prop :=
  ∀ n, P15018940488078112243.a n = A022416 n

end A022416

/-! ## A022416.P1448220674734310041

`A189662(A188010(2*(n+1))+A026549(2*n)%10)-A189662(n+1)`
-/

namespace A022416.P1448220674734310041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (A188010 (2 * (n + 1)) + Int.tmod (A026549 (2 * n)) 10).toNat - A189662 (n + 1)

end

end A022416.P1448220674734310041

namespace A022416

/-- `A189662(A188010(2*(n+1))+A026549(2*n)%10)-A189662(n+1)` -/
def P1448220674734310041.Spec : Prop :=
  ∀ n, P1448220674734310041.a n = A022416 n

end A022416

/-!
# A022417: Kim-sums: "Kimberling sums" K_n + K_6.

The programs for A022417, the canonical program `A022417.P10626180340282099604` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022417 has offset 0).

The definition of A022417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022417.P7708903531160825567

`A073929(floor(n*ϕ²)+8%(5*(2*n+1))-n)`
-/

namespace A022417.P7708903531160825567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + ((8 % (5 * (2 * n + 1)) : ℕ) : ℤ) - (n : ℤ)).toNat

end

end A022417.P7708903531160825567

namespace A022417

/-- `A073929(floor(n*ϕ²)+8%(5*(2*n+1))-n)` -/
def P7708903531160825567.Spec : Prop :=
  ∀ n, P7708903531160825567.a n = A022417 n

end A022417

/-! ## A022417.P10626180340282099604

`A002251(A022415(n)-n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022417

/-- `A002251(A022415(n)-n)` -/
def P10626180340282099604.Spec : Prop :=
  ∀ n, P10626180340282099604.a n = A022417 n

theorem P10626180340282099604.correct : P10626180340282099604.Spec := by
  intro n
  simp only [A022417]

end A022417

/-! ## A022417.P11288049818793503834

`A073929(A022415(n)-n)`
-/

namespace A022417.P11288049818793503834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A022415 n - (n : ℤ)).toNat

end

end A022417.P11288049818793503834

namespace A022417

/-- `A073929(A022415(n)-n)` -/
def P11288049818793503834.Spec : Prop :=
  ∀ n, P11288049818793503834.a n = A022417 n

end A022417

/-! ## A022417.P8083950099470373628

`A002251(A099267(n+1)+A020793(n))`
-/

namespace A022417.P8083950099470373628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A099267 (n + 1) + A020793 n).toNat

end

end A022417.P8083950099470373628

namespace A022417

/-- `A002251(A099267(n+1)+A020793(n))` -/
def P8083950099470373628.Spec : Prop :=
  ∀ n, P8083950099470373628.a n = A022417 n

end A022417

/-! ## A022417.P16753717991352077769

`A073929(A099267(n+1)+A020793(n))`
-/

namespace A022417.P16753717991352077769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A099267 (n + 1) + A020793 n).toNat

end

end A022417.P16753717991352077769

namespace A022417

/-- `A073929(A099267(n+1)+A020793(n))` -/
def P16753717991352077769.Spec : Prop :=
  ∀ n, P16753717991352077769.a n = A022417 n

end A022417

/-! ## A022417.P4056517829680367896

`A002251(A259556(∑[n+3])-2)`
-/

namespace A022417.P4056517829680367896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A259556 (∑ j ∈ Finset.range (n + 1), f1 j) - 2).toNat

end

end A022417.P4056517829680367896

namespace A022417

/-- `A002251(A259556(∑[n+3])-2)` -/
def P4056517829680367896.Spec : Prop :=
  ∀ n, P4056517829680367896.a n = A022417 n

end A022417

/-!
# A022418: Kim-sums: "Kimberling sums" K_n + K_7.

The programs for A022418, the canonical program `A022418.P17547468247049899946` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022418 has offset 0).

The definition of A022418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022418.P17547468247049899946

`A374359(n+1)+A022416(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022418

/-- `A374359(n+1)+A022416(n)` -/
def P17547468247049899946.Spec : Prop :=
  ∀ n, P17547468247049899946.a n = A022418 n

theorem P17547468247049899946.correct : P17547468247049899946.Spec := by
  intro n
  simp only [A022418]

end A022418

/-! ## A022418.P6683227892444786585

`A022416(n)+A040006(n)-1`
-/

namespace A022418.P6683227892444786585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022416 n + (A040006 n - 1)

end

end A022418.P6683227892444786585

namespace A022418

/-- `A022416(n)+A040006(n)-1` -/
def P6683227892444786585.Spec : Prop :=
  ∀ n, P6683227892444786585.a n = A022418 n

end A022418

/-! ## A022418.P4168929359267665787

`A022420(n)-A374359(n+1)`
-/

namespace A022418.P4168929359267665787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022420 n - A374359 (n + 1)

end

end A022418.P4168929359267665787

namespace A022418

/-- `A022420(n)-A374359(n+1)` -/
def P4168929359267665787.Spec : Prop :=
  ∀ n, P4168929359267665787.a n = A022418 n

end A022418

/-! ## A022418.P8557797348961381893

`A004957(n)+A040072(n)-3`
-/

namespace A022418.P8557797348961381893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n + (A040072 n - 3)

end

end A022418.P8557797348961381893

namespace A022418

/-- `A004957(n)+A040072(n)-3` -/
def P8557797348961381893.Spec : Prop :=
  ∀ n, P8557797348961381893.a n = A022418 n

end A022418

/-! ## A022418.P857356164088349673

`(A022420(n)+A022416(n))/2`
-/

namespace A022418.P857356164088349673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022420 n + A022416 n : ℚ) / 2

end

end A022418.P857356164088349673

namespace A022418

/-- `(A022420(n)+A022416(n))/2` -/
def P857356164088349673.Spec : Prop :=
  ∀ n, P857356164088349673.a n = (A022418 n : ℚ)

end A022418

/-! ## A022418.P16544822979356656084

`(A022423(n)+A022413(n))/2`
-/

namespace A022418.P16544822979356656084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022423 n + A022413 n : ℚ) / 2

end

end A022418.P16544822979356656084

namespace A022418

/-- `(A022423(n)+A022413(n))/2` -/
def P16544822979356656084.Spec : Prop :=
  ∀ n, P16544822979356656084.a n = (A022418 n : ℚ)

end A022418

/-! ## A022418.P13700470419876541557

`A022416(n)+5%A022415(n)`
-/

namespace A022418.P13700470419876541557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022416 n + Int.tmod 5 (A022415 n)

end

end A022418.P13700470419876541557

namespace A022418

/-- `A022416(n)+5%A022415(n)` -/
def P13700470419876541557.Spec : Prop :=
  ∀ n, P13700470419876541557.a n = A022418 n

end A022418

/-! ## A022418.P17798034391443172961

`A022415(n)+8%A022417(n)`
-/

namespace A022418.P17798034391443172961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022415 n + Int.tmod 8 (A022417 n)

end

end A022418.P17798034391443172961

namespace A022418

/-- `A022415(n)+8%A022417(n)` -/
def P17798034391443172961.Spec : Prop :=
  ∀ n, P17798034391443172961.a n = A022418 n

end A022418

/-! ## A022418.P13851231834298908673

`A151574(A001316(n))+A022416(n)`
-/

namespace A022418.P13851231834298908673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 (A001316 n).toNat + A022416 n

end

end A022418.P13851231834298908673

namespace A022418

/-- `A151574(A001316(n))+A022416(n)` -/
def P13851231834298908673.Spec : Prop :=
  ∀ n, P13851231834298908673.a n = A022418 n

end A022418

/-! ## A022418.P16822546702052615919

`A022415(n)+A022416(n)-A022413(n)`
-/

namespace A022418.P16822546702052615919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022415 n + (A022416 n - A022413 n)

end

end A022418.P16822546702052615919

namespace A022418

/-- `A022415(n)+A022416(n)-A022413(n)` -/
def P16822546702052615919.Spec : Prop :=
  ∀ n, P16822546702052615919.a n = A022418 n

end A022418

/-! ## A022418.P11772840844655302587

`A006094(A000032(C(2, n+2)))+A004957(n)`
-/

namespace A022418.P11772840844655302587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A000032 (Nat.choose 2 (n + 2))).toNat + A004957 n

end

end A022418.P11772840844655302587

namespace A022418

/-- `A006094(A000032(C(2, n+2)))+A004957(n)` -/
def P11772840844655302587.Spec : Prop :=
  ∀ n, P11772840844655302587.a n = A022418 n

end A022418

/-! ## A022418.P4188855576699146652

`A022423(n)-A052938(A022423(n)-A022415(n))`
-/

namespace A022418.P4188855576699146652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022423 n - A052938 (A022423 n - A022415 n).toNat

end

end A022418.P4188855576699146652

namespace A022418

/-- `A022423(n)-A052938(A022423(n)-A022415(n))` -/
def P4188855576699146652.Spec : Prop :=
  ∀ n, P4188855576699146652.a n = A022418 n

end A022418

/-! ## A022418.P3932580262213468076

`A040006(n)-A024000(A022416(n))`
-/

namespace A022418.P3932580262213468076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n - A024000 (A022416 n).toNat

end

end A022418.P3932580262213468076

namespace A022418

/-- `A040006(n)-A024000(A022416(n))` -/
def P3932580262213468076.Spec : Prop :=
  ∀ n, P3932580262213468076.a n = A022418 n

end A022418

/-!
# A022419: Kim-sums: "Kimberling sums" K_n + K_8.

The programs for A022419, the canonical program `A022419.P10055904053497005654` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022419 has offset 0).

The definition of A022419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022419.P10055904053497005654

`A002251(A022416(n)-n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022419

/-- `A002251(A022416(n)-n)` -/
def P10055904053497005654.Spec : Prop :=
  ∀ n, P10055904053497005654.a n = A022419 n

theorem P10055904053497005654.correct : P10055904053497005654.Spec := by
  intro n
  simp only [A022419]

end A022419

/-! ## A022419.P12824171379844716035

`A073929(A022416(n)-n)`
-/

namespace A022419.P12824171379844716035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A022416 n - (n : ℤ)).toNat

end

end A022419.P12824171379844716035

namespace A022419

/-- `A073929(A022416(n)-n)` -/
def P12824171379844716035.Spec : Prop :=
  ∀ n, P12824171379844716035.a n = A022419 n

end A022419

/-! ## A022419.P12038914231606064401

`A002251(A022415(n)+A122553(n)-n)`
-/

namespace A022419.P12038914231606064401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A022415 n + (A122553 n - (n : ℤ))).toNat

end

end A022419.P12038914231606064401

namespace A022419

/-- `A002251(A022415(n)+A122553(n)-n)` -/
def P12038914231606064401.Spec : Prop :=
  ∀ n, P12038914231606064401.a n = A022419 n

end A022419

/-! ## A022419.P7101377981277548186

`A073929(A022415(n)+A122553(n)-n)`
-/

namespace A022419.P7101377981277548186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A022415 n + (A122553 n - (n : ℤ))).toNat

end

end A022419.P7101377981277548186

namespace A022419

/-- `A073929(A022415(n)+A122553(n)-n)` -/
def P7101377981277548186.Spec : Prop :=
  ∀ n, P7101377981277548186.a n = A022419 n

end A022419

/-! ## A022419.P12896021405918772033

`A002251(A022415(n)-(n-A122553(n)))`
-/

namespace A022419.P12896021405918772033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A022415 n - ((n : ℤ) - A122553 n)).toNat

end

end A022419.P12896021405918772033

namespace A022419

/-- `A002251(A022415(n)-(n-A122553(n)))` -/
def P12896021405918772033.Spec : Prop :=
  ∀ n, P12896021405918772033.a n = A022419 n

end A022419

/-! ## A022419.P7393184528036827048

`A073929(A022415(n)-(n-A122553(n)))`
-/

namespace A022419.P7393184528036827048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A022415 n - ((n : ℤ) - A122553 n)).toNat

end

end A022419.P7393184528036827048

namespace A022419

/-- `A073929(A022415(n)-(n-A122553(n)))` -/
def P7393184528036827048.Spec : Prop :=
  ∀ n, P7393184528036827048.a n = A022419 n

end A022419

/-! ## A022419.P12136411226920760705

`A002251(A022415(n)+A048883(n)%6-n)`
-/

namespace A022419.P12136411226920760705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A022415 n + Int.tmod (A048883 n) 6 - (n : ℤ)).toNat

end

end A022419.P12136411226920760705

namespace A022419

/-- `A002251(A022415(n)+A048883(n)%6-n)` -/
def P12136411226920760705.Spec : Prop :=
  ∀ n, P12136411226920760705.a n = A022419 n

end A022419

/-!
# A022420: Kim-sums: "Kimberling sums" K_n + K_9.

The programs for A022420, the canonical program `A022420.P7849113528763956981` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022420 has offset 0).

The definition of A022420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022420.P16925676387305529246

`A022421(n)-A122553(n)`
-/

namespace A022420.P16925676387305529246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022421 n - A122553 n

end

end A022420.P16925676387305529246

namespace A022420

/-- `A022421(n)-A122553(n)` -/
def P16925676387305529246.Spec : Prop :=
  ∀ n, P16925676387305529246.a n = A022420 n

end A022420

/-! ## A022420.P7849113528763956981

`A374359(n+1)+A022418(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A022420

/-- `A374359(n+1)+A022418(n)` -/
def P7849113528763956981.Spec : Prop :=
  ∀ n, P7849113528763956981.a n = A022420 n

theorem P7849113528763956981.correct : P7849113528763956981.Spec := by
  intro n
  simp only [A022420]

end A022420

/-! ## A022420.P10778416438072908904

`A022418(n)+A040006(n)-1`
-/

namespace A022420.P10778416438072908904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022418 n + (A040006 n - 1)

end

end A022420.P10778416438072908904

namespace A022420

/-- `A022418(n)+A040006(n)-1` -/
def P10778416438072908904.Spec : Prop :=
  ∀ n, P10778416438072908904.a n = A022420 n

end A022420

/-! ## A022420.P6764721339726259241

`2*A022416(n)-A004957(n)`
-/

namespace A022420.P6764721339726259241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022416 n - A004957 n

end

end A022420.P6764721339726259241

namespace A022420

/-- `2*A022416(n)-A004957(n)` -/
def P6764721339726259241.Spec : Prop :=
  ∀ n, P6764721339726259241.a n = A022420 n

end A022420

/-! ## A022420.P15240040014464575208

`2*A022418(n)-A022416(n)`
-/

namespace A022420.P15240040014464575208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022418 n - A022416 n

end

end A022420.P15240040014464575208

namespace A022420

/-- `2*A022418(n)-A022416(n)` -/
def P15240040014464575208.Spec : Prop :=
  ∀ n, P15240040014464575208.a n = A022420 n

end A022420

/-! ## A022420.P16066846500987190936

`A022416(n)+2*A374359(n+1)`
-/

namespace A022420.P16066846500987190936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022416 n + 2 * A374359 (n + 1)

end

end A022420.P16066846500987190936

namespace A022420

/-- `A022416(n)+2*A374359(n+1)` -/
def P16066846500987190936.Spec : Prop :=
  ∀ n, P16066846500987190936.a n = A022420 n

end A022420

/-! ## A022420.P3959609949488393293

`A151574(A001316(n))+A022418(n)`
-/

namespace A022420.P3959609949488393293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 (A001316 n).toNat + A022418 n

end

end A022420.P3959609949488393293

namespace A022420

/-- `A151574(A001316(n))+A022418(n)` -/
def P3959609949488393293.Spec : Prop :=
  ∀ n, P3959609949488393293.a n = A022420 n

end A022420

/-! ## A022420.P1295731013154842360

`A022416(n)+2*A151574(A001316(n))`
-/

namespace A022420.P1295731013154842360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022416 n + 2 * A151574 (A001316 n).toNat

end

end A022420.P1295731013154842360

namespace A022420

/-- `A022416(n)+2*A151574(A001316(n))` -/
def P1295731013154842360.Spec : Prop :=
  ∀ n, P1295731013154842360.a n = A022420 n

end A022420

/-! ## A022420.P12480651885121930401

`A022413(n)+A022423(n)-A022416(n)`
-/

namespace A022420.P12480651885121930401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 n + (A022423 n - A022416 n)

end

end A022420.P12480651885121930401

namespace A022420

/-- `A022413(n)+A022423(n)-A022416(n)` -/
def P12480651885121930401.Spec : Prop :=
  ∀ n, P12480651885121930401.a n = A022420 n

end A022420

/-! ## A022420.P16512256827061335347

`A022415(n)+A022423(n)-A022418(n)`
-/

namespace A022420.P16512256827061335347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022415 n + (A022423 n - A022418 n)

end

end A022420.P16512256827061335347

namespace A022420

/-- `A022415(n)+A022423(n)-A022418(n)` -/
def P16512256827061335347.Spec : Prop :=
  ∀ n, P16512256827061335347.a n = A022420 n

end A022420

/-! ## A022420.P2031191993665775488

`A005843(A022416(n)-A004957(n))+A004957(n)`
-/

namespace A022420.P2031191993665775488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A022416 n - A004957 n).toNat + A004957 n

end

end A022420.P2031191993665775488

namespace A022420

/-- `A005843(A022416(n)-A004957(n))+A004957(n)` -/
def P2031191993665775488.Spec : Prop :=
  ∀ n, P2031191993665775488.a n = A022420 n

end A022420

/-! ## A022420.P9532965539081551659

`A022416(n)+A005843(A022418(n)-A022416(n))`
-/

namespace A022420.P9532965539081551659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022416 n + A005843 (A022418 n - A022416 n).toNat

end

end A022420.P9532965539081551659

namespace A022420

/-- `A022416(n)+A005843(A022418(n)-A022416(n))` -/
def P9532965539081551659.Spec : Prop :=
  ∀ n, P9532965539081551659.a n = A022420 n

end A022420

/-! ## A022420.P3267214955729600807

`A022416(n)+A008619(A022423(n)-A022416(n))`
-/

namespace A022420.P3267214955729600807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022416 n + A008619 (A022423 n - A022416 n).toNat

end

end A022420.P3267214955729600807

namespace A022420

/-- `A022416(n)+A008619(A022423(n)-A022416(n))` -/
def P3267214955729600807.Spec : Prop :=
  ∀ n, P3267214955729600807.a n = A022420 n

end A022420

/-! ## A022420.P12096139425941157739

`A052938(A022423(n)-A022415(n))+A022415(n)`
-/

namespace A022420.P12096139425941157739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A022423 n - A022415 n).toNat + A022415 n

end

end A022420.P12096139425941157739

namespace A022420

/-- `A052938(A022423(n)-A022415(n))+A022415(n)` -/
def P12096139425941157739.Spec : Prop :=
  ∀ n, P12096139425941157739.a n = A022420 n

end A022420

/-! ## A022420.P13691714931921746545

`A022423(n)-A269733(A022423(n)-A022413(n))`
-/

namespace A022420.P13691714931921746545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022423 n - A269733 (A022423 n - A022413 n).toNat

end

end A022420.P13691714931921746545

namespace A022420

/-- `A022423(n)-A269733(A022423(n)-A022413(n))` -/
def P13691714931921746545.Spec : Prop :=
  ∀ n, P13691714931921746545.a n = A022420 n

end A022420

/-! ## A022420.P3088101700981957164

`A005843(A022416(n))-A004957(n)`
-/

namespace A022420.P3088101700981957164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A022416 n).toNat - A004957 n

end

end A022420.P3088101700981957164

namespace A022420

/-- `A005843(A022416(n))-A004957(n)` -/
def P3088101700981957164.Spec : Prop :=
  ∀ n, P3088101700981957164.a n = A022420 n

end A022420

/-! ## A022420.P13895879959934650349

`A005843(A022418(n))-A022416(n)`
-/

namespace A022420.P13895879959934650349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A022418 n).toNat - A022416 n

end

end A022420.P13895879959934650349

namespace A022420

/-- `A005843(A022418(n))-A022416(n)` -/
def P13895879959934650349.Spec : Prop :=
  ∀ n, P13895879959934650349.a n = A022420 n

end A022420

/-! ## A022420.P11745059061757486825

`A040006(n)-A024000(A022418(n))`
-/

namespace A022420.P11745059061757486825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n - A024000 (A022418 n).toNat

end

end A022420.P11745059061757486825

namespace A022420

/-- `A040006(n)-A024000(A022418(n))` -/
def P11745059061757486825.Spec : Prop :=
  ∀ n, P11745059061757486825.a n = A022420 n

end A022420

/-! ## A022420.P2297965676892420468

`A008619(A022423(n)+A022416(n))`
-/

namespace A022420.P2297965676892420468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022423 n + A022416 n).toNat

end

end A022420.P2297965676892420468

namespace A022420

/-- `A008619(A022423(n)+A022416(n))` -/
def P2297965676892420468.Spec : Prop :=
  ∀ n, P2297965676892420468.a n = A022420 n

end A022420

/-! ## A022420.P14875702493956140035

`A052938(A022423(n)+A022415(n))`
-/

namespace A022420.P14875702493956140035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A022423 n + A022415 n).toNat

end

end A022420.P14875702493956140035

namespace A022420

/-- `A052938(A022423(n)+A022415(n))` -/
def P14875702493956140035.Spec : Prop :=
  ∀ n, P14875702493956140035.a n = A022420 n

end A022420

/-!
# A022421: Kim-sums: "Kimberling sums" K_n + K_10.

The programs for A022421, the canonical program `A022421.P11986416629293601571` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022421 has offset 0).

The definition of A022421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022421.P2503620073811759157

`A122553(n)+A022420(n)`
-/

namespace A022421.P2503620073811759157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + A022420 n

end

end A022421.P2503620073811759157

namespace A022421

/-- `A122553(n)+A022420(n)` -/
def P2503620073811759157.Spec : Prop :=
  ∀ n, P2503620073811759157.a n = A022421 n

end A022421

/-! ## A022421.P2599869771740777726

`A022423(n)-A374359(n+1)`
-/

namespace A022421.P2599869771740777726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022423 n - A374359 (n + 1)

end

end A022421.P2599869771740777726

namespace A022421

/-- `A022423(n)-A374359(n+1)` -/
def P2599869771740777726.Spec : Prop :=
  ∀ n, P2599869771740777726.a n = A022421 n

end A022421

/-! ## A022421.P11986416629293601571

`2*A022418(n)-A022415(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A022421

/-- `2*A022418(n)-A022415(n)` -/
def P11986416629293601571.Spec : Prop :=
  ∀ n, P11986416629293601571.a n = A022421 n

theorem P11986416629293601571.correct : P11986416629293601571.Spec := by
  intro n
  simp only [A022421]

end A022421

/-! ## A022421.P7073639607639491903

`A022420(n)+3%A011532(n+1)`
-/

namespace A022421.P7073639607639491903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022420 n + Int.tmod 3 (A011532 (n + 1))

end

end A022421.P7073639607639491903

namespace A022421

/-- `A022420(n)+3%A011532(n+1)` -/
def P7073639607639491903.Spec : Prop :=
  ∀ n, P7073639607639491903.a n = A022421 n

end A022421

/-! ## A022421.P1952080742850196827

`A022423(n)-A151574(A001316(n))`
-/

namespace A022421.P1952080742850196827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022423 n - A151574 (A001316 n).toNat

end

end A022421.P1952080742850196827

namespace A022421

/-- `A022423(n)-A151574(A001316(n))` -/
def P1952080742850196827.Spec : Prop :=
  ∀ n, P1952080742850196827.a n = A022421 n

end A022421

/-! ## A022421.P14074598552391881402

`A022413(n)+A022423(n)-A022415(n)`
-/

namespace A022421.P14074598552391881402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 n + (A022423 n - A022415 n)

end

end A022421.P14074598552391881402

namespace A022421

/-- `A022413(n)+A022423(n)-A022415(n)` -/
def P14074598552391881402.Spec : Prop :=
  ∀ n, P14074598552391881402.a n = A022421 n

end A022421

/-! ## A022421.P7785877106694742336

`A022420(n)+A014963(A132171(n))`
-/

namespace A022421.P7785877106694742336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022420 n + A014963 (A132171 n).toNat

end

end A022421.P7785877106694742336

namespace A022421

/-- `A022420(n)+A014963(A132171(n))` -/
def P7785877106694742336.Spec : Prop :=
  ∀ n, P7785877106694742336.a n = A022421 n

end A022421

/-! ## A022421.P15147302431897275609

`A005843(A022418(n))-A022415(n)`
-/

namespace A022421.P15147302431897275609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A022418 n).toNat - A022415 n

end

end A022421.P15147302431897275609

namespace A022421

/-- `A005843(A022418(n))-A022415(n)` -/
def P15147302431897275609.Spec : Prop :=
  ∀ n, P15147302431897275609.a n = A022421 n

end A022421

/-! ## A022421.P11966181732515476386

`A022420(n)+A014963(A048883(n))`
-/

namespace A022421.P11966181732515476386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022420 n + A014963 (A048883 n).toNat

end

end A022421.P11966181732515476386

namespace A022421

/-- `A022420(n)+A014963(A048883(n))` -/
def P11966181732515476386.Spec : Prop :=
  ∀ n, P11966181732515476386.a n = A022421 n

end A022421

/-!
# A022422: Kim-sums: "Kimberling sums" K_n + K_11.

The programs for A022422, the canonical program `A022422.P1741204150297171016` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022422 has offset 0).

The definition of A022422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022422.P1741204150297171016

`A002251(A022418(n)-n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A022422

/-- `A002251(A022418(n)-n)` -/
def P1741204150297171016.Spec : Prop :=
  ∀ n, P1741204150297171016.a n = A022422 n

theorem P1741204150297171016.correct : P1741204150297171016.Spec := by
  intro n
  simp only [A022422]

end A022422

/-! ## A022422.P16308009518989920593

`A073929(A022418(n)-n)`
-/

namespace A022422.P16308009518989920593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (A022418 n - (n : ℤ)).toNat

end

end A022422.P16308009518989920593

namespace A022422

/-- `A073929(A022418(n)-n)` -/
def P16308009518989920593.Spec : Prop :=
  ∀ n, P16308009518989920593.a n = A022422 n

end A022422

/-!
# A022423: Kim-sums: "Kimberling sums" K_n + K_12.

The programs for A022423, the canonical program `A022423.P3878848537184093492` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022423 has offset 0).

The definition of A022423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022423.P3878848537184093492

`A374359(n+1)+A022421(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A022423

/-- `A374359(n+1)+A022421(n)` -/
def P3878848537184093492.Spec : Prop :=
  ∀ n, P3878848537184093492.a n = A022423 n

theorem P3878848537184093492.correct : P3878848537184093492.Spec := by
  intro n
  simp only [A022423]

end A022423

/-! ## A022423.P15658089662166041455

`A020793(n)+A022420(n)+2`
-/

namespace A022423.P15658089662166041455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020793 n + (A022420 n + 2)

end

end A022423.P15658089662166041455

namespace A022423

/-- `A020793(n)+A022420(n)+2` -/
def P15658089662166041455.Spec : Prop :=
  ∀ n, P15658089662166041455.a n = A022423 n

end A022423

/-! ## A022423.P5592935518756232027

`A022421(n)+A040006(n)-1`
-/

namespace A022423.P5592935518756232027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022421 n + (A040006 n - 1)

end

end A022423.P5592935518756232027

namespace A022423

/-- `A022421(n)+A040006(n)-1` -/
def P5592935518756232027.Spec : Prop :=
  ∀ n, P5592935518756232027.a n = A022423 n

end A022423

/-! ## A022423.P9989148775827424400

`2*A022418(n)-A022413(n)`
-/

namespace A022423.P9989148775827424400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022418 n - A022413 n

end

end A022423.P9989148775827424400

namespace A022423

/-- `2*A022418(n)-A022413(n)` -/
def P9989148775827424400.Spec : Prop :=
  ∀ n, P9989148775827424400.a n = A022423 n

end A022423

/-! ## A022423.P11286721709567261992

`A004957(n)+A040272(n)-6`
-/

namespace A022423.P11286721709567261992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n + (A040272 n - 6)

end

end A022423.P11286721709567261992

namespace A022423

/-- `A004957(n)+A040272(n)-6` -/
def P11286721709567261992.Spec : Prop :=
  ∀ n, P11286721709567261992.a n = A022423 n

end A022423

/-! ## A022423.P4868888512108074805

`A022420(n)+8%A022417(n)`
-/

namespace A022423.P4868888512108074805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022420 n + Int.tmod 8 (A022417 n)

end

end A022423.P4868888512108074805

namespace A022423

/-- `A022420(n)+8%A022417(n)` -/
def P4868888512108074805.Spec : Prop :=
  ∀ n, P4868888512108074805.a n = A022423 n

end A022423

/-! ## A022423.P12019739212581596517

`A022418(n)+13%A022420(n)`
-/

namespace A022423.P12019739212581596517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022418 n + Int.tmod 13 (A022420 n)

end

end A022423.P12019739212581596517

namespace A022423

/-- `A022418(n)+13%A022420(n)` -/
def P12019739212581596517.Spec : Prop :=
  ∀ n, P12019739212581596517.a n = A022423 n

end A022423

/-! ## A022423.P1753599113997603009

`A022416(n)+A022420(n)-A022413(n)`
-/

namespace A022423.P1753599113997603009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022416 n + (A022420 n - A022413 n)

end

end A022423.P1753599113997603009

namespace A022423

/-- `A022416(n)+A022420(n)-A022413(n)` -/
def P1753599113997603009.Spec : Prop :=
  ∀ n, P1753599113997603009.a n = A022423 n

end A022423

/-! ## A022423.P13276383934413126495

`A022418(n)+A022420(n)-A022415(n)`
-/

namespace A022423.P13276383934413126495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022418 n + (A022420 n - A022415 n)

end

end A022423.P13276383934413126495

namespace A022423

/-- `A022418(n)+A022420(n)-A022415(n)` -/
def P13276383934413126495.Spec : Prop :=
  ∀ n, P13276383934413126495.a n = A022423 n

end A022423

/-! ## A022423.P15101797118153984200

`A005843(A022418(n))-A022413(n)`
-/

namespace A022423.P15101797118153984200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A022418 n).toNat - A022413 n

end

end A022423.P15101797118153984200

namespace A022423

/-- `A005843(A022418(n))-A022413(n)` -/
def P15101797118153984200.Spec : Prop :=
  ∀ n, P15101797118153984200.a n = A022423 n

end A022423

/-! ## A022423.P9325189217721043263

`A040006(n)-A024000(A022421(n))`
-/

namespace A022423.P9325189217721043263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040006 n - A024000 (A022421 n).toNat

end

end A022423.P9325189217721043263

namespace A022423

/-- `A040006(n)-A024000(A022421(n))` -/
def P9325189217721043263.Spec : Prop :=
  ∀ n, P9325189217721043263.a n = A022423 n

end A022423

/-!
# A022424: Solution a( ) of the complementary equation a(n) = b(n-1) + b(n-2), where a(0) = 1, a(1) = 2; see Comments.

The programs for A022424, there is no canonical definition to state claims against.
-/

/-! ## A022424.P7892131154397209509

`eq[char[A055563(n)], A000007(n)]`
-/

namespace A022424.P7892131154397209509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055563 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022424.P7892131154397209509

/-! ## A022424.P6834976434448626198

`eq[char[A055563(n)], A000038(n)]`
-/

namespace A022424.P6834976434448626198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055563 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022424.P6834976434448626198

/-! ## A022424.P12295753096175422029

`eq[A080425(A299234(2*n+1)), A080425(n)]`
-/

namespace A022424.P12295753096175422029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A299234 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022424.P12295753096175422029

/-! ## A022424.P7150360264319717772

`record[A115949(n+1)]`
-/

namespace A022424.P7150360264319717772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022424.P7150360264319717772

/-! ## A022424.P13294160235388516895

`A115949(comp[2*n+3]+1)`
-/

namespace A022424.P13294160235388516895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115949 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A022424.P13294160235388516895

/-!
# A022425: Solution a( ) of the complementary equation a(n) = b(n-1) + b(n-2), where a(0) = 1, a(1) = 4; see Comments.

The programs for A022425, there is no canonical definition to state claims against.
-/

/-! ## A022425.P13096233466042234189

`xor(A278105(n+1), A324142(n+1))`
-/

namespace A022425.P13096233466042234189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A278105 (n + 1)) (A324142 (n + 1))

end

end A022425.P13096233466042234189

/-! ## A022425.P16197261352955524578

`A022432(n)+A000700(Δ[A022432(n)])`
-/

namespace A022425.P16197261352955524578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022432 n + A000700 (f1 (n + 1) - f1 n).toNat

end

end A022425.P16197261352955524578

/-! ## A022425.P6210020350724501418

`A022432(n)+A003992(Δ[A022432(n)])`
-/

namespace A022425.P6210020350724501418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022432 n + A003992 (f1 (n + 1) - f1 n).toNat

end

end A022425.P6210020350724501418

/-! ## A022425.P13896970601588248844

`A259599(Δ[A022432(n)])+A022432(n)`
-/

namespace A022425.P13896970601588248844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259599 (f1 (n + 1) - f1 n).toNat + A022432 n

end

end A022425.P13896970601588248844

/-! ## A022425.P8029049139916613604

`A316829(Δ[A022432(n)])+A022432(n)`
-/

namespace A022425.P8029049139916613604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (f1 (n + 1) - f1 n).toNat + A022432 n

end

end A022425.P8029049139916613604

/-! ## A022425.P11491054796371403698

`A004396(A324142(n+1))+n`
-/

namespace A022425.P11491054796371403698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A324142 (n + 1)).toNat + (n : ℤ)

end

end A022425.P11491054796371403698

/-! ## A022425.P18148953014891890258

`A324142(n+1)+A014667(A105359(n+1))`
-/

namespace A022425.P18148953014891890258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324142 (n + 1) + A014667 (A105359 (n + 1)).toNat

end

end A022425.P18148953014891890258

/-!
# A022426: Solution a( ) of the complementary equation a(n) = b(n-1) + b(n-2), where a(0) = 2, a(1) = 3; see Comments.

The programs for A022426, there is no canonical definition to state claims against.
-/

/-! ## A022426.P8028855348409534016

`eq[char[A299411(n)], A000007(n)]`
-/

namespace A022426.P8028855348409534016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299411 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022426.P8028855348409534016

/-! ## A022426.P2971362575944837003

`eq[char[A299411(n)], A000038(n)]`
-/

namespace A022426.P2971362575944837003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299411 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022426.P2971362575944837003

/-! ## A022426.P778709547174735852

`eq[A055758(n)%2, char[A299411(n)]]`
-/

namespace A022426.P778709547174735852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055758 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299411 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A022426.P778709547174735852

/-! ## A022426.P3652506254959491641

`eq[char[A299411(n)], A046094(2*(n+1))]`
-/

namespace A022426.P3652506254959491641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299411 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046094 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022426.P3652506254959491641

/-! ## A022426.P3183635542724371423

`eq[char[A299411(n)], A151933(n)]`
-/

namespace A022426.P3183635542724371423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299411 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022426.P3183635542724371423

/-!
# A022427: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

The programs for A022427, there is no canonical definition to state claims against.
-/

/-! ## A022427.P16496298336513922009

`eq[char[A299536(n)], A000007(n)]`
-/

namespace A022427.P16496298336513922009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299536 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022427.P16496298336513922009

/-! ## A022427.P11533242491364660764

`eq[char[A299536(n)], A000038(n)]`
-/

namespace A022427.P11533242491364660764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299536 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022427.P11533242491364660764

/-! ## A022427.P10061568920291410910

`eq[A055758(n)%2, char[A299536(n)]]`
-/

namespace A022427.P10061568920291410910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055758 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299536 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A022427.P10061568920291410910

/-! ## A022427.P6464276216131018854

`eq[char[A299536(n)], A340190((n+1)²)]`
-/

namespace A022427.P6464276216131018854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299536 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340190 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022427.P6464276216131018854

/-! ## A022427.P2312163823765700010

`eq[char[A299536(n)], A151933(n)]`
-/

namespace A022427.P2312163823765700010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299536 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022427.P2312163823765700010

/-!
# A022429: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

The programs for A022429, the canonical program `A022429.P17113811194930321929` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022429 has offset 0).

The definition of A022429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022429.P8382409499962585358

`xor(n%2, A022433(n))`
-/

namespace A022429.P8382409499962585358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (A022433 n)

end

end A022429.P8382409499962585358

namespace A022429

/-- `xor(n%2, A022433(n))` -/
def P8382409499962585358.Spec : Prop :=
  ∀ n, P8382409499962585358.a n = A022429 n

end A022429

/-! ## A022429.P17113811194930321929

`A099467(n+1)+comp[3*(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A022429

/-- `A099467(n+1)+comp[3*(n+1)]` -/
def P17113811194930321929.Spec : Prop :=
  ∀ n, P17113811194930321929.a n = A022429 n

theorem P17113811194930321929.correct : P17113811194930321929.Spec := by
  intro n
  simp only [A022429]

end A022429

/-! ## A022429.P17038400985773027423

`xor(A000035(n), A022433(n))`
-/

namespace A022429.P17038400985773027423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A022433 n)

end

end A022429.P17038400985773027423

namespace A022429

/-- `xor(A000035(n), A022433(n))` -/
def P17038400985773027423.Spec : Prop :=
  ∀ n, P17038400985773027423.a n = A022429 n

end A022429

/-! ## A022429.P13101332308381260151

`xor(1, A022433(n))+A056594(n)²`
-/

namespace A022429.P13101332308381260151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A022433 n) + A056594 n ^ 2

end

end A022429.P13101332308381260151

namespace A022429

/-- `xor(1, A022433(n))+A056594(n)²` -/
def P13101332308381260151.Spec : Prop :=
  ∀ n, P13101332308381260151.a n = A022429 n

end A022429

/-! ## A022429.P15629444035808342119

`xor(char[A000265(n+1)], A022433(n))`
-/

namespace A022429.P15629444035808342119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A022433 n)

end

end A022429.P15629444035808342119

namespace A022429

/-- `xor(char[A000265(n+1)], A022433(n))` -/
def P15629444035808342119.Spec : Prop :=
  ∀ n, P15629444035808342119.a n = A022429 n

end A022429

/-! ## A022429.P4148208914776423429

`xor(A010873(n*A010873(n)), A022433(n))`
-/

namespace A022429.P4148208914776423429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010873 ((n : ℤ) * A010873 n).toNat) (A022433 n)

end

end A022429.P4148208914776423429

namespace A022429

/-- `xor(A010873(n*A010873(n)), A022433(n))` -/
def P4148208914776423429.Spec : Prop :=
  ∀ n, P4148208914776423429.a n = A022429 n

end A022429

/-! ## A022429.P16103249011118083983

`xor(Δ[A004526(n)], A022433(n))`
-/

namespace A022429.P16103249011118083983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A022433 n)

end

end A022429.P16103249011118083983

namespace A022429

/-- `xor(Δ[A004526(n)], A022433(n))` -/
def P16103249011118083983.Spec : Prop :=
  ∀ n, P16103249011118083983.a n = A022429 n

end A022429

/-! ## A022429.P13691352075314617089

`xor(A010873(n²), A022433(n))`
-/

namespace A022429.P13691352075314617089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010873 (n ^ 2)) (A022433 n)

end

end A022429.P13691352075314617089

namespace A022429

/-- `xor(A010873(n²), A022433(n))` -/
def P13691352075314617089.Spec : Prop :=
  ∀ n, P13691352075314617089.a n = A022429 n

end A022429

/-!
# A022430: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

The programs for A022430, there is no canonical definition to state claims against.
-/

/-! ## A022430.P8962519592166146607

`A299542(A004273(n))+A057428(n)`
-/

namespace A022430.P8962519592166146607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299542 (A004273 n).toNat + A057428 n

end

end A022430.P8962519592166146607

/-! ## A022430.P2037496869740222777

`A299542(A004273(n))-A057427(n)`
-/

namespace A022430.P2037496869740222777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299542 (A004273 n).toNat - A057427 n

end

end A022430.P2037496869740222777

/-! ## A022430.P3089039301209405352

`A299542(A004273(n))-a(A000038(n))` with `a(0)=1`
-/

namespace A022430.P3089039301209405352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299542 (A004273 n).toNat - a (A000038 n).toNat

end

end A022430.P3089039301209405352

/-! ## A022430.P10310240541835542701

`A299542(A004273(n))-char[A029579(n)]`
-/

namespace A022430.P10310240541835542701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299542 (A004273 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A022430.P10310240541835542701

/-! ## A022430.P13244632975111855398

`A299542(A004273(n))-A034261(∑[n]+1)`
-/

namespace A022430.P13244632975111855398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299542 (A004273 n).toNat - A034261 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A022430.P13244632975111855398

/-!
# A022433: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

The programs for A022433, the canonical program `A022433.P5885580325791089761` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022433 has offset 0).

The definition of A022433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022433.P5885580325791089761

`xor(n%2, A022429(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A022433

/-- `xor(n%2, A022429(n))` -/
def P5885580325791089761.Spec : Prop :=
  ∀ n, P5885580325791089761.a n = A022433 n

theorem P5885580325791089761.correct : P5885580325791089761.Spec := by
  intro n
  simp only [A022433]

end A022433

/-! ## A022433.P18211036730922458720

`xor(A000035(n), A022429(n))`
-/

namespace A022433.P18211036730922458720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A022429 n)

end

end A022433.P18211036730922458720

namespace A022433

/-- `xor(A000035(n), A022429(n))` -/
def P18211036730922458720.Spec : Prop :=
  ∀ n, P18211036730922458720.a n = A022433 n

end A022433

/-! ## A022433.P16681235584152919457

`xor(Δ[A008619(n)], A022429(n))`
-/

namespace A022433.P16681235584152919457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A022429 n)

end

end A022433.P16681235584152919457

namespace A022433

/-- `xor(Δ[A008619(n)], A022429(n))` -/
def P16681235584152919457.Spec : Prop :=
  ∀ n, P16681235584152919457.a n = A022433 n

end A022433

/-! ## A022433.P92275729296341276

`xor(A000034(n)-1, A022429(n))`
-/

namespace A022433.P92275729296341276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 n - 1) (A022429 n)

end

end A022433.P92275729296341276

namespace A022433

/-- `xor(A000034(n)-1, A022429(n))` -/
def P92275729296341276.Spec : Prop :=
  ∀ n, P92275729296341276.a n = A022433 n

end A022433

/-! ## A022433.P3273756500489851364

`xor(char[A000265(n+1)], A022429(n))`
-/

namespace A022433.P3273756500489851364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A022429 n)

end

end A022433.P3273756500489851364

namespace A022433

/-- `xor(char[A000265(n+1)], A022429(n))` -/
def P3273756500489851364.Spec : Prop :=
  ∀ n, P3273756500489851364.a n = A022433 n

end A022433

/-! ## A022433.P6841595758420693765

`xor(A007814(A020639(n+1)), A022429(n))`
-/

namespace A022433.P6841595758420693765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (A020639 (n + 1)).toNat) (A022429 n)

end

end A022433.P6841595758420693765

namespace A022433

/-- `xor(A007814(A020639(n+1)), A022429(n))` -/
def P6841595758420693765.Spec : Prop :=
  ∀ n, P6841595758420693765.a n = A022433 n

end A022433

/-! ## A022433.P9770285591159012049

`xor(Δ[A004526(n)], A022429(n))`
-/

namespace A022433.P9770285591159012049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A022429 n)

end

end A022433.P9770285591159012049

namespace A022433

/-- `xor(Δ[A004526(n)], A022429(n))` -/
def P9770285591159012049.Spec : Prop :=
  ∀ n, P9770285591159012049.a n = A022433 n

end A022433

/-! ## A022433.P4780846628012243001

`xor(A007814(n²+1), A022429(n))`
-/

namespace A022433.P4780846628012243001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007814 (n ^ 2 + 1)) (A022429 n)

end

end A022433.P4780846628012243001

namespace A022433

/-- `xor(A007814(n²+1), A022429(n))` -/
def P4780846628012243001.Spec : Prop :=
  ∀ n, P4780846628012243001.a n = A022433 n

end A022433

/-!
# A022434: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

The programs for A022434, there is no canonical definition to state claims against.
-/

/-! ## A022434.P15343842933861355364

`A070939(A240085(n+2))+A005843(n)`
-/

namespace A022434.P15343842933861355364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A240085 (n + 2)).toNat + A005843 n

end

end A022434.P15343842933861355364

/-! ## A022434.P18290162426223134811

`floor(3/acot(n))-A166124(A193649(n))`
-/

namespace A022434.P18290162426223134811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - A166124 (A193649 n).toNat

end

end A022434.P18290162426223134811

/-! ## A022434.P8385297643688542888

`A143051(3*n)-A010815(A215928(n))`
-/

namespace A022434.P8385297643688542888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (3 * n) - A010815 (A215928 n).toNat

end

end A022434.P8385297643688542888

/-!
# A022437: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

The programs for A022437, there is no canonical definition to state claims against.
-/

/-! ## A022437.P4805725841822598455

`eq[char[A299538(n)], A000007(n)]`
-/

namespace A022437.P4805725841822598455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299538 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022437.P4805725841822598455

/-! ## A022437.P7463828459571290304

`eq[char[A299538(n)], A000038(n)]`
-/

namespace A022437.P7463828459571290304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299538 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022437.P7463828459571290304

/-! ## A022437.P17380048962573910776

`eq[char[A299538(n)], A130706(n)]`
-/

namespace A022437.P17380048962573910776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299538 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022437.P17380048962573910776

/-! ## A022437.P8480103590089978773

`eq[A001316(n)%2, char[A299538(n)]]`
-/

namespace A022437.P8480103590089978773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001316 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299538 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A022437.P8480103590089978773

/-! ## A022437.P12403786737703409556

`eq[char[A299538(n)], A151933(n)]`
-/

namespace A022437.P12403786737703409556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299538 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022437.P12403786737703409556

/-!
# A022438: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

The programs for A022438, there is no canonical definition to state claims against.
-/

/-! ## A022438.P13701778618939046031

`eq[char[A299540(n)], A000007(n)]`
-/

namespace A022438.P13701778618939046031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299540 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022438.P13701778618939046031

/-! ## A022438.P13171592352371572962

`eq[char[A299540(n)], A000038(n)]`
-/

namespace A022438.P13171592352371572962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299540 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022438.P13171592352371572962

/-! ## A022438.P14284059902157964848

`eq[char[A299540(n)], A130706(n)]`
-/

namespace A022438.P14284059902157964848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299540 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022438.P14284059902157964848

/-! ## A022438.P18309594250625363387

`eq[char[A299540(n)], A010051(2*(n+1))]`
-/

namespace A022438.P18309594250625363387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299540 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022438.P18309594250625363387

/-! ## A022438.P17232165207560294047

`eq[char[A299540(n)], A151933(n)]`
-/

namespace A022438.P17232165207560294047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299540 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022438.P17232165207560294047

/-!
# A022439: a(n) = c(n-1) + c(n-3) where c is the sequence of numbers not in a.

The programs for A022439, there is no canonical definition to state claims against.
-/

/-! ## A022439.P13832833343480881362

`A162782(A050076(n+1))+A050134(n+1)`
-/

namespace A022439.P13832833343480881362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162782 (A050076 (n + 1)).toNat + A050134 (n + 1)

end

end A022439.P13832833343480881362

/-!
# A022441: a(n) = c(n) + c(n-1) where c (A055562) is the sequence of numbers not in a.

The programs for A022441, the canonical program `A022441.P11385500381179401866` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022441 has offset 0).

The definition of A022441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022441.P3045092684426044644

`A210770(2*n+1)`
-/

namespace A022441.P3045092684426044644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210770 (2 * n + 1)

end

end A022441.P3045092684426044644

namespace A022441

/-- `A210770(2*n+1)` -/
def P3045092684426044644.Spec : Prop :=
  ∀ n, P3045092684426044644.a n = A022441 n

end A022441

/-! ## A022441.P8426619262937427953

`ceil(log2(n+1))%2+3*n+1`
-/

namespace A022441.P8426619262937427953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 1 : ℝ)⌉ 2 + (3 * n + 1 : ℤ)

end

end A022441.P8426619262937427953

namespace A022441

/-- `ceil(log2(n+1))%2+3*n+1` -/
def P8426619262937427953.Spec : Prop :=
  ∀ n, P8426619262937427953.a n = A022441 n

end A022441

/-! ## A022441.P17581814086542949170

`n-xor(1, n-A022442(n))`
-/

namespace A022441.P17581814086542949170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor 1 ((n : ℤ) - A022442 n)

end

end A022441.P17581814086542949170

namespace A022441

/-- `n-xor(1, n-A022442(n))` -/
def P17581814086542949170.Spec : Prop :=
  ∀ n, P17581814086542949170.a n = A022441 n

end A022441

/-! ## A022441.P11385500381179401866

`3*n+2-A070941(n)%2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022441

/-- `3*n+2-A070941(n)%2` -/
def P11385500381179401866.Spec : Prop :=
  ∀ n, P11385500381179401866.a n = A022441 n

theorem P11385500381179401866.correct : P11385500381179401866.Spec := by
  intro n
  simp only [A022441]

end A022441

/-! ## A022441.P17399287269152592223

`A030301(2*n+1)+3*n+1`
-/

namespace A022441.P17399287269152592223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030301 (2 * n + 1) + (3 * n + 1 : ℤ)

end

end A022441.P17399287269152592223

namespace A022441

/-- `A030301(2*n+1)+3*n+1` -/
def P17399287269152592223.Spec : Prop :=
  ∀ n, P17399287269152592223.a n = A022441 n

end A022441

/-! ## A022441.P5865520708534675117

`3*n+2-A030300(2*n+1)`
-/

namespace A022441.P5865520708534675117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (2 - A030300 (2 * n + 1))

end

end A022441.P5865520708534675117

namespace A022441

/-- `3*n+2-A030300(2*n+1)` -/
def P5865520708534675117.Spec : Prop :=
  ∀ n, P5865520708534675117.a n = A022441 n

end A022441

/-! ## A022441.P8718094269683296648

`3*n+2-∑[A000120(n)!]%2`
-/

namespace A022441.P8718094269683296648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A022441.P8718094269683296648

namespace A022441

/-- `3*n+2-∑[A000120(n)!]%2` -/
def P8718094269683296648.Spec : Prop :=
  ∀ n, P8718094269683296648.a n = A022441 n

end A022441

/-! ## A022441.P14725104062089869522

`A016945(n)-A022442(n)`
-/

namespace A022441.P14725104062089869522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - A022442 n

end

end A022441.P14725104062089869522

namespace A022441

/-- `A016945(n)-A022442(n)` -/
def P14725104062089869522.Spec : Prop :=
  ∀ n, P14725104062089869522.a n = A022441 n

end A022441

/-! ## A022441.P10118568988349117652

`A001504(n)/A022442(n)`
-/

namespace A022441.P10118568988349117652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001504 n : ℚ) / (A022442 n : ℚ)

end

end A022441.P10118568988349117652

namespace A022441

/-- `A001504(n)/A022442(n)` -/
def P10118568988349117652.Spec : Prop :=
  ∀ n, P10118568988349117652.a n = (A022441 n : ℚ)

end A022441

/-! ## A022441.P8399013721817152240

`A016789(n)-A275973(n+1)`
-/

namespace A022441.P8399013721817152240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A275973 (n + 1)

end

end A022441.P8399013721817152240

namespace A022441

/-- `A016789(n)-A275973(n+1)` -/
def P8399013721817152240.Spec : Prop :=
  ∀ n, P8399013721817152240.a n = A022441 n

end A022441

/-! ## A022441.P13082687559003297138

`A016777(n)+1-A275973(n+1)`
-/

namespace A022441.P13082687559003297138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (1 - A275973 (n + 1))

end

end A022441.P13082687559003297138

namespace A022441

/-- `A016777(n)+1-A275973(n+1)` -/
def P13082687559003297138.Spec : Prop :=
  ∀ n, P13082687559003297138.a n = A022441 n

end A022441

/-! ## A022441.P2841867476914807964

`A016789(n)-A030301(A016789(n)+n)`
-/

namespace A022441.P2841867476914807964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A030301 (A016789 n + (n : ℤ)).toNat

end

end A022441.P2841867476914807964

namespace A022441

/-- `A016789(n)-A030301(A016789(n)+n)` -/
def P2841867476914807964.Spec : Prop :=
  ∀ n, P2841867476914807964.a n = A022441 n

end A022441

/-! ## A022441.P13707416078510428881

`A275973(2*(n+1))+A016777(n)`
-/

namespace A022441.P13707416078510428881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (2 * (n + 1)) + A016777 n

end

end A022441.P13707416078510428881

namespace A022441

/-- `A275973(2*(n+1))+A016777(n)` -/
def P13707416078510428881.Spec : Prop :=
  ∀ n, P13707416078510428881.a n = A022441 n

end A022441

/-! ## A022441.P16947007543326767395

`A160381(A003817(n))+A016777(n)`
-/

namespace A022441.P16947007543326767395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A003817 n).toNat + A016777 n

end

end A022441.P16947007543326767395

namespace A022441

/-- `A160381(A003817(n))+A016777(n)` -/
def P16947007543326767395.Spec : Prop :=
  ∀ n, P16947007543326767395.a n = A022441 n

end A022441

/-! ## A022441.P15329128952902872531

`6*n+3-A055562(2*n)`
-/

namespace A022441.P15329128952902872531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - A055562 (2 * n)

end

end A022441.P15329128952902872531

namespace A022441

/-- `6*n+3-A055562(2*n)` -/
def P15329128952902872531.Spec : Prop :=
  ∀ n, P15329128952902872531.a n = A022441 n

end A022441

/-! ## A022441.P2052763686729261020

`A022442(2*n)-A008486(n)`
-/

namespace A022441.P2052763686729261020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022442 (2 * n) - A008486 n

end

end A022441.P2052763686729261020

namespace A022441

/-- `A022442(2*n)-A008486(n)` -/
def P2052763686729261020.Spec : Prop :=
  ∀ n, P2052763686729261020.a n = A022441 n

end A022441

/-! ## A022441.P15815908035064238301

`A099467(2*(n+1))`
-/

namespace A022441.P15815908035064238301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099467 (2 * (n + 1))

end

end A022441.P15815908035064238301

namespace A022441

/-- `A099467(2*(n+1))` -/
def P15815908035064238301.Spec : Prop :=
  ∀ n, P15815908035064238301.a n = A022441 n

end A022441

/-! ## A022441.P13926790579738577629

`ceil(A022429(2*n+1)/2)`
-/

namespace A022441.P13926790579738577629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022429 (2 * n + 1) : ℚ) / 2⌉

end

end A022441.P13926790579738577629

namespace A022441

/-- `ceil(A022429(2*n+1)/2)` -/
def P13926790579738577629.Spec : Prop :=
  ∀ n, P13926790579738577629.a n = A022441 n

end A022441

/-! ## A022441.P11449294934552766366

`A022442(2*n+1)%(3*(n+1))`
-/

namespace A022441.P11449294934552766366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022442 (2 * n + 1)) (3 * (n + 1) : ℤ)

end

end A022441.P11449294934552766366

namespace A022441

/-- `A022442(2*n+1)%(3*(n+1))` -/
def P11449294934552766366.Spec : Prop :=
  ∀ n, P11449294934552766366.a n = A022441 n

end A022441

/-! ## A022441.P7629231205253229724

`A143579(A059010(n))+n+1`
-/

namespace A022441.P7629231205253229724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (A059010 n).toNat + (n + 1 : ℤ)

end

end A022441.P7629231205253229724

namespace A022441

/-- `A143579(A059010(n))+n+1` -/
def P7629231205253229724.Spec : Prop :=
  ∀ n, P7629231205253229724.a n = A022441 n

end A022441

/-!
# A022442: a(n) = c(n) + c(n-1) where c is the sequence of numbers not in a.

The programs for A022442, the canonical program `A022442.P624374322279820883` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022442 has offset 0).

The definition of A022442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022442.P4461287051381509239

`gcd(2, ceil(log2(n+1)))+3*n`
-/

namespace A022442.P4461287051381509239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌈Real.logb 2 (n + 1 : ℝ)⌉ + 3 * n

end

end A022442.P4461287051381509239

namespace A022442

/-- `gcd(2, ceil(log2(n+1)))+3*n` -/
def P4461287051381509239.Spec : Prop :=
  ∀ n, (P4461287051381509239.a n : ℤ) = A022442 n

end A022442

/-! ## A022442.P6896026795845403739

`record[A323234(3*n+2)]`
-/

namespace A022442.P6896026795845403739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323234 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022442.P6896026795845403739

namespace A022442

/-- `record[A323234(3*n+2)]` -/
def P6896026795845403739.Spec : Prop :=
  ∀ n, P6896026795845403739.a n = A022442 n

end A022442

/-! ## A022442.P624374322279820883

`6*n+3-A022441(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022442

/-- `6*n+3-A022441(n)` -/
def P624374322279820883.Spec : Prop :=
  ∀ n, P624374322279820883.a n = A022442 n

theorem P624374322279820883.correct : P624374322279820883.Spec := by
  intro n
  simp only [A022442]

end A022442

/-! ## A022442.P16371172550589775343

`3*n+A070941(n)%2+1`
-/

namespace A022442.P16371172550589775343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (Int.tmod (A070941 n) 2 + 1)

end

end A022442.P16371172550589775343

namespace A022442

/-- `3*n+A070941(n)%2+1` -/
def P16371172550589775343.Spec : Prop :=
  ∀ n, P16371172550589775343.a n = A022442 n

end A022442

/-! ## A022442.P7507154393320130039

`3*n+∑[A000120(n)!]%2+1`
-/

namespace A022442.P7507154393320130039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 1)

end

end A022442.P7507154393320130039

namespace A022442

/-- `3*n+∑[A000120(n)!]%2+1` -/
def P7507154393320130039.Spec : Prop :=
  ∀ n, (P7507154393320130039.a n : ℤ) = A022442 n

end A022442

/-! ## A022442.P882211219651358987

`2*(n+1)-A030301(2*n+1)+n`
-/

namespace A022442.P882211219651358987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A030301 (2 * n + 1) + (n : ℤ)

end

end A022442.P882211219651358987

namespace A022442

/-- `2*(n+1)-A030301(2*n+1)+n` -/
def P882211219651358987.Spec : Prop :=
  ∀ n, P882211219651358987.a n = A022442 n

end A022442

/-! ## A022442.P13311027371848900877

`A001504(n)/A022441(n)`
-/

namespace A022442.P13311027371848900877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001504 n : ℚ) / (A022441 n : ℚ)

end

end A022442.P13311027371848900877

namespace A022442

/-- `A001504(n)/A022441(n)` -/
def P13311027371848900877.Spec : Prop :=
  ∀ n, P13311027371848900877.a n = (A022442 n : ℚ)

end A022442

/-! ## A022442.P39048737196203632

`A275973(n+1)+A016777(n)`
-/

namespace A022442.P39048737196203632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1) + A016777 n

end

end A022442.P39048737196203632

namespace A022442

/-- `A275973(n+1)+A016777(n)` -/
def P39048737196203632.Spec : Prop :=
  ∀ n, P39048737196203632.a n = A022442 n

end A022442

/-! ## A022442.P7338505701602554270

`A275973(n+1)+A016789(n)-1`
-/

namespace A022442.P7338505701602554270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1) + (A016789 n - 1)

end

end A022442.P7338505701602554270

namespace A022442

/-- `A275973(n+1)+A016789(n)-1` -/
def P7338505701602554270.Spec : Prop :=
  ∀ n, P7338505701602554270.a n = A022442 n

end A022442

/-! ## A022442.P2461571279104163422

`A016789(n)-A030301(2*n+1)`
-/

namespace A022442.P2461571279104163422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A030301 (2 * n + 1)

end

end A022442.P2461571279104163422

namespace A022442

/-- `A016789(n)-A030301(2*n+1)` -/
def P2461571279104163422.Spec : Prop :=
  ∀ n, P2461571279104163422.a n = A022442 n

end A022442

/-! ## A022442.P16979412775926400517

`A016777(n+1)-(A030301(2*n+1)+2)`
-/

namespace A022442.P16979412775926400517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) - (A030301 (2 * n + 1) + 2)

end

end A022442.P16979412775926400517

namespace A022442

/-- `A016777(n+1)-(A030301(2*n+1)+2)` -/
def P16979412775926400517.Spec : Prop :=
  ∀ n, P16979412775926400517.a n = A022442 n

end A022442

/-! ## A022442.P11789298346193990144

`A022429(n)+A008619(Δ[A022429(n)])`
-/

namespace A022442.P11789298346193990144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 n + A008619 (f1 (n + 1) - f1 n).toNat

end

end A022442.P11789298346193990144

namespace A022442

/-- `A022429(n)+A008619(Δ[A022429(n)])` -/
def P11789298346193990144.Spec : Prop :=
  ∀ n, P11789298346193990144.a n = A022442 n

end A022442

/-! ## A022442.P880504409557563766

`A022429(n+1)+A022429(n)-A008486(n)`
-/

namespace A022442.P880504409557563766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022429 (n + 1) + (A022429 n - A008486 n)

end

end A022442.P880504409557563766

namespace A022442

/-- `A022429(n+1)+A022429(n)-A008486(n)` -/
def P880504409557563766.Spec : Prop :=
  ∀ n, P880504409557563766.a n = A022442 n

end A022442

/-! ## A022442.P13813199502543221736

`A099467(n+1)+A099467(n+2)`
-/

namespace A022442.P13813199502543221736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099467 (n + 1) + A099467 (n + 2)

end

end A022442.P13813199502543221736

namespace A022442

/-- `A099467(n+1)+A099467(n+2)` -/
def P13813199502543221736.Spec : Prop :=
  ∀ n, P13813199502543221736.a n = A022442 n

end A022442

/-! ## A022442.P14525990886678351800

`A230404(A003817(n)+3)+3*n`
-/

namespace A022442.P14525990886678351800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 (A003817 n + 3).toNat + (3 * n : ℤ)

end

end A022442.P14525990886678351800

namespace A022442

/-- `A230404(A003817(n)+3)+3*n` -/
def P14525990886678351800.Spec : Prop :=
  ∀ n, P14525990886678351800.a n = A022442 n

end A022442

/-! ## A022442.P17558718425153832865

`A055562(2*n)`
-/

namespace A022442.P17558718425153832865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055562 (2 * n)

end

end A022442.P17558718425153832865

namespace A022442

/-- `A055562(2*n)` -/
def P17558718425153832865.Spec : Prop :=
  ∀ n, P17558718425153832865.a n = A022442 n

end A022442

/-! ## A022442.P6265431775853414569

`A333470(Δ[n²])+n+1`
-/

namespace A022442.P6265431775853414569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333470 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A022442.P6265431775853414569

namespace A022442

/-- `A333470(Δ[n²])+n+1` -/
def P6265431775853414569.Spec : Prop :=
  ∀ n, P6265431775853414569.a n = A022442 n

end A022442

/-! ## A022442.P814880795805538365

`ceil(A022433(2*n+1)/2)`
-/

namespace A022442.P814880795805538365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022433 (2 * n + 1) : ℚ) / 2⌉

end

end A022442.P814880795805538365

namespace A022442

/-- `ceil(A022433(2*n+1)/2)` -/
def P814880795805538365.Spec : Prop :=
  ∀ n, P814880795805538365.a n = A022442 n

end A022442

/-! ## A022442.P8852272040130386917

`ceil(A022439(2*n+1)/2)`
-/

namespace A022442.P8852272040130386917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022439 (2 * n + 1) : ℚ) / 2⌉

end

end A022442.P8852272040130386917

namespace A022442

/-- `ceil(A022439(2*n+1)/2)` -/
def P8852272040130386917.Spec : Prop :=
  ∀ n, P8852272040130386917.a n = A022442 n

end A022442

/-! ## A022442.P5583383110358061329

`and(1, A267368(2*n))+3*n+1`
-/

namespace A022442.P5583383110358061329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A267368 (2 * n)) + (3 * n + 1 : ℤ)

end

end A022442.P5583383110358061329

namespace A022442

/-- `and(1, A267368(2*n))+3*n+1` -/
def P5583383110358061329.Spec : Prop :=
  ∀ n, P5583383110358061329.a n = A022442 n

end A022442

/-!
# A022443: Sequence and first differences include all positive integers except 2.

The programs for A022443, there is no canonical definition to state claims against.
-/

/-! ## A022443.P3664032467102587308

`∑[A143344(n+1)+char[2]]`
-/

namespace A022443.P3664032467102587308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143344 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022443.P3664032467102587308

/-! ## A022443.P15240142535342726897

`A294398(n)+A130130(n)`
-/

namespace A022443.P15240142535342726897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294398 n + A130130 n

end

end A022443.P15240142535342726897

/-! ## A022443.P15172934559246309448

`A184985(n+1)+A065504(n+1)`
-/

namespace A022443.P15172934559246309448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (n + 1) + A065504 (n + 1)

end

end A022443.P15172934559246309448

/-! ## A022443.P9375598342653283240

`A022940(n+1)+A143344(n+1)%A022941(n+1)`
-/

namespace A022443.P9375598342653283240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022940 (n + 1) + Int.tmod (A143344 (n + 1)) (A022941 (n + 1))

end

end A022443.P9375598342653283240

/-! ## A022443.P8031644123018641629

`∑[char[2]+Δ[A022941(n+1)]]`
-/

namespace A022443.P8031644123018641629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022443.P8031644123018641629

/-! ## A022443.P18198981648861187304

`A022941(n+2)-C(n, n²)`
-/

namespace A022443.P18198981648861187304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 2) - (Nat.choose n (n ^ 2) : ℤ)

end

end A022443.P18198981648861187304

/-! ## A022443.P7648050982978290798

`A022940(n+2)-C(2, n+1)`
-/

namespace A022443.P7648050982978290798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022940 (n + 2) - (Nat.choose 2 (n + 1) : ℤ)

end

end A022443.P7648050982978290798

/-! ## A022443.P12024577416668903396

`A022941(n+2)-and(1, A000010(n+1))`
-/

namespace A022443.P12024577416668903396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 2) - Int.land 1 (A000010 (n + 1))

end

end A022443.P12024577416668903396

/-! ## A022443.P3363069843368647854

`A022940(n+1)+A022940(n+2)%A022941(n+1)`
-/

namespace A022443.P3363069843368647854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022940 (n + 1) + Int.tmod (A022940 (n + 2)) (A022941 (n + 1))

end

end A022443.P3363069843368647854

/-! ## A022443.P13316253919622384973

`A022941(n+2)-val(A033847(n+2), A033847(2*n+1))`
-/

namespace A022443.P13316253919622384973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022941 (n + 2) - (SequenceMachineLib.valuation (A033847 (n + 2)).toNat (A033847 (2 * n + 1)).toNat : ℤ)

end

end A022443.P13316253919622384973

/-! ## A022443.P11773484311791927772

`and(A022940(n+2), A267890(n))`
-/

namespace A022443.P11773484311791927772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022940 (n + 2)) (A267890 n)

end

end A022443.P11773484311791927772

/-!
# A022444: Number of self-avoiding closed walks (from (0,0) to (0,0)) of length 2n in strip {-1, 0, 1} X Z.

The programs for A022444, there is no canonical definition to state claims against.
-/

/-! ## A022444.P2855715063810109189

`A001792(n)-A088191(A086625(n))`
-/

namespace A022444.P2855715063810109189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A088191 (A086625 n).toNat

end

end A022444.P2855715063810109189

/-! ## A022444.P389861018818303544

`and(ceil((n+1)²/2*n!), A000005(∏[n+7]/7))`
-/

namespace A022444.P389861018818303544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈((n + 1) ^ 2 : ℚ) / 2 * (Nat.factorial n : ℚ)⌉ (A000005 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7)).toNat)

end

end A022444.P389861018818303544

/-!
# A022445: Number of self-avoiding closed walks (from 0 to 0) of length 2n in the strip {0, 1, 2} X Z of the square lattice Z X Z.

The programs for A022445, there is no canonical definition to state claims against.
-/

/-! ## A022445.P1478140918253648303

`A080594(A368983(2*n)-A359781(2*(n+1)))`
-/

namespace A022445.P1478140918253648303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080594 (A368983 (2 * n) - A359781 (2 * (n + 1))).toNat

end

end A022445.P1478140918253648303

/-!
# A022446: Fractal sequence of the dispersion of the composite numbers.

The programs for A022446, there is no canonical definition to state claims against.
-/

/-! ## A022446.P1522978611687005242

`A003977(A328661(n+1))`
-/

namespace A022446.P1522978611687005242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003977 (A328661 (n + 1)).toNat

end

end A022446.P1522978611687005242

/-! ## A022446.P814575573921603172

`∑{d}[A328661(n+1), A003963(#)]`
-/

namespace A022446.P814575573921603172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003963 d

end

end A022446.P814575573921603172

/-! ## A022446.P12325305042613053705

`∑{d}[A328661(n+1), A026233(#)]`
-/

namespace A022446.P12325305042613053705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A026233 d

end

end A022446.P12325305042613053705

/-! ## A022446.P13229910863775503060

`A036234(∏{d}[A328661(n+1), #])`
-/

namespace A022446.P13229910863775503060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A022446.P13229910863775503060

/-! ## A022446.P14675559748970867578

`A064553(A328661(A000027(n+1)))`
-/

namespace A022446.P14675559748970867578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A328661 (A000027 (n + 1)).toNat).toNat

end

end A022446.P14675559748970867578

/-! ## A022446.P15033800860024987892

`A064553(2*A328661(n+1)-A328661(n+1))`
-/

namespace A022446.P15033800860024987892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (2 * A328661 (n + 1) - A328661 (n + 1)).toNat

end

end A022446.P15033800860024987892

/-! ## A022446.P7649716569293358715

`A056239(2*A328661(n+1))`
-/

namespace A022446.P7649716569293358715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A328661 (n + 1)).toNat

end

end A022446.P7649716569293358715

/-! ## A022446.P17347747395712309897

`A064553(2*A328661(n+1))/2`
-/

namespace A022446.P17347747395712309897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064553 (2 * A328661 (n + 1)).toNat : ℚ) / 2

end

end A022446.P17347747395712309897

/-! ## A022446.P10014261945194035092

`A347403(A328661(n+1)²)`
-/

namespace A022446.P10014261945194035092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347403 (A328661 (n + 1) ^ 2).toNat

end

end A022446.P10014261945194035092

/-! ## A022446.P4488771127881494112

`A064553(A328661(n+1)²)/A064553(A328661(n+1))`
-/

namespace A022446.P4488771127881494112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064553 (A328661 (n + 1) ^ 2).toNat : ℚ) / (A064553 (A328661 (n + 1)).toNat : ℚ)

end

end A022446.P4488771127881494112

/-!
# A022447: Fractal sequence of the dispersion of the primes.

The programs for A022447, the canonical program `A022447.P13400589638145703350` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022447 has offset 1).

The definition of A022447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022447.P366735714768767368

`A026233(A288469(n+1))`
-/

namespace A022447.P366735714768767368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A288469 (n + 1)).toNat

end

end A022447.P366735714768767368

namespace A022447

/-- `A026233(A288469(n+1))` -/
def P366735714768767368.Spec : Prop :=
  ∀ n, P366735714768767368.a n = A022447 (n + 1)

end A022447

/-! ## A022447.P13400589638145703350

`A062298(A288469(n+1)+A000007(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A022447

/-- `A062298(A288469(n+1)+A000007(n))` -/
def P13400589638145703350.Spec : Prop :=
  ∀ n, P13400589638145703350.a n = A022447 (n + 1)

theorem P13400589638145703350.correct : P13400589638145703350.Spec := by
  intro n
  simp only [A022447, Nat.add_sub_cancel]

end A022447

/-! ## A022447.P6527791293918473827

`A062298(A288469(n+1))%A007918(n)`
-/

namespace A022447.P6527791293918473827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062298 (A288469 (n + 1)).toNat) (A007918 n)

end

end A022447.P6527791293918473827

namespace A022447

/-- `A062298(A288469(n+1))%A007918(n)` -/
def P6527791293918473827.Spec : Prop :=
  ∀ n, P6527791293918473827.a n = A022447 (n + 1)

end A022447

/-! ## A022447.P17274224632942576672

`A062298(A288469(n+1)%A027689(n))`
-/

namespace A022447.P17274224632942576672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (Int.tmod (A288469 (n + 1)) (A027689 n)).toNat

end

end A022447.P17274224632942576672

namespace A022447

/-- `A062298(A288469(n+1)%A027689(n))` -/
def P17274224632942576672.Spec : Prop :=
  ∀ n, P17274224632942576672.a n = A022447 (n + 1)

end A022447

/-! ## A022447.P15346744444104415314

`A062298(A288469(n+1))+∑[n]*A000038(n)`
-/

namespace A022447.P15346744444104415314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A288469 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000038 n

end

end A022447.P15346744444104415314

namespace A022447

/-- `A062298(A288469(n+1))+∑[n]*A000038(n)` -/
def P15346744444104415314.Spec : Prop :=
  ∀ n, P15346744444104415314.a n = A022447 (n + 1)

end A022447

/-! ## A022447.P15966618434759252993

`A062298(A288469(n+1))+A036987(A055025(n+1))`
-/

namespace A022447.P15966618434759252993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A288469 (n + 1)).toNat + A036987 (A055025 (n + 1)).toNat

end

end A022447.P15966618434759252993

namespace A022447

/-- `A062298(A288469(n+1))+A036987(A055025(n+1))` -/
def P15966618434759252993.Spec : Prop :=
  ∀ n, P15966618434759252993.a n = A022447 (n + 1)

end A022447

/-! ## A022447.P6141425415483919381

`A288469(A000040(n+1))-A000720(A288469(n+1))`
-/

namespace A022447.P6141425415483919381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A000040 (n + 1)).toNat - A000720 (A288469 (n + 1)).toNat

end

end A022447.P6141425415483919381

namespace A022447

/-- `A288469(A000040(n+1))-A000720(A288469(n+1))` -/
def P6141425415483919381.Spec : Prop :=
  ∀ n, P6141425415483919381.a n = A022447 (n + 1)

end A022447

/-! ## A022447.P14823836011391002821

`and(A062298(A288469(n+1)), A083420(n))`
-/

namespace A022447.P14823836011391002821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062298 (A288469 (n + 1)).toNat) (A083420 n)

end

end A022447.P14823836011391002821

namespace A022447

/-- `and(A062298(A288469(n+1)), A083420(n))` -/
def P14823836011391002821.Spec : Prop :=
  ∀ n, P14823836011391002821.a n = A022447 (n + 1)

end A022447

/-!
# A022448: Expansion of 1/((1-x)*(1-5*x)*(1-6*x)*(1-12*x)).

The programs for A022448, the canonical program `A022448.P12265505972134009480` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022448 has offset 0).

The definition of A022448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022448.P12265505972134009480

`125*5^n/28-36*6^n/5+288*12^n/77-1/220`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022448

/-- `125*5^n/28-36*6^n/5+288*12^n/77-1/220` -/
def P12265505972134009480.Spec : Prop :=
  ∀ n, P12265505972134009480.a n = (A022448 n : ℚ)

end A022448

/-! ## A022448.P7373283939875397562

`∑[A019869(n)]`
-/

namespace A022448.P7373283939875397562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022448.P7373283939875397562

namespace A022448

/-- `∑[A019869(n)]` -/
def P7373283939875397562.Spec : Prop :=
  ∀ n, P7373283939875397562.a n = A022448 n

end A022448

/-!
# A022449: c(p(n)) where p(k) is k-th prime including p(1)=1 and c(k) is k-th composite number.

The programs for A022449, the canonical program `A022449.P12153620208137609378` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022449 has offset 1).

The definition of A022449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022449.P12153620208137609378

`A002808(A008578(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022449

/-- `A002808(A008578(n+1))` -/
def P12153620208137609378.Spec : Prop :=
  ∀ n, P12153620208137609378.a n = A022449 (n + 1)

theorem P12153620208137609378.correct : P12153620208137609378.Spec := by
  intro n
  simp only [A022449, Nat.add_sub_cancel]

end A022449

/-! ## A022449.P1168051600491216047

`A018252(A028815(n))`
-/

namespace A022449.P1168051600491216047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A028815 n).toNat

end

end A022449.P1168051600491216047

namespace A022449

/-- `A018252(A028815(n))` -/
def P1168051600491216047.Spec : Prop :=
  ∀ n, P1168051600491216047.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P17931272595590165669

`A141468(A028815(n)+1)`
-/

namespace A022449.P17931272595590165669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A028815 n + 1).toNat

end

end A022449.P17931272595590165669

namespace A022449

/-- `A141468(A028815(n)+1)` -/
def P17931272595590165669.Spec : Prop :=
  ∀ n, P17931272595590165669.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P11602421821315577861

`A002808(A028815(n)-1)`
-/

namespace A022449.P11602421821315577861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A028815 n - 1).toNat

end

end A022449.P11602421821315577861

namespace A022449

/-- `A002808(A028815(n)-1)` -/
def P11602421821315577861.Spec : Prop :=
  ∀ n, P11602421821315577861.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P8660343260079939514

`A002808(A158611(n+2))`
-/

namespace A022449.P8660343260079939514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A158611 (n + 2)).toNat

end

end A022449.P8660343260079939514

namespace A022449

/-- `A002808(A158611(n+2))` -/
def P8660343260079939514.Spec : Prop :=
  ∀ n, P8660343260079939514.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P4444590530304758186

`A002808(Δ[A175965(n+1)])`
-/

namespace A022449.P4444590530304758186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (n + 1) - f1 n).toNat

end

end A022449.P4444590530304758186

namespace A022449

/-- `A002808(Δ[A175965(n+1)])` -/
def P4444590530304758186.Spec : Prop :=
  ∀ n, P4444590530304758186.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P7259622697290826758

`A002808(record[A006530(n+1)])`
-/

namespace A022449.P7259622697290826758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022449.P7259622697290826758

namespace A022449

/-- `A002808(record[A006530(n+1)])` -/
def P7259622697290826758.Spec : Prop :=
  ∀ n, P7259622697290826758.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P6743266289409073220

`A002808(record[A020639(n+1)])`
-/

namespace A022449.P6743266289409073220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022449.P6743266289409073220

namespace A022449

/-- `A002808(record[A020639(n+1)])` -/
def P6743266289409073220.Spec : Prop :=
  ∀ n, P6743266289409073220.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P16418984023572740491

`A018252(record[A130008(n)+1])`
-/

namespace A022449.P16418984023572740491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A022449.P16418984023572740491

namespace A022449

/-- `A018252(record[A130008(n)+1])` -/
def P16418984023572740491.Spec : Prop :=
  ∀ n, P16418984023572740491.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P5455357735538430989

`A018252(A008578(n+1)+1)`
-/

namespace A022449.P5455357735538430989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A008578 (n + 1) + 1).toNat

end

end A022449.P5455357735538430989

namespace A022449

/-- `A018252(A008578(n+1)+1)` -/
def P5455357735538430989.Spec : Prop :=
  ∀ n, P5455357735538430989.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P7643605660926464801

`A141468(A008578(n+1)+2)`
-/

namespace A022449.P7643605660926464801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A008578 (n + 1) + 2).toNat

end

end A022449.P7643605660926464801

namespace A022449

/-- `A141468(A008578(n+1)+2)` -/
def P7643605660926464801.Spec : Prop :=
  ∀ n, P7643605660926464801.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P12421283466197954890

`A018252(A158611(n+2)+1)`
-/

namespace A022449.P12421283466197954890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A158611 (n + 2) + 1).toNat

end

end A022449.P12421283466197954890

namespace A022449

/-- `A018252(A158611(n+2)+1)` -/
def P12421283466197954890.Spec : Prop :=
  ∀ n, P12421283466197954890.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P2226323868416673899

`A141468(A158611(n+2)+2)`
-/

namespace A022449.P2226323868416673899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A158611 (n + 2) + 2).toNat

end

end A022449.P2226323868416673899

namespace A022449

/-- `A141468(A158611(n+2)+2)` -/
def P2226323868416673899.Spec : Prop :=
  ∀ n, P2226323868416673899.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P6316022635588377592

`A002808(A130008(2*n+1))`
-/

namespace A022449.P6316022635588377592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A130008 (2 * n + 1)).toNat

end

end A022449.P6316022635588377592

namespace A022449

/-- `A002808(A130008(2*n+1))` -/
def P6316022635588377592.Spec : Prop :=
  ∀ n, P6316022635588377592.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P3235981116293052375

`A002808(A001747(n+1)/2)`
-/

namespace A022449.P3235981116293052375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) / 2)).toNat

end

end A022449.P3235981116293052375

namespace A022449

/-- `A002808(A001747(n+1)/2)` -/
def P3235981116293052375.Spec : Prop :=
  ∀ n, P3235981116293052375.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P9496910555697783542

`A018252(eq[1, A074206(n)]+1)`
-/

namespace A022449.P9496910555697783542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A022449.P9496910555697783542

namespace A022449

/-- `A018252(eq[1, A074206(n)]+1)` -/
def P9496910555697783542.Spec : Prop :=
  ∀ n, P9496910555697783542.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P4691336844270596194

`A002808(A167136(n+1)-n)`
-/

namespace A022449.P4691336844270596194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A167136 (n + 1) - (n : ℤ)).toNat

end

end A022449.P4691336844270596194

namespace A022449

/-- `A002808(A167136(n+1)-n)` -/
def P4691336844270596194.Spec : Prop :=
  ∀ n, P4691336844270596194.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P895181275528226213

`A141468(A173137(n+2)-n)`
-/

namespace A022449.P895181275528226213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A173137 (n + 2) - (n : ℤ)).toNat

end

end A022449.P895181275528226213

namespace A022449

/-- `A141468(A173137(n+2)-n)` -/
def P895181275528226213.Spec : Prop :=
  ∀ n, P895181275528226213.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P15171621818577918147

`A018252(sqrt(A280076(n+1))+1)`
-/

namespace A022449.P15171621818577918147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway (Real.sqrt (A280076 (n + 1) : ℝ) + 1)).toNat

end

end A022449.P15171621818577918147

namespace A022449

/-- `A018252(sqrt(A280076(n+1))+1)` -/
def P15171621818577918147.Spec : Prop :=
  ∀ n, P15171621818577918147.a n = A022449 (n + 1)

end A022449

/-! ## A022449.P6139402517381844921

`A018252(Δ[A175965(n+1)]+1)`
-/

namespace A022449.P6139402517381844921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (n + 1) - f1 n + 1).toNat

end

end A022449.P6139402517381844921

namespace A022449

/-- `A018252(Δ[A175965(n+1)]+1)` -/
def P6139402517381844921.Spec : Prop :=
  ∀ n, P6139402517381844921.a n = A022449 (n + 1)

end A022449

/-!
# A022450: a(1) = 2; a(n+1) = a(n)-th composite.

The programs for A022450, there is no canonical definition to state claims against.
-/

/-! ## A022450.P17672385632631211577

`A114577(∑[n+1]+2)`
-/

namespace A022450.P17672385632631211577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A022450.P17672385632631211577

/-! ## A022450.P7328132443198315709

`or(char[3], A114577(A000096(n)+3))`
-/

namespace A022450.P7328132443198315709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114577 (A000096 n + 3).toNat)

end

end A022450.P7328132443198315709

/-! ## A022450.P12815664785529131298

`char[A006370(n)]*A114577(A000096(n)+3)`
-/

namespace A022450.P12815664785529131298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A114577 (A000096 n + 3).toNat

end

end A022450.P12815664785529131298

/-! ## A022450.P10023704913924524779

`char[A061579(n)]*A114577(A000096(n)+3)`
-/

namespace A022450.P10023704913924524779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A114577 (A000096 n + 3).toNat

end

end A022450.P10023704913924524779

/-! ## A022450.P10221711984894171791

`char[A358254(n)]*A114577(A000096(n)+3)`
-/

namespace A022450.P10221711984894171791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358254 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A114577 (A000096 n + 3).toNat

end

end A022450.P10221711984894171791

/-! ## A022450.P13272169992444091629

`A114577(A000096(n)+3)%A048396(n+1)`
-/

namespace A022450.P13272169992444091629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114577 (A000096 n + 3).toNat) (A048396 (n + 1))

end

end A022450.P13272169992444091629

/-! ## A022450.P4646643549798198606

`and(A057428(n+1), A114577(A000096(n)+3))`
-/

namespace A022450.P4646643549798198606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A114577 (A000096 n + 3).toNat)

end

end A022450.P4646643549798198606

/-! ## A022450.P426130671585906040

`A007318(and(2, -n))*A114577(A000096(n)+3)`
-/

namespace A022450.P426130671585906040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 (-(n : ℤ))).toNat * A114577 (A000096 n + 3).toNat

end

end A022450.P426130671585906040

/-! ## A022450.P1920553551751376269

`A114577(A000096(n)+3)+A008683(4*(n+1))`
-/

namespace A022450.P1920553551751376269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A000096 n + 3).toNat + A008683 (4 * (n + 1))

end

end A022450.P1920553551751376269

/-! ## A022450.P9255794209451359172

`A000040(n+2)%2*A114577(A000096(n)+3)`
-/

namespace A022450.P9255794209451359172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A114577 (A000096 n + 3).toNat

end

end A022450.P9255794209451359172

/-!
# A022451: a(1) = 3; a(n+1) = a(n)-th composite.

The programs for A022451, there is no canonical definition to state claims against.
-/

/-! ## A022451.P5601979808509887204

`A114577(∑[n+2]+4)`
-/

namespace A022451.P5601979808509887204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A022451.P5601979808509887204

/-! ## A022451.P14050822412235736589

`or(char[2], A114577(A046691(n)+7))`
-/

namespace A022451.P14050822412235736589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114577 (A046691 n + 7).toNat)

end

end A022451.P14050822412235736589

/-! ## A022451.P945709315113988097

`or(char[2], A114577(A167499(n)+n))`
-/

namespace A022451.P945709315113988097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A114577 (A167499 n + (n : ℤ)).toNat)

end

end A022451.P945709315113988097

/-! ## A022451.P9944281719594413395

`lcm((-1)^n, A114577(A167614(n+1)))`
-/

namespace A022451.P9944281719594413395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A114577 (A167614 (n + 1)).toNat)

end

end A022451.P9944281719594413395

/-! ## A022451.P11372945147652778720

`or(A000007(n), A114577(A167614(n+1)))`
-/

namespace A022451.P11372945147652778720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A114577 (A167614 (n + 1)).toNat)

end

end A022451.P11372945147652778720

/-! ## A022451.P7002998824935556216

`char[A074680(n)]*A114577(A046691(n)+7)`
-/

namespace A022451.P7002998824935556216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A114577 (A046691 n + 7).toNat

end

end A022451.P7002998824935556216

/-! ## A022451.P3217620503128082230

`A114577(A046691(n)+7)%A205926(n+1)`
-/

namespace A022451.P3217620503128082230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114577 (A046691 n + 7).toNat) (A205926 (n + 1))

end

end A022451.P3217620503128082230

/-! ## A022451.P13236354170447808734

`A007318(C(2, n))*A114577(A167499(n)+n)`
-/

namespace A022451.P13236354170447808734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A114577 (A167499 n + (n : ℤ)).toNat

end

end A022451.P13236354170447808734

/-! ## A022451.P8179326379415498392

`A114577(A046691(n)+7)+A008683(4*(n+1))`
-/

namespace A022451.P8179326379415498392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A046691 n + 7).toNat + A008683 (4 * (n + 1))

end

end A022451.P8179326379415498392

/-! ## A022451.P16610365449733962380

`A014963(6*(n+1))*A114577(A046691(n)+7)`
-/

namespace A022451.P16610365449733962380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A114577 (A046691 n + 7).toNat

end

end A022451.P16610365449733962380

/-! ## A022451.P13096514944262365555

`A114577(A046691(n)+7)+val(A000040(n+1), 4)`
-/

namespace A022451.P13096514944262365555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114577 (A046691 n + 7).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A022451.P13096514944262365555

/-!
# A022452: Expansion of 1/((1-x)*(1-5*x)*(1-7*x)*(1-8*x)).

The programs for A022452, the canonical program `A022452.P9067295663875747397` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022452 has offset 0).

The definition of A022452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022452.P9067295663875747397

`15*a(n-1)-56*a(n-2)+(5^(n+1)-1)/4` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022452

/-- `15*a(n-1)-56*a(n-2)+(5^(n+1)-1)/4` -/
def P9067295663875747397.Spec : Prop :=
  ∀ n, P9067295663875747397.a n = (A022452 n : ℚ)

end A022452

/-! ## A022452.P10543405612659979574

`∑[A019928(n)]`
-/

namespace A022452.P10543405612659979574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022452.P10543405612659979574

namespace A022452

/-- `∑[A019928(n)]` -/
def P10543405612659979574.Spec : Prop :=
  ∀ n, P10543405612659979574.a n = A022452 n

end A022452

/-! ## A022452.P17115288870308543098

`2*A021224(n)-A021124(n)`
-/

namespace A022452.P17115288870308543098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021224 n - A021124 n

end

end A022452.P17115288870308543098

namespace A022452

/-- `2*A021224(n)-A021124(n)` -/
def P17115288870308543098.Spec : Prop :=
  ∀ n, P17115288870308543098.a n = A022452 n

end A022452

/-! ## A022452.P16416484757419757658

`2*A021544(n)-A021434(n)`
-/

namespace A022452.P16416484757419757658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021544 n - A021434 n

end

end A022452.P16416484757419757658

namespace A022452

/-- `2*A021544(n)-A021434(n)` -/
def P16416484757419757658.Spec : Prop :=
  ∀ n, P16416484757419757658.a n = A022452 n

end A022452

/-! ## A022452.P17925828768461674656

`A016233(n+1)-A016230(n+1)`
-/

namespace A022452.P17925828768461674656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016233 (n + 1) - A016230 (n + 1)

end

end A022452.P17925828768461674656

namespace A022452

/-- `A016233(n+1)-A016230(n+1)` -/
def P17925828768461674656.Spec : Prop :=
  ∀ n, P17925828768461674656.a n = A022452 n

end A022452

/-! ## A022452.P10320511348964180554

`2*A022453(n)-A022469(n)`
-/

namespace A022452.P10320511348964180554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022453 n - A022469 n

end

end A022452.P10320511348964180554

namespace A022452

/-- `2*A022453(n)-A022469(n)` -/
def P10320511348964180554.Spec : Prop :=
  ∀ n, P10320511348964180554.a n = A022452 n

end A022452

/-! ## A022452.P4485495586334610255

`2*A022455(n)-A024439(n)`
-/

namespace A022452.P4485495586334610255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022455 n - A024439 n

end

end A022452.P4485495586334610255

namespace A022452

/-- `2*A022455(n)-A024439(n)` -/
def P4485495586334610255.Spec : Prop :=
  ∀ n, P4485495586334610255.a n = A022452 n

end A022452

/-!
# A022453: Expansion of 1/((1-x)*(1-5*x)*(1-7*x)*(1-9*x)).

The programs for A022453, the canonical program `A022453.P15431314009138290437` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022453 has offset 0).

The definition of A022453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022453.P15431314009138290437

`(3*9^(n+3)-8*7^(n+3)+6*5^(n+3)-1)/192`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022453

/-- `(3*9^(n+3)-8*7^(n+3)+6*5^(n+3)-1)/192` -/
def P15431314009138290437.Spec : Prop :=
  ∀ n, P15431314009138290437.a n = (A022453 n : ℚ)

end A022453

/-! ## A022453.P1523417504971563860

`∑[A019943(n)]`
-/

namespace A022453.P1523417504971563860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022453.P1523417504971563860

namespace A022453

/-- `∑[A019943(n)]` -/
def P1523417504971563860.Spec : Prop :=
  ∀ n, P1523417504971563860.a n = A022453 n

end A022453

/-! ## A022453.P4794619689612244279

`2*A021594(n)-A021454(n)`
-/

namespace A022453.P4794619689612244279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021594 n - A021454 n

end

end A022453.P4794619689612244279

namespace A022453

/-- `2*A021594(n)-A021454(n)` -/
def P4794619689612244279.Spec : Prop :=
  ∀ n, P4794619689612244279.a n = A022453 n

end A022453

/-! ## A022453.P8480712832707793772

`A021544(n)+A021634(n)-A021454(n)`
-/

namespace A022453.P8480712832707793772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021544 n + (A021634 n - A021454 n)

end

end A022453.P8480712832707793772

namespace A022453

/-- `A021544(n)+A021634(n)-A021454(n)` -/
def P8480712832707793772.Spec : Prop :=
  ∀ n, P8480712832707793772.a n = A022453 n

end A022453

/-! ## A022453.P10600010687145897667

`2*A022455(n)-A023540(n)`
-/

namespace A022453.P10600010687145897667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022455 n - A023540 n

end

end A022453.P10600010687145897667

namespace A022453

/-- `2*A022455(n)-A023540(n)` -/
def P10600010687145897667.Spec : Prop :=
  ∀ n, P10600010687145897667.a n = A022453 n

end A022453

/-! ## A022453.P10880760873098969174

`∑[2*A020000(n)-A020499(n)]`
-/

namespace A022453.P10880760873098969174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020000 n - A020499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022453.P10880760873098969174

namespace A022453

/-- `∑[2*A020000(n)-A020499(n)]` -/
def P10880760873098969174.Spec : Prop :=
  ∀ n, P10880760873098969174.a n = A022453 n

end A022453

/-!
# A022454: Expansion of 1/((1-x)*(1-5*x)*(1-7*x)*(1-10*x)).

The programs for A022454, the canonical program `A022454.P13468604187403530846` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022454 has offset 0).

The definition of A022454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022454.P13468604187403530846

`∑[A019958(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022454

/-- `∑[A019958(n)]` -/
def P13468604187403530846.Spec : Prop :=
  ∀ n, P13468604187403530846.a n = A022454 n

theorem P13468604187403530846.correct : P13468604187403530846.Spec := by
  intro n
  simp only [A022454]

end A022454

/-! ## A022454.P427091579244807852

`A016230(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A022454.P427091579244807852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016230 n + 10 * a (n - 1)

end

end A022454.P427091579244807852

namespace A022454

/-- `A016230(n)+10*a(n-1)` -/
def P427091579244807852.Spec : Prop :=
  ∀ n, P427091579244807852.a n = A022454 n

end A022454

/-! ## A022454.P17648965115718787059

`2*A016252(n)-A016230(n)`
-/

namespace A022454.P17648965115718787059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016252 n - A016230 n

end

end A022454.P17648965115718787059

namespace A022454

/-- `2*A016252(n)-A016230(n)` -/
def P17648965115718787059.Spec : Prop :=
  ∀ n, P17648965115718787059.a n = A022454 n

end A022454

/-! ## A022454.P13700006626053372575

`A021144(n)+A021234(n)-A021124(n)`
-/

namespace A022454.P13700006626053372575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021144 n + (A021234 n - A021124 n)

end

end A022454.P13700006626053372575

namespace A022454

/-- `A021144(n)+A021234(n)-A021124(n)` -/
def P13700006626053372575.Spec : Prop :=
  ∀ n, P13700006626053372575.a n = A022454 n

end A022454

/-! ## A022454.P5531278354476608285

`A021604(n)+A021604(n)-A021464(n)`
-/

namespace A022454.P5531278354476608285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021604 n + (A021604 n - A021464 n)

end

end A022454.P5531278354476608285

namespace A022454

/-- `A021604(n)+A021604(n)-A021464(n)` -/
def P5531278354476608285.Spec : Prop :=
  ∀ n, P5531278354476608285.a n = A022454 n

end A022454

/-! ## A022454.P6427466633286776690

`2*A021604(n)-A021464(n)`
-/

namespace A022454.P6427466633286776690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021604 n - A021464 n

end

end A022454.P6427466633286776690

namespace A022454

/-- `2*A021604(n)-A021464(n)` -/
def P6427466633286776690.Spec : Prop :=
  ∀ n, P6427466633286776690.a n = A022454 n

end A022454

/-!
# A022455: Expansion of 1/((1-x)*(1-5*x)*(1-7*x)*(1-11*x)).

The programs for A022455, there is no canonical definition to state claims against.
-/

/-! ## A022455.P2287105366485229161

`∑[A020000(n)]`
-/

namespace A022455.P2287105366485229161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022455.P2287105366485229161

/-! ## A022455.P14616551750276396295

`2*A021474(n)-A021424(n)`
-/

namespace A022455.P14616551750276396295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021474 n - A021424 n

end

end A022455.P14616551750276396295

/-! ## A022455.P15262326634320053316

`2*A021614(n)-A021474(n)`
-/

namespace A022455.P15262326634320053316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021614 n - A021474 n

end

end A022455.P15262326634320053316

/-! ## A022455.P3818937321533947880

`(A023540(n)+A022453(n))/2`
-/

namespace A022455.P3818937321533947880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023540 n + A022453 n : ℚ) / 2

end

end A022455.P3818937321533947880

/-! ## A022455.P12033128375591419501

`(A024439(n)+A022452(n))/2`
-/

namespace A022455.P12033128375591419501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024439 n + A022452 n : ℚ) / 2

end

end A022455.P12033128375591419501

/-! ## A022455.P14575054419242734973

`A021434(n)+A021664(n)-A021424(n)`
-/

namespace A022455.P14575054419242734973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021434 n + (A021664 n - A021424 n)

end

end A022455.P14575054419242734973

/-! ## A022455.P8482756270543714064

`A021594(n)+A021694(n)-A021474(n)`
-/

namespace A022455.P8482756270543714064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021594 n + (A021694 n - A021474 n)

end

end A022455.P8482756270543714064

/-! ## A022455.P15873603272022360757

`(A016254(n+1)-A016238(n+1))/2`
-/

namespace A022455.P15873603272022360757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016254 (n + 1) - A016238 (n + 1) : ℚ) / 2

end

end A022455.P15873603272022360757

/-!
# A022456: Expansion of 1/((1-x)*(1-5*x)*(1-7*x)*(1-12*x)).

The programs for A022456, there is no canonical definition to state claims against.
-/

/-! ## A022456.P14935352566537360373

`∑[A020341(n)]`
-/

namespace A022456.P14935352566537360373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022456.P14935352566537360373

/-! ## A022456.P14001805554198983977

`A016255(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A022456.P14001805554198983977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016255 n + 5 * a (n - 1)

end

end A022456.P14001805554198983977

/-! ## A022456.P14972580571555081673

`2*A021164(n)-A021124(n)`
-/

namespace A022456.P14972580571555081673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021164 n - A021124 n

end

end A022456.P14972580571555081673

/-! ## A022456.P537318101799795785

`A016239(n)+A016255(n)-A016230(n)`
-/

namespace A022456.P537318101799795785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 n + (A016255 n - A016230 n)

end

end A022456.P537318101799795785

/-! ## A022456.P2995365998252912654

`A021629(n)+A021629(n)-A021484(n)`
-/

namespace A022456.P2995365998252912654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021629 n + (A021629 n - A021484 n)

end

end A022456.P2995365998252912654

/-! ## A022456.P10634310926206593942

`a(n-1)+A020341(n)*A105700(A000040(n+1))` with `a(0)=1`
-/

namespace A022456.P10634310926206593942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A020341 n * A105700 (A000040 (n + 1)).toNat

end

end A022456.P10634310926206593942

/-! ## A022456.P10482688252737425862

`2*A021629(n)-A021484(n)`
-/

namespace A022456.P10482688252737425862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021629 n - A021484 n

end

end A022456.P10482688252737425862

/-! ## A022456.P5685901879665601941

`(A016255(n+1)-A016239(n+1))/2`
-/

namespace A022456.P5685901879665601941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016255 (n + 1) - A016239 (n + 1) : ℚ) / 2

end

end A022456.P5685901879665601941

/-!
# A022457: a(n) = prime(2n) mod prime(n).

The programs for A022457, the canonical program `A022457.P6255245100829912795` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022457 has offset 1).

The definition of A022457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022457.P6255245100829912795

`abs(A066066(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A022457

/-- `abs(A066066(n+1))` -/
def P6255245100829912795.Spec : Prop :=
  ∀ n, P6255245100829912795.a n = A022457 (n + 1)

theorem P6255245100829912795.correct : P6255245100829912795.Spec := by
  intro n
  simp only [A022457, Nat.add_sub_cancel]

end A022457

/-! ## A022457.P10492695480905142695

`A066066(A028310(n)+1)`
-/

namespace A022457.P10492695480905142695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (A028310 n + 1).toNat

end

end A022457.P10492695480905142695

namespace A022457

/-- `A066066(A028310(n)+1)` -/
def P10492695480905142695.Spec : Prop :=
  ∀ n, P10492695480905142695.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P14157487740864254759

`A305438(lcm(2, A066066(n+1)))`
-/

namespace A022457.P14157487740864254759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305438 (Int.lcm 2 (A066066 (n + 1)))

end

end A022457.P14157487740864254759

namespace A022457

/-- `A305438(lcm(2, A066066(n+1)))` -/
def P14157487740864254759.Spec : Prop :=
  ∀ n, P14157487740864254759.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P1831409135769930914

`A066066(A000007(n)+1+n)`
-/

namespace A022457.P1831409135769930914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (A000007 n + 1 + (n : ℤ)).toNat

end

end A022457.P1831409135769930914

namespace A022457

/-- `A066066(A000007(n)+1+n)` -/
def P1831409135769930914.Spec : Prop :=
  ∀ n, P1831409135769930914.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P9599554113951862686

`A066066(n+1)+A000038(n)`
-/

namespace A022457.P9599554113951862686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + A000038 n

end

end A022457.P9599554113951862686

namespace A022457

/-- `A066066(n+1)+A000038(n)` -/
def P9599554113951862686.Spec : Prop :=
  ∀ n, P9599554113951862686.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P11393690549140683185

`A066066(n+1)*A158388(n)`
-/

namespace A022457.P11393690549140683185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) * A158388 n

end

end A022457.P11393690549140683185

namespace A022457

/-- `A066066(n+1)*A158388(n)` -/
def P11393690549140683185.Spec : Prop :=
  ∀ n, P11393690549140683185.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P6541630455031799348

`and(A066066(n+1), A260196(n))`
-/

namespace A022457.P6541630455031799348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066066 (n + 1)) (A260196 n)

end

end A022457.P6541630455031799348

namespace A022457

/-- `and(A066066(n+1), A260196(n))` -/
def P6541630455031799348.Spec : Prop :=
  ∀ n, P6541630455031799348.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P17327643684792952974

`A031215(n+1)%A000040(n+1)`
-/

namespace A022457.P17327643684792952974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031215 (n + 1)) (A000040 (n + 1))

end

end A022457.P17327643684792952974

namespace A022457

/-- `A031215(n+1)%A000040(n+1)` -/
def P17327643684792952974.Spec : Prop :=
  ∀ n, P17327643684792952974.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P10683101833835048630

`A072473(n+1)%A000040(n+1)`
-/

namespace A022457.P10683101833835048630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072473 (n + 1)) (A000040 (n + 1))

end

end A022457.P10683101833835048630

namespace A022457

/-- `A072473(n+1)%A000040(n+1)` -/
def P10683101833835048630.Spec : Prop :=
  ∀ n, P10683101833835048630.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P15187359562782212005

`A072672(n+1)%A000040(n+1)`
-/

namespace A022457.P15187359562782212005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072672 (n + 1)) (A000040 (n + 1))

end

end A022457.P15187359562782212005

namespace A022457

/-- `A072672(n+1)%A000040(n+1)` -/
def P15187359562782212005.Spec : Prop :=
  ∀ n, P15187359562782212005.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P16934640629077406859

`A092390(n+1)%A000040(n+1)`
-/

namespace A022457.P16934640629077406859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092390 (n + 1)) (A000040 (n + 1))

end

end A022457.P16934640629077406859

namespace A022457

/-- `A092390(n+1)%A000040(n+1)` -/
def P16934640629077406859.Spec : Prop :=
  ∀ n, P16934640629077406859.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P7889004097562164820

`A066066(A109578(2*n+1)+n+1)`
-/

namespace A022457.P7889004097562164820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (A109578 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A022457.P7889004097562164820

namespace A022457

/-- `A066066(A109578(2*n+1)+n+1)` -/
def P7889004097562164820.Spec : Prop :=
  ∀ n, P7889004097562164820.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P5226917169739247493

`A066066(A254667(n+1))`
-/

namespace A022457.P5226917169739247493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (A254667 (n + 1)).toNat

end

end A022457.P5226917169739247493

namespace A022457

/-- `A066066(A254667(n+1))` -/
def P5226917169739247493.Spec : Prop :=
  ∀ n, P5226917169739247493.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P5340852504523567235

`A066066(n+2-A352894(2*n+1))`
-/

namespace A022457.P5340852504523567235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 ((n + 2 : ℤ) - A352894 (2 * n + 1)).toNat

end

end A022457.P5340852504523567235

namespace A022457

/-- `A066066(n+2-A352894(2*n+1))` -/
def P5340852504523567235.Spec : Prop :=
  ∀ n, P5340852504523567235.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P13222463137513239683

`A066066(A065033(2*n)+1)`
-/

namespace A022457.P13222463137513239683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (A065033 (2 * n) + 1).toNat

end

end A022457.P13222463137513239683

namespace A022457

/-- `A066066(A065033(2*n)+1)` -/
def P13222463137513239683.Spec : Prop :=
  ∀ n, P13222463137513239683.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P2943379346422345801

`A065091(2*n+1)-A077017(n+2)`
-/

namespace A022457.P2943379346422345801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * n + 1) - A077017 (n + 2)

end

end A022457.P2943379346422345801

namespace A022457

/-- `A065091(2*n+1)-A077017(n+2)` -/
def P2943379346422345801.Spec : Prop :=
  ∀ n, P2943379346422345801.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P17398730557994448635

`A000040(2*(n+1))%A000040(n+1)`
-/

namespace A022457.P17398730557994448635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * (n + 1))) (A000040 (n + 1))

end

end A022457.P17398730557994448635

namespace A022457

/-- `A000040(2*(n+1))%A000040(n+1)` -/
def P17398730557994448635.Spec : Prop :=
  ∀ n, P17398730557994448635.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P3076347646235290788

`A000040(n+2+n)%A008578(n+2)`
-/

namespace A022457.P3076347646235290788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2 + n)) (A008578 (n + 2))

end

end A022457.P3076347646235290788

namespace A022457

/-- `A000040(n+2+n)%A008578(n+2)` -/
def P3076347646235290788.Spec : Prop :=
  ∀ n, P3076347646235290788.a n = A022457 (n + 1)

end A022457

/-! ## A022457.P8765663779446262854

`A000040(A005843(n+1))%record[A006530(n+2)]`
-/

namespace A022457.P8765663779446262854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A005843 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A022457.P8765663779446262854

namespace A022457

/-- `A000040(A005843(n+1))%record[A006530(n+2)]` -/
def P8765663779446262854.Spec : Prop :=
  ∀ n, P8765663779446262854.a n = A022457 (n + 1)

end A022457

/-!
# A022458: a(n) = prime(2n-1) mod prime(n).

The programs for A022458, the canonical program `A022458.P394899228385928134` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022458 has offset 1).

The definition of A022458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022458.P2868933600434261470

`A031368(n+1)%A000040(n+1)`
-/

namespace A022458.P2868933600434261470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031368 (n + 1)) (A000040 (n + 1))

end

end A022458.P2868933600434261470

namespace A022458

/-- `A031368(n+1)%A000040(n+1)` -/
def P2868933600434261470.Spec : Prop :=
  ∀ n, P2868933600434261470.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P1734020768910265191

`A031368(A000027(n+1))%A006005(n+1)`
-/

namespace A022458.P1734020768910265191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031368 (A000027 (n + 1)).toNat) (A006005 (n + 1))

end

end A022458.P1734020768910265191

namespace A022458

/-- `A031368(A000027(n+1))%A006005(n+1)` -/
def P1734020768910265191.Spec : Prop :=
  ∀ n, P1734020768910265191.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P394899228385928134

`A110962(A001749(2*n+1)%A001749(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A022458

/-- `A110962(A001749(2*n+1)%A001749(n+1))` -/
def P394899228385928134.Spec : Prop :=
  ∀ n, P394899228385928134.a n = A022458 (n + 1)

theorem P394899228385928134.correct : P394899228385928134.Spec := by
  intro n
  simp only [A022458, Nat.add_sub_cancel]

end A022458

/-! ## A022458.P11596591794008085552

`A045344(A004275(n+1))%A000040(n+1)`
-/

namespace A022458.P11596591794008085552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (A004275 (n + 1)).toNat) (A000040 (n + 1))

end

end A022458.P11596591794008085552

namespace A022458

/-- `A045344(A004275(n+1))%A000040(n+1)` -/
def P11596591794008085552.Spec : Prop :=
  ∀ n, P11596591794008085552.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P12308834265084850565

`A000040(Δ[n²])%A000040(n+1)`
-/

namespace A022458.P12308834265084850565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A000040 (n + 1))

end

end A022458.P12308834265084850565

namespace A022458

/-- `A000040(Δ[n²])%A000040(n+1)` -/
def P12308834265084850565.Spec : Prop :=
  ∀ n, P12308834265084850565.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P3275225103456106009

`A006005(Δ[n²])%A006005(n+1)`
-/

namespace A022458.P3275225103456106009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A006005 (n + 1))

end

end A022458.P3275225103456106009

namespace A022458

/-- `A006005(Δ[n²])%A006005(n+1)` -/
def P3275225103456106009.Spec : Prop :=
  ∀ n, P3275225103456106009.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P17297340293053776046

`A000040(2*n+1)%Δ[A007504(n)]`
-/

namespace A022458.P17297340293053776046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A022458.P17297340293053776046

namespace A022458

/-- `A000040(2*n+1)%Δ[A007504(n)]` -/
def P17297340293053776046.Spec : Prop :=
  ∀ n, P17297340293053776046.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P16908776992450089226

`A008578(2*(n+1))%A008578(n+2)`
-/

namespace A022458.P16908776992450089226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (2 * (n + 1))) (A008578 (n + 2))

end

end A022458.P16908776992450089226

namespace A022458

/-- `A008578(2*(n+1))%A008578(n+2)` -/
def P16908776992450089226.Spec : Prop :=
  ∀ n, P16908776992450089226.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P3117311477038086916

`record[A000040(A000265(n+1))]%A000040(n+1)`
-/

namespace A022458.P3117311477038086916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000040 (n + 1))

end

end A022458.P3117311477038086916

namespace A022458

/-- `record[A000040(A000265(n+1))]%A000040(n+1)` -/
def P3117311477038086916.Spec : Prop :=
  ∀ n, P3117311477038086916.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P8550285331045713158

`A008578(A005843(n+1))%record[A006530(n+2)]`
-/

namespace A022458.P8550285331045713158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A005843 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A022458.P8550285331045713158

namespace A022458

/-- `A008578(A005843(n+1))%record[A006530(n+2)]` -/
def P8550285331045713158.Spec : Prop :=
  ∀ n, P8550285331045713158.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P5227230136779049534

`A000040(2*n+1)-A008578(n+2)*A329683(n+1)`
-/

namespace A022458.P5227230136779049534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1) - A008578 (n + 2) * A329683 (n + 1)

end

end A022458.P5227230136779049534

namespace A022458

/-- `A000040(2*n+1)-A008578(n+2)*A329683(n+1)` -/
def P5227230136779049534.Spec : Prop :=
  ∀ n, P5227230136779049534.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P1168546690179399651

`A008578(2*(n+1))-A008578(n+2)*A329683(n+1)`
-/

namespace A022458.P1168546690179399651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * (n + 1)) - A008578 (n + 2) * A329683 (n + 1)

end

end A022458.P1168546690179399651

namespace A022458

/-- `A008578(2*(n+1))-A008578(n+2)*A329683(n+1)` -/
def P1168546690179399651.Spec : Prop :=
  ∀ n, P1168546690179399651.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P12026784993666536691

`A207790(A016825(n))%A000040(n+1)`
-/

namespace A022458.P12026784993666536691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207790 (A016825 n).toNat) (A000040 (n + 1))

end

end A022458.P12026784993666536691

namespace A022458

/-- `A207790(A016825(n))%A000040(n+1)` -/
def P12026784993666536691.Spec : Prop :=
  ∀ n, P12026784993666536691.a n = A022458 (n + 1)

end A022458

/-! ## A022458.P3368352611860047224

`A158611(2*(n+1)+1)%p?[comp[n²]]`
-/

namespace A022458.P3368352611860047224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158611 (2 * (n + 1) + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A022458.P3368352611860047224

namespace A022458

/-- `A158611(2*(n+1)+1)%p?[comp[n²]]` -/
def P3368352611860047224.Spec : Prop :=
  ∀ n, P3368352611860047224.a n = A022458 (n + 1)

end A022458

/-!
# A022459: a(n) = prime(2n+1) mod prime(n).

The programs for A022459, the canonical program `A022459.P8326610050266846684` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022459 has offset 1).

The definition of A022459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022459.P16270942445736278959

`A031368(n+2)%A000040(n+1)`
-/

namespace A022459.P16270942445736278959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031368 (n + 2)) (A000040 (n + 1))

end

end A022459.P16270942445736278959

namespace A022459

/-- `A031368(n+2)%A000040(n+1)` -/
def P16270942445736278959.Spec : Prop :=
  ∀ n, P16270942445736278959.a n = A022459 (n + 1)

end A022459

/-! ## A022459.P8326610050266846684

`Δ[A077131(n+1)]%A000040(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022459

/-- `Δ[A077131(n+1)]%A000040(n+1)` -/
def P8326610050266846684.Spec : Prop :=
  ∀ n, P8326610050266846684.a n = A022459 (n + 1)

theorem P8326610050266846684.correct : P8326610050266846684.Spec := by
  intro n
  simp only [A022459, Nat.add_sub_cancel]

end A022459

/-! ## A022459.P6888644711935074402

`A065091(2*(n+1))%Δ[A007504(n)]`
-/

namespace A022459.P6888644711935074402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (2 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A022459.P6888644711935074402

namespace A022459

/-- `A065091(2*(n+1))%Δ[A007504(n)]` -/
def P6888644711935074402.Spec : Prop :=
  ∀ n, P6888644711935074402.a n = A022459 (n + 1)

end A022459

/-! ## A022459.P16203575454870680249

`A004139(2*n+1)%A000040(n+1)`
-/

namespace A022459.P16203575454870680249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004139 (2 * n + 1)) (A000040 (n + 1))

end

end A022459.P16203575454870680249

namespace A022459

/-- `A004139(2*n+1)%A000040(n+1)` -/
def P16203575454870680249.Spec : Prop :=
  ∀ n, P16203575454870680249.a n = A022459 (n + 1)

end A022459

/-! ## A022459.P7748795871990426691

`A045344(2*(n+1))%A000040(n+1)`
-/

namespace A022459.P7748795871990426691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (2 * (n + 1))) (A000040 (n + 1))

end

end A022459.P7748795871990426691

namespace A022459

/-- `A045344(2*(n+1))%A000040(n+1)` -/
def P7748795871990426691.Spec : Prop :=
  ∀ n, P7748795871990426691.a n = A022459 (n + 1)

end A022459

/-! ## A022459.P6377688809022212001

`A065091(2*n+2)%A000040(n+1)`
-/

namespace A022459.P6377688809022212001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (2 * n + 2)) (A000040 (n + 1))

end

end A022459.P6377688809022212001

namespace A022459

/-- `A065091(2*n+2)%A000040(n+1)` -/
def P6377688809022212001.Spec : Prop :=
  ∀ n, P6377688809022212001.a n = A022459 (n + 1)

end A022459

/-! ## A022459.P3005311492628633493

`(A014687(2*(n+1))+1)%A000040(n+1)`
-/

namespace A022459.P3005311492628633493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014687 (2 * (n + 1)) + 1) (A000040 (n + 1))

end

end A022459.P3005311492628633493

namespace A022459

/-- `(A014687(2*(n+1))+1)%A000040(n+1)` -/
def P3005311492628633493.Spec : Prop :=
  ∀ n, P3005311492628633493.a n = A022459 (n + 1)

end A022459

/-! ## A022459.P1230016595542351035

`A000040(2*n+3)%A000040(n+1)`
-/

namespace A022459.P1230016595542351035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * n + 3)) (A000040 (n + 1))

end

end A022459.P1230016595542351035

namespace A022459

/-- `A000040(2*n+3)%A000040(n+1)` -/
def P1230016595542351035.Spec : Prop :=
  ∀ n, P1230016595542351035.a n = A022459 (n + 1)

end A022459

/-! ## A022459.P16213175978753960329

`A008578(2*(n+2))%A008578(n+2)`
-/

namespace A022459.P16213175978753960329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (2 * (n + 2))) (A008578 (n + 2))

end

end A022459.P16213175978753960329

namespace A022459

/-- `A008578(2*(n+2))%A008578(n+2)` -/
def P16213175978753960329.Spec : Prop :=
  ∀ n, P16213175978753960329.a n = A022459 (n + 1)

end A022459

/-! ## A022459.P6204594654513031679

`A116570(4*n+3)%(A116570(2*n)/A116570(2*n+1))`
-/

namespace A022459.P6204594654513031679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116570 (4 * n + 3)) (SequenceMachineLib.roundAway ((A116570 (2 * n) : ℚ) / (A116570 (2 * n + 1) : ℚ)))

end

end A022459.P6204594654513031679

namespace A022459

/-- `A116570(4*n+3)%(A116570(2*n)/A116570(2*n+1))` -/
def P6204594654513031679.Spec : Prop :=
  ∀ n, P6204594654513031679.a n = A022459 (n + 1)

end A022459

/-! ## A022459.P11284479572668759812

`A207790(A016825(n+1))%A000040(n+1)`
-/

namespace A022459.P11284479572668759812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207790 (A016825 (n + 1)).toNat) (A000040 (n + 1))

end

end A022459.P11284479572668759812

namespace A022459

/-- `A207790(A016825(n+1))%A000040(n+1)` -/
def P11284479572668759812.Spec : Prop :=
  ∀ n, P11284479572668759812.a n = A022459 (n + 1)

end A022459

/-!
# A022460: a(n) = prime(3*n) mod prime(n).

The programs for A022460, the canonical program `A022460.P2951721969797138114` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022460 has offset 1).

The definition of A022460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022460.P2951721969797138114

`A031336(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022460

/-- `A031336(n+1)%A000040(n+1)` -/
def P2951721969797138114.Spec : Prop :=
  ∀ n, P2951721969797138114.a n = A022460 (n + 1)

theorem P2951721969797138114.correct : P2951721969797138114.Spec := by
  intro n
  simp only [A022460, Nat.add_sub_cancel]

end A022460

/-! ## A022460.P5945393521974481162

`A275988(n+1)%A000040(n+1)`
-/

namespace A022460.P5945393521974481162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275988 (n + 1)) (A000040 (n + 1))

end

end A022460.P5945393521974481162

namespace A022460

/-- `A275988(n+1)%A000040(n+1)` -/
def P5945393521974481162.Spec : Prop :=
  ∀ n, P5945393521974481162.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P13984808474244485978

`A215848(3*n+1)%A000040(n+1)`
-/

namespace A022460.P13984808474244485978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215848 (3 * n + 1)) (A000040 (n + 1))

end

end A022460.P13984808474244485978

namespace A022460

/-- `A215848(3*n+1)%A000040(n+1)` -/
def P13984808474244485978.Spec : Prop :=
  ∀ n, P13984808474244485978.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P13751628946418204575

`A000040(3*(n+1))%Δ[A007504(n)]`
-/

namespace A022460.P13751628946418204575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (3 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A022460.P13751628946418204575

namespace A022460

/-- `A000040(3*(n+1))%Δ[A007504(n)]` -/
def P13751628946418204575.Spec : Prop :=
  ∀ n, P13751628946418204575.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P12254892973359069829

`A065091(3*n+2)%Δ[A007504(n)]`
-/

namespace A022460.P12254892973359069829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (3 * n + 2)) (f1 (n + 1) - f1 n)

end

end A022460.P12254892973359069829

namespace A022460

/-- `A065091(3*n+2)%Δ[A007504(n)]` -/
def P12254892973359069829.Spec : Prop :=
  ∀ n, P12254892973359069829.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P11963223928127776222

`A008578(3*n+4)%Δ[A007504(n)]`
-/

namespace A022460.P11963223928127776222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (3 * n + 4)) (f1 (n + 1) - f1 n)

end

end A022460.P11963223928127776222

namespace A022460

/-- `A008578(3*n+4)%Δ[A007504(n)]` -/
def P11963223928127776222.Spec : Prop :=
  ∀ n, P11963223928127776222.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P668447059139370484

`sqrt(A001248(3*(n+1)))%sqrt(A001248(n+1))`
-/

namespace A022460.P668447059139370484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (3 * (n + 1)) : ℝ))) (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A022460.P668447059139370484

namespace A022460

/-- `sqrt(A001248(3*(n+1)))%sqrt(A001248(n+1))` -/
def P668447059139370484.Spec : Prop :=
  ∀ n, P668447059139370484.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P8447471254243123054

`A000040(2*n+3+n)%p?[A207790(n+1)]`
-/

namespace A022460.P8447471254243123054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * n + 3 + n)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A022460.P8447471254243123054

namespace A022460

/-- `A000040(2*n+3+n)%p?[A207790(n+1)]` -/
def P8447471254243123054.Spec : Prop :=
  ∀ n, P8447471254243123054.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P8450018130460299463

`p?[A067747(3*n+2)]%A067747(2*n+1)`
-/

namespace A022460.P8450018130460299463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A067747 (2 * n + 1))

end

end A022460.P8450018130460299463

namespace A022460

/-- `p?[A067747(3*n+2)]%A067747(2*n+1)` -/
def P8450018130460299463.Spec : Prop :=
  ∀ n, P8450018130460299463.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P2419949478331740268

`p?[A129767(3*n+2)]%A129767(2*n+1)`
-/

namespace A022460.P2419949478331740268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A129767 (2 * n + 1))

end

end A022460.P2419949478331740268

namespace A022460

/-- `p?[A129767(3*n+2)]%A129767(2*n+1)` -/
def P2419949478331740268.Spec : Prop :=
  ∀ n, P2419949478331740268.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P17113844519622813979

`p?[A207790(3*(n+1))]%(A006093(n+1)+1)`
-/

namespace A022460.P17113844519622813979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A006093 (n + 1) + 1)

end

end A022460.P17113844519622813979

namespace A022460

/-- `p?[A207790(3*(n+1))]%(A006093(n+1)+1)` -/
def P17113844519622813979.Spec : Prop :=
  ∀ n, P17113844519622813979.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P15885508329691809945

`A031336(n+1)%p?[A014681(n)]`
-/

namespace A022460.P15885508329691809945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031336 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A022460.P15885508329691809945

namespace A022460

/-- `A031336(n+1)%p?[A014681(n)]` -/
def P15885508329691809945.Spec : Prop :=
  ∀ n, P15885508329691809945.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P4275353398835998767

`A000040(A004277(n)+3+n)%p?[A352844(n)]`
-/

namespace A022460.P4275353398835998767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A004277 n + 3 + (n : ℤ)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A022460.P4275353398835998767

namespace A022460

/-- `A000040(A004277(n)+3+n)%p?[A352844(n)]` -/
def P4275353398835998767.Spec : Prop :=
  ∀ n, P4275353398835998767.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P1717513497865167588

`A207790(A016969(n)+1)%record[A051664(n+1)]`
-/

namespace A022460.P1717513497865167588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207790 (A016969 n + 1).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A022460.P1717513497865167588

namespace A022460

/-- `A207790(A016969(n)+1)%record[A051664(n+1)]` -/
def P1717513497865167588.Spec : Prop :=
  ∀ n, P1717513497865167588.a n = A022460 (n + 1)

end A022460

/-! ## A022460.P14984079622011026166

`A034694(A006093(3*(n+1)))%A034694(A006093(n+1))`
-/

namespace A022460.P14984079622011026166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034694 (A006093 (3 * (n + 1))).toNat) (A034694 (A006093 (n + 1)).toNat)

end

end A022460.P14984079622011026166

namespace A022460

/-- `A034694(A006093(3*(n+1)))%A034694(A006093(n+1))` -/
def P14984079622011026166.Spec : Prop :=
  ∀ n, P14984079622011026166.a n = A022460 (n + 1)

end A022460

/-!
# A022461: a(n) = prime(n+1)*prime(n+2) mod prime(n).

The programs for A022461, the canonical program `A022461.P9076630821520375924` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022461 has offset 1).

The definition of A022461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022461.P16828817525593712433

`A127345(n+1)%Δ[A007504(n)]`
-/

namespace A022461.P16828817525593712433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127345 (n + 1)) (f1 (n + 1) - f1 n)

end

end A022461.P16828817525593712433

namespace A022461

/-- `A127345(n+1)%Δ[A007504(n)]` -/
def P16828817525593712433.Spec : Prop :=
  ∀ n, P16828817525593712433.a n = A022461 (n + 1)

end A022461

/-! ## A022461.P9076630821520375924

`A109805(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022461

/-- `A109805(n+1)%A000040(n+1)` -/
def P9076630821520375924.Spec : Prop :=
  ∀ n, P9076630821520375924.a n = A022461 (n + 1)

theorem P9076630821520375924.correct : P9076630821520375924.Spec := by
  intro n
  simp only [A022461, Nat.add_sub_cancel]

end A022461

/-! ## A022461.P8455768642480623935

`A293206(n+1)%A000040(n+1)`
-/

namespace A022461.P8455768642480623935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293206 (n + 1)) (A000040 (n + 1))

end

end A022461.P8455768642480623935

namespace A022461

/-- `A293206(n+1)%A000040(n+1)` -/
def P8455768642480623935.Spec : Prop :=
  ∀ n, P8455768642480623935.a n = A022461 (n + 1)

end A022461

/-! ## A022461.P2338326579000150563

`A357679(n+2)%A000040(n+1)`
-/

namespace A022461.P2338326579000150563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357679 (n + 2)) (A000040 (n + 1))

end

end A022461.P2338326579000150563

namespace A022461

/-- `A357679(n+2)%A000040(n+1)` -/
def P2338326579000150563.Spec : Prop :=
  ∀ n, P2338326579000150563.a n = A022461 (n + 1)

end A022461

/-! ## A022461.P17113546120949204048

`A006094(n+2)%A000040(n+1)`
-/

namespace A022461.P17113546120949204048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 2)) (A000040 (n + 1))

end

end A022461.P17113546120949204048

namespace A022461

/-- `A006094(n+2)%A000040(n+1)` -/
def P17113546120949204048.Spec : Prop :=
  ∀ n, P17113546120949204048.a n = A022461 (n + 1)

end A022461

/-! ## A022461.P16877930577759655948

`Δ[A037165(n+1)+A001043(n+1)]%A000040(n+1)`
-/

namespace A022461.P16877930577759655948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A022461.P16877930577759655948

namespace A022461

/-- `Δ[A037165(n+1)+A001043(n+1)]%A000040(n+1)` -/
def P16877930577759655948.Spec : Prop :=
  ∀ n, P16877930577759655948.a n = A022461 (n + 1)

end A022461

/-! ## A022461.P5172267317985361706

`Δ[A065091(n+1)+A037167(n+1)]%A000040(n+1)`
-/

namespace A022461.P5172267317985361706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A037167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A022461.P5172267317985361706

namespace A022461

/-- `Δ[A065091(n+1)+A037167(n+1)]%A000040(n+1)` -/
def P5172267317985361706.Spec : Prop :=
  ∀ n, P5172267317985361706.a n = A022461 (n + 1)

end A022461

/-! ## A022461.P9014343849789932306

`Δ[A023515(n+2)]%A000040(n+1)`
-/

namespace A022461.P9014343849789932306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A022461.P9014343849789932306

namespace A022461

/-- `Δ[A023515(n+2)]%A000040(n+1)` -/
def P9014343849789932306.Spec : Prop :=
  ∀ n, P9014343849789932306.a n = A022461 (n + 1)

end A022461

/-! ## A022461.P13670981186317767091

`Δ[A006094(n+1)]%p?[A000961(n+1)]`
-/

namespace A022461.P13670981186317767091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A022461.P13670981186317767091

namespace A022461

/-- `Δ[A006094(n+1)]%p?[A000961(n+1)]` -/
def P13670981186317767091.Spec : Prop :=
  ∀ n, P13670981186317767091.a n = A022461 (n + 1)

end A022461

/-!
# A022462: a(n) = prime(n)*prime(n+2) mod prime(n+1).

The programs for A022462, the canonical program `A022462.P932014285812963198` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022462 has offset 1).

The definition of A022462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022462.P5059350373937197742

`A090076(n+1)%A065091(n+1)`
-/

namespace A022462.P5059350373937197742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090076 (n + 1)) (A065091 (n + 1))

end

end A022462.P5059350373937197742

namespace A022462

/-- `A090076(n+1)%A065091(n+1)` -/
def P5059350373937197742.Spec : Prop :=
  ∀ n, P5059350373937197742.a n = A022462 (n + 1)

end A022462

/-! ## A022462.P4972805644511835564

`A127345(n+1)%A045344(n+1)`
-/

namespace A022462.P4972805644511835564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127345 (n + 1)) (A045344 (n + 1))

end

end A022462.P4972805644511835564

namespace A022462

/-- `A127345(n+1)%A045344(n+1)` -/
def P4972805644511835564.Spec : Prop :=
  ∀ n, P4972805644511835564.a n = A022462 (n + 1)

end A022462

/-! ## A022462.P11366166153337712602

`A152530(n+1)%A045319(n+1)`
-/

namespace A022462.P11366166153337712602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152530 (n + 1)) (A045319 (n + 1))

end

end A022462.P11366166153337712602

namespace A022462

/-- `A152530(n+1)%A045319(n+1)` -/
def P11366166153337712602.Spec : Prop :=
  ∀ n, P11366166153337712602.a n = A022462 (n + 1)

end A022462

/-! ## A022462.P12420946961925235670

`A152528(n+1)%A045344(n+1)`
-/

namespace A022462.P12420946961925235670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152528 (n + 1)) (A045344 (n + 1))

end

end A022462.P12420946961925235670

namespace A022462

/-- `A152528(n+1)%A045344(n+1)` -/
def P12420946961925235670.Spec : Prop :=
  ∀ n, P12420946961925235670.a n = A022462 (n + 1)

end A022462

/-! ## A022462.P932014285812963198

`A152532(n+1)%A065091(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022462

/-- `A152532(n+1)%A065091(n+1)` -/
def P932014285812963198.Spec : Prop :=
  ∀ n, P932014285812963198.a n = A022462 (n + 1)

theorem P932014285812963198.correct : P932014285812963198.Spec := by
  intro n
  simp only [A022462, Nat.add_sub_cancel]

end A022462

/-! ## A022462.P6193128935317224690

`A205955(n+1)%A065091(n+1)`
-/

namespace A022462.P6193128935317224690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205955 (n + 1)) (A065091 (n + 1))

end

end A022462.P6193128935317224690

namespace A022462

/-- `A205955(n+1)%A065091(n+1)` -/
def P6193128935317224690.Spec : Prop :=
  ∀ n, P6193128935317224690.a n = A022462 (n + 1)

end A022462

/-! ## A022462.P1330933192388497111

`A090076(n+1)-A000040(n+2)*A073271(n+1)`
-/

namespace A022462.P1330933192388497111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A000040 (n + 2) * A073271 (n + 1)

end

end A022462.P1330933192388497111

namespace A022462

/-- `A090076(n+1)-A000040(n+2)*A073271(n+1)` -/
def P1330933192388497111.Spec : Prop :=
  ∀ n, P1330933192388497111.a n = A022462 (n + 1)

end A022462

/-! ## A022462.P14169032300014207436

`A333747(2*(n+1))%A000040(n+2)`
-/

namespace A022462.P14169032300014207436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333747 (2 * (n + 1))) (A000040 (n + 2))

end

end A022462.P14169032300014207436

namespace A022462

/-- `A333747(2*(n+1))%A000040(n+2)` -/
def P14169032300014207436.Spec : Prop :=
  ∀ n, P14169032300014207436.a n = A022462 (n + 1)

end A022462

/-! ## A022462.P7153798879908281008

`A090076(n+1)%p?[A116570(n)]`
-/

namespace A022462.P7153798879908281008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090076 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A022462.P7153798879908281008

namespace A022462

/-- `A090076(n+1)%p?[A116570(n)]` -/
def P7153798879908281008.Spec : Prop :=
  ∀ n, P7153798879908281008.a n = A022462 (n + 1)

end A022462

/-! ## A022462.P6141721771481573411

`A127345(n+1)%p?[A116570(n)]`
-/

namespace A022462.P6141721771481573411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127345 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A022462.P6141721771481573411

namespace A022462

/-- `A127345(n+1)%p?[A116570(n)]` -/
def P6141721771481573411.Spec : Prop :=
  ∀ n, P6141721771481573411.a n = A022462 (n + 1)

end A022462

/-! ## A022462.P6787117795632819078

`A392865(A205955(n+1))`
-/

namespace A022462.P6787117795632819078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (A205955 (n + 1)).toNat

end

end A022462.P6787117795632819078

namespace A022462

/-- `A392865(A205955(n+1))` -/
def P6787117795632819078.Spec : Prop :=
  ∀ n, P6787117795632819078.a n = A022462 (n + 1)

end A022462

/-!
# A022463: a(n) = prime(n^2) mod prime(n).

The programs for A022463, the canonical program `A022463.P4746001646355158804` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022463 has offset 1).

The definition of A022463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022463.P1893292228381962136

`A011757(n+1)%Δ[A007504(n)]`
-/

namespace A022463.P1893292228381962136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011757 (n + 1)) (f1 (n + 1) - f1 n)

end

end A022463.P1893292228381962136

namespace A022463

/-- `A011757(n+1)%Δ[A007504(n)]` -/
def P1893292228381962136.Spec : Prop :=
  ∀ n, P1893292228381962136.a n = A022463 (n + 1)

end A022463

/-! ## A022463.P4746001646355158804

`A011757(A000027(n+1))%A000040(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022463

/-- `A011757(A000027(n+1))%A000040(n+1)` -/
def P4746001646355158804.Spec : Prop :=
  ∀ n, P4746001646355158804.a n = A022463 (n + 1)

theorem P4746001646355158804.correct : P4746001646355158804.Spec := by
  intro n
  simp only [A022463, Nat.add_sub_cancel]

end A022463

/-! ## A022463.P6115290292374703392

`A011757(n+1)-A000040(n+1)*A261619(n+1)`
-/

namespace A022463.P6115290292374703392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) - A000040 (n + 1) * A261619 (n + 1)

end

end A022463.P6115290292374703392

namespace A022463

/-- `A011757(n+1)-A000040(n+1)*A261619(n+1)` -/
def P6115290292374703392.Spec : Prop :=
  ∀ n, P6115290292374703392.a n = A022463 (n + 1)

end A022463

/-! ## A022463.P7056695521201197023

`A213926(n+1)%A000040(n+1)`
-/

namespace A022463.P7056695521201197023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213926 (n + 1)) (A000040 (n + 1))

end

end A022463.P7056695521201197023

namespace A022463

/-- `A213926(n+1)%A000040(n+1)` -/
def P7056695521201197023.Spec : Prop :=
  ∀ n, P7056695521201197023.a n = A022463 (n + 1)

end A022463

/-! ## A022463.P8601101287047418090

`A011757(A289439(2*(n+1)))%A000040(n+1)`
-/

namespace A022463.P8601101287047418090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011757 (A289439 (2 * (n + 1))).toNat) (A000040 (n + 1))

end

end A022463.P8601101287047418090

namespace A022463

/-- `A011757(A289439(2*(n+1)))%A000040(n+1)` -/
def P8601101287047418090.Spec : Prop :=
  ∀ n, P8601101287047418090.a n = A022463 (n + 1)

end A022463

/-! ## A022463.P17335084274814726977

`A092504(n+1)%A000040(n+1)`
-/

namespace A022463.P17335084274814726977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092504 (n + 1)) (A000040 (n + 1))

end

end A022463.P17335084274814726977

namespace A022463

/-- `A092504(n+1)%A000040(n+1)` -/
def P17335084274814726977.Spec : Prop :=
  ∀ n, P17335084274814726977.a n = A022463 (n + 1)

end A022463

/-! ## A022463.P13494112134622611997

`A000040((n+1)²)%p?[abs(xor(n, -2))]`
-/

namespace A022463.P13494112134622611997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((n + 1) ^ 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A022463.P13494112134622611997

namespace A022463

/-- `A000040((n+1)²)%p?[abs(xor(n, -2))]` -/
def P13494112134622611997.Spec : Prop :=
  ∀ n, P13494112134622611997.a n = A022463 (n + 1)

end A022463

/-! ## A022463.P7354688122670375254

`A000040((n+1)²)%Δ[A007504(n)]`
-/

namespace A022463.P7354688122670375254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((n + 1) ^ 2)) (f1 (n + 1) - f1 n)

end

end A022463.P7354688122670375254

namespace A022463

/-- `A000040((n+1)²)%Δ[A007504(n)]` -/
def P7354688122670375254.Spec : Prop :=
  ∀ n, P7354688122670375254.a n = A022463 (n + 1)

end A022463

/-! ## A022463.P1799095228704134846

`A000040(∑[2*n+1])%p?[A207790(n+1)]`
-/

namespace A022463.P1799095228704134846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (∑ j ∈ Finset.range (n + 1), f1 j)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A022463.P1799095228704134846

namespace A022463

/-- `A000040(∑[2*n+1])%p?[A207790(n+1)]` -/
def P1799095228704134846.Spec : Prop :=
  ∀ n, P1799095228704134846.a n = A022463 (n + 1)

end A022463

/-! ## A022463.P11125467280786463886

`A000040(A005563(n)+1)%-A000040(n+1)`
-/

namespace A022463.P11125467280786463886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A005563 n + 1).toNat) (-A000040 (n + 1))

end

end A022463.P11125467280786463886

namespace A022463

/-- `A000040(A005563(n)+1)%-A000040(n+1)` -/
def P11125467280786463886.Spec : Prop :=
  ∀ n, P11125467280786463886.a n = A022463 (n + 1)

end A022463

/-!
# A022464: Primes of the form 36*n^2 - 810*n + 2753, n >= 0, sorted.

The programs for A022464, there is no canonical definition to state claims against.
-/

/-! ## A022464.P13535339793487076242

`A366458(3*n+2)%A179746(A293062(n))`
-/

namespace A022464.P13535339793487076242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366458 (3 * n + 2)) (A179746 (A293062 n).toNat)

end

end A022464.P13535339793487076242

/-! ## A022464.P15071790007141865759

`A366458(3*n+2)+A216230(A317859(n+1))`
-/

namespace A022464.P15071790007141865759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366458 (3 * n + 2) + A216230 (A317859 (n + 1)).toNat

end

end A022464.P15071790007141865759

/-! ## A022464.P10644161788503929862

`A366458(3*n+2)+A216230(A317860(n+1))`
-/

namespace A022464.P10644161788503929862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366458 (3 * n + 2) + A216230 (A317860 (n + 1)).toNat

end

end A022464.P10644161788503929862

/-! ## A022464.P15633290676742320537

`A366458(3*n+2)+A216230(A072360(3*n+2))`
-/

namespace A022464.P15633290676742320537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366458 (3 * n + 2) + A216230 (A072360 (3 * n + 2)).toNat

end

end A022464.P15633290676742320537

/-!
# A022465: Numbers n such that prime(n) mod n <= 10.

The programs for A022465, there is no canonical definition to state claims against.
-/

/-! ## A022465.P10099400777528093879

`lt[A004648(n+1), 11]+1`
-/

namespace A022465.P10099400777528093879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A022465.P10099400777528093879

/-! ## A022465.P3437213947574250004

`lt[A000040(n+1)%(n+1), 11]+1`
-/

namespace A022465.P3437213947574250004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A022465.P3437213947574250004

/-! ## A022465.P8046509279826373239

`lt[p?[A051532(n+1)]%(n+1), 11]+1`
-/

namespace A022465.P8046509279826373239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (n + 1 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A022465.P8046509279826373239

/-! ## A022465.P7352542586347579387

`lt[p?[A026185(n)]%(n+1), 11]+1`
-/

namespace A022465.P7352542586347579387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (n + 1 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A022465.P7352542586347579387

/-! ## A022465.P13237068356692670778

`lt[p?[A257904(n+1)-4]%(n+1), 11]+1`
-/

namespace A022465.P13237068356692670778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257904 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) (n + 1 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A022465.P13237068356692670778

/-!
# A022466: Number of 1's in n-th term of A007651.

The programs for A022466, there is no canonical definition to state claims against.
-/

/-! ## A022466.P6943838936410990027

`A005341(n+1)-(A022468(n+1)+A022467(n+1))`
-/

namespace A022466.P6943838936410990027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005341 (n + 1) - (A022468 (n + 1) + A022467 (n + 1))

end

end A022466.P6943838936410990027

/-! ## A022466.P17620721537954834356

`A005341(n+1)+A022468(n+1)-A056635(n+1)`
-/

namespace A022466.P17620721537954834356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005341 (n + 1) + (A022468 (n + 1) - A056635 (n + 1))

end

end A022466.P17620721537954834356

/-! ## A022466.P5420243566205393365

`A005341(n+1)-(A022468(n+1)+val(A253677(n+1), 2))`
-/

namespace A022466.P5420243566205393365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005341 (n + 1) - (A022468 (n + 1) + (SequenceMachineLib.valuation (A253677 (n + 1)).toNat 2 : ℤ))

end

end A022466.P5420243566205393365

/-! ## A022466.P6333070483795252949

`∑{digits}[A005150(n+1), A003849(#)]`
-/

namespace A022466.P6333070483795252949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003849 x).sum

end

end A022466.P6333070483795252949

/-! ## A022466.P17919787027388464838

`A005341(n+1)-∑{e}[A253677(n+1), #]`
-/

namespace A022466.P17919787027388464838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005341 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A022466.P17919787027388464838

/-!
# A022467: Number of 2's in n-th term of A007651.

The programs for A022467, there is no canonical definition to state claims against.
-/

/-! ## A022467.P2738667561029228732

`A056635(n+1)-2*A022468(n+1)`
-/

namespace A022467.P2738667561029228732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056635 (n + 1) - 2 * A022468 (n + 1)

end

end A022467.P2738667561029228732

/-! ## A022467.P18027384615189093156

`A005341(n+1)-(A022468(n+1)+A022466(n+1))`
-/

namespace A022467.P18027384615189093156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005341 (n + 1) - (A022468 (n + 1) + A022466 (n + 1))

end

end A022467.P18027384615189093156

/-! ## A022467.P5147551417394019340

`A056635(n+1)-A005843(A022468(n+1))`
-/

namespace A022467.P5147551417394019340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056635 (n + 1) - A005843 (A022468 (n + 1)).toNat

end

end A022467.P5147551417394019340

/-! ## A022467.P8610790081586627939

`val(A253677(n+1), 2)`
-/

namespace A022467.P8610790081586627939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253677 (n + 1)).toNat 2

end

end A022467.P8610790081586627939

/-! ## A022467.P345290951305621173

`∑{digits}[A005150(n+1), A237753(#)]`
-/

namespace A022467.P345290951305621173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A237753 x).sum

end

end A022467.P345290951305621173

/-!
# A022468: Number of 3's in n-th term of A007651.

The programs for A022468, there is no canonical definition to state claims against.
-/

/-! ## A022468.P9862801368186745390

`(A056635(n+1)-A022467(n+1))/2`
-/

namespace A022468.P9862801368186745390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056635 (n + 1) - A022467 (n + 1) : ℚ) / 2

end

end A022468.P9862801368186745390

/-! ## A022468.P3009529031599177166

`A005341(n+1)-(A022467(n+1)+A022466(n+1))`
-/

namespace A022468.P3009529031599177166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005341 (n + 1) - (A022467 (n + 1) + A022466 (n + 1))

end

end A022468.P3009529031599177166

/-! ## A022468.P5492242281647899798

`A022466(n+1)+A056635(n+1)-A005341(n+1)`
-/

namespace A022468.P5492242281647899798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022466 (n + 1) + (A056635 (n + 1) - A005341 (n + 1))

end

end A022468.P5492242281647899798

/-! ## A022468.P12858282698953688582

`A004977(n+1)-A056635(n+1)-(A022467(n+1)+A022466(n+1))`
-/

namespace A022468.P12858282698953688582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004977 (n + 1) - A056635 (n + 1) - (A022467 (n + 1) + A022466 (n + 1))

end

end A022468.P12858282698953688582

/-! ## A022468.P186013271506931331

`(A022466(n+1)+A004977(n+1))%A005341(n+1)`
-/

namespace A022468.P186013271506931331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022466 (n + 1) + A004977 (n + 1)) (A005341 (n + 1))

end

end A022468.P186013271506931331

/-!
# A022469: Expansion of 1/((1-x)*(1-5*x)*(1-8*x)*(1-9*x)).

The programs for A022469, the canonical program `A022469.P12581564236107395008` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022469 has offset 0).

The definition of A022469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022469.P12581564236107395008

`(21*9^(n+3)-32*8^(n+3)+14*5^(n+3)-3)/672`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022469

/-- `(21*9^(n+3)-32*8^(n+3)+14*5^(n+3)-3)/672` -/
def P12581564236107395008.Spec : Prop :=
  ∀ n, P12581564236107395008.a n = (A022469 n : ℚ)

end A022469

/-! ## A022469.P4912786702967579355

`∑[A020343(n)]`
-/

namespace A022469.P4912786702967579355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022469.P4912786702967579355

namespace A022469

/-- `∑[A020343(n)]` -/
def P4912786702967579355.Spec : Prop :=
  ∀ n, P4912786702967579355.a n = A022469 n

end A022469

/-! ## A022469.P129017327111934695

`2*A021264(n)-A021134(n)`
-/

namespace A022469.P129017327111934695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021264 n - A021134 n

end

end A022469.P129017327111934695

namespace A022469

/-- `2*A021264(n)-A021134(n)` -/
def P129017327111934695.Spec : Prop :=
  ∀ n, P129017327111934695.a n = A022469 n

end A022469

/-! ## A022469.P3377405164968320960

`2*A022453(n)-A022452(n)`
-/

namespace A022469.P3377405164968320960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022453 n - A022452 n

end

end A022469.P3377405164968320960

namespace A022469

/-- `2*A022453(n)-A022452(n)` -/
def P3377405164968320960.Spec : Prop :=
  ∀ n, P3377405164968320960.a n = A022469 n

end A022469

/-! ## A022469.P1124489680801223036

`A016234(n+1)-A016233(n+1)`
-/

namespace A022469.P1124489680801223036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016234 (n + 1) - A016233 (n + 1)

end

end A022469.P1124489680801223036

namespace A022469

/-- `A016234(n+1)-A016233(n+1)` -/
def P1124489680801223036.Spec : Prop :=
  ∀ n, P1124489680801223036.a n = A022469 n

end A022469

/-! ## A022469.P9433313281079466250

`A016234(n)+A020343(n)-A016233(n)`
-/

namespace A022469.P9433313281079466250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016234 n + (A020343 n - A016233 n)

end

end A022469.P9433313281079466250

namespace A022469

/-- `A016234(n)+A020343(n)-A016233(n)` -/
def P9433313281079466250.Spec : Prop :=
  ∀ n, P9433313281079466250.a n = A022469 n

end A022469

/-! ## A022469.P11325752332705941919

`A021772(n)+A021904(n)-A021764(n)`
-/

namespace A022469.P11325752332705941919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021772 n + (A021904 n - A021764 n)

end

end A022469.P11325752332705941919

namespace A022469

/-- `A021772(n)+A021904(n)-A021764(n)` -/
def P11325752332705941919.Spec : Prop :=
  ∀ n, P11325752332705941919.a n = A022469 n

end A022469

/-! ## A022469.P18379141435931377966

`A021772(n)+A028120(n)-A021904(n)`
-/

namespace A022469.P18379141435931377966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021772 n + (A028120 n - A021904 n)

end

end A022469.P18379141435931377966

namespace A022469

/-- `A021772(n)+A028120(n)-A021904(n)` -/
def P18379141435931377966.Spec : Prop :=
  ∀ n, P18379141435931377966.a n = A022469 n

end A022469

/-!
# A022470: Describe the previous term! (method B - initial term is 2).

The programs for A022470, there is no canonical definition to state claims against.
-/

/-! ## A022470.P10797230097465194024

`2*A022499(n+1)-A022500(n+1)`
-/

namespace A022470.P10797230097465194024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022499 (n + 1) - A022500 (n + 1)

end

end A022470.P10797230097465194024

/-! ## A022470.P8278073857353603478

`2*A022500(n+1)-A022502(n+1)`
-/

namespace A022470.P8278073857353603478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022500 (n + 1) - A022502 (n + 1)

end

end A022470.P8278073857353603478

/-! ## A022470.P15212445150446978791

`2*A022501(n+1)-A022504(n+1)`
-/

namespace A022470.P15212445150446978791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022501 (n + 1) - A022504 (n + 1)

end

end A022470.P15212445150446978791

/-! ## A022470.P17888111431584418744

`(3*A022502(n+1))%A022504(n+1)`
-/

namespace A022470.P17888111431584418744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A022502 (n + 1)) (A022504 (n + 1))

end

end A022470.P17888111431584418744

/-! ## A022470.P13483145008440985313

`(7*A022504(n+1))%A022505(n+1)`
-/

namespace A022470.P13483145008440985313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 * A022504 (n + 1)) (A022505 (n + 1))

end

end A022470.P13483145008440985313

/-!
# A022471: Length of n-th term of A022470.

The programs for A022471, there is no canonical definition to state claims against.
-/

/-! ## A022471.P7579778265580567029

`A022472(n+1)+A022474(n+1)+A022473(n+1)`
-/

namespace A022471.P7579778265580567029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022472 (n + 1) + (A022474 (n + 1) + A022473 (n + 1))

end

end A022471.P7579778265580567029

/-! ## A022471.P1321402125644493167

`A000007(n)+Δ[A088206(A028310(n))]`
-/

namespace A022471.P1321402125644493167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088206 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A022471.P1321402125644493167

/-! ## A022471.P3491689124145285342

`A019590(n+2)+Δ[A088206(A028310(n))]`
-/

namespace A022471.P3491689124145285342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088206 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + (f1 (n + 1) - f1 n)

end

end A022471.P3491689124145285342

/-! ## A022471.P5743414951809713773

`A088206(n+1)+A000007(n)-A088206(A028310(n))`
-/

namespace A022471.P5743414951809713773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088206 (n + 1) + (A000007 n - A088206 (A028310 n).toNat)

end

end A022471.P5743414951809713773

/-!
# A022472: Number of 1's in n-th term of A022470.

The programs for A022472, there is no canonical definition to state claims against.
-/

/-! ## A022472.P13054867008675350029

`A022471(n+1)-(A022474(n+1)+A022473(n+1))`
-/

namespace A022472.P13054867008675350029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022471 (n + 1) - (A022474 (n + 1) + A022473 (n + 1))

end

end A022472.P13054867008675350029

/-! ## A022472.P14008078321692805011

`∑{digits}[A022503(n+1), A003849(#)]`
-/

namespace A022472.P14008078321692805011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003849 x).sum

end

end A022472.P14008078321692805011

/-!
# A022473: Number of 2's in n-th term of A022470.

The programs for A022473, there is no canonical definition to state claims against.
-/

/-! ## A022473.P6092603308880027847

`A022471(n+1)-(A022474(n+1)+A022472(n+1))`
-/

namespace A022473.P6092603308880027847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022471 (n + 1) - (A022474 (n + 1) + A022472 (n + 1))

end

end A022473.P6092603308880027847

/-! ## A022473.P8396715600254091261

`∑{digits}[A022503(n+1), A029214(#)]`
-/

namespace A022473.P8396715600254091261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A029214 x).sum

end

end A022473.P8396715600254091261

/-! ## A022473.P17226195439753763068

`∑{digits}[A006751(n+1), A346797(#)]`
-/

namespace A022473.P17226195439753763068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A346797 x).sum

end

end A022473.P17226195439753763068

/-!
# A022474: Number of 3's in n-th term of A022470.

The programs for A022474, there is no canonical definition to state claims against.
-/

/-! ## A022474.P1095502458921415675

`A022471(n+1)-(A022473(n+1)+A022472(n+1))`
-/

namespace A022474.P1095502458921415675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022471 (n + 1) - (A022473 (n + 1) + A022472 (n + 1))

end

end A022474.P1095502458921415675

/-! ## A022474.P11084168064237160076

`(A022475(n+1)+A022472(n+1))%A022471(n+1)`
-/

namespace A022474.P11084168064237160076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022475 (n + 1) + A022472 (n + 1)) (A022471 (n + 1))

end

end A022474.P11084168064237160076

/-!
# A022475: Sum of digits in n-th term of A022470.

The programs for A022475, there is no canonical definition to state claims against.
-/

/-! ## A022475.P4376405904879236821

`∑{digits}[A006751(n+1), #]`
-/

namespace A022475.P4376405904879236821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A022475.P4376405904879236821

/-! ## A022475.P826842752928160760

`∑{digits}[A022470(n+1), #]`
-/

namespace A022475.P826842752928160760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A022475.P826842752928160760

/-! ## A022475.P624029512437213730

`∑{digits}[A001140(n+1), A006530(#)]`
-/

namespace A022475.P624029512437213730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006530 x).sum

end

end A022475.P624029512437213730

/-! ## A022475.P9203183043967823254

`∑{digits}[A001140(n+1), A014963(#)]`
-/

namespace A022475.P9203183043967823254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014963 x).sum

end

end A022475.P9203183043967823254

/-! ## A022475.P13900478380472606636

`∑{digits}[A001140(n+1), A020639(#)]`
-/

namespace A022475.P13900478380472606636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A020639 x).sum

end

end A022475.P13900478380472606636

/-!
# A022476: Length of n-th term of A006711.

The programs for A022476, there is no canonical definition to state claims against.
-/

/-! ## A022476.P13154588423015285040

`A022477(n+1)+A022479(n+1)+A022478(n+1)`
-/

namespace A022476.P13154588423015285040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022477 (n + 1) + (A022479 (n + 1) + A022478 (n + 1))

end

end A022476.P13154588423015285040

/-! ## A022476.P2461563129490021675

`∑{digits}[A006711(n+1), A006721(#)]`
-/

namespace A022476.P2461563129490021675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006721 x).sum

end

end A022476.P2461563129490021675

/-! ## A022476.P8734115172458066860

`∑{digits}[A006711(n+1), A006723(#)]`
-/

namespace A022476.P8734115172458066860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006723 x).sum

end

end A022476.P8734115172458066860

/-! ## A022476.P8615090869584642433

`∑{digits}[A006711(n+1), A138495(#)]`
-/

namespace A022476.P8615090869584642433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A138495 x).sum

end

end A022476.P8615090869584642433

/-!
# A022477: Number of 1's in n-th term of A006711.

The programs for A022477, there is no canonical definition to state claims against.
-/

/-! ## A022477.P17887921405951554767

`A022476(n+1)-(A022479(n+1)+A022478(n+1))`
-/

namespace A022477.P17887921405951554767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022476 (n + 1) - (A022479 (n + 1) + A022478 (n + 1))

end

end A022477.P17887921405951554767

/-!
# A022478: Number of 2's in n-th term of A006711.

The programs for A022478, there is no canonical definition to state claims against.
-/

/-! ## A022478.P4313099708508259389

`A022476(n+1)-(A022479(n+1)+A022477(n+1))`
-/

namespace A022478.P4313099708508259389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022476 (n + 1) - (A022479 (n + 1) + A022477 (n + 1))

end

end A022478.P4313099708508259389

/-!
# A022479: Number of 3's in n-th term of A006711.

The programs for A022479, there is no canonical definition to state claims against.
-/

/-! ## A022479.P4990957883905833441

`A022476(n+1)-(A022478(n+1)+A022477(n+1))`
-/

namespace A022479.P4990957883905833441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022476 (n + 1) - (A022478 (n + 1) + A022477 (n + 1))

end

end A022479.P4990957883905833441

/-! ## A022479.P13311963028350948436

`(A022480(n+1)+A022477(n+1))%A022476(n+1)`
-/

namespace A022479.P13311963028350948436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022480 (n + 1) + A022477 (n + 1)) (A022476 (n + 1))

end

end A022479.P13311963028350948436

/-!
# A022480: Sum of digits in n-th term of A006711.

The programs for A022480, there is no canonical definition to state claims against.
-/

/-! ## A022480.P7807365988308024354

`∑{digits}[A006711(n+1), #]`
-/

namespace A022480.P7807365988308024354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A022480.P7807365988308024354

/-! ## A022480.P3248532054660972049

`∑{digits}[A022481(n+1), #]`
-/

namespace A022480.P3248532054660972049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A022480.P3248532054660972049

/-! ## A022480.P9280125119397814916

`∑[A352889(A352857(n))]`
-/

namespace A022480.P9280125119397814916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352889 (A352857 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022480.P9280125119397814916

/-!
# A022481: Describe previous term from the right (method B - initial term is 1).

The programs for A022481, there is no canonical definition to state claims against.
-/

/-! ## A022481.P16628091614556016767

`A004086(A006711(n+1))`
-/

namespace A022481.P16628091614556016767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A006711 (n + 1)).toNat

end

end A022481.P16628091614556016767

/-!
# A022483: Length of n-th term of A022482.

The programs for A022483, there is no canonical definition to state claims against.
-/

/-! ## A022483.P4222835052480610419

`A022484(n+1)+A022486(n+1)+A022485(n+1)`
-/

namespace A022483.P4222835052480610419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022484 (n + 1) + (A022486 (n + 1) + A022485 (n + 1))

end

end A022483.P4222835052480610419

/-! ## A022483.P4396585954775059718

`∑{digits}[A022482(n+1), A138495(#)]`
-/

namespace A022483.P4396585954775059718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A138495 x).sum

end

end A022483.P4396585954775059718

/-! ## A022483.P17339415007552586052

`record[∏{e}[A130670(n+1)², #]]`
-/

namespace A022483.P17339415007552586052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130670 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022483.P17339415007552586052

/-! ## A022483.P4106718777538448528

`∑[∏[A214323(3*2^n-2)]]`
-/

namespace A022483.P4106718777538448528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214323 (3 * 2 ^ n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022483.P4106718777538448528

/-! ## A022483.P9612015082811323677

`record[A001223(A099602(n))]`
-/

namespace A022483.P9612015082811323677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A099602 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022483.P9612015082811323677

/-!
# A022484: Number of 1's in n-th term of A022482.

The programs for A022484, there is no canonical definition to state claims against.
-/

/-! ## A022484.P10159922351193873342

`A022483(n+1)-(A022486(n+1)+A022485(n+1))`
-/

namespace A022484.P10159922351193873342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022483 (n + 1) - (A022486 (n + 1) + A022485 (n + 1))

end

end A022484.P10159922351193873342

/-!
# A022485: Number of 2's in n-th term of A022482.

The programs for A022485, there is no canonical definition to state claims against.
-/

/-! ## A022485.P7240721682111559594

`A022483(n+1)-(A022486(n+1)+A022484(n+1))`
-/

namespace A022485.P7240721682111559594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022483 (n + 1) - (A022486 (n + 1) + A022484 (n + 1))

end

end A022485.P7240721682111559594

/-!
# A022486: Number of 3's in n-th term of A022482.

The programs for A022486, there is no canonical definition to state claims against.
-/

/-! ## A022486.P2388634307108973340

`A022483(n+1)-(A022485(n+1)+A022484(n+1))`
-/

namespace A022486.P2388634307108973340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022483 (n + 1) - (A022485 (n + 1) + A022484 (n + 1))

end

end A022486.P2388634307108973340

/-! ## A022486.P16406787599911977353

`(A022487(n+1)+A022484(n+1))%A022483(n+1)`
-/

namespace A022486.P16406787599911977353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022487 (n + 1) + A022484 (n + 1)) (A022483 (n + 1))

end

end A022486.P16406787599911977353

/-!
# A022487: Sum of digits in n-th term of A022482.

The programs for A022487, there is no canonical definition to state claims against.
-/

/-! ## A022487.P7537484032074852818

`∑{digits}[A022482(n+1), #]`
-/

namespace A022487.P7537484032074852818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A022487.P7537484032074852818

/-! ## A022487.P4813635389296959025

`∑{digits}[A022488(n+1), #]`
-/

namespace A022487.P4813635389296959025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022488 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A022487.P4813635389296959025

/-! ## A022487.P10372249878613058064

`∑[abs(A046951(A001168(n))-n)+1]`
-/

namespace A022487.P10372249878613058064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046951 (A001168 n).toNat - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022487.P10372249878613058064

/-! ## A022487.P16060339975543855627

`A334144(A056323(n))+A033627(n+1)`
-/

namespace A022487.P16060339975543855627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334144 (A056323 n).toNat + A033627 (n + 1)

end

end A022487.P16060339975543855627

/-! ## A022487.P11562864159541879814

`A081306(C(A358533(n+1), A358497(n)))`
-/

namespace A022487.P11562864159541879814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (Nat.choose (A358533 (n + 1)).toNat (A358497 n).toNat)

end

end A022487.P11562864159541879814

/-!
# A022489: An upper bound for linearized chord diagrams.

The programs for A022489, there is no canonical definition to state claims against.
-/

/-! ## A022489.P15526937250042922486

`Δ[A022490(round(sqrt(n²+1)))]`
-/

namespace A022489.P15526937250042922486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022490 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022489.P15526937250042922486

/-! ## A022489.P4968823844177597665

`abs(Δ[A022490(A028310(n))])`
-/

namespace A022489.P4968823844177597665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022490 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022489.P4968823844177597665

/-! ## A022489.P5997637535216341237

`A022490(n+1)-A022490(round(sqrt(n²+1)))`
-/

namespace A022489.P5997637535216341237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022490 (n + 1) - A022490 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A022489.P5997637535216341237

/-! ## A022489.P11120406114672054560

`A028310(A022490(n+1))-A022490(A028310(n))`
-/

namespace A022489.P11120406114672054560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A022490 (n + 1)).toNat - A022490 (A028310 n).toNat

end

end A022489.P11120406114672054560

/-!
# A022490: An upper bound for linearized chord diagrams.

The programs for A022490, there is no canonical definition to state claims against.
-/

/-! ## A022490.P3211772171429749157

`∑[A022489(n+1)]+1`
-/

namespace A022490.P3211772171429749157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022490.P3211772171429749157

/-! ## A022490.P3088329162811686592

`∑[A022489(A028310(n)+1)]`
-/

namespace A022490.P3088329162811686592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022489 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022490.P3088329162811686592

/-! ## A022490.P5801436682351885154

`∑[A022489(A254667(n+1))]`
-/

namespace A022490.P5801436682351885154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022489 (A254667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022490.P5801436682351885154

/-! ## A022490.P15866786443083406850

`∑[A022489(A233583(n+2))]`
-/

namespace A022490.P15866786443083406850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022489 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022490.P15866786443083406850

/-! ## A022490.P15574611872747990297

`a(n-1)+A097479(n)+A022489(A028310(n)+1)` with `a(0)=1`
-/

namespace A022490.P15574611872747990297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A097479 n + A022489 (A028310 n + 1).toNat)

end

end A022490.P15574611872747990297

/-!
# A022491: An upper bound for linearized chord diagrams.

The programs for A022491, there is no canonical definition to state claims against.
-/

/-! ## A022491.P3899920631889062645

`Δ[A022492(round(sqrt(n²+1)))]`
-/

namespace A022491.P3899920631889062645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022492 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022491.P3899920631889062645

/-! ## A022491.P13538407219001200256

`abs(Δ[A022492(A028310(n))])`
-/

namespace A022491.P13538407219001200256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022492 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022491.P13538407219001200256

/-! ## A022491.P14967479892506046053

`record[Δ[A022492(A005378(n))]]`
-/

namespace A022491.P14967479892506046053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022492 (A005378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022491.P14967479892506046053

/-! ## A022491.P14253867462022894448

`record[Δ[A022492(A008619(n))]]`
-/

namespace A022491.P14253867462022894448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022492 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022491.P14253867462022894448

/-! ## A022491.P6125978676297327857

`record[Δ[A022492(A025791(n))]]`
-/

namespace A022491.P6125978676297327857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022492 (A025791 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022491.P6125978676297327857

/-!
# A022492: An upper bound for linearized chord diagrams.

The programs for A022492, there is no canonical definition to state claims against.
-/

/-! ## A022492.P12709127844175255378

`∑[A022491(n+1)]+1`
-/

namespace A022492.P12709127844175255378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022492.P12709127844175255378

/-! ## A022492.P17178303222590562261

`∑[A022491(A028310(n)+1)]`
-/

namespace A022492.P17178303222590562261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022491 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022492.P17178303222590562261

/-! ## A022492.P12180249731078128669

`∑[A022491(A254667(n+1))]`
-/

namespace A022492.P12180249731078128669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022491 (A254667 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022492.P12180249731078128669

/-! ## A022492.P3570301168626060621

`∑[A022491(A233583(n+2))]`
-/

namespace A022492.P3570301168626060621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022491 (A233583 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022492.P3570301168626060621

/-! ## A022492.P14417851079920904556

`A022491(n+1)+a(A022465(n)-1)` with `a(0)=1`
-/

namespace A022492.P14417851079920904556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022491 (n + 1) + a (A022465 n - 1).toNat

end

end A022492.P14417851079920904556

/-!
# A022493: Fishburn numbers: number of linearized chord diagrams of degree n; also number of nonisomorphic interval orders on n unlabeled points.

The programs for A022493, there is no canonical definition to state claims against.
-/

/-! ## A022493.P17060572879300092652

`A175579(∑[n]+1)`
-/

namespace A022493.P17060572879300092652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A022493.P17060572879300092652

/-! ## A022493.P17817732618057157516

`A218579(∑[n+1])`
-/

namespace A022493.P17817732618057157516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218579 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022493.P17817732618057157516

/-! ## A022493.P8992001392533808873

`gcd(A000038(n), A175579(A000124(n)))`
-/

namespace A022493.P8992001392533808873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A175579 (A000124 n).toNat)

end

end A022493.P8992001392533808873

/-! ## A022493.P6861129407679862478

`lcm(A033999(n), A218579(A000124(n)))`
-/

namespace A022493.P6861129407679862478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A218579 (A000124 n).toNat)

end

end A022493.P6861129407679862478

/-! ## A022493.P7071905342777018200

`or(A000007(n), A175579(A000124(n)))`
-/

namespace A022493.P7071905342777018200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A175579 (A000124 n).toNat)

end

end A022493.P7071905342777018200

/-! ## A022493.P3966506853806374919

`or(A151933(n), A175579(A000124(n)))`
-/

namespace A022493.P3966506853806374919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A175579 (A000124 n).toNat)

end

end A022493.P3966506853806374919

/-! ## A022493.P3700958716800937890

`A033999(2*n)*A218579(A000124(n))`
-/

namespace A022493.P3700958716800937890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A218579 (A000124 n).toNat

end

end A022493.P3700958716800937890

/-! ## A022493.P5565480867442257235

`lcm(A153881(n+1), A175579(A000124(n)))`
-/

namespace A022493.P5565480867442257235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A175579 (A000124 n).toNat)

end

end A022493.P5565480867442257235

/-! ## A022493.P16722223997590626024

`A082495(A291339(n+1))*A218579(A000217(n+1))`
-/

namespace A022493.P16722223997590626024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (A291339 (n + 1)).toNat * A218579 (A000217 (n + 1)).toNat

end

end A022493.P16722223997590626024

/-!
# A022494: Number of connected regular linearized chord diagrams of degree n.

The programs for A022494, there is no canonical definition to state claims against.
-/

/-! ## A022494.P16516276987954048474

`A004396(n*a(n-1)-A029095(n)+1)` with `a(0)=1`
-/

namespace A022494.P16516276987954048474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004396 ((n : ℤ) * a (n - 1) - A029095 n + 1).toNat

end

end A022494.P16516276987954048474

/-! ## A022494.P2389215145242277876

`floor(sqrt(sqrt(A146441(3*n+2))))`
-/

namespace A022494.P2389215145242277876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A146441 (3 * n + 2) : ℝ))⌋

end

end A022494.P2389215145242277876

/-! ## A022494.P9882281200654800571

`A294877(∏[A373639(n)])`
-/

namespace A022494.P9882281200654800571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294877 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022494.P9882281200654800571

/-!
# A022495: Conjectured number of irreducible multiple zeta values of depth 7 and weight 2n+19.

The programs for A022495, there is no canonical definition to state claims against.
-/

/-! ## A022495.P12054200454136321367

`A263433(n)+A225600(A225596(n))`
-/

namespace A022495.P12054200454136321367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263433 n + A225600 (A225596 n).toNat

end

end A022495.P12054200454136321367

/-! ## A022495.P11169010106628628779

`A023615(n)-A309873(A293138(n))`
-/

namespace A022495.P11169010106628628779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023615 n - A309873 (A293138 n).toNat

end

end A022495.P11169010106628628779

/-! ## A022495.P248232456708483338

`A309873(2*A293138(n))+A023615(n)`
-/

namespace A022495.P248232456708483338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (2 * A293138 n).toNat + A023615 n

end

end A022495.P248232456708483338

/-!
# A022496: Conjectured number of irreducible multiple zeta values of depth 8 and weight 2n+22.

The programs for A022496, there is no canonical definition to state claims against.
-/

/-! ## A022496.P4266096644186757334

`A328668(∑[∑[n]+3]-2)`
-/

namespace A022496.P4266096644186757334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328668 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A022496.P4266096644186757334

/-! ## A022496.P12544686496736285580

`∑[∑[A342496(2^n+n²)]]`
-/

namespace A022496.P12544686496736285580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342496 (2 ^ n + n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022496.P12544686496736285580

/-!
# A022497: Conjectured number of irreducible multiple zeta values of depth 9 and weight 2n+25.

The programs for A022497, there is no canonical definition to state claims against.
-/

/-! ## A022497.P3200037219569479626

`A241141(a(n-1))` with `a(0)=2, a(1)=7`
-/

namespace A022497.P3200037219569479626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  A241141 (a (n - 1)).toNat

end

end A022497.P3200037219569479626

/-!
# A022498: Conjectured number of irreducible multiple zeta values of depth 10 and weight 2n+28.

The programs for A022498, there is no canonical definition to state claims against.
-/

/-! ## A022498.P12498967019371691722

`∑[A057062(A055586(n))]`
-/

namespace A022498.P12498967019371691722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (A055586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022498.P12498967019371691722

/-! ## A022498.P12027559554042046043

`∑[A008498(n)+A000120(A001339(n))]`
-/

namespace A022498.P12027559554042046043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n + A000120 (A001339 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022498.P12027559554042046043

/-!
# A022499: Describe the previous term! (method B - initial term is 3).

The programs for A022499, there is no canonical definition to state claims against.
-/

/-! ## A022499.P7223865783269351932

`(A022500(n+1)+A022470(n+1))/2`
-/

namespace A022499.P7223865783269351932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022500 (n + 1) + A022470 (n + 1) : ℚ) / 2

end

end A022499.P7223865783269351932

/-! ## A022499.P9377194987536739496

`2*A022500(n+1)-A022501(n+1)`
-/

namespace A022499.P9377194987536739496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022500 (n + 1) - A022501 (n + 1)

end

end A022499.P9377194987536739496

/-! ## A022499.P3075870603662759233

`2*A022501(n+1)-A022503(n+1)`
-/

namespace A022499.P3075870603662759233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022501 (n + 1) - A022503 (n + 1)

end

end A022499.P3075870603662759233

/-! ## A022499.P2359224459931564359

`2*A022502(n+1)-A022505(n+1)`
-/

namespace A022499.P2359224459931564359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022502 (n + 1) - A022505 (n + 1)

end

end A022499.P2359224459931564359

/-! ## A022499.P13200821228369924116

`(6*A022504(n+1))%A022505(n+1)`
-/

namespace A022499.P13200821228369924116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * A022504 (n + 1)) (A022505 (n + 1))

end

end A022499.P13200821228369924116

