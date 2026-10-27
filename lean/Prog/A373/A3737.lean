import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A373700: Number of distinct length-n blocks in the Thue-Morse sequence (A010060), counted up to reversal.

The programs for A373700, there is no canonical definition to state claims against.
-/

/-! ## A373700.P1049313812948027142

`A004526(A159782(n)+A005942(n))`
-/

namespace A373700.P1049313812948027142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A159782 n + A005942 n).toNat

end

end A373700.P1049313812948027142

/-! ## A373700.P3766726264508098984

`A025480(A159782(n)+A005942(n))`
-/

namespace A373700.P3766726264508098984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A159782 n + A005942 n).toNat

end

end A373700.P3766726264508098984

/-! ## A373700.P6169824028372458862

`A026741(A159782(n)+A005942(n))`
-/

namespace A373700.P6169824028372458862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A159782 n + A005942 n).toNat

end

end A373700.P6169824028372458862

/-! ## A373700.P4764132192997600715

`A029578(A159782(n)+A005942(n))`
-/

namespace A373700.P4764132192997600715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A159782 n + A005942 n).toNat

end

end A373700.P4764132192997600715

/-! ## A373700.P14506157164438682867

`A032742(A159782(n)+A005942(n))`
-/

namespace A373700.P14506157164438682867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A159782 n + A005942 n).toNat

end

end A373700.P14506157164438682867

/-! ## A373700.P262675526498441334

`A060681(A159782(n)+A005942(n))`
-/

namespace A373700.P262675526498441334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A159782 n + A005942 n).toNat

end

end A373700.P262675526498441334

/-! ## A373700.P8010731705675032373

`A289435(A159782(n)+A005942(n))`
-/

namespace A373700.P8010731705675032373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A159782 n + A005942 n).toNat

end

end A373700.P8010731705675032373

/-! ## A373700.P4323296552418599179

`A289436(A159782(n)+A005942(n))`
-/

namespace A373700.P4323296552418599179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A159782 n + A005942 n).toNat

end

end A373700.P4323296552418599179

/-! ## A373700.P582937998057616304

`A025480(A159782(n)+A214214(n)+1-A214212(n))`
-/

namespace A373700.P582937998057616304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A159782 n + (A214214 n + (1 - A214212 n))).toNat

end

end A373700.P582937998057616304

/-! ## A373700.P10454478002623733960

`A026741(A159782(n)+A214214(n)+1-A214212(n))`
-/

namespace A373700.P10454478002623733960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A159782 n + (A214214 n + (1 - A214212 n))).toNat

end

end A373700.P10454478002623733960

/-!
# A373701: Extension of Mahler-Popken complexity to the rationals. The minimal number of 1's required to build the n-th positive rational in the Cantor ordering using only +, /, and *.

The programs for A373701, there is no canonical definition to state claims against.
-/

/-! ## A373701.P8293330664293911309

`A296658(∑[A248416(n+1)+1])`
-/

namespace A373701.P8293330664293911309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248416 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373701.P8293330664293911309

/-! ## A373701.P507860718227612137

`A324923(A279337(2*(n+1))*A327472(2*(n+2)))`
-/

namespace A373701.P507860718227612137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (A279337 (2 * (n + 1)) * A327472 (2 * (n + 2))).toNat

end

end A373701.P507860718227612137

/-!
# A373703: a(n) = A062760(n)*A066636(n).

The programs for A373703, the canonical program `A373703.P799095936400560943` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373703 has offset 1).

The definition of A373703 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062760, A066636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373703.P799095936400560943

`A062760(n+1)*A066636(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373703

/-- `A062760(n+1)*A066636(n+1)` -/
def P799095936400560943.Spec : Prop :=
  ∀ n, P799095936400560943.a n = A373703 (n + 1)

theorem P799095936400560943.correct : P799095936400560943.Spec := by
  intro n
  simp only [A373703, Nat.add_sub_cancel]

end A373703

/-! ## A373703.P9295914889456726405

`A066638(n+1)/A062759(n+1)`
-/

namespace A373703.P9295914889456726405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (A062759 (n + 1) : ℚ)

end

end A373703.P9295914889456726405

namespace A373703

/-- `A066638(n+1)/A062759(n+1)` -/
def P9295914889456726405.Spec : Prop :=
  ∀ n, P9295914889456726405.a n = (A373703 (n + 1) : ℚ)

end A373703

/-! ## A373703.P14661740797943744010

`A007947(n+1)^A062977(n+1)`
-/

namespace A373703.P14661740797943744010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A062977 (n + 1) : ℤ)

end

end A373703.P14661740797943744010

namespace A373703

/-- `A007947(n+1)^A062977(n+1)` -/
def P14661740797943744010.Spec : Prop :=
  ∀ n, P14661740797943744010.a n = (A373703 (n + 1) : ℚ)

end A373703

/-! ## A373703.P16604562797950621709

`A066638(A304776(n+1))/A007947(n+1)`
-/

namespace A373703.P16604562797950621709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (A304776 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A373703.P16604562797950621709

namespace A373703

/-- `A066638(A304776(n+1))/A007947(n+1)` -/
def P16604562797950621709.Spec : Prop :=
  ∀ n, P16604562797950621709.a n = (A373703 (n + 1) : ℚ)

end A373703

/-! ## A373703.P13088308556953260133

`A003557(n+1)/A062759(n+1)*A304768(n+1)`
-/

namespace A373703.P13088308556953260133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A062759 (n + 1) : ℚ) * (A304768 (n + 1) : ℚ)

end

end A373703.P13088308556953260133

namespace A373703

/-- `A003557(n+1)/A062759(n+1)*A304768(n+1)` -/
def P13088308556953260133.Spec : Prop :=
  ∀ n, P13088308556953260133.a n = (A373703 (n + 1) : ℚ)

end A373703

/-! ## A373703.P10366863201930389089

`A066636(n+1)*A066636(A295417(n+1))`
-/

namespace A373703.P10366863201930389089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1) * A066636 (A295417 (n + 1)).toNat

end

end A373703.P10366863201930389089

namespace A373703

/-- `A066636(n+1)*A066636(A295417(n+1))` -/
def P10366863201930389089.Spec : Prop :=
  ∀ n, P10366863201930389089.a n = A373703 (n + 1)

end A373703

/-! ## A373703.P3814412745090286203

`A066636(n+1)*A066636(A304768(n+1))`
-/

namespace A373703.P3814412745090286203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1) * A066636 (A304768 (n + 1)).toNat

end

end A373703.P3814412745090286203

namespace A373703

/-- `A066636(n+1)*A066636(A304768(n+1))` -/
def P3814412745090286203.Spec : Prop :=
  ∀ n, P3814412745090286203.a n = A373703 (n + 1)

end A373703

/-! ## A373703.P11856647796941148592

`A354090(A066638(A304776(n+1)))`
-/

namespace A373703.P11856647796941148592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 (A066638 (A304776 (n + 1)).toNat).toNat

end

end A373703.P11856647796941148592

namespace A373703

/-- `A354090(A066638(A304776(n+1)))` -/
def P11856647796941148592.Spec : Prop :=
  ∀ n, P11856647796941148592.a n = A373703 (n + 1)

end A373703

/-! ## A373703.P7900062129948879859

`A354090(A066638(n+1)/A354090(n+1))`
-/

namespace A373703.P7900062129948879859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 (SequenceMachineLib.roundAway ((A066638 (n + 1) : ℚ) / (A354090 (n + 1) : ℚ))).toNat

end

end A373703.P7900062129948879859

namespace A373703

/-- `A354090(A066638(n+1)/A354090(n+1))` -/
def P7900062129948879859.Spec : Prop :=
  ∀ n, P7900062129948879859.a n = A373703 (n + 1)

end A373703

/-! ## A373703.P283348084240326912

`A354090(A066638(A304768(n+1)))`
-/

namespace A373703.P283348084240326912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 (A066638 (A304768 (n + 1)).toNat).toNat

end

end A373703.P283348084240326912

namespace A373703

/-- `A354090(A066638(A304768(n+1)))` -/
def P283348084240326912.Spec : Prop :=
  ∀ n, P283348084240326912.a n = A373703 (n + 1)

end A373703

/-! ## A373703.P3766858050187295554

`A003557(A304768(n+1))*A062760(n+1)`
-/

namespace A373703.P3766858050187295554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A304768 (n + 1)).toNat * A062760 (n + 1)

end

end A373703.P3766858050187295554

namespace A373703

/-- `A003557(A304768(n+1))*A062760(n+1)` -/
def P3766858050187295554.Spec : Prop :=
  ∀ n, P3766858050187295554.a n = A373703 (n + 1)

end A373703

/-! ## A373703.P5314019702315206991

`A062760(n+1)*A062760(A295417(n+1))`
-/

namespace A373703.P5314019702315206991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1) * A062760 (A295417 (n + 1)).toNat

end

end A373703.P5314019702315206991

namespace A373703

/-- `A062760(n+1)*A062760(A295417(n+1))` -/
def P5314019702315206991.Spec : Prop :=
  ∀ n, P5314019702315206991.a n = A373703 (n + 1)

end A373703

/-! ## A373703.P14530560517756133038

`A066638(A304776(n+1))/A304776(A066638(n+1))`
-/

namespace A373703.P14530560517756133038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (A304776 (n + 1)).toNat : ℚ) / (A304776 (A066638 (n + 1)).toNat : ℚ)

end

end A373703.P14530560517756133038

namespace A373703

/-- `A066638(A304776(n+1))/A304776(A066638(n+1))` -/
def P14530560517756133038.Spec : Prop :=
  ∀ n, P14530560517756133038.a n = (A373703 (n + 1) : ℚ)

end A373703

/-!
# A373706: Expansion of 1/(1 - x * (1 + x^4)^2).

The programs for A373706, the canonical program `A373706.P4613570443005576679` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373706 has offset 0).

The definition of A373706 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^5-x^9))` (program `A373706.P4613570443005576679`, by `A373706.P4613570443005576679.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373706.P4613570443005576679

`ogf(1/(1-x-2x^5-x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373706

/-- `ogf(1/(1-x-2x^5-x^9))` -/
def P4613570443005576679.Spec : Prop :=
  ∀ n, P4613570443005576679.a n = A373706 n

theorem P4613570443005576679.correct : P4613570443005576679.Spec := by
  intro n
  simp only [A373706]

end A373706

/-! ## A373706.P15867137833284371188

`a(n-1)+2*a(n-5)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=3, a(6)=5, a(7)=7, a(8)=9`
-/

namespace A373706.P15867137833284371188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 3, 5, 7, 9] fun n a =>
  a (n - 1) + 2 * a (n - 5) + a (n - 9)

end

end A373706.P15867137833284371188

namespace A373706

/-- `a(n-1)+2*a(n-5)+a(n-9)` -/
def P15867137833284371188.Spec : Prop :=
  ∀ n, (P15867137833284371188.a n : ℤ) = A373706 n

end A373706

/-! ## A373706.P15783922392223686667

`A017903(2*n+9)`
-/

namespace A373706.P15783922392223686667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 (2 * n + 9)

end

end A373706.P15783922392223686667

namespace A373706

/-- `A017903(2*n+9)` -/
def P15783922392223686667.Spec : Prop :=
  ∀ n, P15783922392223686667.a n = A373706 n

end A373706

/-! ## A373706.P5740001625277703754

`A005711(A004273(n))`
-/

namespace A373706.P5740001625277703754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A004273 n).toNat

end

end A373706.P5740001625277703754

namespace A373706

/-- `A005711(A004273(n))` -/
def P5740001625277703754.Spec : Prop :=
  ∀ n, P5740001625277703754.a n = A373706 n

end A373706

/-! ## A373706.P11081680791194696042

`A005711(A163985(n))`
-/

namespace A373706.P11081680791194696042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A163985 n).toNat

end

end A373706.P11081680791194696042

namespace A373706

/-- `A005711(A163985(n))` -/
def P11081680791194696042.Spec : Prop :=
  ∀ n, P11081680791194696042.a n = A373706 n

end A373706

/-! ## A373706.P5833008558512214309

`A005711(A004274(n+1))`
-/

namespace A373706.P5833008558512214309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A004274 (n + 1)).toNat

end

end A373706.P5833008558512214309

namespace A373706

/-- `A005711(A004274(n+1))` -/
def P5833008558512214309.Spec : Prop :=
  ∀ n, P5833008558512214309.a n = A373706 n

end A373706

/-! ## A373706.P1007406507411853686

`A005711(A004280(n+1))`
-/

namespace A373706.P1007406507411853686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A004280 (n + 1)).toNat

end

end A373706.P1007406507411853686

namespace A373706

/-- `A005711(A004280(n+1))` -/
def P1007406507411853686.Spec : Prop :=
  ∀ n, P1007406507411853686.a n = A373706 n

end A373706

/-! ## A373706.P9530805149303687197

`A005711(A004281(n+1))`
-/

namespace A373706.P9530805149303687197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A004281 (n + 1)).toNat

end

end A373706.P9530805149303687197

namespace A373706

/-- `A005711(A004281(n+1))` -/
def P9530805149303687197.Spec : Prop :=
  ∀ n, P9530805149303687197.a n = A373706 n

