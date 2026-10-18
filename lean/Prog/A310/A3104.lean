import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A310400: Coordination sequence Gal.6.337.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310400, the canonical program `A310400.P64997417812132731` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310400 has offset 0).

The definition of A310400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310400.P9020203176797176096

`A313546(n)-A134667(n)`
-/

namespace A310400.P9020203176797176096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313546 n - A134667 n

end

end A310400.P9020203176797176096

namespace A310400

/-- `A313546(n)-A134667(n)` -/
def P9020203176797176096.Spec : Prop :=
  ∀ n, P9020203176797176096.a n = A310400 n

end A310400

/-! ## A310400.P64997417812132731

`A312933(n)+∑[A022003(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310400

/-- `A312933(n)+∑[A022003(n)]` -/
def P64997417812132731.Spec : Prop :=
  ∀ n, P64997417812132731.a n = A310400 n

theorem P64997417812132731.correct : P64997417812132731.Spec := by
  intro n
  simp only [A310400]

end A310400

/-! ## A310400.P16707617170206153806

`A312933(n)+A002264(n+1)`
-/

namespace A310400.P16707617170206153806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A002264 (n + 1)

end

end A310400.P16707617170206153806

namespace A310400

/-- `A312933(n)+A002264(n+1)` -/
def P16707617170206153806.Spec : Prop :=
  ∀ n, P16707617170206153806.a n = A310400 n

end A310400

/-! ## A310400.P1196650006240543342

`A312933(n)+n-A004396(n)`
-/

namespace A310400.P1196650006240543342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + ((n : ℤ) - A004396 n)

end

end A310400.P1196650006240543342

namespace A310400

/-- `A312933(n)+n-A004396(n)` -/
def P1196650006240543342.Spec : Prop :=
  ∀ n, P1196650006240543342.a n = A310400 n

end A310400

/-! ## A310400.P7792965816885098497

`A008486(n)+A312933(n)-A008576(n)`
-/

namespace A310400.P7792965816885098497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312933 n - A008576 n)

end

end A310400.P7792965816885098497

namespace A310400

/-- `A008486(n)+A312933(n)-A008576(n)` -/
def P7792965816885098497.Spec : Prop :=
  ∀ n, P7792965816885098497.a n = A310400 n

end A310400

/-! ## A310400.P13598496302313521734

`A310444(n)-Δ[A011865(n)]`
-/

namespace A310400.P13598496302313521734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n - (f1 (n + 1) - f1 n)

end

end A310400.P13598496302313521734

namespace A310400

/-- `A310444(n)-Δ[A011865(n)]` -/
def P13598496302313521734.Spec : Prop :=
  ∀ n, P13598496302313521734.a n = A310400 n

end A310400

/-! ## A310400.P13150403727161947532

`A004525(A004396(n))+A310472(n)-A004396(n)`
-/

namespace A310400.P13150403727161947532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A310472 n - A004396 n)

end

end A310400.P13150403727161947532

namespace A310400

/-- `A004525(A004396(n))+A310472(n)-A004396(n)` -/
def P13150403727161947532.Spec : Prop :=
  ∀ n, P13150403727161947532.a n = A310400 n

end A310400

/-! ## A310400.P17895232842628943838

`abs(A008592(n)-A315318(n))`
-/

namespace A310400.P17895232842628943838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315318 n|

end

end A310400.P17895232842628943838

namespace A310400

/-- `abs(A008592(n)-A315318(n))` -/
def P17895232842628943838.Spec : Prop :=
  ∀ n, P17895232842628943838.a n = A310400 n

end A310400

/-! ## A310400.P16784693358115611705

`A008458(n)+A008574(n)-A315318(n)`
-/

namespace A310400.P16784693358115611705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315318 n)

end

end A310400.P16784693358115611705

namespace A310400

/-- `A008458(n)+A008574(n)-A315318(n)` -/
def P16784693358115611705.Spec : Prop :=
  ∀ n, P16784693358115611705.a n = A310400 n

end A310400

/-! ## A310400.P12143549090546578599

`A314060(n)-A004525(n)`
-/

namespace A310400.P12143549090546578599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314060 n - A004525 n

end

end A310400.P12143549090546578599

namespace A310400

/-- `A314060(n)-A004525(n)` -/
def P12143549090546578599.Spec : Prop :=
  ∀ n, P12143549090546578599.a n = A310400 n

end A310400

/-! ## A310400.P1423508239875141661

`A314151(n)-A004396(n)`
-/

namespace A310400.P1423508239875141661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A004396 n

end

end A310400.P1423508239875141661

namespace A310400

/-- `A314151(n)-A004396(n)` -/
def P1423508239875141661.Spec : Prop :=
  ∀ n, P1423508239875141661.a n = A310400 n

end A310400

/-! ## A310400.P3326406529640002991

`∑[A022003(n)]+A314151(n)-n`
-/

namespace A310400.P3326406529640002991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A314151 n - (n : ℤ))

end

end A310400.P3326406529640002991

namespace A310400

/-- `∑[A022003(n)]+A314151(n)-n` -/
def P3326406529640002991.Spec : Prop :=
  ∀ n, P3326406529640002991.a n = A310400 n

end A310400

/-! ## A310400.P8303718445615491660

`A314151(n)-A002264(2*n+1)`
-/

namespace A310400.P8303718445615491660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A002264 (2 * n + 1)

end

end A310400.P8303718445615491660

namespace A310400

/-- `A314151(n)-A002264(2*n+1)` -/
def P8303718445615491660.Spec : Prop :=
  ∀ n, P8303718445615491660.a n = A310400 n

end A310400

/-! ## A310400.P9726237290479835894

`A314151(n)-A004525(A004773(n))`
-/

namespace A310400.P9726237290479835894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A004525 (A004773 n).toNat

end

end A310400.P9726237290479835894

namespace A310400

/-- `A314151(n)-A004525(A004773(n))` -/
def P9726237290479835894.Spec : Prop :=
  ∀ n, P9726237290479835894.a n = A310400 n

end A310400

/-!
# A310401: Coordination sequence Gal.6.570.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310401, there is no canonical definition to state claims against.
-/

/-! ## A310401.P9525401120965280314

`A213923(A056487(n))-A275821(n+1)`
-/

namespace A310401.P9525401120965280314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213923 (A056487 n).toNat - A275821 (n + 1)

end

end A310401.P9525401120965280314

/-! ## A310401.P14785111312053999225

`A312903(n)+A001221(A149316(n))`
-/

namespace A310401.P14785111312053999225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + A001221 (A149316 n).toNat

end

end A310401.P14785111312053999225

/-! ## A310401.P12906828017166330151

`A008706(n)-A257510(A041281(n))`
-/

namespace A310401.P12906828017166330151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A257510 (A041281 n).toNat

end

end A310401.P12906828017166330151

/-! ## A310401.P882397152752389087

`A310421(n)-A001221(A020123(n))`
-/

namespace A310401.P882397152752389087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310421 n - A001221 (A020123 n).toNat

end

end A310401.P882397152752389087

/-! ## A310401.P11215394369766857499

`A075326(n)+A062157(A340818(n+1))`
-/

namespace A310401.P11215394369766857499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n + A062157 (A340818 (n + 1)).toNat

end

end A310401.P11215394369766857499

/-!
# A310402: Coordination sequence Gal.6.562.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310402, there is no canonical definition to state claims against.
-/

/-! ## A310402.P10904534748681436066

`A274384(A047412(2*n+1)+1)`
-/

namespace A310402.P10904534748681436066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (A047412 (2 * n + 1) + 1).toNat

end

end A310402.P10904534748681436066

/-! ## A310402.P476014150762342187

`eq[A049710(A345826(n+1)), A078650(n+3)]`
-/

namespace A310402.P476014150762342187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (A345826 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310402.P476014150762342187

/-! ## A310402.P5670036896255233727

`lt[A049710(A345826(n+1)), A088569(n+2)]`
-/

namespace A310402.P5670036896255233727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (A345826 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310402.P5670036896255233727

/-!
# A310403: Coordination sequence Gal.6.606.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310403, there is no canonical definition to state claims against.
-/

/-! ## A310403.P2356371666102363444

`A312903(n)+A001222(A000110(n))`
-/

namespace A310403.P2356371666102363444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + A001222 (A000110 n).toNat

end

end A310403.P2356371666102363444

/-! ## A310403.P905750259715949004

`A304686(3*n+2)-A234046(A360592(n))`
-/

namespace A310403.P905750259715949004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304686 (3 * n + 2) - A234046 (A360592 n).toNat

end

end A310403.P905750259715949004

/-! ## A310403.P11794469975502290068

`record[∑[A124754(A005902(n))]]`
-/

namespace A310403.P11794469975502290068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A005902 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310403.P11794469975502290068

/-! ## A310403.P10547308346636232163

`A314205(n)-A001222(A011965(n))`
-/

namespace A310403.P10547308346636232163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314205 n - A001222 (A011965 n).toNat

end

end A310403.P10547308346636232163

/-! ## A310403.P18187477271031911237

`A310560(n)-A001222(A117158(n))`
-/

namespace A310403.P18187477271031911237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310560 n - A001222 (A117158 n).toNat

end

end A310403.P18187477271031911237

/-!
# A310404: Coordination sequence Gal.6.338.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310404, the canonical program `A310404.P2932539923178756672` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310404 has offset 0).

The definition of A310404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310404.P2793499305244277462

`abs(A008592(n)-A315316(n))`
-/

namespace A310404.P2793499305244277462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315316 n|

end

end A310404.P2793499305244277462

namespace A310404

/-- `abs(A008592(n)-A315316(n))` -/
def P2793499305244277462.Spec : Prop :=
  ∀ n, P2793499305244277462.a n = A310404 n

end A310404

/-! ## A310404.P8787179076523426889

`2*A008706(n)-A315316(n)`
-/

namespace A310404.P8787179076523426889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315316 n

end

end A310404.P8787179076523426889

namespace A310404

/-- `2*A008706(n)-A315316(n)` -/
def P8787179076523426889.Spec : Prop :=
  ∀ n, P8787179076523426889.a n = A310404 n

end A310404

/-! ## A310404.P5451710191489695625

`A135042(2*n+1)-A315316(n)`
-/

namespace A310404.P5451710191489695625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315316 n

end

end A310404.P5451710191489695625

namespace A310404

/-- `A135042(2*n+1)-A315316(n)` -/
def P5451710191489695625.Spec : Prop :=
  ∀ n, P5451710191489695625.a n = A310404 n

end A310404

/-! ## A310404.P1522899519586620376

`A184418(A008574(n))-A315316(n)`
-/

namespace A310404.P1522899519586620376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315316 n

end

end A310404.P1522899519586620376

namespace A310404

/-- `A184418(A008574(n))-A315316(n)` -/
def P1522899519586620376.Spec : Prop :=
  ∀ n, P1522899519586620376.a n = A310404 n

end A310404

/-! ## A310404.P8971967482982515417

`A008458(n)+A008574(n)-A315316(n)`
-/

namespace A310404.P8971967482982515417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315316 n)

end

end A310404.P8971967482982515417

namespace A310404

/-- `A008458(n)+A008574(n)-A315316(n)` -/
def P8971967482982515417.Spec : Prop :=
  ∀ n, P8971967482982515417.a n = A310404 n

end A310404

/-! ## A310404.P8610333836559053957

`A315316(n)-A005843(A315316(n)-A008706(n))`
-/

namespace A310404.P8610333836559053957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315316 n - A005843 (A315316 n - A008706 n).toNat

end

end A310404.P8610333836559053957

namespace A310404

/-- `A315316(n)-A005843(A315316(n)-A008706(n))` -/
def P8610333836559053957.Spec : Prop :=
  ∀ n, P8610333836559053957.a n = A310404 n

end A310404

/-! ## A310404.P5923833923650467161

`(A310420(n)+A310378(n))/2`
-/

namespace A310404.P5923833923650467161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310420 n + A310378 n : ℚ) / 2

end

end A310404.P5923833923650467161

namespace A310404

/-- `(A310420(n)+A310378(n))/2` -/
def P5923833923650467161.Spec : Prop :=
  ∀ n, P5923833923650467161.a n = (A310404 n : ℚ)

end A310404

/-! ## A310404.P2932539923178756672

`A310378(n)+A004525(A310420(n)-A310378(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A310404

/-- `A310378(n)+A004525(A310420(n)-A310378(n))` -/
def P2932539923178756672.Spec : Prop :=
  ∀ n, P2932539923178756672.a n = A310404 n

theorem P2932539923178756672.correct : P2932539923178756672.Spec := by
  intro n
  simp only [A310404]

end A310404

/-! ## A310404.P5826201170713303328

`A310420(n)-A004525(A310420(n)-A310396(n))`
-/

namespace A310404.P5826201170713303328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310420 n - A004525 (A310420 n - A310396 n).toNat

end

end A310404.P5826201170713303328

namespace A310404

/-- `A310420(n)-A004525(A310420(n)-A310396(n))` -/
def P5826201170713303328.Spec : Prop :=
  ∀ n, P5826201170713303328.a n = A310404 n

end A310404

/-! ## A310404.P9954384077453893777

`A005843(A008706(n))-A315316(n)`
-/

namespace A310404.P9954384077453893777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315316 n

end

end A310404.P9954384077453893777

namespace A310404

/-- `A005843(A008706(n))-A315316(n)` -/
def P9954384077453893777.Spec : Prop :=
  ∀ n, P9954384077453893777.a n = A310404 n

end A310404

/-! ## A310404.P4894600648085733672

`A065502(A008458(n))-A315316(n)`
-/

namespace A310404.P4894600648085733672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315316 n

end

end A310404.P4894600648085733672

namespace A310404

/-- `A065502(A008458(n))-A315316(n)` -/
def P4894600648085733672.Spec : Prop :=
  ∀ n, P4894600648085733672.a n = A310404 n

end A310404

/-! ## A310404.P15603624607892331552

`A004525(A310420(n)+A310378(n))`
-/

namespace A310404.P15603624607892331552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310420 n + A310378 n).toNat

end

end A310404.P15603624607892331552

namespace A310404

/-- `A004525(A310420(n)+A310378(n))` -/
def P15603624607892331552.Spec : Prop :=
  ∀ n, P15603624607892331552.a n = A310404 n

end A310404

/-! ## A310404.P4419994352803245367

`A004525(A310420(n)+A310396(n))`
-/

namespace A310404.P4419994352803245367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310420 n + A310396 n).toNat

end

end A310404.P4419994352803245367

namespace A310404

/-- `A004525(A310420(n)+A310396(n))` -/
def P4419994352803245367.Spec : Prop :=
  ∀ n, P4419994352803245367.a n = A310404 n

end A310404

/-! ## A310404.P18360317224910548462

`A233583(A017281(n))-A315316(n)`
-/

namespace A310404.P18360317224910548462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315316 n

end

end A310404.P18360317224910548462

namespace A310404

/-- `A233583(A017281(n))-A315316(n)` -/
def P18360317224910548462.Spec : Prop :=
  ∀ n, P18360317224910548462.a n = A310404 n

end A310404

/-!
# A310405: Coordination sequence Gal.6.339.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310405, the canonical program `A310405.P7222715361017571782` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310405 has offset 0).

The definition of A310405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310405.P6125384661373385780

`A314947(n)-A102283(n)`
-/

namespace A310405.P6125384661373385780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314947 n - A102283 n

end

end A310405.P6125384661373385780

namespace A310405

/-- `A314947(n)-A102283(n)` -/
def P6125384661373385780.Spec : Prop :=
  ∀ n, P6125384661373385780.a n = A310405 n

end A310405

/-! ## A310405.P7222715361017571782

`A312950(n)+∑[A022003(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310405

/-- `A312950(n)+∑[A022003(n)]` -/
def P7222715361017571782.Spec : Prop :=
  ∀ n, P7222715361017571782.a n = A310405 n

theorem P7222715361017571782.correct : P7222715361017571782.Spec := by
  intro n
  simp only [A310405]

end A310405

/-! ## A310405.P4459597759241319083

`A312950(n)+A002264(n+1)`
-/

namespace A310405.P4459597759241319083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + A002264 (n + 1)

end

end A310405.P4459597759241319083

namespace A310405

/-- `A312950(n)+A002264(n+1)` -/
def P4459597759241319083.Spec : Prop :=
  ∀ n, P4459597759241319083.a n = A310405 n

end A310405

/-! ## A310405.P486302266054878719

`A312950(n)+n-A004396(n)`
-/

namespace A310405.P486302266054878719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ((n : ℤ) - A004396 n)

end

end A310405.P486302266054878719

namespace A310405

/-- `A312950(n)+n-A004396(n)` -/
def P486302266054878719.Spec : Prop :=
  ∀ n, P486302266054878719.a n = A310405 n

end A310405

/-! ## A310405.P1314205866787701284

`A312963(n)+A004525(n-A004396(n))`
-/

namespace A310405.P1314205866787701284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A310405.P1314205866787701284

namespace A310405

/-- `A312963(n)+A004525(n-A004396(n))` -/
def P1314205866787701284.Spec : Prop :=
  ∀ n, P1314205866787701284.a n = A310405 n

end A310405

/-! ## A310405.P5759784705951867554

`A008486(n)+A312950(n)-A008576(n)`
-/

namespace A310405.P5759784705951867554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A312950 n - A008576 n)

end

end A310405.P5759784705951867554

namespace A310405

/-- `A008486(n)+A312950(n)-A008576(n)` -/
def P5759784705951867554.Spec : Prop :=
  ∀ n, P5759784705951867554.a n = A310405 n

end A310405

/-! ## A310405.P4969431888849027747

`A313789(n)-A008612(2*n+1)`
-/

namespace A310405.P4969431888849027747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - A008612 (2 * n + 1)

end

end A310405.P4969431888849027747

namespace A310405

/-- `A313789(n)-A008612(2*n+1)` -/
def P4969431888849027747.Spec : Prop :=
  ∀ n, P4969431888849027747.a n = A310405 n

end A310405

/-! ## A310405.P13157226619919531428

`abs(A008592(n)-A315315(n))`
-/

namespace A310405.P13157226619919531428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315315 n|

end

end A310405.P13157226619919531428

namespace A310405

/-- `abs(A008592(n)-A315315(n))` -/
def P13157226619919531428.Spec : Prop :=
  ∀ n, P13157226619919531428.a n = A310405 n

end A310405

/-! ## A310405.P7451039857472056980

`floor(A010015(n)/A315315(n))`
-/

namespace A310405.P7451039857472056980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315315 n : ℚ)⌋

end

end A310405.P7451039857472056980

namespace A310405

/-- `floor(A010015(n)/A315315(n))` -/
def P7451039857472056980.Spec : Prop :=
  ∀ n, P7451039857472056980.a n = A310405 n

end A310405

/-! ## A310405.P14815458989245560462

`A008458(n)+A008574(n)-A315315(n)`
-/

namespace A310405.P14815458989245560462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315315 n)

end

end A310405.P14815458989245560462

namespace A310405

/-- `A008458(n)+A008574(n)-A315315(n)` -/
def P14815458989245560462.Spec : Prop :=
  ∀ n, P14815458989245560462.a n = A310405 n

end A310405

/-! ## A310405.P17594491157777670924

`∑{d}[A008592(n)-A315315(n), A000010(#)]`
-/

namespace A310405.P17594491157777670924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310405.P17594491157777670924

namespace A310405

/-- `∑{d}[A008592(n)-A315315(n), A000010(#)]` -/
def P17594491157777670924.Spec : Prop :=
  ∀ n, P17594491157777670924.a n = A310405 n

end A310405

/-! ## A310405.P6152202217912010725

`A314167(n)-A004396(n)`
-/

namespace A310405.P6152202217912010725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - A004396 n

end

end A310405.P6152202217912010725

namespace A310405

/-- `A314167(n)-A004396(n)` -/
def P6152202217912010725.Spec : Prop :=
  ∀ n, P6152202217912010725.a n = A310405 n

end A310405

/-! ## A310405.P3623276152576953064

`A314167(n)-A002264(2*n+1)`
-/

namespace A310405.P3623276152576953064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - A002264 (2 * n + 1)

end

end A310405.P3623276152576953064

namespace A310405

/-- `A314167(n)-A002264(2*n+1)` -/
def P3623276152576953064.Spec : Prop :=
  ∀ n, P3623276152576953064.a n = A310405 n

end A310405

/-! ## A310405.P1028994149855779893

`A074067(A315315(n))`
-/

namespace A310405.P1028994149855779893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315315 n).toNat

end

end A310405.P1028994149855779893

namespace A310405

/-- `A074067(A315315(n))` -/
def P1028994149855779893.Spec : Prop :=
  ∀ n, P1028994149855779893.a n = A310405 n

end A310405

/-! ## A310405.P9357838330668492702

`A004396(2*n)+A004396(A313803(n))`
-/

namespace A310405.P9357838330668492702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A313803 n).toNat

end

end A310405.P9357838330668492702

namespace A310405

/-- `A004396(2*n)+A004396(A313803(n))` -/
def P9357838330668492702.Spec : Prop :=
  ∀ n, P9357838330668492702.a n = A310405 n

end A310405

/-! ## A310405.P1226803740504145859

`A005843(n)-(A004396(n)-A004396(A313803(n)))`
-/

namespace A310405.P1226803740504145859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A004396 n - A004396 (A313803 n).toNat)

end

end A310405.P1226803740504145859

namespace A310405

/-- `A005843(n)-(A004396(n)-A004396(A313803(n)))` -/
def P1226803740504145859.Spec : Prop :=
  ∀ n, P1226803740504145859.a n = A310405 n

end A310405

/-!
# A310406: Coordination sequence Gal.6.605.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310406, there is no canonical definition to state claims against.
-/

/-! ## A310406.P6635777599291903786

`A315272(n)-A107279(A226936(n+1))`
-/

namespace A310406.P6635777599291903786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315272 n - A107279 (A226936 (n + 1)).toNat

end

end A310406.P6635777599291903786

/-! ## A310406.P17476554205050185986

`A286809(3*n+1)-A000120(A128335(n+1))`
-/

namespace A310406.P17476554205050185986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286809 (3 * n + 1) - A000120 (A128335 (n + 1)).toNat

end

end A310406.P17476554205050185986

/-! ## A310406.P3437446091502214569

`A346705(A346696(n))+A312568(n)`
-/

namespace A310406.P3437446091502214569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346705 (A346696 n).toNat + A312568 n

end

end A310406.P3437446091502214569

/-!
# A310407: Coordination sequence Gal.4.129.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310407, there is no canonical definition to state claims against.
-/

/-! ## A310407.P17376304861480351834

`A053824(A006882(n))+A047470(n+1)`
-/

namespace A310407.P17376304861480351834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A006882 n).toNat + A047470 (n + 1)

end

end A310407.P17376304861480351834

/-! ## A310407.P12382851577776778685

`A310416(n)-A282530(A074148(n+1))`
-/

namespace A310407.P12382851577776778685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310416 n - A282530 (A074148 (n + 1)).toNat

end

end A310407.P12382851577776778685

/-! ## A310407.P11974178605375153973

`A312891(n)+A032741(A001047(n))`
-/

namespace A310407.P11974178605375153973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312891 n + A032741 (A001047 n).toNat

end

end A310407.P11974178605375153973

/-!
# A310408: Coordination sequence Gal.6.196.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310408, the canonical program `A310408.P15738370817569291537` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310408 has offset 0).

The definition of A310408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2455 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310408.P16158509557763716940

`A311593(2*n)-4*n`
-/

namespace A310408.P16158509557763716940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311593 (2 * n) - (4 * n : ℤ)

end

end A310408.P16158509557763716940

namespace A310408

/-- `A311593(2*n)-4*n` -/
def P16158509557763716940.Spec : Prop :=
  ∀ n, P16158509557763716940.a n = A310408 n

end A310408

/-! ## A310408.P15738370817569291537

`2*A312927(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A310408

/-- `2*A312927(n)-A008574(n)` -/
def P15738370817569291537.Spec : Prop :=
  ∀ n, P15738370817569291537.a n = A310408 n

theorem P15738370817569291537.correct : P15738370817569291537.Spec := by
  intro n
  simp only [A310408]

end A310408

/-! ## A310408.P10827950659674750794

`A310501(n)-Δ[2*A011864(n)]`
-/

namespace A310408.P10827950659674750794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310501 n - (f1 (n + 1) - f1 n)

end

end A310408.P10827950659674750794

namespace A310408

/-- `A310501(n)-Δ[2*A011864(n)]` -/
def P10827950659674750794.Spec : Prop :=
  ∀ n, P10827950659674750794.a n = A310408 n

end A310408

/-! ## A310408.P8525820970540114844

`A004275(A312927(n)-A004273(n))`
-/

namespace A310408.P8525820970540114844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312927 n - A004273 n).toNat

end

end A310408.P8525820970540114844

namespace A310408

/-- `A004275(A312927(n)-A004273(n))` -/
def P8525820970540114844.Spec : Prop :=
  ∀ n, P8525820970540114844.a n = A310408 n

end A310408

/-! ## A310408.P2730092800346461875

`A103517(A312927(n)-A005408(n))`
-/

namespace A310408.P2730092800346461875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A312927 n - A005408 n).toNat

end

end A310408.P2730092800346461875

namespace A310408

/-- `A103517(A312927(n)-A005408(n))` -/
def P2730092800346461875.Spec : Prop :=
  ∀ n, P2730092800346461875.a n = A310408 n

end A310408

/-! ## A310408.P15463565348774806960

`A004273(A312927(n)-n)-A004273(n)`
-/

namespace A310408.P15463565348774806960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312927 n - (n : ℤ)).toNat - A004273 n

end

end A310408.P15463565348774806960

namespace A310408

/-- `A004273(A312927(n)-n)-A004273(n)` -/
def P15463565348774806960.Spec : Prop :=
  ∀ n, P15463565348774806960.a n = A310408 n

end A310408

/-! ## A310408.P16371851131202408052

`A008574(n)+A005843(A312927(n)-A008574(n))`
-/

namespace A310408.P16371851131202408052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312927 n - A008574 n).toNat

end

end A310408.P16371851131202408052

namespace A310408

/-- `A008574(n)+A005843(A312927(n)-A008574(n))` -/
def P16371851131202408052.Spec : Prop :=
  ∀ n, P16371851131202408052.a n = A310408 n

end A310408

/-! ## A310408.P4664871576290081504

`A310456(n)-Δ[A011864(n)]`
-/

namespace A310408.P4664871576290081504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310456 n - (f1 (n + 1) - f1 n)

end

end A310408.P4664871576290081504

namespace A310408

/-- `A310456(n)-Δ[A011864(n)]` -/
def P4664871576290081504.Spec : Prop :=
  ∀ n, P4664871576290081504.a n = A310408 n

end A310408

/-! ## A310408.P15976121761309020789

`abs(A008592(n)-A315312(n))`
-/

namespace A310408.P15976121761309020789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315312 n|

end

end A310408.P15976121761309020789

namespace A310408

/-- `abs(A008592(n)-A315312(n))` -/
def P15976121761309020789.Spec : Prop :=
  ∀ n, P15976121761309020789.a n = A310408 n

end A310408

/-! ## A310408.P3666198799394052633

`2*A008706(n)-A315312(n)`
-/

namespace A310408.P3666198799394052633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315312 n

end

end A310408.P3666198799394052633

namespace A310408

/-- `2*A008706(n)-A315312(n)` -/
def P3666198799394052633.Spec : Prop :=
  ∀ n, P3666198799394052633.a n = A310408 n

end A310408

/-! ## A310408.P2632377443759757000

`A008458(n)+A008574(n)-A315312(n)`
-/

namespace A310408.P2632377443759757000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315312 n)

end

end A310408.P2632377443759757000

namespace A310408

/-- `A008458(n)+A008574(n)-A315312(n)` -/
def P2632377443759757000.Spec : Prop :=
  ∀ n, P2632377443759757000.a n = A310408 n

end A310408

/-! ## A310408.P6804207178011014868

`∑{d}[A008592(n)-A315312(n), A000010(#)]`
-/

namespace A310408.P6804207178011014868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310408.P6804207178011014868

namespace A310408

/-- `∑{d}[A008592(n)-A315312(n), A000010(#)]` -/
def P6804207178011014868.Spec : Prop :=
  ∀ n, P6804207178011014868.a n = A310408 n

end A310408

/-! ## A310408.P2588385575555182619

`A315312(n)-A005843(A315312(n)-A008706(n))`
-/

namespace A310408.P2588385575555182619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315312 n - A005843 (A315312 n - A008706 n).toNat

end

end A310408.P2588385575555182619

namespace A310408

/-- `A315312(n)-A005843(A315312(n)-A008706(n))` -/
def P2588385575555182619.Spec : Prop :=
  ∀ n, P2588385575555182619.a n = A310408 n

end A310408

/-! ## A310408.P5693585906181816200

`A005843(A312927(n))-A008574(n)`
-/

namespace A310408.P5693585906181816200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312927 n).toNat - A008574 n

end

end A310408.P5693585906181816200

namespace A310408

/-- `A005843(A312927(n))-A008574(n)` -/
def P5693585906181816200.Spec : Prop :=
  ∀ n, P5693585906181816200.a n = A310408 n

end A310408

/-! ## A310408.P3728999426198733929

`A004275(A312927(n))-A004275(2*n)`
-/

namespace A310408.P3728999426198733929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312927 n).toNat - A004275 (2 * n)

end

end A310408.P3728999426198733929

namespace A310408

/-- `A004275(A312927(n))-A004275(2*n)` -/
def P3728999426198733929.Spec : Prop :=
  ∀ n, P3728999426198733929.a n = A310408 n

end A310408

/-! ## A310408.P10258891720538981528

`A005843(A312927(n))+n-A008706(n)`
-/

namespace A310408.P10258891720538981528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312927 n).toNat + ((n : ℤ) - A008706 n)

end

end A310408.P10258891720538981528

namespace A310408

/-- `A005843(A312927(n))+n-A008706(n)` -/
def P10258891720538981528.Spec : Prop :=
  ∀ n, P10258891720538981528.a n = A310408 n

end A310408

/-! ## A310408.P11198274481123434492

`A005843(A008706(n))-A315312(n)`
-/

namespace A310408.P11198274481123434492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315312 n

end

end A310408.P11198274481123434492

namespace A310408

/-- `A005843(A008706(n))-A315312(n)` -/
def P11198274481123434492.Spec : Prop :=
  ∀ n, P11198274481123434492.a n = A310408 n

end A310408

/-! ## A310408.P4984057560856639213

`2*A311434(2*n)-A008458(2*n)`
-/

namespace A310408.P4984057560856639213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311434 (2 * n) - A008458 (2 * n)

end

end A310408.P4984057560856639213

namespace A310408

/-- `2*A311434(2*n)-A008458(2*n)` -/
def P4984057560856639213.Spec : Prop :=
  ∀ n, P4984057560856639213.a n = A310408 n

end A310408

/-! ## A310408.P17728613267552684619

`2*A008574(2*n)-A315733(2*n)`
-/

namespace A310408.P17728613267552684619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315733 (2 * n)

end

end A310408.P17728613267552684619

namespace A310408

/-- `2*A008574(2*n)-A315733(2*n)` -/
def P17728613267552684619.Spec : Prop :=
  ∀ n, P17728613267552684619.a n = A310408 n

end A310408

/-!
# A310409: Coordination sequence Gal.3.19.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310409, the canonical program `A310409.P15130947317478675071` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310409 has offset 0).

The definition of A310409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310409.P16998743998878993393

`a(n-1)-sqrt(and(4, a(n-2)))+6` with `a(0)=1, a(1)=4`
-/

namespace A310409.P16998743998878993393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - Real.sqrt (Int.land 4 (SequenceMachineLib.roundAway (a (n - 2))) : ℝ) + 6

end

end A310409.P16998743998878993393

namespace A310409

/-- `a(n-1)-sqrt(and(4, a(n-2)))+6` -/
def P16998743998878993393.Spec : Prop :=
  ∀ n, P16998743998878993393.a n = (A310409 n : ℝ)

end A310409

/-! ## A310409.P9440250281896808654

`6-(sqrt(and(4, a(n-2)))-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A310409.P9440250281896808654
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 - (Real.sqrt (Int.land 4 (SequenceMachineLib.roundAway (a (n - 2))) : ℝ) - a (n - 1))

end

end A310409.P9440250281896808654

namespace A310409

/-- `6-(sqrt(and(4, a(n-2)))-a(n-1))` -/
def P9440250281896808654.Spec : Prop :=
  ∀ n, P9440250281896808654.a n = (A310409 n : ℝ)

end A310409

/-! ## A310409.P5474331132664701534

`floor(2/acot(A047263(2*n+1)))`
-/

namespace A310409.P5474331132664701534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A047263 (2 * n + 1) : ℝ)⌋

end

end A310409.P5474331132664701534

namespace A310409

/-- `floor(2/acot(A047263(2*n+1)))` -/
def P5474331132664701534.Spec : Prop :=
  ∀ n, P5474331132664701534.a n = A310409 n

end A310409

/-! ## A310409.P15130947317478675071

`A004277(round(n/(1/2+2))+2*n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310409

/-- `A004277(round(n/(1/2+2))+2*n)` -/
def P15130947317478675071.Spec : Prop :=
  ∀ n, P15130947317478675071.a n = A310409 n

theorem P15130947317478675071.correct : P15130947317478675071.Spec := by
  intro n
  simp only [A310409]

end A310409

/-! ## A310409.P17003398093937073144

`A151988(A008574(n))`
-/

namespace A310409.P17003398093937073144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008574 n).toNat

end

end A310409.P17003398093937073144

namespace A310409

/-- `A151988(A008574(n))` -/
def P17003398093937073144.Spec : Prop :=
  ∀ n, P17003398093937073144.a n = A310409 n

end A310409

/-! ## A310409.P4100931043545827806

`A058992(A175884(n+2))`
-/

namespace A310409.P4100931043545827806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A175884 (n + 2)).toNat

end

end A310409.P4100931043545827806

namespace A310409

/-- `A058992(A175884(n+2))` -/
def P4100931043545827806.Spec : Prop :=
  ∀ n, P4100931043545827806.a n = A310409 n

end A310409

/-! ## A310409.P6698334544915329063

`A151988(A004277(2*n))`
-/

namespace A310409.P6698334544915329063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004277 (2 * n)).toNat

end

end A310409.P6698334544915329063

namespace A310409

/-- `A151988(A004277(2*n))` -/
def P6698334544915329063.Spec : Prop :=
  ∀ n, P6698334544915329063.a n = A310409 n

end A310409

/-! ## A310409.P9880853038571925828

`A151988(A008486(n)+n)`
-/

namespace A310409.P9880853038571925828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008486 n + (n : ℤ)).toNat

end

end A310409.P9880853038571925828

namespace A310409

/-- `A151988(A008486(n)+n)` -/
def P9880853038571925828.Spec : Prop :=
  ∀ n, P9880853038571925828.a n = A310409 n

end A310409

/-! ## A310409.P4699598123814836248

`A151988(A008706(n)-n)`
-/

namespace A310409.P4699598123814836248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008706 n - (n : ℤ)).toNat

end

end A310409.P4699598123814836248

namespace A310409

/-- `A151988(A008706(n)-n)` -/
def P4699598123814836248.Spec : Prop :=
  ∀ n, P4699598123814836248.a n = A310409 n

end A310409

/-! ## A310409.P7761874656022707698

`A312928(n)+Δ[A011858(n)]`
-/

namespace A310409.P7761874656022707698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 n + (f1 (n + 1) - f1 n)

end

end A310409.P7761874656022707698

namespace A310409

/-- `A312928(n)+Δ[A011858(n)]` -/
def P7761874656022707698.Spec : Prop :=
  ∀ n, P7761874656022707698.a n = A310409 n

end A310409

/-! ## A310409.P10857784223771502079

`A151988(A004275(2*n+1))`
-/

namespace A310409.P10857784223771502079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004275 (2 * n + 1)).toNat

end

end A310409.P10857784223771502079

namespace A310409

/-- `A151988(A004275(2*n+1))` -/
def P10857784223771502079.Spec : Prop :=
  ∀ n, P10857784223771502079.a n = A310409 n

end A310409

/-! ## A310409.P9763991113080945945

`A151988(A004273(2*n)+1)`
-/

namespace A310409.P9763991113080945945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004273 (2 * n) + 1).toNat

end

end A310409.P9763991113080945945

namespace A310409

/-- `A151988(A004273(2*n)+1)` -/
def P9763991113080945945.Spec : Prop :=
  ∀ n, P9763991113080945945.a n = A310409 n

end A310409

/-! ## A310409.P5181003642974232154

`A151988(A019425(2*n+1))`
-/

namespace A310409.P5181003642974232154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A019425 (2 * n + 1)).toNat

end

end A310409.P5181003642974232154

namespace A310409

/-- `A151988(A019425(2*n+1))` -/
def P5181003642974232154.Spec : Prop :=
  ∀ n, P5181003642974232154.a n = A310409 n

end A310409

/-! ## A310409.P1690144253020787172

`A151988(A008458(n)-2*n)`
-/

namespace A310409.P1690144253020787172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008458 n - (2 * n : ℤ)).toNat

end

end A310409.P1690144253020787172

namespace A310409

/-- `A151988(A008458(n)-2*n)` -/
def P1690144253020787172.Spec : Prop :=
  ∀ n, P1690144253020787172.a n = A310409 n

end A310409

/-! ## A310409.P8731722019817243237

`2*A312928(n)-A008574(n)`
-/

namespace A310409.P8731722019817243237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312928 n - A008574 n

end

end A310409.P8731722019817243237

namespace A310409

/-- `2*A312928(n)-A008574(n)` -/
def P8731722019817243237.Spec : Prop :=
  ∀ n, P8731722019817243237.a n = A310409 n

end A310409

/-! ## A310409.P12403736534111371340

`A250120(n)-A244895(2*n)`
-/

namespace A310409.P12403736534111371340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A244895 (2 * n)

end

end A310409.P12403736534111371340

namespace A310409

/-- `A250120(n)-A244895(2*n)` -/
def P12403736534111371340.Spec : Prop :=
  ∀ n, P12403736534111371340.a n = A310409 n

end A310409

/-! ## A310409.P14073915628308774101

`A004275(A047263(Δ[n²])+1)`
-/

namespace A310409.P14073915628308774101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047263 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A310409.P14073915628308774101

namespace A310409

/-- `A004275(A047263(Δ[n²])+1)` -/
def P14073915628308774101.Spec : Prop :=
  ∀ n, P14073915628308774101.a n = A310409 n

end A310409

/-! ## A310409.P560848046076779203

`A151988(A004277(n)+n+n)`
-/

namespace A310409.P560848046076779203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004277 n + (n : ℤ) + (n : ℤ)).toNat

end

end A310409.P560848046076779203

namespace A310409

/-- `A151988(A004277(n)+n+n)` -/
def P560848046076779203.Spec : Prop :=
  ∀ n, P560848046076779203.a n = A310409 n

end A310409

/-! ## A310409.P15381284742959142674

`A151988(A008458(n)-n-n)`
-/

namespace A310409.P15381284742959142674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008458 n - (n : ℤ) - (n : ℤ)).toNat

end

end A310409.P15381284742959142674

namespace A310409

/-- `A151988(A008458(n)-n-n)` -/
def P15381284742959142674.Spec : Prop :=
  ∀ n, P15381284742959142674.a n = A310409 n

end A310409

/-! ## A310409.P385808871141275340

`A004275(Δ[A011858(n)+n²])`
-/

namespace A310409.P385808871141275340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (f1 (n + 1) - f1 n).toNat

end

end A310409.P385808871141275340

namespace A310409

/-- `A004275(Δ[A011858(n)+n²])` -/
def P385808871141275340.Spec : Prop :=
  ∀ n, P385808871141275340.a n = A310409 n

end A310409

/-!
# A310410: Coordination sequence Gal.6.344.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310410, the canonical program `A310410.P13699142073105713236` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310410 has offset 0).

The definition of A310410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310410.P2589943734212910368

`2*A312933(n)-A311196(n)`
-/

namespace A310410.P2589943734212910368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312933 n - A311196 n

end

end A310410.P2589943734212910368

namespace A310410

/-- `2*A312933(n)-A311196(n)` -/
def P2589943734212910368.Spec : Prop :=
  ∀ n, P2589943734212910368.a n = A310410 n

end A310410

/-! ## A310410.P18238531810147689107

`A312969(n)+A004396(n-A004525(n))`
-/

namespace A310410.P18238531810147689107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A310410.P18238531810147689107

namespace A310410

/-- `A312969(n)+A004396(n-A004525(n))` -/
def P18238531810147689107.Spec : Prop :=
  ∀ n, P18238531810147689107.a n = A310410 n

end A310410

/-! ## A310410.P13699142073105713236

`A004525(n)+A310393(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310410

/-- `A004525(n)+A310393(n)-A004396(A004525(n))` -/
def P13699142073105713236.Spec : Prop :=
  ∀ n, P13699142073105713236.a n = A310410 n

theorem P13699142073105713236.correct : P13699142073105713236.Spec := by
  intro n
  simp only [A310410]

end A310410

/-! ## A310410.P983432456267820264

`A311196(n)+A005843(A312933(n)-A311196(n))`
-/

namespace A310410.P983432456267820264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A005843 (A312933 n - A311196 n).toNat

end

end A310410.P983432456267820264

namespace A310410

/-- `A311196(n)+A005843(A312933(n)-A311196(n))` -/
def P983432456267820264.Spec : Prop :=
  ∀ n, P983432456267820264.a n = A310410 n

end A310410

/-! ## A310410.P9413407509206676074

`A310457(n)-Δ[A011865(n)]`
-/

namespace A310410.P9413407509206676074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n - (f1 (n + 1) - f1 n)

end

end A310410.P9413407509206676074

namespace A310410

/-- `A310457(n)-Δ[A011865(n)]` -/
def P9413407509206676074.Spec : Prop :=
  ∀ n, P9413407509206676074.a n = A310410 n

end A310410

/-! ## A310410.P7340225832824314380

`abs(A008592(n)-A315310(n))`
-/

namespace A310410.P7340225832824314380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315310 n|

end

end A310410.P7340225832824314380

namespace A310410

/-- `abs(A008592(n)-A315310(n))` -/
def P7340225832824314380.Spec : Prop :=
  ∀ n, P7340225832824314380.a n = A310410 n

end A310410

/-! ## A310410.P18378895057358188277

`2*A008706(n)-A315310(n)`
-/

namespace A310410.P18378895057358188277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315310 n

end

end A310410.P18378895057358188277

namespace A310410

/-- `2*A008706(n)-A315310(n)` -/
def P18378895057358188277.Spec : Prop :=
  ∀ n, P18378895057358188277.a n = A310410 n

end A310410

/-! ## A310410.P10097026987406871770

`A008458(n)+A008574(n)-A315310(n)`
-/

namespace A310410.P10097026987406871770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315310 n)

end

end A310410.P10097026987406871770

namespace A310410

/-- `A008458(n)+A008574(n)-A315310(n)` -/
def P10097026987406871770.Spec : Prop :=
  ∀ n, P10097026987406871770.a n = A310410 n

end A310410

/-! ## A310410.P1210113761989582852

`A315310(n)-A005843(A315310(n)-A008706(n))`
-/

namespace A310410.P1210113761989582852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315310 n - A005843 (A315310 n - A008706 n).toNat

end

end A310410.P1210113761989582852

namespace A310410

/-- `A315310(n)-A005843(A315310(n)-A008706(n))` -/
def P1210113761989582852.Spec : Prop :=
  ∀ n, P1210113761989582852.a n = A310410 n

end A310410

/-! ## A310410.P12708488721079512938

`A314043(n)-A004525(A004396(n))`
-/

namespace A310410.P12708488721079512938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314043 n - A004525 (A004396 n).toNat

end

end A310410.P12708488721079512938

namespace A310410

/-- `A314043(n)-A004525(A004396(n))` -/
def P12708488721079512938.Spec : Prop :=
  ∀ n, P12708488721079512938.a n = A310410 n

end A310410

/-! ## A310410.P16055927765726600036

`A314048(n)-A004396(A004525(n))`
-/

namespace A310410.P16055927765726600036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314048 n - A004396 (A004525 n).toNat

end

end A310410.P16055927765726600036

namespace A310410

/-- `A314048(n)-A004396(A004525(n))` -/
def P16055927765726600036.Spec : Prop :=
  ∀ n, P16055927765726600036.a n = A310410 n

end A310410

/-! ## A310410.P11801841170900817089

`A314240(n)-A004525(A004396(n)+n)`
-/

namespace A310410.P11801841170900817089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A004525 (A004396 n + (n : ℤ)).toNat

end

end A310410.P11801841170900817089

namespace A310410

/-- `A314240(n)-A004525(A004396(n)+n)` -/
def P11801841170900817089.Spec : Prop :=
  ∀ n, P11801841170900817089.a n = A310410 n

end A310410

/-! ## A310410.P9084136291857544114

`A005843(A312933(n))-A311196(n)`
-/

namespace A310410.P9084136291857544114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312933 n).toNat - A311196 n

end

end A310410.P9084136291857544114

namespace A310410

/-- `A005843(A312933(n))-A311196(n)` -/
def P9084136291857544114.Spec : Prop :=
  ∀ n, P9084136291857544114.a n = A310410 n

end A310410

/-! ## A310410.P510301581513066945

`A005843(A008706(n))-A315310(n)`
-/

namespace A310410.P510301581513066945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315310 n

end

end A310410.P510301581513066945

namespace A310410

/-- `A005843(A008706(n))-A315310(n)` -/
def P510301581513066945.Spec : Prop :=
  ∀ n, P510301581513066945.a n = A310410 n

end A310410

/-! ## A310410.P3278965809504910657

`A310457(n)-Δ[A002264(A011848(n))]`
-/

namespace A310410.P3278965809504910657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A011848 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 n - (f1 (n + 1) - f1 n)

end

end A310410.P3278965809504910657

namespace A310410

/-- `A310457(n)-Δ[A002264(A011848(n))]` -/
def P3278965809504910657.Spec : Prop :=
  ∀ n, P3278965809504910657.a n = A310410 n

end A310410

/-!
# A310411: Coordination sequence Gal.4.72.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310411, the canonical program `A310411.P12923110571559906962` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310411 has offset 0).

The definition of A310411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310411.P6748121671184419613

`A313613(n)-A238469(n)`
-/

namespace A310411.P6748121671184419613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n - A238469 n

end

end A310411.P6748121671184419613

namespace A310411

/-- `A313613(n)-A238469(n)` -/
def P6748121671184419613.Spec : Prop :=
  ∀ n, P6748121671184419613.a n = A310411 n

end A310411

/-! ## A310411.P12923110571559906962

`A060464(A008486(n)+1)+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310411

/-- `A060464(A008486(n)+1)+n` -/
def P12923110571559906962.Spec : Prop :=
  ∀ n, P12923110571559906962.a n = A310411 n

theorem P12923110571559906962.correct : P12923110571559906962.Spec := by
  intro n
  simp only [A310411]

end A310411

/-! ## A310411.P14099184945190690499

`A060464(A033627(n+2))+n`
-/

namespace A310411.P14099184945190690499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A033627 (n + 2)).toNat + (n : ℤ)

end

end A310411.P14099184945190690499

namespace A310411

/-- `A060464(A033627(n+2))+n` -/
def P14099184945190690499.Spec : Prop :=
  ∀ n, P14099184945190690499.a n = A310411 n

end A310411

/-! ## A310411.P15856876807861139607

`A310441(n)+A238469(2*n)`
-/

namespace A310411.P15856876807861139607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310441 n + A238469 (2 * n)

end

end A310411.P15856876807861139607

namespace A310411

/-- `A310441(n)+A238469(2*n)` -/
def P15856876807861139607.Spec : Prop :=
  ∀ n, P15856876807861139607.a n = A310411 n

end A310411

/-! ## A310411.P13657484837368704325

`A313613(n)-A238470(2*n)`
-/

namespace A310411.P13657484837368704325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n - A238470 (2 * n)

end

end A310411.P13657484837368704325

namespace A310411

/-- `A313613(n)-A238470(2*n)` -/
def P13657484837368704325.Spec : Prop :=
  ∀ n, P13657484837368704325.a n = A310411 n

end A310411

/-! ## A310411.P1887776225000092389

`A004277(A083033(2*n+1)-n)`
-/

namespace A310411.P1887776225000092389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A083033 (2 * n + 1) - (n : ℤ)).toNat

end

end A310411.P1887776225000092389

namespace A310411

/-- `A004277(A083033(2*n+1)-n)` -/
def P1887776225000092389.Spec : Prop :=
  ∀ n, P1887776225000092389.a n = A310411 n

end A310411

/-! ## A310411.P2933865218374040789

`A004275(A057357(n+1)+Δ[n²])`
-/

namespace A310411.P2933865218374040789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A057357 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A310411.P2933865218374040789

namespace A310411

/-- `A004275(A057357(n+1)+Δ[n²])` -/
def P2933865218374040789.Spec : Prop :=
  ∀ n, P2933865218374040789.a n = A310411 n

end A310411

/-! ## A310411.P9974711203567049955

`A004275(A083033(Δ[n²])-(n-1))`
-/

namespace A310411.P9974711203567049955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A083033 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((n : ℤ) - 1)).toNat

end

end A310411.P9974711203567049955

namespace A310411

/-- `A004275(A083033(Δ[n²])-(n-1))` -/
def P9974711203567049955.Spec : Prop :=
  ∀ n, P9974711203567049955.a n = A310411 n

end A310411

/-! ## A310411.P92390250078219533

`A004275(2*n+1)+2*A057357(n+1)`
-/

namespace A310411.P92390250078219533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + 2 * A057357 (n + 1)

end

end A310411.P92390250078219533

namespace A310411

/-- `A004275(2*n+1)+2*A057357(n+1)` -/
def P92390250078219533.Spec : Prop :=
  ∀ n, P92390250078219533.a n = A310411 n

end A310411

/-! ## A310411.P17020259606933418052

`A310441(n)+A238468(A238468(n)+n)`
-/

namespace A310411.P17020259606933418052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310441 n + A238468 (A238468 n + (n : ℤ)).toNat

end

end A310411.P17020259606933418052

namespace A310411

/-- `A310441(n)+A238468(A238468(n)+n)` -/
def P17020259606933418052.Spec : Prop :=
  ∀ n, P17020259606933418052.a n = A310411 n

end A310411

/-! ## A310411.P17085255216573066080

`A315032(n)-A175629(A175629(n)+n)`
-/

namespace A310411.P17085255216573066080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n - A175629 (A175629 n + (n : ℤ)).toNat

end

end A310411.P17085255216573066080

namespace A310411

/-- `A315032(n)-A175629(A175629(n)+n)` -/
def P17085255216573066080.Spec : Prop :=
  ∀ n, P17085255216573066080.a n = A310411 n

end A310411

/-! ## A310411.P4430642469797640740

`A315204(n)-2*A238469(n)`
-/

namespace A310411.P4430642469797640740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315204 n - 2 * A238469 n

end

end A310411.P4430642469797640740

namespace A310411

/-- `A315204(n)-2*A238469(n)` -/
def P4430642469797640740.Spec : Prop :=
  ∀ n, P4430642469797640740.a n = A310411 n

end A310411

/-! ## A310411.P12631539499603327119

`A313147(n)+A238470(n)`
-/

namespace A310411.P12631539499603327119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n + A238470 n

end

end A310411.P12631539499603327119

namespace A310411

/-- `A313147(n)+A238470(n)` -/
def P12631539499603327119.Spec : Prop :=
  ∀ n, P12631539499603327119.a n = A310411 n

end A310411

/-! ## A310411.P8585951756862485448

`A312680(n)+2*A238470(n)`
-/

namespace A310411.P8585951756862485448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312680 n + 2 * A238470 n

end

end A310411.P8585951756862485448

namespace A310411

/-- `A312680(n)+2*A238470(n)` -/
def P8585951756862485448.Spec : Prop :=
  ∀ n, P8585951756862485448.a n = A310411 n

end A310411

/-! ## A310411.P15167765081867578465

`abs(A008592(n)-A315309(n))`
-/

namespace A310411.P15167765081867578465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315309 n|

end

end A310411.P15167765081867578465

namespace A310411

/-- `abs(A008592(n)-A315309(n))` -/
def P15167765081867578465.Spec : Prop :=
  ∀ n, P15167765081867578465.a n = A310411 n

end A310411

/-! ## A310411.P12531483573783483278

`2*A008706(n)-A315309(n)`
-/

namespace A310411.P12531483573783483278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315309 n

end

end A310411.P12531483573783483278

namespace A310411

/-- `2*A008706(n)-A315309(n)` -/
def P12531483573783483278.Spec : Prop :=
  ∀ n, P12531483573783483278.a n = A310411 n

end A310411

/-! ## A310411.P6057200237432452829

`A008458(n)+A008574(n)-A315309(n)`
-/

namespace A310411.P6057200237432452829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315309 n)

end

end A310411.P6057200237432452829

namespace A310411

/-- `A008458(n)+A008574(n)-A315309(n)` -/
def P6057200237432452829.Spec : Prop :=
  ∀ n, P6057200237432452829.a n = A310411 n

end A310411

/-! ## A310411.P6227587231030229488

`2*A314148(n)-A008458(n)`
-/

namespace A310411.P6227587231030229488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314148 n - A008458 n

end

end A310411.P6227587231030229488

namespace A310411

/-- `2*A314148(n)-A008458(n)` -/
def P6227587231030229488.Spec : Prop :=
  ∀ n, P6227587231030229488.a n = A310411 n

end A310411

/-! ## A310411.P1322875638005381093

`A005843(A008458(n)-n)-A315309(n)`
-/

namespace A310411.P1322875638005381093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315309 n

end

end A310411.P1322875638005381093

namespace A310411

/-- `A005843(A008458(n)-n)-A315309(n)` -/
def P1322875638005381093.Spec : Prop :=
  ∀ n, P1322875638005381093.a n = A310411 n

end A310411

/-! ## A310411.P7543299075447841865

`A315339(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A310411.P7543299075447841865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315339 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A310411.P7543299075447841865

namespace A310411

/-- `A315339(2*n)+A008458(n+1)-(12*n+6)` -/
def P7543299075447841865.Spec : Prop :=
  ∀ n, P7543299075447841865.a n = A310411 n

end A310411

/-!
# A310412: Coordination sequence Gal.5.129.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310412, the canonical program `A310412.P6181630566762096242` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310412 has offset 0).

The definition of A310412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310412.P6181630566762096242

`A004277(A265187(2*n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310412

/-- `A004277(A265187(2*n+1))` -/
def P6181630566762096242.Spec : Prop :=
  ∀ n, P6181630566762096242.a n = A310412 n

theorem P6181630566762096242.correct : P6181630566762096242.Spec := by
  intro n
  simp only [A310412]

end A310412

/-! ## A310412.P12235235367554519131

`2*A312932(n)-A008574(n)`
-/

namespace A310412.P12235235367554519131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312932 n - A008574 n

end

end A310412.P12235235367554519131

namespace A310412

/-- `2*A312932(n)-A008574(n)` -/
def P12235235367554519131.Spec : Prop :=
  ∀ n, P12235235367554519131.a n = A310412 n

end A310412

/-! ## A310412.P17040667500988462605

`A004275(A265187(2*n+1)+1)`
-/

namespace A310412.P17040667500988462605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A265187 (2 * n + 1) + 1).toNat

end

end A310412.P17040667500988462605

namespace A310412

/-- `A004275(A265187(2*n+1)+1)` -/
def P17040667500988462605.Spec : Prop :=
  ∀ n, P17040667500988462605.a n = A310412 n

end A310412

/-! ## A310412.P8297524179908219231

`A000007(n)+2*A265187(2*n+1)`
-/

namespace A310412.P8297524179908219231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A265187 (2 * n + 1)

end

end A310412.P8297524179908219231

namespace A310412

/-- `A000007(n)+2*A265187(2*n+1)` -/
def P8297524179908219231.Spec : Prop :=
  ∀ n, P8297524179908219231.a n = A310412 n

end A310412

/-! ## A310412.P11313934391941930076

`A029833(2*(n+1))+2*A265187(2*n+1)`
-/

namespace A310412.P11313934391941930076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (2 * (n + 1)) + 2 * A265187 (2 * n + 1)

end

end A310412.P11313934391941930076

namespace A310412

/-- `A029833(2*(n+1))+2*A265187(2*n+1)` -/
def P11313934391941930076.Spec : Prop :=
  ∀ n, P11313934391941930076.a n = A310412 n

end A310412

/-! ## A310412.P5239094405536058269

`A008706(n)-A194513(A020705(n))`
-/

namespace A310412.P5239094405536058269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A194513 (A020705 n).toNat

end

end A310412.P5239094405536058269

namespace A310412

/-- `A008706(n)-A194513(A020705(n))` -/
def P5239094405536058269.Spec : Prop :=
  ∀ n, P5239094405536058269.a n = A310412 n

end A310412

/-! ## A310412.P3496698299228978831

`A004275(A312932(n)-A004273(n))`
-/

namespace A310412.P3496698299228978831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312932 n - A004273 n).toNat

end

end A310412.P3496698299228978831

namespace A310412

/-- `A004275(A312932(n)-A004273(n))` -/
def P3496698299228978831.Spec : Prop :=
  ∀ n, P3496698299228978831.a n = A310412 n

end A310412

/-! ## A310412.P11488170530928115671

`A004273(A312932(n)-n)-A004273(n)`
-/

namespace A310412.P11488170530928115671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312932 n - (n : ℤ)).toNat - A004273 n

end

end A310412.P11488170530928115671

namespace A310412

/-- `A004273(A312932(n)-n)-A004273(n)` -/
def P11488170530928115671.Spec : Prop :=
  ∀ n, P11488170530928115671.a n = A310412 n

end A310412

/-! ## A310412.P3962224015139177395

`A008574(n)+A005843(A312932(n)-A008574(n))`
-/

namespace A310412.P3962224015139177395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312932 n - A008574 n).toNat

end

end A310412.P3962224015139177395

namespace A310412

/-- `A008574(n)+A005843(A312932(n)-A008574(n))` -/
def P3962224015139177395.Spec : Prop :=
  ∀ n, P3962224015139177395.a n = A310412 n

end A310412

/-! ## A310412.P10983336289416244266

`A314047(n)-A004525(A004396(n))`
-/

namespace A310412.P10983336289416244266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314047 n - A004525 (A004396 n).toNat

end

end A310412.P10983336289416244266

namespace A310412

/-- `A314047(n)-A004525(A004396(n))` -/
def P10983336289416244266.Spec : Prop :=
  ∀ n, P10983336289416244266.a n = A310412 n

end A310412

/-! ## A310412.P5550134838249487824

`abs(A008592(n)-A315308(n))`
-/

namespace A310412.P5550134838249487824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315308 n|

end

end A310412.P5550134838249487824

namespace A310412

/-- `abs(A008592(n)-A315308(n))` -/
def P5550134838249487824.Spec : Prop :=
  ∀ n, P5550134838249487824.a n = A310412 n

end A310412

/-! ## A310412.P14691354590687062906

`A008458(n)+A008574(n)-A315308(n)`
-/

namespace A310412.P14691354590687062906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315308 n)

end

end A310412.P14691354590687062906

namespace A310412

/-- `A008458(n)+A008574(n)-A315308(n)` -/
def P14691354590687062906.Spec : Prop :=
  ∀ n, P14691354590687062906.a n = A310412 n

end A310412

/-! ## A310412.P5114008098384388569

`A314067(n)-A004396(A004396(n))`
-/

namespace A310412.P5114008098384388569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314067 n - A004396 (A004396 n).toNat

end

end A310412.P5114008098384388569

namespace A310412

/-- `A314067(n)-A004396(A004396(n))` -/
def P5114008098384388569.Spec : Prop :=
  ∀ n, P5114008098384388569.a n = A310412 n

end A310412

/-! ## A310412.P2192076390166853262

`A005843(A312932(n))-A008574(n)`
-/

namespace A310412.P2192076390166853262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312932 n).toNat - A008574 n

end

end A310412.P2192076390166853262

namespace A310412

/-- `A005843(A312932(n))-A008574(n)` -/
def P2192076390166853262.Spec : Prop :=
  ∀ n, P2192076390166853262.a n = A310412 n

end A310412

/-! ## A310412.P10756580574297910757

`A004275(A312932(n))-A004275(2*n)`
-/

namespace A310412.P10756580574297910757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312932 n).toNat - A004275 (2 * n)

end

end A310412.P10756580574297910757

namespace A310412

/-- `A004275(A312932(n))-A004275(2*n)` -/
def P10756580574297910757.Spec : Prop :=
  ∀ n, P10756580574297910757.a n = A310412 n

end A310412

/-! ## A310412.P6885194034667623330

`A004396(2*n)+A004396(A314067(n))`
-/

namespace A310412.P6885194034667623330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A314067 n).toNat

end

end A310412.P6885194034667623330

namespace A310412

/-- `A004396(2*n)+A004396(A314067(n))` -/
def P6885194034667623330.Spec : Prop :=
  ∀ n, P6885194034667623330.a n = A310412 n

end A310412

/-! ## A310412.P7984142342551927516

`2*A311816(2*n)-A008458(2*n)`
-/

namespace A310412.P7984142342551927516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311816 (2 * n) - A008458 (2 * n)

end

end A310412.P7984142342551927516

namespace A310412

/-- `2*A311816(2*n)-A008458(2*n)` -/
def P7984142342551927516.Spec : Prop :=
  ∀ n, P7984142342551927516.a n = A310412 n

end A310412

/-! ## A310412.P18338809105914943853

`A312484(2*n)-4*n`
-/

namespace A310412.P18338809105914943853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 (2 * n) - (4 * n : ℤ)

end

end A310412.P18338809105914943853

namespace A310412

/-- `A312484(2*n)-4*n` -/
def P18338809105914943853.Spec : Prop :=
  ∀ n, P18338809105914943853.a n = A310412 n

end A310412

/-! ## A310412.P3415587390333906206

`A004396(A312065(2*n))-A004396(A004396(2*n))`
-/

namespace A310412.P3415587390333906206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312065 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A310412.P3415587390333906206

namespace A310412

/-- `A004396(A312065(2*n))-A004396(A004396(2*n))` -/
def P3415587390333906206.Spec : Prop :=
  ∀ n, P3415587390333906206.a n = A310412 n

end A310412

/-!
# A310413: Coordination sequence Gal.6.323.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310413, the canonical program `A310413.P8448103510463690505` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310413 has offset 0).

The definition of A310413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310413.P18295769171210549674

`2*A313118(n)-A312562(n)`
-/

namespace A310413.P18295769171210549674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313118 n - A312562 n

end

end A310413.P18295769171210549674

namespace A310413

/-- `2*A313118(n)-A312562(n)` -/
def P18295769171210549674.Spec : Prop :=
  ∀ n, P18295769171210549674.a n = A310413 n

end A310413

/-! ## A310413.P8448103510463690505

`abs(A008592(n)-A315307(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310413

/-- `abs(A008592(n)-A315307(n))` -/
def P8448103510463690505.Spec : Prop :=
  ∀ n, P8448103510463690505.a n = A310413 n

theorem P8448103510463690505.correct : P8448103510463690505.Spec := by
  intro n
  simp only [A310413]

end A310413

/-! ## A310413.P15902503065102758385

`2*A008706(n)-A315307(n)`
-/

namespace A310413.P15902503065102758385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315307 n

end

end A310413.P15902503065102758385

namespace A310413

/-- `2*A008706(n)-A315307(n)` -/
def P15902503065102758385.Spec : Prop :=
  ∀ n, P15902503065102758385.a n = A310413 n

end A310413

/-! ## A310413.P17303996181870815404

`A008458(n)+A008574(n)-A315307(n)`
-/

namespace A310413.P17303996181870815404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315307 n)

end

end A310413.P17303996181870815404

namespace A310413

/-- `A008458(n)+A008574(n)-A315307(n)` -/
def P17303996181870815404.Spec : Prop :=
  ∀ n, P17303996181870815404.a n = A310413 n

end A310413

/-! ## A310413.P5315383742911800136

`∑{d}[A008592(n)-A315307(n), A000010(#)]`
-/

namespace A310413.P5315383742911800136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310413.P5315383742911800136

namespace A310413

/-- `∑{d}[A008592(n)-A315307(n), A000010(#)]` -/
def P5315383742911800136.Spec : Prop :=
  ∀ n, P5315383742911800136.a n = A310413 n

end A310413

/-! ## A310413.P8066728092859454352

`A315307(n)-A005843(A315307(n)-A008706(n))`
-/

namespace A310413.P8066728092859454352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315307 n - A005843 (A315307 n - A008706 n).toNat

end

end A310413.P8066728092859454352

namespace A310413

/-- `A315307(n)-A005843(A315307(n)-A008706(n))` -/
def P8066728092859454352.Spec : Prop :=
  ∀ n, P8066728092859454352.a n = A310413 n

end A310413

/-! ## A310413.P3781559503788810401

`2*A314149(n)-A008458(n)`
-/

namespace A310413.P3781559503788810401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314149 n - A008458 n

end

end A310413.P3781559503788810401

namespace A310413

/-- `2*A314149(n)-A008458(n)` -/
def P3781559503788810401.Spec : Prop :=
  ∀ n, P3781559503788810401.a n = A310413 n

end A310413

/-! ## A310413.P11214893092549649116

`A008458(n)-A005843(A008458(n)-A314149(n))`
-/

namespace A310413.P11214893092549649116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314149 n).toNat

end

end A310413.P11214893092549649116

namespace A310413

/-- `A008458(n)-A005843(A008458(n)-A314149(n))` -/
def P11214893092549649116.Spec : Prop :=
  ∀ n, P11214893092549649116.a n = A310413 n

end A310413

/-! ## A310413.P8472942239526959828

`A005843(A008706(n))-A315307(n)`
-/

namespace A310413.P8472942239526959828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315307 n

end

end A310413.P8472942239526959828

namespace A310413

/-- `A005843(A008706(n))-A315307(n)` -/
def P8472942239526959828.Spec : Prop :=
  ∀ n, P8472942239526959828.a n = A310413 n

end A310413

/-! ## A310413.P9025209854150067282

`A005843(A314149(n))-A008458(n)`
-/

namespace A310413.P9025209854150067282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314149 n).toNat - A008458 n

end

end A310413.P9025209854150067282

namespace A310413

/-- `A005843(A314149(n))-A008458(n)` -/
def P9025209854150067282.Spec : Prop :=
  ∀ n, P9025209854150067282.a n = A310413 n

end A310413

/-! ## A310413.P4910254461803935234

`A315340(2*n)-6*n`
-/

namespace A310413.P4910254461803935234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315340 (2 * n) - (6 * n : ℤ)

end

end A310413.P4910254461803935234

namespace A310413

/-- `A315340(2*n)-6*n` -/
def P4910254461803935234.Spec : Prop :=
  ∀ n, P4910254461803935234.a n = A310413 n

end A310413

/-!
# A310414: Coordination sequence Gal.5.218.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310414, there is no canonical definition to state claims against.
-/

/-! ## A310414.P18000763157896012897

`xor(A008587(n), A008966(A072265(n)))`
-/

namespace A310414.P18000763157896012897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008587 n) (A008966 (A072265 n).toNat)

end

end A310414.P18000763157896012897

/-! ## A310414.P975472080147168705

`A310413(n)+A014083(A339061(n))`
-/

namespace A310414.P975472080147168705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310413 n + A014083 (A339061 n).toNat

end

end A310414.P975472080147168705

/-! ## A310414.P1405171640361250871

`xor(A008587(n), A010060(A001333(n)))`
-/

namespace A310414.P1405171640361250871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008587 n) (A010060 (A001333 n).toNat)

end

end A310414.P1405171640361250871

/-! ## A310414.P7384851090020399106

`A196050(A056953(n))+A047461(n+1)`
-/

namespace A310414.P7384851090020399106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A056953 n).toNat + A047461 (n + 1)

end

end A310414.P7384851090020399106

/-! ## A310414.P871485478922670900

`A187715(n+1)-A189723(A052905(n)²)`
-/

namespace A310414.P871485478922670900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (n + 1) - A189723 (A052905 n ^ 2).toNat

end

end A310414.P871485478922670900

/-!
# A310415: Coordination sequence Gal.6.493.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310415, there is no canonical definition to state claims against.
-/

/-! ## A310415.P10928131589663896390

`A314153(n)-A319443(A114173(n))`
-/

namespace A310415.P10928131589663896390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314153 n - A319443 (A114173 n).toNat

end

end A310415.P10928131589663896390

/-! ## A310415.P13008361495917504279

`A312966(n)+A001222(A107595(n))`
-/

namespace A310415.P13008361495917504279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312966 n + A001222 (A107595 n).toNat

end

end A310415.P13008361495917504279

/-! ## A310415.P10926309481878412279

`record[A330031(n+1)-A278220(A013613(n))]`
-/

namespace A310415.P10926309481878412279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330031 (n + 1) - A278220 (A013613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310415.P10926309481878412279

/-!
# A310416: Coordination sequence Gal.6.367.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310416, the canonical program `A310416.P7113790097451163259` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310416 has offset 0).

The definition of A310416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310416.P7113790097451163259

`xor(A010673(n), A315135(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310416

/-- `xor(A010673(n), A315135(n))` -/
def P7113790097451163259.Spec : Prop :=
  ∀ n, P7113790097451163259.a n = A310416 n

theorem P7113790097451163259.correct : P7113790097451163259.Spec := by
  intro n
  simp only [A310416]

end A310416

/-! ## A310416.P4474302360869057327

`xor(Δ[A052928(n)], A315135(n))`
-/

namespace A310416.P4474302360869057327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A315135 n)

end

end A310416.P4474302360869057327

namespace A310416

/-- `xor(Δ[A052928(n)], A315135(n))` -/
def P4474302360869057327.Spec : Prop :=
  ∀ n, P4474302360869057327.a n = A310416 n

end A310416

/-! ## A310416.P12631522232511300108

`xor(Δ[A109613(n)], A315135(n))`
-/

namespace A310416.P12631522232511300108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A315135 n)

end

end A310416.P12631522232511300108

namespace A310416

/-- `xor(Δ[A109613(n)], A315135(n))` -/
def P12631522232511300108.Spec : Prop :=
  ∀ n, P12631522232511300108.a n = A310416 n

end A310416

/-! ## A310416.P1730475553773824741

`xor(2*A000035(n), A315135(n))`
-/

namespace A310416.P1730475553773824741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A000035 n) (A315135 n)

end

end A310416.P1730475553773824741

namespace A310416

/-- `xor(2*A000035(n), A315135(n))` -/
def P1730475553773824741.Spec : Prop :=
  ∀ n, P1730475553773824741.a n = A310416 n

end A310416

/-! ## A310416.P4664085634619165138

`xor(and(2, A005843(n)), A315135(n))`
-/

namespace A310416.P4664085634619165138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 2 (A005843 n)) (A315135 n)

end

end A310416.P4664085634619165138

namespace A310416

/-- `xor(and(2, A005843(n)), A315135(n))` -/
def P4664085634619165138.Spec : Prop :=
  ∀ n, P4664085634619165138.a n = A310416 n

end A310416

/-! ## A310416.P7633281699484898053

`xor(and(2, A008458(n)), A315135(n))`
-/

namespace A310416.P7633281699484898053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 2 (A008458 n)) (A315135 n)

end

end A310416.P7633281699484898053

namespace A310416

/-- `xor(and(2, A008458(n)), A315135(n))` -/
def P7633281699484898053.Spec : Prop :=
  ∀ n, P7633281699484898053.a n = A310416 n

end A310416

/-! ## A310416.P669184179052569142

`xor(and(2, A083220(n)), A315135(n))`
-/

namespace A310416.P669184179052569142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 2 (A083220 n)) (A315135 n)

end

end A310416.P669184179052569142

namespace A310416

/-- `xor(and(2, A083220(n)), A315135(n))` -/
def P669184179052569142.Spec : Prop :=
  ∀ n, P669184179052569142.a n = A310416 n

end A310416

/-! ## A310416.P16805345757654765973

`A056594(A092569(n))+A004442(A008706(n))`
-/

namespace A310416.P16805345757654765973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A092569 n).toNat + A004442 (A008706 n).toNat

end

end A310416.P16805345757654765973

namespace A310416

/-- `A056594(A092569(n))+A004442(A008706(n))` -/
def P16805345757654765973.Spec : Prop :=
  ∀ n, P16805345757654765973.a n = A310416 n

end A310416

/-!
# A310417: Coordination sequence Gal.5.281.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310417, there is no canonical definition to state claims against.
-/

/-! ## A310417.P8241294323880639318

`A311223(n)^A078214(n+1)+or(1, n)-1`
-/

namespace A310417.P8241294323880639318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311223 n : ℚ) ^ (A078214 (n + 1) : ℤ) + ((Nat.lor 1 n : ℤ) - 1 : ℚ)

end

end A310417.P8241294323880639318

/-! ## A310417.P16902403461637416498

`A311458(n)+A023416(A101197(n))`
-/

namespace A310417.P16902403461637416498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A023416 (A101197 n).toNat

end

end A310417.P16902403461637416498

/-! ## A310417.P17390087976891314480

`A207645(A078213(n+1))+A075326(n)`
-/

namespace A310417.P17390087976891314480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207645 (A078213 (n + 1)).toNat + A075326 n

end

end A310417.P17390087976891314480

/-!
# A310418: Coordination sequence Gal.3.43.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310418, there is no canonical definition to state claims against.
-/

/-! ## A310418.P1042742763107731111

`A310039(2*n)-n`
-/

namespace A310418.P1042742763107731111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310039 (2 * n) - (n : ℤ)

end

end A310418.P1042742763107731111

/-! ## A310418.P8804217314759290366

`A312976(n)+A001222(A051296(n))`
-/

namespace A310418.P8804217314759290366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312976 n + A001222 (A051296 n).toNat

end

end A310418.P8804217314759290366

/-! ## A310418.P575629248698158319

`A008458(n)-A005811(A024023(n))`
-/

namespace A310418.P575629248698158319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005811 (A024023 n).toNat

end

end A310418.P575629248698158319

/-! ## A310418.P8998172643020080173

`A225241(2*n+1)-A000122(A003422(n))`
-/

namespace A310418.P8998172643020080173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (2 * n + 1) - A000122 (A003422 n).toNat

end

end A310418.P8998172643020080173

/-! ## A310418.P6915757088001459054

`A090332(2*(n+1))+A008836(A000045(2*(n+2)))`
-/

namespace A310418.P6915757088001459054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090332 (2 * (n + 1)) + A008836 (A000045 (2 * (n + 2))).toNat

end

end A310418.P6915757088001459054

/-!
# A310419: Coordination sequence Gal.5.130.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310419, the canonical program `A310419.P9463274316213645996` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310419 has offset 0).

The definition of A310419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310419.P3967108611460748088

`A008574(n)+∑[sqrt(and(4, 3*n))]`
-/

namespace A310419.P3967108611460748088
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.land 4 (3 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008574 n : ℝ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310419.P3967108611460748088

namespace A310419

/-- `A008574(n)+∑[sqrt(and(4, 3*n))]` -/
def P3967108611460748088.Spec : Prop :=
  ∀ n, P3967108611460748088.a n = (A310419 n : ℝ)

end A310419

/-! ## A310419.P4057735414201044782

`A008706(n)-A188510(n)`
-/

namespace A310419.P4057735414201044782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A188510 n

end

end A310419.P4057735414201044782

namespace A310419

/-- `A008706(n)-A188510(n)` -/
def P4057735414201044782.Spec : Prop :=
  ∀ n, P4057735414201044782.a n = A310419 n

end A310419

/-! ## A310419.P12485492114683305805

`A314026(n)-A046978(n)`
-/

namespace A310419.P12485492114683305805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n - A046978 n

end

end A310419.P12485492114683305805

namespace A310419

/-- `A314026(n)-A046978(n)` -/
def P12485492114683305805.Spec : Prop :=
  ∀ n, P12485492114683305805.a n = A310419 n

end A310419

/-! ## A310419.P16324537292078856174

`abs(A008587(n)-A257170(n))`
-/

namespace A310419.P16324537292078856174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008587 n - A257170 n|

end

end A310419.P16324537292078856174

namespace A310419

/-- `abs(A008587(n)-A257170(n))` -/
def P16324537292078856174.Spec : Prop :=
  ∀ n, P16324537292078856174.a n = A310419 n

end A310419

/-! ## A310419.P17673218679694044791

`A091337(n+2)+A008706(n)`
-/

namespace A310419.P17673218679694044791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (n + 2) + A008706 n

end

end A310419.P17673218679694044791

namespace A310419

/-- `A091337(n+2)+A008706(n)` -/
def P17673218679694044791.Spec : Prop :=
  ∀ n, P17673218679694044791.a n = A310419 n

end A310419

/-! ## A310419.P15480564605147370614

`A188510(n+4)+A008706(n)`
-/

namespace A310419.P15480564605147370614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (n + 4) + A008706 n

end

end A310419.P15480564605147370614

namespace A310419

/-- `A188510(n+4)+A008706(n)` -/
def P15480564605147370614.Spec : Prop :=
  ∀ n, P15480564605147370614.a n = A310419 n

end A310419

/-! ## A310419.P9463274316213645996

`2*A312943(n)-A008574(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310419

/-- `2*A312943(n)-A008574(n)` -/
def P9463274316213645996.Spec : Prop :=
  ∀ n, P9463274316213645996.a n = A310419 n

theorem P9463274316213645996.correct : P9463274316213645996.Spec := by
  intro n
  simp only [A310419]

end A310419

/-! ## A310419.P8041789342395728794

`A315632(n)-2*A046978(n)`
-/

namespace A310419.P8041789342395728794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315632 n - 2 * A046978 n

end

end A310419.P8041789342395728794

namespace A310419

/-- `A315632(n)-2*A046978(n)` -/
def P8041789342395728794.Spec : Prop :=
  ∀ n, P8041789342395728794.a n = A310419 n

end A310419

/-! ## A310419.P1996891519624546928

`2*A312943(n)-(A004273(n)+2*n+1)`
-/

namespace A310419.P1996891519624546928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312943 n - (A004273 n + (2 * n + 1 : ℤ))

end

end A310419.P1996891519624546928

namespace A310419

/-- `2*A312943(n)-(A004273(n)+2*n+1)` -/
def P1996891519624546928.Spec : Prop :=
  ∀ n, P1996891519624546928.a n = A310419 n

end A310419

/-! ## A310419.P3806520007243588012

`A008706(n)-A046978(A022998(n))`
-/

namespace A310419.P3806520007243588012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A046978 (A022998 n).toNat

end

end A310419.P3806520007243588012

namespace A310419

/-- `A008706(n)-A046978(A022998(n))` -/
def P3806520007243588012.Spec : Prop :=
  ∀ n, P3806520007243588012.a n = A310419 n

end A310419

/-! ## A310419.P14709946762468253113

`A310530(n)-A201629(A201629(n)/2)`
-/

namespace A310419.P14709946762468253113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310530 n - A201629 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A310419.P14709946762468253113

namespace A310419

/-- `A310530(n)-A201629(A201629(n)/2)` -/
def P14709946762468253113.Spec : Prop :=
  ∀ n, P14709946762468253113.a n = A310419 n

end A310419

/-! ## A310419.P10630754384404069481

`A008458(n)+A008574(n)-A315306(n)`
-/

namespace A310419.P10630754384404069481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315306 n)

end

end A310419.P10630754384404069481

namespace A310419

/-- `A008458(n)+A008574(n)-A315306(n)` -/
def P10630754384404069481.Spec : Prop :=
  ∀ n, P10630754384404069481.a n = A310419 n

end A310419

/-! ## A310419.P1607766893140881969

`A004273(A312943(n)-n)-A004273(n)`
-/

namespace A310419.P1607766893140881969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312943 n - (n : ℤ)).toNat - A004273 n

end

end A310419.P1607766893140881969

namespace A310419

/-- `A004273(A312943(n)-n)-A004273(n)` -/
def P1607766893140881969.Spec : Prop :=
  ∀ n, P1607766893140881969.a n = A310419 n

end A310419

/-! ## A310419.P10252305080306378275

`∑{d}[A008587(n)-A257170(n), A000010(#)]`
-/

namespace A310419.P10252305080306378275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A257170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310419.P10252305080306378275

namespace A310419

/-- `∑{d}[A008587(n)-A257170(n), A000010(#)]` -/
def P10252305080306378275.Spec : Prop :=
  ∀ n, P10252305080306378275.a n = A310419 n

end A310419

/-! ## A310419.P4603809006012235868

`A004525(n)+A310397(n)-A004525(A004525(n))`
-/

namespace A310419.P4603809006012235868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310397 n - A004525 (A004525 n).toNat)

end

end A310419.P4603809006012235868

namespace A310419

/-- `A004525(n)+A310397(n)-A004525(A004525(n))` -/
def P4603809006012235868.Spec : Prop :=
  ∀ n, P4603809006012235868.a n = A310419 n

end A310419

/-! ## A310419.P9318816939853526298

`A315061(n)-A075553(n)`
-/

namespace A310419.P9318816939853526298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A075553 n

end

end A310419.P9318816939853526298

namespace A310419

/-- `A315061(n)-A075553(n)` -/
def P9318816939853526298.Spec : Prop :=
  ∀ n, P9318816939853526298.a n = A310419 n

end A310419

/-! ## A310419.P8879020075464301698

`A314056(n)-A004525(A004525(n))`
-/

namespace A310419.P8879020075464301698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n - A004525 (A004525 n).toNat

end

end A310419.P8879020075464301698

namespace A310419

/-- `A314056(n)-A004525(A004525(n))` -/
def P8879020075464301698.Spec : Prop :=
  ∀ n, P8879020075464301698.a n = A310419 n

end A310419

/-! ## A310419.P9842916816693389373

`2*A314161(n)-A008458(n)`
-/

namespace A310419.P9842916816693389373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314161 n - A008458 n

end

end A310419.P9842916816693389373

namespace A310419

/-- `2*A314161(n)-A008458(n)` -/
def P9842916816693389373.Spec : Prop :=
  ∀ n, P9842916816693389373.a n = A310419 n

end A310419

/-! ## A310419.P6867344672533351219

`A315651(n)-2*A004525(A004525(n))`
-/

namespace A310419.P6867344672533351219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315651 n - 2 * A004525 (A004525 n).toNat

end

end A310419.P6867344672533351219

namespace A310419

/-- `A315651(n)-2*A004525(A004525(n))` -/
def P6867344672533351219.Spec : Prop :=
  ∀ n, P6867344672533351219.a n = A310419 n

end A310419

/-! ## A310419.P1154458214660457209

`A074067(A315306(n))`
-/

namespace A310419.P1154458214660457209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315306 n).toNat

end

end A310419.P1154458214660457209

namespace A310419

/-- `A074067(A315306(n))` -/
def P1154458214660457209.Spec : Prop :=
  ∀ n, P1154458214660457209.a n = A310419 n

end A310419

/-!
# A310420: Coordination sequence Gal.6.324.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310420, the canonical program `A310420.P17604742702045992643` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310420 has offset 0).

The definition of A310420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310420.P17604742702045992643

`abs(A008592(n)-A315305(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310420

/-- `abs(A008592(n)-A315305(n))` -/
def P17604742702045992643.Spec : Prop :=
  ∀ n, P17604742702045992643.a n = A310420 n

theorem P17604742702045992643.correct : P17604742702045992643.Spec := by
  intro n
  simp only [A310420]

end A310420

/-! ## A310420.P2314352628820547450

`2*A312944(n)-A008574(n)`
-/

namespace A310420.P2314352628820547450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312944 n - A008574 n

end

end A310420.P2314352628820547450

namespace A310420

/-- `2*A312944(n)-A008574(n)` -/
def P2314352628820547450.Spec : Prop :=
  ∀ n, P2314352628820547450.a n = A310420 n

end A310420

/-! ## A310420.P17214496546049654226

`2*A008706(n)-A315305(n)`
-/

namespace A310420.P17214496546049654226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315305 n

end

end A310420.P17214496546049654226

namespace A310420

/-- `2*A008706(n)-A315305(n)` -/
def P17214496546049654226.Spec : Prop :=
  ∀ n, P17214496546049654226.a n = A310420 n

end A310420

/-! ## A310420.P10465941622462755155

`abs(A017281(n)-(A315305(n)+1))`
-/

namespace A310420.P10465941622462755155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A017281 n - (A315305 n + 1)|

end

end A310420.P10465941622462755155

namespace A310420

/-- `abs(A017281(n)-(A315305(n)+1))` -/
def P10465941622462755155.Spec : Prop :=
  ∀ n, P10465941622462755155.a n = A310420 n

end A310420

/-! ## A310420.P7690087762314788235

`A004275(A312944(n)-A004273(n))`
-/

namespace A310420.P7690087762314788235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312944 n - A004273 n).toNat

end

end A310420.P7690087762314788235

namespace A310420

/-- `A004275(A312944(n)-A004273(n))` -/
def P7690087762314788235.Spec : Prop :=
  ∀ n, P7690087762314788235.a n = A310420 n

end A310420

/-! ## A310420.P8725274725502220239

`A004277(A312944(n)-A004277(n))`
-/

namespace A310420.P8725274725502220239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312944 n - A004277 n).toNat

end

end A310420.P8725274725502220239

namespace A310420

/-- `A004277(A312944(n)-A004277(n))` -/
def P8725274725502220239.Spec : Prop :=
  ∀ n, P8725274725502220239.a n = A310420 n

end A310420

/-! ## A310420.P9609677082119523808

`A008458(n)+A008574(n)-A315305(n)`
-/

namespace A310420.P9609677082119523808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315305 n)

end

end A310420.P9609677082119523808

namespace A310420

/-- `A008458(n)+A008574(n)-A315305(n)` -/
def P9609677082119523808.Spec : Prop :=
  ∀ n, P9609677082119523808.a n = A310420 n

end A310420

/-! ## A310420.P6752933709767511433

`A004273(A312944(n)-n)-A004273(n)`
-/

namespace A310420.P6752933709767511433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312944 n - (n : ℤ)).toNat - A004273 n

end

end A310420.P6752933709767511433

namespace A310420

/-- `A004273(A312944(n)-n)-A004273(n)` -/
def P6752933709767511433.Spec : Prop :=
  ∀ n, P6752933709767511433.a n = A310420 n

end A310420

/-! ## A310420.P10701426140156353866

`A008574(n)+A005843(A312944(n)-A008574(n))`
-/

namespace A310420.P10701426140156353866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312944 n - A008574 n).toNat

end

end A310420.P10701426140156353866

namespace A310420

/-- `A008574(n)+A005843(A312944(n)-A008574(n))` -/
def P10701426140156353866.Spec : Prop :=
  ∀ n, P10701426140156353866.a n = A310420 n

end A310420

/-! ## A310420.P5684544591889013261

`A005843(A312944(n))-A008574(n)`
-/

namespace A310420.P5684544591889013261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312944 n).toNat - A008574 n

end

end A310420.P5684544591889013261

namespace A310420

/-- `A005843(A312944(n))-A008574(n)` -/
def P5684544591889013261.Spec : Prop :=
  ∀ n, P5684544591889013261.a n = A310420 n

end A310420

/-! ## A310420.P5650260671693028747

`A004275(A312944(n))-A004275(2*n)`
-/

namespace A310420.P5650260671693028747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312944 n).toNat - A004275 (2 * n)

end

end A310420.P5650260671693028747

namespace A310420

/-- `A004275(A312944(n))-A004275(2*n)` -/
def P5650260671693028747.Spec : Prop :=
  ∀ n, P5650260671693028747.a n = A310420 n

end A310420

/-! ## A310420.P14065260430918823972

`A005843(A312944(n))+n-A008706(n)`
-/

namespace A310420.P14065260430918823972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312944 n).toNat + ((n : ℤ) - A008706 n)

end

end A310420.P14065260430918823972

namespace A310420

/-- `A005843(A312944(n))+n-A008706(n)` -/
def P14065260430918823972.Spec : Prop :=
  ∀ n, P14065260430918823972.a n = A310420 n

end A310420

/-! ## A310420.P4929011842060342763

`A017281(n)-A004442(A315305(n))`
-/

namespace A310420.P4929011842060342763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315305 n).toNat

end

end A310420.P4929011842060342763

namespace A310420

/-- `A017281(n)-A004442(A315305(n))` -/
def P4929011842060342763.Spec : Prop :=
  ∀ n, P4929011842060342763.a n = A310420 n

end A310420

/-! ## A310420.P3768100912372338682

`A005843(A008706(n))-A315305(n)`
-/

namespace A310420.P3768100912372338682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315305 n

end

end A310420.P3768100912372338682

namespace A310420

/-- `A005843(A008706(n))-A315305(n)` -/
def P3768100912372338682.Spec : Prop :=
  ∀ n, P3768100912372338682.a n = A310420 n

end A310420

/-!
# A310421: Coordination sequence Gal.5.131.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310421, the canonical program `A310421.P18423327400045776034` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310421 has offset 0).

The definition of A310421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310421.P18423327400045776034

`abs(A008592(n)-A315304(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A310421

/-- `abs(A008592(n)-A315304(n))` -/
def P18423327400045776034.Spec : Prop :=
  ∀ n, P18423327400045776034.a n = A310421 n

theorem P18423327400045776034.correct : P18423327400045776034.Spec := by
  intro n
  simp only [A310421]

end A310421

/-! ## A310421.P2190576160518997035

`2*A008706(n)-A315304(n)`
-/

namespace A310421.P2190576160518997035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315304 n

end

end A310421.P2190576160518997035

namespace A310421

/-- `2*A008706(n)-A315304(n)` -/
def P2190576160518997035.Spec : Prop :=
  ∀ n, P2190576160518997035.a n = A310421 n

end A310421

/-! ## A310421.P10898601674399760199

`A311612(n)+2*(n-A004396(n))`
-/

namespace A310421.P10898601674399760199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311612 n + 2 * ((n : ℤ) - A004396 n)

end

end A310421.P10898601674399760199

namespace A310421

/-- `A311612(n)+2*(n-A004396(n))` -/
def P10898601674399760199.Spec : Prop :=
  ∀ n, P10898601674399760199.a n = A310421 n

end A310421

/-! ## A310421.P9622798393246750378

`A311612(n)+A008612(A016813(n))`
-/

namespace A310421.P9622798393246750378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311612 n + A008612 (A016813 n).toNat

end

end A310421.P9622798393246750378

namespace A310421

/-- `A311612(n)+A008612(A016813(n))` -/
def P9622798393246750378.Spec : Prop :=
  ∀ n, P9622798393246750378.a n = A310421 n

end A310421

/-! ## A310421.P1169288821014469384

`A008458(n)+A008574(n)-A315304(n)`
-/

namespace A310421.P1169288821014469384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315304 n)

end

end A310421.P1169288821014469384

namespace A310421

/-- `A008458(n)+A008574(n)-A315304(n)` -/
def P1169288821014469384.Spec : Prop :=
  ∀ n, P1169288821014469384.a n = A310421 n

end A310421

/-! ## A310421.P8635736305468398387

`∑{d}[A008592(n)-A315304(n), A000010(#)]`
-/

namespace A310421.P8635736305468398387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310421.P8635736305468398387

namespace A310421

/-- `∑{d}[A008592(n)-A315304(n), A000010(#)]` -/
def P8635736305468398387.Spec : Prop :=
  ∀ n, P8635736305468398387.a n = A310421 n

end A310421

/-! ## A310421.P15540038566548853579

`2*A314163(n)-A008458(n)`
-/

namespace A310421.P15540038566548853579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314163 n - A008458 n

end

end A310421.P15540038566548853579

namespace A310421

/-- `2*A314163(n)-A008458(n)` -/
def P15540038566548853579.Spec : Prop :=
  ∀ n, P15540038566548853579.a n = A310421 n

end A310421

/-! ## A310421.P2960293748510451507

`A008458(n)-A005843(A008458(n)-A314163(n))`
-/

namespace A310421.P2960293748510451507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314163 n).toNat

end

end A310421.P2960293748510451507

namespace A310421

/-- `A008458(n)-A005843(A008458(n)-A314163(n))` -/
def P2960293748510451507.Spec : Prop :=
  ∀ n, P2960293748510451507.a n = A310421 n

end A310421

/-! ## A310421.P2133974056714422636

`2*A219529(n)-A315731(n)`
-/

namespace A310421.P2133974056714422636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219529 n - A315731 n

end

end A310421.P2133974056714422636

namespace A310421

/-- `2*A219529(n)-A315731(n)` -/
def P2133974056714422636.Spec : Prop :=
  ∀ n, P2133974056714422636.a n = A310421 n

end A310421

/-! ## A310421.P5201212791444995594

`A315731(n)-A005843(A315731(n)-A219529(n))`
-/

namespace A310421.P5201212791444995594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315731 n - A005843 (A315731 n - A219529 n).toNat

end

end A310421.P5201212791444995594

namespace A310421

/-- `A315731(n)-A005843(A315731(n)-A219529(n))` -/
def P5201212791444995594.Spec : Prop :=
  ∀ n, P5201212791444995594.a n = A310421 n

end A310421

/-! ## A310421.P13293756254633154538

`A005843(A008706(n))-A315304(n)`
-/

namespace A310421.P13293756254633154538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315304 n

end

end A310421.P13293756254633154538

namespace A310421

/-- `A005843(A008706(n))-A315304(n)` -/
def P13293756254633154538.Spec : Prop :=
  ∀ n, P13293756254633154538.a n = A310421 n

end A310421

/-! ## A310421.P10311035258165273499

`A000007(a(n-1))+A008592(n)-A315304(n)` with `a(0)=1`
-/

namespace A310421.P10311035258165273499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000007 (a (n - 1)).toNat + (A008592 n - A315304 n)

end

end A310421.P10311035258165273499

namespace A310421

/-- `A000007(a(n-1))+A008592(n)-A315304(n)` -/
def P10311035258165273499.Spec : Prop :=
  ∀ n, P10311035258165273499.a n = A310421 n

end A310421

/-! ## A310421.P18066469777122163965

`A005843(A219529(n))-A315731(n)`
-/

namespace A310421.P18066469777122163965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A219529 n).toNat - A315731 n

end

end A310421.P18066469777122163965

namespace A310421

/-- `A005843(A219529(n))-A315731(n)` -/
def P18066469777122163965.Spec : Prop :=
  ∀ n, P18066469777122163965.a n = A310421 n

end A310421

/-! ## A310421.P146992764643199837

`A005843(A314163(n))-A008458(n)`
-/

namespace A310421.P146992764643199837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314163 n).toNat - A008458 n

end

end A310421.P146992764643199837

namespace A310421

/-- `A005843(A314163(n))-A008458(n)` -/
def P146992764643199837.Spec : Prop :=
  ∀ n, P146992764643199837.a n = A310421 n

end A310421

/-! ## A310421.P4989419647425136469

`A005843(A314163(n))-(A008706(n)+n)`
-/

namespace A310421.P4989419647425136469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314163 n).toNat - (A008706 n + (n : ℤ))

end

end A310421.P4989419647425136469

namespace A310421

/-- `A005843(A314163(n))-(A008706(n)+n)` -/
def P4989419647425136469.Spec : Prop :=
  ∀ n, P4989419647425136469.a n = A310421 n

end A310421

/-! ## A310421.P453246596011951289

`A315308(2*n)+A315308(n+1)-A315308(2*n+1)`
-/

namespace A310421.P453246596011951289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315308 (2 * n) + (A315308 (n + 1) - A315308 (2 * n + 1))

end

end A310421.P453246596011951289

namespace A310421

/-- `A315308(2*n)+A315308(n+1)-A315308(2*n+1)` -/
def P453246596011951289.Spec : Prop :=
  ∀ n, P453246596011951289.a n = A310421 n

end A310421

/-!
# A310422: Coordination sequence Gal.6.325.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310422, the canonical program `A310422.P14341133682885301915` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310422 has offset 0).

The definition of A310422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310422.P14341133682885301915

`abs(A008592(n)-A315303(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310422

/-- `abs(A008592(n)-A315303(n))` -/
def P14341133682885301915.Spec : Prop :=
  ∀ n, P14341133682885301915.a n = A310422 n

theorem P14341133682885301915.correct : P14341133682885301915.Spec := by
  intro n
  simp only [A310422]

end A310422

/-! ## A310422.P18359299885493091386

`2*A312948(n)-A008574(n)`
-/

namespace A310422.P18359299885493091386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312948 n - A008574 n

end

end A310422.P18359299885493091386

namespace A310422

/-- `2*A312948(n)-A008574(n)` -/
def P18359299885493091386.Spec : Prop :=
  ∀ n, P18359299885493091386.a n = A310422 n

end A310422

/-! ## A310422.P13103851311206657449

`A004275(A312948(n)-A004273(n))`
-/

namespace A310422.P13103851311206657449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312948 n - A004273 n).toNat

end

end A310422.P13103851311206657449

namespace A310422

/-- `A004275(A312948(n)-A004273(n))` -/
def P13103851311206657449.Spec : Prop :=
  ∀ n, P13103851311206657449.a n = A310422 n

end A310422

/-! ## A310422.P12534455547840539120

`A004277(A312948(n)-A004277(n))`
-/

namespace A310422.P12534455547840539120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A312948 n - A004277 n).toNat

end

end A310422.P12534455547840539120

namespace A310422

/-- `A004277(A312948(n)-A004277(n))` -/
def P12534455547840539120.Spec : Prop :=
  ∀ n, P12534455547840539120.a n = A310422 n

end A310422

/-! ## A310422.P15266089613635895879

`A004277(A151988(n)+A047299(n+1))`
-/

namespace A310422.P15266089613635895879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151988 n + A047299 (n + 1)).toNat

end

end A310422.P15266089613635895879

namespace A310422

/-- `A004277(A151988(n)+A047299(n+1))` -/
def P15266089613635895879.Spec : Prop :=
  ∀ n, P15266089613635895879.a n = A310422 n

end A310422

/-! ## A310422.P10963489488203882646

`A008458(n)+A008574(n)-A315303(n)`
-/

namespace A310422.P10963489488203882646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315303 n)

end

end A310422.P10963489488203882646

namespace A310422

/-- `A008458(n)+A008574(n)-A315303(n)` -/
def P10963489488203882646.Spec : Prop :=
  ∀ n, P10963489488203882646.a n = A310422 n

end A310422

/-! ## A310422.P4839402289524173821

`A004273(A312948(n)-n)-A004273(n)`
-/

namespace A310422.P4839402289524173821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A312948 n - (n : ℤ)).toNat - A004273 n

end

end A310422.P4839402289524173821

namespace A310422

/-- `A004273(A312948(n)-n)-A004273(n)` -/
def P4839402289524173821.Spec : Prop :=
  ∀ n, P4839402289524173821.a n = A310422 n

end A310422

/-! ## A310422.P7416806292351838828

`A008574(n)+A005843(A312948(n)-A008574(n))`
-/

namespace A310422.P7416806292351838828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A312948 n - A008574 n).toNat

end

end A310422.P7416806292351838828

namespace A310422

/-- `A008574(n)+A005843(A312948(n)-A008574(n))` -/
def P7416806292351838828.Spec : Prop :=
  ∀ n, P7416806292351838828.a n = A310422 n

end A310422

/-! ## A310422.P9868415585462923921

`A315644(n)-2*A330025(n)`
-/

namespace A310422.P9868415585462923921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315644 n - 2 * A330025 n

end

end A310422.P9868415585462923921

namespace A310422

/-- `A315644(n)-2*A330025(n)` -/
def P9868415585462923921.Spec : Prop :=
  ∀ n, P9868415585462923921.a n = A310422 n

end A310422

/-! ## A310422.P3465027239614555452

`A314049(n)-A330025(n)`
-/

namespace A310422.P3465027239614555452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n - A330025 n

end

end A310422.P3465027239614555452

namespace A310422

/-- `A314049(n)-A330025(n)` -/
def P3465027239614555452.Spec : Prop :=
  ∀ n, P3465027239614555452.a n = A310422 n

end A310422

/-! ## A310422.P2936656198169316917

`A005843(A312948(n))-A008574(n)`
-/

namespace A310422.P2936656198169316917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312948 n).toNat - A008574 n

end

end A310422.P2936656198169316917

namespace A310422

/-- `A005843(A312948(n))-A008574(n)` -/
def P2936656198169316917.Spec : Prop :=
  ∀ n, P2936656198169316917.a n = A310422 n

end A310422

/-! ## A310422.P13182170187795205745

`A004275(A312948(n))-A004275(2*n)`
-/

namespace A310422.P13182170187795205745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A312948 n).toNat - A004275 (2 * n)

end

end A310422.P13182170187795205745

namespace A310422

/-- `A004275(A312948(n))-A004275(2*n)` -/
def P13182170187795205745.Spec : Prop :=
  ∀ n, P13182170187795205745.a n = A310422 n

end A310422

/-! ## A310422.P1397955117799473821

`2*A314164(n)-A008458(n)`
-/

namespace A310422.P1397955117799473821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314164 n - A008458 n

end

end A310422.P1397955117799473821

namespace A310422

/-- `2*A314164(n)-A008458(n)` -/
def P1397955117799473821.Spec : Prop :=
  ∀ n, P1397955117799473821.a n = A310422 n

end A310422

/-! ## A310422.P2935586358831474577

`A008458(n)-A005843(A008458(n)-A314164(n))`
-/

namespace A310422.P2935586358831474577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314164 n).toNat

end

end A310422.P2935586358831474577

namespace A310422

/-- `A008458(n)-A005843(A008458(n)-A314164(n))` -/
def P2935586358831474577.Spec : Prop :=
  ∀ n, P2935586358831474577.a n = A310422 n

end A310422

/-! ## A310422.P5821487204006970031

`A020639(a(n-1))*A004525(A313154(n))` with `a(0)=1, a(1)=4`
-/

namespace A310422.P5821487204006970031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A020639 (a (n - 1)).toNat * A004525 (A313154 n).toNat

end

end A310422.P5821487204006970031

namespace A310422

/-- `A020639(a(n-1))*A004525(A313154(n))` -/
def P5821487204006970031.Spec : Prop :=
  ∀ n, P5821487204006970031.a n = A310422 n

end A310422

/-! ## A310422.P14832198230479017454

`A020639(A000040(n+1)-1)*A004525(A313154(n))`
-/

namespace A310422.P14832198230479017454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000040 (n + 1) - 1).toNat * A004525 (A313154 n).toNat

end

end A310422.P14832198230479017454

namespace A310422

/-- `A020639(A000040(n+1)-1)*A004525(A313154(n))` -/
def P14832198230479017454.Spec : Prop :=
  ∀ n, P14832198230479017454.a n = A310422 n

end A310422

/-! ## A310422.P4778129022137730815

`A005843(A314164(n))-A008458(n)`
-/

namespace A310422.P4778129022137730815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314164 n).toNat - A008458 n

end

end A310422.P4778129022137730815

namespace A310422

/-- `A005843(A314164(n))-A008458(n)` -/
def P4778129022137730815.Spec : Prop :=
  ∀ n, P4778129022137730815.a n = A310422 n

end A310422

/-!
# A310423: Coordination sequence Gal.6.326.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310423, the canonical program `A310423.P3461946807328285737` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310423 has offset 0).

The definition of A310423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310423.P3461946807328285737

`abs(A008592(n)-A315302(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A310423

/-- `abs(A008592(n)-A315302(n))` -/
def P3461946807328285737.Spec : Prop :=
  ∀ n, P3461946807328285737.a n = A310423 n

theorem P3461946807328285737.correct : P3461946807328285737.Spec := by
  intro n
  simp only [A310423]

end A310423

/-! ## A310423.P12826203356658187776

`2*A008706(n)-A315302(n)`
-/

namespace A310423.P12826203356658187776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315302 n

end

end A310423.P12826203356658187776

namespace A310423

/-- `2*A008706(n)-A315302(n)` -/
def P12826203356658187776.Spec : Prop :=
  ∀ n, P12826203356658187776.a n = A310423 n

end A310423

/-! ## A310423.P13018637989342023715

`A008458(n)+A008574(n)-A315302(n)`
-/

namespace A310423.P13018637989342023715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315302 n)

end

end A310423.P13018637989342023715

namespace A310423

/-- `A008458(n)+A008574(n)-A315302(n)` -/
def P13018637989342023715.Spec : Prop :=
  ∀ n, P13018637989342023715.a n = A310423 n

end A310423

/-! ## A310423.P8928782729780852638

`2*A314165(n)-A008458(n)`
-/

namespace A310423.P8928782729780852638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314165 n - A008458 n

end

end A310423.P8928782729780852638

namespace A310423

/-- `2*A314165(n)-A008458(n)` -/
def P8928782729780852638.Spec : Prop :=
  ∀ n, P8928782729780852638.a n = A310423 n

end A310423

/-! ## A310423.P3805308114993905662

`A103517(A314165(n)-A016777(n))`
-/

namespace A310423.P3805308114993905662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A314165 n - A016777 n).toNat

end

end A310423.P3805308114993905662

namespace A310423

/-- `A103517(A314165(n)-A016777(n))` -/
def P3805308114993905662.Spec : Prop :=
  ∀ n, P3805308114993905662.a n = A310423 n

end A310423

/-! ## A310423.P11681650765630050244

`A103517(A314165(n)%A016777(n))`
-/

namespace A310423.P11681650765630050244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A314165 n) (A016777 n)).toNat

end

end A310423.P11681650765630050244

namespace A310423

/-- `A103517(A314165(n)%A016777(n))` -/
def P11681650765630050244.Spec : Prop :=
  ∀ n, P11681650765630050244.a n = A310423 n

end A310423

/-! ## A310423.P17362789842944724610

`A004277(A314165(n)-(A004277(n)+n))`
-/

namespace A310423.P17362789842944724610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314165 n - (A004277 n + (n : ℤ))).toNat

end

end A310423.P17362789842944724610

namespace A310423

/-- `A004277(A314165(n)-(A004277(n)+n))` -/
def P17362789842944724610.Spec : Prop :=
  ∀ n, P17362789842944724610.a n = A310423 n

end A310423

/-! ## A310423.P3940831717752810035

`A004277(A314165(n)-n-A004277(n))`
-/

namespace A310423.P3940831717752810035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314165 n - (n : ℤ) - A004277 n).toNat

end

end A310423.P3940831717752810035

namespace A310423

/-- `A004277(A314165(n)-n-A004277(n))` -/
def P3940831717752810035.Spec : Prop :=
  ∀ n, P3940831717752810035.a n = A310423 n

end A310423

/-! ## A310423.P16349140273489960742

`A008458(n)-A005843(A008458(n)-A314165(n))`
-/

namespace A310423.P16349140273489960742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314165 n).toNat

end

end A310423.P16349140273489960742

namespace A310423

/-- `A008458(n)-A005843(A008458(n)-A314165(n))` -/
def P16349140273489960742.Spec : Prop :=
  ∀ n, P16349140273489960742.a n = A310423 n

end A310423

/-! ## A310423.P16883266262502808176

`A017281(n)-A004442(A315302(n))`
-/

namespace A310423.P16883266262502808176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A004442 (A315302 n).toNat

end

end A310423.P16883266262502808176

namespace A310423

/-- `A017281(n)-A004442(A315302(n))` -/
def P16883266262502808176.Spec : Prop :=
  ∀ n, P16883266262502808176.a n = A310423 n

end A310423

/-! ## A310423.P3609624346529881681

`A005843(A008706(n))-A315302(n)`
-/

namespace A310423.P3609624346529881681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315302 n

end

end A310423.P3609624346529881681

namespace A310423

/-- `A005843(A008706(n))-A315302(n)` -/
def P3609624346529881681.Spec : Prop :=
  ∀ n, P3609624346529881681.a n = A310423 n

end A310423

/-! ## A310423.P4144685912675943120

`A005843(A314165(n))-A008458(n)`
-/

namespace A310423.P4144685912675943120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314165 n).toNat - A008458 n

end

end A310423.P4144685912675943120

namespace A310423

/-- `A005843(A314165(n))-A008458(n)` -/
def P4144685912675943120.Spec : Prop :=
  ∀ n, P4144685912675943120.a n = A310423 n

end A310423

/-!
# A310424: Coordination sequence Gal.5.282.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310424, there is no canonical definition to state claims against.
-/

/-! ## A310424.P2915287613726022019

`or(A028586(A246829(n+1)), A312562(n))`
-/

namespace A310424.P2915287613726022019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028586 (A246829 (n + 1)).toNat) (A312562 n)

end

end A310424.P2915287613726022019

/-! ## A310424.P4844051118249379108

`A310398(n)+A193238(A213834(n+1))`
-/

namespace A310424.P4844051118249379108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A193238 (A213834 (n + 1)).toNat

end

end A310424.P4844051118249379108

/-! ## A310424.P16018734742247630921

`A328037(A009262(n+1))+A310413(n)`
-/

namespace A310424.P16018734742247630921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328037 (A009262 (n + 1)).toNat + A310413 n

end

end A310424.P16018734742247630921

/-! ## A310424.P4462288898666171008

`A301694(n)-A130130(A003195(n+1))`
-/

namespace A310424.P4462288898666171008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A130130 (A003195 (n + 1)).toNat

end

end A310424.P4462288898666171008

/-! ## A310424.P10901610423021489120

`A378370(A372530(n+1))+A298024(n)`
-/

namespace A310424.P10901610423021489120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378370 (A372530 (n + 1)).toNat + A298024 n

end

end A310424.P10901610423021489120

/-!
# A310427: Coordination sequence Gal.6.566.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310427, there is no canonical definition to state claims against.
-/

/-! ## A310427.P15519455752992330065

`A313009(n)+A037808(A104310(n+1))`
-/

namespace A310427.P15519455752992330065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313009 n + A037808 (A104310 (n + 1)).toNat

end

end A310427.P15519455752992330065

/-! ## A310427.P8668285779938848407

`A314144(n)-A001222(A104859(n))`
-/

namespace A310427.P8668285779938848407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - A001222 (A104859 n).toNat

end

end A310427.P8668285779938848407

/-! ## A310427.P779369298444922232

`A310559(n)-A001221(A136574(n))`
-/

namespace A310427.P779369298444922232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310559 n - A001221 (A136574 n).toNat

end

end A310427.P779369298444922232

/-! ## A310427.P10259418122302010735

`A310434(n)-A107846(A048499(n))`
-/

namespace A310427.P10259418122302010735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310434 n - A107846 (A048499 n).toNat

end

end A310427.P10259418122302010735

/-! ## A310427.P11493939604467692387

`A310486(n)-A257994(A000110(n))`
-/

namespace A310427.P11493939604467692387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310486 n - A257994 (A000110 n).toNat

end

end A310427.P11493939604467692387

/-!
# A310428: Coordination sequence Gal.6.568.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310428, there is no canonical definition to state claims against.
-/

/-! ## A310428.P5421255646547782759

`A310434(n)-A101638(A148392(n))`
-/

namespace A310428.P5421255646547782759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310434 n - A101638 (A148392 n).toNat

end

end A310428.P5421255646547782759

/-! ## A310428.P7868658525358120754

`A313075(n)+A088705(A105479(n))`
-/

namespace A310428.P7868658525358120754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313075 n + A088705 (A105479 n).toNat

end

end A310428.P7868658525358120754

/-! ## A310428.P14668767231900880646

`A312375(n)+A007814(A180000(3*(n+1)))`
-/

namespace A310428.P14668767231900880646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312375 n + A007814 (A180000 (3 * (n + 1))).toNat

end

end A310428.P14668767231900880646

/-! ## A310428.P276917917249283938

`A310430(n)+A049310(A327127(2*n+3))`
-/

namespace A310428.P276917917249283938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310430 n + A049310 (A327127 (2 * n + 3)).toNat

end

end A310428.P276917917249283938

/-!
# A310429: Coordination sequence Gal.6.473.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310429, there is no canonical definition to state claims against.
-/

/-! ## A310429.P4269740433059993264

`A304500(2*n+1)-A088529(A250561(3*n+5))`
-/

namespace A310429.P4269740433059993264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 (2 * n + 1) - A088529 (A250561 (3 * n + 5)).toNat

end

end A310429.P4269740433059993264

/-!
# A310430: Coordination sequence Gal.3.41.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310430, the canonical program `A310430.P7342347051689276617` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310430 has offset 0).

The definition of A310430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310430.P7342347051689276617

`A301293(n)+A077814(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310430

/-- `A301293(n)+A077814(n)` -/
def P7342347051689276617.Spec : Prop :=
  ∀ n, P7342347051689276617.a n = A310430 n

theorem P7342347051689276617.correct : P7342347051689276617.Spec := by
  intro n
  simp only [A310430]

end A310430

/-! ## A310430.P8856554720123794592

`A301293(n)+Δ[A159915(n)]`
-/

namespace A310430.P8856554720123794592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + (f1 (n + 1) - f1 n)

end

end A310430.P8856554720123794592

namespace A310430

/-- `A301293(n)+Δ[A159915(n)]` -/
def P8856554720123794592.Spec : Prop :=
  ∀ n, P8856554720123794592.a n = A310430 n

end A310430

/-! ## A310430.P1516325575400174681

`A301285(n)+A008854(n+1)`
-/

namespace A310430.P1516325575400174681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301285 n + A008854 (n + 1)

end

end A310430.P1516325575400174681

namespace A310430

/-- `A301285(n)+A008854(n+1)` -/
def P1516325575400174681.Spec : Prop :=
  ∀ n, P1516325575400174681.a n = A310430 n

end A310430

/-! ## A310430.P7360712504821864906

`A301293(n)+Δ[Δ[A159914(n)]]`
-/

namespace A310430.P7360712504821864906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + (f1 (n + 1) - f1 n)

end

end A310430.P7360712504821864906

namespace A310430

/-- `A301293(n)+Δ[Δ[A159914(n)]]` -/
def P7360712504821864906.Spec : Prop :=
  ∀ n, P7360712504821864906.a n = A310430 n

end A310430

/-! ## A310430.P16792933456917753845

`A008706(n)+A077814(n)-A004525(n)`
-/

namespace A310430.P16792933456917753845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A077814 n - A004525 n)

end

end A310430.P16792933456917753845

namespace A310430

/-- `A008706(n)+A077814(n)-A004525(n)` -/
def P16792933456917753845.Spec : Prop :=
  ∀ n, P16792933456917753845.a n = A310430 n

end A310430

/-! ## A310430.P13206029400601292184

`A008486(n+6)+A008574(n)-A250122(n+8)`
-/

namespace A310430.P13206029400601292184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (n + 6) + (A008574 n - A250122 (n + 8))

end

end A310430.P13206029400601292184

namespace A310430

/-- `A008486(n+6)+A008574(n)-A250122(n+8)` -/
def P13206029400601292184.Spec : Prop :=
  ∀ n, P13206029400601292184.a n = A310430 n

end A310430

/-!
# A310431: Coordination sequence Gal.4.98.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310431, there is no canonical definition to state claims against.
-/

/-! ## A310431.P14458439672080530887

`A310430(n)+A055641(A198275(n))`
-/

namespace A310431.P14458439672080530887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310430 n + A055641 (A198275 n).toNat

end

end A310431.P14458439672080530887

/-! ## A310431.P10024745696593769477

`A310430(n)+A019269(A302346(n))`
-/

namespace A310431.P10024745696593769477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310430 n + A019269 (A302346 n).toNat

end

end A310431.P10024745696593769477

/-! ## A310431.P2426282877666362903

`or(A267417(A002064(n)), A310430(n))`
-/

namespace A310431.P2426282877666362903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267417 (A002064 n).toNat) (A310430 n)

end

end A310431.P2426282877666362903

/-! ## A310431.P3212898344349218037

`or(A267417(A028859(n)), A310430(n))`
-/

namespace A310431.P3212898344349218037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267417 (A028859 n).toNat) (A310430 n)

end

end A310431.P3212898344349218037

/-! ## A310431.P1827326216697145012

`or(A266441(A148395(n)), A310430(n))`
-/

namespace A310431.P1827326216697145012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266441 (A148395 n).toNat) (A310430 n)

end

end A310431.P1827326216697145012

/-!
# A310432: Coordination sequence Gal.6.464.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310432, there is no canonical definition to state claims against.
-/

/-! ## A310432.P9888640409845697753

`A000038(A001882(n+1))+A310435(n)-A086010(n)`
-/

namespace A310432.P9888640409845697753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A001882 (n + 1)).toNat + (A310435 n - A086010 n)

end

end A310432.P9888640409845697753

/-! ## A310432.P8545533655842127630

`A000038(A126872(n+5))+A310435(n)-A086010(n)`
-/

namespace A310432.P8545533655842127630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A126872 (n + 5)).toNat + (A310435 n - A086010 n)

end

end A310432.P8545533655842127630

/-! ## A310432.P7005802860983786623

`A310435(n)-A025465(A159612(n+1))`
-/

namespace A310432.P7005802860983786623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310435 n - A025465 (A159612 (n + 1)).toNat

end

end A310432.P7005802860983786623

/-! ## A310432.P3959595021653493628

`A310435(n)-A184616(A095850(n+1))`
-/

namespace A310432.P3959595021653493628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310435 n - A184616 (A095850 (n + 1)).toNat

end

end A310432.P3959595021653493628

/-! ## A310432.P7415265107238284278

`(A310435(n)-A086010(n))%A000040(A001867(n))`
-/

namespace A310432.P7415265107238284278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310435 n - A086010 n) (A000040 (A001867 n).toNat)

end

end A310432.P7415265107238284278

/-!
# A310433: Coordination sequence Gal.4.107.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310433, there is no canonical definition to state claims against.
-/

/-! ## A310433.P16193599423946394308

`A313057(n)+A025458(A038624(n+1))`
-/

namespace A310433.P16193599423946394308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A025458 (A038624 (n + 1)).toNat

end

end A310433.P16193599423946394308

/-! ## A310433.P7827427355909525698

`A326292(A256788(n+1))+A310432(n)`
-/

namespace A310433.P7827427355909525698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (A256788 (n + 1)).toNat + A310432 n

end

end A310433.P7827427355909525698

/-! ## A310433.P14731574592334289758

`A310462(n)-A103271(A018915(n)+1)`
-/

namespace A310433.P14731574592334289758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310462 n - A103271 (A018915 n + 1).toNat

end

end A310433.P14731574592334289758

/-! ## A310433.P15856326782232892553

`A310432(n)+A060175(A184271(3*n+5))`
-/

namespace A310433.P15856326782232892553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310432 n + A060175 (A184271 (3 * n + 5)).toNat

end

end A310433.P15856326782232892553

/-! ## A310433.P13608641130740932122

`A160498(2*n+3)+A003002(A085787(2*n+1))`
-/

namespace A310433.P13608641130740932122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160498 (2 * n + 3) + A003002 (A085787 (2 * n + 1)).toNat

end

end A310433.P13608641130740932122

/-!
# A310434: Coordination sequence Gal.6.563.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310434, there is no canonical definition to state claims against.
-/

/-! ## A310434.P3966901179977977364

`∑[dr(A082009(A154154(n+1)))]`
-/

namespace A310434.P3966901179977977364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A082009 (A154154 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310434.P3966901179977977364

/-! ## A310434.P11278390064983718472

`A310398(n)+A056594(A047068(n))`
-/

namespace A310434.P11278390064983718472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A056594 (A047068 n).toNat

end

end A310434.P11278390064983718472

/-! ## A310434.P13234665115629628960

`A313051(n)+A102677(A052919(n))`
-/

namespace A310434.P13234665115629628960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + A102677 (A052919 n).toNat

end

end A310434.P13234665115629628960

/-! ## A310434.P2548072152941712440

`A310446(n)-A328615(A004153(n))`
-/

namespace A310434.P2548072152941712440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310446 n - A328615 (A004153 n).toNat

end

end A310434.P2548072152941712440

/-! ## A310434.P16356699079463933864

`A310503(n)-A001221(A005646(n+1))`
-/

namespace A310434.P16356699079463933864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A001221 (A005646 (n + 1)).toNat

end

end A310434.P16356699079463933864

/-!
# A310435: Coordination sequence Gal.6.474.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310435, there is no canonical definition to state claims against.
-/

/-! ## A310435.P7271114032543544149

`or(A285666(A344110(n)), A310432(n))`
-/

namespace A310435.P7271114032543544149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285666 (A344110 n).toNat) (A310432 n)

end

end A310435.P7271114032543544149

/-! ## A310435.P13752881947608918259

`or(A003849(A052216(n+1)), A310432(n))`
-/

namespace A310435.P13752881947608918259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003849 (A052216 (n + 1)).toNat) (A310432 n)

end

end A310435.P13752881947608918259

/-! ## A310435.P1452272305013524299

`or(A014033(A047930(n+1)), A310432(n))`
-/

namespace A310435.P1452272305013524299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014033 (A047930 (n + 1)).toNat) (A310432 n)

end

end A310435.P1452272305013524299

/-! ## A310435.P6623984897253704660

`or(A091446(A096128(n+1)), A310432(n))`
-/

namespace A310435.P6623984897253704660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091446 (A096128 (n + 1)).toNat) (A310432 n)

end

end A310435.P6623984897253704660

/-! ## A310435.P5054017719339569555

`or(A010060(A076681(2*(n+1))), A310432(n))`
-/

namespace A310435.P5054017719339569555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A076681 (2 * (n + 1))).toNat) (A310432 n)

end

end A310435.P5054017719339569555

/-!
# A310437: Coordination sequence Gal.5.203.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310437, there is no canonical definition to state claims against.
-/

/-! ## A310437.P9420626047595429089

`xor(A057945(A119852(n)), A310398(n))`
-/

namespace A310437.P9420626047595429089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057945 (A119852 n).toNat) (A310398 n)

end

end A310437.P9420626047595429089

/-! ## A310437.P9869895220633784557

`xor(A001221(A000568(n)), A310398(n))`
-/

namespace A310437.P9869895220633784557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A000568 n).toNat) (A310398 n)

end

end A310437.P9869895220633784557

/-! ## A310437.P8669136031370199695

`xor(A004216(A000244(n)), A310398(n))`
-/

namespace A310437.P8669136031370199695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004216 (A000244 n).toNat) (A310398 n)

end

end A310437.P8669136031370199695

/-! ## A310437.P15017834936224895931

`xor(A004216(A099754(n)), A310398(n))`
-/

namespace A310437.P15017834936224895931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004216 (A099754 n).toNat) (A310398 n)

end

end A310437.P15017834936224895931

/-! ## A310437.P8188078958830117319

`xor(A102669(A024430(n)), A310398(n))`
-/

namespace A310437.P8188078958830117319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102669 (A024430 n).toNat) (A310398 n)

end

end A310437.P8188078958830117319

/-!
# A310438: Coordination sequence Gal.6.194.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310438, the canonical program `A310438.P12188558196693580290` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310438 has offset 0).

The definition of A310438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310438.P12188558196693580290

`A310371(n)+A004525(A310442(n)-A310371(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A310438

/-- `A310371(n)+A004525(A310442(n)-A310371(n))` -/
def P12188558196693580290.Spec : Prop :=
  ∀ n, P12188558196693580290.a n = A310438 n

theorem P12188558196693580290.correct : P12188558196693580290.Spec := by
  intro n
  simp only [A310438]

end A310438

/-! ## A310438.P8160839394949598109

`A310496(n)-A004525(A310496(n)-A310374(n))`
-/

namespace A310438.P8160839394949598109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310496 n - A004525 (A310496 n - A310374 n).toNat

end

end A310438.P8160839394949598109

namespace A310438

/-- `A310496(n)-A004525(A310496(n)-A310374(n))` -/
def P8160839394949598109.Spec : Prop :=
  ∀ n, P8160839394949598109.a n = A310438 n

end A310438

/-! ## A310438.P12928123442024550962

`abs(A008592(n)-A315277(n))`
-/

namespace A310438.P12928123442024550962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315277 n|

end

end A310438.P12928123442024550962

namespace A310438

/-- `abs(A008592(n)-A315277(n))` -/
def P12928123442024550962.Spec : Prop :=
  ∀ n, P12928123442024550962.a n = A310438 n

end A310438

/-! ## A310438.P579737048767121294

`2*A008706(n)-A315277(n)`
-/

namespace A310438.P579737048767121294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315277 n

end

end A310438.P579737048767121294

namespace A310438

/-- `2*A008706(n)-A315277(n)` -/
def P579737048767121294.Spec : Prop :=
  ∀ n, P579737048767121294.a n = A310438 n

end A310438

/-! ## A310438.P1721482816845960841

`A008458(n)+A008574(n)-A315277(n)`
-/

namespace A310438.P1721482816845960841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315277 n)

end

end A310438.P1721482816845960841

namespace A310438

/-- `A008458(n)+A008574(n)-A315277(n)` -/
def P1721482816845960841.Spec : Prop :=
  ∀ n, P1721482816845960841.a n = A310438 n

end A310438

/-! ## A310438.P6526304986716392986

`A315277(n)-A005843(A315277(n)-A008706(n))`
-/

namespace A310438.P6526304986716392986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315277 n - A005843 (A315277 n - A008706 n).toNat

end

end A310438.P6526304986716392986

namespace A310438

/-- `A315277(n)-A005843(A315277(n)-A008706(n))` -/
def P6526304986716392986.Spec : Prop :=
  ∀ n, P6526304986716392986.a n = A310438 n

end A310438

/-! ## A310438.P10502111004549081419

`A005843(A008706(n))-A315277(n)`
-/

namespace A310438.P10502111004549081419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315277 n

end

end A310438.P10502111004549081419

namespace A310438

/-- `A005843(A008706(n))-A315277(n)` -/
def P10502111004549081419.Spec : Prop :=
  ∀ n, P10502111004549081419.a n = A310438 n

end A310438

/-! ## A310438.P7942755103745599295

`A065502(A008458(n))-A315277(n)`
-/

namespace A310438.P7942755103745599295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315277 n

end

end A310438.P7942755103745599295

namespace A310438

/-- `A065502(A008458(n))-A315277(n)` -/
def P7942755103745599295.Spec : Prop :=
  ∀ n, P7942755103745599295.a n = A310438 n

end A310438

/-! ## A310438.P18132218366049430577

`A004525(A310442(n)+A310371(n))`
-/

namespace A310438.P18132218366049430577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310442 n + A310371 n).toNat

end

end A310438.P18132218366049430577

namespace A310438

/-- `A004525(A310442(n)+A310371(n))` -/
def P18132218366049430577.Spec : Prop :=
  ∀ n, P18132218366049430577.a n = A310438 n

end A310438

/-! ## A310438.P6147789086950537920

`A004525(A310442(n)+A310374(n))`
-/

namespace A310438.P6147789086950537920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310442 n + A310374 n).toNat

end

end A310438.P6147789086950537920

namespace A310438

/-- `A004525(A310442(n)+A310374(n))` -/
def P6147789086950537920.Spec : Prop :=
  ∀ n, P6147789086950537920.a n = A310438 n

end A310438

/-! ## A310438.P14432291055655599511

`A004525(A310455(n)+A310374(n))`
-/

namespace A310438.P14432291055655599511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310455 n + A310374 n).toNat

end

end A310438.P14432291055655599511

namespace A310438

/-- `A004525(A310455(n)+A310374(n))` -/
def P14432291055655599511.Spec : Prop :=
  ∀ n, P14432291055655599511.a n = A310438 n

end A310438

/-! ## A310438.P15610535345379919797

`A004525(A310496(n)+A310374(n))`
-/

namespace A310438.P15610535345379919797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310496 n + A310374 n).toNat

end

end A310438.P15610535345379919797

namespace A310438

/-- `A004525(A310496(n)+A310374(n))` -/
def P15610535345379919797.Spec : Prop :=
  ∀ n, P15610535345379919797.a n = A310438 n

end A310438

/-!
# A310439: Coordination sequence Gal.6.321.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310439, the canonical program `A310439.P17127283864855311022` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310439 has offset 0).

The definition of A310439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310439.P17127283864855311022

`A151988(A008486(n))+A047263(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310439

/-- `A151988(A008486(n))+A047263(n+1)` -/
def P17127283864855311022.Spec : Prop :=
  ∀ n, P17127283864855311022.a n = A310439 n

theorem P17127283864855311022.correct : P17127283864855311022.Spec := by
  intro n
  simp only [A310439]

end A310439

/-! ## A310439.P16320458299849673443

`A312903(n)+n-A004525(A151988(n))`
-/

namespace A310439.P16320458299849673443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312903 n + ((n : ℤ) - A004525 (A151988 n).toNat)

end

end A310439.P16320458299849673443

namespace A310439

/-- `A312903(n)+n-A004525(A151988(n))` -/
def P16320458299849673443.Spec : Prop :=
  ∀ n, P16320458299849673443.a n = A310439 n

end A310439

/-! ## A310439.P9444968630164239051

`A315402(n)-A253262(A253262(n)+n)`
-/

namespace A310439.P9444968630164239051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315402 n - A253262 (A253262 n + (n : ℤ)).toNat

end

end A310439.P9444968630164239051

namespace A310439

/-- `A315402(n)-A253262(A253262(n)+n)` -/
def P9444968630164239051.Spec : Prop :=
  ∀ n, P9444968630164239051.a n = A310439 n

end A310439

/-! ## A310439.P15405847002481478680

`A312948(A008486(n))-A008486(A008486(n))`
-/

namespace A310439.P15405847002481478680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 (A008486 n).toNat - A008486 (A008486 n).toNat

end

end A310439.P15405847002481478680

namespace A310439

/-- `A312948(A008486(n))-A008486(A008486(n))` -/
def P15405847002481478680.Spec : Prop :=
  ∀ n, P15405847002481478680.a n = A310439 n

end A310439

/-! ## A310439.P4714055652334156476

`A151988(n)+A151988(A311807(n)-A151988(n))`
-/

namespace A310439.P4714055652334156476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + A151988 (A311807 n - A151988 n).toNat

end

end A310439.P4714055652334156476

namespace A310439

/-- `A151988(n)+A151988(A311807(n)-A151988(n))` -/
def P4714055652334156476.Spec : Prop :=
  ∀ n, P4714055652334156476.a n = A310439 n

end A310439

/-! ## A310439.P17878271766559729095

`A330025(n-A330025(n))+A313078(n)`
-/

namespace A310439.P17878271766559729095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A313078 n

end

end A310439.P17878271766559729095

namespace A310439

/-- `A330025(n-A330025(n))+A313078(n)` -/
def P17878271766559729095.Spec : Prop :=
  ∀ n, P17878271766559729095.a n = A310439 n

end A310439

/-! ## A310439.P17294823214932323973

`A314087(n)-A330025(n)`
-/

namespace A310439.P17294823214932323973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314087 n - A330025 n

end

end A310439.P17294823214932323973

namespace A310439

/-- `A314087(n)-A330025(n)` -/
def P17294823214932323973.Spec : Prop :=
  ∀ n, P17294823214932323973.a n = A310439 n

end A310439

/-! ## A310439.P837865723554613509

`A314943(n)-A330033(n)`
-/

namespace A310439.P837865723554613509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 n - A330033 n

end

end A310439.P837865723554613509

namespace A310439

/-- `A314943(n)-A330033(n)` -/
def P837865723554613509.Spec : Prop :=
  ∀ n, P837865723554613509.a n = A310439 n

end A310439

/-! ## A310439.P279094487018368851

`A310446(n)+n-A151988(n)`
-/

namespace A310439.P279094487018368851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310446 n + ((n : ℤ) - A151988 n)

end

end A310439.P279094487018368851

namespace A310439

/-- `A310446(n)+n-A151988(n)` -/
def P279094487018368851.Spec : Prop :=
  ∀ n, P279094487018368851.a n = A310439 n

end A310439

/-! ## A310439.P9078034783883287680

`abs(A008592(n)-A315275(n))`
-/

namespace A310439.P9078034783883287680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315275 n|

end

end A310439.P9078034783883287680

namespace A310439

/-- `abs(A008592(n)-A315275(n))` -/
def P9078034783883287680.Spec : Prop :=
  ∀ n, P9078034783883287680.a n = A310439 n

end A310439

/-! ## A310439.P5036818778312222453

`2*A008706(n)-A315275(n)`
-/

namespace A310439.P5036818778312222453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315275 n

end

end A310439.P5036818778312222453

namespace A310439

/-- `2*A008706(n)-A315275(n)` -/
def P5036818778312222453.Spec : Prop :=
  ∀ n, P5036818778312222453.a n = A310439 n

end A310439

/-! ## A310439.P5806642369534224366

`A008458(n)+A008574(n)-A315275(n)`
-/

namespace A310439.P5806642369534224366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315275 n)

end

end A310439.P5806642369534224366

namespace A310439

/-- `A008458(n)+A008574(n)-A315275(n)` -/
def P5806642369534224366.Spec : Prop :=
  ∀ n, P5806642369534224366.a n = A310439 n

end A310439

/-! ## A310439.P2019752671024166796

`A315275(n)-A005843(A315275(n)-A008706(n))`
-/

namespace A310439.P2019752671024166796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315275 n - A005843 (A315275 n - A008706 n).toNat

end

end A310439.P2019752671024166796

namespace A310439

/-- `A315275(n)-A005843(A315275(n)-A008706(n))` -/
def P2019752671024166796.Spec : Prop :=
  ∀ n, P2019752671024166796.a n = A310439 n

end A310439

/-! ## A310439.P2895091459199053294

`A064429(A314020(n)+A000007(n))`
-/

namespace A310439.P2895091459199053294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A314020 n + A000007 n).toNat

end

end A310439.P2895091459199053294

namespace A310439

/-- `A064429(A314020(n)+A000007(n))` -/
def P2895091459199053294.Spec : Prop :=
  ∀ n, P2895091459199053294.a n = A310439 n

end A310439

/-! ## A310439.P17226133332036248379

`A005843(A008706(n))-A315275(n)`
-/

namespace A310439.P17226133332036248379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315275 n

end

end A310439.P17226133332036248379

namespace A310439

/-- `A005843(A008706(n))-A315275(n)` -/
def P17226133332036248379.Spec : Prop :=
  ∀ n, P17226133332036248379.a n = A310439 n

end A310439

/-!
# A310440: Coordination sequence Gal.6.202.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310440, the canonical program `A310440.P9584089357742320567` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310440 has offset 0).

The definition of A310440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A310440.P9584089357742320567

`a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=15, a(4)=19, a(5)=24, a(6)=29`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A310440

/-- `a(n-1)-a(n-2)+2*a(n-3)-a(n-4)+a(n-5)-a(n-6)` -/
def P9584089357742320567.Spec : Prop :=
  ∀ n, P9584089357742320567.a n = A310440 n

theorem P9584089357742320567.correct : P9584089357742320567.Spec := by
  intro n
  simp only [A310440]

end A310440

/-! ## A310440.P11569005875888985108

`A219529(n)-Δ[ceil(C(n, 2)/2)]`
-/

namespace A310440.P11569005875888985108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (f1 (n + 1) - f1 n)

end

end A310440.P11569005875888985108

namespace A310440

/-- `A219529(n)-Δ[ceil(C(n, 2)/2)]` -/
def P11569005875888985108.Spec : Prop :=
  ∀ n, P11569005875888985108.a n = A310440 n

end A310440

/-! ## A310440.P622315641639668651

`A219529(n)-A004525(n)`
-/

namespace A310440.P622315641639668651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004525 n

end

end A310440.P622315641639668651

namespace A310440

/-- `A219529(n)-A004525(n)` -/
def P622315641639668651.Spec : Prop :=
  ∀ n, P622315641639668651.a n = A310440 n

end A310440

/-! ## A310440.P676957442714172032

`A313575(n)-A101455(n)`
-/

namespace A310440.P676957442714172032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313575 n - A101455 n

end

end A310440.P676957442714172032

namespace A310440

/-- `A313575(n)-A101455(n)` -/
def P676957442714172032.Spec : Prop :=
  ∀ n, P676957442714172032.a n = A310440 n

end A310440

/-! ## A310440.P3079922202338535982

`A301293(n)+∑[A022003(n)]`
-/

namespace A310440.P3079922202338535982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310440.P3079922202338535982

namespace A310440

/-- `A301293(n)+∑[A022003(n)]` -/
def P3079922202338535982.Spec : Prop :=
  ∀ n, P3079922202338535982.a n = A310440 n

end A310440

/-! ## A310440.P12301394704665697181

`A219529(n)-Δ[A054925(n)]`
-/

namespace A310440.P12301394704665697181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (f1 (n + 1) - f1 n)

end

end A310440.P12301394704665697181

namespace A310440

/-- `A219529(n)-Δ[A054925(n)]` -/
def P12301394704665697181.Spec : Prop :=
  ∀ n, P12301394704665697181.a n = A310440 n

end A310440

/-! ## A310440.P6635171294951949315

`A301293(n)+A002264(n+1)`
-/

namespace A310440.P6635171294951949315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A002264 (n + 1)

end

end A310440.P6635171294951949315

namespace A310440

/-- `A301293(n)+A002264(n+1)` -/
def P6635171294951949315.Spec : Prop :=
  ∀ n, P6635171294951949315.a n = A310440 n

end A310440

/-! ## A310440.P3151623615036503841

`A298786(n)+A047273(n+1)`
-/

namespace A310440.P3151623615036503841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A047273 (n + 1)

end

end A310440.P3151623615036503841

namespace A310440

/-- `A298786(n)+A047273(n+1)` -/
def P3151623615036503841.Spec : Prop :=
  ∀ n, P3151623615036503841.a n = A310440 n

end A310440

/-! ## A310440.P15941978040379077958

`A008576(2*n)-A004525(n)`
-/

namespace A310440.P15941978040379077958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - A004525 n

end

end A310440.P15941978040379077958

namespace A310440

/-- `A008576(2*n)-A004525(n)` -/
def P15941978040379077958.Spec : Prop :=
  ∀ n, P15941978040379077958.a n = A310440 n

end A310440

/-! ## A310440.P2218509370863964422

`A298786(n)+A004525(3*n)`
-/

namespace A310440.P2218509370863964422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A004525 (3 * n)

end

end A310440.P2218509370863964422

namespace A310440

/-- `A298786(n)+A004525(3*n)` -/
def P2218509370863964422.Spec : Prop :=
  ∀ n, P2218509370863964422.a n = A310440 n

end A310440

/-! ## A310440.P17803553055594867490

`2*A301293(n)-A301672(n)`
-/

namespace A310440.P17803553055594867490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301293 n - A301672 n

end

end A310440.P17803553055594867490

namespace A310440

/-- `2*A301293(n)-A301672(n)` -/
def P17803553055594867490.Spec : Prop :=
  ∀ n, P17803553055594867490.a n = A310440 n

end A310440

/-! ## A310440.P100038383962000577

`A301293(n)+n-A004396(n)`
-/

namespace A310440.P100038383962000577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + ((n : ℤ) - A004396 n)

end

end A310440.P100038383962000577

namespace A310440

/-- `A301293(n)+n-A004396(n)` -/
def P100038383962000577.Spec : Prop :=
  ∀ n, P100038383962000577.a n = A310440 n

end A310440

/-! ## A310440.P6091022553560367571

`A008576(2*n)-Δ[A054925(n)]`
-/

namespace A310440.P6091022553560367571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - (f1 (n + 1) - f1 n)

end

end A310440.P6091022553560367571

namespace A310440

/-- `A008576(2*n)-Δ[A054925(n)]` -/
def P6091022553560367571.Spec : Prop :=
  ∀ n, P6091022553560367571.a n = A310440 n

end A310440

/-! ## A310440.P7181630514298542468

`∑[A021913(n)]+A219529(n)-n`
-/

namespace A310440.P7181630514298542468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A219529 n - (n : ℤ))

end

end A310440.P7181630514298542468

namespace A310440

/-- `∑[A021913(n)]+A219529(n)-n` -/
def P7181630514298542468.Spec : Prop :=
  ∀ n, P7181630514298542468.a n = A310440 n

end A310440

/-! ## A310440.P9732286854559763427

`Δ[A011848(n)]+A219529(n)-n`
-/

namespace A310440.P9732286854559763427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A219529 n - (n : ℤ))

end

end A310440.P9732286854559763427

namespace A310440

/-- `Δ[A011848(n)]+A219529(n)-n` -/
def P9732286854559763427.Spec : Prop :=
  ∀ n, P9732286854559763427.a n = A310440 n

end A310440

/-! ## A310440.P11041460209351699849

`A219529(n)-A047229(n+1)+n`
-/

namespace A310440.P11041460209351699849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A047229 (n + 1) + (n : ℤ)

end

end A310440.P11041460209351699849

namespace A310440

/-- `A219529(n)-A047229(n+1)+n` -/
def P11041460209351699849.Spec : Prop :=
  ∀ n, P11041460209351699849.a n = A310440 n

end A310440

/-! ## A310440.P3235035784804671540

`A008576(2*n)+1-A004524(n+3)`
-/

namespace A310440.P3235035784804671540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) + (1 - A004524 (n + 3))

end

end A310440.P3235035784804671540

namespace A310440

/-- `A008576(2*n)+1-A004524(n+3)` -/
def P3235035784804671540.Spec : Prop :=
  ∀ n, P3235035784804671540.a n = A310440 n

end A310440

/-! ## A310440.P4284983689959884417

`A008458(n)-(A004525(n)+A004396(n))`
-/

namespace A310440.P4284983689959884417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A004525 n + A004396 n)

end

end A310440.P4284983689959884417

namespace A310440

/-- `A008458(n)-(A004525(n)+A004396(n))` -/
def P4284983689959884417.Spec : Prop :=
  ∀ n, P4284983689959884417.a n = A310440 n

end A310440

/-! ## A310440.P16971079900782179077

`A008574(n)+A219529(n)-A301291(n)`
-/

namespace A310440.P16971079900782179077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A219529 n - A301291 n)

end

end A310440.P16971079900782179077

namespace A310440

/-- `A008574(n)+A219529(n)-A301291(n)` -/
def P16971079900782179077.Spec : Prop :=
  ∀ n, P16971079900782179077.a n = A310440 n

end A310440

/-!
# A310441: Coordination sequence Gal.4.77.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310441, the canonical program `A310441.P12169130983515311112` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310441 has offset 0).

The definition of A310441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310441.P15216651362942733397

`A008706(n)-A242062(n)`
-/

namespace A310441.P15216651362942733397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A242062 n

end

end A310441.P15216651362942733397

namespace A310441

/-- `A008706(n)-A242062(n)` -/
def P15216651362942733397.Spec : Prop :=
  ∀ n, P15216651362942733397.a n = A310441 n

end A310441

/-! ## A310441.P12169130983515311112

`A310372(n)+Δ[A011860(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310441

/-- `A310372(n)+Δ[A011860(n)]` -/
def P12169130983515311112.Spec : Prop :=
  ∀ n, P12169130983515311112.a n = A310441 n

theorem P12169130983515311112.correct : P12169130983515311112.Spec := by
  intro n
  simp only [A310441]

end A310441

/-! ## A310441.P9271707902027057262

`A310503(n)-Δ[A011860(n)]`
-/

namespace A310441.P9271707902027057262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - (f1 (n + 1) - f1 n)

end

end A310441.P9271707902027057262

namespace A310441

/-- `A310503(n)-Δ[A011860(n)]` -/
def P9271707902027057262.Spec : Prop :=
  ∀ n, P9271707902027057262.a n = A310441 n

end A310441

/-! ## A310441.P3432062507770589601

`A008458(n)-(A242062(n)+n)`
-/

namespace A310441.P3432062507770589601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A242062 n + (n : ℤ))

end

end A310441.P3432062507770589601

namespace A310441

/-- `A008458(n)-(A242062(n)+n)` -/
def P3432062507770589601.Spec : Prop :=
  ∀ n, P3432062507770589601.a n = A310441 n

end A310441

/-! ## A310441.P17210954319875288296

`A008574(n)+n-A242062(n)`
-/

namespace A310441.P17210954319875288296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A242062 n)

end

end A310441.P17210954319875288296

namespace A310441

/-- `A008574(n)+n-A242062(n)` -/
def P17210954319875288296.Spec : Prop :=
  ∀ n, P17210954319875288296.a n = A310441 n

end A310441

/-! ## A310441.P10499487926629837449

`A001068(A008574(n))-A242062(n)`
-/

namespace A310441.P10499487926629837449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A008574 n).toNat - A242062 n

end

end A310441.P10499487926629837449

namespace A310441

/-- `A001068(A008574(n))-A242062(n)` -/
def P10499487926629837449.Spec : Prop :=
  ∀ n, P10499487926629837449.a n = A310441 n

end A310441

/-! ## A310441.P16742542883940895134

`A310411(n)-A238469(2*n)`
-/

namespace A310441.P16742542883940895134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310411 n - A238469 (2 * n)

end

end A310441.P16742542883940895134

namespace A310441

/-- `A310411(n)-A238469(2*n)` -/
def P16742542883940895134.Spec : Prop :=
  ∀ n, P16742542883940895134.a n = A310441 n

end A310441

/-! ## A310441.P17832698110825574746

`A313694(n)-A238469(n)`
-/

namespace A310441.P17832698110825574746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n - A238469 n

end

end A310441.P17832698110825574746

namespace A310441

/-- `A313694(n)-A238469(n)` -/
def P17832698110825574746.Spec : Prop :=
  ∀ n, P17832698110825574746.a n = A310441 n

end A310441

/-! ## A310441.P1156096182480876086

`A313694(n)-A238470(2*n)`
-/

namespace A310441.P1156096182480876086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n - A238470 (2 * n)

end

end A310441.P1156096182480876086

namespace A310441

/-- `A313694(n)-A238470(2*n)` -/
def P1156096182480876086.Spec : Prop :=
  ∀ n, P1156096182480876086.a n = A310441 n

end A310441

/-! ## A310441.P14104424946066491344

`abs(A008592(n)-A315273(n))`
-/

namespace A310441.P14104424946066491344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315273 n|

end

end A310441.P14104424946066491344

namespace A310441

/-- `abs(A008592(n)-A315273(n))` -/
def P14104424946066491344.Spec : Prop :=
  ∀ n, P14104424946066491344.a n = A310441 n

end A310441

/-! ## A310441.P51407737690023552

`2*A008706(n)-A315273(n)`
-/

namespace A310441.P51407737690023552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315273 n

end

end A310441.P51407737690023552

namespace A310441

/-- `2*A008706(n)-A315273(n)` -/
def P51407737690023552.Spec : Prop :=
  ∀ n, P51407737690023552.a n = A310441 n

end A310441

/-! ## A310441.P16274849093895436250

`A008458(n)+A008574(n)-A315273(n)`
-/

namespace A310441.P16274849093895436250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315273 n)

end

end A310441.P16274849093895436250

namespace A310441

/-- `A008458(n)+A008574(n)-A315273(n)` -/
def P16274849093895436250.Spec : Prop :=
  ∀ n, P16274849093895436250.a n = A310441 n

end A310441

/-! ## A310441.P8412117453148167325

`A008574(n)+A242062(6*n)`
-/

namespace A310441.P8412117453148167325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A242062 (6 * n)

end

end A310441.P8412117453148167325

namespace A310441

/-- `A008574(n)+A242062(6*n)` -/
def P8412117453148167325.Spec : Prop :=
  ∀ n, P8412117453148167325.a n = A310441 n

end A310441

/-! ## A310441.P12730701983299629051

`A242062(A008458(n))+A008590(n)/2`
-/

namespace A310441.P12730701983299629051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242062 (A008458 n).toNat : ℚ) + (A008590 n : ℚ) / 2

end

end A310441.P12730701983299629051

namespace A310441

/-- `A242062(A008458(n))+A008590(n)/2` -/
def P12730701983299629051.Spec : Prop :=
  ∀ n, P12730701983299629051.a n = (A310441 n : ℚ)

end A310441

/-! ## A310441.P7832336267991947333

`A008458(n)-A242062(8*n)`
-/

namespace A310441.P7832336267991947333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A242062 (8 * n)

end

end A310441.P7832336267991947333

namespace A310441

/-- `A008458(n)-A242062(8*n)` -/
def P7832336267991947333.Spec : Prop :=
  ∀ n, P7832336267991947333.a n = A310441 n

end A310441

/-! ## A310441.P16311987552017600047

`ceil(A312680(2*n)/2)`
-/

namespace A310441.P16311987552017600047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A312680 (2 * n) : ℚ) / 2⌉

end

end A310441.P16311987552017600047

namespace A310441

/-- `ceil(A312680(2*n)/2)` -/
def P16311987552017600047.Spec : Prop :=
  ∀ n, P16311987552017600047.a n = A310441 n

end A310441

/-! ## A310441.P16468334434370605469

`A312680(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A310441.P16468334434370605469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312680 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A310441.P16468334434370605469

namespace A310441

/-- `A312680(2*n)/(4*n+2-A004277(2*n))` -/
def P16468334434370605469.Spec : Prop :=
  ∀ n, P16468334434370605469.a n = (A310441 n : ℚ)

end A310441

/-! ## A310441.P12268491227684238697

`A313923(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A310441.P12268491227684238697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A310441.P12268491227684238697

namespace A310441

/-- `A313923(2*n)+A008458(n+1)-(12*n+6)` -/
def P12268491227684238697.Spec : Prop :=
  ∀ n, P12268491227684238697.a n = A310441 n

end A310441

/-! ## A310441.P6516497316646983240

`A004525(A312680(2*n))`
-/

namespace A310441.P6516497316646983240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312680 (2 * n)).toNat

end

end A310441.P6516497316646983240

namespace A310441

/-- `A004525(A312680(2*n))` -/
def P6516497316646983240.Spec : Prop :=
  ∀ n, P6516497316646983240.a n = A310441 n

end A310441

/-! ## A310441.P2802676957902229706

`A065033(10*n)-A242062(n)`
-/

namespace A310441.P2802676957902229706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (10 * n) - A242062 n

end

end A310441.P2802676957902229706

namespace A310441

/-- `A065033(10*n)-A242062(n)` -/
def P2802676957902229706.Spec : Prop :=
  ∀ n, P2802676957902229706.a n = A310441 n

end A310441

/-!
# A310442: Coordination sequence Gal.6.327.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310442, the canonical program `A310442.P2743339232187867073` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310442 has offset 0).

The definition of A310442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310442.P14766895664743461405

`abs(A008592(n)-A315272(n))`
-/

namespace A310442.P14766895664743461405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315272 n|

end

end A310442.P14766895664743461405

namespace A310442

/-- `abs(A008592(n)-A315272(n))` -/
def P14766895664743461405.Spec : Prop :=
  ∀ n, P14766895664743461405.a n = A310442 n

end A310442

/-! ## A310442.P15627616594016605171

`2*A008706(n)-A315272(n)`
-/

namespace A310442.P15627616594016605171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315272 n

end

end A310442.P15627616594016605171

namespace A310442

/-- `2*A008706(n)-A315272(n)` -/
def P15627616594016605171.Spec : Prop :=
  ∀ n, P15627616594016605171.a n = A310442 n

end A310442

/-! ## A310442.P3932865878758041187

`A184418(A008574(n))-A315272(n)`
-/

namespace A310442.P3932865878758041187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A315272 n

end

end A310442.P3932865878758041187

namespace A310442

/-- `A184418(A008574(n))-A315272(n)` -/
def P3932865878758041187.Spec : Prop :=
  ∀ n, P3932865878758041187.a n = A310442 n

end A310442

/-! ## A310442.P3206371302638260871

`A008458(n)+A008574(n)-A315272(n)`
-/

namespace A310442.P3206371302638260871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315272 n)

end

end A310442.P3206371302638260871

namespace A310442

/-- `A008458(n)+A008574(n)-A315272(n)` -/
def P3206371302638260871.Spec : Prop :=
  ∀ n, P3206371302638260871.a n = A310442 n

end A310442

/-! ## A310442.P16762306376576166662

`gcd(A008592(n)-A315272(n), A001223(n+1)%2)`
-/

namespace A310442.P16762306376576166662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A315272 n) (Int.tmod (A001223 (n + 1)) 2)

end

end A310442.P16762306376576166662

namespace A310442

/-- `gcd(A008592(n)-A315272(n), A001223(n+1)%2)` -/
def P16762306376576166662.Spec : Prop :=
  ∀ n, (P16762306376576166662.a n : ℤ) = A310442 n

end A310442

/-! ## A310442.P2551142175699839665

`A315272(n)-A005843(A315272(n)-A008706(n))`
-/

namespace A310442.P2551142175699839665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315272 n - A005843 (A315272 n - A008706 n).toNat

end

end A310442.P2551142175699839665

namespace A310442

/-- `A315272(n)-A005843(A315272(n)-A008706(n))` -/
def P2551142175699839665.Spec : Prop :=
  ∀ n, P2551142175699839665.a n = A310442 n

end A310442

/-! ## A310442.P2743339232187867073

`A310371(n)+A004525(A310513(n)-A310371(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A310442

/-- `A310371(n)+A004525(A310513(n)-A310371(n))` -/
def P2743339232187867073.Spec : Prop :=
  ∀ n, P2743339232187867073.a n = A310442 n

theorem P2743339232187867073.correct : P2743339232187867073.Spec := by
  intro n
  simp only [A310442]

end A310442

/-! ## A310442.P2540622610653741968

`(A310496(n)+A310380(n))/2`
-/

namespace A310442.P2540622610653741968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310496 n + A310380 n : ℚ) / 2

end

end A310442.P2540622610653741968

namespace A310442

/-- `(A310496(n)+A310380(n))/2` -/
def P2540622610653741968.Spec : Prop :=
  ∀ n, P2540622610653741968.a n = (A310442 n : ℚ)

end A310442

/-! ## A310442.P6974617901890893880

`A005843(A008706(n))-A315272(n)`
-/

namespace A310442.P6974617901890893880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315272 n

end

end A310442.P6974617901890893880

namespace A310442

/-- `A005843(A008706(n))-A315272(n)` -/
def P6974617901890893880.Spec : Prop :=
  ∀ n, P6974617901890893880.a n = A310442 n

end A310442

/-! ## A310442.P316671236442523014

`A065502(A008458(n))-A315272(n)`
-/

namespace A310442.P316671236442523014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315272 n

end

end A310442.P316671236442523014

namespace A310442

/-- `A065502(A008458(n))-A315272(n)` -/
def P316671236442523014.Spec : Prop :=
  ∀ n, P316671236442523014.a n = A310442 n

end A310442

/-! ## A310442.P8767738451069399994

`A004525(A310496(n)+A310380(n))`
-/

namespace A310442.P8767738451069399994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310496 n + A310380 n).toNat

end

end A310442.P8767738451069399994

namespace A310442

/-- `A004525(A310496(n)+A310380(n))` -/
def P8767738451069399994.Spec : Prop :=
  ∀ n, P8767738451069399994.a n = A310442 n

end A310442

/-! ## A310442.P6002944240237224362

`A004525(A310513(n)+A310371(n))`
-/

namespace A310442.P6002944240237224362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310513 n + A310371 n).toNat

end

end A310442.P6002944240237224362

namespace A310442

/-- `A004525(A310513(n)+A310371(n))` -/
def P6002944240237224362.Spec : Prop :=
  ∀ n, P6002944240237224362.a n = A310442 n

end A310442

/-! ## A310442.P14924790259729956944

`A310423(A008486(n))/2-A008486(n)`
-/

namespace A310442.P14924790259729956944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (A008486 n).toNat : ℚ) / 2 - (A008486 n : ℚ)

end

end A310442.P14924790259729956944

namespace A310442

/-- `A310423(A008486(n))/2-A008486(n)` -/
def P14924790259729956944.Spec : Prop :=
  ∀ n, P14924790259729956944.a n = (A310442 n : ℚ)

end A310442

/-! ## A310442.P5656603683534331579

`A233583(A017281(n))-A315272(n)`
-/

namespace A310442.P5656603683534331579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315272 n

end

end A310442.P5656603683534331579

namespace A310442

/-- `A233583(A017281(n))-A315272(n)` -/
def P5656603683534331579.Spec : Prop :=
  ∀ n, P5656603683534331579.a n = A310442 n

end A310442

/-!
# A310443: Coordination sequence Gal.6.471.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310443, there is no canonical definition to state claims against.
-/

/-! ## A310443.P9096883672824649644

`A314135(n)-A069010(A321227(n))`
-/

namespace A310443.P9096883672824649644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314135 n - A069010 (A321227 n).toNat

end

end A310443.P9096883672824649644

/-! ## A310443.P1324681296580503250

`A314118(n)-A320001(A329056(n+1))`
-/

namespace A310443.P1324681296580503250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314118 n - A320001 (A329056 (n + 1)).toNat

end

end A310443.P1324681296580503250

/-! ## A310443.P13504689123939995277

`A008683(A006897(n))+5*n`
-/

namespace A310443.P13504689123939995277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006897 n).toNat + (5 * n : ℤ)

end

end A310443.P13504689123939995277

/-! ## A310443.P864260287041572803

`A008683(∑[A000088(n)])+5*n`
-/

namespace A310443.P864260287041572803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (5 * n : ℤ)

end

end A310443.P864260287041572803

/-! ## A310443.P10303420835355126391

`A313034(n)+A001221(A000088(n))`
-/

namespace A310443.P10303420835355126391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313034 n + A001221 (A000088 n).toNat

end

end A310443.P10303420835355126391

/-!
# A310444: Coordination sequence Gal.6.340.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310444, the canonical program `A310444.P14454380161380560796` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310444 has offset 0).

The definition of A310444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310444.P17451459329552887790

`A315053(n)-A102283(n)`
-/

namespace A310444.P17451459329552887790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315053 n - A102283 n

end

end A310444.P17451459329552887790

namespace A310444

/-- `A315053(n)-A102283(n)` -/
def P17451459329552887790.Spec : Prop :=
  ∀ n, P17451459329552887790.a n = A310444 n

end A310444

/-! ## A310444.P10248107070112566162

`A313698(n)-A134667(n)`
-/

namespace A310444.P10248107070112566162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A134667 n

end

end A310444.P10248107070112566162

namespace A310444

/-- `A313698(n)-A134667(n)` -/
def P10248107070112566162.Spec : Prop :=
  ∀ n, P10248107070112566162.a n = A310444 n

end A310444

/-! ## A310444.P3890771916711622570

`abs(A008592(n)-A315271(n))`
-/

namespace A310444.P3890771916711622570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315271 n|

end

end A310444.P3890771916711622570

namespace A310444

/-- `abs(A008592(n)-A315271(n))` -/
def P3890771916711622570.Spec : Prop :=
  ∀ n, P3890771916711622570.a n = A310444 n

end A310444

/-! ## A310444.P13577647190741334372

`A312909(n)+∑[A021913(n)]`
-/

namespace A310444.P13577647190741334372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310444.P13577647190741334372

namespace A310444

/-- `A312909(n)+∑[A021913(n)]` -/
def P13577647190741334372.Spec : Prop :=
  ∀ n, P13577647190741334372.a n = A310444 n

end A310444

/-! ## A310444.P14454380161380560796

`A310400(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310444

/-- `A310400(n)+Δ[A011865(n)]` -/
def P14454380161380560796.Spec : Prop :=
  ∀ n, P14454380161380560796.a n = A310444 n

theorem P14454380161380560796.correct : P14454380161380560796.Spec := by
  intro n
  simp only [A310444]

end A310444

/-! ## A310444.P15170349579610351904

`A312909(n)+Δ[A011848(n)]`
-/

namespace A310444.P15170349579610351904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + (f1 (n + 1) - f1 n)

end

end A310444.P15170349579610351904

namespace A310444

/-- `A312909(n)+Δ[A011848(n)]` -/
def P15170349579610351904.Spec : Prop :=
  ∀ n, P15170349579610351904.a n = A310444 n

end A310444

/-! ## A310444.P4818441978115262392

`A313057(n)+A002264(n+1)`
-/

namespace A310444.P4818441978115262392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A002264 (n + 1)

end

end A310444.P4818441978115262392

namespace A310444

/-- `A313057(n)+A002264(n+1)` -/
def P4818441978115262392.Spec : Prop :=
  ∀ n, P4818441978115262392.a n = A310444 n

end A310444

/-! ## A310444.P12089702788761215288

`A312909(n)+A004524(n+1)`
-/

namespace A310444.P12089702788761215288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + A004524 (n + 1)

end

end A310444.P12089702788761215288

namespace A310444

/-- `A312909(n)+A004524(n+1)` -/
def P12089702788761215288.Spec : Prop :=
  ∀ n, P12089702788761215288.a n = A310444 n

end A310444

/-! ## A310444.P18300554120333996821

`A313057(n)+n-A004396(n)`
-/

namespace A310444.P18300554120333996821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + ((n : ℤ) - A004396 n)

end

end A310444.P18300554120333996821

namespace A310444

/-- `A313057(n)+n-A004396(n)` -/
def P18300554120333996821.Spec : Prop :=
  ∀ n, P18300554120333996821.a n = A310444 n

end A310444

/-! ## A310444.P15946709867278221051

`A008486(n)+A313057(n)-A008576(n)`
-/

namespace A310444.P15946709867278221051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313057 n - A008576 n)

end

end A310444.P15946709867278221051

namespace A310444

/-- `A008486(n)+A313057(n)-A008576(n)` -/
def P15946709867278221051.Spec : Prop :=
  ∀ n, P15946709867278221051.a n = A310444 n

end A310444

/-! ## A310444.P12875425024411364228

`A008458(n)+A008574(n)-A315271(n)`
-/

namespace A310444.P12875425024411364228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315271 n)

end

end A310444.P12875425024411364228

namespace A310444

/-- `A008458(n)+A008574(n)-A315271(n)` -/
def P12875425024411364228.Spec : Prop :=
  ∀ n, P12875425024411364228.a n = A310444 n

end A310444

/-! ## A310444.P2845422170318334198

`A313251(n)+A128834(n-A128834(n))`
-/

namespace A310444.P2845422170318334198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A128834 ((n : ℤ) - A128834 n).toNat

end

end A310444.P2845422170318334198

namespace A310444

/-- `A313251(n)+A128834(n-A128834(n))` -/
def P2845422170318334198.Spec : Prop :=
  ∀ n, P2845422170318334198.a n = A310444 n

end A310444

/-! ## A310444.P11698014039386535935

`A313698(n)-A128834(A128834(n)+n)`
-/

namespace A310444.P11698014039386535935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n - A128834 (A128834 n + (n : ℤ)).toNat

end

end A310444.P11698014039386535935

namespace A310444

/-- `A313698(n)-A128834(A128834(n)+n)` -/
def P11698014039386535935.Spec : Prop :=
  ∀ n, P11698014039386535935.a n = A310444 n

end A310444

/-! ## A310444.P15025747247178173796

`A314222(n)-A004396(n)`
-/

namespace A310444.P15025747247178173796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - A004396 n

end

end A310444.P15025747247178173796

namespace A310444

/-- `A314222(n)-A004396(n)` -/
def P15025747247178173796.Spec : Prop :=
  ∀ n, P15025747247178173796.a n = A310444 n

end A310444

/-! ## A310444.P4582503357309759966

`A314222(n)-A002264(2*n+1)`
-/

namespace A310444.P4582503357309759966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - A002264 (2 * n + 1)

end

end A310444.P4582503357309759966

namespace A310444

/-- `A314222(n)-A002264(2*n+1)` -/
def P4582503357309759966.Spec : Prop :=
  ∀ n, P4582503357309759966.a n = A310444 n

end A310444

/-! ## A310444.P7826489726512795259

`A074067(A315271(n))`
-/

namespace A310444.P7826489726512795259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315271 n).toNat

end

end A310444.P7826489726512795259

namespace A310444

/-- `A074067(A315271(n))` -/
def P7826489726512795259.Spec : Prop :=
  ∀ n, P7826489726512795259.a n = A310444 n

end A310444

/-! ## A310444.P10130964081918438360

`A004396(2*n)+A004396(A313900(n))`
-/

namespace A310444.P10130964081918438360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A313900 n).toNat

end

end A310444.P10130964081918438360

namespace A310444

/-- `A004396(2*n)+A004396(A313900(n))` -/
def P10130964081918438360.Spec : Prop :=
  ∀ n, P10130964081918438360.a n = A310444 n

end A310444

/-! ## A310444.P5642135533205813217

`A004396(2*n)+A004396(A314134(n))`
-/

namespace A310444.P5642135533205813217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A314134 n).toNat

end

end A310444.P5642135533205813217

namespace A310444

/-- `A004396(2*n)+A004396(A314134(n))` -/
def P5642135533205813217.Spec : Prop :=
  ∀ n, P5642135533205813217.a n = A310444 n

end A310444

/-!
# A310445: Coordination sequence Gal.6.475.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310445, there is no canonical definition to state claims against.
-/

/-! ## A310445.P7931689824676478789

`A314251(n)-A104461(A095326(n+1))`
-/

namespace A310445.P7931689824676478789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - A104461 (A095326 (n + 1)).toNat

end

end A310445.P7931689824676478789

/-!
# A310446: Coordination sequence Gal.5.137.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310446, the canonical program `A310446.P3653762091158241676` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310446 has offset 0).

The definition of A310446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310446.P10558652404338018854

`A314961(n)-A330033(n)`
-/

namespace A310446.P10558652404338018854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314961 n - A330033 n

end

end A310446.P10558652404338018854

namespace A310446

/-- `A314961(n)-A330033(n)` -/
def P10558652404338018854.Spec : Prop :=
  ∀ n, P10558652404338018854.a n = A310446 n

end A310446

/-! ## A310446.P8123817257499129985

`abs(A008592(n)-A315270(n))`
-/

namespace A310446.P8123817257499129985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315270 n|

end

end A310446.P8123817257499129985

namespace A310446

/-- `abs(A008592(n)-A315270(n))` -/
def P8123817257499129985.Spec : Prop :=
  ∀ n, P8123817257499129985.a n = A310446 n

end A310446

/-! ## A310446.P3269933690107876529

`floor(A010015(n)/A315270(n))`
-/

namespace A310446.P3269933690107876529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315270 n : ℚ)⌋

end

end A310446.P3269933690107876529

namespace A310446

/-- `floor(A010015(n)/A315270(n))` -/
def P3269933690107876529.Spec : Prop :=
  ∀ n, P3269933690107876529.a n = A310446 n

end A310446

/-! ## A310446.P16662160187379512445

`2*A008706(n)-A315270(n)`
-/

namespace A310446.P16662160187379512445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315270 n

end

end A310446.P16662160187379512445

namespace A310446

/-- `2*A008706(n)-A315270(n)` -/
def P16662160187379512445.Spec : Prop :=
  ∀ n, P16662160187379512445.a n = A310446 n

end A310446

/-! ## A310446.P3653762091158241676

`A315668(n)-2*A330025(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A310446

/-- `A315668(n)-2*A330025(n)` -/
def P3653762091158241676.Spec : Prop :=
  ∀ n, P3653762091158241676.a n = A310446 n

theorem P3653762091158241676.correct : P3653762091158241676.Spec := by
  intro n
  simp only [A310446]

end A310446

/-! ## A310446.P6445060336211470292

`A008706(n)-A253262(n)%2`
-/

namespace A310446.P6445060336211470292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - Int.tmod (A253262 n) 2

end

end A310446.P6445060336211470292

namespace A310446

/-- `A008706(n)-A253262(n)%2` -/
def P6445060336211470292.Spec : Prop :=
  ∀ n, P6445060336211470292.a n = A310446 n

end A310446

/-! ## A310446.P4355863982884283600

`A163805(A047263(n+1))+5*n`
-/

namespace A310446.P4355863982884283600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A047263 (n + 1)).toNat + (5 * n : ℤ)

end

end A310446.P4355863982884283600

namespace A310446

/-- `A163805(A047263(n+1))+5*n` -/
def P4355863982884283600.Spec : Prop :=
  ∀ n, P4355863982884283600.a n = A310446 n

end A310446

/-! ## A310446.P2690349295531035852

`A008458(n)+A008574(n)-A315270(n)`
-/

namespace A310446.P2690349295531035852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315270 n)

end

end A310446.P2690349295531035852

namespace A310446

/-- `A008458(n)+A008574(n)-A315270(n)` -/
def P2690349295531035852.Spec : Prop :=
  ∀ n, P2690349295531035852.a n = A310446 n

end A310446

/-! ## A310446.P17973104036187388296

`∑{d}[A008592(n)-A315270(n), A000010(#)]`
-/

namespace A310446.P17973104036187388296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310446.P17973104036187388296

namespace A310446

/-- `∑{d}[A008592(n)-A315270(n), A000010(#)]` -/
def P17973104036187388296.Spec : Prop :=
  ∀ n, P17973104036187388296.a n = A310446 n

end A310446

/-! ## A310446.P9897727837268020345

`A008458(n)-(A128834(A265227(n+1))+n)`
-/

namespace A310446.P9897727837268020345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A128834 (A265227 (n + 1)).toNat + (n : ℤ))

end

end A310446.P9897727837268020345

namespace A310446

/-- `A008458(n)-(A128834(A265227(n+1))+n)` -/
def P9897727837268020345.Spec : Prop :=
  ∀ n, P9897727837268020345.a n = A310446 n

end A310446

/-! ## A310446.P12722013058599429717

`A151988(n)+A312903(n)-A004525(A151988(n))`
-/

namespace A310446.P12722013058599429717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A312903 n - A004525 (A151988 n).toNat)

end

end A310446.P12722013058599429717

namespace A310446

/-- `A151988(n)+A312903(n)-A004525(A151988(n))` -/
def P12722013058599429717.Spec : Prop :=
  ∀ n, P12722013058599429717.a n = A310446 n

end A310446

/-! ## A310446.P8214860883806954590

`A314093(n)-A330025(n)`
-/

namespace A310446.P8214860883806954590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314093 n - A330025 n

end

end A310446.P8214860883806954590

namespace A310446

/-- `A314093(n)-A330025(n)` -/
def P8214860883806954590.Spec : Prop :=
  ∀ n, P8214860883806954590.a n = A310446 n

end A310446

/-! ## A310446.P10833865580048026754

`A074067(A315270(n))`
-/

namespace A310446.P10833865580048026754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315270 n).toNat

end

end A310446.P10833865580048026754

namespace A310446

/-- `A074067(A315270(n))` -/
def P10833865580048026754.Spec : Prop :=
  ∀ n, P10833865580048026754.a n = A310446 n

end A310446

/-! ## A310446.P13261036226613423391

`A005843(A008706(n))-A315270(n)`
-/

namespace A310446.P13261036226613423391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315270 n

end

end A310446.P13261036226613423391

namespace A310446

/-- `A005843(A008706(n))-A315270(n)` -/
def P13261036226613423391.Spec : Prop :=
  ∀ n, P13261036226613423391.a n = A310446 n

end A310446

/-! ## A310446.P1144092025482742082

`A014019(A008587(n)+A004275(n))+A008587(n)`
-/

namespace A310446.P1144092025482742082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A008587 n + A004275 n).toNat + A008587 n

end

end A310446.P1144092025482742082

namespace A310446

/-- `A014019(A008587(n)+A004275(n))+A008587(n)` -/
def P1144092025482742082.Spec : Prop :=
  ∀ n, P1144092025482742082.a n = A310446 n

end A310446

/-! ## A310446.P12197210405040117956

`A014019(A017557(n)+n)+A008706(n)`
-/

namespace A310446.P12197210405040117956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A017557 n + (n : ℤ)).toNat + A008706 n

end

end A310446.P12197210405040117956

namespace A310446

/-- `A014019(A017557(n)+n)+A008706(n)` -/
def P12197210405040117956.Spec : Prop :=
  ∀ n, P12197210405040117956.a n = A310446 n

end A310446

/-!
# A310447: Coordination sequence Gal.6.491.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310447, there is no canonical definition to state claims against.
-/

/-! ## A310447.P7917497862343040705

`A219529(n)-A131576(A113860(n))`
-/

namespace A310447.P7917497862343040705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A131576 (A113860 n).toNat

end

end A310447.P7917497862343040705

/-! ## A310447.P5672066489935810431

`A219529(n)-A001221(2^n+n!-1)`
-/

namespace A310447.P5672066489935810431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A001221 ((2 ^ n : ℤ) + ((Nat.factorial n : ℤ) - 1)).toNat

end

end A310447.P5672066489935810431

/-! ## A310447.P16724542119130559787

`A312909(n)+A001222(A095817(n))`
-/

namespace A310447.P16724542119130559787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + A001222 (A095817 n).toNat

end

end A310447.P16724542119130559787

/-! ## A310447.P3667973995446120464

`A311155(n)+A001222(A215524(n))`
-/

namespace A310447.P3667973995446120464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311155 n + A001222 (A215524 n).toNat

end

end A310447.P3667973995446120464

/-! ## A310447.P10845325176086922905

`A075326(n)+A007413(A121412(3*n+2))`
-/

namespace A310447.P10845325176086922905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 n + A007413 (A121412 (3 * n + 2)).toNat

end

end A310447.P10845325176086922905

/-!
# A310448: Coordination sequence Gal.6.561.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310448, there is no canonical definition to state claims against.
-/

/-! ## A310448.P11453982875354282039

`A310387(n)+A037913(A058407(n+1))`
-/

namespace A310448.P11453982875354282039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310387 n + A037913 (A058407 (n + 1)).toNat

end

end A310448.P11453982875354282039

/-! ## A310448.P851925937296792699

`A310467(n)-A178798(A310483(2*n))`
-/

namespace A310448.P851925937296792699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310467 n - A178798 (A310483 (2 * n)).toNat

end

end A310448.P851925937296792699

/-! ## A310448.P12308208931714637051

`or(A033921(A276142(n+1)), A310428(n))`
-/

namespace A310448.P12308208931714637051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033921 (A276142 (n + 1)).toNat) (A310428 n)

end

end A310448.P12308208931714637051

/-!
# A310451: Coordination sequence Gal.6.485.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310451, there is no canonical definition to state claims against.
-/

/-! ## A310451.P16651006633822386631

`A313720(n)-A144600(A033486(n))`
-/

namespace A310451.P16651006633822386631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n - A144600 (A033486 n).toNat

end

end A310451.P16651006633822386631

/-! ## A310451.P1173404075918932629

`A310452(n)-∑{e}[A124610(n), #-1]`
-/

namespace A310451.P1173404075918932629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310452 n - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A310451.P1173404075918932629

/-! ## A310451.P8781558552230472518

`A313720(n)-A000035(n^3*∑{d}[n, #])`
-/

namespace A310451.P8781558552230472518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n - A000035 (n ^ 3 * (∑ d ∈ Nat.divisors (f1 n), d))

end

end A310451.P8781558552230472518

/-! ## A310451.P4622541285231880719

`A298024(n)+A056674(A173007(n))`
-/

namespace A310451.P4622541285231880719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A056674 (A173007 n).toNat

end

end A310451.P4622541285231880719

/-! ## A310451.P7805869102057997611

`A239504(A279735(n+1))`
-/

namespace A310451.P7805869102057997611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (A279735 (n + 1)).toNat

end

end A310451.P7805869102057997611

/-!
# A310452: Coordination sequence Gal.6.195.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310452, the canonical program `A310452.P8814723128049641890` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310452 has offset 0).

The definition of A310452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310452.P8814723128049641890

`A312926(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310452

/-- `A312926(n)+∑[A021913(n)]` -/
def P8814723128049641890.Spec : Prop :=
  ∀ n, P8814723128049641890.a n = A310452 n

theorem P8814723128049641890.correct : P8814723128049641890.Spec := by
  intro n
  simp only [A310452]

end A310452

/-! ## A310452.P18066100818488609870

`A312926(n)+Δ[A011848(n)]`
-/

namespace A310452.P18066100818488609870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + (f1 (n + 1) - f1 n)

end

end A310452.P18066100818488609870

namespace A310452

/-- `A312926(n)+Δ[A011848(n)]` -/
def P18066100818488609870.Spec : Prop :=
  ∀ n, P18066100818488609870.a n = A310452 n

end A310452

/-! ## A310452.P11821379292060653120

`A312926(n)+n-A004525(n)`
-/

namespace A310452.P11821379292060653120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + ((n : ℤ) - A004525 n)

end

end A310452.P11821379292060653120

namespace A310452

/-- `A312926(n)+n-A004525(n)` -/
def P11821379292060653120.Spec : Prop :=
  ∀ n, P11821379292060653120.a n = A310452 n

end A310452

/-! ## A310452.P14388516274478167169

`A313619(n)-A101455(n)`
-/

namespace A310452.P14388516274478167169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313619 n - A101455 n

end

end A310452.P14388516274478167169

namespace A310452

/-- `A313619(n)-A101455(n)` -/
def P14388516274478167169.Spec : Prop :=
  ∀ n, P14388516274478167169.a n = A310452 n

end A310452

/-! ## A310452.P17795208182119475793

`A004396(A004525(n))+A310470(n)-A004525(n)`
-/

namespace A310452.P17795208182119475793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A310470 n - A004525 n)

end

end A310452.P17795208182119475793

namespace A310452

/-- `A004396(A004525(n))+A310470(n)-A004525(n)` -/
def P17795208182119475793.Spec : Prop :=
  ∀ n, P17795208182119475793.a n = A310452 n

end A310452

/-! ## A310452.P14092924734789620874

`A314107(n)-A004525(A004396(n))`
-/

namespace A310452.P14092924734789620874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314107 n - A004525 (A004396 n).toNat

end

end A310452.P14092924734789620874

namespace A310452

/-- `A314107(n)-A004525(A004396(n))` -/
def P14092924734789620874.Spec : Prop :=
  ∀ n, P14092924734789620874.a n = A310452 n

end A310452

/-! ## A310452.P7794367079976576278

`abs(A008592(n)-A315266(n))`
-/

namespace A310452.P7794367079976576278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315266 n|

end

end A310452.P7794367079976576278

namespace A310452

/-- `abs(A008592(n)-A315266(n))` -/
def P7794367079976576278.Spec : Prop :=
  ∀ n, P7794367079976576278.a n = A310452 n

end A310452

/-! ## A310452.P3869176965054216691

`2*A008706(n)-A315266(n)`
-/

namespace A310452.P3869176965054216691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315266 n

end

end A310452.P3869176965054216691

namespace A310452

/-- `2*A008706(n)-A315266(n)` -/
def P3869176965054216691.Spec : Prop :=
  ∀ n, P3869176965054216691.a n = A310452 n

end A310452

/-! ## A310452.P8909452285308263125

`A008458(n)+A008574(n)-A315266(n)`
-/

namespace A310452.P8909452285308263125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315266 n)

end

end A310452.P8909452285308263125

namespace A310452

/-- `A008458(n)+A008574(n)-A315266(n)` -/
def P8909452285308263125.Spec : Prop :=
  ∀ n, P8909452285308263125.a n = A310452 n

end A310452

/-! ## A310452.P8748847972374776466

`A314144(n)-A004525(n)`
-/

namespace A310452.P8748847972374776466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - A004525 n

end

end A310452.P8748847972374776466

namespace A310452

/-- `A314144(n)-A004525(n)` -/
def P8748847972374776466.Spec : Prop :=
  ∀ n, P8748847972374776466.a n = A310452 n

end A310452

/-! ## A310452.P4883360879102384199

`∑[A021913(n)]+A314144(n)-n`
-/

namespace A310452.P4883360879102384199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A314144 n - (n : ℤ))

end

end A310452.P4883360879102384199

namespace A310452

/-- `∑[A021913(n)]+A314144(n)-n` -/
def P4883360879102384199.Spec : Prop :=
  ∀ n, P4883360879102384199.a n = A310452 n

end A310452

/-! ## A310452.P16271005269986000064

`Δ[A011848(n)]+A314144(n)-n`
-/

namespace A310452.P16271005269986000064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314144 n - (n : ℤ))

end

end A310452.P16271005269986000064

namespace A310452

/-- `Δ[A011848(n)]+A314144(n)-n` -/
def P16271005269986000064.Spec : Prop :=
  ∀ n, P16271005269986000064.a n = A310452 n

end A310452

/-! ## A310452.P15096498567852854871

`A315700(n)-(A004525(A004396(n))+A004525(n))`
-/

namespace A310452.P15096498567852854871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - (A004525 (A004396 n).toNat + A004525 n)

end

end A310452.P15096498567852854871

namespace A310452

/-- `A315700(n)-(A004525(A004396(n))+A004525(n))` -/
def P15096498567852854871.Spec : Prop :=
  ∀ n, P15096498567852854871.a n = A310452 n

end A310452

/-! ## A310452.P7486159868597065354

`A004525(A315512(2*n))-A004396(n)`
-/

namespace A310452.P7486159868597065354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315512 (2 * n)).toNat - A004396 n

end

end A310452.P7486159868597065354

namespace A310452

/-- `A004525(A315512(2*n))-A004396(n)` -/
def P7486159868597065354.Spec : Prop :=
  ∀ n, P7486159868597065354.a n = A310452 n

end A310452

/-!
# A310453: Coordination sequence Gal.6.268.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310453, there is no canonical definition to state claims against.
-/

/-! ## A310453.P13768386394487947010

`A050131(2*(n+1))-A000038(A036385(n+1))`
-/

namespace A310453.P13768386394487947010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050131 (2 * (n + 1)) - A000038 (A036385 (n + 1)).toNat

end

end A310453.P13768386394487947010

/-! ## A310453.P4995642745342695519

`A050131(2*(n+1))-A000038(A036387(n+2))`
-/

namespace A310453.P4995642745342695519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050131 (2 * (n + 1)) - A000038 (A036387 (n + 2)).toNat

end

end A310453.P4995642745342695519

/-! ## A310453.P13896593278067296227

`A310454(n)-A212619(A017353(n))`
-/

namespace A310453.P13896593278067296227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n - A212619 (A017353 n).toNat

end

end A310453.P13896593278067296227

/-! ## A310453.P4159473000565797991

`A310454(A062399(n))`
-/

namespace A310453.P4159473000565797991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 (A062399 n).toNat

end

end A310453.P4159473000565797991

/-! ## A310453.P12111760961527847333

`A310454(A120126(n))`
-/

namespace A310453.P12111760961527847333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 (A120126 n).toNat

end

end A310453.P12111760961527847333

/-!
# A310454: Coordination sequence Gal.5.140.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310454, the canonical program `A310454.P10457649734858247148` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310454 has offset 0).

The definition of A310454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310454.P17761931356441874672

`A310509(n)-Δ[A011862(n)]`
-/

namespace A310454.P17761931356441874672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n - (f1 (n + 1) - f1 n)

end

end A310454.P17761931356441874672

namespace A310454

/-- `A310509(n)-Δ[A011862(n)]` -/
def P17761931356441874672.Spec : Prop :=
  ∀ n, P17761931356441874672.a n = A310454 n

end A310454

/-! ## A310454.P9755022774533531954

`2*A008574(2*n)-A315690(2*n)`
-/

namespace A310454.P9755022774533531954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315690 (2 * n)

end

end A310454.P9755022774533531954

namespace A310454

/-- `2*A008574(2*n)-A315690(2*n)` -/
def P9755022774533531954.Spec : Prop :=
  ∀ n, P9755022774533531954.a n = A310454 n

end A310454

/-! ## A310454.P10457649734858247148

`A313100(n)+A004396(n-A004396(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A310454

/-- `A313100(n)+A004396(n-A004396(n))` -/
def P10457649734858247148.Spec : Prop :=
  ∀ n, P10457649734858247148.a n = A310454 n

theorem P10457649734858247148.correct : P10457649734858247148.Spec := by
  intro n
  simp only [A310454]

end A310454

/-! ## A310454.P15141217473684971162

`A310538(n)-Δ[2*A011862(n)]`
-/

namespace A310454.P15141217473684971162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310538 n - (f1 (n + 1) - f1 n)

end

end A310454.P15141217473684971162

namespace A310454

/-- `A310538(n)-Δ[2*A011862(n)]` -/
def P15141217473684971162.Spec : Prop :=
  ∀ n, P15141217473684971162.a n = A310454 n

end A310454

/-! ## A310454.P288863068082039907

`A314141(n)-A004396(A004396(n))`
-/

namespace A310454.P288863068082039907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n - A004396 (A004396 n).toNat

end

end A310454.P288863068082039907

namespace A310454

/-- `A314141(n)-A004396(A004396(n))` -/
def P288863068082039907.Spec : Prop :=
  ∀ n, P288863068082039907.a n = A310454 n

end A310454

/-! ## A310454.P6491554058592103299

`A314231(n)-A004396(n)`
-/

namespace A310454.P6491554058592103299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314231 n - A004396 n

end

end A310454.P6491554058592103299

namespace A310454

/-- `A314231(n)-A004396(n)` -/
def P6491554058592103299.Spec : Prop :=
  ∀ n, P6491554058592103299.a n = A310454 n

end A310454

/-! ## A310454.P1852882258183734219

`A314231(n)-A002264(2*n+1)`
-/

namespace A310454.P1852882258183734219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314231 n - A002264 (2 * n + 1)

end

end A310454.P1852882258183734219

namespace A310454

/-- `A314231(n)-A002264(2*n+1)` -/
def P1852882258183734219.Spec : Prop :=
  ∀ n, P1852882258183734219.a n = A310454 n

end A310454

/-! ## A310454.P5365200463902673673

`A314231(n)-A004525(A004773(n))`
-/

namespace A310454.P5365200463902673673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314231 n - A004525 (A004773 n).toNat

end

end A310454.P5365200463902673673

namespace A310454

/-- `A314231(n)-A004525(A004773(n))` -/
def P5365200463902673673.Spec : Prop :=
  ∀ n, P5365200463902673673.a n = A310454 n

end A310454

/-! ## A310454.P7595863026318883592

`abs(A008592(n)-A315265(n))`
-/

namespace A310454.P7595863026318883592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315265 n|

end

end A310454.P7595863026318883592

namespace A310454

/-- `abs(A008592(n)-A315265(n))` -/
def P7595863026318883592.Spec : Prop :=
  ∀ n, P7595863026318883592.a n = A310454 n

end A310454

/-! ## A310454.P5913324680566652373

`A008458(n)+A008574(n)-A315265(n)`
-/

namespace A310454.P5913324680566652373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315265 n)

end

end A310454.P5913324680566652373

namespace A310454

/-- `A008458(n)+A008574(n)-A315265(n)` -/
def P5913324680566652373.Spec : Prop :=
  ∀ n, P5913324680566652373.a n = A310454 n

end A310454

/-! ## A310454.P7220600625167566746

`A004396(2*n)+A004396(A310521(n))`
-/

namespace A310454.P7220600625167566746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A310521 n).toNat

end

end A310454.P7220600625167566746

namespace A310454

/-- `A004396(2*n)+A004396(A310521(n))` -/
def P7220600625167566746.Spec : Prop :=
  ∀ n, P7220600625167566746.a n = A310454 n

end A310454

/-! ## A310454.P1516458579363729196

`A004396(2*n)+A004396(A313909(n))`
-/

namespace A310454.P1516458579363729196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A313909 n).toNat

end

end A310454.P1516458579363729196

namespace A310454

/-- `A004396(2*n)+A004396(A313909(n))` -/
def P1516458579363729196.Spec : Prop :=
  ∀ n, P1516458579363729196.a n = A310454 n

end A310454

/-! ## A310454.P9156807402228164590

`A004396(2*n)+A004396(A314141(n))`
-/

namespace A310454.P9156807402228164590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A314141 n).toNat

end

end A310454.P9156807402228164590

namespace A310454

/-- `A004396(2*n)+A004396(A314141(n))` -/
def P9156807402228164590.Spec : Prop :=
  ∀ n, P9156807402228164590.a n = A310454 n

end A310454

/-! ## A310454.P2559380411961749341

`A004396(2*n)+A004396(A310538(n))`
-/

namespace A310454.P2559380411961749341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A310538 n).toNat

end

end A310454.P2559380411961749341

namespace A310454

/-- `A004396(2*n)+A004396(A310538(n))` -/
def P2559380411961749341.Spec : Prop :=
  ∀ n, P2559380411961749341.a n = A310454 n

end A310454

/-! ## A310454.P7328286859497219599

`A004396(2*n)+A004396(A314205(n))`
-/

namespace A310454.P7328286859497219599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A314205 n).toNat

end

end A310454.P7328286859497219599

namespace A310454

/-- `A004396(2*n)+A004396(A314205(n))` -/
def P7328286859497219599.Spec : Prop :=
  ∀ n, P7328286859497219599.a n = A310454 n

end A310454

/-! ## A310454.P15399651395227857909

`A099479(A133655(n)-A004396(n))`
-/

namespace A310454.P15399651395227857909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A133655 n - A004396 n).toNat

end

end A310454.P15399651395227857909

namespace A310454

/-- `A099479(A133655(n)-A004396(n))` -/
def P15399651395227857909.Spec : Prop :=
  ∀ n, P15399651395227857909.a n = A310454 n

end A310454

/-! ## A310454.P5880471075453787935

`A008574(2*n)+A008576(2*n)-A314671(2*n)`
-/

namespace A310454.P5880471075453787935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (A008576 (2 * n) - A314671 (2 * n))

end

end A310454.P5880471075453787935

namespace A310454

/-- `A008574(2*n)+A008576(2*n)-A314671(2*n)` -/
def P5880471075453787935.Spec : Prop :=
  ∀ n, P5880471075453787935.a n = A310454 n

end A310454

/-! ## A310454.P10458436773704185571

`A312100(2*n)-4*n`
-/

namespace A310454.P10458436773704185571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 (2 * n) - (4 * n : ℤ)

end

end A310454.P10458436773704185571

namespace A310454

/-- `A312100(2*n)-4*n` -/
def P10458436773704185571.Spec : Prop :=
  ∀ n, P10458436773704185571.a n = A310454 n

end A310454

/-! ## A310454.P3388460211366208917

`A310509(n)-A033183(A004771(n))`
-/

namespace A310454.P3388460211366208917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n - A033183 (A004771 n).toNat

end

end A310454.P3388460211366208917

namespace A310454

/-- `A310509(n)-A033183(A004771(n))` -/
def P3388460211366208917.Spec : Prop :=
  ∀ n, P3388460211366208917.a n = A310454 n

end A310454

/-! ## A310454.P8300361270586268915

`A312669(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A310454.P8300361270586268915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312669 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A310454.P8300361270586268915

namespace A310454

/-- `A312669(2*n)/(4*n+2-A004277(2*n))` -/
def P8300361270586268915.Spec : Prop :=
  ∀ n, P8300361270586268915.a n = (A310454 n : ℚ)

end A310454

/-!
# A310455: Coordination sequence Gal.6.348.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310455, the canonical program `A310455.P786279696323869961` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310455 has offset 0).

The definition of A310455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310455.P12093757631533948452

`A310499(n)-Δ[A011864(n)]`
-/

namespace A310455.P12093757631533948452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310499 n - (f1 (n + 1) - f1 n)

end

end A310455.P12093757631533948452

namespace A310455

/-- `A310499(n)-Δ[A011864(n)]` -/
def P12093757631533948452.Spec : Prop :=
  ∀ n, P12093757631533948452.a n = A310455 n

end A310455

/-! ## A310455.P786279696323869961

`(A310496(n)+A310413(n))/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310455

/-- `(A310496(n)+A310413(n))/2` -/
def P786279696323869961.Spec : Prop :=
  ∀ n, P786279696323869961.a n = (A310455 n : ℚ)

end A310455

/-! ## A310455.P1282188816640764348

`abs(10*n-A315264(n))`
-/

namespace A310455.P1282188816640764348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315264 n|

end

end A310455.P1282188816640764348

namespace A310455

/-- `abs(10*n-A315264(n))` -/
def P1282188816640764348.Spec : Prop :=
  ∀ n, P1282188816640764348.a n = A310455 n

end A310455

/-! ## A310455.P11388659511560390093

`2*A008706(n)-A315264(n)`
-/

namespace A310455.P11388659511560390093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315264 n

end

end A310455.P11388659511560390093

namespace A310455

/-- `2*A008706(n)-A315264(n)` -/
def P11388659511560390093.Spec : Prop :=
  ∀ n, P11388659511560390093.a n = A310455 n

end A310455

/-! ## A310455.P2290872458630622577

`A008458(n)+A008574(n)-A315264(n)`
-/

namespace A310455.P2290872458630622577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315264 n)

end

end A310455.P2290872458630622577

namespace A310455

/-- `A008458(n)+A008574(n)-A315264(n)` -/
def P2290872458630622577.Spec : Prop :=
  ∀ n, P2290872458630622577.a n = A310455 n

end A310455

/-! ## A310455.P15743684492216532642

`A315264(n)-A005843(A315264(n)-A008706(n))`
-/

namespace A310455.P15743684492216532642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315264 n - A005843 (A315264 n - A008706 n).toNat

end

end A310455.P15743684492216532642

namespace A310455

/-- `A315264(n)-A005843(A315264(n)-A008706(n))` -/
def P15743684492216532642.Spec : Prop :=
  ∀ n, P15743684492216532642.a n = A310455 n

end A310455

/-! ## A310455.P5484573581950389747

`A310513(n)-A004525(A310513(n)-A310371(n))`
-/

namespace A310455.P5484573581950389747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310513 n - A004525 (A310513 n - A310371 n).toNat

end

end A310455.P5484573581950389747

namespace A310455

/-- `A310513(n)-A004525(A310513(n)-A310371(n))` -/
def P5484573581950389747.Spec : Prop :=
  ∀ n, P5484573581950389747.a n = A310455 n

end A310455

/-! ## A310455.P5446339101770554973

`(A310520(n)+A310371(n))/2`
-/

namespace A310455.P5446339101770554973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310520 n + A310371 n : ℚ) / 2

end

end A310455.P5446339101770554973

namespace A310455

/-- `(A310520(n)+A310371(n))/2` -/
def P5446339101770554973.Spec : Prop :=
  ∀ n, P5446339101770554973.a n = (A310455 n : ℚ)

end A310455

/-! ## A310455.P5022625001936941212

`A310371(n)+A004525(A310520(n)-A310371(n))`
-/

namespace A310455.P5022625001936941212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310371 n + A004525 (A310520 n - A310371 n).toNat

end

end A310455.P5022625001936941212

namespace A310455

/-- `A310371(n)+A004525(A310520(n)-A310371(n))` -/
def P5022625001936941212.Spec : Prop :=
  ∀ n, P5022625001936941212.a n = A310455 n

end A310455

/-! ## A310455.P12491443032514605208

`A005843(A008706(n))-A315264(n)`
-/

namespace A310455.P12491443032514605208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315264 n

end

end A310455.P12491443032514605208

namespace A310455

/-- `A005843(A008706(n))-A315264(n)` -/
def P12491443032514605208.Spec : Prop :=
  ∀ n, P12491443032514605208.a n = A310455 n

end A310455

/-! ## A310455.P8226410376952993254

`A065502(A008458(n))-A315264(n)`
-/

namespace A310455.P8226410376952993254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315264 n

end

end A310455.P8226410376952993254

namespace A310455

/-- `A065502(A008458(n))-A315264(n)` -/
def P8226410376952993254.Spec : Prop :=
  ∀ n, P8226410376952993254.a n = A310455 n

end A310455

/-! ## A310455.P8541408010507374498

`lcm(10*n-A315264(n), A014963(A006093(n+1)))`
-/

namespace A310455.P8541408010507374498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((10 * n : ℤ) - A315264 n) (A014963 (A006093 (n + 1)).toNat)

end

end A310455.P8541408010507374498

namespace A310455

/-- `lcm(10*n-A315264(n), A014963(A006093(n+1)))` -/
def P8541408010507374498.Spec : Prop :=
  ∀ n, (P8541408010507374498.a n : ℤ) = A310455 n

end A310455

/-! ## A310455.P1811888845622689217

`A315334(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A310455.P1811888845622689217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315334 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A310455.P1811888845622689217

namespace A310455

/-- `A315334(2*n)+A008458(n+1)-(12*n+6)` -/
def P1811888845622689217.Spec : Prop :=
  ∀ n, P1811888845622689217.a n = A310455 n

end A310455

/-! ## A310455.P18287094103013415229

`A004525(A310520(n)+A310371(n))`
-/

namespace A310455.P18287094103013415229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310520 n + A310371 n).toNat

end

end A310455.P18287094103013415229

namespace A310455

/-- `A004525(A310520(n)+A310371(n))` -/
def P18287094103013415229.Spec : Prop :=
  ∀ n, P18287094103013415229.a n = A310455 n

end A310455

/-! ## A310455.P17561271375528137786

`A004525(A310496(n)+A310413(n))`
-/

namespace A310455.P17561271375528137786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310496 n + A310413 n).toNat

end

end A310455.P17561271375528137786

namespace A310455

/-- `A004525(A310496(n)+A310413(n))` -/
def P17561271375528137786.Spec : Prop :=
  ∀ n, P17561271375528137786.a n = A310455 n

end A310455

/-!
# A310456: Coordination sequence Gal.6.322.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310456, the canonical program `A310456.P16640342773671596994` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310456 has offset 0).

The definition of A310456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310456.P16640342773671596994

`A310408(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A310456

/-- `A310408(n)+Δ[A011864(n)]` -/
def P16640342773671596994.Spec : Prop :=
  ∀ n, P16640342773671596994.a n = A310456 n

theorem P16640342773671596994.correct : P16640342773671596994.Spec := by
  intro n
  simp only [A310456]

end A310456

/-! ## A310456.P305129317320162916

`A310501(n)-Δ[A011864(n)]`
-/

namespace A310456.P305129317320162916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310501 n - (f1 (n + 1) - f1 n)

end

end A310456.P305129317320162916

namespace A310456

/-- `A310501(n)-Δ[A011864(n)]` -/
def P305129317320162916.Spec : Prop :=
  ∀ n, P305129317320162916.a n = A310456 n

end A310456

/-! ## A310456.P15848531036062139459

`abs(A008592(n)-A315261(n))`
-/

namespace A310456.P15848531036062139459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315261 n|

end

end A310456.P15848531036062139459

namespace A310456

/-- `abs(A008592(n)-A315261(n))` -/
def P15848531036062139459.Spec : Prop :=
  ∀ n, P15848531036062139459.a n = A310456 n

end A310456

/-! ## A310456.P2449353641424719981

`2*A008706(n)-A315261(n)`
-/

namespace A310456.P2449353641424719981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315261 n

end

end A310456.P2449353641424719981

namespace A310456

/-- `2*A008706(n)-A315261(n)` -/
def P2449353641424719981.Spec : Prop :=
  ∀ n, P2449353641424719981.a n = A310456 n

end A310456

/-! ## A310456.P10233102502365796362

`A008458(n)+A008574(n)-A315261(n)`
-/

namespace A310456.P10233102502365796362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315261 n)

end

end A310456.P10233102502365796362

namespace A310456

/-- `A008458(n)+A008574(n)-A315261(n)` -/
def P10233102502365796362.Spec : Prop :=
  ∀ n, P10233102502365796362.a n = A310456 n

end A310456

/-! ## A310456.P8170766905306279703

`A315261(n)-A005843(A315261(n)-A008706(n))`
-/

namespace A310456.P8170766905306279703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315261 n - A005843 (A315261 n - A008706 n).toNat

end

end A310456.P8170766905306279703

namespace A310456

/-- `A315261(n)-A005843(A315261(n)-A008706(n))` -/
def P8170766905306279703.Spec : Prop :=
  ∀ n, P8170766905306279703.a n = A310456 n

end A310456

/-! ## A310456.P8506973783648694214

`(A310491(n)+A310420(n))/2`
-/

namespace A310456.P8506973783648694214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310491 n + A310420 n : ℚ) / 2

end

end A310456.P8506973783648694214

namespace A310456

/-- `(A310491(n)+A310420(n))/2` -/
def P8506973783648694214.Spec : Prop :=
  ∀ n, P8506973783648694214.a n = (A310456 n : ℚ)

end A310456

/-! ## A310456.P11947844738388703902

`A180004(A310396(n))`
-/

namespace A310456.P11947844738388703902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A310396 n).toNat

end

end A310456.P11947844738388703902

namespace A310456

/-- `A180004(A310396(n))` -/
def P11947844738388703902.Spec : Prop :=
  ∀ n, P11947844738388703902.a n = A310456 n

end A310456

/-! ## A310456.P15088745756413242291

`A005843(A008706(n))-A315261(n)`
-/

namespace A310456.P15088745756413242291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315261 n

end

end A310456.P15088745756413242291

namespace A310456

/-- `A005843(A008706(n))-A315261(n)` -/
def P15088745756413242291.Spec : Prop :=
  ∀ n, P15088745756413242291.a n = A310456 n

end A310456

/-! ## A310456.P14320336114355430886

`(A312668(2*n)+A000007(n))/2`
-/

namespace A310456.P14320336114355430886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312668 (2 * n) + A000007 n : ℚ) / 2

end

end A310456.P14320336114355430886

namespace A310456

/-- `(A312668(2*n)+A000007(n))/2` -/
def P14320336114355430886.Spec : Prop :=
  ∀ n, P14320336114355430886.a n = (A310456 n : ℚ)

end A310456

/-! ## A310456.P5798854134026946021

`A313918(2*n)+n-7*n`
-/

namespace A310456.P5798854134026946021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313918 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A310456.P5798854134026946021

namespace A310456

/-- `A313918(2*n)+n-7*n` -/
def P5798854134026946021.Spec : Prop :=
  ∀ n, P5798854134026946021.a n = A310456 n

end A310456

/-! ## A310456.P6128576109448653207

`A004525(A312668(2*n))`
-/

namespace A310456.P6128576109448653207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312668 (2 * n)).toNat

end

end A310456.P6128576109448653207

namespace A310456

/-- `A004525(A312668(2*n))` -/
def P6128576109448653207.Spec : Prop :=
  ∀ n, P6128576109448653207.a n = A310456 n

end A310456

/-! ## A310456.P964822024435869330

`A004526(A312668(2*n)+1)`
-/

namespace A310456.P964822024435869330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312668 (2 * n) + 1).toNat

end

end A310456.P964822024435869330

namespace A310456

/-- `A004526(A312668(2*n)+1)` -/
def P964822024435869330.Spec : Prop :=
  ∀ n, P964822024435869330.a n = A310456 n

end A310456

/-! ## A310456.P1253535506320655616

`A233583(A017281(n))-A315261(n)`
-/

namespace A310456.P1253535506320655616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315261 n

end

end A310456.P1253535506320655616

namespace A310456

/-- `A233583(A017281(n))-A315261(n)` -/
def P1253535506320655616.Spec : Prop :=
  ∀ n, P1253535506320655616.a n = A310456 n

end A310456

/-!
# A310457: Coordination sequence Gal.6.345.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310457, the canonical program `A310457.P16493432866440018561` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310457 has offset 0).

The definition of A310457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310457.P3978811956106231441

`A313726(n)-A134667(n)`
-/

namespace A310457.P3978811956106231441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 n - A134667 n

end

end A310457.P3978811956106231441

namespace A310457

/-- `A313726(n)-A134667(n)` -/
def P3978811956106231441.Spec : Prop :=
  ∀ n, P3978811956106231441.a n = A310457 n

end A310457

/-! ## A310457.P15854146286953817376

`A313099(n)+∑[A022003(n)]`
-/

namespace A310457.P15854146286953817376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310457.P15854146286953817376

namespace A310457

/-- `A313099(n)+∑[A022003(n)]` -/
def P15854146286953817376.Spec : Prop :=
  ∀ n, P15854146286953817376.a n = A310457 n

end A310457

/-! ## A310457.P15865804839001154848

`A312896(n)+∑[A131735(n)]`
-/

namespace A310457.P15865804839001154848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310457.P15865804839001154848

namespace A310457

/-- `A312896(n)+∑[A131735(n)]` -/
def P15865804839001154848.Spec : Prop :=
  ∀ n, P15865804839001154848.a n = A310457 n

end A310457

/-! ## A310457.P16493432866440018561

`A310410(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A310457

/-- `A310410(n)+Δ[A011865(n)]` -/
def P16493432866440018561.Spec : Prop :=
  ∀ n, P16493432866440018561.a n = A310457 n

theorem P16493432866440018561.correct : P16493432866440018561.Spec := by
  intro n
  simp only [A310457]

end A310457

/-! ## A310457.P18416380235211206732

`A313099(n)+A002264(n+1)`
-/

namespace A310457.P18416380235211206732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + A002264 (n + 1)

end

end A310457.P18416380235211206732

namespace A310457

/-- `A313099(n)+A002264(n+1)` -/
def P18416380235211206732.Spec : Prop :=
  ∀ n, P18416380235211206732.a n = A310457 n

end A310457

/-! ## A310457.P4359517554719123005

`A313099(n)+n-A004396(n)`
-/

namespace A310457.P4359517554719123005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n + ((n : ℤ) - A004396 n)

end

end A310457.P4359517554719123005

namespace A310457

/-- `A313099(n)+n-A004396(n)` -/
def P4359517554719123005.Spec : Prop :=
  ∀ n, P4359517554719123005.a n = A310457 n

end A310457

/-! ## A310457.P16699476427189232117

`A219529(n)-A004396(A004525(n))`
-/

namespace A310457.P16699476427189232117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004396 (A004525 n).toNat

end

end A310457.P16699476427189232117

namespace A310457

/-- `A219529(n)-A004396(A004525(n))` -/
def P16699476427189232117.Spec : Prop :=
  ∀ n, P16699476427189232117.a n = A310457 n

end A310457

/-! ## A310457.P3437760025913926541

`A312896(n)+n-A004525(A004396(n))`
-/

namespace A310457.P3437760025913926541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A310457.P3437760025913926541

namespace A310457

/-- `A312896(n)+n-A004525(A004396(n))` -/
def P3437760025913926541.Spec : Prop :=
  ∀ n, P3437760025913926541.a n = A310457 n

end A310457

/-! ## A310457.P14946277649156419234

`A008486(n)+A313099(n)-A008576(n)`
-/

namespace A310457.P14946277649156419234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313099 n - A008576 n)

end

end A310457.P14946277649156419234

namespace A310457

/-- `A008486(n)+A313099(n)-A008576(n)` -/
def P14946277649156419234.Spec : Prop :=
  ∀ n, P14946277649156419234.a n = A310457 n

end A310457

/-! ## A310457.P15541209773075818956

`A004396(A004525(n))+A310472(n)-A004525(n)`
-/

namespace A310457.P15541209773075818956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A310472 n - A004525 n)

end

end A310457.P15541209773075818956

namespace A310457

/-- `A004396(A004525(n))+A310472(n)-A004525(n)` -/
def P15541209773075818956.Spec : Prop :=
  ∀ n, P15541209773075818956.a n = A310457 n

end A310457

/-! ## A310457.P741764875046181617

`∑[A131735(n)]+A314124(n)-n`
-/

namespace A310457.P741764875046181617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A314124 n - (n : ℤ))

end

end A310457.P741764875046181617

namespace A310457

/-- `∑[A131735(n)]+A314124(n)-n` -/
def P741764875046181617.Spec : Prop :=
  ∀ n, P741764875046181617.a n = A310457 n

end A310457

/-! ## A310457.P11078701156935018355

`A314159(n)-A004525(n)`
-/

namespace A310457.P11078701156935018355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314159 n - A004525 n

end

end A310457.P11078701156935018355

namespace A310457

/-- `A314159(n)-A004525(n)` -/
def P11078701156935018355.Spec : Prop :=
  ∀ n, P11078701156935018355.a n = A310457 n

end A310457

/-! ## A310457.P15514431178997075133

`abs(A008592(n)-A315260(n))`
-/

namespace A310457.P15514431178997075133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315260 n|

end

end A310457.P15514431178997075133

namespace A310457

/-- `abs(A008592(n)-A315260(n))` -/
def P15514431178997075133.Spec : Prop :=
  ∀ n, P15514431178997075133.a n = A310457 n

end A310457

/-! ## A310457.P5411565929358206702

`2*A008706(n)-A315260(n)`
-/

namespace A310457.P5411565929358206702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315260 n

end

end A310457.P5411565929358206702

namespace A310457

/-- `2*A008706(n)-A315260(n)` -/
def P5411565929358206702.Spec : Prop :=
  ∀ n, P5411565929358206702.a n = A310457 n

end A310457

/-! ## A310457.P2848302624572803142

`A008458(n)+A008574(n)-A315260(n)`
-/

namespace A310457.P2848302624572803142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315260 n)

end

end A310457.P2848302624572803142

namespace A310457

/-- `A008458(n)+A008574(n)-A315260(n)` -/
def P2848302624572803142.Spec : Prop :=
  ∀ n, P2848302624572803142.a n = A310457 n

end A310457

/-! ## A310457.P2753337793839464959

`A314240(n)-A004396(n)`
-/

namespace A310457.P2753337793839464959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A004396 n

end

end A310457.P2753337793839464959

namespace A310457

/-- `A314240(n)-A004396(n)` -/
def P2753337793839464959.Spec : Prop :=
  ∀ n, P2753337793839464959.a n = A310457 n

end A310457

/-! ## A310457.P5754615900497587833

`A314240(n)-A002264(2*n+1)`
-/

namespace A310457.P5754615900497587833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314240 n - A002264 (2 * n + 1)

end

end A310457.P5754615900497587833

namespace A310457

/-- `A314240(n)-A002264(2*n+1)` -/
def P5754615900497587833.Spec : Prop :=
  ∀ n, P5754615900497587833.a n = A310457 n

end A310457

/-! ## A310457.P11247835586724655569

`A074067(A315260(n))`
-/

namespace A310457.P11247835586724655569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315260 n).toNat

end

end A310457.P11247835586724655569

namespace A310457

/-- `A074067(A315260(n))` -/
def P11247835586724655569.Spec : Prop :=
  ∀ n, P11247835586724655569.a n = A310457 n

end A310457

/-! ## A310457.P2699718920236562353

`A004396(2*n)+A004396(A301710(n))`
-/

namespace A310457.P2699718920236562353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A301710 n).toNat

end

end A310457.P2699718920236562353

namespace A310457

/-- `A004396(2*n)+A004396(A301710(n))` -/
def P2699718920236562353.Spec : Prop :=
  ∀ n, P2699718920236562353.a n = A310457 n

end A310457

/-!
# A310458: Coordination sequence Gal.4.78.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310458, the canonical program `A310458.P15201393240750991380` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310458 has offset 0).

The definition of A310458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310458.P17534694448218399383

`abs(10*n-A315259(n))`
-/

namespace A310458.P17534694448218399383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315259 n|

end

end A310458.P17534694448218399383

namespace A310458

/-- `abs(10*n-A315259(n))` -/
def P17534694448218399383.Spec : Prop :=
  ∀ n, P17534694448218399383.a n = A310458 n

end A310458

/-! ## A310458.P130139877063970031

`A314090(n)-A046978(n)`
-/

namespace A310458.P130139877063970031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314090 n - A046978 n

end

end A310458.P130139877063970031

namespace A310458

/-- `A314090(n)-A046978(n)` -/
def P130139877063970031.Spec : Prop :=
  ∀ n, P130139877063970031.a n = A310458 n

end A310458

/-! ## A310458.P13528907528209157162

`A313635(n)-A101455(n)`
-/

namespace A310458.P13528907528209157162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n - A101455 n

end

end A310458.P13528907528209157162

namespace A310458

/-- `A313635(n)-A101455(n)` -/
def P13528907528209157162.Spec : Prop :=
  ∀ n, P13528907528209157162.a n = A310458 n

end A310458

/-! ## A310458.P17578947144065399814

`A313826(n)-A188510(n)`
-/

namespace A310458.P17578947144065399814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 n - A188510 n

end

end A310458.P17578947144065399814

namespace A310458

/-- `A313826(n)-A188510(n)` -/
def P17578947144065399814.Spec : Prop :=
  ∀ n, P17578947144065399814.a n = A310458 n

end A310458

/-! ## A310458.P2634764327560269769

`floor(A010015(n)/A315259(n))`
-/

namespace A310458.P2634764327560269769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315259 n : ℚ)⌋

end

end A310458.P2634764327560269769

namespace A310458

/-- `floor(A010015(n)/A315259(n))` -/
def P2634764327560269769.Spec : Prop :=
  ∀ n, P2634764327560269769.a n = A310458 n

end A310458

/-! ## A310458.P15201393240750991380

`A312943(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310458

/-- `A312943(n)+∑[A021913(n)]` -/
def P15201393240750991380.Spec : Prop :=
  ∀ n, P15201393240750991380.a n = A310458 n

theorem P15201393240750991380.correct : P15201393240750991380.Spec := by
  intro n
  simp only [A310458]

end A310458

/-! ## A310458.P18433637232837082134

`A310397(n)+Δ[A011861(n)]`
-/

namespace A310458.P18433637232837082134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n + (f1 (n + 1) - f1 n)

end

end A310458.P18433637232837082134

namespace A310458

/-- `A310397(n)+Δ[A011861(n)]` -/
def P18433637232837082134.Spec : Prop :=
  ∀ n, P18433637232837082134.a n = A310458 n

end A310458

/-! ## A310458.P4453394393035008327

`A312943(n)+Δ[A011848(n)]`
-/

namespace A310458.P4453394393035008327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + (f1 (n + 1) - f1 n)

end

end A310458.P4453394393035008327

namespace A310458

/-- `A312943(n)+Δ[A011848(n)]` -/
def P4453394393035008327.Spec : Prop :=
  ∀ n, P4453394393035008327.a n = A310458 n

end A310458

/-! ## A310458.P18237961493466945371

`A312943(n)+A004524(n+1)`
-/

namespace A310458.P18237961493466945371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004524 (n + 1)

end

end A310458.P18237961493466945371

namespace A310458

/-- `A312943(n)+A004524(n+1)` -/
def P18237961493466945371.Spec : Prop :=
  ∀ n, P18237961493466945371.a n = A310458 n

end A310458

/-! ## A310458.P7775595982045885187

`A313635(n)-A046978(2*n)`
-/

namespace A310458.P7775595982045885187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n - A046978 (2 * n)

end

end A310458.P7775595982045885187

namespace A310458

/-- `A313635(n)-A046978(2*n)` -/
def P7775595982045885187.Spec : Prop :=
  ∀ n, P7775595982045885187.a n = A310458 n

end A310458

/-! ## A310458.P2062456676489663663

`A312943(n)+n-A004525(n)`
-/

namespace A310458.P2062456676489663663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + ((n : ℤ) - A004525 n)

end

end A310458.P2062456676489663663

namespace A310458

/-- `A312943(n)+n-A004525(n)` -/
def P2062456676489663663.Spec : Prop :=
  ∀ n, P2062456676489663663.a n = A310458 n

end A310458

/-! ## A310458.P5450071174868056326

`A315685(n)-2*A004525(A004525(n))`
-/

namespace A310458.P5450071174868056326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - 2 * A004525 (A004525 n).toNat

end

end A310458.P5450071174868056326

namespace A310458

/-- `A315685(n)-2*A004525(A004525(n))` -/
def P5450071174868056326.Spec : Prop :=
  ∀ n, P5450071174868056326.a n = A310458 n

end A310458

/-! ## A310458.P11272523114127563822

`A312894(n)+n-A004525(A004525(n))`
-/

namespace A310458.P11272523114127563822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312894 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A310458.P11272523114127563822

namespace A310458

/-- `A312894(n)+n-A004525(A004525(n))` -/
def P11272523114127563822.Spec : Prop :=
  ∀ n, P11272523114127563822.a n = A310458 n

end A310458

/-! ## A310458.P1669881334102552407

`A313115(n)+A004525(n-A004525(n))`
-/

namespace A310458.P1669881334102552407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A310458.P1669881334102552407

namespace A310458

/-- `A313115(n)+A004525(n-A004525(n))` -/
def P1669881334102552407.Spec : Prop :=
  ∀ n, P1669881334102552407.a n = A310458 n

end A310458

/-! ## A310458.P13800111571360111055

`A008458(n)+A008574(n)-A315259(n)`
-/

namespace A310458.P13800111571360111055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315259 n)

end

end A310458.P13800111571360111055

namespace A310458

/-- `A008458(n)+A008574(n)-A315259(n)` -/
def P13800111571360111055.Spec : Prop :=
  ∀ n, P13800111571360111055.a n = A310458 n

end A310458

/-! ## A310458.P13968693953193382485

`A314026(n)-A046978(A046978(n)+n)`
-/

namespace A310458.P13968693953193382485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A310458.P13968693953193382485

namespace A310458

/-- `A314026(n)-A046978(A046978(n)+n)` -/
def P13968693953193382485.Spec : Prop :=
  ∀ n, P13968693953193382485.a n = A310458 n

end A310458

/-! ## A310458.P9557067864846009431

`A314161(n)-A004525(n)`
-/

namespace A310458.P9557067864846009431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - A004525 n

end

end A310458.P9557067864846009431

namespace A310458

/-- `A314161(n)-A004525(n)` -/
def P9557067864846009431.Spec : Prop :=
  ∀ n, P9557067864846009431.a n = A310458 n

end A310458

/-! ## A310458.P2860940648870937799

`A314161(n)-Δ[A054925(n)]`
-/

namespace A310458.P2860940648870937799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - (f1 (n + 1) - f1 n)

end

end A310458.P2860940648870937799

namespace A310458

/-- `A314161(n)-Δ[A054925(n)]` -/
def P2860940648870937799.Spec : Prop :=
  ∀ n, P2860940648870937799.a n = A310458 n

end A310458

/-! ## A310458.P3259128958740069865

`∑[A021913(n)]+A314161(n)-n`
-/

namespace A310458.P3259128958740069865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A314161 n - (n : ℤ))

end

end A310458.P3259128958740069865

namespace A310458

/-- `∑[A021913(n)]+A314161(n)-n` -/
def P3259128958740069865.Spec : Prop :=
  ∀ n, P3259128958740069865.a n = A310458 n

end A310458

/-! ## A310458.P17140397818863679867

`Δ[A011848(n)]+A314161(n)-n`
-/

namespace A310458.P17140397818863679867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314161 n - (n : ℤ))

end

end A310458.P17140397818863679867

namespace A310458

/-- `Δ[A011848(n)]+A314161(n)-n` -/
def P17140397818863679867.Spec : Prop :=
  ∀ n, P17140397818863679867.a n = A310458 n

end A310458

/-!
# A310459: Coordination sequence Gal.6.341.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310459, the canonical program `A310459.P10560031629199160211` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310459 has offset 0).

The definition of A310459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310459.P18170889325663468207

`abs(10*n-A315258(n))`
-/

namespace A310459.P18170889325663468207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315258 n|

end

end A310459.P18170889325663468207

namespace A310459

/-- `abs(10*n-A315258(n))` -/
def P18170889325663468207.Spec : Prop :=
  ∀ n, P18170889325663468207.a n = A310459 n

end A310459

/-! ## A310459.P10560031629199160211

`A312950(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310459

/-- `A312950(n)+∑[A021913(n)]` -/
def P10560031629199160211.Spec : Prop :=
  ∀ n, P10560031629199160211.a n = A310459 n

theorem P10560031629199160211.correct : P10560031629199160211.Spec := by
  intro n
  simp only [A310459]

end A310459

/-! ## A310459.P10974500695080229348

`A312950(n)+Δ[A011848(n)]`
-/

namespace A310459.P10974500695080229348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + (f1 (n + 1) - f1 n)

end

end A310459.P10974500695080229348

namespace A310459

/-- `A312950(n)+Δ[A011848(n)]` -/
def P10974500695080229348.Spec : Prop :=
  ∀ n, P10974500695080229348.a n = A310459 n

end A310459

/-! ## A310459.P16294244161242606800

`A313103(n)+A002264(n+1)`
-/

namespace A310459.P16294244161242606800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313103 n + A002264 (n + 1)

end

end A310459.P16294244161242606800

namespace A310459

/-- `A313103(n)+A002264(n+1)` -/
def P16294244161242606800.Spec : Prop :=
  ∀ n, P16294244161242606800.a n = A310459 n

end A310459

/-! ## A310459.P436315764305629719

`A312950(n)+A004524(n+1)`
-/

namespace A310459.P436315764305629719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + A004524 (n + 1)

end

end A310459.P436315764305629719

namespace A310459

/-- `A312950(n)+A004524(n+1)` -/
def P436315764305629719.Spec : Prop :=
  ∀ n, P436315764305629719.a n = A310459 n

end A310459

/-! ## A310459.P16519977818736892857

`A312950(n)+n-A004525(n)`
-/

namespace A310459.P16519977818736892857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ((n : ℤ) - A004525 n)

end

end A310459.P16519977818736892857

namespace A310459

/-- `A312950(n)+n-A004525(n)` -/
def P16519977818736892857.Spec : Prop :=
  ∀ n, P16519977818736892857.a n = A310459 n

end A310459

/-! ## A310459.P8819542626213732787

`A312950(n)+n-Δ[A054925(n)]`
-/

namespace A310459.P8819542626213732787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A310459.P8819542626213732787

namespace A310459

/-- `A312950(n)+n-Δ[A054925(n)]` -/
def P8819542626213732787.Spec : Prop :=
  ∀ n, P8819542626213732787.a n = A310459 n

end A310459

/-! ## A310459.P14100586172002057711

`A008486(n)+A313103(n)-A008576(n)`
-/

namespace A310459.P14100586172002057711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313103 n - A008576 n)

end

end A310459.P14100586172002057711

namespace A310459

/-- `A008486(n)+A313103(n)-A008576(n)` -/
def P14100586172002057711.Spec : Prop :=
  ∀ n, P14100586172002057711.a n = A310459 n

end A310459

/-! ## A310459.P10133016722163894696

`A008458(n)+A008574(n)-A315258(n)`
-/

namespace A310459.P10133016722163894696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315258 n)

end

end A310459.P10133016722163894696

namespace A310459

/-- `A008458(n)+A008574(n)-A315258(n)` -/
def P10133016722163894696.Spec : Prop :=
  ∀ n, P10133016722163894696.a n = A310459 n

end A310459

/-! ## A310459.P8232015741766090697

`A313646(n)-A101455(n)`
-/

namespace A310459.P8232015741766090697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313646 n - A101455 n

end

end A310459.P8232015741766090697

namespace A310459

/-- `A313646(n)-A101455(n)` -/
def P8232015741766090697.Spec : Prop :=
  ∀ n, P8232015741766090697.a n = A310459 n

end A310459

/-! ## A310459.P4852206425685727456

`A314167(n)-A004525(n)`
-/

namespace A310459.P4852206425685727456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - A004525 n

end

end A310459.P4852206425685727456

namespace A310459

/-- `A314167(n)-A004525(n)` -/
def P4852206425685727456.Spec : Prop :=
  ∀ n, P4852206425685727456.a n = A310459 n

end A310459

/-! ## A310459.P6653624668760871008

`∑[A021913(n)]+A314167(n)-n`
-/

namespace A310459.P6653624668760871008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A314167 n - (n : ℤ))

end

end A310459.P6653624668760871008

namespace A310459

/-- `∑[A021913(n)]+A314167(n)-n` -/
def P6653624668760871008.Spec : Prop :=
  ∀ n, P6653624668760871008.a n = A310459 n

end A310459

/-! ## A310459.P9038221234593818167

`Δ[A011848(n)]+A314167(n)-n`
-/

namespace A310459.P9038221234593818167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314167 n - (n : ℤ))

end

end A310459.P9038221234593818167

namespace A310459

/-- `Δ[A011848(n)]+A314167(n)-n` -/
def P9038221234593818167.Spec : Prop :=
  ∀ n, P9038221234593818167.a n = A310459 n

end A310459

/-!
# A310460: Coordination sequence Gal.6.488.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310460, there is no canonical definition to state claims against.
-/

/-! ## A310460.P5059794650704506102

`∑[dr(A296712(A049311(n+1)))]`
-/

namespace A310460.P5059794650704506102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A296712 (A049311 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310460.P5059794650704506102

/-! ## A310460.P4078790461981895993

`A310404(n)+A038189(A084029(n+1))`
-/

namespace A310460.P4078790461981895993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310404 n + A038189 (A084029 (n + 1)).toNat

end

end A310460.P4078790461981895993

/-! ## A310460.P17125736398792495987

`A312160(n)+A264940(A049311(n+1))`
-/

namespace A310460.P17125736398792495987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312160 n + A264940 (A049311 (n + 1)).toNat

end

end A310460.P17125736398792495987

/-! ## A310460.P17432089799492923388

`A008587(n)-A010892(A085153(2*(n+2)))`
-/

namespace A310460.P17432089799492923388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n - A010892 (A085153 (2 * (n + 2))).toNat

end

end A310460.P17432089799492923388

/-!
# A310461: Coordination sequence Gal.6.350.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310461, the canonical program `A310461.P9129682600112881039` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310461 has offset 0).

The definition of A310461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310461.P9059057778950821031

`A163811(n)+5*n`
-/

namespace A310461.P9059057778950821031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 n + (5 * n : ℤ)

end

end A310461.P9059057778950821031

namespace A310461

/-- `A163811(n)+5*n` -/
def P9059057778950821031.Spec : Prop :=
  ∀ n, P9059057778950821031.a n = A310461 n

end A310461

/-! ## A310461.P3505417767559711551

`abs(5*n-A163817(n))`
-/

namespace A310461.P3505417767559711551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 * n : ℤ) - A163817 n|

end

end A310461.P3505417767559711551

namespace A310461

/-- `abs(5*n-A163817(n))` -/
def P3505417767559711551.Spec : Prop :=
  ∀ n, P3505417767559711551.a n = A310461 n

end A310461

/-! ## A310461.P17647234870478638440

`A008706(n)-A134667(n)`
-/

namespace A310461.P17647234870478638440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A134667 n

end

end A310461.P17647234870478638440

namespace A310461

/-- `A008706(n)-A134667(n)` -/
def P17647234870478638440.Spec : Prop :=
  ∀ n, P17647234870478638440.a n = A310461 n

end A310461

/-! ## A310461.P16661737230800152169

`A315075(n)-A102283(n)`
-/

namespace A310461.P16661737230800152169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n - A102283 n

end

end A310461.P16661737230800152169

namespace A310461

/-- `A315075(n)-A102283(n)` -/
def P16661737230800152169.Spec : Prop :=
  ∀ n, P16661737230800152169.a n = A310461 n

end A310461

/-! ## A310461.P14121727026090911651

`A315075(n)-A128834(2*n)`
-/

namespace A310461.P14121727026090911651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n - A128834 (2 * n)

end

end A310461.P14121727026090911651

namespace A310461

/-- `A315075(n)-A128834(2*n)` -/
def P14121727026090911651.Spec : Prop :=
  ∀ n, P14121727026090911651.a n = A310461 n

end A310461

/-! ## A310461.P6913865227036039380

`A008458(n)-(A134667(n)+n)`
-/

namespace A310461.P6913865227036039380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A134667 n + (n : ℤ))

end

end A310461.P6913865227036039380

namespace A310461

/-- `A008458(n)-(A134667(n)+n)` -/
def P6913865227036039380.Spec : Prop :=
  ∀ n, P6913865227036039380.a n = A310461 n

end A310461

/-! ## A310461.P11245382508095152798

`A008574(n)+n-A134667(n)`
-/

namespace A310461.P11245382508095152798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A134667 n)

end

end A310461.P11245382508095152798

namespace A310461

/-- `A008574(n)+n-A134667(n)` -/
def P11245382508095152798.Spec : Prop :=
  ∀ n, P11245382508095152798.a n = A310461 n

end A310461

/-! ## A310461.P16053024801220240257

`A313110(n)+n-A004396(n)`
-/

namespace A310461.P16053024801220240257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n + ((n : ℤ) - A004396 n)

end

end A310461.P16053024801220240257

namespace A310461

/-- `A313110(n)+n-A004396(n)` -/
def P16053024801220240257.Spec : Prop :=
  ∀ n, P16053024801220240257.a n = A310461 n

end A310461

/-! ## A310461.P5465996021214847606

`∑{d}[5*n-A163817(n), A000010(#)]`
-/

namespace A310461.P5465996021214847606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A163817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310461.P5465996021214847606

namespace A310461

/-- `∑{d}[5*n-A163817(n), A000010(#)]` -/
def P5465996021214847606.Spec : Prop :=
  ∀ n, P5465996021214847606.a n = A310461 n

end A310461

/-! ## A310461.P15164795156082970164

`2*A008574(2*n)-A315687(2*n)`
-/

namespace A310461.P15164795156082970164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315687 (2 * n)

end

end A310461.P15164795156082970164

namespace A310461

/-- `2*A008574(2*n)-A315687(2*n)` -/
def P15164795156082970164.Spec : Prop :=
  ∀ n, P15164795156082970164.a n = A310461 n

end A310461

/-! ## A310461.P9129682600112881039

`A219529(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310461

/-- `A219529(n)-A004525(A004396(n))` -/
def P9129682600112881039.Spec : Prop :=
  ∀ n, P9129682600112881039.a n = A310461 n

theorem P9129682600112881039.correct : P9129682600112881039.Spec := by
  intro n
  simp only [A310461]

end A310461

/-! ## A310461.P4940279662441751818

`A219529(n)-A004525(A274616(n))`
-/

namespace A310461.P4940279662441751818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004525 (A274616 n).toNat

end

end A310461.P4940279662441751818

namespace A310461

/-- `A219529(n)-A004525(A274616(n))` -/
def P4940279662441751818.Spec : Prop :=
  ∀ n, P4940279662441751818.a n = A310461 n

end A310461

/-! ## A310461.P1223784629360977152

`A008706(n)-A128834(A128834(n)+n)`
-/

namespace A310461.P1223784629360977152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A128834 (A128834 n + (n : ℤ)).toNat

end

end A310461.P1223784629360977152

namespace A310461

/-- `A008706(n)-A128834(A128834(n)+n)` -/
def P1223784629360977152.Spec : Prop :=
  ∀ n, P1223784629360977152.a n = A310461 n

end A310461

/-! ## A310461.P3893789265006947041

`A004525(n)+A310511(n)-A004396(n)`
-/

namespace A310461.P3893789265006947041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310511 n - A004396 n)

end

end A310461.P3893789265006947041

namespace A310461

/-- `A004525(n)+A310511(n)-A004396(n)` -/
def P3893789265006947041.Spec : Prop :=
  ∀ n, P3893789265006947041.a n = A310461 n

end A310461

/-! ## A310461.P10248656298192879703

`A008486(n)+A313110(n)-A008576(n)`
-/

namespace A310461.P10248656298192879703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313110 n - A008576 n)

end

end A310461.P10248656298192879703

namespace A310461

/-- `A008486(n)+A313110(n)-A008576(n)` -/
def P10248656298192879703.Spec : Prop :=
  ∀ n, P10248656298192879703.a n = A310461 n

end A310461

/-! ## A310461.P9052000120643977750

`A314015(n)-A128834(n)`
-/

namespace A310461.P9052000120643977750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 n - A128834 n

end

end A310461.P9052000120643977750

namespace A310461

/-- `A314015(n)-A128834(n)` -/
def P9052000120643977750.Spec : Prop :=
  ∀ n, P9052000120643977750.a n = A310461 n

end A310461

/-! ## A310461.P12662921905425604135

`A301697(n)-A008612(2*n+1)`
-/

namespace A310461.P12662921905425604135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A008612 (2 * n + 1)

end

end A310461.P12662921905425604135

namespace A310461

/-- `A301697(n)-A008612(2*n+1)` -/
def P12662921905425604135.Spec : Prop :=
  ∀ n, P12662921905425604135.a n = A310461 n

end A310461

/-! ## A310461.P6048729496982149081

`A314247(n)-A004396(n)`
-/

namespace A310461.P6048729496982149081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - A004396 n

end

end A310461.P6048729496982149081

namespace A310461

/-- `A314247(n)-A004396(n)` -/
def P6048729496982149081.Spec : Prop :=
  ∀ n, P6048729496982149081.a n = A310461 n

end A310461

/-! ## A310461.P811713784786162261

`A314247(n)-A002264(2*n+1)`
-/

namespace A310461.P811713784786162261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - A002264 (2 * n + 1)

end

end A310461.P811713784786162261

namespace A310461

/-- `A314247(n)-A002264(2*n+1)` -/
def P811713784786162261.Spec : Prop :=
  ∀ n, P811713784786162261.a n = A310461 n

end A310461

/-! ## A310461.P16909917367761991440

`A074067(A315257(n))`
-/

namespace A310461.P16909917367761991440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315257 n).toNat

end

end A310461.P16909917367761991440

namespace A310461

/-- `A074067(A315257(n))` -/
def P16909917367761991440.Spec : Prop :=
  ∀ n, P16909917367761991440.a n = A310461 n

end A310461

/-!
# A310462: Coordination sequence Gal.5.138.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310462, the canonical program `A310462.P14374953291466899148` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310462 has offset 0).

The definition of A310462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310462.P14374953291466899148

`abs(10*n-A315256(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A310462

/-- `abs(10*n-A315256(n))` -/
def P14374953291466899148.Spec : Prop :=
  ∀ n, P14374953291466899148.a n = A310462 n

theorem P14374953291466899148.correct : P14374953291466899148.Spec := by
  intro n
  simp only [A310462]

end A310462

/-! ## A310462.P17177880472066913096

`2*A008706(n)-A315256(n)`
-/

namespace A310462.P17177880472066913096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315256 n

end

end A310462.P17177880472066913096

namespace A310462

/-- `2*A008706(n)-A315256(n)` -/
def P17177880472066913096.Spec : Prop :=
  ∀ n, P17177880472066913096.a n = A310462 n

end A310462

/-! ## A310462.P7624704229833068515

`A312100(n)+A008612(A016813(n))`
-/

namespace A310462.P7624704229833068515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A008612 (A016813 n).toNat

end

end A310462.P7624704229833068515

namespace A310462

/-- `A312100(n)+A008612(A016813(n))` -/
def P7624704229833068515.Spec : Prop :=
  ∀ n, P7624704229833068515.a n = A310462 n

end A310462

/-! ## A310462.P6193831016789395733

`A008458(n)+A008574(n)-A315256(n)`
-/

namespace A310462.P6193831016789395733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315256 n)

end

end A310462.P6193831016789395733

namespace A310462

/-- `A008458(n)+A008574(n)-A315256(n)` -/
def P6193831016789395733.Spec : Prop :=
  ∀ n, P6193831016789395733.a n = A310462 n

end A310462

/-! ## A310462.P2389744789559447227

`A313125(n)+A004396(n-A004396(n))`
-/

namespace A310462.P2389744789559447227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A310462.P2389744789559447227

namespace A310462

/-- `A313125(n)+A004396(n-A004396(n))` -/
def P2389744789559447227.Spec : Prop :=
  ∀ n, P2389744789559447227.a n = A310462 n

end A310462

/-! ## A310462.P5897271778781400514

`A314163(n)-A004396(A004396(n))`
-/

namespace A310462.P5897271778781400514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A004396 (A004396 n).toNat

end

end A310462.P5897271778781400514

namespace A310462

/-- `A314163(n)-A004396(A004396(n))` -/
def P5897271778781400514.Spec : Prop :=
  ∀ n, P5897271778781400514.a n = A310462 n

end A310462

/-! ## A310462.P4192352961786780962

`A314251(n)-A004396(n)`
-/

namespace A310462.P4192352961786780962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - A004396 n

end

end A310462.P4192352961786780962

namespace A310462

/-- `A314251(n)-A004396(n)` -/
def P4192352961786780962.Spec : Prop :=
  ∀ n, P4192352961786780962.a n = A310462 n

end A310462

/-! ## A310462.P17071275201267557361

`A314251(n)-A002264(2*n+1)`
-/

namespace A310462.P17071275201267557361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - A002264 (2 * n + 1)

end

end A310462.P17071275201267557361

namespace A310462

/-- `A314251(n)-A002264(2*n+1)` -/
def P17071275201267557361.Spec : Prop :=
  ∀ n, P17071275201267557361.a n = A310462 n

end A310462

/-! ## A310462.P10288440832406027867

`A314251(n)-A004525(A004773(n))`
-/

namespace A310462.P10288440832406027867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - A004525 (A004773 n).toNat

end

end A310462.P10288440832406027867

namespace A310462

/-- `A314251(n)-A004525(A004773(n))` -/
def P10288440832406027867.Spec : Prop :=
  ∀ n, P10288440832406027867.a n = A310462 n

end A310462

/-! ## A310462.P1682817265938923402

`A005843(A008706(n))-A315256(n)`
-/

namespace A310462.P1682817265938923402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315256 n

end

end A310462.P1682817265938923402

namespace A310462

/-- `A005843(A008706(n))-A315256(n)` -/
def P1682817265938923402.Spec : Prop :=
  ∀ n, P1682817265938923402.a n = A310462 n

end A310462

/-!
# A310463: Coordination sequence Gal.4.102.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310463, there is no canonical definition to state claims against.
-/

/-! ## A310463.P12256517489868413323

`A310503(n)-A055641(A115004(n+1))`
-/

namespace A310463.P12256517489868413323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n - A055641 (A115004 (n + 1)).toNat

end

end A310463.P12256517489868413323

/-! ## A310463.P8520296854778754820

`A313289(n)+A056594(A196140(n+1))`
-/

namespace A310463.P8520296854778754820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313289 n + A056594 (A196140 (n + 1)).toNat

end

end A310463.P8520296854778754820

/-! ## A310463.P4304891586903097203

`A310441(n)+∑[A011699(A235496(n))]`
-/

namespace A310463.P4304891586903097203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011699 (A235496 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310441 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310463.P4304891586903097203

/-! ## A310463.P13398566717587812223

`A310398(n)+A079066(A030494(n+1))`
-/

namespace A310463.P13398566717587812223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n + A079066 (A030494 (n + 1)).toNat

end

end A310463.P13398566717587812223

/-! ## A310463.P6166558377012158415

`A301680(n)+A083927(A000108(n))`
-/

namespace A310463.P6166558377012158415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n + A083927 (A000108 n).toNat

end

end A310463.P6166558377012158415

/-!
# A310464: Coordination sequence Gal.5.139.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310464, the canonical program `A310464.P516578395885125778` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310464 has offset 0).

The definition of A310464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310464.P516578395885125778

`abs(10*n-A315255(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A310464

/-- `abs(10*n-A315255(n))` -/
def P516578395885125778.Spec : Prop :=
  ∀ n, P516578395885125778.a n = A310464 n

theorem P516578395885125778.correct : P516578395885125778.Spec := by
  intro n
  simp only [A310464]

end A310464

/-! ## A310464.P2559487334461293927

`A314111(n)-A330025(n)`
-/

namespace A310464.P2559487334461293927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314111 n - A330025 n

end

end A310464.P2559487334461293927

namespace A310464

/-- `A314111(n)-A330025(n)` -/
def P2559487334461293927.Spec : Prop :=
  ∀ n, P2559487334461293927.a n = A310464 n

end A310464

/-! ## A310464.P10852403559629399710

`A313078(n)+Δ[A011858(n)]`
-/

namespace A310464.P10852403559629399710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313078 n + (f1 (n + 1) - f1 n)

end

end A310464.P10852403559629399710

namespace A310464

/-- `A313078(n)+Δ[A011858(n)]` -/
def P10852403559629399710.Spec : Prop :=
  ∀ n, P10852403559629399710.a n = A310464 n

end A310464

/-! ## A310464.P11469015027653052595

`A313078(n)+A057354(n+1)`
-/

namespace A310464.P11469015027653052595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313078 n + A057354 (n + 1)

end

end A310464.P11469015027653052595

namespace A310464

/-- `A313078(n)+A057354(n+1)` -/
def P11469015027653052595.Spec : Prop :=
  ∀ n, P11469015027653052595.a n = A310464 n

end A310464

/-! ## A310464.P4598938331601942681

`A313078(n)+A134119(2*n)`
-/

namespace A310464.P4598938331601942681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313078 n + A134119 (2 * n)

end

end A310464.P4598938331601942681

namespace A310464

/-- `A313078(n)+A134119(2*n)` -/
def P4598938331601942681.Spec : Prop :=
  ∀ n, P4598938331601942681.a n = A310464 n

end A310464

/-! ## A310464.P9780585546853941276

`2*A008706(n)-A315255(n)`
-/

namespace A310464.P9780585546853941276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315255 n

end

end A310464.P9780585546853941276

namespace A310464

/-- `2*A008706(n)-A315255(n)` -/
def P9780585546853941276.Spec : Prop :=
  ∀ n, P9780585546853941276.a n = A310464 n

end A310464

/-! ## A310464.P3101426227904026660

`A315679(n)-2*A330025(n)`
-/

namespace A310464.P3101426227904026660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - 2 * A330025 n

end

end A310464.P3101426227904026660

namespace A310464

/-- `A315679(n)-2*A330025(n)` -/
def P3101426227904026660.Spec : Prop :=
  ∀ n, P3101426227904026660.a n = A310464 n

end A310464

/-! ## A310464.P18357854998927043701

`A008458(n)+A008574(n)-A315255(n)`
-/

namespace A310464.P18357854998927043701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315255 n)

end

end A310464.P18357854998927043701

namespace A310464

/-- `A008458(n)+A008574(n)-A315255(n)` -/
def P18357854998927043701.Spec : Prop :=
  ∀ n, P18357854998927043701.a n = A310464 n

end A310464

/-! ## A310464.P18427278637906929469

`A314100(n)-A330025(A330025(n)+n)`
-/

namespace A310464.P18427278637906929469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314100 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A310464.P18427278637906929469

namespace A310464

/-- `A314100(n)-A330025(A330025(n)+n)` -/
def P18427278637906929469.Spec : Prop :=
  ∀ n, P18427278637906929469.a n = A310464 n

end A310464

/-! ## A310464.P6030987047968628323

`A005843(A008706(n))-A315255(n)`
-/

namespace A310464.P6030987047968628323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315255 n

end

end A310464.P6030987047968628323

namespace A310464

/-- `A005843(A008706(n))-A315255(n)` -/
def P6030987047968628323.Spec : Prop :=
  ∀ n, P6030987047968628323.a n = A310464 n

end A310464

/-!
# A310465: Coordination sequence Gal.6.342.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310465, the canonical program `A310465.P7677132150427515020` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310465 has offset 0).

The definition of A310465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310465.P5237388882980115098

`abs(10*n-A315254(n))`
-/

namespace A310465.P5237388882980115098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315254 n|

end

end A310465.P5237388882980115098

namespace A310465

/-- `abs(10*n-A315254(n))` -/
def P5237388882980115098.Spec : Prop :=
  ∀ n, P5237388882980115098.a n = A310465 n

end A310465

/-! ## A310465.P17520873742580044518

`2*A008706(n)-A315254(n)`
-/

namespace A310465.P17520873742580044518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315254 n

end

end A310465.P17520873742580044518

namespace A310465

/-- `2*A008706(n)-A315254(n)` -/
def P17520873742580044518.Spec : Prop :=
  ∀ n, P17520873742580044518.a n = A310465 n

end A310465

/-! ## A310465.P684166725204798782

`2*A313128(n)-A312163(n)`
-/

namespace A310465.P684166725204798782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313128 n - A312163 n

end

end A310465.P684166725204798782

namespace A310465

/-- `2*A313128(n)-A312163(n)` -/
def P684166725204798782.Spec : Prop :=
  ∀ n, P684166725204798782.a n = A310465 n

end A310465

/-! ## A310465.P1302524771355685873

`A135042(2*n+1)-A315254(n)`
-/

namespace A310465.P1302524771355685873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315254 n

end

end A310465.P1302524771355685873

namespace A310465

/-- `A135042(2*n+1)-A315254(n)` -/
def P1302524771355685873.Spec : Prop :=
  ∀ n, P1302524771355685873.a n = A310465 n

end A310465

/-! ## A310465.P7063809193742200953

`A008458(n)+A008574(n)-A315254(n)`
-/

namespace A310465.P7063809193742200953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315254 n)

end

end A310465.P7063809193742200953

namespace A310465

/-- `A008458(n)+A008574(n)-A315254(n)` -/
def P7063809193742200953.Spec : Prop :=
  ∀ n, P7063809193742200953.a n = A310465 n

end A310465

/-! ## A310465.P11190905069826121017

`gcd(10*n-A315254(n), A000122(A005843(2*n+1)))`
-/

namespace A310465.P11190905069826121017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((10 * n : ℤ) - A315254 n) (A000122 (A005843 (2 * n + 1)).toNat)

end

end A310465.P11190905069826121017

namespace A310465

/-- `gcd(10*n-A315254(n), A000122(A005843(2*n+1)))` -/
def P11190905069826121017.Spec : Prop :=
  ∀ n, (P11190905069826121017.a n : ℤ) = A310465 n

end A310465

/-! ## A310465.P9987345926260082299

`A312163(n)+A005843(A313128(n)-A312163(n))`
-/

namespace A310465.P9987345926260082299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312163 n + A005843 (A313128 n - A312163 n).toNat

end

end A310465.P9987345926260082299

namespace A310465

/-- `A312163(n)+A005843(A313128(n)-A312163(n))` -/
def P9987345926260082299.Spec : Prop :=
  ∀ n, P9987345926260082299.a n = A310465 n

end A310465

/-! ## A310465.P18133365474040137522

`(A310533(n)+A310380(n))/2`
-/

namespace A310465.P18133365474040137522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310533 n + A310380 n : ℚ) / 2

end

end A310465.P18133365474040137522

namespace A310465

/-- `(A310533(n)+A310380(n))/2` -/
def P18133365474040137522.Spec : Prop :=
  ∀ n, P18133365474040137522.a n = (A310465 n : ℚ)

end A310465

/-! ## A310465.P7677132150427515020

`A310380(n)+A001281(A310533(n)-A310380(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A310465

/-- `A310380(n)+A001281(A310533(n)-A310380(n))` -/
def P7677132150427515020.Spec : Prop :=
  ∀ n, P7677132150427515020.a n = A310465 n

theorem P7677132150427515020.correct : P7677132150427515020.Spec := by
  intro n
  simp only [A310465]

end A310465

/-! ## A310465.P13329235752273839991

`A310380(n)+A004525(A310533(n)-A310380(n))`
-/

namespace A310465.P13329235752273839991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310380 n + A004525 (A310533 n - A310380 n).toNat

end

end A310465.P13329235752273839991

namespace A310465

/-- `A310380(n)+A004525(A310533(n)-A310380(n))` -/
def P13329235752273839991.Spec : Prop :=
  ∀ n, P13329235752273839991.a n = A310465 n

end A310465

/-! ## A310465.P12045579169934488940

`A005843(A008706(n))-A315254(n)`
-/

namespace A310465.P12045579169934488940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315254 n

end

end A310465.P12045579169934488940

namespace A310465

/-- `A005843(A008706(n))-A315254(n)` -/
def P12045579169934488940.Spec : Prop :=
  ∀ n, P12045579169934488940.a n = A310465 n

end A310465

/-! ## A310465.P3023769672595475777

`A005843(A313128(n))-A312163(n)`
-/

namespace A310465.P3023769672595475777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313128 n).toNat - A312163 n

end

end A310465.P3023769672595475777

namespace A310465

/-- `A005843(A313128(n))-A312163(n)` -/
def P3023769672595475777.Spec : Prop :=
  ∀ n, P3023769672595475777.a n = A310465 n

end A310465

/-! ## A310465.P4905034321047646896

`A065502(A008458(n))-A315254(n)`
-/

namespace A310465.P4905034321047646896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315254 n

end

end A310465.P4905034321047646896

namespace A310465

/-- `A065502(A008458(n))-A315254(n)` -/
def P4905034321047646896.Spec : Prop :=
  ∀ n, P4905034321047646896.a n = A310465 n

end A310465

/-! ## A310465.P1052595009018524445

`A271324(A022144(n))-A315254(n)`
-/

namespace A310465.P1052595009018524445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 (A022144 n).toNat - A315254 n

end

end A310465.P1052595009018524445

namespace A310465

/-- `A271324(A022144(n))-A315254(n)` -/
def P1052595009018524445.Spec : Prop :=
  ∀ n, P1052595009018524445.a n = A310465 n

end A310465

/-! ## A310465.P15399118546223873938

`A001281(A310533(n)+A310380(n))`
-/

namespace A310465.P15399118546223873938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310533 n + A310380 n).toNat

end

end A310465.P15399118546223873938

namespace A310465

/-- `A001281(A310533(n)+A310380(n))` -/
def P15399118546223873938.Spec : Prop :=
  ∀ n, P15399118546223873938.a n = A310465 n

end A310465

/-! ## A310465.P5357155466145560265

`A004525(A310533(n)+A310380(n))`
-/

namespace A310465.P5357155466145560265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310533 n + A310380 n).toNat

end

end A310465.P5357155466145560265

namespace A310465

/-- `A004525(A310533(n)+A310380(n))` -/
def P5357155466145560265.Spec : Prop :=
  ∀ n, P5357155466145560265.a n = A310465 n

end A310465

/-!
# A310466: Coordination sequence Gal.6.343.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310466, the canonical program `A310466.P461030892065603312` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310466 has offset 0).

The definition of A310466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310466.P14396154292423620536

`abs(10*n-A315253(n))`
-/

namespace A310466.P14396154292423620536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315253 n|

end

end A310466.P14396154292423620536

namespace A310466

/-- `abs(10*n-A315253(n))` -/
def P14396154292423620536.Spec : Prop :=
  ∀ n, P14396154292423620536.a n = A310466 n

end A310466

/-! ## A310466.P558432315528008331

`A313119(n)+round(n/3)`
-/

namespace A310466.P558432315528008331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n + SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A310466.P558432315528008331

namespace A310466

/-- `A313119(n)+round(n/3)` -/
def P558432315528008331.Spec : Prop :=
  ∀ n, P558432315528008331.a n = A310466 n

end A310466

/-! ## A310466.P16073040707551133028

`A312963(n)+∑[A021913(n)]`
-/

namespace A310466.P16073040707551133028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310466.P16073040707551133028

namespace A310466

/-- `A312963(n)+∑[A021913(n)]` -/
def P16073040707551133028.Spec : Prop :=
  ∀ n, P16073040707551133028.a n = A310466 n

end A310466

/-! ## A310466.P6267746036734570418

`A312963(n)+Δ[A011848(n)]`
-/

namespace A310466.P6267746036734570418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + (f1 (n + 1) - f1 n)

end

end A310466.P6267746036734570418

namespace A310466

/-- `A312963(n)+Δ[A011848(n)]` -/
def P6267746036734570418.Spec : Prop :=
  ∀ n, P6267746036734570418.a n = A310466 n

end A310466

/-! ## A310466.P771670133786607480

`A312963(n)+A004524(n+1)`
-/

namespace A310466.P771670133786607480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + A004524 (n + 1)

end

end A310466.P771670133786607480

namespace A310466

/-- `A312963(n)+A004524(n+1)` -/
def P771670133786607480.Spec : Prop :=
  ∀ n, P771670133786607480.a n = A310466 n

end A310466

/-! ## A310466.P6249386520190917981

`A312963(n)+n-A004525(n)`
-/

namespace A310466.P6249386520190917981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + ((n : ℤ) - A004525 n)

end

end A310466.P6249386520190917981

namespace A310466

/-- `A312963(n)+n-A004525(n)` -/
def P6249386520190917981.Spec : Prop :=
  ∀ n, P6249386520190917981.a n = A310466 n

end A310466

/-! ## A310466.P11520354038600001737

`A312963(n)+A002265(A003485(n))`
-/

namespace A310466.P11520354038600001737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + A002265 (A003485 n).toNat

end

end A310466.P11520354038600001737

namespace A310466

/-- `A312963(n)+A002265(A003485(n))` -/
def P11520354038600001737.Spec : Prop :=
  ∀ n, P11520354038600001737.a n = A310466 n

end A310466

/-! ## A310466.P461030892065603312

`A219529(n)-A046978(A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310466

/-- `A219529(n)-A046978(A004396(n))` -/
def P461030892065603312.Spec : Prop :=
  ∀ n, P461030892065603312.a n = A310466 n

theorem P461030892065603312.correct : P461030892065603312.Spec := by
  intro n
  simp only [A310466]

end A310466

/-! ## A310466.P15119163499001992830

`A008486(n)+A313119(n)-A008576(n)`
-/

namespace A310466.P15119163499001992830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313119 n - A008576 n)

end

end A310466.P15119163499001992830

namespace A310466

/-- `A008486(n)+A313119(n)-A008576(n)` -/
def P15119163499001992830.Spec : Prop :=
  ∀ n, P15119163499001992830.a n = A310466 n

end A310466

/-! ## A310466.P970586978946546953

`A008458(n)+A008574(n)-A315253(n)`
-/

namespace A310466.P970586978946546953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315253 n)

end

end A310466.P970586978946546953

namespace A310466

/-- `A008458(n)+A008574(n)-A315253(n)` -/
def P970586978946546953.Spec : Prop :=
  ∀ n, P970586978946546953.a n = A310466 n

end A310466

/-! ## A310466.P18376010657586838798

`(A008592(n)-A315253(n))^(A000040(n+1)%2)`
-/

namespace A310466.P18376010657586838798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A315253 n : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A310466.P18376010657586838798

namespace A310466

/-- `(A008592(n)-A315253(n))^(A000040(n+1)%2)` -/
def P18376010657586838798.Spec : Prop :=
  ∀ n, P18376010657586838798.a n = (A310466 n : ℚ)

end A310466

/-! ## A310466.P18275436048306255403

`A004396(2*A311964(n))-A004396(n)`
-/

namespace A310466.P18275436048306255403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A311964 n).toNat - A004396 n

end

end A310466.P18275436048306255403

namespace A310466

/-- `A004396(2*A311964(n))-A004396(n)` -/
def P18275436048306255403.Spec : Prop :=
  ∀ n, P18275436048306255403.a n = A310466 n

end A310466

/-!
# A310467: Coordination sequence Gal.5.216.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310467, there is no canonical definition to state claims against.
-/

/-! ## A310467.P15575786145438487022

`A232548(A002064(n))+A008574(n)`
-/

namespace A310467.P15575786145438487022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232548 (A002064 n).toNat + A008574 n

end

end A310467.P15575786145438487022

/-! ## A310467.P14772149618421149300

`xor(A008706(n), A125203(A002108(n+1)))`
-/

namespace A310467.P14772149618421149300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008706 n) (A125203 (A002108 (n + 1)).toNat)

end

end A310467.P14772149618421149300

/-! ## A310467.P8791782592875698641

`A244895(A250120(3*n+1))+A104015(A104004(n+2))+5*n`
-/

namespace A310467.P8791782592875698641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A250120 (3 * n + 1)).toNat + (A104015 (A104004 (n + 2)).toNat + (5 * n : ℤ))

end

end A310467.P8791782592875698641

/-! ## A310467.P5024125551400208345

`∑[A338480(xor(n, A000125(n)))]`
-/

namespace A310467.P5024125551400208345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338480 (Int.xor (n : ℤ) (A000125 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310467.P5024125551400208345

/-!
# A310469: Coordination sequence Gal.5.141.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310469, the canonical program `A310469.P18178074179781318724` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310469 has offset 0).

The definition of A310469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310469.P7331157925894790412

`A313090(n)+Δ[A011858(n)]`
-/

namespace A310469.P7331157925894790412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 n + (f1 (n + 1) - f1 n)

end

end A310469.P7331157925894790412

namespace A310469

/-- `A313090(n)+Δ[A011858(n)]` -/
def P7331157925894790412.Spec : Prop :=
  ∀ n, P7331157925894790412.a n = A310469 n

end A310469

/-! ## A310469.P14476555629947817545

`A105385(n+1)+A008706(n)`
-/

namespace A310469.P14476555629947817545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105385 (n + 1) + A008706 n

end

end A310469.P14476555629947817545

namespace A310469

/-- `A105385(n+1)+A008706(n)` -/
def P14476555629947817545.Spec : Prop :=
  ∀ n, P14476555629947817545.a n = A310469 n

end A310469

/-! ## A310469.P6063301408718865607

`A092202(n+2)+A008706(n)`
-/

namespace A310469.P6063301408718865607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092202 (n + 2) + A008706 n

end

end A310469.P6063301408718865607

namespace A310469

/-- `A092202(n+2)+A008706(n)` -/
def P6063301408718865607.Spec : Prop :=
  ∀ n, P6063301408718865607.a n = A310469 n

end A310469

/-! ## A310469.P18178074179781318724

`A310409(n)+A002266(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A310469

/-- `A310409(n)+A002266(n+2)` -/
def P18178074179781318724.Spec : Prop :=
  ∀ n, P18178074179781318724.a n = A310469 n

theorem P18178074179781318724.correct : P18178074179781318724.Spec := by
  intro n
  simp only [A310469]

end A310469

/-! ## A310469.P1347584490705781728

`A008706(n)-A105384(2*(n+2))`
-/

namespace A310469.P1347584490705781728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A105384 (2 * (n + 2))

end

end A310469.P1347584490705781728

namespace A310469

/-- `A008706(n)-A105384(2*(n+2))` -/
def P1347584490705781728.Spec : Prop :=
  ∀ n, P1347584490705781728.a n = A310469 n

end A310469

/-! ## A310469.P6690693554236624099

`A265188(n+1)-(2*n-A250120(n))`
-/

namespace A310469.P6690693554236624099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265188 (n + 1) - ((2 * n : ℤ) - A250120 n)

end

end A310469.P6690693554236624099

namespace A310469

/-- `A265188(n+1)-(2*n-A250120(n))` -/
def P6690693554236624099.Spec : Prop :=
  ∀ n, P6690693554236624099.a n = A310469 n

end A310469

/-! ## A310469.P895292920477379392

`abs(10*n-A315247(n))`
-/

namespace A310469.P895292920477379392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315247 n|

end

end A310469.P895292920477379392

namespace A310469

/-- `abs(10*n-A315247(n))` -/
def P895292920477379392.Spec : Prop :=
  ∀ n, P895292920477379392.a n = A310469 n

end A310469

/-! ## A310469.P8133562430486342625

`floor(A010015(n)/A315247(n))`
-/

namespace A310469.P8133562430486342625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315247 n : ℚ)⌋

end

end A310469.P8133562430486342625

namespace A310469

/-- `floor(A010015(n)/A315247(n))` -/
def P8133562430486342625.Spec : Prop :=
  ∀ n, P8133562430486342625.a n = A310469 n

end A310469

/-! ## A310469.P3372766731200940001

`A008458(n)+A008574(n)-A315247(n)`
-/

namespace A310469.P3372766731200940001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315247 n)

end

end A310469.P3372766731200940001

namespace A310469

/-- `A008458(n)+A008574(n)-A315247(n)` -/
def P3372766731200940001.Spec : Prop :=
  ∀ n, P3372766731200940001.a n = A310469 n

end A310469

/-! ## A310469.P5322113955608140934

`Δ[A011858(n)]+A301718(n)-n`
-/

namespace A310469.P5322113955608140934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A301718 n - (n : ℤ))

end

end A310469.P5322113955608140934

namespace A310469

/-- `Δ[A011858(n)]+A301718(n)-n` -/
def P5322113955608140934.Spec : Prop :=
  ∀ n, P5322113955608140934.a n = A310469 n

end A310469

/-! ## A310469.P14537502654284077273

`A074067(A315247(n))`
-/

namespace A310469.P14537502654284077273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315247 n).toNat

end

end A310469.P14537502654284077273

namespace A310469

/-- `A074067(A315247(n))` -/
def P14537502654284077273.Spec : Prop :=
  ∀ n, P14537502654284077273.a n = A310469 n

end A310469

/-! ## A310469.P13810967618368945211

`A008706(n)-A010891(A017017(n))`
-/

namespace A310469.P13810967618368945211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A010891 (A017017 n).toNat

end

end A310469.P13810967618368945211

namespace A310469

/-- `A008706(n)-A010891(A017017(n))` -/
def P13810967618368945211.Spec : Prop :=
  ∀ n, P13810967618368945211.a n = A310469 n

end A310469

/-! ## A310469.P5277704932535626235

`A008706(n)-A010891(A017101(n)-n)`
-/

namespace A310469.P5277704932535626235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A010891 (A017101 n - (n : ℤ)).toNat

end

end A310469.P5277704932535626235

namespace A310469

/-- `A008706(n)-A010891(A017101(n)-n)` -/
def P5277704932535626235.Spec : Prop :=
  ∀ n, P5277704932535626235.a n = A310469 n

end A310469

/-! ## A310469.P10398293567584248367

`A310238(2*n)-3*n`
-/

namespace A310469.P10398293567584248367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310238 (2 * n) - (3 * n : ℤ)

end

end A310469.P10398293567584248367

namespace A310469

/-- `A310238(2*n)-3*n` -/
def P10398293567584248367.Spec : Prop :=
  ∀ n, P10398293567584248367.a n = A310469 n

end A310469

/-! ## A310469.P4910105281479139095

`A004525(A310238(2*n))+n`
-/

namespace A310469.P4910105281479139095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310238 (2 * n)).toNat + (n : ℤ)

end

end A310469.P4910105281479139095

namespace A310469

/-- `A004525(A310238(2*n))+n` -/
def P4910105281479139095.Spec : Prop :=
  ∀ n, P4910105281479139095.a n = A310469 n

end A310469

/-! ## A310469.P14893372300519649818

`A010891(A017101(n))+A008706(n)`
-/

namespace A310469.P14893372300519649818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010891 (A017101 n).toNat + A008706 n

end

end A310469.P14893372300519649818

namespace A310469

/-- `A010891(A017101(n))+A008706(n)` -/
def P14893372300519649818.Spec : Prop :=
  ∀ n, P14893372300519649818.a n = A310469 n

end A310469

/-! ## A310469.P5707656971007209647

`A313255(2*n)-A008587(n)`
-/

namespace A310469.P5707656971007209647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313255 (2 * n) - A008587 n

end

end A310469.P5707656971007209647

namespace A310469

/-- `A313255(2*n)-A008587(n)` -/
def P5707656971007209647.Spec : Prop :=
  ∀ n, P5707656971007209647.a n = A310469 n

end A310469

/-! ## A310469.P13723926264492521576

`A014019(A017557(n))+A008706(n)`
-/

namespace A310469.P13723926264492521576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (A017557 n).toNat + A008706 n

end

end A310469.P13723926264492521576

namespace A310469

/-- `A014019(A017557(n))+A008706(n)` -/
def P13723926264492521576.Spec : Prop :=
  ∀ n, P13723926264492521576.a n = A310469 n

end A310469

/-!
# A310470: Coordination sequence Gal.6.349.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310470, the canonical program `A310470.P16306028969988817199` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310470 has offset 0).

The definition of A310470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310470.P12997037082946052169

`A151988(A311801(n))`
-/

namespace A310470.P12997037082946052169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A311801 n).toNat

end

end A310470.P12997037082946052169

namespace A310470

/-- `A151988(A311801(n))` -/
def P12997037082946052169.Spec : Prop :=
  ∀ n, P12997037082946052169.a n = A310470 n

end A310470

/-! ## A310470.P10903804371710928096

`A314022(n)-A128834(n)`
-/

namespace A310470.P10903804371710928096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n - A128834 n

end

end A310470.P10903804371710928096

namespace A310470

/-- `A314022(n)-A128834(n)` -/
def P10903804371710928096.Spec : Prop :=
  ∀ n, P10903804371710928096.a n = A310470 n

end A310470

/-! ## A310470.P3603846720206683271

`A312969(n)+∑[A021913(n)]`
-/

namespace A310470.P3603846720206683271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310470.P3603846720206683271

namespace A310470

/-- `A312969(n)+∑[A021913(n)]` -/
def P3603846720206683271.Spec : Prop :=
  ∀ n, P3603846720206683271.a n = A310470 n

end A310470

/-! ## A310470.P2332042749494629768

`A312969(n)+Δ[A011848(n)]`
-/

namespace A310470.P2332042749494629768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n + (f1 (n + 1) - f1 n)

end

end A310470.P2332042749494629768

namespace A310470

/-- `A312969(n)+Δ[A011848(n)]` -/
def P2332042749494629768.Spec : Prop :=
  ∀ n, P2332042749494629768.a n = A310470 n

end A310470

/-! ## A310470.P2219808829650199972

`A310511(n)-Δ[A011865(n)]`
-/

namespace A310470.P2219808829650199972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n - (f1 (n + 1) - f1 n)

end

end A310470.P2219808829650199972

namespace A310470

/-- `A310511(n)-Δ[A011865(n)]` -/
def P2219808829650199972.Spec : Prop :=
  ∀ n, P2219808829650199972.a n = A310470 n

end A310470

/-! ## A310470.P7934833894137794711

`A312969(n)+A004524(n+1)`
-/

namespace A310470.P7934833894137794711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n + A004524 (n + 1)

end

end A310470.P7934833894137794711

namespace A310470

/-- `A312969(n)+A004524(n+1)` -/
def P7934833894137794711.Spec : Prop :=
  ∀ n, P7934833894137794711.a n = A310470 n

end A310470

/-! ## A310470.P16359532540859079602

`A314022(n)+A010892(n+2)`
-/

namespace A310470.P16359532540859079602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314022 n + A010892 (n + 2)

end

end A310470.P16359532540859079602

namespace A310470

/-- `A314022(n)+A010892(n+2)` -/
def P16359532540859079602.Spec : Prop :=
  ∀ n, P16359532540859079602.a n = A310470 n

end A310470

/-! ## A310470.P72535105476492729

`A312969(n)+n-A004525(n)`
-/

namespace A310470.P72535105476492729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n + ((n : ℤ) - A004525 n)

end

end A310470.P72535105476492729

namespace A310470

/-- `A312969(n)+n-A004525(n)` -/
def P72535105476492729.Spec : Prop :=
  ∀ n, P72535105476492729.a n = A310470 n

end A310470

/-! ## A310470.P3020809653595704836

`A312926(n)+n-A004396(A004525(n))`
-/

namespace A310470.P3020809653595704836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A310470.P3020809653595704836

namespace A310470

/-- `A312926(n)+n-A004396(A004525(n))` -/
def P3020809653595704836.Spec : Prop :=
  ∀ n, P3020809653595704836.a n = A310470 n

end A310470

/-! ## A310470.P9153937572067861118

`A313136(n)+A004396(n-A004525(n))`
-/

namespace A310470.P9153937572067861118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A310470.P9153937572067861118

namespace A310470

/-- `A313136(n)+A004396(n-A004525(n))` -/
def P9153937572067861118.Spec : Prop :=
  ∀ n, P9153937572067861118.a n = A310470 n

end A310470

/-! ## A310470.P16306028969988817199

`A004396(n)+A310393(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A310470

/-- `A004396(n)+A310393(n)-A004525(A004396(n))` -/
def P16306028969988817199.Spec : Prop :=
  ∀ n, P16306028969988817199.a n = A310470 n

theorem P16306028969988817199.correct : P16306028969988817199.Spec := by
  intro n
  simp only [A310470]

end A310470

/-! ## A310470.P7376429728057685454

`A004525(n)+A310452(n)-A004396(A004525(n))`
-/

namespace A310470.P7376429728057685454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310452 n - A004396 (A004525 n).toNat)

end

end A310470.P7376429728057685454

namespace A310470

/-- `A004525(n)+A310452(n)-A004396(A004525(n))` -/
def P7376429728057685454.Spec : Prop :=
  ∀ n, P7376429728057685454.a n = A310470 n

end A310470

/-! ## A310470.P11412795947130264166

`A314142(n)-A004525(A004396(n))`
-/

namespace A310470.P11412795947130264166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314142 n - A004525 (A004396 n).toNat

end

end A310470.P11412795947130264166

namespace A310470

/-- `A314142(n)-A004525(A004396(n))` -/
def P11412795947130264166.Spec : Prop :=
  ∀ n, P11412795947130264166.a n = A310470 n

end A310470

/-! ## A310470.P16981167425223866984

`abs(10*n-A315246(n))`
-/

namespace A310470.P16981167425223866984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315246 n|

end

end A310470.P16981167425223866984

namespace A310470

/-- `abs(10*n-A315246(n))` -/
def P16981167425223866984.Spec : Prop :=
  ∀ n, P16981167425223866984.a n = A310470 n

end A310470

/-! ## A310470.P13393347004004201329

`floor(A010015(n)/A315246(n))`
-/

namespace A310470.P13393347004004201329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315246 n : ℚ)⌋

end

end A310470.P13393347004004201329

namespace A310470

/-- `floor(A010015(n)/A315246(n))` -/
def P13393347004004201329.Spec : Prop :=
  ∀ n, P13393347004004201329.a n = A310470 n

end A310470

/-! ## A310470.P2068664977447685190

`2*A008706(n)-A315246(n)`
-/

namespace A310470.P2068664977447685190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315246 n

end

end A310470.P2068664977447685190

namespace A310470

/-- `2*A008706(n)-A315246(n)` -/
def P2068664977447685190.Spec : Prop :=
  ∀ n, P2068664977447685190.a n = A310470 n

end A310470

/-! ## A310470.P11847263217624832203

`A008458(n)+A008574(n)-A315246(n)`
-/

namespace A310470.P11847263217624832203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315246 n)

end

end A310470.P11847263217624832203

namespace A310470

/-- `A008458(n)+A008574(n)-A315246(n)` -/
def P11847263217624832203.Spec : Prop :=
  ∀ n, P11847263217624832203.a n = A310470 n

end A310470

/-! ## A310470.P11199199486872255996

`A005843(A008706(n))-A315246(n)`
-/

namespace A310470.P11199199486872255996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315246 n

end

end A310470.P11199199486872255996

namespace A310470

/-- `A005843(A008706(n))-A315246(n)` -/
def P11199199486872255996.Spec : Prop :=
  ∀ n, P11199199486872255996.a n = A310470 n

end A310470

/-! ## A310470.P12846592985269261503

`A074067(A315246(n))`
-/

namespace A310470.P12846592985269261503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315246 n).toNat

end

end A310470.P12846592985269261503

namespace A310470

/-- `A074067(A315246(n))` -/
def P12846592985269261503.Spec : Prop :=
  ∀ n, P12846592985269261503.a n = A310470 n

end A310470

/-!
# A310471: Coordination sequence Gal.6.346.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310471, the canonical program `A310471.P16012816107097584172` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310471 has offset 0).

The definition of A310471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310471.P16012816107097584172

`abs(10*n-A315245(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A310471

/-- `abs(10*n-A315245(n))` -/
def P16012816107097584172.Spec : Prop :=
  ∀ n, P16012816107097584172.a n = A310471 n

theorem P16012816107097584172.correct : P16012816107097584172.Spec := by
  intro n
  simp only [A310471]

end A310471

/-! ## A310471.P2991512799926615061

`2*A008706(n)-A315245(n)`
-/

namespace A310471.P2991512799926615061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315245 n

end

end A310471.P2991512799926615061

namespace A310471

/-- `2*A008706(n)-A315245(n)` -/
def P2991512799926615061.Spec : Prop :=
  ∀ n, P2991512799926615061.a n = A310471 n

end A310471

/-! ## A310471.P210436439291538803

`A135042(2*n+1)-A315245(n)`
-/

namespace A310471.P210436439291538803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315245 n

end

end A310471.P210436439291538803

namespace A310471

/-- `A135042(2*n+1)-A315245(n)` -/
def P210436439291538803.Spec : Prop :=
  ∀ n, P210436439291538803.a n = A310471 n

end A310471

/-! ## A310471.P1429171644012787480

`(10*n-A315245(n))*A051023(a((n+1)%n))` with `a(0)=1`
-/

namespace A310471.P1429171644012787480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((10 * n : ℤ) - A315245 n) * A051023 (a ((n + 1) % n)).toNat

end

end A310471.P1429171644012787480

namespace A310471

/-- `(10*n-A315245(n))*A051023(a((n+1)%n))` -/
def P1429171644012787480.Spec : Prop :=
  ∀ n, P1429171644012787480.a n = A310471 n

end A310471

/-! ## A310471.P10379796109062368461

`A000038(n)+A008592(n)-A315245(n)`
-/

namespace A310471.P10379796109062368461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A315245 n)

end

end A310471.P10379796109062368461

namespace A310471

/-- `A000038(n)+A008592(n)-A315245(n)` -/
def P10379796109062368461.Spec : Prop :=
  ∀ n, P10379796109062368461.a n = A310471 n

end A310471

/-! ## A310471.P9563493458909020838

`A008458(n)+A008574(n)-A315245(n)`
-/

namespace A310471.P9563493458909020838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315245 n)

end

end A310471.P9563493458909020838

namespace A310471

/-- `A008458(n)+A008574(n)-A315245(n)` -/
def P9563493458909020838.Spec : Prop :=
  ∀ n, P9563493458909020838.a n = A310471 n

end A310471

/-! ## A310471.P9758822701571039454

`∑{d}[A008592(n)-A315245(n), A000010(#)]`
-/

namespace A310471.P9758822701571039454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310471.P9758822701571039454

namespace A310471

/-- `∑{d}[A008592(n)-A315245(n), A000010(#)]` -/
def P9758822701571039454.Spec : Prop :=
  ∀ n, P9758822701571039454.a n = A310471 n

end A310471

/-! ## A310471.P12628811215241145777

`2*A000007(n)+A008592(n)-A315245(n)`
-/

namespace A310471.P12628811215241145777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n + (A008592 n - A315245 n)

end

end A310471.P12628811215241145777

namespace A310471

/-- `2*A000007(n)+A008592(n)-A315245(n)` -/
def P12628811215241145777.Spec : Prop :=
  ∀ n, P12628811215241145777.a n = A310471 n

end A310471

/-! ## A310471.P12986685094636311294

`A005843(A008706(n))-A315245(n)`
-/

namespace A310471.P12986685094636311294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315245 n

end

end A310471.P12986685094636311294

namespace A310471

/-- `A005843(A008706(n))-A315245(n)` -/
def P12986685094636311294.Spec : Prop :=
  ∀ n, P12986685094636311294.a n = A310471 n

end A310471

/-! ## A310471.P3747008375939647315

`A065502(A008458(n))-A315245(n)`
-/

namespace A310471.P3747008375939647315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315245 n

end

end A310471.P3747008375939647315

namespace A310471

/-- `A065502(A008458(n))-A315245(n)` -/
def P3747008375939647315.Spec : Prop :=
  ∀ n, P3747008375939647315.a n = A310471 n

end A310471

/-! ## A310471.P8627321129442342245

`A312125(2*n)-4*n`
-/

namespace A310471.P8627321129442342245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312125 (2 * n) - (4 * n : ℤ)

end

end A310471.P8627321129442342245

namespace A310471

/-- `A312125(2*n)-4*n` -/
def P8627321129442342245.Spec : Prop :=
  ∀ n, P8627321129442342245.a n = A310471 n

end A310471

/-! ## A310471.P16874679734166870729

`gcd(A008592(n)-A315245(n), A000038(8*n))`
-/

namespace A310471.P16874679734166870729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A315245 n) (A000038 (8 * n))

end

end A310471.P16874679734166870729

namespace A310471

/-- `gcd(A008592(n)-A315245(n), A000038(8*n))` -/
def P16874679734166870729.Spec : Prop :=
  ∀ n, (P16874679734166870729.a n : ℤ) = A310471 n

end A310471

/-! ## A310471.P47923958147082388

`lcm(2, A312681(2*n))/2`
-/

namespace A310471.P47923958147082388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A312681 (2 * n)) : ℚ) / 2

end

end A310471.P47923958147082388

namespace A310471

/-- `lcm(2, A312681(2*n))/2` -/
def P47923958147082388.Spec : Prop :=
  ∀ n, P47923958147082388.a n = (A310471 n : ℚ)

end A310471

/-! ## A310471.P10722526870013577100

`A312681(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A310471.P10722526870013577100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312681 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A310471.P10722526870013577100

namespace A310471

/-- `A312681(2*n)/(4*n+1-A004273(2*n))` -/
def P10722526870013577100.Spec : Prop :=
  ∀ n, P10722526870013577100.a n = (A310471 n : ℚ)

end A310471

/-! ## A310471.P14009525156858657858

`A312681(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A310471.P14009525156858657858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312681 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A310471.P14009525156858657858

namespace A310471

/-- `A312681(2*n)/(4*n+2-A004277(2*n))` -/
def P14009525156858657858.Spec : Prop :=
  ∀ n, P14009525156858657858.a n = (A310471 n : ℚ)

end A310471

/-! ## A310471.P4853910848748599362

`2*A008574(2*n)-A315686(2*n)`
-/

namespace A310471.P4853910848748599362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315686 (2 * n)

end

end A310471.P4853910848748599362

namespace A310471

/-- `2*A008574(2*n)-A315686(2*n)` -/
def P4853910848748599362.Spec : Prop :=
  ∀ n, P4853910848748599362.a n = A310471 n

end A310471

/-! ## A310471.P17784333792426512030

`A004525(A312681(2*n))`
-/

namespace A310471.P17784333792426512030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312681 (2 * n)).toNat

end

end A310471.P17784333792426512030

namespace A310471

/-- `A004525(A312681(2*n))` -/
def P17784333792426512030.Spec : Prop :=
  ∀ n, P17784333792426512030.a n = A310471 n

end A310471

/-! ## A310471.P1407282152502087956

`A004526(A312681(2*n)+1)`
-/

namespace A310471.P1407282152502087956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312681 (2 * n) + 1).toNat

end

end A310471.P1407282152502087956

namespace A310471

/-- `A004526(A312681(2*n)+1)` -/
def P1407282152502087956.Spec : Prop :=
  ∀ n, P1407282152502087956.a n = A310471 n

end A310471

/-! ## A310471.P14467315488910862284

`A008619(A312681(2*n)-1)`
-/

namespace A310471.P14467315488910862284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A312681 (2 * n) - 1).toNat

end

end A310471.P14467315488910862284

namespace A310471

/-- `A008619(A312681(2*n)-1)` -/
def P14467315488910862284.Spec : Prop :=
  ∀ n, P14467315488910862284.a n = A310471 n

end A310471

/-!
# A310472: Coordination sequence Gal.6.347.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310472, the canonical program `A310472.P9362779939822034128` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310472 has offset 0).

The definition of A310472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310472.P5110302696932513570

`abs(10*n-A315244(n))`
-/

namespace A310472.P5110302696932513570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315244 n|

end

end A310472.P5110302696932513570

namespace A310472

/-- `abs(10*n-A315244(n))` -/
def P5110302696932513570.Spec : Prop :=
  ∀ n, P5110302696932513570.a n = A310472 n

end A310472

/-! ## A310472.P6605671819294895464

`A313774(n)-A134667(n)`
-/

namespace A310472.P6605671819294895464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313774 n - A134667 n

end

end A310472.P6605671819294895464

namespace A310472

/-- `A313774(n)-A134667(n)` -/
def P6605671819294895464.Spec : Prop :=
  ∀ n, P6605671819294895464.a n = A310472 n

end A310472

/-! ## A310472.P740868859789846313

`abs(A315244(n)-A008592(n))`
-/

namespace A310472.P740868859789846313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A315244 n - A008592 n|

end

end A310472.P740868859789846313

namespace A310472

/-- `abs(A315244(n)-A008592(n))` -/
def P740868859789846313.Spec : Prop :=
  ∀ n, P740868859789846313.a n = A310472 n

end A310472

/-! ## A310472.P8208765686702441377

`A312933(n)+∑[A131735(n)]`
-/

namespace A310472.P8208765686702441377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310472.P8208765686702441377

namespace A310472

/-- `A312933(n)+∑[A131735(n)]` -/
def P8208765686702441377.Spec : Prop :=
  ∀ n, P8208765686702441377.a n = A310472 n

end A310472

/-! ## A310472.P7593559908286577554

`2*A008706(n)-A315244(n)`
-/

namespace A310472.P7593559908286577554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315244 n

end

end A310472.P7593559908286577554

namespace A310472

/-- `2*A008706(n)-A315244(n)` -/
def P7593559908286577554.Spec : Prop :=
  ∀ n, P7593559908286577554.a n = A310472 n

end A310472

/-! ## A310472.P9362779939822034128

`A312933(n)+n-A004525(A004396(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A310472

/-- `A312933(n)+n-A004525(A004396(n))` -/
def P9362779939822034128.Spec : Prop :=
  ∀ n, P9362779939822034128.a n = A310472 n

theorem P9362779939822034128.correct : P9362779939822034128.Spec := by
  intro n
  simp only [A310472]

end A310472

/-! ## A310472.P13742130431887547131

`A008458(n)+A008574(n)-A315244(n)`
-/

namespace A310472.P13742130431887547131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315244 n)

end

end A310472.P13742130431887547131

namespace A310472

/-- `A008458(n)+A008574(n)-A315244(n)` -/
def P13742130431887547131.Spec : Prop :=
  ∀ n, P13742130431887547131.a n = A310472 n

end A310472

/-! ## A310472.P4801629524047193030

`∑{d}[A008592(n)-A315244(n), A000010(#)]`
-/

namespace A310472.P4801629524047193030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310472.P4801629524047193030

namespace A310472

/-- `∑{d}[A008592(n)-A315244(n), A000010(#)]` -/
def P4801629524047193030.Spec : Prop :=
  ∀ n, P4801629524047193030.a n = A310472 n

end A310472

/-! ## A310472.P15590135662012590623

`A314110(n)-A134667(A004525(n))`
-/

namespace A310472.P15590135662012590623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314110 n - A134667 (A004525 n).toNat

end

end A310472.P15590135662012590623

namespace A310472

/-- `A314110(n)-A134667(A004525(n))` -/
def P15590135662012590623.Spec : Prop :=
  ∀ n, P15590135662012590623.a n = A310472 n

end A310472

/-! ## A310472.P17744732468217535138

`∑[A131735(n)]+A314151(n)-n`
-/

namespace A310472.P17744732468217535138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A314151 n - (n : ℤ))

end

end A310472.P17744732468217535138

namespace A310472

/-- `∑[A131735(n)]+A314151(n)-n` -/
def P17744732468217535138.Spec : Prop :=
  ∀ n, P17744732468217535138.a n = A310472 n

end A310472

/-! ## A310472.P6722358753064029683

`A314151(n)-A004525(A004396(n))`
-/

namespace A310472.P6722358753064029683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A004525 (A004396 n).toNat

end

end A310472.P6722358753064029683

namespace A310472

/-- `A314151(n)-A004525(A004396(n))` -/
def P6722358753064029683.Spec : Prop :=
  ∀ n, P6722358753064029683.a n = A310472 n

end A310472

/-! ## A310472.P17923849854839855245

`A314159(n)-A004396(A004525(n))`
-/

namespace A310472.P17923849854839855245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314159 n - A004396 (A004525 n).toNat

end

end A310472.P17923849854839855245

namespace A310472

/-- `A314159(n)-A004396(A004525(n))` -/
def P17923849854839855245.Spec : Prop :=
  ∀ n, P17923849854839855245.a n = A310472 n

end A310472

/-! ## A310472.P6539615356655890504

`A005843(A008706(n))-A315244(n)`
-/

namespace A310472.P6539615356655890504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315244 n

end

end A310472.P6539615356655890504

namespace A310472

/-- `A005843(A008706(n))-A315244(n)` -/
def P6539615356655890504.Spec : Prop :=
  ∀ n, P6539615356655890504.a n = A310472 n

end A310472

/-!
# A310473: Coordination sequence Gal.6.608.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310473, there is no canonical definition to state claims against.
-/

/-! ## A310473.P12964769965419106115

`xor(A185284(A033627(n+1)), A310474(n))`
-/

namespace A310473.P12964769965419106115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A033627 (n + 1)).toNat) (A310474 n)

end

end A310473.P12964769965419106115

/-! ## A310473.P16826051862101482558

`A310474(n)-A021913(A185336(n))`
-/

namespace A310473.P16826051862101482558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310474 n - A021913 (A185336 n).toNat

end

end A310473.P16826051862101482558

/-! ## A310473.P15134954891309286594

`A310474(n)-A185284(A310134(n))`
-/

namespace A310473.P15134954891309286594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310474 n - A185284 (A310134 n).toNat

end

end A310473.P15134954891309286594

/-! ## A310473.P9308998423834128734

`A310474(n)+A244895(A185284(3*n))`
-/

namespace A310473.P9308998423834128734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310474 n + A244895 (A185284 (3 * n)).toNat

end

end A310473.P9308998423834128734

/-! ## A310473.P4163124541872501969

`∏{e}[A001075(n), #]*A310474(n)`
-/

namespace A310473.P4163124541872501969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A310474 n

end

end A310473.P4163124541872501969

/-!
# A310474: Coordination sequence Gal.6.607.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310474, there is no canonical definition to state claims against.
-/

/-! ## A310474.P10016145200527085957

`xor(A185284(A033627(n+1)), A310473(n))`
-/

namespace A310474.P10016145200527085957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A033627 (n + 1)).toNat) (A310473 n)

end

end A310474.P10016145200527085957

/-! ## A310474.P7968570622215621337

`A310473(n)+A185284(A310134(n))`
-/

namespace A310474.P7968570622215621337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310473 n + A185284 (A310134 n).toNat

end

end A310474.P7968570622215621337

/-! ## A310474.P9116927939884153528

`or(A185284(A016777(n)), A310473(n))`
-/

namespace A310474.P9116927939884153528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A016777 n).toNat) (A310473 n)

end

end A310474.P9116927939884153528

/-! ## A310474.P13529507087070491465

`or(A275947(A000170(n)), A310473(n))`
-/

namespace A310474.P13529507087070491465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275947 (A000170 n).toNat) (A310473 n)

end

end A310474.P13529507087070491465

/-! ## A310474.P1182368956850594283

`A330025(A185284(3*n))+A310473(n)`
-/

namespace A310474.P1182368956850594283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A185284 (3 * n)).toNat + A310473 n

end

end A310474.P1182368956850594283

/-!
# A310476: Coordination sequence Gal.6.471.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310476, there is no canonical definition to state claims against.
-/

/-! ## A310476.P5249580182336258020

`A006093(floor(log2(A109224(n+1))))`
-/

namespace A310476.P5249580182336258020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (Nat.log 2 (A109224 (n + 1)).toNat)

end

end A310476.P5249580182336258020

/-! ## A310476.P16525645544001497745

`eq[A165018(n+1), A259175(n+1)]`
-/

namespace A310476.P16525645544001497745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310476.P16525645544001497745

/-! ## A310476.P10525988239863955888

`eq[A165018(n+1), A322079(n+1)]`
-/

namespace A310476.P10525988239863955888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310476.P10525988239863955888

/-! ## A310476.P991148631357520954

`eq[A165018(n+1), A363604(A018818(n+1))]`
-/

namespace A310476.P991148631357520954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363604 (A018818 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310476.P991148631357520954

/-! ## A310476.P17858242548118212437

`eq[A050873(A331785(n+1)), A347965(n+1)]`
-/

namespace A310476.P17858242548118212437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A331785 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310476.P17858242548118212437

/-!
# A310477: Coordination sequence Gal.6.365.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310477, there is no canonical definition to state claims against.
-/

/-! ## A310477.P6702371546023283404

`A311801(n)+A001222(A032205(n+9))`
-/

namespace A310477.P6702371546023283404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + A001222 (A032205 (n + 9)).toNat

end

end A310477.P6702371546023283404

/-! ## A310477.P3349467782610356386

`and(A109552(A109540(n)), A109603(n+1))`
-/

namespace A310477.P3349467782610356386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109552 (A109540 n).toNat) (A109603 (n + 1))

end

end A310477.P3349467782610356386

/-! ## A310477.P6180199343143169883

`lt[∏{e}[n+1, #+1]!, A329631(2*n+1)]`
-/

namespace A310477.P6180199343143169883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329631 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A310477.P6180199343143169883

/-! ## A310477.P13815233337480496413

`∑[A175851(A340387(∑[n+1]))]`
-/

namespace A310477.P13815233337480496413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A340387 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310477.P13815233337480496413

/-! ## A310477.P396930727043011169

`record[gcd(A156580(3*(n+1)), A156586(n))]`
-/

namespace A310477.P396930727043011169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156580 (3 * (n + 1))) (A156586 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310477.P396930727043011169

/-!
# A310478: Coordination sequence Gal.6.267.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310478, there is no canonical definition to state claims against.
-/

/-! ## A310478.P15415263781658394187

`record[gcd(A120257(n)², A093049(n))]`
-/

namespace A310478.P15415263781658394187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120257 n ^ 2) (A093049 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310478.P15415263781658394187

/-! ## A310478.P2431277188277655473

`record[and(A102614(n+2), A350618(n+1))]`
-/

namespace A310478.P2431277188277655473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102614 (n + 2)) (A350618 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310478.P2431277188277655473

/-! ## A310478.P2350661992021374107

`∑[A136694(A186434(n+1))]`
-/

namespace A310478.P2350661992021374107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136694 (A186434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310478.P2350661992021374107

/-! ## A310478.P17563846265540258829

`record[A124758(A001539(2*n))]`
-/

namespace A310478.P17563846265540258829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A001539 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310478.P17563846265540258829

/-! ## A310478.P16344904814618523749

`record[and(A010360(n+1), A117571(n))]`
-/

namespace A310478.P16344904814618523749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010360 (n + 1)) (A117571 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310478.P16344904814618523749

/-!
# A310479: Coordination sequence Gal.6.467.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310479, there is no canonical definition to state claims against.
-/

/-! ## A310479.P16773909119496728888

`A333842(A280466(n))+A312561(n)`
-/

namespace A310479.P16773909119496728888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (A280466 n).toNat + A312561 n

end

end A310479.P16773909119496728888

/-! ## A310479.P16573505377758380951

`A312561(n)+A002126(A243580(n+1))`
-/

namespace A310479.P16573505377758380951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + A002126 (A243580 (n + 1)).toNat

end

end A310479.P16573505377758380951

/-! ## A310479.P5166485556811844755

`A312561(n)+A105700(A052923(n))`
-/

namespace A310479.P5166485556811844755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + A105700 (A052923 n).toNat

end

end A310479.P5166485556811844755

/-! ## A310479.P14629220174549725588

`A312561(n)+A073267(A080872(n))`
-/

namespace A310479.P14629220174549725588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + A073267 (A080872 n).toNat

end

end A310479.P14629220174549725588

/-! ## A310479.P17251496057178198284

`A312561(n)+A084888(A080522(n+1))`
-/

namespace A310479.P17251496057178198284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + A084888 (A080522 (n + 1)).toNat

end

end A310479.P17251496057178198284

/-!
# A310480: Coordination sequence Gal.5.260.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310480, there is no canonical definition to state claims against.
-/

/-! ## A310480.P9724845012557580440

`record[and(A063199(n+1), A135411(n+1))]`
-/

namespace A310480.P9724845012557580440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063199 (n + 1)) (A135411 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310480.P9724845012557580440

/-! ## A310480.P10099734176924020419

`A312255(n)+2*A001221(A000088(n))`
-/

namespace A310480.P10099734176924020419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312255 n + 2 * A001221 (A000088 n).toNat

end

end A310480.P10099734176924020419

/-!
# A310481: Coordination sequence Gal.6.336.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310481, there is no canonical definition to state claims against.
-/

/-! ## A310481.P830734828914979353

`xor(A185284(3*n), A310482(n))`
-/

namespace A310481.P830734828914979353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (3 * n)) (A310482 n)

end

end A310481.P830734828914979353

/-! ## A310481.P10515181854314297933

`A310482(n)%record[A378510(3*n+5)]`
-/

namespace A310481.P10515181854314297933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378510 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310482 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A310481.P10515181854314297933

/-! ## A310481.P4875315500809412287

`A310482(n)+A007949(A005177(n))`
-/

namespace A310481.P4875315500809412287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310482 n + A007949 (A005177 n).toNat

end

end A310481.P4875315500809412287

/-! ## A310481.P9605327054542343826

`A310482(n)+A025469(A001519(n))`
-/

namespace A310481.P9605327054542343826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310482 n + A025469 (A001519 n).toNat

end

end A310481.P9605327054542343826

/-! ## A310481.P3805751957548274267

`A310482(n)+A000007(A055775(n))`
-/

namespace A310481.P3805751957548274267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310482 n + A000007 (A055775 n).toNat

end

end A310481.P3805751957548274267

/-!
# A310482: Coordination sequence Gal.6.335.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310482, there is no canonical definition to state claims against.
-/

/-! ## A310482.P9731954330086264792

`xor(A185284(3*n), A310481(n))`
-/

namespace A310482.P9731954330086264792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (3 * n)) (A310481 n)

end

end A310482.P9731954330086264792

/-!
# A310483: Coordination sequence Gal.6.564.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310483, there is no canonical definition to state claims against.
-/

/-! ## A310483.P17144148836161109300

`A298024(n)+A007814(A361224(n+1))`
-/

namespace A310483.P17144148836161109300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A007814 (A361224 (n + 1)).toNat

end

end A310483.P17144148836161109300

/-!
# A310486: Coordination sequence Gal.5.220.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310486, there is no canonical definition to state claims against.
-/

/-! ## A310486.P10374393224910311432

`A250120(n)-A244895(A122228(n))`
-/

namespace A310486.P10374393224910311432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A244895 (A122228 n).toNat

end

end A310486.P10374393224910311432

/-! ## A310486.P15460751295680474474

`A072154(2*n)-A244895(A122228(n))`
-/

namespace A310486.P15460751295680474474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A244895 (A122228 n).toNat

end

end A310486.P15460751295680474474

/-! ## A310486.P18114956159582966068

`record[A072154(n)/(-1)^n]-A244895(A122228(n))`
-/

namespace A310486.P18114956159582966068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A244895 (A122228 n).toNat : ℚ)

end

end A310486.P18114956159582966068

/-! ## A310486.P12884950333717398796

`A047486(A008486(n)+1)-A244895(A122228(n))`
-/

namespace A310486.P12884950333717398796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A244895 (A122228 n).toNat

end

end A310486.P12884950333717398796

/-! ## A310486.P15735996312955786741

`A047486(A033627(n+2))-A244895(A122228(n))`
-/

namespace A310486.P15735996312955786741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A033627 (n + 2)).toNat - A244895 (A122228 n).toNat

end

end A310486.P15735996312955786741

/-!
# A310487: Coordination sequence Gal.6.565.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310487, there is no canonical definition to state claims against.
-/

/-! ## A310487.P7950138978166543482

`A301293(n)+A001222(A077365(n))`
-/

namespace A310487.P7950138978166543482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A001222 (A077365 n).toNat

end

end A310487.P7950138978166543482

/-! ## A310487.P5338812251428472934

`A310496(n)-A000035(A002740(n))`
-/

namespace A310487.P5338812251428472934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310496 n - A000035 (A002740 n).toNat

end

end A310487.P5338812251428472934

/-! ## A310487.P9254448326706992236

`A310496(n)-A044938(A261384(n))`
-/

namespace A310487.P9254448326706992236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310496 n - A044938 (A261384 n).toNat

end

end A310487.P9254448326706992236

/-! ## A310487.P16486382547737627228

`A310496(n)-A316867(A005578(n)²)`
-/

namespace A310487.P16486382547737627228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310496 n - A316867 (A005578 n ^ 2).toNat

end

end A310487.P16486382547737627228

/-!
# A310489: Coordination sequence Gal.4.127.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310489, there is no canonical definition to state claims against.
-/

/-! ## A310489.P2007779069851284732

`A248614(lt[A249306(3*n+4), A080092(n+1)²])`
-/

namespace A310489.P2007779069851284732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249306 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080092 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310489.P2007779069851284732

/-! ## A310489.P5800717223729675348

`A248614(lt[A249306(3*n+4)², A219742(n+1)])`
-/

namespace A310489.P5800717223729675348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249306 (3 * n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310489.P5800717223729675348

/-! ## A310489.P16000010284883103127

`A248614(lt[A248568(3*n+5), A248614(3*n+4)])`
-/

namespace A310489.P16000010284883103127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248568 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310489.P16000010284883103127

/-! ## A310489.P5242827755071484617

`A248614(lt[A249306(3*n+4)², A027760(2*(n+1))])`
-/

namespace A310489.P5242827755071484617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249306 (3 * n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A310489.P5242827755071484617

/-! ## A310489.P13623666085021450300

`A313330(n)+A074290(A306485(n))`
-/

namespace A310489.P13623666085021450300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313330 n + A074290 (A306485 n).toNat

end

end A310489.P13623666085021450300

/-!
# A310491: Coordination sequence Gal.6.154.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310491, the canonical program `A310491.P553446308423443576` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310491 has offset 0).

The definition of A310491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310491.P553446308423443576

`2*A313024(n)-A008574(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A310491

/-- `2*A313024(n)-A008574(n)` -/
def P553446308423443576.Spec : Prop :=
  ∀ n, P553446308423443576.a n = A310491 n

theorem P553446308423443576.correct : P553446308423443576.Spec := by
  intro n
  simp only [A310491]

end A310491

/-! ## A310491.P8573955107361561196

`A004275(A313024(n)-A004273(n))`
-/

namespace A310491.P8573955107361561196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313024 n - A004273 n).toNat

end

end A310491.P8573955107361561196

namespace A310491

/-- `A004275(A313024(n)-A004273(n))` -/
def P8573955107361561196.Spec : Prop :=
  ∀ n, P8573955107361561196.a n = A310491 n

end A310491

/-! ## A310491.P7086543676508459578

`A103517(A313024(n)-A005408(n))`
-/

namespace A310491.P7086543676508459578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313024 n - A005408 n).toNat

end

end A310491.P7086543676508459578

namespace A310491

/-- `A103517(A313024(n)-A005408(n))` -/
def P7086543676508459578.Spec : Prop :=
  ∀ n, P7086543676508459578.a n = A310491 n

end A310491

/-! ## A310491.P8610584281305112761

`A004273(A313024(n)-n)-A004273(n)`
-/

namespace A310491.P8610584281305112761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313024 n - (n : ℤ)).toNat - A004273 n

end

end A310491.P8610584281305112761

namespace A310491

/-- `A004273(A313024(n)-n)-A004273(n)` -/
def P8610584281305112761.Spec : Prop :=
  ∀ n, P8610584281305112761.a n = A310491 n

end A310491

/-! ## A310491.P9332688634505010245

`A008574(n)+A005843(A313024(n)-A008574(n))`
-/

namespace A310491.P9332688634505010245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313024 n - A008574 n).toNat

end

end A310491.P9332688634505010245

namespace A310491

/-- `A008574(n)+A005843(A313024(n)-A008574(n))` -/
def P9332688634505010245.Spec : Prop :=
  ∀ n, P9332688634505010245.a n = A310491 n

end A310491

/-! ## A310491.P788915284205414165

`abs(A008592(n)-A315216(n))`
-/

namespace A310491.P788915284205414165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315216 n|

end

end A310491.P788915284205414165

namespace A310491

/-- `abs(A008592(n)-A315216(n))` -/
def P788915284205414165.Spec : Prop :=
  ∀ n, P788915284205414165.a n = A310491 n

end A310491

/-! ## A310491.P5197044672471243211

`2*A008706(n)-A315216(n)`
-/

namespace A310491.P5197044672471243211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315216 n

end

end A310491.P5197044672471243211

namespace A310491

/-- `2*A008706(n)-A315216(n)` -/
def P5197044672471243211.Spec : Prop :=
  ∀ n, P5197044672471243211.a n = A310491 n

end A310491

/-! ## A310491.P14907327871873473974

`A008458(n)+A008574(n)-A315216(n)`
-/

namespace A310491.P14907327871873473974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315216 n)

end

end A310491.P14907327871873473974

namespace A310491

/-- `A008458(n)+A008574(n)-A315216(n)` -/
def P14907327871873473974.Spec : Prop :=
  ∀ n, P14907327871873473974.a n = A310491 n

end A310491

/-! ## A310491.P9056425774516387790

`lcm(A008592(n)-A315216(n), A001511(2*n+1))`
-/

namespace A310491.P9056425774516387790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008592 n - A315216 n) (A001511 (2 * n + 1))

end

end A310491.P9056425774516387790

namespace A310491

/-- `lcm(A008592(n)-A315216(n), A001511(2*n+1))` -/
def P9056425774516387790.Spec : Prop :=
  ∀ n, (P9056425774516387790.a n : ℤ) = A310491 n

end A310491

/-! ## A310491.P1626652685053241413

`A005843(A313024(n))-A008574(n)`
-/

namespace A310491.P1626652685053241413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313024 n).toNat - A008574 n

end

end A310491.P1626652685053241413

namespace A310491

/-- `A005843(A313024(n))-A008574(n)` -/
def P1626652685053241413.Spec : Prop :=
  ∀ n, P1626652685053241413.a n = A310491 n

end A310491

/-! ## A310491.P9935814031250341773

`A004275(A313024(n))-A004275(2*n)`
-/

namespace A310491.P9935814031250341773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313024 n).toNat - A004275 (2 * n)

end

end A310491.P9935814031250341773

namespace A310491

/-- `A004275(A313024(n))-A004275(2*n)` -/
def P9935814031250341773.Spec : Prop :=
  ∀ n, P9935814031250341773.a n = A310491 n

end A310491

/-! ## A310491.P5462848602280341812

`A005843(A313024(n))+n-A008706(n)`
-/

namespace A310491.P5462848602280341812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313024 n).toNat + ((n : ℤ) - A008706 n)

end

end A310491.P5462848602280341812

namespace A310491

/-- `A005843(A313024(n))+n-A008706(n)` -/
def P5462848602280341812.Spec : Prop :=
  ∀ n, P5462848602280341812.a n = A310491 n

end A310491

/-! ## A310491.P15632157977310849836

`A201629(A313718(n))+A000007(n)`
-/

namespace A310491.P15632157977310849836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A313718 n).toNat + A000007 n

end

end A310491.P15632157977310849836

namespace A310491

/-- `A201629(A313718(n))+A000007(n)` -/
def P15632157977310849836.Spec : Prop :=
  ∀ n, P15632157977310849836.a n = A310491 n

end A310491

/-! ## A310491.P11329233941803673952

`A005843(A008706(n))-A315216(n)`
-/

namespace A310491.P11329233941803673952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315216 n

end

end A310491.P11329233941803673952

namespace A310491

/-- `A005843(A008706(n))-A315216(n)` -/
def P11329233941803673952.Spec : Prop :=
  ∀ n, P11329233941803673952.a n = A310491 n

end A310491

/-! ## A310491.P10724072121896356937

`A099479(A314202(n)+A004273(n))`
-/

namespace A310491.P10724072121896356937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A314202 n + A004273 n).toNat

end

end A310491.P10724072121896356937

namespace A310491

/-- `A099479(A314202(n)+A004273(n))` -/
def P10724072121896356937.Spec : Prop :=
  ∀ n, P10724072121896356937.a n = A310491 n

end A310491

/-!
# A310492: Coordination sequence Gal.6.249.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310492, the canonical program `A310492.P3547860379058493254` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310492 has offset 0).

The definition of A310492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310492.P6574885126427605784

`2*A313025(n)-A008574(n)`
-/

namespace A310492.P6574885126427605784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313025 n - A008574 n

end

end A310492.P6574885126427605784

namespace A310492

/-- `2*A313025(n)-A008574(n)` -/
def P6574885126427605784.Spec : Prop :=
  ∀ n, P6574885126427605784.a n = A310492 n

end A310492

/-! ## A310492.P5895687151468624395

`A004275(A313025(n)-A004273(n))`
-/

namespace A310492.P5895687151468624395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313025 n - A004273 n).toNat

end

end A310492.P5895687151468624395

namespace A310492

/-- `A004275(A313025(n)-A004273(n))` -/
def P5895687151468624395.Spec : Prop :=
  ∀ n, P5895687151468624395.a n = A310492 n

end A310492

/-! ## A310492.P3547860379058493254

`A315445(n)-A253262(A253262(n)+n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A310492

/-- `A315445(n)-A253262(A253262(n)+n)` -/
def P3547860379058493254.Spec : Prop :=
  ∀ n, P3547860379058493254.a n = A310492 n

theorem P3547860379058493254.correct : P3547860379058493254.Spec := by
  intro n
  simp only [A310492]

end A310492

/-! ## A310492.P16234764925985847942

`A004273(A313025(n)-n)-A004273(n)`
-/

namespace A310492.P16234764925985847942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313025 n - (n : ℤ)).toNat - A004273 n

end

end A310492.P16234764925985847942

namespace A310492

/-- `A004273(A313025(n)-n)-A004273(n)` -/
def P16234764925985847942.Spec : Prop :=
  ∀ n, P16234764925985847942.a n = A310492 n

end A310492

/-! ## A310492.P13187672864855601857

`A008574(n)+A005843(A313025(n)-A008574(n))`
-/

namespace A310492.P13187672864855601857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313025 n - A008574 n).toNat

end

end A310492.P13187672864855601857

namespace A310492

/-- `A008574(n)+A005843(A313025(n)-A008574(n))` -/
def P13187672864855601857.Spec : Prop :=
  ∀ n, P13187672864855601857.a n = A310492 n

end A310492

/-! ## A310492.P15946504730666823326

`2*A313719(n)-A315203(n)`
-/

namespace A310492.P15946504730666823326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313719 n - A315203 n

end

end A310492.P15946504730666823326

namespace A310492

/-- `2*A313719(n)-A315203(n)` -/
def P15946504730666823326.Spec : Prop :=
  ∀ n, P15946504730666823326.a n = A310492 n

end A310492

/-! ## A310492.P1525168200056018828

`abs(A008592(n)-A315215(n))`
-/

namespace A310492.P1525168200056018828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315215 n|

end

end A310492.P1525168200056018828

namespace A310492

/-- `abs(A008592(n)-A315215(n))` -/
def P1525168200056018828.Spec : Prop :=
  ∀ n, P1525168200056018828.a n = A310492 n

end A310492

/-! ## A310492.P3422550259660664224

`2*A008706(n)-A315215(n)`
-/

namespace A310492.P3422550259660664224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315215 n

end

end A310492.P3422550259660664224

namespace A310492

/-- `2*A008706(n)-A315215(n)` -/
def P3422550259660664224.Spec : Prop :=
  ∀ n, P3422550259660664224.a n = A310492 n

end A310492

/-! ## A310492.P2570411545521540434

`A000038(n)+A008592(n)-A315215(n)`
-/

namespace A310492.P2570411545521540434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A315215 n)

end

end A310492.P2570411545521540434

namespace A310492

/-- `A000038(n)+A008592(n)-A315215(n)` -/
def P2570411545521540434.Spec : Prop :=
  ∀ n, P2570411545521540434.a n = A310492 n

end A310492

/-! ## A310492.P4426789967997934698

`A008458(n)+A008574(n)-A315215(n)`
-/

namespace A310492.P4426789967997934698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315215 n)

end

end A310492.P4426789967997934698

namespace A310492

/-- `A008458(n)+A008574(n)-A315215(n)` -/
def P4426789967997934698.Spec : Prop :=
  ∀ n, P4426789967997934698.a n = A310492 n

end A310492

/-! ## A310492.P1088932699875617640

`A005843(A313025(n))-A008574(n)`
-/

namespace A310492.P1088932699875617640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313025 n).toNat - A008574 n

end

end A310492.P1088932699875617640

namespace A310492

/-- `A005843(A313025(n))-A008574(n)` -/
def P1088932699875617640.Spec : Prop :=
  ∀ n, P1088932699875617640.a n = A310492 n

end A310492

/-! ## A310492.P14984748791947103809

`A004275(A313025(n))-A004275(2*n)`
-/

namespace A310492.P14984748791947103809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313025 n).toNat - A004275 (2 * n)

end

end A310492.P14984748791947103809

namespace A310492

/-- `A004275(A313025(n))-A004275(2*n)` -/
def P14984748791947103809.Spec : Prop :=
  ∀ n, P14984748791947103809.a n = A310492 n

end A310492

/-! ## A310492.P16858783475161435974

`2*A314209(n)-A008458(n)`
-/

namespace A310492.P16858783475161435974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314209 n - A008458 n

end

end A310492.P16858783475161435974

namespace A310492

/-- `2*A314209(n)-A008458(n)` -/
def P16858783475161435974.Spec : Prop :=
  ∀ n, P16858783475161435974.a n = A310492 n

end A310492

/-! ## A310492.P5760595076473918220

`A008458(n)-A005843(A008458(n)-A314209(n))`
-/

namespace A310492.P5760595076473918220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A314209 n).toNat

end

end A310492.P5760595076473918220

namespace A310492

/-- `A008458(n)-A005843(A008458(n)-A314209(n))` -/
def P5760595076473918220.Spec : Prop :=
  ∀ n, P5760595076473918220.a n = A310492 n

end A310492

/-! ## A310492.P15340987081964492287

`A004278(A017089(n)-A315496(n))`
-/

namespace A310492.P15340987081964492287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A017089 n - A315496 n).toNat

end

end A310492.P15340987081964492287

namespace A310492

/-- `A004278(A017089(n)-A315496(n))` -/
def P15340987081964492287.Spec : Prop :=
  ∀ n, P15340987081964492287.a n = A310492 n

end A310492

/-! ## A310492.P13992813040221170177

`A005843(A008706(n))-A315215(n)`
-/

namespace A310492.P13992813040221170177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315215 n

end

end A310492.P13992813040221170177

namespace A310492

/-- `A005843(A008706(n))-A315215(n)` -/
def P13992813040221170177.Spec : Prop :=
  ∀ n, P13992813040221170177.a n = A310492 n

end A310492

/-! ## A310492.P17215727027062998338

`A005843(A314209(n))-A008458(n)`
-/

namespace A310492.P17215727027062998338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314209 n).toNat - A008458 n

end

end A310492.P17215727027062998338

namespace A310492

/-- `A005843(A314209(n))-A008458(n)` -/
def P17215727027062998338.Spec : Prop :=
  ∀ n, P17215727027062998338.a n = A310492 n

end A310492

/-!
# A310493: Coordination sequence Gal.5.86.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310493, the canonical program `A310493.P491155023743620947` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310493 has offset 0).

The definition of A310493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310493.P491155023743620947

`2*A313026(n)-A008574(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A310493

/-- `2*A313026(n)-A008574(n)` -/
def P491155023743620947.Spec : Prop :=
  ∀ n, P491155023743620947.a n = A310493 n

theorem P491155023743620947.correct : P491155023743620947.Spec := by
  intro n
  simp only [A310493]

end A310493

/-! ## A310493.P16958442492527016044

`A103517(A313026(n)-(2*n+1))`
-/

namespace A310493.P16958442492527016044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313026 n - (2 * n + 1 : ℤ)).toNat

end

end A310493.P16958442492527016044

namespace A310493

/-- `A103517(A313026(n)-(2*n+1))` -/
def P16958442492527016044.Spec : Prop :=
  ∀ n, P16958442492527016044.a n = A310493 n

end A310493

/-! ## A310493.P6485835219295349977

`A004275(A313026(n)-A004273(n))`
-/

namespace A310493.P6485835219295349977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313026 n - A004273 n).toNat

end

end A310493.P6485835219295349977

namespace A310493

/-- `A004275(A313026(n)-A004273(n))` -/
def P6485835219295349977.Spec : Prop :=
  ∀ n, P6485835219295349977.a n = A310493 n

end A310493

/-! ## A310493.P12406019726047667700

`A313201(n)+A004396(n-A004396(n))`
-/

namespace A310493.P12406019726047667700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A310493.P12406019726047667700

namespace A310493

/-- `A313201(n)+A004396(n-A004396(n))` -/
def P12406019726047667700.Spec : Prop :=
  ∀ n, P12406019726047667700.a n = A310493 n

end A310493

/-! ## A310493.P990998251642874823

`A004273(A313026(n)-n)-A004273(n)`
-/

namespace A310493.P990998251642874823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A313026 n - (n : ℤ)).toNat - A004273 n

end

end A310493.P990998251642874823

namespace A310493

/-- `A004273(A313026(n)-n)-A004273(n)` -/
def P990998251642874823.Spec : Prop :=
  ∀ n, P990998251642874823.a n = A310493 n

end A310493

/-! ## A310493.P16860597879459666154

`A008574(n)+A005843(A313026(n)-A008574(n))`
-/

namespace A310493.P16860597879459666154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A005843 (A313026 n - A008574 n).toNat

end

end A310493.P16860597879459666154

namespace A310493

/-- `A008574(n)+A005843(A313026(n)-A008574(n))` -/
def P16860597879459666154.Spec : Prop :=
  ∀ n, P16860597879459666154.a n = A310493 n

end A310493

/-! ## A310493.P14303159246529502062

`abs(A008592(n)-A315214(n))`
-/

namespace A310493.P14303159246529502062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315214 n|

end

end A310493.P14303159246529502062

namespace A310493

/-- `abs(A008592(n)-A315214(n))` -/
def P14303159246529502062.Spec : Prop :=
  ∀ n, P14303159246529502062.a n = A310493 n

end A310493

/-! ## A310493.P11323065382646661948

`2*A008706(n)-A315214(n)`
-/

namespace A310493.P11323065382646661948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315214 n

end

end A310493.P11323065382646661948

namespace A310493

/-- `2*A008706(n)-A315214(n)` -/
def P11323065382646661948.Spec : Prop :=
  ∀ n, P11323065382646661948.a n = A310493 n

end A310493

/-! ## A310493.P2078411407495985379

`A008458(n)+A008574(n)-A315214(n)`
-/

namespace A310493.P2078411407495985379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315214 n)

end

end A310493.P2078411407495985379

namespace A310493

/-- `A008458(n)+A008574(n)-A315214(n)` -/
def P2078411407495985379.Spec : Prop :=
  ∀ n, P2078411407495985379.a n = A310493 n

end A310493

/-! ## A310493.P631539599015681919

`∑{d}[A008592(n)-A315214(n), A000010(#)]`
-/

namespace A310493.P631539599015681919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A310493.P631539599015681919

namespace A310493

/-- `∑{d}[A008592(n)-A315214(n), A000010(#)]` -/
def P631539599015681919.Spec : Prop :=
  ∀ n, P631539599015681919.a n = A310493 n

end A310493

/-! ## A310493.P7126197528758068853

`A314205(n)-A004396(A004396(n))`
-/

namespace A310493.P7126197528758068853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314205 n - A004396 (A004396 n).toNat

end

end A310493.P7126197528758068853

namespace A310493

/-- `A314205(n)-A004396(A004396(n))` -/
def P7126197528758068853.Spec : Prop :=
  ∀ n, P7126197528758068853.a n = A310493 n

end A310493

/-! ## A310493.P8669958177760209533

`A005843(A313026(n))-A008574(n)`
-/

namespace A310493.P8669958177760209533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313026 n).toNat - A008574 n

end

end A310493.P8669958177760209533

namespace A310493

/-- `A005843(A313026(n))-A008574(n)` -/
def P8669958177760209533.Spec : Prop :=
  ∀ n, P8669958177760209533.a n = A310493 n

end A310493

/-! ## A310493.P7114488793715348096

`A004275(A313026(n))-A004275(2*n)`
-/

namespace A310493.P7114488793715348096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A313026 n).toNat - A004275 (2 * n)

end

end A310493.P7114488793715348096

namespace A310493

/-- `A004275(A313026(n))-A004275(2*n)` -/
def P7114488793715348096.Spec : Prop :=
  ∀ n, P7114488793715348096.a n = A310493 n

end A310493

/-! ## A310493.P9854138821243151742

`A315757(n)-2*A004396(A004396(n))`
-/

namespace A310493.P9854138821243151742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 n - 2 * A004396 (A004396 n).toNat

end

end A310493.P9854138821243151742

namespace A310493

/-- `A315757(n)-2*A004396(A004396(n))` -/
def P9854138821243151742.Spec : Prop :=
  ∀ n, P9854138821243151742.a n = A310493 n

end A310493

/-! ## A310493.P12799075369691727915

`A004275(A004525(A310454(n)+2))`
-/

namespace A310493.P12799075369691727915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004525 (A310454 n + 2).toNat).toNat

end

end A310493.P12799075369691727915

namespace A310493

/-- `A004275(A004525(A310454(n)+2))` -/
def P12799075369691727915.Spec : Prop :=
  ∀ n, P12799075369691727915.a n = A310493 n

end A310493

/-! ## A310493.P16256938888270232391

`A005843(A008706(n))-A315214(n)`
-/

namespace A310493.P16256938888270232391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315214 n

end

end A310493.P16256938888270232391

namespace A310493

/-- `A005843(A008706(n))-A315214(n)` -/
def P16256938888270232391.Spec : Prop :=
  ∀ n, P16256938888270232391.a n = A310493 n

end A310493

/-! ## A310493.P3580106320252459609

`2*A311458(2*n)-A008458(2*n)`
-/

namespace A310493.P3580106320252459609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311458 (2 * n) - A008458 (2 * n)

end

end A310493.P3580106320252459609

namespace A310493

/-- `2*A311458(2*n)-A008458(2*n)` -/
def P3580106320252459609.Spec : Prop :=
  ∀ n, P3580106320252459609.a n = A310493 n

end A310493

/-! ## A310493.P12890015109381946779

`A311612(2*n)-4*n`
-/

namespace A310493.P12890015109381946779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311612 (2 * n) - (4 * n : ℤ)

end

end A310493.P12890015109381946779

namespace A310493

/-- `A311612(2*n)-4*n` -/
def P12890015109381946779.Spec : Prop :=
  ∀ n, P12890015109381946779.a n = A310493 n

end A310493

/-! ## A310493.P14600856328685082019

`2*A008574(2*n)-A315731(2*n)`
-/

namespace A310493.P14600856328685082019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315731 (2 * n)

end

end A310493.P14600856328685082019

namespace A310493

/-- `2*A008574(2*n)-A315731(2*n)` -/
def P14600856328685082019.Spec : Prop :=
  ∀ n, P14600856328685082019.a n = A310493 n

end A310493

/-!
# A310494: Coordination sequence Gal.4.126.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310494, there is no canonical definition to state claims against.
-/

/-! ## A310494.P14944330459343677195

`A298024(n)+A107491(A238861(n))`
-/

namespace A310494.P14944330459343677195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n + A107491 (A238861 n).toNat

end

end A310494.P14944330459343677195

/-!
# A310495: Coordination sequence Gal.4.57.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310495, there is no canonical definition to state claims against.
-/

/-! ## A310495.P5366858509130982833

`A310493(n)+A107846(A094537(n))`
-/

namespace A310495.P5366858509130982833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310493 n + A107846 (A094537 n).toNat

end

end A310495.P5366858509130982833

/-! ## A310495.P735774593568340549

`A310454(n)+A010060(A157909(n+1))`
-/

namespace A310495.P735774593568340549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n + A010060 (A157909 (n + 1)).toNat

end

end A310495.P735774593568340549

/-! ## A310495.P2446181076286136633

`A310454(n)+A189017(A159349(n))`
-/

namespace A310495.P2446181076286136633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n + A189017 (A159349 n).toNat

end

end A310495.P2446181076286136633

/-! ## A310495.P6126051848304881904

`A310454(n)+A107846(A159336(n))`
-/

namespace A310495.P6126051848304881904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310454 n + A107846 (A159336 n).toNat

end

end A310495.P6126051848304881904

/-! ## A310495.P12414211957245157644

`A346130(A313023(n))`
-/

namespace A310495.P12414211957245157644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A313023 n).toNat

end

end A310495.P12414211957245157644

/-!
# A310496: Coordination sequence Gal.6.327.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310496, the canonical program `A310496.P10218133312535367939` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310496 has offset 0).

The definition of A310496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310496.P10218133312535367939

`A315034(n)+A011582(A011582(n)+n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A310496

/-- `A315034(n)+A011582(A011582(n)+n)` -/
def P10218133312535367939.Spec : Prop :=
  ∀ n, P10218133312535367939.a n = A310496 n

theorem P10218133312535367939.correct : P10218133312535367939.Spec := by
  intro n
  simp only [A310496]

end A310496

/-! ## A310496.P3203638886718790369

`2*A310455(n)-A310413(n)`
-/

namespace A310496.P3203638886718790369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310455 n - A310413 n

end

end A310496.P3203638886718790369

namespace A310496

/-- `2*A310455(n)-A310413(n)` -/
def P3203638886718790369.Spec : Prop :=
  ∀ n, P3203638886718790369.a n = A310496 n

end A310496

/-! ## A310496.P7092677418687084962

`abs(A008592(n)-A315212(n))`
-/

namespace A310496.P7092677418687084962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315212 n|

end

end A310496.P7092677418687084962

namespace A310496

/-- `abs(A008592(n)-A315212(n))` -/
def P7092677418687084962.Spec : Prop :=
  ∀ n, P7092677418687084962.a n = A310496 n

end A310496

/-! ## A310496.P18075607135034997773

`2*A008706(n)-A315212(n)`
-/

namespace A310496.P18075607135034997773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315212 n

end

end A310496.P18075607135034997773

namespace A310496

/-- `2*A008706(n)-A315212(n)` -/
def P18075607135034997773.Spec : Prop :=
  ∀ n, P18075607135034997773.a n = A310496 n

end A310496

/-! ## A310496.P2267759387922750922

`A008458(n)+A008574(n)-A315212(n)`
-/

namespace A310496.P2267759387922750922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315212 n)

end

end A310496.P2267759387922750922

namespace A310496

/-- `A008458(n)+A008574(n)-A315212(n)` -/
def P2267759387922750922.Spec : Prop :=
  ∀ n, P2267759387922750922.a n = A310496 n

end A310496

/-! ## A310496.P14762276768507951553

`2*A314210(n)-A008458(n)`
-/

namespace A310496.P14762276768507951553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314210 n - A008458 n

end

end A310496.P14762276768507951553

namespace A310496

/-- `2*A314210(n)-A008458(n)` -/
def P14762276768507951553.Spec : Prop :=
  ∀ n, P14762276768507951553.a n = A310496 n

end A310496

/-! ## A310496.P5128927569277560873

`A004277(A314210(n)-(A004277(n)+n))`
-/

namespace A310496.P5128927569277560873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314210 n - (A004277 n + (n : ℤ))).toNat

end

end A310496.P5128927569277560873

namespace A310496

/-- `A004277(A314210(n)-(A004277(n)+n))` -/
def P5128927569277560873.Spec : Prop :=
  ∀ n, P5128927569277560873.a n = A310496 n

end A310496

/-! ## A310496.P8918217120099264710

`A004277(A314210(n)-n-A004277(n))`
-/

namespace A310496.P8918217120099264710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A314210 n - (n : ℤ) - A004277 n).toNat

end

end A310496.P8918217120099264710

namespace A310496

/-- `A004277(A314210(n)-n-A004277(n))` -/
def P8918217120099264710.Spec : Prop :=
  ∀ n, P8918217120099264710.a n = A310496 n

end A310496

/-! ## A310496.P1329000335516459015

`A180004(A310438(n))`
-/

namespace A310496.P1329000335516459015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A310438 n).toNat

end

end A310496.P1329000335516459015

namespace A310496

/-- `A180004(A310438(n))` -/
def P1329000335516459015.Spec : Prop :=
  ∀ n, P1329000335516459015.a n = A310496 n

end A310496

/-! ## A310496.P4384025463981509254

`A004442(A017281(n)-A315212(n))`
-/

namespace A310496.P4384025463981509254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A017281 n - A315212 n).toNat

end

end A310496.P4384025463981509254

namespace A310496

/-- `A004442(A017281(n)-A315212(n))` -/
def P4384025463981509254.Spec : Prop :=
  ∀ n, P4384025463981509254.a n = A310496 n

end A310496

/-! ## A310496.P13938402809372697956

`A005843(A008706(n))-A315212(n)`
-/

namespace A310496.P13938402809372697956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315212 n

end

end A310496.P13938402809372697956

namespace A310496

/-- `A005843(A008706(n))-A315212(n)` -/
def P13938402809372697956.Spec : Prop :=
  ∀ n, P13938402809372697956.a n = A310496 n

end A310496

/-! ## A310496.P11274281474194084131

`A005843(A314210(n))-A008458(n)`
-/

namespace A310496.P11274281474194084131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314210 n).toNat - A008458 n

end

end A310496.P11274281474194084131

namespace A310496

/-- `A005843(A314210(n))-A008458(n)` -/
def P11274281474194084131.Spec : Prop :=
  ∀ n, P11274281474194084131.a n = A310496 n

end A310496

/-!
# A310497: Coordination sequence Gal.6.472.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310497, there is no canonical definition to state claims against.
-/

/-! ## A310497.P3003213130561783116

`A310495(n)+A184159(A000045(n+1))`
-/

namespace A310497.P3003213130561783116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310495 n + A184159 (A000045 (n + 1)).toNat

end

end A310497.P3003213130561783116

/-! ## A310497.P13073253678073612675

`A301293(n)+A001222(A256180(n))`
-/

namespace A310497.P13073253678073612675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A001222 (A256180 n).toNat

end

end A310497.P13073253678073612675

/-! ## A310497.P6334805198899652460

`A311829(n)+A213911(A231303(n))`
-/

namespace A310497.P6334805198899652460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311829 n + A213911 (A231303 n).toNat

end

end A310497.P6334805198899652460

/-! ## A310497.P12125681193095075165

`A219529(n)-A035232(A000108(n+1))`
-/

namespace A310497.P12125681193095075165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A035232 (A000108 (n + 1)).toNat

end

end A310497.P12125681193095075165

/-! ## A310497.P9916232535693816313

`A315739(n)-A180094(A093374(n+4))`
-/

namespace A310497.P9916232535693816313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315739 n - A180094 (A093374 (n + 4)).toNat

end

end A310497.P9916232535693816313

/-!
# A310498: Coordination sequence Gal.3.20.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310498, the canonical program `A310498.P15967882236634492805` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310498 has offset 0).

The definition of A310498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310498.P15967882236634492805

`∑[10-a(n-2)]` with `a(0)=1, a(1)=3, a(2)=6, a(3)=6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A310498

/-- `∑[10-a(n-2)]` -/
def P15967882236634492805.Spec : Prop :=
  ∀ n, P15967882236634492805.a n = A310498 n

theorem P15967882236634492805.correct : P15967882236634492805.Spec := by
  intro n
  simp only [A310498]

end A310498

/-! ## A310498.P5633799886382033307

`(-n%2)^∑[n]+5*n`
-/

namespace A310498.P5633799886382033307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-((n % 2 : ℕ) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + (5 * n : ℤ)

end

end A310498.P5633799886382033307

namespace A310498

/-- `(-n%2)^∑[n]+5*n` -/
def P5633799886382033307.Spec : Prop :=
  ∀ n, P5633799886382033307.a n = A310498 n

end A310498

/-! ## A310498.P15624278771089415058

`and(2, n)+a(n-1)+4` with `a(0)=1, a(1)=4`
-/

namespace A310498.P15624278771089415058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.land 2 n + (a (n - 1) + 4)

end

end A310498.P15624278771089415058

namespace A310498

/-- `and(2, n)+a(n-1)+4` -/
def P15624278771089415058.Spec : Prop :=
  ∀ n, (P15624278771089415058.a n : ℤ) = A310498 n

end A310498

/-! ## A310498.P12929143609617193761

`∑[and(2, n)]+round(2/acot(2*n))`
-/

namespace A310498.P12929143609617193761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (2 * n : ℝ))

end

end A310498.P12929143609617193761

namespace A310498

/-- `∑[and(2, n)]+round(2/acot(2*n))` -/
def P12929143609617193761.Spec : Prop :=
  ∀ n, P12929143609617193761.a n = A310498 n

end A310498

/-! ## A310498.P6489395418441375351

`∑[and(2, n)]+floor(3/acot(n))+n`
-/

namespace A310498.P6489395418441375351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ))

end

end A310498.P6489395418441375351

namespace A310498

/-- `∑[and(2, n)]+floor(3/acot(n))+n` -/
def P6489395418441375351.Spec : Prop :=
  ∀ n, P6489395418441375351.a n = A310498 n

end A310498

/-! ## A310498.P1866914484510780526

`10*(n-1)-a(n-2)` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A310498.P1866914484510780526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  10 * ((n : ℤ) - 1) - a (n - 2)

end

end A310498.P1866914484510780526

namespace A310498

/-- `10*(n-1)-a(n-2)` -/
def P1866914484510780526.Spec : Prop :=
  ∀ n, P1866914484510780526.a n = A310498 n

end A310498

/-! ## A310498.P4267670823400566972

`or(1, a(n-1))+or(2, 3-n)+n` with `a(0)=1`
-/

namespace A310498.P4267670823400566972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (a (n - 1)) + (Int.lor 2 (3 - (n : ℤ)) + (n : ℤ))

end

end A310498.P4267670823400566972

namespace A310498

/-- `or(1, a(n-1))+or(2, 3-n)+n` -/
def P4267670823400566972.Spec : Prop :=
  ∀ n, P4267670823400566972.a n = A310498 n

end A310498

/-! ## A310498.P2691961842324394873

`A163805(n)+5*n`
-/

namespace A310498.P2691961842324394873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 n + (5 * n : ℤ)

end

end A310498.P2691961842324394873

namespace A310498

/-- `A163805(n)+5*n` -/
def P2691961842324394873.Spec : Prop :=
  ∀ n, P2691961842324394873.a n = A310498 n

end A310498

/-! ## A310498.P4970303351270358911

`A008574(n)+∑[and(2, n)]`
-/

namespace A310498.P4970303351270358911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A310498.P4970303351270358911

namespace A310498

/-- `A008574(n)+∑[and(2, n)]` -/
def P4970303351270358911.Spec : Prop :=
  ∀ n, P4970303351270358911.a n = A310498 n

end A310498

/-! ## A310498.P14314946918127588363

`A004277(comp[2*comp[3*n]]+n)`
-/

namespace A310498.P14314946918127588363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A310498.P14314946918127588363

namespace A310498

/-- `A004277(comp[2*comp[3*n]]+n)` -/
def P14314946918127588363.Spec : Prop :=
  ∀ n, P14314946918127588363.a n = A310498 n

end A310498

/-! ## A310498.P8796257848466161560

`A298784(A047273(n+1))`
-/

namespace A310498.P8796257848466161560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 (A047273 (n + 1)).toNat

end

end A310498.P8796257848466161560

namespace A310498

/-- `A298784(A047273(n+1))` -/
def P8796257848466161560.Spec : Prop :=
  ∀ n, P8796257848466161560.a n = A310498 n

end A310498

/-! ## A310498.P9002741461923934129

`A201629(n)+A008574(n)`
-/

namespace A310498.P9002741461923934129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n + A008574 n

end

end A310498.P9002741461923934129

namespace A310498

/-- `A201629(n)+A008574(n)` -/
def P9002741461923934129.Spec : Prop :=
  ∀ n, P9002741461923934129.a n = A310498 n

end A310498

/-! ## A310498.P16880882192272585623

`A276283(n)+A004273(n)`
-/

namespace A310498.P16880882192272585623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n + A004273 n

end

end A310498.P16880882192272585623

namespace A310498

/-- `A276283(n)+A004273(n)` -/
def P16880882192272585623.Spec : Prop :=
  ∀ n, P16880882192272585623.a n = A310498 n

end A310498

/-! ## A310498.P12203523084653015951

`A301291(n)+A215415(n)`
-/

namespace A310498.P12203523084653015951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A215415 n

end

end A310498.P12203523084653015951

namespace A310498

/-- `A301291(n)+A215415(n)` -/
def P12203523084653015951.Spec : Prop :=
  ∀ n, P12203523084653015951.a n = A310498 n

end A310498

/-! ## A310498.P9178398499970891685

`A008706(n)-A101455(n)`
-/

namespace A310498.P9178398499970891685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A101455 n

end

end A310498.P9178398499970891685

namespace A310498

/-- `A008706(n)-A101455(n)` -/
def P9178398499970891685.Spec : Prop :=
  ∀ n, P9178398499970891685.a n = A310498 n

end A310498

/-! ## A310498.P4488490794847281982

`A002081(n)-A176742(n)`
-/

namespace A310498.P4488490794847281982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n - A176742 n

end

end A310498.P4488490794847281982

namespace A310498

/-- `A002081(n)-A176742(n)` -/
def P4488490794847281982.Spec : Prop :=
  ∀ n, P4488490794847281982.a n = A310498 n

end A310498

/-! ## A310498.P236689587208489062

`A047538(n+1)+A008486(n)`
-/

namespace A310498.P236689587208489062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1) + A008486 n

end

end A310498.P236689587208489062

namespace A310498

/-- `A047538(n+1)+A008486(n)` -/
def P236689587208489062.Spec : Prop :=
  ∀ n, P236689587208489062.a n = A310498 n

end A310498

/-! ## A310498.P15351829668527793284

`A056594(n+1)+A008706(n)`
-/

namespace A310498.P15351829668527793284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A008706 n

end

end A310498.P15351829668527793284

namespace A310498

/-- `A056594(n+1)+A008706(n)` -/
def P15351829668527793284.Spec : Prop :=
  ∀ n, P15351829668527793284.a n = A310498 n

end A310498

/-! ## A310498.P10255722557294575752

`A316317(n)+A008854(n+1)`
-/

namespace A310498.P10255722557294575752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316317 n + A008854 (n + 1)

end

end A310498.P10255722557294575752

namespace A310498

/-- `A316317(n)+A008854(n+1)` -/
def P10255722557294575752.Spec : Prop :=
  ∀ n, P10255722557294575752.a n = A310498 n

end A310498

/-! ## A310498.P52349337993833769

`A022144(n)-A157932(n+1)`
-/

namespace A310498.P52349337993833769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A157932 (n + 1)

end

end A310498.P52349337993833769

namespace A310498

/-- `A022144(n)-A157932(n+1)` -/
def P52349337993833769.Spec : Prop :=
  ∀ n, P52349337993833769.a n = A310498 n

end A310498

/-!
# A310499: Coordination sequence Gal.6.351.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310499, the canonical program `A310499.P8703764573718769479` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310499 has offset 0).

The definition of A310499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310499.P10348556278581755909

`abs(A008592(n)-A315210(n))`
-/

namespace A310499.P10348556278581755909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315210 n|

end

end A310499.P10348556278581755909

namespace A310499

/-- `abs(A008592(n)-A315210(n))` -/
def P10348556278581755909.Spec : Prop :=
  ∀ n, P10348556278581755909.a n = A310499 n

end A310499

/-! ## A310499.P16286876040185266400

`2*A008706(n)-A315210(n)`
-/

namespace A310499.P16286876040185266400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315210 n

end

end A310499.P16286876040185266400

namespace A310499

/-- `2*A008706(n)-A315210(n)` -/
def P16286876040185266400.Spec : Prop :=
  ∀ n, P16286876040185266400.a n = A310499 n

end A310499

/-! ## A310499.P11611061386414792995

`A008458(n)+A008574(n)-A315210(n)`
-/

namespace A310499.P11611061386414792995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315210 n)

end

end A310499.P11611061386414792995

namespace A310499

/-- `A008458(n)+A008574(n)-A315210(n)` -/
def P11611061386414792995.Spec : Prop :=
  ∀ n, P11611061386414792995.a n = A310499 n

end A310499

/-! ## A310499.P5259630428946159138

`2*A313696(n)-A315183(n)`
-/

namespace A310499.P5259630428946159138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313696 n - A315183 n

end

end A310499.P5259630428946159138

namespace A310499

/-- `2*A313696(n)-A315183(n)` -/
def P5259630428946159138.Spec : Prop :=
  ∀ n, P5259630428946159138.a n = A310499 n

end A310499

/-! ## A310499.P8703764573718769479

`A310442(n)+A004525(A310442(n)-A310371(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A310499

/-- `A310442(n)+A004525(A310442(n)-A310371(n))` -/
def P8703764573718769479.Spec : Prop :=
  ∀ n, P8703764573718769479.a n = A310499 n

theorem P8703764573718769479.correct : P8703764573718769479.Spec := by
  intro n
  simp only [A310499]

end A310499

/-! ## A310499.P8252954601036335147

`A310442(n)+A004525(A310442(n)-A310374(n))`
-/

namespace A310499.P8252954601036335147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310442 n + A004525 (A310442 n - A310374 n).toNat

end

end A310499.P8252954601036335147

namespace A310499

/-- `A310442(n)+A004525(A310442(n)-A310374(n))` -/
def P8252954601036335147.Spec : Prop :=
  ∀ n, P8252954601036335147.a n = A310499 n

end A310499

/-! ## A310499.P10555859282827665424

`A310455(n)+Δ[A011864(n)]`
-/

namespace A310499.P10555859282827665424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310455 n + (f1 (n + 1) - f1 n)

end

end A310499.P10555859282827665424

namespace A310499

/-- `A310455(n)+Δ[A011864(n)]` -/
def P10555859282827665424.Spec : Prop :=
  ∀ n, P10555859282827665424.a n = A310499 n

end A310499

/-! ## A310499.P10131288599649314189

`(A310505(n)+A310496(n))/2`
-/

namespace A310499.P10131288599649314189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310505 n + A310496 n : ℚ) / 2

end

end A310499.P10131288599649314189

namespace A310499

/-- `(A310505(n)+A310496(n))/2` -/
def P10131288599649314189.Spec : Prop :=
  ∀ n, P10131288599649314189.a n = (A310499 n : ℚ)

end A310499

/-! ## A310499.P9345314389381003277

`A310496(n)+A004525(A310505(n)-A310496(n))`
-/

namespace A310499.P9345314389381003277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310496 n + A004525 (A310505 n - A310496 n).toNat

end

end A310499.P9345314389381003277

namespace A310499

/-- `A310496(n)+A004525(A310505(n)-A310496(n))` -/
def P9345314389381003277.Spec : Prop :=
  ∀ n, P9345314389381003277.a n = A310499 n

end A310499

/-! ## A310499.P18126292378832758690

`A005843(A313696(n))-A315183(n)`
-/

namespace A310499.P18126292378832758690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313696 n).toNat - A315183 n

end

end A310499.P18126292378832758690

namespace A310499

/-- `A005843(A313696(n))-A315183(n)` -/
def P18126292378832758690.Spec : Prop :=
  ∀ n, P18126292378832758690.a n = A310499 n

end A310499

/-! ## A310499.P2299507668335465376

`A005843(A008706(n))-A315210(n)`
-/

namespace A310499.P2299507668335465376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315210 n

end

end A310499.P2299507668335465376

namespace A310499

/-- `A005843(A008706(n))-A315210(n)` -/
def P2299507668335465376.Spec : Prop :=
  ∀ n, P2299507668335465376.a n = A310499 n

end A310499

/-! ## A310499.P2552133539467764019

`A065502(A314210(n))-A008574(n)`
-/

namespace A310499.P2552133539467764019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A314210 n).toNat - A008574 n

end

end A310499.P2552133539467764019

namespace A310499

/-- `A065502(A314210(n))-A008574(n)` -/
def P2552133539467764019.Spec : Prop :=
  ∀ n, P2552133539467764019.a n = A310499 n

end A310499

/-! ## A310499.P9839884406914129216

`A004525(A310505(n)+A310496(n))`
-/

namespace A310499.P9839884406914129216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310505 n + A310496 n).toNat

end

end A310499.P9839884406914129216

namespace A310499

/-- `A004525(A310505(n)+A310496(n))` -/
def P9839884406914129216.Spec : Prop :=
  ∀ n, P9839884406914129216.a n = A310499 n

end A310499