end A373706

/-! ## A373706.P5755150273410783029

`A005711(A092535(n)+1)`
-/

namespace A373706.P5755150273410783029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005711 (A092535 n + 1).toNat

end

end A373706.P5755150273410783029

namespace A373706

/-- `A005711(A092535(n)+1)` -/
def P5755150273410783029.Spec : Prop :=
  ∀ n, P5755150273410783029.a n = A373706 n

end A373706

/-!
# A373707: Expansion of e.g.f. exp(x * (1 + x^3)^2).

The programs for A373707, there is no canonical definition to state claims against.
-/

/-! ## A373707.P16524031725575855418

`A000069(A354553(n))`
-/

namespace A373707.P16524031725575855418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A354553 n).toNat

end

end A373707.P16524031725575855418

/-! ## A373707.P18315136959177342094

`A000069(A367719(n))`
-/

namespace A373707.P18315136959177342094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A367719 n).toNat

end

end A373707.P18315136959177342094

/-! ## A373707.P13617053510353886224

`A005408(A367719(n)-1)`
-/

namespace A373707.P13617053510353886224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A367719 n - 1).toNat

end

end A373707.P13617053510353886224

/-! ## A373707.P1508585651037340475

`A033465(A354553(n)-1)`
-/

namespace A373707.P1508585651037340475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033465 (A354553 n - 1).toNat

end

end A373707.P1508585651037340475

/-!
# A373708: Expansion of e.g.f. exp(x * (1 + x^4)^2).

The programs for A373708, there is no canonical definition to state claims against.
-/

/-! ## A373708.P16240312346594781060

`A052787(n)+A000027(A293507(n))`
-/

namespace A373708.P16240312346594781060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 n + A000027 (A293507 n).toNat

end

end A373708.P16240312346594781060

/-! ## A373708.P12678801472397853554

`A052787(n)+A000027(A356630(n))`
-/

namespace A373708.P12678801472397853554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 n + A000027 (A356630 n).toNat

end

end A373708.P12678801472397853554

/-! ## A373708.P18088815045723220231

`A356630(n)+A168273(A361673(n))`
-/

namespace A373708.P18088815045723220231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356630 n + A168273 (A361673 n).toNat

end

end A373708.P18088815045723220231

/-! ## A373708.P15612639594282335607

`A356630(n*A040790(n))+A052787(n)`
-/

namespace A373708.P15612639594282335607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356630 ((n : ℤ) * A040790 n).toNat + A052787 n

end

end A373708.P15612639594282335607

/-! ## A373708.P6537876376511887448

`A052787(n)+A158388(A000108(n))*A356630(n)`
-/

namespace A373708.P6537876376511887448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 n + A158388 (A000108 n).toNat * A356630 n

end

end A373708.P6537876376511887448

/-!
# A373709: Partial sums of A119387.

The programs for A373709, the canonical program `A373709.P5618252851889292635` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373709 has offset 0).

The definition of A373709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373709.P5618252851889292635

`A061168(n+1)-A011371(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A373709

/-- `A061168(n+1)-A011371(n+1)` -/
def P5618252851889292635.Spec : Prop :=
  ∀ n, P5618252851889292635.a n = A373709 n

theorem P5618252851889292635.correct : P5618252851889292635.Spec := by
  intro n
  simp only [A373709]

end A373709

/-! ## A373709.P1516192871421004402

`A001855(n+2)-A005187(n+1)`
-/

namespace A373709.P1516192871421004402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 2) - A005187 (n + 1)

end

end A373709.P1516192871421004402

namespace A373709

/-- `A001855(n+2)-A005187(n+1)` -/
def P1516192871421004402.Spec : Prop :=
  ∀ n, P1516192871421004402.a n = A373709 n

end A373709

/-! ## A373709.P15511244226246279645

`∑[floor(log2(n+1))-val(n+1, 2)]`
-/

namespace A373709.P15511244226246279645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373709.P15511244226246279645

namespace A373709

/-- `∑[floor(log2(n+1))-val(n+1, 2)]` -/
def P15511244226246279645.Spec : Prop :=
  ∀ n, P15511244226246279645.a n = A373709 n

end A373709

/-! ## A373709.P2746851046743909232

`∑[A119387(n)]`
-/

namespace A373709.P2746851046743909232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373709.P2746851046743909232

namespace A373709

/-- `∑[A119387(n)]` -/
def P2746851046743909232.Spec : Prop :=
  ∀ n, P2746851046743909232.a n = A373709 n

end A373709

/-! ## A373709.P7943781306779682830

`∑[log2(A082908(n))]`
-/

namespace A373709.P7943781306779682830
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A082908 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373709.P7943781306779682830

namespace A373709

/-- `∑[log2(A082908(n))]` -/
def P7943781306779682830.Spec : Prop :=
  ∀ n, P7943781306779682830.a n = (A373709 n : ℝ)

end A373709

/-! ## A373709.P12877390407201545682

`∑[A070940(n+1)-1]`
-/

namespace A373709.P12877390407201545682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373709.P12877390407201545682

namespace A373709

/-- `∑[A070940(n+1)-1]` -/
def P12877390407201545682.Spec : Prop :=
  ∀ n, P12877390407201545682.a n = A373709 n

end A373709

/-! ## A373709.P12317320709997393305

`∑[A023443(A070940(n+1))]`
-/

namespace A373709.P12317320709997393305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A070940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373709.P12317320709997393305

namespace A373709

/-- `∑[A023443(A070940(n+1))]` -/
def P12317320709997393305.Spec : Prop :=
  ∀ n, P12317320709997393305.a n = A373709 n

end A373709

/-! ## A373709.P3686359906282431651

`A239091(n+1)-A000523(n+1)`
-/

namespace A373709.P3686359906282431651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239091 (n + 1) - A000523 (n + 1)

end

end A373709.P3686359906282431651

namespace A373709

/-- `A239091(n+1)-A000523(n+1)` -/
def P3686359906282431651.Spec : Prop :=
  ∀ n, P3686359906282431651.a n = A373709 n

theorem P3686359906282431651.correct : P3686359906282431651.Spec := by
  intro n
  simp only [A373709, Nat.add_sub_cancel, A373709.P3686359906282431651.a, A373709.P5618252851889292635.a, A000523, A000523.P3314682526375882520.a, A011371, A011371.P12398255777927387864.a, A061168, A061168.P3968143495244259582.a, A239091, A239091.P6341556871755184229.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373709

/-! ## A373709.P17286542955656732050

`A001855(n+1)-A376116(n+1)`
-/

namespace A373709.P17286542955656732050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1) - A376116 (n + 1)

end

end A373709.P17286542955656732050

namespace A373709

/-- `A001855(n+1)-A376116(n+1)` -/
def P17286542955656732050.Spec : Prop :=
  ∀ n, P17286542955656732050.a n = A373709 n

end A373709

/-! ## A373709.P1534056262024448916

`A391696(n+1)-A113474(n+1)`
-/

namespace A373709.P1534056262024448916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391696 (n + 1) - A113474 (n + 1)

end

end A373709.P1534056262024448916

namespace A373709

/-- `A391696(n+1)-A113474(n+1)` -/
def P1534056262024448916.Spec : Prop :=
  ∀ n, P1534056262024448916.a n = A373709 n

end A373709

/-! ## A373709.P16878609901164010585

`∑[A070939(n+1)-A007814(2*(n+1))]`
-/

namespace A373709.P16878609901164010585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A007814 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373709.P16878609901164010585

namespace A373709

/-- `∑[A070939(n+1)-A007814(2*(n+1))]` -/
def P16878609901164010585.Spec : Prop :=
  ∀ n, P16878609901164010585.a n = A373709 n

end A373709

/-!
# A373710: Triangle read by rows: T(n,k) is the area of the square whose vertices divide the sides n of a circumscribed square into integer sections k and n - k, 0 <= k <= floor(n/2).

The programs for A373710, the canonical program `A373710.P6586249079354997292` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373710 has offset 0).

The definition of A373710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373710.P531801342748455708

`A069011(A091018(n))`
-/

namespace A373710.P531801342748455708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 (A091018 n).toNat

end

end A373710.P531801342748455708

namespace A373710

/-- `A069011(A091018(n))` -/
def P531801342748455708.Spec : Prop :=
  ∀ n, P531801342748455708.a n = A373710 n

end A373710

/-! ## A373710.P1751670910420364933

`A048147(eq[1, A162320(n+1)])`
-/

namespace A373710.P1751670910420364933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A373710.P1751670910420364933

namespace A373710

/-- `A048147(eq[1, A162320(n+1)])` -/
def P1751670910420364933.Spec : Prop :=
  ∀ n, P1751670910420364933.a n = A373710 n

end A373710

/-! ## A373710.P6586249079354997292

`A048147(lt[n, A038722(n+1)])`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A373710

/-- `A048147(lt[n, A038722(n+1)])` -/
def P6586249079354997292.Spec : Prop :=
  ∀ n, P6586249079354997292.a n = A373710 n

theorem P6586249079354997292.correct : P6586249079354997292.Spec := by
  intro n
  simp only [A373710]

end A373710

/-!
# A373714: Expansion of 1/(2 - (1 + 9*x)^(2/3)).

The programs for A373714, there is no canonical definition to state claims against.
-/

/-! ## A373714.P2347454447369594259

`3^∑[char[∑[n+1]]]*A002260(8^n+9^n)`
-/

namespace A373714.P2347454447369594259
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A002260 (8 ^ n + 9 ^ n)

end

end A373714.P2347454447369594259

/-!
# A373715: Expansion of 1/(2 - (1 + 4*x)^(3/2)).

The programs for A373715, there is no canonical definition to state claims against.
-/

/-! ## A373715.P10543643435086205420

`A333627(A033312(n))+A049685(n)`
-/

namespace A373715.P10543643435086205420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A033312 n).toNat + A049685 n

end

end A373715.P10543643435086205420

/-!
# A373716: a(n) is the number of distinct products i*j minus the number of distinct sums i+j with 1 <= i, j <= n.

The programs for A373716, there is no canonical definition to state claims against.
-/

/-! ## A373716.P11969226548856359422

`n²-A062851(n+1)`
-/

namespace A373716.P11969226548856359422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A062851 (n + 1)

end

end A373716.P11969226548856359422

/-! ## A373716.P2294422608965156975

`A027424(n+1)-A005408(n)`
-/

namespace A373716.P2294422608965156975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - A005408 n

end

end A373716.P2294422608965156975

/-! ## A373716.P13942066727110818445

`n²-∑[A062855(n+1)]`
-/

namespace A373716.P13942066727110818445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373716.P13942066727110818445

/-! ## A373716.P15885668660359010157

`A027384(n+1)-2*(n+1)`
-/

namespace A373716.P15885668660359010157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1) - (2 * (n + 1) : ℤ)

end

end A373716.P15885668660359010157

/-! ## A373716.P15401249483692595270

`A375109(n+1)-A108954(n+1)`
-/

namespace A373716.P15401249483692595270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375109 (n + 1) - A108954 (n + 1)

end

end A373716.P15401249483692595270

/-! ## A373716.P1980846944060853073

`A027424(n+1)+A000290(n)-A000290(n+1)`
-/

namespace A373716.P1980846944060853073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (A000290 n - A000290 (n + 1))

end

end A373716.P1980846944060853073

/-! ## A373716.P1602395939169269664

`A027424(n+1)-(A062855(n+1)+A062854(n+1))`
-/

namespace A373716.P1602395939169269664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - (A062855 (n + 1) + A062854 (n + 1))

end

end A373716.P1602395939169269664

/-! ## A373716.P10612983893873699783

`A027424(n+1)+A375109(n+1)-A263995(n+1)`
-/

namespace A373716.P10612983893873699783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) + (A375109 (n + 1) - A263995 (n + 1))

end

end A373716.P10612983893873699783

/-! ## A373716.P18173097416666305534

`A027424(A052938(2*n))-(2*n+1)`
-/

namespace A373716.P18173097416666305534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (A052938 (2 * n)).toNat - (2 * n + 1 : ℤ)

end

end A373716.P18173097416666305534

/-!
# A373717: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..floor(k*n/(2*k+1))} binomial(k * (n-2*j),j).

The programs for A373717, there is no canonical definition to state claims against.
-/

/-! ## A373717.P10727070273005254471

`A193517(n+2)%A322961(n+1)`
-/

namespace A373717.P10727070273005254471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193517 (n + 2)) (A322961 (n + 1))

end

end A373717.P10727070273005254471

/-! ## A373717.P17769462261280926498

`A070939(A261139(n)^A086597(n+4))`
-/

namespace A373717.P17769462261280926498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A261139 n : ℚ) ^ (A086597 (n + 4) : ℤ))).toNat

end

end A373717.P17769462261280926498

/-! ## A373717.P16299776802830947489

`A193517(n+2)%A000040(A000041(n))`
-/

namespace A373717.P16299776802830947489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193517 (n + 2)) (A000040 (A000041 n).toNat)

end

end A373717.P16299776802830947489

/-! ## A373717.P12689433543811194208

`A110592(A094544(n))`
-/

namespace A373717.P12689433543811194208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A094544 n).toNat

end

end A373717.P12689433543811194208

/-! ## A373717.P5572576122736759256

`A193517(n+2)+A008683(A017330(n))`
-/

namespace A373717.P5572576122736759256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (n + 2) + A008683 (A017330 n).toNat

end

end A373717.P5572576122736759256

/-!
# A373718: Expansion of 1/(1 - x * (1 + x^2)^3).

The programs for A373718, the canonical program `A373718.P6065164684385929648` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373718 has offset 0).

The definition of A373718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-3x^3-3x^5-x^7))` (program `A373718.P6065164684385929648`, by `A373718.P6065164684385929648.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373718.P6065164684385929648

`ogf(1/(1-x-3x^3-3x^5-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373718

/-- `ogf(1/(1-x-3x^3-3x^5-x^7))` -/
def P6065164684385929648.Spec : Prop :=
  ∀ n, P6065164684385929648.a n = A373718 n

theorem P6065164684385929648.correct : P6065164684385929648.Spec := by
  intro n
  simp only [A373718]

end A373718

/-! ## A373718.P12950442068064979016

`a(n-1)+3*a(n-3)+3*a(n-5)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=7, a(5)=13, a(6)=28`
-/

namespace A373718.P12950442068064979016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4, 7, 13, 28] fun n a =>
  a (n - 1) + 3 * a (n - 3) + 3 * a (n - 5) + a (n - 7)

end

end A373718.P12950442068064979016

namespace A373718

/-- `a(n-1)+3*a(n-3)+3*a(n-5)+a(n-7)` -/
def P12950442068064979016.Spec : Prop :=
  ∀ n, (P12950442068064979016.a n : ℤ) = A373718 n

end A373718

/-! ## A373718.P1674462252460527291

`A005709(3*n)`
-/

namespace A373718.P1674462252460527291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (3 * n)

end

end A373718.P1674462252460527291

namespace A373718

/-- `A005709(3*n)` -/
def P1674462252460527291.Spec : Prop :=
  ∀ n, P1674462252460527291.a n = A373718 n

end A373718

/-! ## A373718.P5891168920153037283

`A017901(A112414(n))`
-/

namespace A373718.P5891168920153037283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A112414 n).toNat

end

end A373718.P5891168920153037283

namespace A373718

/-- `A017901(A112414(n))` -/
def P5891168920153037283.Spec : Prop :=
  ∀ n, P5891168920153037283.a n = A373718 n

end A373718

/-! ## A373718.P15562146072794350564

`A017901(A016777(n+2))`
-/

namespace A373718.P15562146072794350564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A016777 (n + 2)).toNat

end

end A373718.P15562146072794350564

namespace A373718

/-- `A017901(A016777(n+2))` -/
def P15562146072794350564.Spec : Prop :=
  ∀ n, P15562146072794350564.a n = A373718 n

end A373718

/-! ## A373718.P14656608158686094315

`A017901(A086822(n+2))`
-/

namespace A373718.P14656608158686094315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A086822 (n + 2)).toNat

end

end A373718.P14656608158686094315

namespace A373718

/-- `A017901(A086822(n+2))` -/
def P14656608158686094315.Spec : Prop :=
  ∀ n, P14656608158686094315.a n = A373718 n

end A373718

/-! ## A373718.P18236824657848655477

`A017901(A020719(2*n)+n)`
-/

namespace A373718.P18236824657848655477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A020719 (2 * n) + (n : ℤ)).toNat

end

end A373718.P18236824657848655477

namespace A373718

/-- `A017901(A020719(2*n)+n)` -/
def P18236824657848655477.Spec : Prop :=
  ∀ n, P18236824657848655477.a n = A373718 n

end A373718

/-! ## A373718.P2964738668832470141

`or(A000007(n), A005709(A008486(n)))`
-/

namespace A373718.P2964738668832470141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A005709 (A008486 n).toNat)

end

end A373718.P2964738668832470141

namespace A373718

/-- `or(A000007(n), A005709(A008486(n)))` -/
def P2964738668832470141.Spec : Prop :=
  ∀ n, P2964738668832470141.a n = A373718 n

end A373718

/-!
# A373719: a(n) = Sum_{k=0..floor(n^2/(2*n+1))} binomial(n * (n-2*k),k).

The programs for A373719, there is no canonical definition to state claims against.
-/

/-! ## A373719.P1789626456695336092

`A373717(∑[4*n])`
-/

namespace A373719.P1789626456695336092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373717 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373719.P1789626456695336092

/-!
# A373720: Expansion of e.g.f. exp(x * (1 + x^2)^3).

The programs for A373720, there is no canonical definition to state claims against.
-/

/-! ## A373720.P13533428585007091563

`A016777(A373578(n)-A118395(n))`
-/

namespace A373720.P13533428585007091563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A373578 n - A118395 n).toNat

end

end A373720.P13533428585007091563

/-! ## A373720.P5898328902059584840

`A016777(A373578(n)-A118396(n))`
-/

namespace A373720.P5898328902059584840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A373578 n - A118396 n).toNat

end

end A373720.P5898328902059584840

/-!
# A373722: Lexicographically earliest sequence of distinct positive numbers using exactly one digit 1, two digits 2, three digits 3, four digits 4, five digits 5, six digits 6, seven digits 7, eight digits 8, nine digits 9 and no digit 0.

The programs for A373722, there is no canonical definition to state claims against.
-/

/-! ## A373722.P8831490141472555494

`record[gcd(n+1, ∑[A117816(n+1)])]`
-/

namespace A373722.P8831490141472555494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117816 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373722.P8831490141472555494

/-! ## A373722.P15124358465094476855

`A138141(A106000(n+1))`
-/

namespace A373722.P15124358465094476855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138141 (A106000 (n + 1)).toNat

end

end A373722.P15124358465094476855

/-! ## A373722.P8441559770478662362

`A123093(A342810(n+1))`
-/

namespace A373722.P8441559770478662362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123093 (A342810 (n + 1)).toNat

end

end A373722.P8441559770478662362

/-! ## A373722.P195691727462249441

`A230776(A319725(n+1))`
-/

namespace A373722.P195691727462249441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230776 (A319725 (n + 1)).toNat

end

end A373722.P195691727462249441

/-! ## A373722.P16828981735898917711

`A341935(A290950(n+1))`
-/

namespace A373722.P16828981735898917711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A290950 (n + 1)).toNat

end

end A373722.P16828981735898917711

/-!
# A373725: Numbers k such that A011776(k) = A011776(k+1).

The programs for A373725, there is no canonical definition to state claims against.
-/

/-! ## A373725.P8222930228941309981

`eq[A011776(n+1), A011776(n+2)]+1`
-/

namespace A373725.P8222930228941309981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A373725.P8222930228941309981

/-! ## A373725.P8025981054829075384

`A232012(A368094(n)+A232012(n+1))`
-/

namespace A373725.P8025981054829075384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232012 (A368094 n + A232012 (n + 1)).toNat

end

end A373725.P8025981054829075384

/-!
# A373726: Least prime p such that there exist exactly n primes of the form q#-p (q# = product of primes <= q, namely primorial numbers (second definition)).

The programs for A373726, there is no canonical definition to state claims against.
-/

/-! ## A373726.P7755289431549836683

`A002034(A181367(n+2))`
-/

namespace A373726.P7755289431549836683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A181367 (n + 2)).toNat

end

end A373726.P7755289431549836683

/-! ## A373726.P5662464649349430089

`∩[A215370(n+1), A342740(n+1)]`
-/

namespace A373726.P5662464649349430089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373726.P5662464649349430089

/-!
# A373727: a(n) is the largest number that is the digit sum of an n-digit cube.

The programs for A373727, there is no canonical definition to state claims against.
-/

/-! ## A373727.P10971967679308321639

`A004164(A379869(n+1))`
-/

namespace A373727.P10971967679308321639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (A379869 (n + 1)).toNat

end

end A373727.P10971967679308321639

/-! ## A373727.P1619444265613592494

`A004164(A380052(n+1))`
-/

namespace A373727.P1619444265613592494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (A380052 (n + 1)).toNat

end

end A373727.P1619444265613592494

/-!
# A373730: Reduced Collatz function R applied to the numbers 6n+1: a(n) = R(6n+1), where R(k) = (3k+1)/2^r, with r as large as possible.

The programs for A373730, the canonical program `A373730.P14378342733449950770` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373730 has offset 0).

The definition of A373730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373730.P14378342733449950770

`A000265(A017185(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A373730

/-- `A000265(A017185(n))` -/
def P14378342733449950770.Spec : Prop :=
  ∀ n, P14378342733449950770.a n = A373730 n

theorem P14378342733449950770.correct : P14378342733449950770.Spec := by
  intro n
  simp only [A373730]

end A373730

/-! ## A373730.P5494344550620262905

`A000265(A008591(n)+2)`
-/

namespace A373730.P5494344550620262905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008591 n + 2).toNat

end

end A373730.P5494344550620262905

namespace A373730

/-- `A000265(A008591(n)+2)` -/
def P5494344550620262905.Spec : Prop :=
  ∀ n, P5494344550620262905.a n = A373730 n

theorem P5494344550620262905.correct : P5494344550620262905.Spec := by
  intro n
  simp only [A373730, Nat.add_sub_cancel, A373730.P5494344550620262905.a, A373730.P14378342733449950770.a, A000265, A000265.P16482698636471710744.a, A008591, A008591.P8937864482545511630.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373730

/-! ## A373730.P3991769171680985408

`A000265(A017209(n)-2)`
-/

namespace A373730.P3991769171680985408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017209 n - 2).toNat

end

end A373730.P3991769171680985408

namespace A373730

/-- `A000265(A017209(n)-2)` -/
def P3991769171680985408.Spec : Prop :=
  ∀ n, P3991769171680985408.a n = A373730 n

theorem P3991769171680985408.correct : P3991769171680985408.Spec := by
  intro n
  simp only [A373730, Nat.add_sub_cancel, A373730.P3991769171680985408.a, A373730.P14378342733449950770.a, A000265, A000265.P16482698636471710744.a, A017185, A017185.P12174419037402659888.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373730

/-! ## A373730.P10452322200478033706

`A000265(A350521(n)/2)`
-/

namespace A373730.P10452322200478033706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A350521 n : ℚ) / 2)).toNat

end

end A373730.P10452322200478033706

namespace A373730

/-- `A000265(A350521(n)/2)` -/
def P10452322200478033706.Spec : Prop :=
  ∀ n, P10452322200478033706.a n = A373730 n

end A373730

/-! ## A373730.P1398756998811504549

`A000265(A017089(n)+n)`
-/

namespace A373730.P1398756998811504549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017089 n + (n : ℤ)).toNat

end

end A373730.P1398756998811504549

namespace A373730

/-- `A000265(A017089(n)+n)` -/
def P1398756998811504549.Spec : Prop :=
  ∀ n, P1398756998811504549.a n = A373730 n

theorem P1398756998811504549.correct : P1398756998811504549.Spec := by
  intro n
  simp only [A373730, Nat.add_sub_cancel, A373730.P1398756998811504549.a, A373730.P14378342733449950770.a, A000265, A000265.P16482698636471710744.a, A017089, A017089.P13709942329986306669.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373730

/-! ## A373730.P15034518171877203242

`A000265(A017293(n)-n)`
-/

namespace A373730.P15034518171877203242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017293 n - (n : ℤ)).toNat

end

end A373730.P15034518171877203242

namespace A373730

/-- `A000265(A017293(n)-n)` -/
def P15034518171877203242.Spec : Prop :=
  ∀ n, P15034518171877203242.a n = A373730 n

theorem P15034518171877203242.correct : P15034518171877203242.Spec := by
  intro n
  simp only [A373730, Nat.add_sub_cancel, A373730.P15034518171877203242.a, A373730.P14378342733449950770.a, A000265, A000265.P16482698636471710744.a, A017185, A017185.P12174419037402659888.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373730

/-! ## A373730.P12464106164267206730

`A000265(A016825(2*n)+n)`
-/

namespace A373730.P12464106164267206730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A016825 (2 * n) + (n : ℤ)).toNat

end

end A373730.P12464106164267206730

namespace A373730

/-- `A000265(A016825(2*n)+n)` -/
def P12464106164267206730.Spec : Prop :=
  ∀ n, P12464106164267206730.a n = A373730 n

theorem P12464106164267206730.correct : P12464106164267206730.Spec := by
  intro n
  simp only [A373730, Nat.add_sub_cancel, A373730.P12464106164267206730.a, A373730.P14378342733449950770.a, A000265, A000265.P16482698636471710744.a, A016825, A016825.P4712696052905976233.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373730

/-! ## A373730.P3755678766512302167

`A000265(A350521(n))`
-/

namespace A373730.P3755678766512302167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A350521 n).toNat

end

end A373730.P3755678766512302167

namespace A373730

/-- `A000265(A350521(n))` -/
def P3755678766512302167.Spec : Prop :=
  ∀ n, P3755678766512302167.a n = A373730 n

end A373730

/-! ## A373730.P17942631379734798073

`A000265(A242215(n)-1)`
-/

namespace A373730.P17942631379734798073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A242215 n - 1).toNat

end

end A373730.P17942631379734798073

namespace A373730

/-- `A000265(A242215(n)-1)` -/
def P17942631379734798073.Spec : Prop :=
  ∀ n, P17942631379734798073.a n = A373730 n

end A373730

/-! ## A373730.P6823607356490162276

`A171435(A242215(n)-1)`
-/

namespace A373730.P6823607356490162276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A242215 n - 1).toNat

end

end A373730.P6823607356490162276

namespace A373730

/-- `A171435(A242215(n)-1)` -/
def P6823607356490162276.Spec : Prop :=
  ∀ n, P6823607356490162276.a n = A373730 n

end A373730

/-! ## A373730.P15876705076074822553

`A000265(A174029(2*n)+1)`
-/

namespace A373730.P15876705076074822553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A174029 (2 * n) + 1).toNat

end

end A373730.P15876705076074822553

namespace A373730

/-- `A000265(A174029(2*n)+1)` -/
def P15876705076074822553.Spec : Prop :=
  ∀ n, P15876705076074822553.a n = A373730 n

end A373730

/-! ## A373730.P7036922111142458631

`A000265(A085060(2*n)-1)`
-/

namespace A373730.P7036922111142458631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A085060 (2 * n) - 1).toNat

end

end A373730.P7036922111142458631

namespace A373730

/-- `A000265(A085060(2*n)-1)` -/
def P7036922111142458631.Spec : Prop :=
  ∀ n, P7036922111142458631.a n = A373730 n

end A373730

/-! ## A373730.P16434734671365410142

`A000265(A017209(2*n))`
-/

namespace A373730.P16434734671365410142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017209 (2 * n)).toNat

end

end A373730.P16434734671365410142

namespace A373730

/-- `A000265(A017209(2*n))` -/
def P16434734671365410142.Spec : Prop :=
  ∀ n, P16434734671365410142.a n = A373730 n

end A373730

/-! ## A373730.P13886492056643560471

`A000265(A017221(2*n)-1)`
-/

namespace A373730.P13886492056643560471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017221 (2 * n) - 1).toNat

end

end A373730.P13886492056643560471

namespace A373730

/-- `A000265(A017221(2*n)-1)` -/
def P13886492056643560471.Spec : Prop :=
  ∀ n, P13886492056643560471.a n = A373730 n

end A373730

/-! ## A373730.P14052845417215247109

`A171435(A017221(2*n)-1)`
-/

namespace A373730.P14052845417215247109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017221 (2 * n) - 1).toNat

end

end A373730.P14052845417215247109

namespace A373730

/-- `A171435(A017221(2*n)-1)` -/
def P14052845417215247109.Spec : Prop :=
  ∀ n, P14052845417215247109.a n = A373730 n

end A373730

/-! ## A373730.P7944983908005253688

`A000265(A260658(2*n)-1)`
-/

namespace A373730.P7944983908005253688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A260658 (2 * n) - 1).toNat

end

end A373730.P7944983908005253688

namespace A373730

/-- `A000265(A260658(2*n)-1)` -/
def P7944983908005253688.Spec : Prop :=
  ∀ n, P7944983908005253688.a n = A373730 n

end A373730

/-! ## A373730.P11537623498794610193

`A000265(A017233(2*n)-2)`
-/

namespace A373730.P11537623498794610193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017233 (2 * n) - 2).toNat

end

end A373730.P11537623498794610193

namespace A373730

/-- `A000265(A017233(2*n)-2)` -/
def P11537623498794610193.Spec : Prop :=
  ∀ n, P11537623498794610193.a n = A373730 n

end A373730

/-! ## A373730.P2655499716377100021

`A171435(A017233(2*n)-2)`
-/

namespace A373730.P2655499716377100021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017233 (2 * n) - 2).toNat

end

end A373730.P2655499716377100021

namespace A373730

/-- `A171435(A017233(2*n)-2)` -/
def P2655499716377100021.Spec : Prop :=
  ∀ n, P2655499716377100021.a n = A373730 n

end A373730

/-! ## A373730.P2837978742311061283

`A000265(A306771(2*n+1)+1)`
-/

namespace A373730.P2837978742311061283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A306771 (2 * n + 1) + 1).toNat

end

end A373730.P2837978742311061283

namespace A373730

/-- `A000265(A306771(2*n+1)+1)` -/
def P2837978742311061283.Spec : Prop :=
  ∀ n, P2837978742311061283.a n = A373730 n

end A373730

/-! ## A373730.P7776798129416690295

`A075677(3*n+1)`
-/

namespace A373730.P7776798129416690295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075677 (3 * n + 1)

end

end A373730.P7776798129416690295

namespace A373730

/-- `A075677(3*n+1)` -/
def P7776798129416690295.Spec : Prop :=
  ∀ n, P7776798129416690295.a n = A373730 n

end A373730

/-!
# A373731: Semiprimes k such that the digit reversal of k is a semiprime > k.

The programs for A373731, there is no canonical definition to state claims against.
-/

/-! ## A373731.P10135142251464603618

`∩[A050700(n+1), A085751(n+1)]`
-/

namespace A373731.P10135142251464603618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P10135142251464603618

/-! ## A373731.P809247881048543942

`∩[A050700(n+1), A097393(n+1)]`
-/

namespace A373731.P809247881048543942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P809247881048543942

/-! ## A373731.P10296660264075672559

`∩[A001358(n+1), A050700(n+1)]`
-/

namespace A373731.P10296660264075672559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P10296660264075672559

/-! ## A373731.P14980381091184567303

`filter[A050700(n+1), A064911(#)]`
-/

namespace A373731.P14980381091184567303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A373731.P14980381091184567303

/-! ## A373731.P8275173961719214215

`filter[A050700(n+1), A101040(#)]`
-/

namespace A373731.P8275173961719214215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A373731.P8275173961719214215

/-! ## A373731.P499326645135188881

`filter[A050700(n+1), A353799(#)]`
-/

namespace A373731.P499326645135188881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A373731.P499326645135188881

/-! ## A373731.P14013948357724379412

`∩[A050700(n+1), A176540(n+1)]`
-/

namespace A373731.P14013948357724379412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P14013948357724379412

/-! ## A373731.P3292270889414770305

`∩[A050700(n+1), A323644(n+1)]`
-/

namespace A373731.P3292270889414770305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P3292270889414770305

/-! ## A373731.P10130548622507762388

`∩[A050700(n+1), A346041(n+1)]`
-/

namespace A373731.P10130548622507762388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P10130548622507762388

/-! ## A373731.P8341627950958821273

`∩[A007964(n+1), A050700(n+1)]`
-/

namespace A373731.P8341627950958821273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P8341627950958821273

/-! ## A373731.P4091121682902768420

`∩[A037143(n+1), A050700(n+1)]`
-/

namespace A373731.P4091121682902768420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P4091121682902768420

/-! ## A373731.P642451733598512604

`∩[A050700(n+1), A354144(n+1)]`
-/

namespace A373731.P642451733598512604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P642451733598512604

/-! ## A373731.P6991670706143530019

`∩[A071589(n+1), A085751(n+1)]`
-/

namespace A373731.P6991670706143530019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P6991670706143530019

/-! ## A373731.P17650631908850123294

`∩[A071589(n+1), A097393(n+1)]`
-/

namespace A373731.P17650631908850123294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P17650631908850123294

/-! ## A373731.P458488932553783458

`∩[A097393(n+1), A131058(n+1)]`
-/

namespace A373731.P458488932553783458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P458488932553783458

/-! ## A373731.P17826540951230645041

`∩[A050700(n+1), A102466(n+1)]`
-/

namespace A373731.P17826540951230645041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A373731.P17826540951230645041

/-!
# A373732: a(n) = floor(4*n^2/sqrt(3)).

The programs for A373732, the canonical program `A373732.P14339361281745319111` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373732 has offset 0).

The definition of A373732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*n²/sqrt(3))` (program `A373732.P14339361281745319111`, by `A373732.P14339361281745319111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A373732.P14339361281745319111

`floor(4*n²/sqrt(3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373732

/-- `floor(4*n²/sqrt(3))` -/
def P14339361281745319111.Spec : Prop :=
  ∀ n, P14339361281745319111.a n = A373732 n

theorem P14339361281745319111.correct : P14339361281745319111.Spec := by
  intro n
  simp only [A373732]

end A373732

/-! ## A373732.P13950172714705231847

`A097337(A004277(n)²)`
-/

namespace A373732.P13950172714705231847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A004277 n ^ 2).toNat

end

end A373732.P13950172714705231847

namespace A373732

/-- `A097337(A004277(n)²)` -/
def P13950172714705231847.Spec : Prop :=
  ∀ n, P13950172714705231847.a n = A373732 n

end A373732

/-! ## A373732.P11879030412188942479

`A097337(A008574(n²))`
-/

namespace A373732.P11879030412188942479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A008574 (n ^ 2)).toNat

end

end A373732.P11879030412188942479

namespace A373732

/-- `A097337(A008574(n²))` -/
def P11879030412188942479.Spec : Prop :=
  ∀ n, P11879030412188942479.a n = A373732 n

end A373732

/-! ## A373732.P1311775737965570302

`A097337(A055808(n+1))`
-/

namespace A373732.P1311775737965570302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A055808 (n + 1)).toNat

end

end A373732.P1311775737965570302

namespace A373732

/-- `A097337(A055808(n+1))` -/
def P1311775737965570302.Spec : Prop :=
  ∀ n, P1311775737965570302.a n = A373732 n

end A373732

/-! ## A373732.P10164381036309143827

`A097337(A004277(n)^2)`
-/

namespace A373732.P10164381036309143827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A004277 n ^ 2).toNat

end

end A373732.P10164381036309143827

namespace A373732

/-- `A097337(A004277(n)^2)` -/
def P10164381036309143827.Spec : Prop :=
  ∀ n, P10164381036309143827.a n = A373732 n

end A373732

/-! ## A373732.P5500374946221515854

`A097337(A028310((2*n)²))`
-/

namespace A373732.P5500374946221515854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A028310 ((2 * n) ^ 2)).toNat

end

end A373732.P5500374946221515854

namespace A373732

/-- `A097337(A028310((2*n)²))` -/
def P5500374946221515854.Spec : Prop :=
  ∀ n, P5500374946221515854.a n = A373732 n

end A373732

/-! ## A373732.P3440158598181121079

`A097337((A028310(n)+n)²)`
-/

namespace A373732.P3440158598181121079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 ((A028310 n + (n : ℤ)) ^ 2).toNat

end

end A373732.P3440158598181121079

namespace A373732

/-- `A097337((A028310(n)+n)²)` -/
def P3440158598181121079.Spec : Prop :=
  ∀ n, P3440158598181121079.a n = A373732 n

end A373732

/-!
# A373733: Triangular numbers with tetrahedral indices: a(n) = (1/72) * (n*(n+1)*(n+2)*(n+3)*(n^2+2)).

The programs for A373733, the canonical program `A373733.P1392411414185310364` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373733 has offset 0).

The definition of A373733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373733.P14549168370533785174

`n*(n+1)*(n+2)*(n+3)*(n²+2)/72`
-/

namespace A373733.P14549168370533785174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (n + 3) * (n ^ 2 + 2) : ℚ) / 72

end

end A373733.P14549168370533785174

namespace A373733

/-- `n*(n+1)*(n+2)*(n+3)*(n²+2)/72` -/
def P14549168370533785174.Spec : Prop :=
  ∀ n, P14549168370533785174.a n = (A373733 n : ℚ)

end A373733

/-! ## A373733.P5125846655954236048

`1/72*n*(n+1)*(n+2)*(n+3)*(n²+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373733.P5125846655954236048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 72 * (n * (n + 1) * (n + 2) * (n + 3) * (n ^ 2 + 2) : ℚ)

end

end A373733.P5125846655954236048

namespace A373733

/-- `1/72*n*(n+1)*(n+2)*(n+3)*(n²+2)` -/
def P5125846655954236048.Spec : Prop :=
  ∀ n, P5125846655954236048.a n = (A373733 n : ℚ)

end A373733

/-! ## A373733.P11260138198529512460

`A000292(n)+A054563(n)`
-/

namespace A373733.P11260138198529512460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + A054563 n

end

end A373733.P11260138198529512460

namespace A373733

/-- `A000292(n)+A054563(n)` -/
def P11260138198529512460.Spec : Prop :=
  ∀ n, P11260138198529512460.a n = A373733 n

theorem P11260138198529512460.correct : P11260138198529512460.Spec := by
  intro n
  simp only [A373733, Nat.add_sub_cancel, A373733.P11260138198529512460.a, A373733.P1392411414185310364.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, A054563, A054563.P17816310526759205414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A373733

/-! ## A373733.P1392411414185310364

`A000217(A000292(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A373733

/-- `A000217(A000292(n))` -/
def P1392411414185310364.Spec : Prop :=
  ∀ n, P1392411414185310364.a n = A373733 n

theorem P1392411414185310364.correct : P1392411414185310364.Spec := by
  intro n
  simp only [A373733]

end A373733

/-! ## A373733.P8651922051607798964

`C(∑[∑[n]]+1, 2)`
-/

namespace A373733.P8651922051607798964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A373733.P8651922051607798964

namespace A373733

/-- `C(∑[∑[n]]+1, 2)` -/
def P8651922051607798964.Spec : Prop :=
  ∀ n, (P8651922051607798964.a n : ℤ) = A373733 n

end A373733

/-! ## A373733.P8022078383386414348

`A050406(n)-A213552(n+1)`
-/

namespace A373733.P8022078383386414348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050406 n - A213552 (n + 1)

end

end A373733.P8022078383386414348

namespace A373733

/-- `A050406(n)-A213552(n+1)` -/
def P8022078383386414348.Spec : Prop :=
  ∀ n, P8022078383386414348.a n = A373733 n

end A373733

/-! ## A373733.P10314757584082701930

`∑[A095166(n+1)]-A095166(n+1)`
-/

namespace A373733.P10314757584082701930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095166 (n + 1)

end

end A373733.P10314757584082701930

namespace A373733

/-- `∑[A095166(n+1)]-A095166(n+1)` -/
def P10314757584082701930.Spec : Prop :=
  ∀ n, P10314757584082701930.a n = A373733 n

end A373733

/-! ## A373733.P3115312196825112384

`A000217(∑[∑[n]])`
-/

namespace A373733.P3115312196825112384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A373733.P3115312196825112384

namespace A373733

/-- `A000217(∑[∑[n]])` -/
def P3115312196825112384.Spec : Prop :=
  ∀ n, P3115312196825112384.a n = A373733 n

end A373733

/-!
# A373735: a(n) = p^floor(log_p n) for p = A020639(n).

The programs for A373735, there is no canonical definition to state claims against.
-/

/-! ## A373735.P8421686096265363658

`A020639(n+2)^A280363(n+2)`
-/

namespace A373735.P8421686096265363658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) ^ (A280363 (n + 2) : ℤ)

end

end A373735.P8421686096265363658

/-! ## A373735.P1880621907825869783

`gcd(A169902(n+1), A275465(n+2))`
-/

namespace A373735.P1880621907825869783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169902 (n + 1)) (A275465 (n + 2))

end

end A373735.P1880621907825869783

/-! ## A373735.P12023392301680564748

`A028233(A064446(n+2))`
-/

namespace A373735.P12023392301680564748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A064446 (n + 2)).toNat

end

end A373735.P12023392301680564748

/-! ## A373735.P852819784574067344

`A138221(A275465(n+2))`
-/

namespace A373735.P852819784574067344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138221 (A275465 (n + 2)).toNat

end

end A373735.P852819784574067344

/-! ## A373735.P6480089141090602494

`A034699(A020639(n+2)*A139550(n+3))`
-/

namespace A373735.P6480089141090602494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A020639 (n + 2) * A139550 (n + 3)).toNat

end

end A373735.P6480089141090602494

/-!
# A373736: a(n) = largest nondivisor k < n such that A007947(k) | n, or 0 if k does not exist.

The programs for A373736, there is no canonical definition to state claims against.
-/

/-! ## A373736.P396490802568918210

`A338117(∑{p}[n+1, gcd(n, #)]^A374356(n))`
-/

namespace A373736.P396490802568918210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℚ) ^ (A374356 n : ℤ))).toNat

end

end A373736.P396490802568918210

/-! ## A373736.P16986470411780151157

`A007953(A333783(n+1)^A058071(n))`
-/

namespace A373736.P16986470411780151157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A333783 (n + 1) : ℚ) ^ (A058071 n : ℤ))).toNat

end

end A373736.P16986470411780151157

/-! ## A373736.P8166758098971059914

`A000523(A303707(n+1)^A069352(3*n+4))`
-/

namespace A373736.P8166758098971059914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A303707 (n + 1) : ℚ) ^ (A069352 (3 * n + 4) : ℤ))).toNat

end

end A373736.P8166758098971059914

/-! ## A373736.P6765678709397948935

`A337683(A156552(3*(n+1)))%A304404(n+1)`
-/

namespace A373736.P6765678709397948935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337683 (A156552 (3 * (n + 1))).toNat) (A304404 (n + 1))

end

end A373736.P6765678709397948935

/-!
# A373738: a(1) = 1, a(n) = floor((1/omega(n)!) * Product_{p | n} 1 + (log n)/(log p)), where omega = A001221.

The programs for A373738, there is no canonical definition to state claims against.
-/

/-! ## A373738.P7765938971656603046

`A375011(n+1)+A008479(n+1)`
-/

namespace A373738.P7765938971656603046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375011 (n + 1) + A008479 (n + 1)

end

end A373738.P7765938971656603046

/-! ## A373738.P1041153106507194201

`A010846(n+1)-A372192(n+1)`
-/

namespace A373738.P1041153106507194201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A372192 (n + 1)

end

end A373738.P1041153106507194201

/-! ## A373738.P11818850359239850633

`A243822(n+1)+∏{e}[n+1, #+1]-A372192(n+1)`
-/

namespace A373738.P11818850359239850633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A372192 (n + 1)

end

end A373738.P11818850359239850633

/-! ## A373738.P17986020560177813782

`A243822(n+1)+Δ[A054519(n)]-A372192(n+1)`
-/

namespace A373738.P17986020560177813782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + (f1 (n + 1) - f1 n) - A372192 (n + 1)

end

end A373738.P17986020560177813782

/-! ## A373738.P3715524936451964247

`Δ[eq[1, A275280(n+1)]]-A372192(n+1)`
-/

namespace A373738.P3715524936451964247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275280 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A372192 (n + 1)

end

end A373738.P3715524936451964247

/-! ## A373738.P9775564666935827381

`Δ[lt[A280269(n+1), 1]]-A372192(n+1)`
-/

namespace A373738.P9775564666935827381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280269 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A372192 (n + 1)

end

end A373738.P9775564666935827381

/-!
# A373740: Expansion of e.g.f. exp(x^2/2 * (1 + x)).

The programs for A373740, the canonical program `A373740.P924022233080512791` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373740 has offset 0).

The definition of A373740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373740.P924022233080512791

`(n-1)/2*(2*a(n-2)+3*(n-2)*a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373740

/-- `(n-1)/2*(2*a(n-2)+3*(n-2)*a(n-3))` -/
def P924022233080512791.Spec : Prop :=
  ∀ n, P924022233080512791.a n = (A373740 n : ℚ)

end A373740

/-! ## A373740.P5667534328636197474

`A216805(∑{d}[A048888(n), #])`
-/

namespace A373740.P5667534328636197474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216805 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A373740.P5667534328636197474

namespace A373740

/-- `A216805(∑{d}[A048888(n), #])` -/
def P5667534328636197474.Spec : Prop :=
  ∀ n, P5667534328636197474.a n = A373740 n

end A373740

/-! ## A373740.P11542065729682544513

`A356601(A254103(a(n-1)+2^(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A373740.P11542065729682544513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A356601 (A254103 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat).toNat

end

end A373740.P11542065729682544513

namespace A373740

/-- `A356601(A254103(a(n-1)+2^(n-1)))` -/
def P11542065729682544513.Spec : Prop :=
  ∀ n, P11542065729682544513.a n = A373740 n

end A373740

/-!
# A373741: Expansion of e.g.f. exp(x^2/2 * (1 + x)^3).

The programs for A373741, there is no canonical definition to state claims against.
-/

/-! ## A373741.P10877217091614332432

`xor(n, A378365(A368599(n)))`
-/

namespace A373741.P10877217091614332432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A378365 (A368599 n).toNat)

end

end A373741.P10877217091614332432

/-! ## A373741.P12247731824307470858

`A001835(n)-A001221(A260296(n+1))`
-/

namespace A373741.P12247731824307470858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n - A001221 (A260296 (n + 1)).toNat

end

end A373741.P12247731824307470858

/-!
# A373742: Expansion of e.g.f. exp(x^3/6 * (1 + x)).

The programs for A373742, the canonical program `A373742.P6593848782031434483` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373742 has offset 0).

The definition of A373742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A373742.P6593848782031434483

`(n-1)*(n-2)/6*(3*a(n-3)+4*(n-3)*a(n-4))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373742

/-- `(n-1)*(n-2)/6*(3*a(n-3)+4*(n-3)*a(n-4))` -/
def P6593848782031434483.Spec : Prop :=
  ∀ n, P6593848782031434483.a n = (A373742 n : ℚ)

end A373742

/-! ## A373742.P13352778116150145410

`and(A033184(A028988(n+1)), A128158(n+1))`
-/

namespace A373742.P13352778116150145410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033184 (A028988 (n + 1)).toNat) (A128158 (n + 1))

end

end A373742.P13352778116150145410

namespace A373742

/-- `and(A033184(A028988(n+1)), A128158(n+1))` -/
def P13352778116150145410.Spec : Prop :=
  ∀ n, P13352778116150145410.a n = A373742 n

end A373742

/-!
# A373745: Maximum length of a run of alternating bits in the base-2 representation of prime(n).

The programs for A373745, the canonical program `A373745.P15207298630489066722` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373745 has offset 1).

The definition of A373745 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374176, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A373745.P15207298630489066722

`A374176(A000040(n+1))+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A373745

/-- `A374176(A000040(n+1))+1` -/
def P15207298630489066722.Spec : Prop :=
  ∀ n, P15207298630489066722.a n = A373745 (n + 1)

theorem P15207298630489066722.correct : P15207298630489066722.Spec := by
  intro n
  simp only [A373745, Nat.add_sub_cancel]

end A373745

/-! ## A373745.P10954215715758359192

`A374176(Δ[A007504(n)])+1`
-/

namespace A373745.P10954215715758359192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (f1 (n + 1) - f1 n).toNat + 1

end

end A373745.P10954215715758359192

namespace A373745

/-- `A374176(Δ[A007504(n)])+1` -/
def P10954215715758359192.Spec : Prop :=
  ∀ n, P10954215715758359192.a n = A373745 (n + 1)

end A373745

/-! ## A373745.P12640438866582747661

`A374176(abs(Δ[A008348(n)]))+1`
-/

namespace A373745.P12640438866582747661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 |f1 (n + 1) - f1 n|.toNat + 1

end

end A373745.P12640438866582747661

namespace A373745

/-- `A374176(abs(Δ[A008348(n)]))+1` -/
def P12640438866582747661.Spec : Prop :=
  ∀ n, P12640438866582747661.a n = A373745 (n + 1)

end A373745

/-! ## A373745.P10435434586653550964

`A374176(abs(Δ[A022837(n)]))+1`
-/

namespace A373745.P10435434586653550964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 |f1 (n + 1) - f1 n|.toNat + 1

end

end A373745.P10435434586653550964

namespace A373745

/-- `A374176(abs(Δ[A022837(n)]))+1` -/
def P10435434586653550964.Spec : Prop :=
  ∀ n, P10435434586653550964.a n = A373745 (n + 1)

end A373745

/-! ## A373745.P4703360546280222590

`A374176(∑[A054541(n+1)])+1`
-/

namespace A373745.P4703360546280222590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A373745.P4703360546280222590

namespace A373745

/-- `A374176(∑[A054541(n+1)])+1` -/
def P4703360546280222590.Spec : Prop :=
  ∀ n, P4703360546280222590.a n = A373745 (n + 1)

end A373745

/-! ## A373745.P4805004385503660673

`A374176(A006093(n+1)+1)+1`
-/

namespace A373745.P4805004385503660673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (A006093 (n + 1) + 1).toNat + 1

end

end A373745.P4805004385503660673

namespace A373745

/-- `A374176(A006093(n+1)+1)+1` -/
def P4805004385503660673.Spec : Prop :=
  ∀ n, P4805004385503660673.a n = A373745 (n + 1)

theorem P4805004385503660673.correct : P4805004385503660673.Spec := by
  intro n
  simp only [A373745, Nat.add_sub_cancel, A373745.P4805004385503660673.a, A373745.P15207298630489066722.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A374176, A374176.P17733740990044206540.a, A087117, A087117.P11496041561774747190.a, A180201, A180201.P8787023281284758013.a, A035327, A035327.P258997810375859489.a, A278222, A278222.P17157169249717672707.a, A053644, A053644.P1707366427427647095.a, A124859, A124859.P14397477856790736102.a, A278159, A278159.P1523932836907847359.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373745

/-! ## A373745.P13909832217194817053

`A374176(A008864(n+1)-1)+1`
-/

namespace A373745.P13909832217194817053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (A008864 (n + 1) - 1).toNat + 1

end

end A373745.P13909832217194817053

namespace A373745

/-- `A374176(A008864(n+1)-1)+1` -/
def P13909832217194817053.Spec : Prop :=
  ∀ n, P13909832217194817053.a n = A373745 (n + 1)

theorem P13909832217194817053.correct : P13909832217194817053.Spec := by
  intro n
  simp only [A373745, Nat.add_sub_cancel, A373745.P13909832217194817053.a, A373745.P15207298630489066722.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A374176, A374176.P17733740990044206540.a, A087117, A087117.P11496041561774747190.a, A180201, A180201.P8787023281284758013.a, A035327, A035327.P258997810375859489.a, A278222, A278222.P17157169249717672707.a, A053644, A053644.P1707366427427647095.a, A124859, A124859.P14397477856790736102.a, A278159, A278159.P1523932836907847359.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373745

/-! ## A373745.P165736126055680904

`A374176(A040976(n+1)+2)+1`
-/

namespace A373745.P165736126055680904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (A040976 (n + 1) + 2).toNat + 1

end

end A373745.P165736126055680904

namespace A373745

/-- `A374176(A040976(n+1)+2)+1` -/
def P165736126055680904.Spec : Prop :=
  ∀ n, P165736126055680904.a n = A373745 (n + 1)

theorem P165736126055680904.correct : P165736126055680904.Spec := by
  intro n
  simp only [A373745, Nat.add_sub_cancel, A373745.P165736126055680904.a, A373745.P15207298630489066722.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A374176, A374176.P17733740990044206540.a, A087117, A087117.P11496041561774747190.a, A180201, A180201.P8787023281284758013.a, A035327, A035327.P258997810375859489.a, A278222, A278222.P17157169249717672707.a, A053644, A053644.P1707366427427647095.a, A124859, A124859.P14397477856790736102.a, A278159, A278159.P1523932836907847359.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A373745

/-! ## A373745.P13739876247504944540

`A374176(A067747(2*n+1))+1`
-/

namespace A373745.P13739876247504944540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (A067747 (2 * n + 1)).toNat + 1

end

end A373745.P13739876247504944540

namespace A373745

/-- `A374176(A067747(2*n+1))+1` -/
def P13739876247504944540.Spec : Prop :=
  ∀ n, P13739876247504944540.a n = A373745 (n + 1)

end A373745

/-! ## A373745.P9158305944734983449

`A374176(A014688(n+1)-(n+1))+1`
-/

namespace A373745.P9158305944734983449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374176 (A014688 (n + 1) - (n + 1 : ℤ)).toNat + 1

end

end A373745.P9158305944734983449

namespace A373745

/-- `A374176(A014688(n+1)-(n+1))+1` -/
def P9158305944734983449.Spec : Prop :=
  ∀ n, P9158305944734983449.a n = A373745 (n + 1)

end A373745

/-!
# A373748: Triangle read by rows: T(n, k) is k if k is a quadratic residue modulo n, otherwise is -k and is a quadratic nonresidue modulo n. T(0, 0) = 0 by convention.

The programs for A373748, there is no canonical definition to state claims against.
-/

/-! ## A373748.P13874016004939397201

`A002262(n)*A087960(A055314(n+2))`
-/

namespace A373748.P13874016004939397201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A087960 (A055314 (n + 2)).toNat

end

end A373748.P13874016004939397201

/-! ## A373748.P11412258364570159869

`A002260(n+1)-A279404(A293718(n))`
-/

namespace A373748.P11412258364570159869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A279404 (A293718 n).toNat

end

end A373748.P11412258364570159869

/-! ## A373748.P14511741830504233484

`A002262(n)*A008836(A000369(n+1))`
-/

namespace A373748.P14511741830504233484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A008836 (A000369 (n + 1)).toNat

end

end A373748.P14511741830504233484

/-! ## A373748.P16618515486869530231

`A002262(n)-A101064(A195644(n+1))`
-/

namespace A373748.P16618515486869530231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n - A101064 (A195644 (n + 1)).toNat

end

end A373748.P16618515486869530231

/-! ## A373748.P17095208025184519076

`A002260(n+1)-A319099(A002258(2*n+5))`
-/

namespace A373748.P17095208025184519076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A319099 (A002258 (2 * n + 5)).toNat

end

end A373748.P17095208025184519076

/-!
# A373749: Triangle read by rows: T(n, k) = MOD(k^2, n) where MOD(a, n) = a if n = 0 and otherwise a - n*floor(a/n). (Quadratic residue.)

The programs for A373749, there is no canonical definition to state claims against.
-/

/-! ## A373749.P13720544478183131428

`A095831(n+1)%∑[char[∑[n-1]]]`
-/

namespace A373749.P13720544478183131428
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095831 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A373749.P13720544478183131428

/-! ## A373749.P1215947140318597503

`(C(comp[∑[n]]-n, 2)-(n+1))²%A318274(n)`
-/

namespace A373749.P1215947140318597503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2) (A318274 n)

end

end A373749.P1215947140318597503

/-! ## A373749.P11442131905391431597

`A343720(A122797(n+1))`
-/

namespace A373749.P11442131905391431597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343720 (A122797 (n + 1)).toNat

end

end A373749.P11442131905391431597

/-! ## A373749.P15522826807917920490

`A069011(n)%A318274(n)`
-/

namespace A373749.P15522826807917920490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069011 n) (A318274 n)

end

end A373749.P15522826807917920490

/-! ## A373749.P11344559873070043958

`A073254(n)%A318274(n)`
-/

namespace A373749.P11344559873070043958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073254 n) (A318274 n)

end

end A373749.P11344559873070043958

/-! ## A373749.P14691916996070165824

`A123961(n)%A318274(n)`
-/

namespace A373749.P14691916996070165824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123961 n) (A318274 n)

end

end A373749.P14691916996070165824

/-! ## A373749.P13775641943161988289

`A127561(n)%A318274(n)`
-/

namespace A373749.P13775641943161988289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127561 n) (A318274 n)

end

end A373749.P13775641943161988289

/-! ## A373749.P18203826574039822066

`A132111(n)%A318274(n)`
-/

namespace A373749.P18203826574039822066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132111 n) (A318274 n)

end

end A373749.P18203826574039822066

/-! ## A373749.P17667224900153946858

`A143844(n)%A318274(n)`
-/

namespace A373749.P17667224900153946858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143844 n) (A318274 n)

end

end A373749.P17667224900153946858

/-! ## A373749.P877749831979893152

`A341736(n)%A318274(n)`
-/

namespace A373749.P877749831979893152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341736 n) (A318274 n)

end

end A373749.P877749831979893152

/-!
# A373750: Middle terms of A373749.

The programs for A373750, the canonical program `A373750.P1603409087460121726` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373750 has offset 0).

The definition of A373750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373750.P1603409087460121726

`ceil(n/2)²%(abs(1-n)+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373750

/-- `ceil(n/2)²%(abs(1-n)+1)` -/
def P1603409087460121726.Spec : Prop :=
  ∀ n, P1603409087460121726.a n = A373750 n

theorem P1603409087460121726.correct : P1603409087460121726.Spec := by
  intro n
  simp only [A373750]

end A373750

/-! ## A373750.P17184121066327186478

`A323724(n+1)%A004277(n)/2`
-/

namespace A373750.P17184121066327186478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A323724 (n + 1)) (A004277 n) : ℚ) / 2

end

end A373750.P17184121066327186478

namespace A373750

/-- `A323724(n+1)%A004277(n)/2` -/
def P17184121066327186478.Spec : Prop :=
  ∀ n, P17184121066327186478.a n = (A373750 n : ℚ)

end A373750

/-! ## A373750.P16601733738256165481

`A004526(A317614(n+1)%A004277(n))`
-/

namespace A373750.P16601733738256165481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A317614 (n + 1)) (A004277 n)).toNat

end

end A373750.P16601733738256165481

namespace A373750

/-- `A004526(A317614(n+1)%A004277(n))` -/
def P16601733738256165481.Spec : Prop :=
  ∀ n, P16601733738256165481.a n = A373750 n

end A373750

/-! ## A373750.P10691322025077460413

`A004526(A323724(3*n+1)%A004277(n))`
-/

namespace A373750.P10691322025077460413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A323724 (3 * n + 1)) (A004277 n)).toNat

end

end A373750.P10691322025077460413

namespace A373750

/-- `A004526(A323724(3*n+1)%A004277(n))` -/
def P10691322025077460413.Spec : Prop :=
  ∀ n, P10691322025077460413.a n = A373750 n

end A373750

/-! ## A373750.P13940947500758632653

`A048152(floor(sqrt(A027441(n)/2+1)))`
-/

namespace A373750.P13940947500758632653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 ⌊Real.sqrt ((A027441 n : ℚ) / 2 + 1 : ℝ)⌋.toNat

end

end A373750.P13940947500758632653

namespace A373750

/-- `A048152(floor(sqrt(A027441(n)/2+1)))` -/
def P13940947500758632653.Spec : Prop :=
  ∀ n, P13940947500758632653.a n = A373750 n

end A373750

/-! ## A373750.P12600904127720686489

`A048152(A065033(n²))`
-/

namespace A373750.P12600904127720686489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A065033 (n ^ 2)).toNat

end

end A373750.P12600904127720686489

namespace A373750

/-- `A048152(A065033(n²))` -/
def P12600904127720686489.Spec : Prop :=
  ∀ n, P12600904127720686489.a n = A373750 n

end A373750

/-! ## A373750.P3004601742052386765

`A343720(A061925(n))`
-/

namespace A373750.P3004601742052386765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343720 (A061925 n).toNat

end

end A373750.P3004601742052386765

namespace A373750

/-- `A343720(A061925(n))` -/
def P3004601742052386765.Spec : Prop :=
  ∀ n, P3004601742052386765.a n = A373750 n

end A373750

/-! ## A373750.P8833249931743220203

`A343720(A085913(n+1))`
-/

namespace A373750.P8833249931743220203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343720 (A085913 (n + 1)).toNat

end

end A373750.P8833249931743220203

namespace A373750

/-- `A343720(A085913(n+1))` -/
def P8833249931743220203.Spec : Prop :=
  ∀ n, P8833249931743220203.a n = A373750 n

end A373750

/-! ## A373750.P7042095088346609482

`A343720(A099392(n+1))`
-/

namespace A373750.P7042095088346609482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343720 (A099392 (n + 1)).toNat

end

end A373750.P7042095088346609482

namespace A373750

/-- `A343720(A099392(n+1))` -/
def P7042095088346609482.Spec : Prop :=
  ∀ n, P7042095088346609482.a n = A373750 n

end A373750

/-! ## A373750.P18351698433787423719

`A343720(A261243(n+2))`
-/

namespace A373750.P18351698433787423719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343720 (A261243 (n + 2)).toNat

end

end A373750.P18351698433787423719

namespace A373750

/-- `A343720(A261243(n+2))` -/
def P18351698433787423719.Spec : Prop :=
  ∀ n, P18351698433787423719.a n = A373750 n

end A373750

/-!
# A373752: a(n) = Sum_{k=0..n-2} A205497(n, k) * (1 - k mod 2) if n >= 2, a(0) = a(1) = 1.

The programs for A373752, there is no canonical definition to state claims against.
-/

/-! ## A373752.P880311817866117741

`A000111(n)-A373753(n)`
-/

namespace A373752.P880311817866117741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n - A373753 n

end

end A373752.P880311817866117741

/-! ## A373752.P9597165705810284235

`abs(A346838(n))-A373753(n)`
-/

namespace A373752.P9597165705810284235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346838 n| - A373753 n

end

end A373752.P9597165705810284235

/-! ## A373752.P1213159335439246278

`A104345(∑[n])-A373753(n)`
-/

namespace A373752.P1213159335439246278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (∑ j ∈ Finset.range (n + 1), f1 j) - A373753 n

end

end A373752.P1213159335439246278

/-! ## A373752.P6467893455941720263

`A109449(∑[n])-A373753(n)`
-/

namespace A373752.P6467893455941720263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j) - A373753 n

end

end A373752.P6467893455941720263

/-! ## A373752.P10380150104532342885

`abs(A247453(∑[n]))-A373753(n)`
-/

namespace A373752.P10380150104532342885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 (∑ j ∈ Finset.range (n + 1), f1 j)| - A373753 n

end

end A373752.P10380150104532342885

/-!
# A373753: a(n) = Sum_{k=0..n-2} A205497(n, k) * (k mod 2).

The programs for A373753, there is no canonical definition to state claims against.
-/

/-! ## A373753.P7883681192469250912

`A000111(n)-A373752(n)`
-/

namespace A373753.P7883681192469250912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 n - A373752 n

end

end A373753.P7883681192469250912

/-! ## A373753.P15036074165682211481

`abs(A346838(n))-A373752(n)`
-/

namespace A373753.P15036074165682211481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346838 n| - A373752 n

end

end A373753.P15036074165682211481

/-! ## A373753.P18224711590074425673

`A104345(∑[n])-A373752(n)`
-/

namespace A373753.P18224711590074425673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 (∑ j ∈ Finset.range (n + 1), f1 j) - A373752 n

end

end A373753.P18224711590074425673

/-! ## A373753.P373154638373137416

`A109449(∑[n])-A373752(n)`
-/

namespace A373753.P373154638373137416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j) - A373752 n

end

end A373753.P373154638373137416

/-! ## A373753.P9091737909743104459

`abs(A247453(∑[n]))-A373752(n)`
-/

namespace A373753.P9091737909743104459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247453 (∑ j ∈ Finset.range (n + 1), f1 j)| - A373752 n

end

end A373753.P9091737909743104459

/-!
# A373754: a(n) = A205497(2*n, n - 1). The central coefficients of the Eulerian zig-zag polynomials.

The programs for A373754, there is no canonical definition to state claims against.
-/

/-! ## A373754.P6803784585552317441

`A373755(2*n)`
-/

namespace A373754.P6803784585552317441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373755 (2 * n)

end

end A373754.P6803784585552317441

/-! ## A373754.P16591872000115567397

`A205497(A051890(n))`
-/

namespace A373754.P16591872000115567397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (A051890 n).toNat

end

end A373754.P16591872000115567397

/-!
# A373755: a(n) = A205497(n, floor((n - 1) / 2)). The middle coefficients of the Eulerian zig-zag polynomials.

The programs for A373755, there is no canonical definition to state claims against.
-/

/-! ## A373755.P5963769029348614592

`A205497(A261243(n+1))`
-/

namespace A373755.P5963769029348614592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (A261243 (n + 1)).toNat

end

end A373755.P5963769029348614592

/-! ## A373755.P9583816508326058828

`A365212(A005674(n))`
-/

namespace A373755.P9583816508326058828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365212 (A005674 n).toNat

end

end A373755.P9583816508326058828

/-! ## A373755.P18369981118602825749

`A093893(A318644(n))`
-/

namespace A373755.P18369981118602825749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (A318644 n).toNat

end

end A373755.P18369981118602825749

/-! ## A373755.P3317500048035173785

`A243714(A214358(n))`
-/

namespace A373755.P3317500048035173785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243714 (A214358 n).toNat

end

end A373755.P3317500048035173785

/-!
# A373757: Expansion of e.g.f. exp(x^3/(6 * (1 - x)^2)).

The programs for A373757, there is no canonical definition to state claims against.
-/

/-! ## A373757.P11928277646950177279

`A343609(A253286(∑[n+1]+1)+n*a(n-1))` with `a(0)=1`
-/

namespace A373757.P11928277646950177279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A343609 (A253286 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (n : ℤ) * a (n - 1)).toNat

end

end A373757.P11928277646950177279

/-!
# A373758: Expansion of e.g.f. exp(x^4/(24 * (1 - x)^2)).

The programs for A373758, there is no canonical definition to state claims against.
-/

/-! ## A373758.P11696761717234812083

`A055642(A361577(n))*A361545(n)`
-/

namespace A373758.P11696761717234812083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A361577 n).toNat * A361545 n

end

end A373758.P11696761717234812083

/-! ## A373758.P14310339458873137405

`A055642(A373759(n))*A361545(n)`
-/

namespace A373758.P14310339458873137405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A373759 n).toNat * A361545 n

end

end A373758.P14310339458873137405

/-! ## A373758.P4049835192306777604

`A055642(A361545(n+1))*A361545(n)`
-/

namespace A373758.P4049835192306777604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A361545 (n + 1)).toNat * A361545 n

end

end A373758.P4049835192306777604

/-! ## A373758.P2620257102298992378

`A361569(n)/A361566(A110746(n+1))`
-/

namespace A373758.P2620257102298992378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361569 n : ℚ) / (A361566 (A110746 (n + 1)).toNat : ℚ)

end

end A373758.P2620257102298992378

/-!
# A373759: Expansion of e.g.f. exp(x^4/(24 * (1 - x)^3)).

The programs for A373759, there is no canonical definition to state claims against.
-/

/-! ## A373759.P2382863281347440763

`A102236(A369807(n))`
-/

namespace A373759.P2382863281347440763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102236 (A369807 n).toNat

end

end A373759.P2382863281347440763

/-! ## A373759.P15291560629800435859

`A114968(A277289(n+1))`
-/

namespace A373759.P15291560629800435859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114968 (A277289 (n + 1)).toNat

end

end A373759.P15291560629800435859

/-! ## A373759.P17373259450499512088

`A327149(A000073(n)+n)`
-/

namespace A373759.P17373259450499512088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327149 (A000073 n + (n : ℤ)).toNat

end

end A373759.P17373259450499512088

/-!
# A373765: a(n) is the first number that starts a sequence of exactly n primes x(1), ..., x(n) where x(i+1) = A004093(x(i)) is the digit reversal of 2 * x(i).

The programs for A373765, there is no canonical definition to state claims against.
-/

/-! ## A373765.P2759342845578074442

`A051888(A304654(n)+A006003(2*n+1))`
-/

namespace A373765.P2759342845578074442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051888 (A304654 n + A006003 (2 * n + 1)).toNat

end

end A373765.P2759342845578074442

/-!
# A373767: Integers k such that the sum of the first k noncubes is a square.

The programs for A373767, there is no canonical definition to state claims against.
-/

/-! ## A373767.P2087422672639925802

`A239851(n+1)+A122651(A004394(3*n+2))`
-/

namespace A373767.P2087422672639925802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239851 (n + 1) + A122651 (A004394 (3 * n + 2)).toNat

end

end A373767.P2087422672639925802

/-!
# A373768: Number of permutations of {1...n} P such that P <= R, lexicographically, for all R that is a root of P (i.e., R^k = P for some k).

The programs for A373768, there is no canonical definition to state claims against.
-/

/-! ## A373768.P2635905314530414147

`A269381(A070228(∑[n]))`
-/

namespace A373768.P2635905314530414147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A070228 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A373768.P2635905314530414147

/-! ## A373768.P4297857860421119559

`A225545(A225490(∑[n]))`
-/

namespace A373768.P4297857860421119559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A225490 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A373768.P4297857860421119559

/-! ## A373768.P15592561116240328091

`A105517(A123549(n))+A000108(n)`
-/

namespace A373768.P15592561116240328091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105517 (A123549 n).toNat + A000108 n

end

end A373768.P15592561116240328091

/-!
# A373770: Expansion of e.g.f. exp(x^2 / (2 * (1 - x))) / (1 - x).

The programs for A373770, there is no canonical definition to state claims against.
-/

/-! ## A373770.P3122198721423154528

`A185369(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A373770.P3122198721423154528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A185369 n + (n : ℤ) * a (n - 1)

end

end A373770.P3122198721423154528

/-! ## A373770.P7593240369615107422

`A341144(A130624(n))`
-/

namespace A373770.P7593240369615107422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341144 ((A130624 n).toNat + 30)

end

end A373770.P7593240369615107422

/-!
# A373771: Expansion of e.g.f. exp(x^2 / (2 * (1 - x)^3)) / (1 - x).

The programs for A373771, there is no canonical definition to state claims against.
-/

/-! ## A373771.P11029398067946512711

`A060715(A089945(n)-(n-1))`
-/

namespace A373771.P11029398067946512711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A089945 n - ((n : ℤ) - 1)).toNat

end

end A373771.P11029398067946512711

/-! ## A373771.P4442652073669897662

`A118763(A047863(n))-A103116(n)`
-/

namespace A373771.P4442652073669897662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (A047863 n).toNat - A103116 n

end

end A373771.P4442652073669897662

/-!
# A373772: Expansion of e.g.f. exp(x^3 / (6 * (1 - x))) / (1 - x).

The programs for A373772, there is no canonical definition to state claims against.
-/

/-! ## A373772.P12002754204454273433

`A006370(2*A375395(n))`
-/

namespace A373772.P12002754204454273433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A375395 n).toNat

end

end A373772.P12002754204454273433

/-! ## A373772.P6262885293437884431

`A280497(2*A375395(n))`
-/

namespace A373772.P6262885293437884431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280497 (2 * A375395 n).toNat

end

end A373772.P6262885293437884431

/-! ## A373772.P16016418856721947322

`A289441(2*A375395(n))`
-/

namespace A373772.P16016418856721947322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (2 * A375395 n).toNat

end

end A373772.P16016418856721947322

/-!
# A373773: Expansion of e.g.f. exp(x^3 / (6 * (1 - x)^2)) / (1 - x).

The programs for A373773, there is no canonical definition to state claims against.
-/

/-! ## A373773.P462484636648286294

`A008619(A327677(n)-A327725(n))`
-/

namespace A373773.P462484636648286294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A327677 n - A327725 n).toNat

end

end A373773.P462484636648286294

/-! ## A373773.P16923081934688165010

`A242031(A343660(n+1)+A014307(n))`
-/

namespace A373773.P16923081934688165010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (A343660 (n + 1) + A014307 n).toNat

end

end A373773.P16923081934688165010

/-! ## A373773.P7846624026597079351

`A184955(A000265(2*n+3))+A088715(n)`
-/

namespace A373773.P7846624026597079351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A000265 (2 * n + 3)).toNat + A088715 n

end

end A373773.P7846624026597079351

/-!
# A373774: a(n) is the number of terms of A000057 in [10^n].

The programs for A373774, there is no canonical definition to state claims against.
-/

/-! ## A373774.P10456856745221422490

`A261423(A103295(3*n+1))+A042990(n)`
-/

namespace A373774.P10456856745221422490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A103295 (3 * n + 1)).toNat + A042990 n

end

end A373774.P10456856745221422490

/-!
# A373778: Triangle T(n, k) read by rows: Maximum number of patterns of length k in a permutation of length n.

The programs for A373778, there is no canonical definition to state claims against.
-/

/-! ## A373778.P14233611314339047345

`A371823(A328617(n+1))`
-/

namespace A373778.P14233611314339047345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371823 (A328617 (n + 1)).toNat

end

end A373778.P14233611314339047345

/-! ## A373778.P2988735254017846331

`A032741(2^A371823(n+1))`
-/

namespace A373778.P2988735254017846331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A371823 (n + 1) : ℤ))).toNat

end

end A373778.P2988735254017846331

/-! ## A373778.P18307281240008517103

`A255559(2^A371823(n+1))`
-/

namespace A373778.P18307281240008517103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255559 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A371823 (n + 1) : ℤ))).toNat

end

end A373778.P18307281240008517103

/-! ## A373778.P17665224138648978322

`A334097(2^A371823(n+1))`
-/

namespace A373778.P17665224138648978322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A371823 (n + 1) : ℤ))).toNat

end

end A373778.P17665224138648978322

/-! ## A373778.P11013894164379786917

`A371823(n+1)%A156247(A016777(n))`
-/

namespace A373778.P11013894164379786917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371823 (n + 1)) (A156247 (A016777 n).toNat)

end

end A373778.P11013894164379786917

/-!
# A373780: Positions of records in A373779.

The programs for A373780, there is no canonical definition to state claims against.
-/

/-! ## A373780.P3458044848691295377

`A325337(A195818(n)+A070939(n))`
-/

namespace A373780.P3458044848691295377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (A195818 n + A070939 n).toNat

end

end A373780.P3458044848691295377

/-! ## A373780.P7410625753830189148

`A325337(A195818(n)+A095791(n))`
-/

namespace A373780.P7410625753830189148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (A195818 n + A095791 n).toNat

end

end A373780.P7410625753830189148

/-!
# A373782: Indices k such that A373390(k) and A373390(k+2) are not coprime.

The programs for A373782, there is no canonical definition to state claims against.
-/

/-! ## A373782.P13936758279542698042

`lt[A014081(n), A383149(A000408(n+1))]`
-/

namespace A373782.P13936758279542698042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383149 (A000408 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373782.P13936758279542698042

/-! ## A373782.P2830749247535238139

`lt[A108299(n), A001222(A239235(2*n+5))]`
-/

namespace A373782.P2830749247535238139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A239235 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373782.P2830749247535238139

/-! ## A373782.P6075182027133329917

`lt[A000002(n+2), A020639(A319916(2*(n+1)))]`
-/

namespace A373782.P6075182027133329917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A319916 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373782.P6075182027133329917

/-!
# A373783: Number of ways that people can sit in n linearly arranged seats such that there are two or three empty seats between any two persons, zero, one or two empty seats at the start and end, and at least one person gets seated.

The programs for A373783, there is no canonical definition to state claims against.
-/

/-! ## A373783.P4372640315912900080

`A100617(A174171(n))+A001221(A000994(n+3))`
-/

namespace A373783.P4372640315912900080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A174171 n).toNat + A001221 (A000994 (n + 3)).toNat

end

end A373783.P4372640315912900080

/-! ## A373783.P273414118302730434

`A180198(A018064(n))`
-/

namespace A373783.P273414118302730434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180198 (A018064 n).toNat

end

end A373783.P273414118302730434

/-! ## A373783.P15405672443942179753

`A100719(A000051(n)-A010815(n))`
-/

namespace A373783.P15405672443942179753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (A000051 n - A010815 n).toNat

end

end A373783.P15405672443942179753

/-! ## A373783.P1696835632676055886

`A070082(A112842(n)+A001222(n+1))`
-/

namespace A373783.P1696835632676055886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070082 (A112842 n + A001222 (n + 1)).toNat

end

end A373783.P1696835632676055886

/-! ## A373783.P8810301837235527790

`A100719(A035263(n+2)+A000051(n))`
-/

namespace A373783.P8810301837235527790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (A035263 (n + 2) + A000051 n).toNat

end

end A373783.P8810301837235527790

/-!
# A373784: Number of n X n periodic matrices over GF(3).

The programs for A373784, there is no canonical definition to state claims against.
-/

/-! ## A373784.P12679965235114548472

`(3^n-1)*3^(n-1)*a(n-1)+1` with `a(0)=1`
-/

namespace A373784.P12679965235114548472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((3 ^ n : ℤ) - 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) + 1

end

end A373784.P12679965235114548472

/-!
# A373786: Even terms in A373390, halved, in order of occurrence.

The programs for A373786, there is no canonical definition to state claims against.
-/

/-! ## A373786.P4128036745750859082

`A373390(A373787(n+1))/2`
-/

namespace A373786.P4128036745750859082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373390 (A373787 (n + 1)).toNat : ℚ) / 2

end

end A373786.P4128036745750859082

/-!
# A373787: Indices of even terms in A373390.

The programs for A373787, there is no canonical definition to state claims against.
-/

/-! ## A373787.P18210819808514648282

`A372072(2*A373786(n+1))`
-/

namespace A373787.P18210819808514648282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372072 (2 * A373786 (n + 1)).toNat

end

end A373787.P18210819808514648282

/-! ## A373787.P9805876979918435311

`A372072(A373786(n+1)+A373786(n+1))`
-/

namespace A373787.P9805876979918435311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372072 (A373786 (n + 1) + A373786 (n + 1)).toNat

end

end A373787.P9805876979918435311

/-! ## A373787.P18302243990283065860

`eq[1, char[A372072(2*(n+1))]]`
-/

namespace A373787.P18302243990283065860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372072 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373787.P18302243990283065860

/-! ## A373787.P1760970755686195928

`∑[A257679(A294950(n+2))+1]`
-/

namespace A373787.P1760970755686195928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 (A294950 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373787.P1760970755686195928

/-! ## A373787.P14403343113974870549

`∑[A073645(A279789(2*n+3))+1]`
-/

namespace A373787.P14403343113974870549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073645 (A279789 (2 * n + 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373787.P14403343113974870549

/-!
# A373788: Record high points in A372072.

The programs for A373788, there is no canonical definition to state claims against.
-/

/-! ## A373788.P1793559825034810141

`record[A372072(n+1)]`
-/

namespace A373788.P1793559825034810141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373788.P1793559825034810141

/-! ## A373788.P2054085696303937408

`A372072(A373789(n+1))`
-/

namespace A373788.P2054085696303937408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372072 (A373789 (n + 1)).toNat

end

end A373788.P2054085696303937408

/-!
# A373789: Indices of record high points in A372072.

The programs for A373789, the canonical program `A373789.P12618974517501406947` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A373789 has offset 1).

The definition of A373789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A373789.P12618974517501406947

`lt[(n-1-∑{p}[n, #])², n]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A373789

/-- `lt[(n-1-∑{p}[n, #])², n]` -/
def P12618974517501406947.Spec : Prop :=
  ∀ n, (P12618974517501406947.a n : ℤ) = A373789 (n + 1)

theorem P12618974517501406947.correct : P12618974517501406947.Spec := by
  intro n
  simp only [A373789, Nat.add_sub_cancel]

end A373789

/-! ## A373789.P6895944864489127333

`lt[n, A159076(n+1)]+1`
-/

namespace A373789.P6895944864489127333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A373789.P6895944864489127333

namespace A373789

/-- `lt[n, A159076(n+1)]+1` -/
def P6895944864489127333.Spec : Prop :=
  ∀ n, (P6895944864489127333.a n : ℤ) = A373789 (n + 1)

end A373789

/-! ## A373789.P11584850223403070718

`eq[A284289(n), A328847(n)]`
-/

namespace A373789.P11584850223403070718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373789.P11584850223403070718

namespace A373789

/-- `eq[A284289(n), A328847(n)]` -/
def P11584850223403070718.Spec : Prop :=
  ∀ n, (P11584850223403070718.a n : ℤ) = A373789 (n + 1)

end A373789

/-! ## A373789.P3546549331209693644

`A372079(A373788(n+1))`
-/

namespace A373789.P3546549331209693644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372079 (A373788 (n + 1)).toNat

end

end A373789.P3546549331209693644

namespace A373789

/-- `A372079(A373788(n+1))` -/
def P3546549331209693644.Spec : Prop :=
  ∀ n, P3546549331209693644.a n = A373789 (n + 1)

end A373789

/-! ## A373789.P7637033606959755903

`eq[1, A266499(n)]`
-/

namespace A373789.P7637033606959755903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266499 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A373789.P7637033606959755903

namespace A373789

/-- `eq[1, A266499(n)]` -/
def P7637033606959755903.Spec : Prop :=
  ∀ n, (P7637033606959755903.a n : ℤ) = A373789 (n + 1)

end A373789

/-! ## A373789.P12906763891666793975

`eq[A116900(n), A203951(n+1)]`
-/

namespace A373789.P12906763891666793975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373789.P12906763891666793975

namespace A373789

/-- `eq[A116900(n), A203951(n+1)]` -/
def P12906763891666793975.Spec : Prop :=
  ∀ n, (P12906763891666793975.a n : ℤ) = A373789 (n + 1)

end A373789

/-! ## A373789.P5600385952042237898

`lt[A342768(n+1), A113484(n+1)]+1`
-/

namespace A373789.P5600385952042237898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A373789.P5600385952042237898

namespace A373789

/-- `lt[A342768(n+1), A113484(n+1)]+1` -/
def P5600385952042237898.Spec : Prop :=
  ∀ n, (P5600385952042237898.a n : ℤ) = A373789 (n + 1)

end A373789

/-! ## A373789.P10123455538937066375

`eq[A284465(n), A328847(n)]`
-/

namespace A373789.P10123455538937066375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284465 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373789.P10123455538937066375

namespace A373789

/-- `eq[A284465(n), A328847(n)]` -/
def P10123455538937066375.Spec : Prop :=
  ∀ n, (P10123455538937066375.a n : ℤ) = A373789 (n + 1)

end A373789

/-! ## A373789.P5751135100990376853

`lt[A331888(n), A331903(A020639(n+1))]`
-/

namespace A373789.P5751135100990376853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331903 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373789.P5751135100990376853

namespace A373789

/-- `lt[A331888(n), A331903(A020639(n+1))]` -/
def P5751135100990376853.Spec : Prop :=
  ∀ n, (P5751135100990376853.a n : ℤ) = A373789 (n + 1)

end A373789

/-!
# A373790: The term that immediately precedes prime(n) in A373390.

The programs for A373790, there is no canonical definition to state claims against.
-/

/-! ## A373790.P3410631964513888198

`A373792(n+1)+A000040(n+1)`
-/

namespace A373790.P3410631964513888198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373792 (n + 1) + A000040 (n + 1)

end

end A373790.P3410631964513888198

/-! ## A373790.P16207910288089584283

`A006093(n+1)+A373792(n+1)+1`
-/

namespace A373790.P16207910288089584283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A373792 (n + 1) + 1)

end

end A373790.P16207910288089584283

/-! ## A373790.P16261246101245651222

`A373792(n+1)+A064989(A065091(n+1))`
-/

namespace A373790.P16261246101245651222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373792 (n + 1) + A064989 (A065091 (n + 1)).toNat

end

end A373790.P16261246101245651222

/-! ## A373790.P15411411928595001876

`A373390(A372073(n+1)-1)`
-/

namespace A373790.P15411411928595001876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373390 (A372073 (n + 1) - 1).toNat

end

end A373790.P15411411928595001876

/-! ## A373790.P8420964792379238741

`A373792(n+1)+A372079(A372073(n+1))`
-/

namespace A373790.P8420964792379238741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373792 (n + 1) + A372079 (A372073 (n + 1)).toNat

end

end A373790.P8420964792379238741

/-!
# A373791: a(n) = 0 if p = prime(n) is introduced in A373390 by 2*p, or 1 if p is introduced by 3*p.

The programs for A373791, there is no canonical definition to state claims against.
-/

/-! ## A373791.P15608326160704348635

`and(1, A117900(A334556(2*(n+2))))`
-/

namespace A373791.P15608326160704348635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A117900 (A334556 (2 * (n + 2))).toNat)

end

end A373791.P15608326160704348635

/-! ## A373791.P17360633110801646767

`and(1, A086793(A121714(3*n+2)))`
-/

namespace A373791.P17360633110801646767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A086793 (A121714 (3 * n + 2)).toNat)

end

end A373791.P17360633110801646767

/-! ## A373791.P11835454312085967010

`A357187(A301690(n))^A033952(n+1)`
-/

namespace A373791.P11835454312085967010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357187 (A301690 n).toNat : ℚ) ^ (A033952 (n + 1) : ℤ)

end

end A373791.P11835454312085967010

/-! ## A373791.P7614512686390329529

`A064990(A212862(n+1)-A036577(2*n+1))`
-/

namespace A373791.P7614512686390329529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 (A212862 (n + 1) - A036577 (2 * n + 1)).toNat

end

end A373791.P7614512686390329529

/-! ## A373791.P18071017453285729834

`A141743(A296214(3*n+4)-2)`
-/

namespace A373791.P18071017453285729834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141743 (A296214 (3 * n + 4) - 2).toNat

end

end A373791.P18071017453285729834

/-!
# A373792: a(n) = A373390(k-1) - A373390(k), where k is the index of prime(n) in A373390.

The programs for A373792, there is no canonical definition to state claims against.
-/

/-! ## A373792.P1073511207925490487

`A373790(n+1)-A000040(n+1)`
-/

namespace A373792.P1073511207925490487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373790 (n + 1) - A000040 (n + 1)

end

end A373792.P1073511207925490487

/-! ## A373792.P4305835949819346061

`A373790(n+1)-∑[A054541(n+1)]`
-/

namespace A373792.P4305835949819346061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373790 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373792.P4305835949819346061

/-! ## A373792.P11362717823564122884

`A373790(n+1)-(A006093(n+1)+1)`
-/

namespace A373792.P11362717823564122884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373790 (n + 1) - (A006093 (n + 1) + 1)

end

end A373792.P11362717823564122884

/-! ## A373792.P74918446007808778

`A373790(n+1)-(A014688(n+1)-(n+1))`
-/

namespace A373792.P74918446007808778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373790 (n + 1) - (A014688 (n + 1) - (n + 1 : ℤ))

end

end A373792.P74918446007808778

/-! ## A373792.P15963342503050478628

`A373790(n+1)-∪[A060191(n), A060192(n)]`
-/

namespace A373792.P15963342503050478628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060192 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373790 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A373792.P15963342503050478628

/-! ## A373792.P17430549778295149177

`A373790(n+1)-A372079(A372073(n+1))`
-/

namespace A373792.P17430549778295149177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373790 (n + 1) - A372079 (A372073 (n + 1)).toNat

end

end A373792.P17430549778295149177

/-!
# A373795: a(n) = smallest |k| such that the elliptic curve y^2 = x^3 + k has rank n, or -1 if no such k exists.

The programs for A373795, there is no canonical definition to state claims against.
-/

/-! ## A373795.P12754443946215047643

`A060681(A031507(n))+1`
-/

namespace A373795.P12754443946215047643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A031507 n).toNat + 1

end

end A373795.P12754443946215047643

/-!
# A373796: a(n) = Product_{k=1..n} k^Stirling_2(n,k).

The programs for A373796, there is no canonical definition to state claims against.
-/

/-! ## A373796.P11846605858103957558

`A373343(∑[∑[A124625(n)]])`
-/

namespace A373796.P11846605858103957558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373343 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A373796.P11846605858103957558

/-!
# A373797: a(n) = maximal k such that there exists a sequence S = [s_1, s_2, ..., s_k] with s_i distinct and in the range 1 <= s_i <= n such that if any s_i is divisible by a prime p, then p also divides exactly one of s_{i-1} and s_{i+1}.

The programs for A373797, there is no canonical definition to state claims against.
-/

/-! ## A373797.P16321515201185428186

`Δ[eq[1, A375030(n+1)]]`
-/

namespace A373797.P16321515201185428186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375030 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A373797.P16321515201185428186

/-!
# A373798: Divide A374965 into "blocks" by saying that each prime term ends a block; sequence gives lengths of successive blocks.

The programs for A373798, there is no canonical definition to state claims against.
-/

/-! ## A373798.P639358992774417377

`A001222(ceil(A375028(n+1)/2))+1`
-/

namespace A373798.P639358992774417377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(A375028 (n + 1) : ℚ) / 2⌉.toNat + 1

end

end A373798.P639358992774417377

/-!
# A373799: Index of n-th prime in A374965.

The programs for A373799, there is no canonical definition to state claims against.
-/

/-! ## A373799.P7952603415146039241

`∑[A373798(n+1)]`
-/

namespace A373799.P7952603415146039241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A373799.P7952603415146039241

/-! ## A373799.P10333865193810259594

`eq[A039915(n+1), A374965(n+1)]`
-/

namespace A373799.P10333865193810259594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A373799.P10333865193810259594

/-! ## A373799.P8021339288775002318

`lt[A374965(n+1), A006218(n)+n]`
-/

namespace A373799.P8021339288775002318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373799.P8021339288775002318

/-! ## A373799.P9807872038871628334

`lt[A374965(n+1), ∑[A326031(3*n)]]`
-/

namespace A373799.P9807872038871628334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373799.P9807872038871628334

/-! ## A373799.P2503337768279726993

`lt[A374965(n+1), A034886(3*(n+1))]`
-/

namespace A373799.P2503337768279726993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A373799.P2503337768279726993

