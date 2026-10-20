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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
# A136000: a(n) = A010814(n) - 1.

The programs for A136000, there is no canonical definition to state claims against.
-/

/-! ## A136000.P16117412927962966296

`A010814(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136000.P16117412927962966296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1) - 1

end

end A136000.P16117412927962966296

/-! ## A136000.P13257016673953513519

`2*A005279(n+1)-1`
-/

namespace A136000.P13257016673953513519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005279 (n + 1) - 1

end

end A136000.P13257016673953513519

/-! ## A136000.P14079380366260699337

`∪[A009129(n+1), A098714(n+1)]-1`
-/

namespace A136000.P14079380366260699337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098714 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A136000.P14079380366260699337

/-! ## A136000.P10816275493077965824

`A062157(A031167(n+2))+A010814(n+1)`
-/

namespace A136000.P10816275493077965824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A031167 (n + 2)).toNat + A010814 (n + 1)

end

end A136000.P10816275493077965824

/-! ## A136000.P16823527872454558665

`A005818(A005279(n+1)-2)`
-/

namespace A136000.P16823527872454558665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A005279 (n + 1) - 2).toNat

end

end A136000.P16823527872454558665

/-! ## A136000.P12068527771243381791

`A020735(A005279(n+1)-2)`
-/

namespace A136000.P12068527771243381791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (A005279 (n + 1) - 2).toNat

end

end A136000.P12068527771243381791

/-! ## A136000.P10650561150515613555

`A005408(A005279(n+1)-2)+2`
-/

namespace A136000.P10650561150515613555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005279 (n + 1) - 2).toNat + 2

end

end A136000.P10650561150515613555

/-! ## A136000.P12380209429998896369

`A144396(A005279(n+1)-2)+2`
-/

namespace A136000.P12380209429998896369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A005279 (n + 1) - 2).toNat + 2

end

end A136000.P12380209429998896369

/-! ## A136000.P204283432725733264

`A005408(A005279(n+1)-1)`
-/

namespace A136000.P204283432725733264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005279 (n + 1) - 1).toNat

end

end A136000.P204283432725733264

/-! ## A136000.P18424824645294101578

`A144396(A005279(n+1)-1)`
-/

namespace A136000.P18424824645294101578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A005279 (n + 1) - 1).toNat

end

end A136000.P18424824645294101578

/-! ## A136000.P1514690423234281794

`A062545(A005279(n+1)-2)`
-/

namespace A136000.P1514690423234281794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A005279 (n + 1) - 2).toNat

end

end A136000.P1514690423234281794

/-! ## A136000.P4886833535630903521

`A004277(A005279(n+1)-1)+1`
-/

namespace A136000.P4886833535630903521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005279 (n + 1) - 1).toNat + 1

end

end A136000.P4886833535630903521

/-! ## A136000.P2986688632668092808

`A005843(A005279(n+1)-1)+1`
-/

namespace A136000.P2986688632668092808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005279 (n + 1) - 1).toNat + 1

end

end A136000.P2986688632668092808

/-! ## A136000.P15819536079004409211

`A130773(A005279(n+1)-2)+2`
-/

namespace A136000.P15819536079004409211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A005279 (n + 1) - 2).toNat + 2

end

end A136000.P15819536079004409211

/-! ## A136000.P17244054341299551333

`A004273(A005279(n+1))`
-/

namespace A136000.P17244054341299551333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005279 (n + 1)).toNat

end

end A136000.P17244054341299551333

/-! ## A136000.P892545396325382088

`A130773(A005279(n+1)-1)`
-/

namespace A136000.P892545396325382088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A005279 (n + 1) - 1).toNat

end

end A136000.P892545396325382088

/-! ## A136000.P4222314086650281886

`A163985(A005279(n+1)-1)+2`
-/

namespace A136000.P4222314086650281886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A005279 (n + 1) - 1).toNat + 2

end

end A136000.P4222314086650281886

/-! ## A136000.P18056754084600282548

`A004280(A005279(n+1)+1)`
-/

namespace A136000.P18056754084600282548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A005279 (n + 1) + 1).toNat

end

end A136000.P18056754084600282548

/-! ## A136000.P10438770569157269510

`A113127(A010814(n+1)/2)/2`
-/

namespace A136000.P10438770569157269510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113127 (SequenceMachineLib.roundAway ((A010814 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A136000.P10438770569157269510

/-! ## A136000.P8882847821897968961

`A004274(A005279(n+1)+1)`
-/

namespace A136000.P8882847821897968961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A005279 (n + 1) + 1).toNat

end

end A136000.P8882847821897968961

/-!
# A136001: Primes in A136000.

The programs for A136001, there is no canonical definition to state claims against.
-/

/-! ## A136001.P10986617404682034685

`p?[A136000(n+1)]`
-/

namespace A136001.P10986617404682034685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136001.P10986617404682034685

/-! ## A136001.P8312171034567265278

`p?[A010814(n+1)-1]`
-/

namespace A136001.P8312171034567265278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136001.P8312171034567265278

/-! ## A136001.P16020050826609594978

`p?[2*A005279(n+1)-1]`
-/

namespace A136001.P16020050826609594978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005279 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136001.P16020050826609594978

/-! ## A136001.P15482933940992697033

`filter[A136000(n+1), A010051(#)]`
-/

namespace A136001.P15482933940992697033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A136001.P15482933940992697033

/-! ## A136001.P8557366433191915051

`filter[A136000(n+1), A323152(#)]`
-/

namespace A136001.P8557366433191915051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A136001.P8557366433191915051

/-! ## A136001.P14470025100029680078

`filter[A136000(n+1), A323153(#)]`
-/

namespace A136001.P14470025100029680078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A136001.P14470025100029680078

/-! ## A136001.P4724507324569658367

`filter[A136000(n+1), A340371(#)]`
-/

namespace A136001.P4724507324569658367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A136001.P4724507324569658367

/-! ## A136001.P15118522003867707734

`filter[A136000(n+1), A353670(#)]`
-/

namespace A136001.P15118522003867707734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A136001.P15118522003867707734

/-! ## A136001.P11748645892895789733

`filter[A136000(n+1), A365716(#)]`
-/

namespace A136001.P11748645892895789733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A136001.P11748645892895789733

/-! ## A136001.P4607322369476670796

`record[A006530(A010814(n+1)-1)]`
-/

namespace A136001.P4607322369476670796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A010814 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136001.P4607322369476670796

/-! ## A136001.P15207114258036245805

`record[A020639(A010814(n+1)-1)]`
-/

namespace A136001.P15207114258036245805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A010814 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136001.P15207114258036245805

/-! ## A136001.P5673246215318598422

`∩[A000040(n+1), A136000(n+1)]`
-/

namespace A136001.P5673246215318598422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136001.P5673246215318598422

/-! ## A136001.P6338843091475998681

`∩[A001751(n+1), A136000(n+1)]`
-/

namespace A136001.P6338843091475998681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136001.P6338843091475998681

/-! ## A136001.P12016295792124526429

`∩[A004139(n+1), A136000(n+1)]`
-/

namespace A136001.P12016295792124526429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136001.P12016295792124526429

/-! ## A136001.P7077150525215034621

`∩[A006005(n+1), A136000(n+1)]`
-/

namespace A136001.P7077150525215034621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136001.P7077150525215034621

/-! ## A136001.P9481703239316067509

`∩[A008578(n+1), A136000(n+1)]`
-/

namespace A136001.P9481703239316067509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136001.P9481703239316067509

/-! ## A136001.P13312697929604814072

`∩[A033946(n+1), A136000(n+1)]`
-/

namespace A136001.P13312697929604814072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136001.P13312697929604814072

/-! ## A136001.P4128656981335144604

`∩[A034849(n+1), A136000(n+1)]`
-/

namespace A136001.P4128656981335144604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136001.P4128656981335144604

/-! ## A136001.P8035926604446006072

`∩[A045319(n+1), A136000(n+1)]`
-/

namespace A136001.P8035926604446006072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136001.P8035926604446006072

/-! ## A136001.P6331917094898740794

`∩[A045344(n+1), A136000(n+1)]`
-/

namespace A136001.P6331917094898740794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136001.P6331917094898740794

/-!
# A136002: Numbers that are not the sum, minus 1, of a Pythagorean triple.

The programs for A136002, there is no canonical definition to state claims against.
-/

/-! ## A136002.P11812851218516251678

`comp[A010814(n+1)-2]+1`
-/

namespace A136002.P11812851218516251678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010814 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A136002.P11812851218516251678

/-! ## A136002.P11739887862427296710

`A348577(n+2)-1`
-/

namespace A136002.P11739887862427296710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348577 (n + 2) - 1

end

end A136002.P11739887862427296710

/-! ## A136002.P15493978734815395387

`eq[C(2, (n+1)²), A024155(n+1)]`
-/

namespace A136002.P15493978734815395387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136002.P15493978734815395387

/-! ## A136002.P7668139943556779976

`A023443(A348577(n+2))`
-/

namespace A136002.P7668139943556779976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A348577 (n + 2)).toNat

end

end A136002.P7668139943556779976

/-! ## A136002.P8676642929857439947

`eq[A000007(n), A024155(n+1)]`
-/

namespace A136002.P8676642929857439947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136002.P8676642929857439947

/-! ## A136002.P2928025461666547143

`eq[A000038(n), A024155(n+1)]`
-/

namespace A136002.P2928025461666547143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136002.P2928025461666547143

/-! ## A136002.P14012996272644653426

`eq[A024155(n+1)+n, A028310(n)]`
-/

namespace A136002.P14012996272644653426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136002.P14012996272644653426

/-! ## A136002.P11456192099294491283

`eq[A024155(n+1), A151933(n)]`
-/

namespace A136002.P11456192099294491283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136002.P11456192099294491283

/-!
# A136003: Primes that are not the sum, minus 1, of a Pythagorean triple.

The programs for A136003, there is no canonical definition to state claims against.
-/

/-! ## A136003.P10692635230421477225

`record[A006530(A053626(n+1)+n)]+C(2, n+2)`
-/

namespace A136003.P10692635230421477225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053626 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.choose 2 (n + 2) : ℤ)

end

end A136003.P10692635230421477225

/-! ## A136003.P2405280529963074451

`p?[A136002(n+1)]`
-/

namespace A136003.P2405280529963074451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136003.P2405280529963074451

/-! ## A136003.P9492748302389494031

`filter[A136002(n+1), A010051(#)]`
-/

namespace A136003.P9492748302389494031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A136003.P9492748302389494031

/-! ## A136003.P17347263046130809938

`∩[A000040(n+1), A136002(n+1)]`
-/

namespace A136003.P17347263046130809938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136003.P17347263046130809938

/-! ## A136003.P11660706763212936083

`∩[A136002(n+1), A182986(n+1)]`
-/

namespace A136003.P11660706763212936083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136003.P11660706763212936083

/-! ## A136003.P5596291481974928910

`p?[n*A250068(A008619(n))]`
-/

namespace A136003.P5596291481974928910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A250068 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136003.P5596291481974928910

/-! ## A136003.P3348123564791991825

`p?[n*A250068(A065033(n))]`
-/

namespace A136003.P3348123564791991825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A250068 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136003.P3348123564791991825

/-! ## A136003.P9497409203483299497

`filter[A136002(n+2), A080339(#)]`
-/

namespace A136003.P9497409203483299497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136002 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A136003.P9497409203483299497

/-! ## A136003.P7304628234106838100

`p?[n*A250068(A063928(n+1))]`
-/

namespace A136003.P7304628234106838100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A250068 (A063928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136003.P7304628234106838100

/-! ## A136003.P519202730319099969

`eq[A024155(n+1), A341702(n)]`
-/

namespace A136003.P519202730319099969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136003.P519202730319099969

/-!
# A136004: a(n) = A005811(n) + 4.

The programs for A136004, the canonical program `A136004.P9778736345928845388` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136004 has offset 0).

The definition of A136004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136004.P9778736345928845388

`A005811(n)+4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136004

/-- `A005811(n)+4` -/
def P9778736345928845388.Spec : Prop :=
  ∀ n, P9778736345928845388.a n = A136004 n

theorem P9778736345928845388.correct : P9778736345928845388.Spec := by
  intro n
  simp only [A136004]

end A136004

/-! ## A136004.P10244390061963005447

`a(n-1-and(n, 2*n))+1` with `a(0)=4`
-/

namespace A136004.P10244390061963005447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat + 1

end

end A136004.P10244390061963005447

namespace A136004

/-- `a(n-1-and(n, 2*n))+1` -/
def P10244390061963005447.Spec : Prop :=
  ∀ n, (P10244390061963005447.a n : ℤ) = A136004 n

end A136004

/-! ## A136004.P13016047561472018631

`∑[Δ[xor(n, 2*n-1)]%2]+3`
-/

namespace A136004.P13016047561472018631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A136004.P13016047561472018631

namespace A136004

/-- `∑[Δ[xor(n, 2*n-1)]%2]+3` -/
def P13016047561472018631.Spec : Prop :=
  ∀ n, P13016047561472018631.a n = A136004 n

end A136004

/-! ## A136004.P15382917372414947295

`A088748(n)+3`
-/

namespace A136004.P15382917372414947295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n + 3

end

end A136004.P15382917372414947295

namespace A136004

/-- `A088748(n)+3` -/
def P15382917372414947295.Spec : Prop :=
  ∀ n, P15382917372414947295.a n = A136004 n

end A136004

/-! ## A136004.P10315023418157685104

`∑[A121238(n)]+3`
-/

namespace A136004.P10315023418157685104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A136004.P10315023418157685104

namespace A136004

/-- `∑[A121238(n)]+3` -/
def P10315023418157685104.Spec : Prop :=
  ∀ n, P10315023418157685104.a n = A136004 n

end A136004

/-! ## A136004.P1402409543721463269

`∑[A112347(n)]+4`
-/

namespace A136004.P1402409543721463269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A136004.P1402409543721463269

namespace A136004

/-- `∑[A112347(n)]+4` -/
def P1402409543721463269.Spec : Prop :=
  ∀ n, P1402409543721463269.a n = A136004 n

end A136004

/-! ## A136004.P5171676854586755846

`4-A236840(n)+n`
-/

namespace A136004.P5171676854586755846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A236840 n + (n : ℤ)

end

end A136004.P5171676854586755846

namespace A136004

/-- `4-A236840(n)+n` -/
def P5171676854586755846.Spec : Prop :=
  ∀ n, P5171676854586755846.a n = A136004 n

end A136004

/-! ## A136004.P9622547261001067318

`A088743(n+1)+3-n`
-/

namespace A136004.P9622547261001067318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088743 (n + 1) + (3 - (n : ℤ))

end

end A136004.P9622547261001067318

namespace A136004

/-- `A088743(n+1)+3-n` -/
def P9622547261001067318.Spec : Prop :=
  ∀ n, P9622547261001067318.a n = A136004 n

end A136004

/-! ## A136004.P15910285769542366302

`a(A003817(n)-n)+1` with `a(0)=4`
-/

namespace A136004.P15910285769542366302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (A003817 n - (n : ℤ)).toNat + 1

end

end A136004.P15910285769542366302

namespace A136004

/-- `a(A003817(n)-n)+1` -/
def P15910285769542366302.Spec : Prop :=
  ∀ n, (P15910285769542366302.a n : ℤ) = A136004 n

end A136004

/-! ## A136004.P6605079531099682685

`a(n-A006257(n))+1` with `a(0)=4`
-/

namespace A136004.P6605079531099682685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a ((n : ℤ) - A006257 n).toNat + 1

end

end A136004.P6605079531099682685

namespace A136004

/-- `a(n-A006257(n))+1` -/
def P6605079531099682685.Spec : Prop :=
  ∀ n, (P6605079531099682685.a n : ℤ) = A136004 n

end A136004

/-! ## A136004.P8960651453281059384

`A034947(n)+a(n-1)` with `a(0)=4`
-/

namespace A136004.P8960651453281059384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A034947 n + a (n - 1)

end

end A136004.P8960651453281059384

namespace A136004

/-- `A034947(n)+a(n-1)` -/
def P8960651453281059384.Spec : Prop :=
  ∀ n, P8960651453281059384.a n = A136004 n

end A136004

/-! ## A136004.P11697316750904580030

`A020705(A005811(n))`
-/

namespace A136004.P11697316750904580030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A005811 n).toNat

end

end A136004.P11697316750904580030

namespace A136004

/-- `A020705(A005811(n))` -/
def P11697316750904580030.Spec : Prop :=
  ∀ n, P11697316750904580030.a n = A136004 n

end A136004

/-! ## A136004.P17385950207113519358

`A001177(A073334(n))`
-/

namespace A136004.P17385950207113519358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A073334 n).toNat

end

end A136004.P17385950207113519358

namespace A136004

/-- `A001177(A073334(n))` -/
def P17385950207113519358.Spec : Prop :=
  ∀ n, P17385950207113519358.a n = A136004 n

end A136004

/-! ## A136004.P8755370651352602482

`A020705(n-A236840(n))`
-/

namespace A136004.P8755370651352602482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 ((n : ℤ) - A236840 n).toNat

end

end A136004.P8755370651352602482

namespace A136004

/-- `A020705(n-A236840(n))` -/
def P8755370651352602482.Spec : Prop :=
  ∀ n, P8755370651352602482.a n = A136004 n

end A136004

/-! ## A136004.P11356766477124899021

`∑[A134824(A089309(n))]+4`
-/

namespace A136004.P11356766477124899021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A089309 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A136004.P11356766477124899021

namespace A136004

/-- `∑[A134824(A089309(n))]+4` -/
def P11356766477124899021.Spec : Prop :=
  ∀ n, P11356766477124899021.a n = A136004 n

end A136004

/-! ## A136004.P2132699199129988977

`A104325(A073334(n)-1)+2`
-/

namespace A136004.P2132699199129988977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104325 (A073334 n - 1).toNat + 2

end

end A136004.P2132699199129988977

namespace A136004

/-- `A104325(A073334(n)-1)+2` -/
def P2132699199129988977.Spec : Prop :=
  ∀ n, P2132699199129988977.a n = A136004 n

end A136004

/-! ## A136004.P11874680506747719237

`A072219(n+1)+A010702(n)`
-/

namespace A136004.P11874680506747719237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1) + A010702 n

end

end A136004.P11874680506747719237

namespace A136004

/-- `A072219(n+1)+A010702(n)` -/
def P11874680506747719237.Spec : Prop :=
  ∀ n, P11874680506747719237.a n = A136004 n

end A136004

/-! ## A136004.P12962989481222190539

`A072219(n+1)+A000034(n)+2`
-/

namespace A136004.P12962989481222190539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (n + 1) + (A000034 n + 2)

end

end A136004.P12962989481222190539

namespace A136004

/-- `A072219(n+1)+A000034(n)+2` -/
def P12962989481222190539.Spec : Prop :=
  ∀ n, P12962989481222190539.a n = A136004 n

end A136004

/-!
# A136005: Numbers of the form 2^p - 1, where p is a prime number that is not the sum, minus 1, of a Pythagorean triple.

The programs for A136005, there is no canonical definition to state claims against.
-/

/-! ## A136005.P9141429070405552711

`2^A136003(n+1)-1`
-/

namespace A136005.P9141429070405552711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A136003 (n + 1) : ℤ) - 1

end

end A136005.P9141429070405552711

/-! ## A136005.P4648840710333600451

`A000225(A136003(n+1))`
-/

namespace A136005.P4648840710333600451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A136003 (n + 1)).toNat

end

end A136005.P4648840710333600451

/-! ## A136005.P4447056480841213459

`A000079(p?[1-(a(A270417(n))-2*n)])-1` with `a(0)=2`
-/

namespace A136005.P4447056480841213459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - (f1 (A270417 n).toNat - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A136005.P4447056480841213459

/-! ## A136005.P836652149247634033

`or(A038199(A136003(n+1)), A183075(n+1))`
-/

namespace A136005.P836652149247634033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038199 (A136003 (n + 1)).toNat) (A183075 (n + 1))

end

end A136005.P836652149247634033

/-! ## A136005.P4600718273853989099

`A000079(eq[A024155(n+1), A325142(n)])-1`
-/

namespace A136005.P4600718273853989099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) - 1

end

end A136005.P4600718273853989099

/-!
# A136006: a(n) = n^6 - n^3.

The programs for A136006, the canonical program `A136006.P5387375116084023798` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136006 has offset 0).

The definition of A136006 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6-n^3` (program `A136006.P5387375116084023798`, by `A136006.P5387375116084023798.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136006.P5387375116084023798

`n^6-n^3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A136006

/-- `n^6-n^3` -/
def P5387375116084023798.Spec : Prop :=
  ∀ n, P5387375116084023798.a n = A136006 n

theorem P5387375116084023798.correct : P5387375116084023798.Spec := by
  intro n
  simp only [A136006]

end A136006

/-! ## A136006.P8783681933064029222

`2*A085744(n)`
-/

namespace A136006.P8783681933064029222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085744 n

end

end A136006.P8783681933064029222

namespace A136006

/-- `2*A085744(n)` -/
def P8783681933064029222.Spec : Prop :=
  ∀ n, P8783681933064029222.a n = A136006 n

end A136006

/-! ## A136006.P13532116941086116296

`2*C(n^3, 2)`
-/

namespace A136006.P13532116941086116296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n ^ 3) 2

end

end A136006.P13532116941086116296

namespace A136006

/-- `2*C(n^3, 2)` -/
def P13532116941086116296.Spec : Prop :=
  ∀ n, (P13532116941086116296.a n : ℤ) = A136006 n

end A136006

/-! ## A136006.P11411948352338729949

`n*A135497(n)`
-/

namespace A136006.P11411948352338729949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A135497 n

end

end A136006.P11411948352338729949

namespace A136006

/-- `n*A135497(n)` -/
def P11411948352338729949.Spec : Prop :=
  ∀ n, P11411948352338729949.a n = A136006 n

end A136006

/-! ## A136006.P331985064414972383

`n²*A058895(n)`
-/

namespace A136006.P331985064414972383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A058895 n

end

end A136006.P331985064414972383

namespace A136006

/-- `n²*A058895(n)` -/
def P331985064414972383.Spec : Prop :=
  ∀ n, P331985064414972383.a n = A136006 n

end A136006

/-! ## A136006.P4612855362721224765

`n*(A000584(n)-n²)`
-/

namespace A136006.P4612855362721224765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000584 n - (n ^ 2 : ℤ))

end

end A136006.P4612855362721224765

namespace A136006

/-- `n*(A000584(n)-n²)` -/
def P4612855362721224765.Spec : Prop :=
  ∀ n, P4612855362721224765.a n = A136006 n

end A136006

/-! ## A136006.P996888378940278548

`(A000583(n)-n)*n²`
-/

namespace A136006.P996888378940278548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - (n : ℤ)) * (n ^ 2 : ℤ)

end

end A136006.P996888378940278548

namespace A136006

/-- `(A000583(n)-n)*n²` -/
def P996888378940278548.Spec : Prop :=
  ∀ n, P996888378940278548.a n = A136006 n

end A136006

/-! ## A136006.P7395359573428344247

`(n²-n)*A100019(n)`
-/

namespace A136006.P7395359573428344247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A100019 n

end

end A136006.P7395359573428344247

namespace A136006

/-- `(n²-n)*A100019(n)` -/
def P7395359573428344247.Spec : Prop :=
  ∀ n, P7395359573428344247.a n = A136006 n

end A136006

/-! ## A136006.P15489723302919112472

`n*lcm(n², A024001(n))`
-/

namespace A136006.P15489723302919112472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm (n ^ 2 : ℤ) (A024001 n)

end

end A136006.P15489723302919112472

namespace A136006

/-- `n*lcm(n², A024001(n))` -/
def P15489723302919112472.Spec : Prop :=
  ∀ n, (P15489723302919112472.a n : ℤ) = A136006 n

end A136006

/-! ## A136006.P9088121861833377715

`(A246767(n+1)+n)*n²`
-/

namespace A136006.P9088121861833377715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246767 (n + 1) + (n : ℤ)) * (n ^ 2 : ℤ)

end

end A136006.P9088121861833377715

namespace A136006

/-- `(A246767(n+1)+n)*n²` -/
def P9088121861833377715.Spec : Prop :=
  ∀ n, P9088121861833377715.a n = A136006 n

end A136006

/-! ## A136006.P11905599457214431512

`(n*n²-1)*n*A000290(n)`
-/

namespace A136006.P11905599457214431512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * n ^ 2 : ℤ) - 1) * ((n : ℤ) * A000290 n)

end

end A136006.P11905599457214431512

namespace A136006

/-- `(n*n²-1)*n*A000290(n)` -/
def P11905599457214431512.Spec : Prop :=
  ∀ n, P11905599457214431512.a n = A136006 n

end A136006

/-! ## A136006.P6215452189028262559

`A027444(n)*A045991(n)`
-/

namespace A136006.P6215452189028262559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n * A045991 n

end

end A136006.P6215452189028262559

namespace A136006

/-- `A027444(n)*A045991(n)` -/
def P6215452189028262559.Spec : Prop :=
  ∀ n, P6215452189028262559.a n = A136006 n

end A136006

/-! ## A136006.P11190222580710103734

`A058895(n)*A253909(n)`
-/

namespace A136006.P11190222580710103734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058895 n * A253909 n

end

end A136006.P11190222580710103734

namespace A136006

/-- `A058895(n)*A253909(n)` -/
def P11190222580710103734.Spec : Prop :=
  ∀ n, P11190222580710103734.a n = A136006 n

end A136006

/-! ## A136006.P6706860032246594228

`A001017(n)%A060891(n)`
-/

namespace A136006.P6706860032246594228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001017 n) (A060891 n)

end

end A136006.P6706860032246594228

namespace A136006

/-- `A001017(n)%A060891(n)` -/
def P6706860032246594228.Spec : Prop :=
  ∀ n, P6706860032246594228.a n = A136006 n

end A136006

/-! ## A136006.P8017438860362240555

`lcm(A000578(n), A024001(n))`
-/

namespace A136006.P8017438860362240555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000578 n) (A024001 n)

end

end A136006.P8017438860362240555

namespace A136006

/-- `lcm(A000578(n), A024001(n))` -/
def P8017438860362240555.Spec : Prop :=
  ∀ n, (P8017438860362240555.a n : ℤ) = A136006 n

end A136006

/-! ## A136006.P16672032307592599107

`lcm(A058895(n), A085537(n))`
-/

namespace A136006.P16672032307592599107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A058895 n) (A085537 n)

end

end A136006.P16672032307592599107

namespace A136006

/-- `lcm(A058895(n), A085537(n))` -/
def P16672032307592599107.Spec : Prop :=
  ∀ n, (P16672032307592599107.a n : ℤ) = A136006 n

end A136006

/-! ## A136006.P3164411130262658357

`2*(A168564(n)-A168188(n))`
-/

namespace A136006.P3164411130262658357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168564 n - A168188 n)

end

end A136006.P3164411130262658357

namespace A136006

/-- `2*(A168564(n)-A168188(n))` -/
def P3164411130262658357.Spec : Prop :=
  ∀ n, P3164411130262658357.a n = A136006 n

end A136006

/-! ## A136006.P15686436838293382867

`2*(A168627(n)-A168189(n))`
-/

namespace A136006.P15686436838293382867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168627 n - A168189 n)

end

end A136006.P15686436838293382867

namespace A136006

/-- `2*(A168627(n)-A168189(n))` -/
def P15686436838293382867.Spec : Prop :=
  ∀ n, P15686436838293382867.a n = A136006 n

end A136006

/-! ## A136006.P7233430433988149454

`(A011379(n)+n)*A045991(n)`
-/

namespace A136006.P7233430433988149454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011379 n + (n : ℤ)) * A045991 n

end

end A136006.P7233430433988149454

namespace A136006

/-- `(A011379(n)+n)*A045991(n)` -/
def P7233430433988149454.Spec : Prop :=
  ∀ n, P7233430433988149454.a n = A136006 n

end A136006

/-!
# A136007: 

The programs for A136007, there is no canonical definition to state claims against.
-/

/-! ## A136007.P9443330613232189984

`2^A152961(n+1)-1`
-/

namespace A136007.P9443330613232189984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A152961 (n + 1) : ℤ) - 1

end

end A136007.P9443330613232189984

/-! ## A136007.P16736347376477844561

`A000225(A152961(n+1))`
-/

namespace A136007.P16736347376477844561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A152961 (n + 1)).toNat

end

end A136007.P16736347376477844561

/-! ## A136007.P1180242509791063232

`A000668(A289791(n+1))`
-/

namespace A136007.P1180242509791063232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (A289791 (n + 1)).toNat

end

end A136007.P1180242509791063232

/-! ## A136007.P11278043479533308875

`A169628(A050760(n+2))`
-/

namespace A136007.P11278043479533308875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169628 (A050760 (n + 2)).toNat

end

end A136007.P11278043479533308875

/-! ## A136007.P2389724178629559261

`A343733(A343680(n+1)+1)`
-/

namespace A136007.P2389724178629559261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (A343680 (n + 1) + 1).toNat

end

end A136007.P2389724178629559261

/-!
# A136008: a(n) = n^6 - n^2.

The programs for A136008, the canonical program `A136008.P6256269428496424843` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136008 has offset 0).

The definition of A136008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6-n²` (program `A136008.P6256269428496424843`, by `A136008.P6256269428496424843.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136008.P6256269428496424843

`n^6-n²`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A136008

/-- `n^6-n²` -/
def P6256269428496424843.Spec : Prop :=
  ∀ n, P6256269428496424843.a n = A136008 n

theorem P6256269428496424843.correct : P6256269428496424843.Spec := by
  intro n
  simp only [A136008]

end A136008

/-! ## A136008.P10627505318899736236

`6*C(n²+1, 3)`
-/

namespace A136008.P10627505318899736236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (n ^ 2 + 1) 3

end

end A136008.P10627505318899736236

namespace A136008

/-- `6*C(n²+1, 3)` -/
def P10627505318899736236.Spec : Prop :=
  ∀ n, (P10627505318899736236.a n : ℤ) = A136008 n

end A136008

/-! ## A136008.P8676390571601915373

`lcm(1-n²², n²)`
-/

namespace A136008.P8676390571601915373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((n ^ 2) ^ 2 : ℤ)) (n ^ 2 : ℤ)

end

end A136008.P8676390571601915373

namespace A136008

/-- `lcm(1-n²², n²)` -/
def P8676390571601915373.Spec : Prop :=
  ∀ n, (P8676390571601915373.a n : ℤ) = A136008 n

end A136008

/-! ## A136008.P11654793131262624686

`n*A061167(n)`
-/

namespace A136008.P11654793131262624686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A061167 n

end

end A136008.P11654793131262624686

namespace A136008

/-- `n*A061167(n)` -/
def P11654793131262624686.Spec : Prop :=
  ∀ n, P11654793131262624686.a n = A136008 n

end A136008

/-! ## A136008.P7005762874947498275

`(n+1)*A037250(n)`
-/

namespace A136008.P7005762874947498275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A037250 n

end

end A136008.P7005762874947498275

namespace A136008

/-- `(n+1)*A037250(n)` -/
def P7005762874947498275.Spec : Prop :=
  ∀ n, P7005762874947498275.a n = A136008 n

end A136008

/-! ## A136008.P14279782908835951662

`n*(A272162(n)-1)`
-/

namespace A136008.P14279782908835951662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A272162 n - 1)

end

end A136008.P14279782908835951662

namespace A136008

/-- `n*(A272162(n)-1)` -/
def P14279782908835951662.Spec : Prop :=
  ∀ n, P14279782908835951662.a n = A136008 n

end A136008

/-! ## A136008.P6223744462353381319

`n*(A242436(n)+n)`
-/

namespace A136008.P6223744462353381319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A242436 n + (n : ℤ))

end

end A136008.P6223744462353381319

namespace A136008

/-- `n*(A242436(n)+n)` -/
def P6223744462353381319.Spec : Prop :=
  ∀ n, P6223744462353381319.a n = A136008 n

end A136008

/-! ## A136008.P12955109523678989926

`n*(A000584(n)-n)`
-/

namespace A136008.P12955109523678989926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000584 n - (n : ℤ))

end

end A136008.P12955109523678989926

namespace A136008

/-- `n*(A000584(n)-n)` -/
def P12955109523678989926.Spec : Prop :=
  ∀ n, P12955109523678989926.a n = A136008 n

end A136008

/-! ## A136008.P10823294373996015491

`abs(n²*A024002(n))`
-/

namespace A136008.P10823294373996015491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A024002 n|

end

end A136008.P10823294373996015491

namespace A136008

/-- `abs(n²*A024002(n))` -/
def P10823294373996015491.Spec : Prop :=
  ∀ n, P10823294373996015491.a n = A136008 n

end A136008

/-! ## A136008.P8975868772644761090

`(A000583(n)-1)*n²`
-/

namespace A136008.P8975868772644761090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - 1) * (n ^ 2 : ℤ)

end

end A136008.P8975868772644761090

namespace A136008

/-- `(A000583(n)-1)*n²` -/
def P8975868772644761090.Spec : Prop :=
  ∀ n, P8975868772644761090.a n = A136008 n

end A136008

/-! ## A136008.P6132930759746444762

`(n²-1)*A071253(n)`
-/

namespace A136008.P6132930759746444762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) * A071253 n

end

end A136008.P6132930759746444762

namespace A136008

/-- `(n²-1)*A071253(n)` -/
def P6132930759746444762.Spec : Prop :=
  ∀ n, P6132930759746444762.a n = A136008 n

end A136008

/-! ## A136008.P9967672255711237246

`(A002523(n)-2)*n²`
-/

namespace A136008.P9967672255711237246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002523 n - 2) * (n ^ 2 : ℤ)

end

end A136008.P9967672255711237246

namespace A136008

/-- `(A002523(n)-2)*n²` -/
def P9967672255711237246.Spec : Prop :=
  ∀ n, P9967672255711237246.a n = A136008 n

end A136008

/-! ## A136008.P9126950126966663267

`2*(A168122(n)-n²)`
-/

namespace A136008.P9126950126966663267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168122 n - (n ^ 2 : ℤ))

end

end A136008.P9126950126966663267

namespace A136008

/-- `2*(A168122(n)-n²)` -/
def P9126950126966663267.Spec : Prop :=
  ∀ n, P9126950126966663267.a n = A136008 n

end A136008

/-! ## A136008.P10303375761074801618

`C(n², 2)*A005893(n)`
-/

namespace A136008.P10303375761074801618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℤ) * A005893 n

end

end A136008.P10303375761074801618

namespace A136008

/-- `C(n², 2)*A005893(n)` -/
def P10303375761074801618.Spec : Prop :=
  ∀ n, P10303375761074801618.a n = A136008 n

end A136008

/-! ## A136008.P13813236331387537151

`(n²-n)*A027445(n)`
-/

namespace A136008.P13813236331387537151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A027445 n

end

end A136008.P13813236331387537151

namespace A136008

/-- `(n²-n)*A027445(n)` -/
def P13813236331387537151.Spec : Prop :=
  ∀ n, P13813236331387537151.a n = A136008 n

end A136008

/-! ## A136008.P14008705050108613545

`n*(sqrt(A008454(n))-n)`
-/

namespace A136008.P14008705050108613545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (Real.sqrt (A008454 n : ℝ) - (n : ℝ))

end

end A136008.P14008705050108613545

namespace A136008

/-- `n*(sqrt(A008454(n))-n)` -/
def P14008705050108613545.Spec : Prop :=
  ∀ n, P14008705050108613545.a n = (A136008 n : ℝ)

end A136008

/-! ## A136008.P13141740775313245724

`abs(n²-A000578(n)²)`
-/

namespace A136008.P13141740775313245724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A000578 n ^ 2|

end

end A136008.P13141740775313245724

namespace A136008

/-- `abs(n²-A000578(n)²)` -/
def P13141740775313245724.Spec : Prop :=
  ∀ n, P13141740775313245724.a n = A136008 n

end A136008

/-! ## A136008.P11966816788578823231

`5*n*A208536(n+1)`
-/

namespace A136008.P11966816788578823231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * A208536 (n + 1))

end

end A136008.P11966816788578823231

namespace A136008

/-- `5*n*A208536(n+1)` -/
def P11966816788578823231.Spec : Prop :=
  ∀ n, P11966816788578823231.a n = A136008 n

end A136008

/-! ## A136008.P6945289729229510571

`(n+1)*(A191012(n)-n)`
-/

namespace A136008.P6945289729229510571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A191012 n - (n : ℤ))

end

end A136008.P6945289729229510571

namespace A136008

/-- `(n+1)*(A191012(n)-n)` -/
def P6945289729229510571.Spec : Prop :=
  ∀ n, P6945289729229510571.a n = A136008 n

end A136008

/-! ## A136008.P739851915704876533

`(n-1)*(A152031(n)-n)`
-/

namespace A136008.P739851915704876533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A152031 n - (n : ℤ))

end

end A136008.P739851915704876533

namespace A136008

/-- `(n-1)*(A152031(n)-n)` -/
def P739851915704876533.Spec : Prop :=
  ∀ n, P739851915704876533.a n = A136008 n

end A136008

/-!
# A136011: Irregular triangle read by rows, Stirling numbers of the second kind: columns shifted to allow (1, 1, 2, 2, 3, 3, ...) terms per row.

The programs for A136011, there is no canonical definition to state claims against.
-/

/-! ## A136011.P92647182053313749

`A008277(A056536(n+1))`
-/

namespace A136011.P92647182053313749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A056536 (n + 1)).toNat

end

end A136011.P92647182053313749

/-! ## A136011.P9102850563066777335

`A008277(A091018(n)+1)`
-/

namespace A136011.P9102850563066777335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A091018 n + 1).toNat

end

end A136011.P9102850563066777335

/-! ## A136011.P13305523380208348622

`abs(A080417(A091018(n)+1))`
-/

namespace A136011.P13305523380208348622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080417 (A091018 n + 1).toNat|

end

end A136011.P13305523380208348622

/-! ## A136011.P5190242677703010517

`A321331(A091018(n))/A122197(n+1)`
-/

namespace A136011.P5190242677703010517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321331 (A091018 n).toNat : ℚ) / (A122197 (n + 1) : ℚ)

end

end A136011.P5190242677703010517

/-! ## A136011.P14400756209100309797

`A008277(A091018(comp[n²]))`
-/

namespace A136011.P14400756209100309797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A091018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A136011.P14400756209100309797

/-!
# A136012: Numbers n in any run of two or more numbers each having exactly two distinct prime divisors.

The programs for A136012, there is no canonical definition to state claims against.
-/

/-! ## A136012.P4491185880317465338

`∪[A074851(n+1)+1, A074851(n+1)]`
-/

namespace A136012.P4491185880317465338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136012.P4491185880317465338

/-! ## A136012.P2081608078289581705

`∪[A074851(n+1), A011760(A074851(n+1))]`
-/

namespace A136012.P2081608078289581705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A074851 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136012.P2081608078289581705

/-! ## A136012.P4064627346238997408

`lt[A321802(A349935(2*n+1)), A327780(n)]`
-/

namespace A136012.P4064627346238997408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A349935 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327780 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136012.P4064627346238997408

/-! ## A136012.P312221132016714310

`eq[A031214(2*n+5), A257684(A098002(2*n+3))]`
-/

namespace A136012.P312221132016714310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031214 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A098002 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136012.P312221132016714310

/-! ## A136012.P15340206840481022930

`lt[A100464(A029653(n)), A355755(n+1)]`
-/

namespace A136012.P15340206840481022930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100464 (A029653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136012.P15340206840481022930

/-!
# A136013: a(n) = floor(n/2) + 2*a(floor(n/2)), a(0) = 0.

The programs for A136013, the canonical program `A136013.P12572160085575880269` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136013 has offset 0).

The definition of A136013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)+2*a(floor(n/2))` (program `A136013.P12572160085575880269`, by `A136013.P12572160085575880269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136013.P12572160085575880269

`floor(n/2)+2*a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A136013

/-- `floor(n/2)+2*a(floor(n/2))` -/
def P12572160085575880269.Spec : Prop :=
  ∀ n, P12572160085575880269.a n = A136013 n

theorem P12572160085575880269.correct : P12572160085575880269.Spec := by
  intro n
  simp only [A136013]

end A136013

/-! ## A136013.P8089183882287098508

`∑[and(n, -n)]-n`
-/

namespace A136013.P8089183882287098508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A136013.P8089183882287098508

namespace A136013

/-- `∑[and(n, -n)]-n` -/
def P8089183882287098508.Spec : Prop :=
  ∀ n, P8089183882287098508.a n = A136013 n

end A136013

/-! ## A136013.P6130991302262767731

`abs(∑[or(n, -n)]+n)`
-/

namespace A136013.P6130991302262767731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)|

end

end A136013.P6130991302262767731

namespace A136013

/-- `abs(∑[or(n, -n)]+n)` -/
def P6130991302262767731.Spec : Prop :=
  ∀ n, P6130991302262767731.a n = A136013 n

end A136013

/-! ## A136013.P17946590916527059846

`∑[abs(or(n, -n))]-n`
-/

namespace A136013.P17946590916527059846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A136013.P17946590916527059846

namespace A136013

/-- `∑[abs(or(n, -n))]-n` -/
def P17946590916527059846.Spec : Prop :=
  ∀ n, P17946590916527059846.a n = A136013 n

end A136013

/-! ## A136013.P7572488030219664756

`-(∑[or(n, -n)]+n)`
-/

namespace A136013.P7572488030219664756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A136013.P7572488030219664756

namespace A136013

/-- `-(∑[or(n, -n)]+n)` -/
def P7572488030219664756.Spec : Prop :=
  ∀ n, P7572488030219664756.a n = A136013 n

end A136013

/-! ## A136013.P10236837115462069553

`∑[-or(n, -n)]-n`
-/

namespace A136013.P10236837115462069553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A136013.P10236837115462069553

namespace A136013

/-- `∑[-or(n, -n)]-n` -/
def P10236837115462069553.Spec : Prop :=
  ∀ n, P10236837115462069553.a n = A136013 n

end A136013

/-! ## A136013.P3538661611919763905

`∑[or(n, n-1)-n]+1`
-/

namespace A136013.P3538661611919763905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A136013.P3538661611919763905

namespace A136013

/-- `∑[or(n, n-1)-n]+1` -/
def P3538661611919763905.Spec : Prop :=
  ∀ n, P3538661611919763905.a n = A136013 n

end A136013

/-! ## A136013.P9780056433478064622

`1-∑[n-or(n, n-1)]`
-/

namespace A136013.P9780056433478064622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136013.P9780056433478064622

namespace A136013

/-- `1-∑[n-or(n, n-1)]` -/
def P9780056433478064622.Spec : Prop :=
  ∀ n, P9780056433478064622.a n = A136013 n

end A136013

/-! ## A136013.P670116162348101252

`C(n, 2)-∑[and(n, n-1)]`
-/

namespace A136013.P670116162348101252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136013.P670116162348101252

namespace A136013

/-- `C(n, 2)-∑[and(n, n-1)]` -/
def P670116162348101252.Spec : Prop :=
  ∀ n, P670116162348101252.a n = A136013 n

end A136013

/-! ## A136013.P17756660036899687671

`∑[n-and(n, n-1)]-n`
-/

namespace A136013.P17756660036899687671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A136013.P17756660036899687671

namespace A136013

/-- `∑[n-and(n, n-1)]-n` -/
def P17756660036899687671.Spec : Prop :=
  ∀ n, P17756660036899687671.a n = A136013 n

end A136013

/-! ## A136013.P3264241597760181502

`(∑[xor(n, n-1)]-(n-1))/2`
-/

namespace A136013.P3264241597760181502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1) : ℤ) : ℚ) / 2

end

end A136013.P3264241597760181502

namespace A136013

/-- `(∑[xor(n, n-1)]-(n-1))/2` -/
def P3264241597760181502.Spec : Prop :=
  ∀ n, P3264241597760181502.a n = (A136013 n : ℚ)

end A136013

/-! ## A136013.P13659176544787482235

`a(n-1)+or(n, n-1)-n` with `a(0)=0`
-/

namespace A136013.P13659176544787482235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Int.lor (n : ℤ) ((n : ℤ) - 1) - (n : ℤ))

end

end A136013.P13659176544787482235

namespace A136013

/-- `a(n-1)+or(n, n-1)-n` -/
def P13659176544787482235.Spec : Prop :=
  ∀ n, P13659176544787482235.a n = A136013 n

end A136013

/-! ## A136013.P7581559778493945617

`a(n-1)-(n-or(n, n-1))` with `a(0)=0`
-/

namespace A136013.P7581559778493945617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((n : ℤ) - Int.lor (n : ℤ) ((n : ℤ) - 1))

end

end A136013.P7581559778493945617

namespace A136013

/-- `a(n-1)-(n-or(n, n-1))` -/
def P7581559778493945617.Spec : Prop :=
  ∀ n, P7581559778493945617.a n = A136013 n

end A136013

/-! ## A136013.P1770116212159268955

`∑[and(-(n+1), (2*n)%(n+1))]`
-/

namespace A136013.P1770116212159268955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 1 : ℤ)) ((2 * n % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136013.P1770116212159268955

namespace A136013

/-- `∑[and(-(n+1), (2*n)%(n+1))]` -/
def P1770116212159268955.Spec : Prop :=
  ∀ n, P1770116212159268955.a n = A136013 n

end A136013

/-! ## A136013.P13501692111843681935

`a(n-1)+and(n-1, -(n+1))` with `a(0)=0`
-/

namespace A136013.P13501692111843681935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.land ((n : ℤ) - 1) (-(n + 1 : ℤ))

end

end A136013.P13501692111843681935

namespace A136013

/-- `a(n-1)+and(n-1, -(n+1))` -/
def P13501692111843681935.Spec : Prop :=
  ∀ n, P13501692111843681935.a n = A136013 n

end A136013

/-! ## A136013.P9115935236440144681

`n-1+a(n-1)-and(n, n-1)` with `a(0)=0`
-/

namespace A136013.P9115935236440144681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) - Int.land (n : ℤ) ((n : ℤ) - 1))

end

end A136013.P9115935236440144681

namespace A136013

/-- `n-1+a(n-1)-and(n, n-1)` -/
def P9115935236440144681.Spec : Prop :=
  ∀ n, P9115935236440144681.a n = A136013 n

end A136013

/-! ## A136013.P2164927868829187999

`n-1-(and(n, n-1)-a(n-1))` with `a(0)=0`
-/

namespace A136013.P2164927868829187999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 1 - (Int.land (n : ℤ) ((n : ℤ) - 1) - a (n - 1))

end

end A136013.P2164927868829187999

namespace A136013

/-- `n-1-(and(n, n-1)-a(n-1))` -/
def P2164927868829187999.Spec : Prop :=
  ∀ n, P2164927868829187999.a n = A136013 n

end A136013

/-! ## A136013.P4512797425414662817

`A159699(n)-2*n`
-/

namespace A136013.P4512797425414662817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159699 n - (2 * n : ℤ)

end

end A136013.P4512797425414662817

namespace A136013

/-- `A159699(n)-2*n` -/
def P4512797425414662817.Spec : Prop :=
  ∀ n, P4512797425414662817.a n = A136013 n

end A136013

/-! ## A136013.P16374299050506772035

`A228366(n)-A004134(n)`
-/

namespace A136013.P16374299050506772035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228366 n - A004134 n

end

end A136013.P16374299050506772035

namespace A136013

/-- `A228366(n)-A004134(n)` -/
def P16374299050506772035.Spec : Prop :=
  ∀ n, P16374299050506772035.a n = A136013 n

end A136013

/-! ## A136013.P5216231609382839774

`A003071(n+1)-A000788(n)`
-/

namespace A136013.P5216231609382839774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1) - A000788 n

end

end A136013.P5216231609382839774

namespace A136013

/-- `A003071(n+1)-A000788(n)` -/
def P5216231609382839774.Spec : Prop :=
  ∀ n, P5216231609382839774.a n = A136013 n

end A136013

/-!
# A136014: Numbers n such that n*(n-1)-1 and n*(n+3)+1 are both prime.

The programs for A136014, there is no canonical definition to state claims against.
-/

/-! ## A136014.P8361381607182765218

`∩[A002328(n+1), A094210(n+1)]`
-/

namespace A136014.P8361381607182765218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136014.P8361381607182765218

/-! ## A136014.P3515732053290780010

`∩[A045546(n+1)+1, A094210(n+1)]`
-/

namespace A136014.P3515732053290780010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136014.P3515732053290780010

/-! ## A136014.P15075277481264101331

`∩[A002328(n+1), A045546(n+1)-1]`
-/

namespace A136014.P15075277481264101331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136014.P15075277481264101331

/-! ## A136014.P990154923503537730

`∩[A076597(n+1)-1, A094210(n+1)]`
-/

namespace A136014.P990154923503537730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076597 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136014.P990154923503537730

/-! ## A136014.P6172282982532580712

`∩[A002328(n+1), A089362(n+1)]-2`
-/

namespace A136014.P6172282982532580712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A136014.P6172282982532580712

/-! ## A136014.P9249063058022144427

`∩[A089362(n+1)-2, A094210(n+1)]`
-/

namespace A136014.P9249063058022144427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136014.P9249063058022144427

/-! ## A136014.P14507430457885666146

`∩[A094210(n+1)+2, A094210(n+2)]`
-/

namespace A136014.P14507430457885666146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136014.P14507430457885666146

/-! ## A136014.P12193437140607969435

`∩[A002328(n+1), A002328(n+2)-2]`
-/

namespace A136014.P12193437140607969435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136014.P12193437140607969435

/-! ## A136014.P15772723303990431494

`∩[A002328(n+1), A023443(A045546(n+1))]`
-/

namespace A136014.P15772723303990431494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A045546 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136014.P15772723303990431494

/-! ## A136014.P16433404052433630966

`∩[A002328(n+1), A023445(A076597(n+1))]`
-/

namespace A136014.P16433404052433630966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A076597 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136014.P16433404052433630966

/-!
# A136015: Prime numbers p such that 2*p+1, p*(p + 1) - 1 and p*(p + 1) + 1 are also primes.

The programs for A136015, there is no canonical definition to state claims against.
-/

/-! ## A136015.P8000211455475897583

`∩[A005384(n+1), A088483(n+1)]`
-/

namespace A136015.P8000211455475897583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P8000211455475897583

/-! ## A136015.P8819375823784469922

`∩[A005384(n+1), A286319(n+1)]`
-/

namespace A136015.P8819375823784469922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P8819375823784469922

/-! ## A136015.P15738334997475661821

`∩[A088483(n+1), A224781(n+1)]`
-/

namespace A136015.P15738334997475661821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P15738334997475661821

/-! ## A136015.P10823402501608720995

`∩[A224781(n+1), A286319(n+1)]`
-/

namespace A136015.P10823402501608720995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P10823402501608720995

/-! ## A136015.P6590345226163043619

`∩[A088483(n+1), A348511(n+1)]`
-/

namespace A136015.P6590345226163043619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P6590345226163043619

/-! ## A136015.P2165698480565721888

`∩[A088483(n+1), A364926(n+1)]`
-/

namespace A136015.P2165698480565721888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P2165698480565721888

/-! ## A136015.P13782089788021020531

`∩[A286319(n+1), A348511(n+1)]`
-/

namespace A136015.P13782089788021020531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P13782089788021020531

/-! ## A136015.P5480817360943805772

`∩[A286319(n+1), A364926(n+1)]`
-/

namespace A136015.P5480817360943805772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P5480817360943805772

/-! ## A136015.P15985664799065454437

`∩[A088483(n+1), A246857(n+1)]`
-/

namespace A136015.P15985664799065454437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P15985664799065454437

/-! ## A136015.P5797046269541434254

`∩[A246857(n+1), A286319(n+1)]`
-/

namespace A136015.P5797046269541434254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P5797046269541434254

/-! ## A136015.P4099048951635603077

`∩[A005384(n+1), A088485(n+1)]`
-/

namespace A136015.P4099048951635603077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P4099048951635603077

/-! ## A136015.P13016361415414911381

`∩[A088485(n+1), A348511(n+1)]`
-/

namespace A136015.P13016361415414911381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136015.P13016361415414911381

/-!
# A136016: a(n) = 9*n^2-1.

The programs for A136016, the canonical program `A136016.P11569950937608206989` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136016 has offset 1).

The definition of A136016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)²-1` (program `A136016.P11569950937608206989`, by `A136016.P11569950937608206989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136016.P11569950937608206989

`9*(n+1)²-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A136016

/-- `9*(n+1)²-1` -/
def P11569950937608206989.Spec : Prop :=
  ∀ n, P11569950937608206989.a n = A136016 (n + 1)

theorem P11569950937608206989.correct : P11569950937608206989.Spec := by
  intro n
  simp only [A136016, Nat.add_sub_cancel]

end A136016

/-! ## A136016.P12410546968343247882

`A016777(n+1)*A016789(n)`
-/

namespace A136016.P12410546968343247882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) * A016789 n

end

end A136016.P12410546968343247882

namespace A136016

/-- `A016777(n+1)*A016789(n)` -/
def P12410546968343247882.Spec : Prop :=
  ∀ n, P12410546968343247882.a n = A136016 (n + 1)

end A136016

/-! ## A136016.P17554149618696192356

`A005563(3*(n+1)-1)`
-/

namespace A136016.P17554149618696192356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (3 * (n + 1) - 1)

end

end A136016.P17554149618696192356

namespace A136016

/-- `A005563(3*(n+1)-1)` -/
def P17554149618696192356.Spec : Prop :=
  ∀ n, P17554149618696192356.a n = A136016 (n + 1)

end A136016

/-! ## A136016.P895477281284499005

`∑[a(n-1)+18]` with `a(0)=8, a(1)=27`
-/

namespace A136016.P895477281284499005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 27] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136016.P895477281284499005

namespace A136016

/-- `∑[a(n-1)+18]` -/
def P895477281284499005.Spec : Prop :=
  ∀ n, (P895477281284499005.a n : ℤ) = A136016 (n + 1)

end A136016

/-! ## A136016.P5402552441777170860

`record[(3*(1-n))²-1]`
-/

namespace A136016.P5402552441777170860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (1 - (n : ℤ))) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136016.P5402552441777170860

namespace A136016

/-- `record[(3*(1-n))²-1]` -/
def P5402552441777170860.Spec : Prop :=
  ∀ n, P5402552441777170860.a n = A136016 (n + 1)

end A136016

/-! ## A136016.P691432296031218377

`xor(-1, -(3*(n+1))²)`
-/

namespace A136016.P691432296031218377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((3 * (n + 1)) ^ 2 : ℤ))

end

end A136016.P691432296031218377

namespace A136016

/-- `xor(-1, -(3*(n+1))²)` -/
def P691432296031218377.Spec : Prop :=
  ∀ n, P691432296031218377.a n = A136016 (n + 1)

end A136016

/-! ## A136016.P16424886900755900463

`floor(cot((1/(3*(n+1)))²))`
-/

namespace A136016.P16424886900755900463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((1 / (3 * (n + 1) : ℚ)) ^ 2 : ℝ)⌋

end

end A136016.P16424886900755900463

namespace A136016

/-- `floor(cot((1/(3*(n+1)))²))` -/
def P16424886900755900463.Spec : Prop :=
  ∀ n, P16424886900755900463.a n = A136016 (n + 1)

end A136016

/-! ## A136016.P5806098218199505650

`round(cot(1/(3*(n+1)))²)`
-/

namespace A136016.P5806098218199505650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (1 / (3 * (n + 1) : ℚ) : ℝ) ^ 2)

end

end A136016.P5806098218199505650

namespace A136016

/-- `round(cot(1/(3*(n+1)))²)` -/
def P5806098218199505650.Spec : Prop :=
  ∀ n, P5806098218199505650.a n = A136016 (n + 1)

end A136016

/-! ## A136016.P15165323267811919917

`cot(asin(1/(3*(n+1))))²`
-/

namespace A136016.P15165323267811919917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arcsin (1 / (3 * (n + 1) : ℚ) : ℝ)) ^ 2

end

end A136016.P15165323267811919917

namespace A136016

/-- `cot(asin(1/(3*(n+1))))²` -/
def P15165323267811919917.Spec : Prop :=
  ∀ n, P15165323267811919917.a n = (A136016 (n + 1) : ℝ)

end A136016

/-! ## A136016.P13873915788531928539

`abs(a(n-1)+9*(2*n+1))` with `a(0)=8`
-/

namespace A136016.P13873915788531928539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A136016.P13873915788531928539

namespace A136016

/-- `abs(a(n-1)+9*(2*n+1))` -/
def P13873915788531928539.Spec : Prop :=
  ∀ n, (P13873915788531928539.a n : ℤ) = A136016 (n + 1)

theorem P13873915788531928539.correct : P13873915788531928539.Spec := by
  intro n
  induction n with
  | zero => simp [A136016, A136016.P13873915788531928539.a, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A136016, Nat.add_sub_cancel, A136016.P13873915788531928539.a, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A136016

/-! ## A136016.P12913342967501889012

`floor(a(n-1)+9*(2*n+1))` with `a(0)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A136016.P12913342967501889012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A136016.P12913342967501889012

namespace A136016

/-- `floor(a(n-1)+9*(2*n+1))` -/
def P12913342967501889012.Spec : Prop :=
  ∀ n, (P12913342967501889012.a n : ℤ) = A136016 (n + 1)

theorem P12913342967501889012.correct : P12913342967501889012.Spec := by
  intro n
  induction n with
  | zero => simp [A136016, A136016.P12913342967501889012.a, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A136016, Nat.add_sub_cancel, A136016.P12913342967501889012.a, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A136016

/-! ## A136016.P6568223543430433192

`ceil(a(n-1)+9*(2*n+1))` with `a(0)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A136016.P6568223543430433192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A136016.P6568223543430433192

namespace A136016

/-- `ceil(a(n-1)+9*(2*n+1))` -/
def P6568223543430433192.Spec : Prop :=
  ∀ n, (P6568223543430433192.a n : ℤ) = A136016 (n + 1)

theorem P6568223543430433192.correct : P6568223543430433192.Spec := by
  intro n
  induction n with
  | zero => simp [A136016, A136016.P6568223543430433192.a, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A136016, Nat.add_sub_cancel, A136016.P6568223543430433192.a, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A136016

/-! ## A136016.P9913701790119044576

`round(a(n-1)+9*(2*n+1))` with `a(0)=8`

`round` is left out, it is the identity on integers.
-/

namespace A136016.P9913701790119044576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 9 * (2 * n + 1)

end

end A136016.P9913701790119044576

namespace A136016

/-- `round(a(n-1)+9*(2*n+1))` -/
def P9913701790119044576.Spec : Prop :=
  ∀ n, (P9913701790119044576.a n : ℤ) = A136016 (n + 1)

theorem P9913701790119044576.correct : P9913701790119044576.Spec := by
  intro n
  induction n with
  | zero => simp [A136016, A136016.P9913701790119044576.a, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A136016, Nat.add_sub_cancel, A136016.P9913701790119044576.a, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A136016

/-! ## A136016.P8374616677275903113

`(2*n+n+2)*(C(n+3, n+2)+2*n+1)`
-/

namespace A136016.P8374616677275903113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (n + 2)) * (Nat.choose (n + 3) (n + 2) + (2 * n + 1))

end

end A136016.P8374616677275903113

namespace A136016

/-- `(2*n+n+2)*(C(n+3, n+2)+2*n+1)` -/
def P8374616677275903113.Spec : Prop :=
  ∀ n, (P8374616677275903113.a n : ℤ) = A136016 (n + 1)

theorem P8374616677275903113.correct : P8374616677275903113.Spec := by
  intro n
  simp only [A136016, Nat.add_sub_cancel, A136016.P8374616677275903113.a, A136016.P11569950937608206989.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A136016

/-! ## A136016.P34323583462225017

`A157909(n+1)/9`
-/

namespace A136016.P34323583462225017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157909 (n + 1) : ℚ) / 9

end

end A136016.P34323583462225017

namespace A136016

/-- `A157909(n+1)/9` -/
def P34323583462225017.Spec : Prop :=
  ∀ n, P34323583462225017.a n = (A136016 (n + 1) : ℚ)

end A136016

/-! ## A136016.P1689554875231467182

`(A157910(n+1)-1)/2`
-/

namespace A136016.P1689554875231467182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157910 (n + 1) - 1 : ℚ) / 2

end

end A136016.P1689554875231467182

namespace A136016

/-- `(A157910(n+1)-1)/2` -/
def P1689554875231467182.Spec : Prop :=
  ∀ n, P1689554875231467182.a n = (A136016 (n + 1) : ℚ)

end A136016

/-! ## A136016.P17703127952875053895

`(A157889(n+1)-3)/2`
-/

namespace A136016.P17703127952875053895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157889 (n + 1) - 3 : ℚ) / 2

end

end A136016.P17703127952875053895

namespace A136016

/-- `(A157889(n+1)-3)/2` -/
def P17703127952875053895.Spec : Prop :=
  ∀ n, P17703127952875053895.a n = (A136016 (n + 1) : ℚ)

end A136016

/-! ## A136016.P17432673983524657706

`(A158462(n+1)+2)/4`
-/

namespace A136016.P17432673983524657706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158462 (n + 1) + 2 : ℚ) / 4

end

end A136016.P17432673983524657706

namespace A136016

/-- `(A158462(n+1)+2)/4` -/
def P17432673983524657706.Spec : Prop :=
  ∀ n, P17432673983524657706.a n = (A136016 (n + 1) : ℚ)

end A136016

/-! ## A136016.P8966422519087818689

`abs((A016777(n)+2)²-1)`
-/

namespace A136016.P8966422519087818689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A016777 n + 2) ^ 2 - 1|

end

end A136016.P8966422519087818689

namespace A136016

/-- `abs((A016777(n)+2)²-1)` -/
def P8966422519087818689.Spec : Prop :=
  ∀ n, P8966422519087818689.a n = A136016 (n + 1)

end A136016

/-! ## A136016.P15688314629383909599

`A097321(n+1)/(3*(n+1))`
-/

namespace A136016.P15688314629383909599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097321 (n + 1) : ℚ) / (3 * (n + 1) : ℚ)

end

end A136016.P15688314629383909599

namespace A136016

/-- `A097321(n+1)/(3*(n+1))` -/
def P15688314629383909599.Spec : Prop :=
  ∀ n, P15688314629383909599.a n = (A136016 (n + 1) : ℚ)

end A136016

/-!
# A136017: a(n) = 36n^2 - 1.

The programs for A136017, the canonical program `A136017.P15592961706062905529` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136017 has offset 1).

The definition of A136017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²-1` (program `A136017.P15592961706062905529`, by `A136017.P15592961706062905529.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136017.P15592961706062905529

`36*(n+1)²-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A136017

/-- `36*(n+1)²-1` -/
def P15592961706062905529.Spec : Prop :=
  ∀ n, P15592961706062905529.a n = A136017 (n + 1)

theorem P15592961706062905529.correct : P15592961706062905529.Spec := by
  intro n
  simp only [A136017, Nat.add_sub_cancel]

end A136017

/-! ## A136017.P3692035290212903829

`A061037(12*(n+1))`
-/

namespace A136017.P3692035290212903829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (12 * (n + 1))

end

end A136017.P3692035290212903829

namespace A136017

/-- `A061037(12*(n+1))` -/
def P3692035290212903829.Spec : Prop :=
  ∀ n, P3692035290212903829.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P5272117665496255585

`record[(6*(1-n))²-1]`
-/

namespace A136017.P5272117665496255585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (1 - (n : ℤ))) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136017.P5272117665496255585

namespace A136017

/-- `record[(6*(1-n))²-1]` -/
def P5272117665496255585.Spec : Prop :=
  ∀ n, P5272117665496255585.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P3211078614322652846

`-or(1, -(6*(n+1))²)`
-/

namespace A136017.P3211078614322652846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((6 * (n + 1)) ^ 2 : ℤ))

end

end A136017.P3211078614322652846

namespace A136017

/-- `-or(1, -(6*(n+1))²)` -/
def P3211078614322652846.Spec : Prop :=
  ∀ n, P3211078614322652846.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P1060705115169803991

`floor(A158738(n+1)/2)`
-/

namespace A136017.P1060705115169803991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158738 (n + 1) : ℚ) / 2⌋

end

end A136017.P1060705115169803991

namespace A136017

/-- `floor(A158738(n+1)/2)` -/
def P1060705115169803991.Spec : Prop :=
  ∀ n, P1060705115169803991.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P7504413037391697974

`(A158740(n+1)-3)/2`
-/

namespace A136017.P7504413037391697974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158740 (n + 1) - 3 : ℚ) / 2

end

end A136017.P7504413037391697974

namespace A136017

/-- `(A158740(n+1)-3)/2` -/
def P7504413037391697974.Spec : Prop :=
  ∀ n, P7504413037391697974.a n = (A136017 (n + 1) : ℚ)

end A136017

/-! ## A136017.P11912617279957277785

`abs(36*A000290(n+1)-1)`
-/

namespace A136017.P11912617279957277785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |36 * A000290 (n + 1) - 1|

end

end A136017.P11912617279957277785

namespace A136017

/-- `abs(36*A000290(n+1)-1)` -/
def P11912617279957277785.Spec : Prop :=
  ∀ n, P11912617279957277785.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P14319383919108653353

`(A016957(n)+1)*(6*n+7)`
-/

namespace A136017.P14319383919108653353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016957 n + 1) * (6 * n + 7 : ℤ)

end

end A136017.P14319383919108653353

namespace A136017

/-- `(A016957(n)+1)*(6*n+7)` -/
def P14319383919108653353.Spec : Prop :=
  ∀ n, P14319383919108653353.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P11837427138223231422

`(A016969(n)+2)*A016969(n)`
-/

namespace A136017.P11837427138223231422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016969 n + 2) * A016969 n

end

end A136017.P11837427138223231422

namespace A136017

/-- `(A016969(n)+2)*A016969(n)` -/
def P11837427138223231422.Spec : Prop :=
  ∀ n, P11837427138223231422.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P7273397926132725192

`Δ[n*(A154105(n)-2)]`
-/

namespace A136017.P7273397926132725192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A154105 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136017.P7273397926132725192

namespace A136017

/-- `Δ[n*(A154105(n)-2)]` -/
def P7273397926132725192.Spec : Prop :=
  ∀ n, P7273397926132725192.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P7673481327787644544

`Δ[∑[A008458(n)²]-n]`
-/

namespace A136017.P7673481327787644544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136017.P7673481327787644544

namespace A136017

/-- `Δ[∑[A008458(n)²]-n]` -/
def P7673481327787644544.Spec : Prop :=
  ∀ n, P7673481327787644544.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P2327064078269519765

`Δ[∑[A008588(n)²]-n]`
-/

namespace A136017.P2327064078269519765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136017.P2327064078269519765

namespace A136017

/-- `Δ[∑[A008588(n)²]-n]` -/
def P2327064078269519765.Spec : Prop :=
  ∀ n, P2327064078269519765.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P17527424187177229947

`abs((Δ[A000567(n)]+5)²-1)`
-/

namespace A136017.P17527424187177229947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n + 5) ^ 2 - 1|

end

end A136017.P17527424187177229947

namespace A136017

/-- `abs((Δ[A000567(n)]+5)²-1)` -/
def P17527424187177229947.Spec : Prop :=
  ∀ n, P17527424187177229947.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P16343641375769028075

`(6*n+5)*A016921(n+1)`
-/

namespace A136017.P16343641375769028075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 5 : ℤ) * A016921 (n + 1)

end

end A136017.P16343641375769028075

namespace A136017

/-- `(6*n+5)*A016921(n+1)` -/
def P16343641375769028075.Spec : Prop :=
  ∀ n, P16343641375769028075.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P10033680462380087946

`A136016(2*(n+1))`
-/

namespace A136017.P10033680462380087946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136016 (2 * (n + 1))

end

end A136017.P10033680462380087946

namespace A136017

/-- `A136016(2*(n+1))` -/
def P10033680462380087946.Spec : Prop :=
  ∀ n, P10033680462380087946.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P9830626292710146504

`A228887(2*(n+1))/(n+1)`
-/

namespace A136017.P9830626292710146504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228887 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A136017.P9830626292710146504

namespace A136017

/-- `A228887(2*(n+1))/(n+1)` -/
def P9830626292710146504.Spec : Prop :=
  ∀ n, P9830626292710146504.a n = (A136017 (n + 1) : ℚ)

end A136017

/-! ## A136017.P18287977960151243921

`A282284(2*(n+1))`
-/

namespace A136017.P18287977960151243921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282284 (2 * (n + 1))

end

end A136017.P18287977960151243921

namespace A136017

/-- `A282284(2*(n+1))` -/
def P18287977960151243921.Spec : Prop :=
  ∀ n, P18287977960151243921.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P9472267736523352451

`Δ[∑[A016766(2*n)]-n]`
-/

namespace A136017.P9472267736523352451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016766 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136017.P9472267736523352451

namespace A136017

/-- `Δ[∑[A016766(2*n)]-n]` -/
def P9472267736523352451.Spec : Prop :=
  ∀ n, P9472267736523352451.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P5839600575549888306

`Δ[n*A004538(2*n+1)]`
-/

namespace A136017.P5839600575549888306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004538 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136017.P5839600575549888306

namespace A136017

/-- `Δ[n*A004538(2*n+1)]` -/
def P5839600575549888306.Spec : Prop :=
  ∀ n, P5839600575549888306.a n = A136017 (n + 1)

end A136017

/-! ## A136017.P1111418700415126742

`A000466(3*(n+1))`
-/

namespace A136017.P1111418700415126742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (3 * (n + 1))

end

end A136017.P1111418700415126742

namespace A136017

/-- `A000466(3*(n+1))` -/
def P1111418700415126742.Spec : Prop :=
  ∀ n, P1111418700415126742.a n = A136017 (n + 1)

end A136017

/-!
# A136018: Triangle read by rows: r(n,k) = g(n,n-k), where g(n,k) is the number of ideals of size k in a garland (or double fence) of order n (see A137278).

The programs for A136018, there is no canonical definition to state claims against.
-/

/-! ## A136018.P12621838579318243459

`A137278(A061885(n))`
-/

namespace A136018.P12621838579318243459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (A061885 n).toNat

end

end A136018.P12621838579318243459

/-! ## A136018.P8467629579499304084

`A137278(A057944(n)+n)`
-/

namespace A136018.P8467629579499304084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (A057944 n + (n : ℤ)).toNat

end

end A136018.P8467629579499304084

/-! ## A136018.P10226982704515916038

`A137278(2*n-A002262(n))`
-/

namespace A136018.P10226982704515916038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 ((2 * n : ℤ) - A002262 n).toNat

end

end A136018.P10226982704515916038

/-! ## A136018.P2348221970418126555

`A137278(n-A002262(n)+n)`
-/

namespace A136018.P2348221970418126555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A136018.P2348221970418126555

/-! ## A136018.P8476433758386495639

`A137278(n-(A002262(n)-n))`
-/

namespace A136018.P8476433758386495639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 ((n : ℤ) - (A002262 n - (n : ℤ))).toNat

end

end A136018.P8476433758386495639

/-! ## A136018.P9696718058094525492

`A137278(2*n+1-A002260(n+1))`
-/

namespace A136018.P9696718058094525492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 ((2 * n + 1 : ℤ) - A002260 (n + 1)).toNat

end

end A136018.P9696718058094525492

/-! ## A136018.P9445620540662940191

`A137278(A159797(n)+A091435(n))`
-/

namespace A136018.P9445620540662940191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (A159797 n + A091435 n).toNat

end

end A136018.P9445620540662940191

/-! ## A136018.P14722706224684511270

`A137278(A008585(A057944(n))-n)`
-/

namespace A136018.P14722706224684511270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (A008585 (A057944 n).toNat - (n : ℤ)).toNat

end

end A136018.P14722706224684511270

/-!
# A136019: Smallest prime of the form (prime(k)+2*n)/(2*n+1), any k.

The programs for A136019, there is no canonical definition to state claims against.
-/

/-! ## A136019.P16404713842455258581

`A136020(n+1)%(4*(n+1))`
-/

namespace A136019.P16404713842455258581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136020 (n + 1)) (4 * (n + 1) : ℤ)

end

end A136019.P16404713842455258581

/-! ## A136019.P11580906466036742311

`A064652(2*n+3)`
-/

namespace A136019.P11580906466036742311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064652 (2 * n + 3)

end

end A136019.P11580906466036742311

/-! ## A136019.P8592577877089149599

`p?[A064652(Δ[(n+1)²])]`
-/

namespace A136019.P8592577877089149599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064652 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136019.P8592577877089149599

/-! ## A136019.P15776680202577632135

`A000203(A064652(abs(Δ[(n+1)²])))-1`
-/

namespace A136019.P15776680202577632135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A064652 |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|.toNat).toNat - 1

end

end A136019.P15776680202577632135

/-! ## A136019.P2344904098327750722

`A088226((A064652(Δ[(n+1)²])+1)²)`
-/

namespace A136019.P2344904098327750722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 ((A064652 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1) ^ 2).toNat

end

end A136019.P2344904098327750722

/-!
# A136020: Smallest prime of the form (2*n+1)*prime(k)-2*n, any k.

The programs for A136020, there is no canonical definition to state claims against.
-/

/-! ## A136020.P2757295196179961128

`A064632(2*n+3)`
-/

namespace A136020.P2757295196179961128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064632 (2 * n + 3)

end

end A136020.P2757295196179961128

/-! ## A136020.P6644457205824803475

`A064632(Δ[(n+1)²])+A000007(n+1)`
-/

namespace A136020.P6644457205824803475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064632 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000007 (n + 1)

end

end A136020.P6644457205824803475

/-! ## A136020.P12280958203295450265

`p?[A064632(n+3+n)]`
-/

namespace A136020.P12280958203295450265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064632 (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136020.P12280958203295450265

/-! ## A136020.P9716299842441482395

`A064632(Δ[(n+1)²])%A025515(n+1)`
-/

namespace A136020.P9716299842441482395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064632 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A025515 (n + 1))

end

end A136020.P9716299842441482395

/-! ## A136020.P8956850172723153376

`A006530(A064632(Δ[(n+1)²]))`
-/

namespace A136020.P8956850172723153376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064632 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A136020.P8956850172723153376

/-! ## A136020.P8594631117929854946

`∑{d}[A064632(n+3+n), A000010(#)]`
-/

namespace A136020.P8594631117929854946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064632 (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A136020.P8594631117929854946

/-! ## A136020.P14865124876539742342

`A014963(or(1, A064632(n+3+n)))`
-/

namespace A136020.P14865124876539742342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 1 (A064632 (n + 3 + n))).toNat

end

end A136020.P14865124876539742342

/-!
# A136021: Sum of the proper prime divisors of all numbers up to 10^n.

The programs for A136021, there is no canonical definition to state claims against.
-/

/-! ## A136021.P11938914516025875251

`A006880(n)*10^n-A024934(10^n)-A046731(n)`
-/

namespace A136021.P11938914516025875251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 n * (10 ^ n : ℤ) - A024934 (10 ^ n) - A046731 n

end

end A136021.P11938914516025875251

/-! ## A136021.P14428022335057373451

`∑[A136022(n+1)]-A136022(n+1)`
-/

namespace A136021.P14428022335057373451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136022 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A136022 (n + 1)

end

end A136021.P14428022335057373451

/-!
# A136022: First differences of A136021.

The programs for A136022, there is no canonical definition to state claims against.
-/

/-! ## A136022.P8128646917492644688

`A136021(n+1)-A136021(n)`
-/

namespace A136022.P8128646917492644688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136021 (n + 1) - A136021 n

end

end A136022.P8128646917492644688

/-! ## A136022.P7906919091236088068

`Δ[A136021(n)]`
-/

namespace A136022.P7906919091236088068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136022.P7906919091236088068

/-!
# A136026: Smallest prime of the form (2n+1)p + 2n with p prime.

The programs for A136026, there is no canonical definition to state claims against.
-/

/-! ## A136026.P10394428426138011352

`A062251(2*n+3)`
-/

namespace A136026.P10394428426138011352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062251 (2 * n + 3)

end

end A136026.P10394428426138011352

/-! ## A136026.P12448808852961374982

`A062251(Δ[(n+1)²])+A008602(n)%2`
-/

namespace A136026.P12448808852961374982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + Int.tmod (A008602 n) 2

end

end A136026.P12448808852961374982

/-! ## A136026.P2306591181973421348

`p?[A062251(n+3+n)]`
-/

namespace A136026.P2306591181973421348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062251 (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136026.P2306591181973421348

/-! ## A136026.P703472339776273783

`p?[A062251(Δ[n²])-A000007(n)]`
-/

namespace A136026.P703472339776273783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062251 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136026.P703472339776273783

/-! ## A136026.P10434616120770487015

`A020639(or(1, A062251(n+3+n)))`
-/

namespace A136026.P10434616120770487015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A062251 (n + 3 + n))).toNat

end

end A136026.P10434616120770487015

/-! ## A136026.P3730943578460399431

`A020639(A062251(A000265(n+1+n)+2))`
-/

namespace A136026.P3730943578460399431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A062251 (A000265 (n + 1 + n) + 2).toNat).toNat

end

end A136026.P3730943578460399431

/-! ## A136026.P14475105779334144564

`A014963(A062251(Δ[(n+1)²]))`
-/

namespace A136026.P14475105779334144564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A136026.P14475105779334144564

/-!
# A136027: Smallest prime of the form (p-2n)/(2n+1) with p prime.

The programs for A136027, there is no canonical definition to state claims against.
-/

/-! ## A136027.P8528851567383848540

`A136026(n+1)%(4*(n+1))`
-/

namespace A136027.P8528851567383848540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136026 (n + 1)) (4 * (n + 1) : ℤ)

end

end A136027.P8528851567383848540

/-! ## A136027.P10601935167479357445

`A060324(2*n+3)`
-/

namespace A136027.P10601935167479357445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (2 * n + 3)

end

end A136027.P10601935167479357445

/-! ## A136027.P2577268688868933713

`p?[A000265(A060324(n+1+n))]`
-/

namespace A136027.P2577268688868933713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A060324 (n + 1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136027.P2577268688868933713

/-! ## A136027.P5898214719442782960

`p?[A060324(A259445(n+1+n)+2)]`
-/

namespace A136027.P5898214719442782960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060324 (A259445 (n + 1 + n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136027.P5898214719442782960

/-! ## A136027.P14692284460827309090

`A014963(A060324(2/(n+1)^-1+1))`
-/

namespace A136027.P14692284460827309090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A060324 (SequenceMachineLib.roundAway (2 / (n + 1 : ℚ) ^ (-1 : ℤ) + 1)).toNat).toNat

end

end A136027.P14692284460827309090

/-!
# A136028: Expansion of (phi(q) * phi(q^2))^3 in powers of q where phi() is a Ramanujan theta function.

The programs for A136028, there is no canonical definition to state claims against.
-/

/-! ## A136028.P18313009524058390861

`A028578(4*n)`
-/

namespace A136028.P18313009524058390861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028578 (4 * n)

end

end A136028.P18313009524058390861

/-! ## A136028.P9124233410737455673

`A028578(A008586(n))%A213260(n)`
-/

namespace A136028.P9124233410737455673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028578 (A008586 n).toNat) (A213260 n)

end

end A136028.P9124233410737455673

/-! ## A136028.P5727778889660244261

`A028578(A008586(n))+char[A226589(n+1)]`
-/

namespace A136028.P5727778889660244261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226589 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028578 (A008586 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136028.P5727778889660244261

/-! ## A136028.P4812663804654018326

`A028578(A008586(n))+char[A226599(n+1)]`
-/

namespace A136028.P4812663804654018326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226599 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028578 (A008586 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A136028.P4812663804654018326

/-! ## A136028.P6226459518850812670

`A028578(A008586(n))/A014963(C(n, n²)!)`
-/

namespace A136028.P6226459518850812670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028578 (A008586 n).toNat : ℚ) / (A014963 (Nat.factorial (Nat.choose n (n ^ 2))) : ℚ)

end

end A136028.P6226459518850812670

/-! ## A136028.P4231309471729122349

`A028578(A008574(n))+A008683(A004011(n))`
-/

namespace A136028.P4231309471729122349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028578 (A008574 n).toNat + A008683 (A004011 n).toNat

end

end A136028.P4231309471729122349

/-! ## A136028.P3290546895698885016

`A028578(A008586(n))/A001221(A080192(n+1))`
-/

namespace A136028.P3290546895698885016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028578 (A008586 n).toNat : ℚ) / (A001221 (A080192 (n + 1)).toNat : ℚ)

end

end A136028.P3290546895698885016

/-! ## A136028.P15873775806491008191

`A028578(A008586(n))/A001222(A112046(n+1))`
-/

namespace A136028.P15873775806491008191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028578 (A008586 n).toNat : ℚ) / (A001222 (A112046 (n + 1)).toNat : ℚ)

end

end A136028.P15873775806491008191

/-! ## A136028.P17409248310180245519

`A028578(A008586(n))/A001221(A052180(n+2))`
-/

namespace A136028.P17409248310180245519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028578 (A008586 n).toNat : ℚ) / (A001221 (A052180 (n + 2)).toNat : ℚ)

end

end A136028.P17409248310180245519

/-! ## A136028.P9721475884029245812

`A028578(A008586(n))/A001221(A052248(n+2))`
-/

namespace A136028.P9721475884029245812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028578 (A008586 n).toNat : ℚ) / (A001221 (A052248 (n + 2)).toNat : ℚ)

end

end A136028.P9721475884029245812

/-! ## A136028.P2324636064534331809

`A028578(A008586(n))/A014963(A000217(n+9))`
-/

namespace A136028.P2324636064534331809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028578 (A008586 n).toNat : ℚ) / (A014963 (A000217 (n + 9)).toNat : ℚ)

end

end A136028.P2324636064534331809

/-! ## A136028.P8019692820640586621

`A028599(16*n)`
-/

namespace A136028.P8019692820640586621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028599 (16 * n)

end

end A136028.P8019692820640586621

/-!
# A136029: a(n) is the number of central ideals of a garland of order 2n, i.e., a(n) = g(2n,n), where g(n,k) is the number of ideals of size k in a garland (or double fence) of order n (see A137278).

The programs for A136029, there is no canonical definition to state claims against.
-/

/-! ## A136029.P10699722935081405795

`A202252(A179865(n+1))`
-/

namespace A136029.P10699722935081405795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A179865 (n + 1)).toNat

end

end A136029.P10699722935081405795

/-! ## A136029.P11785457634737031309

`A202252(A000007(n)+∑[n])`
-/

namespace A136029.P11785457634737031309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A136029.P11785457634737031309

/-! ## A136029.P13907463889518663119

`A202252(A175631(n+2)+1)`
-/

namespace A136029.P13907463889518663119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A175631 (n + 2) + 1).toNat

end

end A136029.P13907463889518663119

/-! ## A136029.P615879751196730996

`A202252(A027379(n)-2*n)`
-/

namespace A136029.P615879751196730996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A027379 n - (2 * n : ℤ)).toNat

end

end A136029.P615879751196730996

/-! ## A136029.P12023502880644030734

`A202252(A027379(n)-n-n)`
-/

namespace A136029.P12023502880644030734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A027379 n - (n : ℤ) - (n : ℤ)).toNat

end

end A136029.P12023502880644030734

/-! ## A136029.P8987514760567368615

`A202252(A007318(A055998(n)))`
-/

namespace A136029.P8987514760567368615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A007318 (A055998 n).toNat).toNat

end

end A136029.P8987514760567368615

/-! ## A136029.P227067753470256737

`A202252(A057944(Δ[A004006(n)]))`
-/

namespace A136029.P227067753470256737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A057944 (f1 (n + 1) - f1 n).toNat).toNat

end

end A136029.P227067753470256737

/-! ## A136029.P10711985091561360277

`A202252(A000217(A233583(n+1)))`
-/

namespace A136029.P10711985091561360277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000217 (A233583 (n + 1)).toNat).toNat

end

end A136029.P10711985091561360277

/-! ## A136029.P13016462450705893259

`A202252(A000217(A000007(n)+n))`
-/

namespace A136029.P13016462450705893259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (A000217 (A000007 n + (n : ℤ)).toNat).toNat

end

end A136029.P13016462450705893259

/-! ## A136029.P5968951016933116269

`A202252(or(A000007(n), A000217(n)))`
-/

namespace A136029.P5968951016933116269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202252 (Int.lor (A000007 n) (A000217 n)).toNat

end

end A136029.P5968951016933116269

/-!
# A136030: Smallest prime factor of composite Mersenne numbers: lpf(2^p-1) where 2^p-1 is composite and p is prime.

The programs for A136030, there is no canonical definition to state claims against.
-/

/-! ## A136030.P6288456318672151082

`A049479(A054723(n+1))`
-/

namespace A136030.P6288456318672151082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (A054723 (n + 1)).toNat

end

end A136030.P6288456318672151082

/-! ## A136030.P11207548257854872955

`A049479(p?[A045762(n+1)])`
-/

namespace A136030.P11207548257854872955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136030.P11207548257854872955

/-! ## A136030.P11949200717784305287

`A112927(p?[A054723(n+1)])`
-/

namespace A136030.P11949200717784305287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136030.P11949200717784305287

/-! ## A136030.P18444270412242588034

`A112927(p?[A143584(n+1)])`
-/

namespace A136030.P18444270412242588034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136030.P18444270412242588034

/-! ## A136030.P2118055630606135611

`A112927(or(1, A054723(n+1)))`
-/

namespace A136030.P2118055630606135611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (Int.lor 1 (A054723 (n + 1))).toNat

end

end A136030.P2118055630606135611

/-! ## A136030.P16745353478751342179

`A049479(p?[comp[A000043(n+1)]])`
-/

namespace A136030.P16745353478751342179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A136030.P16745353478751342179

/-! ## A136030.P14498750263070803446

`A049479(p?[comp[A072226(n+1)]])`
-/

namespace A136030.P14498750263070803446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A136030.P14498750263070803446

/-! ## A136030.P15748053798140470300

`A049479(p?[comp[A161508(n+1)]])`
-/

namespace A136030.P15748053798140470300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161508 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A136030.P15748053798140470300

/-! ## A136030.P10033888594912602479

`A049479(p?[comp[A090748(n+1)+1]])`
-/

namespace A136030.P10033888594912602479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A136030.P10033888594912602479

/-! ## A136030.P16608413972906829055

`A049479(p?[comp[A153798(n+1)+2]])`
-/

namespace A136030.P16608413972906829055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049479 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A136030.P16608413972906829055

/-!
# A136031: Largest prime factor of composite Mersenne numbers.

The programs for A136031, there is no canonical definition to state claims against.
-/

/-! ## A136031.P4620582694810407259

`A005420(A054723(n+1))`
-/

namespace A136031.P4620582694810407259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A054723 (n + 1)).toNat

end

end A136031.P4620582694810407259

/-! ## A136031.P16398246839995812489

`A003260(A135980(n+1))`
-/

namespace A136031.P16398246839995812489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003260 (A135980 (n + 1)).toNat

end

end A136031.P16398246839995812489

/-! ## A136031.P2397255446555378288

`A244453(∑[A135975(n+1)])`
-/

namespace A136031.P2397255446555378288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136031.P2397255446555378288

/-! ## A136031.P8138303810708664061

`A005420(p?[A045762(n+1)])`
-/

namespace A136031.P8138303810708664061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136031.P8138303810708664061

/-! ## A136031.P14944547127691423353

`A005420(p?[A143584(n+1)])`
-/

namespace A136031.P14944547127691423353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A136031.P14944547127691423353

/-! ## A136031.P12058927541766140778

`A244453(∑[A046800(A054723(n+1))])`
-/

namespace A136031.P12058927541766140778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A054723 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136031.P12058927541766140778

/-! ## A136031.P18281816883891848575

`A005420(ceil(log2(A065341(n+1))))`
-/

namespace A136031.P18281816883891848575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 ⌈Real.logb 2 (A065341 (n + 1) : ℝ)⌉.toNat

end

end A136031.P18281816883891848575

/-! ## A136031.P1980397088530427083

`A005420(log2(A065341(n+1)+1))`
-/

namespace A136031.P1980397088530427083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (SequenceMachineLib.roundAway (Real.logb 2 (A065341 (n + 1) + 1 : ℝ))).toNat

end

end A136031.P1980397088530427083

/-!
# A136033: a(n) = smallest number k such that number of prime factors of 2^k-1 is exactly n (counted with multiplicity).

The programs for A136033, there is no canonical definition to state claims against.
-/

/-! ## A136033.P1623878636011005731

`A353504(n+4)*A353506(A155480(n+1))`
-/

namespace A136033.P1623878636011005731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353504 (n + 4) * A353506 (A155480 (n + 1)).toNat

end

end A136033.P1623878636011005731

/-!
# A136034: a(n) = smallest number k such that number of distinct prime factors of 2^k-1 is exactly n.

The programs for A136034, there is no canonical definition to state claims against.
-/

/-! ## A136034.P424145708163120400

`A000003(A269613(n+1)+A083853(n+1))`
-/

namespace A136034.P424145708163120400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A269613 (n + 1) + A083853 (n + 1)).toNat

end

end A136034.P424145708163120400

/-! ## A136034.P1621236469465274816

`A000005(A049980(n+1)*A130337(n+1))`
-/

namespace A136034.P1621236469465274816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049980 (n + 1) * A130337 (n + 1)).toNat

end

end A136034.P1621236469465274816

/-! ## A136034.P2433288233843824871

`A000010(n+1)*A320837(A127612(n+1))`
-/

namespace A136034.P2433288233843824871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A320837 (A127612 (n + 1)).toNat

end

end A136034.P2433288233843824871

/-!
# A136035: Remainder when dividing 2^q - 1 by q + 1 where q is the n-th prime.

The programs for A136035, the canonical program `A136035.P15914414041268730617` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136035 has offset 1).

The definition of A136035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136035.P15914414041268730617

`A128311(A008864(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136035

/-- `A128311(A008864(n+1))` -/
def P15914414041268730617.Spec : Prop :=
  ∀ n, P15914414041268730617.a n = A136035 (n + 1)

theorem P15914414041268730617.correct : P15914414041268730617.Spec := by
  intro n
  simp only [A136035, Nat.add_sub_cancel]

end A136035

/-! ## A136035.P2083884443908595066

`A128311(A028815(n+1))`
-/

namespace A136035.P2083884443908595066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (A028815 (n + 1)).toNat

end

end A136035.P2083884443908595066

namespace A136035

/-- `A128311(A028815(n+1))` -/
def P2083884443908595066.Spec : Prop :=
  ∀ n, P2083884443908595066.a n = A136035 (n + 1)

end A136035

/-! ## A136035.P4329744853170218974

`A128311(A055670(n+1))`
-/

namespace A136035.P4329744853170218974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (A055670 (n + 1)).toNat

end

end A136035.P4329744853170218974

namespace A136035

/-- `A128311(A055670(n+1))` -/
def P4329744853170218974.Spec : Prop :=
  ∀ n, P4329744853170218974.a n = A136035 (n + 1)

end A136035

/-! ## A136035.P15041227451499688478

`A128311(A299763(n+2))`
-/

namespace A136035.P15041227451499688478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (A299763 (n + 2)).toNat

end

end A136035.P15041227451499688478

namespace A136035

/-- `A128311(A299763(n+2))` -/
def P15041227451499688478.Spec : Prop :=
  ∀ n, P15041227451499688478.a n = A136035 (n + 1)

end A136035

/-! ## A136035.P7963921569495578096

`A128311(A000040(n+1)+1)`
-/

namespace A136035.P7963921569495578096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (A000040 (n + 1) + 1).toNat

end

end A136035.P7963921569495578096

namespace A136035

/-- `A128311(A000040(n+1)+1)` -/
def P7963921569495578096.Spec : Prop :=
  ∀ n, P7963921569495578096.a n = A136035 (n + 1)

end A136035

/-! ## A136035.P7501137105616195761

`A128311(A008578(n+2)+1)`
-/

namespace A136035.P7501137105616195761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (A008578 (n + 2) + 1).toNat

end

end A136035.P7501137105616195761

namespace A136035

/-- `A128311(A008578(n+2)+1)` -/
def P7501137105616195761.Spec : Prop :=
  ∀ n, P7501137105616195761.a n = A136035 (n + 1)

end A136035

/-! ## A136035.P5097614623859541281

`A128311(eq[2, A092976(n)]+1)`
-/

namespace A136035.P5097614623859541281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136035.P5097614623859541281

namespace A136035

/-- `A128311(eq[2, A092976(n)]+1)` -/
def P5097614623859541281.Spec : Prop :=
  ∀ n, P5097614623859541281.a n = A136035 (n + 1)

end A136035

/-! ## A136035.P15528752963035955089

`A128311(eq[1, A053989(n+1)]+1)`
-/

namespace A136035.P15528752963035955089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136035.P15528752963035955089

namespace A136035

/-- `A128311(eq[1, A053989(n+1)]+1)` -/
def P15528752963035955089.Spec : Prop :=
  ∀ n, P15528752963035955089.a n = A136035 (n + 1)

end A136035

/-! ## A136035.P1432340402512600257

`A128311(eq[1, A231734(n+1)]+1)`
-/

namespace A136035.P1432340402512600257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136035.P1432340402512600257

namespace A136035

/-- `A128311(eq[1, A231734(n+1)]+1)` -/
def P1432340402512600257.Spec : Prop :=
  ∀ n, P1432340402512600257.a n = A136035 (n + 1)

end A136035

/-! ## A136035.P6735271952766052020

`A128311(eq[n, A000010(n+1)]+2)`
-/

namespace A136035.P6735271952766052020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A136035.P6735271952766052020

namespace A136035

/-- `A128311(eq[n, A000010(n+1)]+2)` -/
def P6735271952766052020.Spec : Prop :=
  ∀ n, P6735271952766052020.a n = A136035 (n + 1)

end A136035

/-! ## A136035.P14819598991616288751

`A128311(eq[1, A239938(n+1)]+1)`
-/

namespace A136035.P14819598991616288751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128311 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136035.P14819598991616288751

namespace A136035

/-- `A128311(eq[1, A239938(n+1)]+1)` -/
def P14819598991616288751.Spec : Prop :=
  ∀ n, P14819598991616288751.a n = A136035 (n + 1)

end A136035

/-!
# A136036: a(n) = A063882(n+1) - A063882(n).

The programs for A136036, the canonical program `A136036.P4686225280415602955` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136036 has offset 1).

The definition of A136036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A063882(n+2)-A063882(n+1)` (program `A136036.P4686225280415602955`, by `A136036.P4686225280415602955.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136036.P4686225280415602955

`A063882(n+2)-A063882(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136036

/-- `A063882(n+2)-A063882(n+1)` -/
def P4686225280415602955.Spec : Prop :=
  ∀ n, P4686225280415602955.a n = A136036 (n + 1)

theorem P4686225280415602955.correct : P4686225280415602955.Spec := by
  intro n
  simp only [A136036, Nat.add_sub_cancel]

end A136036

/-! ## A136036.P11722098282939859853

`char[A202014(n+1)-2]`
-/

namespace A136036.P11722098282939859853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A136036.P11722098282939859853

namespace A136036

/-- `char[A202014(n+1)-2]` -/
def P11722098282939859853.Spec : Prop :=
  ∀ n, (P11722098282939859853.a n : ℤ) = A136036 (n + 1)

end A136036

/-! ## A136036.P11175582908076292413

`Δ[A063882(n+1)]`
-/

namespace A136036.P11175582908076292413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136036.P11175582908076292413

namespace A136036

/-- `Δ[A063882(n+1)]` -/
def P11175582908076292413.Spec : Prop :=
  ∀ n, P11175582908076292413.a n = A136036 (n + 1)

theorem P11175582908076292413.correct : P11175582908076292413.Spec := by
  intro n
  simp only [A136036, Nat.add_sub_cancel, A136036.P11175582908076292413.f1, A136036.P11175582908076292413.a, A136036.P4686225280415602955.a, SequenceMachineLib.memo_apply]

end A136036

/-! ## A136036.P1477141402845796313

`A001221(ceil(ratio[A063882(n+1)]))`
-/

namespace A136036.P1477141402845796313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A136036.P1477141402845796313

namespace A136036

/-- `A001221(ceil(ratio[A063882(n+1)]))` -/
def P1477141402845796313.Spec : Prop :=
  ∀ n, P1477141402845796313.a n = A136036 (n + 1)

end A136036

/-! ## A136036.P11787901389841512965

`A001222(ceil(ratio[A063882(n+1)]))`
-/

namespace A136036.P11787901389841512965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A136036.P11787901389841512965

namespace A136036

/-- `A001222(ceil(ratio[A063882(n+1)]))` -/
def P11787901389841512965.Spec : Prop :=
  ∀ n, P11787901389841512965.a n = A136036 (n + 1)

end A136036

/-! ## A136036.P6413316367574442188

`A004874(ceil(ratio[A063882(n+1)]))`
-/

namespace A136036.P6413316367574442188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004874 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A136036.P6413316367574442188

namespace A136036

/-- `A004874(ceil(ratio[A063882(n+1)]))` -/
def P6413316367574442188.Spec : Prop :=
  ∀ n, P6413316367574442188.a n = A136036 (n + 1)

end A136036

/-! ## A136036.P13932568713626143425

`A005379(ceil(ratio[A063882(n+1)]))`
-/

namespace A136036.P13932568713626143425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A136036.P13932568713626143425

namespace A136036

/-- `A005379(ceil(ratio[A063882(n+1)]))` -/
def P13932568713626143425.Spec : Prop :=
  ∀ n, P13932568713626143425.a n = A136036 (n + 1)

end A136036

/-! ## A136036.P871853862071132429

`A285758(2*n+3)%2`
-/

namespace A136036.P871853862071132429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285758 (2 * n + 3)) 2

end

end A136036.P871853862071132429

namespace A136036

/-- `A285758(2*n+3)%2` -/
def P871853862071132429.Spec : Prop :=
  ∀ n, P871853862071132429.a n = A136036 (n + 1)

end A136036

/-! ## A136036.P16397963898972904952

`Δ[A285758(2*(n+1))/2]`
-/

namespace A136036.P16397963898972904952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285758 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136036.P16397963898972904952

namespace A136036

/-- `Δ[A285758(2*(n+1))/2]` -/
def P16397963898972904952.Spec : Prop :=
  ∀ n, P16397963898972904952.a n = (A136036 (n + 1) : ℚ)

end A136036

/-! ## A136036.P1624702523564656121

`A000045(Δ[A285758(2*(n+1))])`
-/

namespace A136036.P1624702523564656121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (n + 1) - f1 n).toNat

end

end A136036.P1624702523564656121

namespace A136036

/-- `A000045(Δ[A285758(2*(n+1))])` -/
def P1624702523564656121.Spec : Prop :=
  ∀ n, P1624702523564656121.a n = A136036 (n + 1)

end A136036

/-! ## A136036.P16505949762425257001

`A285758(2*n+3)-A285758(2*(n+1))`
-/

namespace A136036.P16505949762425257001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (2 * n + 3) - A285758 (2 * (n + 1))

end

end A136036.P16505949762425257001

namespace A136036

/-- `A285758(2*n+3)-A285758(2*(n+1))` -/
def P16505949762425257001.Spec : Prop :=
  ∀ n, P16505949762425257001.a n = A136036 (n + 1)

end A136036

/-!
# A136037: Numbers with at least three adjacent equal digits in binary representation.

The programs for A136037, the canonical program `A136037.P14371956938869211453` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136037 has offset 1).

The definition of A136037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136037.P14371956938869211453

`comp[A063037(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A136037

/-- `comp[A063037(n+1)]` -/
def P14371956938869211453.Spec : Prop :=
  ∀ n, (P14371956938869211453.a n : ℤ) = A136037 (n + 1)

theorem P14371956938869211453.correct : P14371956938869211453.Spec := by
  intro n
  simp only [A136037, Nat.add_sub_cancel]

end A136037

/-! ## A136037.P17390155992943028950

`∪[A004781(n+1), A004779(n)]`
-/

namespace A136037.P17390155992943028950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136037.P17390155992943028950

namespace A136037

/-- `∪[A004781(n+1), A004779(n)]` -/
def P17390155992943028950.Spec : Prop :=
  ∀ n, (P17390155992943028950.a n : ℤ) = A136037 (n + 1)

end A136037

/-! ## A136037.P1473712131280473893

`lt[2, A284559(n)]`
-/

namespace A136037.P1473712131280473893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136037.P1473712131280473893

namespace A136037

/-- `lt[2, A284559(n)]` -/
def P1473712131280473893.Spec : Prop :=
  ∀ n, (P1473712131280473893.a n : ℤ) = A136037 (n + 1)

end A136037

/-! ## A136037.P18027474071058076001

`eq[1, A000213(floor(7/A284559(n)))]`
-/

namespace A136037.P18027474071058076001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 ⌊7 / (A284559 n : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136037.P18027474071058076001

namespace A136037

/-- `eq[1, A000213(floor(7/A284559(n)))]` -/
def P18027474071058076001.Spec : Prop :=
  ∀ n, (P18027474071058076001.a n : ℤ) = A136037 (n + 1)

end A136037

/-! ## A136037.P934701617400127925

`eq[2, A288183(C(2, A284559(n))+2)]`
-/

namespace A136037.P934701617400127925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288183 (Nat.choose 2 (A284559 n).toNat + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136037.P934701617400127925

namespace A136037

/-- `eq[2, A288183(C(2, A284559(n))+2)]` -/
def P934701617400127925.Spec : Prop :=
  ∀ n, (P934701617400127925.a n : ℤ) = A136037 (n + 1)

end A136037

/-! ## A136037.P15411306681388319226

`lt[2, A043276(n+1)]+1`
-/

namespace A136037.P15411306681388319226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A136037.P15411306681388319226

namespace A136037

/-- `lt[2, A043276(n+1)]+1` -/
def P15411306681388319226.Spec : Prop :=
  ∀ n, (P15411306681388319226.a n : ℤ) = A136037 (n + 1)

end A136037

/-! ## A136037.P11035916062460276856

`lt[2, A043276(A028310(n))]`
-/

namespace A136037.P11035916062460276856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136037.P11035916062460276856

namespace A136037

/-- `lt[2, A043276(A028310(n))]` -/
def P11035916062460276856.Spec : Prop :=
  ∀ n, (P11035916062460276856.a n : ℤ) = A136037 (n + 1)

end A136037

/-! ## A136037.P10793000261561501925

`lt[1, A087117(A341915(n))]`
-/

namespace A136037.P10793000261561501925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A341915 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136037.P10793000261561501925

namespace A136037

/-- `lt[1, A087117(A341915(n))]` -/
def P10793000261561501925.Spec : Prop :=
  ∀ n, (P10793000261561501925.a n : ℤ) = A136037 (n + 1)

end A136037

/-! ## A136037.P4296340598594533593

`lt[A356965(A356964(n)), A356964(n)]`
-/

namespace A136037.P4296340598594533593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356965 (A356964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136037.P4296340598594533593

namespace A136037

/-- `lt[A356965(A356964(n)), A356964(n)]` -/
def P4296340598594533593.Spec : Prop :=
  ∀ n, (P4296340598594533593.a n : ℤ) = A136037 (n + 1)

end A136037

/-! ## A136037.P5731276095351019333

`lt[1, A087117(A003188(n))]`
-/

namespace A136037.P5731276095351019333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136037.P5731276095351019333

namespace A136037

/-- `lt[1, A087117(A003188(n))]` -/
def P5731276095351019333.Spec : Prop :=
  ∀ n, (P5731276095351019333.a n : ℤ) = A136037 (n + 1)

end A136037

/-! ## A136037.P974855573123264995

`lt[2, A090996(A335835(n))]`
-/

namespace A136037.P974855573123264995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A335835 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136037.P974855573123264995

namespace A136037

/-- `lt[2, A090996(A335835(n))]` -/
def P974855573123264995.Spec : Prop :=
  ∀ n, (P974855573123264995.a n : ℤ) = A136037 (n + 1)

end A136037

/-!
# A136038: a(n) = n^6 - n^4.

The programs for A136038, the canonical program `A136038.P15305248472403964533` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136038 has offset 0).

The definition of A136038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6-n^4` (program `A136038.P15305248472403964533`, by `A136038.P15305248472403964533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136038.P15305248472403964533

`n^6-n^4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A136038

/-- `n^6-n^4` -/
def P15305248472403964533.Spec : Prop :=
  ∀ n, P15305248472403964533.a n = A136038 n

theorem P15305248472403964533.correct : P15305248472403964533.Spec := by
  intro n
  simp only [A136038]

end A136038

/-! ## A136038.P863976273003871428

`lcm(1-n², n²²)`
-/

namespace A136038.P863976273003871428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n ^ 2 : ℤ)) ((n ^ 2) ^ 2 : ℤ)

end

end A136038.P863976273003871428

namespace A136038

/-- `lcm(1-n², n²²)` -/
def P863976273003871428.Spec : Prop :=
  ∀ n, (P863976273003871428.a n : ℤ) = A136038 n

end A136038

/-! ## A136038.P2357261525004597502

`2*C(n², 2)*n²`
-/

namespace A136038.P2357261525004597502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n ^ 2) 2 * n ^ 2

end

end A136038.P2357261525004597502

namespace A136038

/-- `2*C(n², 2)*n²` -/
def P2357261525004597502.Spec : Prop :=
  ∀ n, (P2357261525004597502.a n : ℤ) = A136038 n

end A136038

/-! ## A136038.P3581668606526714827

`n²²*∑[a(n-1)+2]` with `a(0)=-1`
-/

namespace A136038.P3581668606526714827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136038.P3581668606526714827

namespace A136038

/-- `n²²*∑[a(n-1)+2]` -/
def P3581668606526714827.Spec : Prop :=
  ∀ n, P3581668606526714827.a n = A136038 n

end A136038

/-! ## A136038.P7471295432552963373

`(n+1)*(n-1)*gcd(n, 2*n)²²`
-/

namespace A136038.P7471295432552963373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n : ℤ) - 1) * ((Nat.gcd n (2 * n) ^ 2) ^ 2 : ℤ))

end

end A136038.P7471295432552963373

namespace A136038

/-- `(n+1)*(n-1)*gcd(n, 2*n)²²` -/
def P7471295432552963373.Spec : Prop :=
  ∀ n, P7471295432552963373.a n = A136038 n

theorem P7471295432552963373.correct : P7471295432552963373.Spec := by
  intro n
  simp only [A136038, Nat.add_sub_cancel, A136038.P7471295432552963373.a, A136038.P15305248472403964533.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A136038

/-! ## A136038.P3653033812699052072

`n*A133754(n)`
-/

namespace A136038.P3653033812699052072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A133754 n

end

end A136038.P3653033812699052072

namespace A136038

/-- `n*A133754(n)` -/
def P3653033812699052072.Spec : Prop :=
  ∀ n, P3653033812699052072.a n = A136038 n

end A136038

/-! ## A136038.P11339412520673459501

`(n+1)*A085538(n)`
-/

namespace A136038.P11339412520673459501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A085538 n

end

end A136038.P11339412520673459501

namespace A136038

/-- `(n+1)*A085538(n)` -/
def P11339412520673459501.Spec : Prop :=
  ∀ n, P11339412520673459501.a n = A136038 n

end A136038

/-! ## A136038.P15358016429402188413

`(n-1)*A101362(n)`
-/

namespace A136038.P15358016429402188413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A101362 n

end

end A136038.P15358016429402188413

namespace A136038

/-- `(n-1)*A101362(n)` -/
def P15358016429402188413.Spec : Prop :=
  ∀ n, P15358016429402188413.a n = A136038 n

end A136038

/-! ## A136038.P5256679724653151981

`2*n*A321672(n)`
-/

namespace A136038.P5256679724653151981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A321672 n)

end

end A136038.P5256679724653151981

namespace A136038

/-- `2*n*A321672(n)` -/
def P5256679724653151981.Spec : Prop :=
  ∀ n, P5256679724653151981.a n = A136038 n

end A136038

/-! ## A136038.P7544146410142644933

`(n²-1)*A000583(n)`
-/

namespace A136038.P7544146410142644933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 1) * A000583 n

end

end A136038.P7544146410142644933

namespace A136038

/-- `(n²-1)*A000583(n)` -/
def P7544146410142644933.Spec : Prop :=
  ∀ n, P7544146410142644933.a n = A136038 n

end A136038

/-! ## A136038.P11910624854718978639

`(A060886(n)-1)*n²`
-/

namespace A136038.P11910624854718978639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060886 n - 1) * (n ^ 2 : ℤ)

end

end A136038.P11910624854718978639

namespace A136038

/-- `(A060886(n)-1)*n²` -/
def P11910624854718978639.Spec : Prop :=
  ∀ n, P11910624854718978639.a n = A136038 n

end A136038

/-! ## A136038.P8629499414755741293

`A218131(n)/(n²+1)`
-/

namespace A136038.P8629499414755741293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218131 n : ℚ) / (n ^ 2 + 1 : ℚ)

end

end A136038.P8629499414755741293

namespace A136038

/-- `A218131(n)/(n²+1)` -/
def P8629499414755741293.Spec : Prop :=
  ∀ n, P8629499414755741293.a n = (A136038 n : ℚ)

end A136038

/-! ## A136038.P3964661976960361349

`(2*n)²*A006011(n)`
-/

namespace A136038.P3964661976960361349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) * A006011 n

end

end A136038.P3964661976960361349

namespace A136038

/-- `(2*n)²*A006011(n)` -/
def P3964661976960361349.Spec : Prop :=
  ∀ n, P3964661976960361349.a n = A136038 n

end A136038

/-! ## A136038.P74855499024962588

`(n/2)²*A173121(n)`
-/

namespace A136038.P74855499024962588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2 * (A173121 n : ℚ)

end

end A136038.P74855499024962588

namespace A136038

/-- `(n/2)²*A173121(n)` -/
def P74855499024962588.Spec : Prop :=
  ∀ n, P74855499024962588.a n = (A136038 n : ℚ)

end A136038

/-! ## A136038.P5221823256469216231

`C(n², 2)*A001105(n)`
-/

namespace A136038.P5221823256469216231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℤ) * A001105 n

end

end A136038.P5221823256469216231

namespace A136038

/-- `C(n², 2)*A001105(n)` -/
def P5221823256469216231.Spec : Prop :=
  ∀ n, P5221823256469216231.a n = A136038 n

end A136038

/-! ## A136038.P14848072598489357333

`∑[2*n]*A085537(n)`
-/

namespace A136038.P14848072598489357333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A085537 n

end

end A136038.P14848072598489357333

namespace A136038

/-- `∑[2*n]*A085537(n)` -/
def P14848072598489357333.Spec : Prop :=
  ∀ n, P14848072598489357333.a n = A136038 n

end A136038

/-! ## A136038.P6830955663916232915

`n*(A133070(n)+n²)`
-/

namespace A136038.P6830955663916232915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A133070 n + (n ^ 2 : ℤ))

end

end A136038.P6830955663916232915

namespace A136038

/-- `n*(A133070(n)+n²)` -/
def P6830955663916232915.Spec : Prop :=
  ∀ n, P6830955663916232915.a n = A136038 n

end A136038

/-! ## A136038.P11525311107277754511

`n*(A133071(n)-n²)`
-/

namespace A136038.P11525311107277754511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A133071 n - (n ^ 2 : ℤ))

end

end A136038.P11525311107277754511

namespace A136038

/-- `n*(A133071(n)-n²)` -/
def P11525311107277754511.Spec : Prop :=
  ∀ n, P11525311107277754511.a n = A136038 n

end A136038

/-! ## A136038.P17504657074448934855

`n²²*∑[A060747(n)]`
-/

namespace A136038.P17504657074448934855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136038.P17504657074448934855

namespace A136038

/-- `n²²*∑[A060747(n)]` -/
def P17504657074448934855.Spec : Prop :=
  ∀ n, P17504657074448934855.a n = A136038 n

end A136038

/-! ## A136038.P6058242277917581610

`A006011(n)*A016742(n)`
-/

namespace A136038.P6058242277917581610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n * A016742 n

end

end A136038.P6058242277917581610

namespace A136038

/-- `A006011(n)*A016742(n)` -/
def P6058242277917581610.Spec : Prop :=
  ∀ n, P6058242277917581610.a n = A136038 n

end A136038

/-!
# A136039: Bisection of A138551.

The programs for A136039, there is no canonical definition to state claims against.
-/

/-! ## A136039.P12707886599581572482

`record[A138551(n)]`
-/

namespace A136039.P12707886599581572482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136039.P12707886599581572482

/-! ## A136039.P4216339884990299677

`A138551(2*n)`
-/

namespace A136039.P4216339884990299677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138551 (2 * n)

end

end A136039.P4216339884990299677

/-! ## A136039.P16557955935675875942

`gcd(A020761(n), A138551(A005843(n)))`
-/

namespace A136039.P16557955935675875942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020761 n) (A138551 (A005843 n).toNat)

end

end A136039.P16557955935675875942

/-! ## A136039.P4007680992295004453

`lcm(A062557(n), A138551(A005843(n)))`
-/

namespace A136039.P4007680992295004453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062557 n) (A138551 (A005843 n).toNat)

end

end A136039.P4007680992295004453

/-! ## A136039.P18331323489947811795

`or(A000007(n), A138551(A005843(n)))`
-/

namespace A136039.P18331323489947811795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A138551 (A005843 n).toNat)

end

end A136039.P18331323489947811795

/-!
# A136040: Classes of the phi iteration for which the smallest number is prime.

The programs for A136040, there is no canonical definition to state claims against.
-/

/-! ## A136040.P935496520941992370

`A293715(n+2)-2`
-/

namespace A136040.P935496520941992370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293715 (n + 2) - 2

end

end A136040.P935496520941992370

/-! ## A136040.P9098409914982241819

`∑[abs(Δ[A293715(n+1)])]`
-/

namespace A136040.P9098409914982241819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136040.P9098409914982241819

/-! ## A136040.P11678392566094480840

`lt[0, A145443(n+1)]+1`
-/

namespace A136040.P11678392566094480840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145443 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A136040.P11678392566094480840

/-! ## A136040.P7502663120857645787

`A023444(A293715(n+2))`
-/

namespace A136040.P7502663120857645787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A293715 (n + 2)).toNat

end

end A136040.P7502663120857645787

/-! ## A136040.P4627436240536347507

`∑[A000027(Δ[A293715(n+1)])]`
-/

namespace A136040.P4627436240536347507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136040.P4627436240536347507

/-! ## A136040.P16141685423638133282

`∑[A028310(Δ[A293715(n+1)])]`
-/

namespace A136040.P16141685423638133282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136040.P16141685423638133282

/-! ## A136040.P7706958813184438977

`∑[A077342(Δ[A293715(n+1)])]`
-/

namespace A136040.P7706958813184438977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077342 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136040.P7706958813184438977

/-! ## A136040.P5298669713453615136

`∑[Δ[A293715(n+1)]%A000040(n+1)]`
-/

namespace A136040.P5298669713453615136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136040.P5298669713453615136

/-! ## A136040.P4290718713268096230

`floor(log2(A092873(n+1)))`
-/

namespace A136040.P4290718713268096230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A092873 (n + 1)).toNat

end

end A136040.P4290718713268096230

/-!
# A136041: Largest prime p such that phi^n(p) = 2, where phi^n means n iterations of Euler's totient function.

The programs for A136041, there is no canonical definition to state claims against.
-/

/-! ## A136041.P4494417530707491982

`record[p?[A014601(A232561(n+1))]]`
-/

namespace A136041.P4494417530707491982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A232561 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136041.P4494417530707491982

/-! ## A136041.P11013873520852818930

`A069051(lt[A218971(n), n])`
-/

namespace A136041.P11013873520852818930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218971 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069051 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A136041.P11013873520852818930

/-! ## A136041.P15059840197125514971

`A069051(lt[A199660(n), A082550(n+1)])`
-/

namespace A136041.P15059840197125514971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069051 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A136041.P15059840197125514971

/-!
# A136043: Period-lengths of the base-2 MR-expansions of the reciprocals of the positive integers.

The programs for A136043, there is no canonical definition to state claims against.
-/

/-! ## A136043.P812703899054595098

`A179382(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A136043.P812703899054595098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A136043.P812703899054595098

/-! ## A136043.P10738836792134067515

`A179382(floor(n/2^val(n+1, 2))/2+1)`
-/

namespace A136043.P10738836792134067515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2 + 1)).toNat

end

end A136043.P10738836792134067515

/-! ## A136043.P9891786260788685020

`A179382(round(abs((n+1)/or(n+1, -(n+1)))/2))`
-/

namespace A136043.P9891786260788685020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (SequenceMachineLib.roundAway (|(n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)| / 2)).toNat

end

end A136043.P9891786260788685020

/-! ## A136043.P9692750906333163483

`A028310(A119513(n+1))`
-/

namespace A136043.P9692750906333163483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A119513 (n + 1)).toNat

end

end A136043.P9692750906333163483

/-! ## A136043.P5693466995047455734

`A179382(A003602(n+1))`
-/

namespace A136043.P5693466995047455734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (A003602 (n + 1)).toNat

end

end A136043.P5693466995047455734

/-! ## A136043.P7345858613948534768

`A179382(A025480(n)+1)`
-/

namespace A136043.P7345858613948534768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (A025480 n + 1).toNat

end

end A136043.P7345858613948534768

/-! ## A136043.P5942956218766878018

`A179382(A365388(n+1))`
-/

namespace A136043.P5942956218766878018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (A365388 (n + 1)).toNat

end

end A136043.P5942956218766878018

/-! ## A136043.P354279396418739333

`A179382(A366893(n+1))`
-/

namespace A136043.P354279396418739333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (A366893 (n + 1)).toNat

end

end A136043.P354279396418739333

/-!
# A136045: Bisection of A138546.

The programs for A136045, there is no canonical definition to state claims against.
-/

/-! ## A136045.P432440738584252496

`A000984(n)*A086618(n)`
-/

namespace A136045.P432440738584252496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A086618 n

end

end A136045.P432440738584252496

/-! ## A136045.P18099259383757395249

`sqrt(A002894(n))*A086618(n)`
-/

namespace A136045.P18099259383757395249
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A086618 n : ℝ)

end

end A136045.P18099259383757395249

/-! ## A136045.P11716004617263969862

`A086618(n)*A126869(2*n)`
-/

namespace A136045.P11716004617263969862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086618 n * A126869 (2 * n)

end

end A136045.P11716004617263969862

/-! ## A136045.P10000675251823490115

`A007318(A046092(n))*A086618(n)`
-/

namespace A136045.P10000675251823490115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046092 n).toNat * A086618 n

end

end A136045.P10000675251823490115

/-! ## A136045.P3918415170634202580

`A086618(n)*A092392(A000217(n))`
-/

namespace A136045.P3918415170634202580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086618 n * A092392 (A000217 n).toNat

end

end A136045.P3918415170634202580

/-!
# A136046: Bisection of A138543.

The programs for A136046, there is no canonical definition to state claims against.
-/

/-! ## A136046.P16650873527435480044

`A000108(n)*A128079(n)`
-/

namespace A136046.P16650873527435480044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A128079 n

end

end A136046.P16650873527435480044

/-! ## A136046.P11999410354983302532

`abs(A115140(n+1)*A128079(n))`
-/

namespace A136046.P11999410354983302532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 (n + 1) * A128079 n|

end

end A136046.P11999410354983302532

/-! ## A136046.P1080269279596862980

`record[A138543(n)]`
-/

namespace A136046.P1080269279596862980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136046.P1080269279596862980

/-! ## A136046.P3494939212669163284

`A138543(2*n)`
-/

namespace A136046.P3494939212669163284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138543 (2 * n)

end

end A136046.P3494939212669163284

/-! ## A136046.P16465918256333269807

`lcm(A138543(A005843(n)), A281680(n))`
-/

namespace A136046.P16465918256333269807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138543 (A005843 n).toNat) (A281680 n)

end

end A136046.P16465918256333269807

/-!
# A136047: a(1)=1, a(n)=a(n-1)+n if n even, a(n)=a(n-1)+n^2 if n is odd.

The programs for A136047, the canonical program `A136047.P11544268220442174438` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136047 has offset 1).

The definition of A136047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136047.P11544268220442174438

`a(n-1)+(n+1)^(1+(n+1)%2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A136047

/-- `a(n-1)+(n+1)^(1+(n+1)%2)` -/
def P11544268220442174438.Spec : Prop :=
  ∀ n, (P11544268220442174438.a n : ℤ) = A136047 (n + 1)

theorem P11544268220442174438.correct : P11544268220442174438.Spec := by
  intro n
  simp only [A136047, Nat.add_sub_cancel]

end A136047

/-! ## A136047.P2219636024935672121

`a(n-1)+(n+1)^((3-(-1)^(n+1))/2)` with `a(0)=1`
-/

namespace A136047.P2219636024935672121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℝ) ^ ((3 - (-1) ^ (n + 1) : ℚ) / 2 : ℝ)

end

end A136047.P2219636024935672121

namespace A136047

/-- `a(n-1)+(n+1)^((3-(-1)^(n+1))/2)` -/
def P2219636024935672121.Spec : Prop :=
  ∀ n, P2219636024935672121.a n = (A136047 (n + 1) : ℝ)

end A136047

/-! ## A136047.P8754894401803262440

`∑[(n+1)^gcd(2, n)]`
-/

namespace A136047.P8754894401803262440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136047.P8754894401803262440

namespace A136047

/-- `∑[(n+1)^gcd(2, n)]` -/
def P8754894401803262440.Spec : Prop :=
  ∀ n, (P8754894401803262440.a n : ℤ) = A136047 (n + 1)

end A136047

/-! ## A136047.P2111377792007145444

`∑[(n+1)^(2-n%2)]`
-/

namespace A136047.P2111377792007145444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - ((n % 2 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136047.P2111377792007145444

namespace A136047

/-- `∑[(n+1)^(2-n%2)]` -/
def P2111377792007145444.Spec : Prop :=
  ∀ n, P2111377792007145444.a n = (A136047 (n + 1) : ℚ)

end A136047

/-! ## A136047.P9434526795306681130

`∑[(n+1)^(2-and(1, n))]`
-/

namespace A136047.P9434526795306681130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - (Nat.land 1 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136047.P9434526795306681130

namespace A136047

/-- `∑[(n+1)^(2-and(1, n))]` -/
def P9434526795306681130.Spec : Prop :=
  ∀ n, P9434526795306681130.a n = (A136047 (n + 1) : ℚ)

end A136047

/-! ## A136047.P3803710001216802374

`∑[(n+1)*C(or(1, n), n)]`
-/

namespace A136047.P3803710001216802374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (Nat.lor 1 n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136047.P3803710001216802374

namespace A136047

/-- `∑[(n+1)*C(or(1, n), n)]` -/
def P3803710001216802374.Spec : Prop :=
  ∀ n, (P3803710001216802374.a n : ℤ) = A136047 (n + 1)

end A136047

/-! ## A136047.P16669902030829873881

`∑[(n+1)^-or(n, -2)]`
-/

namespace A136047.P16669902030829873881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (-Int.lor (n : ℤ) (-2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136047.P16669902030829873881

namespace A136047

/-- `∑[(n+1)^-or(n, -2)]` -/
def P16669902030829873881.Spec : Prop :=
  ∀ n, P16669902030829873881.a n = (A136047 (n + 1) : ℚ)

end A136047

/-! ## A136047.P2805891447784268436

`∑[(n+1)^(char[2*n]+1)]`
-/

namespace A136047.P2805891447784268436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136047.P2805891447784268436

namespace A136047

/-- `∑[(n+1)^(char[2*n]+1)]` -/
def P2805891447784268436.Spec : Prop :=
  ∀ n, (P2805891447784268436.a n : ℤ) = A136047 (n + 1)

end A136047

/-! ## A136047.P12255405252610428447

`∑[n*(lcm(2, n+1)-n)]+n+1`
-/

namespace A136047.P12255405252610428447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lcm 2 (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 1

end

end A136047.P12255405252610428447

namespace A136047

/-- `∑[n*(lcm(2, n+1)-n)]+n+1` -/
def P12255405252610428447.Spec : Prop :=
  ∀ n, P12255405252610428447.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P7776814698912973710

`∑[(n+1)^(C(n, a(n-1))+1)]-1` with `a(0)=2`
-/

namespace A136047.P7776814698912973710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 1) ^ (Nat.choose n (f1 (n - 1)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A136047.P7776814698912973710

namespace A136047

/-- `∑[(n+1)^(C(n, a(n-1))+1)]-1` -/
def P7776814698912973710.Spec : Prop :=
  ∀ n, P7776814698912973710.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P12561653309662218813

`A266440(n)+A093361(n)`
-/

namespace A136047.P12561653309662218813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266440 n + A093361 n

end

end A136047.P12561653309662218813

namespace A136047

/-- `A266440(n)+A093361(n)` -/
def P12561653309662218813.Spec : Prop :=
  ∀ n, P12561653309662218813.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P4085780305663913808

`A367965(n)+A059329(n)`
-/

namespace A136047.P4085780305663913808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367965 n + A059329 n

end

end A136047.P4085780305663913808

namespace A136047

/-- `A367965(n)+A059329(n)` -/
def P4085780305663913808.Spec : Prop :=
  ∀ n, P4085780305663913808.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P5334275144456383224

`A083392(n)+A000292(n+1)`
-/

namespace A136047.P5334275144456383224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n + A000292 (n + 1)

end

end A136047.P5334275144456383224

namespace A136047

/-- `A083392(n)+A000292(n+1)` -/
def P5334275144456383224.Spec : Prop :=
  ∀ n, P5334275144456383224.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P8652130069402138719

`A172482(n)-(A140113(n+1)+A000578(n+1))`
-/

namespace A136047.P8652130069402138719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172482 n - (A140113 (n + 1) + A000578 (n + 1))

end

end A136047.P8652130069402138719

namespace A136047

/-- `A172482(n)-(A140113(n+1)+A000578(n+1))` -/
def P8652130069402138719.Spec : Prop :=
  ∀ n, P8652130069402138719.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P6912306381863071970

`A000217(n+1)+A000330(n+1)-A140113(n+1)`
-/

namespace A136047.P6912306381863071970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000330 (n + 1) - A140113 (n + 1))

end

end A136047.P6912306381863071970

namespace A136047

/-- `A000217(n+1)+A000330(n+1)-A140113(n+1)` -/
def P6912306381863071970.Spec : Prop :=
  ∀ n, P6912306381863071970.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P6805676763844504165

`A140148(n+1)+A140158(n+1)-A140157(n+1)`
-/

namespace A136047.P6805676763844504165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140148 (n + 1) + (A140158 (n + 1) - A140157 (n + 1))

end

end A136047.P6805676763844504165

namespace A136047

/-- `A140148(n+1)+A140158(n+1)-A140157(n+1)` -/
def P6805676763844504165.Spec : Prop :=
  ∀ n, P6805676763844504165.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P7871895450590732209

`A065599(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A136047.P7871895450590732209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065599 (n + 1) + a (n - 1)

end

end A136047.P7871895450590732209

namespace A136047

/-- `A065599(n+1)+a(n-1)` -/
def P7871895450590732209.Spec : Prop :=
  ∀ n, P7871895450590732209.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P14878432689145497588

`A228958(n+2)-A008619(n+1)`
-/

namespace A136047.P14878432689145497588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228958 (n + 2) - A008619 (n + 1)

end

end A136047.P14878432689145497588

namespace A136047

/-- `A228958(n+2)-A008619(n+1)` -/
def P14878432689145497588.Spec : Prop :=
  ∀ n, P14878432689145497588.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P9222648740300654146

`A228958(n+2)-(A004526(n+1)+1)`
-/

namespace A136047.P9222648740300654146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228958 (n + 2) - (A004526 (n + 1) + 1)

end

end A136047.P9222648740300654146

namespace A136047

/-- `A228958(n+2)-(A004526(n+1)+1)` -/
def P9222648740300654146.Spec : Prop :=
  ∀ n, P9222648740300654146.a n = A136047 (n + 1)

end A136047

/-! ## A136047.P1030352202698697249

`A000330(n+1)+A135276(n+1)-A135301(n+1)`
-/

namespace A136047.P1030352202698697249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A135276 (n + 1) - A135301 (n + 1))

end

end A136047.P1030352202698697249

namespace A136047

/-- `A000330(n+1)+A135276(n+1)-A135301(n+1)` -/
def P1030352202698697249.Spec : Prop :=
  ∀ n, P1030352202698697249.a n = A136047 (n + 1)

end A136047

/-!
# A136048: Semiprime terms in A136047.

The programs for A136048, there is no canonical definition to state claims against.
-/

/-! ## A136048.P16705390531264497121

`A136047(A135439(n+1))`
-/

namespace A136048.P16705390531264497121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (A135439 (n + 1)).toNat

end

end A136048.P16705390531264497121

/-! ## A136048.P16869483521702900298

`filter[A136047(n+2), A354927(#)]`
-/

namespace A136048.P16869483521702900298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A136048.P16869483521702900298

/-! ## A136048.P17192530101534209750

`A136047(eq[2, A001222(∑[(n+1)^(2-n%2)])]+1)`
-/

namespace A136048.P17192530101534209750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (2 - ((n % 2 : ℕ) : ℤ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A136048.P17192530101534209750

/-! ## A136048.P8765132031282195712

`filter[A136047(n+1), A064911(#)]`
-/

namespace A136048.P8765132031282195712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A136048.P8765132031282195712

/-! ## A136048.P6322090734644454874

`filter[A136047(n+1), A280710(#)]`
-/

namespace A136048.P6322090734644454874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A136048.P6322090734644454874

/-!
# A136049: a(n)=number of primes p such that (p,p+2) is a pair of twin primes with n^2 + n < p < n^2+3*n+2.

The programs for A136049, the canonical program `A136049.P2253946720504092098` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136049 has offset 1).

The definition of A136049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136049.P2253946720504092098

`Δ[A071538((n+1)²+n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136049

/-- `Δ[A071538((n+1)²+n)]` -/
def P2253946720504092098.Spec : Prop :=
  ∀ n, P2253946720504092098.a n = A136049 (n + 1)

theorem P2253946720504092098.correct : P2253946720504092098.Spec := by
  intro n
  simp only [A136049, Nat.add_sub_cancel]

end A136049

/-! ## A136049.P15907996840486663038

`abs(Δ[A071538(A028387(n))])`
-/

namespace A136049.P15907996840486663038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A136049.P15907996840486663038

namespace A136049

/-- `abs(Δ[A071538(A028387(n))])` -/
def P15907996840486663038.Spec : Prop :=
  ∀ n, P15907996840486663038.a n = A136049 (n + 1)

end A136049

/-! ## A136049.P2780388792980958824

`Δ[A071538(A028387(n))]%A082285(n)`
-/

namespace A136049.P2780388792980958824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A082285 n)

end

end A136049.P2780388792980958824

namespace A136049

/-- `Δ[A071538(A028387(n))]%A082285(n)` -/
def P2780388792980958824.Spec : Prop :=
  ∀ n, P2780388792980958824.a n = A136049 (n + 1)

end A136049

/-! ## A136049.P208458927590794402

`A033999(n)²*Δ[A071538(A028387(n))]`
-/

namespace A136049.P208458927590794402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A136049.P208458927590794402

namespace A136049

/-- `A033999(n)²*Δ[A071538(A028387(n))]` -/
def P208458927590794402.Spec : Prop :=
  ∀ n, P208458927590794402.a n = A136049 (n + 1)

end A136049

/-! ## A136049.P16363084964544250048

`A131533(3*n)+Δ[A071538(A028387(n))]`
-/

namespace A136049.P16363084964544250048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131533 (3 * n) + (f1 (n + 1) - f1 n)

end

end A136049.P16363084964544250048

namespace A136049

/-- `A131533(3*n)+Δ[A071538(A028387(n))]` -/
def P16363084964544250048.Spec : Prop :=
  ∀ n, P16363084964544250048.a n = A136049 (n + 1)

end A136049

/-! ## A136049.P385225609242614290

`Δ[A071538(A028387(n))]*A000034(2*n)`
-/

namespace A136049.P385225609242614290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000034 (2 * n)

end

end A136049.P385225609242614290

namespace A136049

/-- `Δ[A071538(A028387(n))]*A000034(2*n)` -/
def P385225609242614290.Spec : Prop :=
  ∀ n, P385225609242614290.a n = A136049 (n + 1)

end A136049

/-! ## A136049.P2111505961962928289

`A099375(n)%2*Δ[A071538(A028387(n))]`
-/

namespace A136049.P2111505961962928289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099375 n) 2 * (f1 (n + 1) - f1 n)

end

end A136049.P2111505961962928289

namespace A136049

/-- `A099375(n)%2*Δ[A071538(A028387(n))]` -/
def P2111505961962928289.Spec : Prop :=
  ∀ n, P2111505961962928289.a n = A136049 (n + 1)

end A136049

/-! ## A136049.P3851028493129834314

`Δ[A071538(A028387(n))]-n*A000038(n)`
-/

namespace A136049.P3851028493129834314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) * A000038 n

end

end A136049.P3851028493129834314

namespace A136049

/-- `Δ[A071538(A028387(n))]-n*A000038(n)` -/
def P3851028493129834314.Spec : Prop :=
  ∀ n, P3851028493129834314.a n = A136049 (n + 1)

end A136049

/-!
# A136050: Sum of digits of product of twin primes A037074.

The programs for A136050, the canonical program `A136050.P9552292067720199386` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136050 has offset 1).

The definition of A136050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136050.P9552292067720199386

`∑{digits}[A037074(n+1), #]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A136050

/-- `∑{digits}[A037074(n+1), #]` -/
def P9552292067720199386.Spec : Prop :=
  ∀ n, (P9552292067720199386.a n : ℤ) = A136050 (n + 1)

theorem P9552292067720199386.correct : P9552292067720199386.Spec := by
  intro n
  simp only [A136050, Nat.add_sub_cancel]

end A136050

/-! ## A136050.P16535151992145344631

`∑{digits}[1-A075369(n+1), #]`
-/

namespace A136050.P16535151992145344631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A075369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A136050.P16535151992145344631

namespace A136050

/-- `∑{digits}[1-A075369(n+1), #]` -/
def P16535151992145344631.Spec : Prop :=
  ∀ n, (P16535151992145344631.a n : ℤ) = A136050 (n + 1)

end A136050

/-! ## A136050.P7731510624387318011

`∑{digits}[1-A014574(n+1)², #]`
-/

namespace A136050.P7731510624387318011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014574 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A136050.P7731510624387318011

namespace A136050

/-- `∑{digits}[1-A014574(n+1)², #]` -/
def P7731510624387318011.Spec : Prop :=
  ∀ n, (P7731510624387318011.a n : ℤ) = A136050 (n + 1)

end A136050

/-! ## A136050.P18091295334255812267

`∑{digits}[A001359(n+1)*A006512(n+1), #]`
-/

namespace A136050.P18091295334255812267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A006512 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A136050.P18091295334255812267

namespace A136050

/-- `∑{digits}[A001359(n+1)*A006512(n+1), #]` -/
def P18091295334255812267.Spec : Prop :=
  ∀ n, (P18091295334255812267.a n : ℤ) = A136050 (n + 1)

end A136050

/-! ## A136050.P678105412177840734

`∑{digits}[A134020(n+2), #]`
-/

namespace A136050.P678105412177840734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A136050.P678105412177840734

namespace A136050

/-- `∑{digits}[A134020(n+2), #]` -/
def P678105412177840734.Spec : Prop :=
  ∀ n, (P678105412177840734.a n : ℤ) = A136050 (n + 1)

end A136050

/-! ## A136050.P9333274536035858581

`∑{digits}[A000203(A001359(n+1))²-1, #]`
-/

namespace A136050.P9333274536035858581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001359 (n + 1)).toNat ^ 2 - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A136050.P9333274536035858581

namespace A136050

/-- `∑{digits}[A000203(A001359(n+1))²-1, #]` -/
def P9333274536035858581.Spec : Prop :=
  ∀ n, (P9333274536035858581.a n : ℤ) = A136050 (n + 1)

end A136050

/-!
# A136051: Primes p such that 5*p-4 is also prime.

The programs for A136051, there is no canonical definition to state claims against.
-/

/-! ## A136051.P11634058446327863199

`ceil(A136061(n+1)/5)`
-/

namespace A136051.P11634058446327863199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136061 (n + 1) : ℚ) / 5⌉

end

end A136051.P11634058446327863199

/-! ## A136051.P7868820831107094920

`A380069(n+1)/A136061(n+1)`
-/

namespace A136051.P7868820831107094920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380069 (n + 1) : ℚ) / (A136061 (n + 1) : ℚ)

end

end A136051.P7868820831107094920

/-! ## A136051.P1139095541751332518

`p?[A024894(n+1)+1]`
-/

namespace A136051.P1139095541751332518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136051.P1139095541751332518

/-! ## A136051.P8704274320524236846

`p?[A081759(n+1)+2]`
-/

namespace A136051.P8704274320524236846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136051.P8704274320524236846

/-! ## A136051.P11656700970842554400

`p?[2*A024912(n+1)+1]`
-/

namespace A136051.P11656700970842554400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024912 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136051.P11656700970842554400

/-! ## A136051.P8924957606100644346

`record[A006530(A081759(n+1)+2)]`
-/

namespace A136051.P8924957606100644346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A081759 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136051.P8924957606100644346

/-! ## A136051.P7567004100417158848

`∩[A000040(n+1), A081759(n+1)+2]`
-/

namespace A136051.P7567004100417158848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P7567004100417158848

/-! ## A136051.P3805829076525689226

`∩[A051948(n+1), A081759(n+1)+2]`
-/

namespace A136051.P3805829076525689226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P3805829076525689226

/-! ## A136051.P17732378838885433808

`∩[A053577(n+1), A081759(n+1)+2]`
-/

namespace A136051.P17732378838885433808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P17732378838885433808

/-! ## A136051.P5166422077473446418

`∩[A053813(n+1), A081759(n+1)+2]`
-/

namespace A136051.P5166422077473446418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P5166422077473446418

/-! ## A136051.P7399053264338662002

`∩[A065091(n+1), A081759(n+1)+2]`
-/

namespace A136051.P7399053264338662002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P7399053264338662002

/-! ## A136051.P12677216991606548115

`∩[A066191(n+1), A081759(n+1)+2]`
-/

namespace A136051.P12677216991606548115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P12677216991606548115

/-! ## A136051.P6732563519639840

`∩[A066542(n+1), A081759(n+1)+2]`
-/

namespace A136051.P6732563519639840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P6732563519639840

/-! ## A136051.P17193882056225219102

`∩[A081759(n+1)+2, A140826(n+1)]`
-/

namespace A136051.P17193882056225219102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P17193882056225219102

/-! ## A136051.P15084027702955938439

`∩[A081759(n+1)+2, A182986(n+1)]`
-/

namespace A136051.P15084027702955938439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P15084027702955938439

/-! ## A136051.P14178589785554814361

`∩[A081759(n+1)+2, A082378(n+1)]`
-/

namespace A136051.P14178589785554814361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P14178589785554814361

/-! ## A136051.P10506290709350278116

`∩[A001751(n+1), A081759(n+1)+2]`
-/

namespace A136051.P10506290709350278116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P10506290709350278116

/-! ## A136051.P1794391955073557654

`∩[A058363(n+1), A081759(n+1)+2]`
-/

namespace A136051.P1794391955073557654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P1794391955073557654

/-! ## A136051.P36449796197844610

`∩[A081759(n+1)+2, A098908(n+1)]`
-/

namespace A136051.P36449796197844610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P36449796197844610

/-! ## A136051.P18434998280047320626

`∩[A038550(n+1), A081759(n+1)+2]`
-/

namespace A136051.P18434998280047320626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136051.P18434998280047320626

/-!
# A136052: Daughter primes of order 3.

The programs for A136052, the canonical program `A136052.P17672628109573547256` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136052 has offset 1).

The definition of A136052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136052.P17672628109573547256

`ceil(A136062(n+1)/7)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136052

/-- `ceil(A136062(n+1)/7)` -/
def P17672628109573547256.Spec : Prop :=
  ∀ n, P17672628109573547256.a n = A136052 (n + 1)

theorem P17672628109573547256.correct : P17672628109573547256.Spec := by
  intro n
  simp only [A136052, Nat.add_sub_cancel]

end A136052

/-! ## A136052.P8539155311396506069

`p?[A024905(n+1)+1]`
-/

namespace A136052.P8539155311396506069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024905 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136052.P8539155311396506069

namespace A136052

/-- `p?[A024905(n+1)+1]` -/
def P8539155311396506069.Spec : Prop :=
  ∀ n, P8539155311396506069.a n = A136052 (n + 1)

end A136052

/-! ## A136052.P13980002121301931387

`p?[A111249(n+1)+2]`
-/

namespace A136052.P13980002121301931387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136052.P13980002121301931387

namespace A136052

/-- `p?[A111249(n+1)+2]` -/
def P13980002121301931387.Spec : Prop :=
  ∀ n, P13980002121301931387.a n = A136052 (n + 1)

end A136052

/-! ## A136052.P11507655178530138593

`record[A006530(A024905(n+1)+1)]`
-/

namespace A136052.P11507655178530138593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024905 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136052.P11507655178530138593

namespace A136052

/-- `record[A006530(A024905(n+1)+1)]` -/
def P11507655178530138593.Spec : Prop :=
  ∀ n, P11507655178530138593.a n = A136052 (n + 1)

end A136052

/-! ## A136052.P10077591043388769316

`record[A020639(A024905(n+1)+1)]`
-/

namespace A136052.P10077591043388769316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024905 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136052.P10077591043388769316

namespace A136052

/-- `record[A020639(A024905(n+1)+1)]` -/
def P10077591043388769316.Spec : Prop :=
  ∀ n, P10077591043388769316.a n = A136052 (n + 1)

end A136052

/-! ## A136052.P17250627294664869238

`record[A006530(A111249(n+1)+2)]`
-/

namespace A136052.P17250627294664869238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111249 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136052.P17250627294664869238

namespace A136052

/-- `record[A006530(A111249(n+1)+2)]` -/
def P17250627294664869238.Spec : Prop :=
  ∀ n, P17250627294664869238.a n = A136052 (n + 1)

end A136052

/-! ## A136052.P3734539841250606336

`p?[eq[1, A001222(7*n+1)]+1]`
-/

namespace A136052.P3734539841250606336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136052.P3734539841250606336

namespace A136052

/-- `p?[eq[1, A001222(7*n+1)]+1]` -/
def P3734539841250606336.Spec : Prop :=
  ∀ n, (P3734539841250606336.a n : ℤ) = A136052 (n + 1)

end A136052

/-! ## A136052.P16234362550537585202

`p?[lt[A000005(7*n+1), 3]+1]`
-/

namespace A136052.P16234362550537585202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136052.P16234362550537585202

namespace A136052

/-- `p?[lt[A000005(7*n+1), 3]+1]` -/
def P16234362550537585202.Spec : Prop :=
  ∀ n, (P16234362550537585202.a n : ℤ) = A136052 (n + 1)

end A136052

/-! ## A136052.P1450923145811667348

`p?[(n+1)*A010051(7*n+1)]`
-/

namespace A136052.P1450923145811667348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (7 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136052.P1450923145811667348

namespace A136052

/-- `p?[(n+1)*A010051(7*n+1)]` -/
def P1450923145811667348.Spec : Prop :=
  ∀ n, P1450923145811667348.a n = A136052 (n + 1)

end A136052

/-! ## A136052.P808689283716918200

`record[A014963(A024905(n+1)+1)]`
-/

namespace A136052.P808689283716918200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A024905 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136052.P808689283716918200

namespace A136052

/-- `record[A014963(A024905(n+1)+1)]` -/
def P808689283716918200.Spec : Prop :=
  ∀ n, P808689283716918200.a n = A136052 (n + 1)

end A136052

/-! ## A136052.P9387896798155995945

`record[A014963(eq[1, A001222(7*n+1)]+1)]`
-/

namespace A136052.P9387896798155995945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136052.P9387896798155995945

namespace A136052

/-- `record[A014963(eq[1, A001222(7*n+1)]+1)]` -/
def P9387896798155995945.Spec : Prop :=
  ∀ n, P9387896798155995945.a n = A136052 (n + 1)

end A136052

/-! ## A136052.P15494107821539874764

`p?[lt[A001222(A028920(n)+7*n), 2]+1]`
-/

namespace A136052.P15494107821539874764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028920 n + (7 * n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136052.P15494107821539874764

namespace A136052

/-- `p?[lt[A001222(A028920(n)+7*n), 2]+1]` -/
def P15494107821539874764.Spec : Prop :=
  ∀ n, (P15494107821539874764.a n : ℤ) = A136052 (n + 1)

end A136052

/-! ## A136052.P8853918901420561549

`p?[lt[A001222(A176895(2*n)+7*n), 2]+1]`
-/

namespace A136052.P8853918901420561549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A176895 (2 * n) + (7 * n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136052.P8853918901420561549

namespace A136052

/-- `p?[lt[A001222(A176895(2*n)+7*n), 2]+1]` -/
def P8853918901420561549.Spec : Prop :=
  ∀ n, (P8853918901420561549.a n : ℤ) = A136052 (n + 1)

end A136052

/-!
# A136053: Daughter primes of order 4.

The programs for A136053, the canonical program `A136053.P1834187513963801814` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136053 has offset 1).

The definition of A136053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136053.P1834187513963801814

`ceil(A136063(n+1)/9)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136053

/-- `ceil(A136063(n+1)/9)` -/
def P1834187513963801814.Spec : Prop :=
  ∀ n, P1834187513963801814.a n = A136053 (n + 1)

theorem P1834187513963801814.correct : P1834187513963801814.Spec := by
  intro n
  simp only [A136053, Nat.add_sub_cancel]

end A136053

/-! ## A136053.P13127717074757846358

`p?[A024906(n+1)+1]`
-/

namespace A136053.P13127717074757846358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024906 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136053.P13127717074757846358

namespace A136053

/-- `p?[A024906(n+1)+1]` -/
def P13127717074757846358.Spec : Prop :=
  ∀ n, P13127717074757846358.a n = A136053 (n + 1)

end A136053

/-! ## A136053.P5077306155550939474

`p?[2*A111094(n+1)+1]`
-/

namespace A136053.P5077306155550939474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111094 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136053.P5077306155550939474

namespace A136053

/-- `p?[2*A111094(n+1)+1]` -/
def P5077306155550939474.Spec : Prop :=
  ∀ n, P5077306155550939474.a n = A136053 (n + 1)

end A136053

/-! ## A136053.P10210015856847321569

`p?[lt[A001222(9*n+1), 2]+1]`
-/

namespace A136053.P10210015856847321569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136053.P10210015856847321569

namespace A136053

/-- `p?[lt[A001222(9*n+1), 2]+1]` -/
def P10210015856847321569.Spec : Prop :=
  ∀ n, (P10210015856847321569.a n : ℤ) = A136053 (n + 1)

end A136053

/-! ## A136053.P18177063731778100571

`p?[(n+1)*A010051(9*n+1)]`
-/

namespace A136053.P18177063731778100571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (9 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136053.P18177063731778100571

namespace A136053

/-- `p?[(n+1)*A010051(9*n+1)]` -/
def P18177063731778100571.Spec : Prop :=
  ∀ n, P18177063731778100571.a n = A136053 (n + 1)

end A136053

/-! ## A136053.P7202222983238677535

`p?[A001222(18*n+1)*comp[2*n]]`
-/

namespace A136053.P7202222983238677535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (18 * n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136053.P7202222983238677535

namespace A136053

/-- `p?[A001222(18*n+1)*comp[2*n]]` -/
def P7202222983238677535.Spec : Prop :=
  ∀ n, P7202222983238677535.a n = A136053 (n + 1)

end A136053

/-! ## A136053.P12118443366992037193

`A006530(A136063(n+1)+8)`
-/

namespace A136053.P12118443366992037193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A136063 (n + 1) + 8).toNat

end

end A136053.P12118443366992037193

namespace A136053

/-- `A006530(A136063(n+1)+8)` -/
def P12118443366992037193.Spec : Prop :=
  ∀ n, P12118443366992037193.a n = A136053 (n + 1)

end A136053

/-! ## A136053.P14477482442923641306

`record[A006530(eq[1, A001222(9*n+1)]+1)]`
-/

namespace A136053.P14477482442923641306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136053.P14477482442923641306

namespace A136053

/-- `record[A006530(eq[1, A001222(9*n+1)]+1)]` -/
def P14477482442923641306.Spec : Prop :=
  ∀ n, P14477482442923641306.a n = A136053 (n + 1)

end A136053

/-! ## A136053.P9747174031880736

`p?[A109613(A024906(n+1))]`
-/

namespace A136053.P9747174031880736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A024906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136053.P9747174031880736

namespace A136053

/-- `p?[A109613(A024906(n+1))]` -/
def P9747174031880736.Spec : Prop :=
  ∀ n, P9747174031880736.a n = A136053 (n + 1)

end A136053

/-! ## A136053.P10185675892590018922

`record[A014963(eq[1, A001222(9*n+1)]+1)]`
-/

namespace A136053.P10185675892590018922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136053.P10185675892590018922

namespace A136053

/-- `record[A014963(eq[1, A001222(9*n+1)]+1)]` -/
def P10185675892590018922.Spec : Prop :=
  ∀ n, P10185675892590018922.a n = A136053 (n + 1)

end A136053

/-! ## A136053.P1819426570204311831

`p?[A137241(A107303(n+1)+1)]`
-/

namespace A136053.P1819426570204311831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A107303 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136053.P1819426570204311831

namespace A136053

/-- `p?[A137241(A107303(n+1)+1)]` -/
def P1819426570204311831.Spec : Prop :=
  ∀ n, P1819426570204311831.a n = A136053 (n + 1)

end A136053

/-! ## A136053.P17943423581919771386

`p?[A137241(A153183(n+1)+2)]`
-/

namespace A136053.P17943423581919771386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A153183 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136053.P17943423581919771386

namespace A136053

/-- `p?[A137241(A153183(n+1)+2)]` -/
def P17943423581919771386.Spec : Prop :=
  ∀ n, P17943423581919771386.a n = A136053 (n + 1)

end A136053

/-!
# A136054: Daughter primes of order 5.

The programs for A136054, the canonical program `A136054.P7433074822671790775` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136054 has offset 1).

The definition of A136054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136054.P7433074822671790775

`ceil(A136064(n+1)/11)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136054

/-- `ceil(A136064(n+1)/11)` -/
def P7433074822671790775.Spec : Prop :=
  ∀ n, P7433074822671790775.a n = A136054 (n + 1)

theorem P7433074822671790775.correct : P7433074822671790775.Spec := by
  intro n
  simp only [A136054, Nat.add_sub_cancel]

end A136054

/-! ## A136054.P8603679008375059872

`p?[A102656(n+1)+1]`
-/

namespace A136054.P8603679008375059872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102656 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136054.P8603679008375059872

namespace A136054

/-- `p?[A102656(n+1)+1]` -/
def P8603679008375059872.Spec : Prop :=
  ∀ n, P8603679008375059872.a n = A136054 (n + 1)

end A136054

/-! ## A136054.P8121490829538903846

`p?[A102731(n+1)+3]`
-/

namespace A136054.P8121490829538903846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102731 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136054.P8121490829538903846

namespace A136054

/-- `p?[A102731(n+1)+3]` -/
def P8121490829538903846.Spec : Prop :=
  ∀ n, P8121490829538903846.a n = A136054 (n + 1)

end A136054

/-! ## A136054.P15477515042372350862

`record[A001414(A102656(n+1)+1)]`
-/

namespace A136054.P15477515042372350862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A102656 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136054.P15477515042372350862

namespace A136054

/-- `record[A001414(A102656(n+1)+1)]` -/
def P15477515042372350862.Spec : Prop :=
  ∀ n, P15477515042372350862.a n = A136054 (n + 1)

end A136054

/-! ## A136054.P12201505084608826077

`record[A020639(A102656(n+1)+1)]`
-/

namespace A136054.P12201505084608826077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102656 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136054.P12201505084608826077

namespace A136054

/-- `record[A020639(A102656(n+1)+1)]` -/
def P12201505084608826077.Spec : Prop :=
  ∀ n, P12201505084608826077.a n = A136054 (n + 1)

end A136054

/-! ## A136054.P3946905933414110618

`record[A006530(A102731(n+1)+3)]`
-/

namespace A136054.P3946905933414110618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102731 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136054.P3946905933414110618

namespace A136054

/-- `record[A006530(A102731(n+1)+3)]` -/
def P3946905933414110618.Spec : Prop :=
  ∀ n, P3946905933414110618.a n = A136054 (n + 1)

end A136054

/-! ## A136054.P5506276729931663086

`record[A014963(A102656(n+1)+1)]`
-/

namespace A136054.P5506276729931663086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102656 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136054.P5506276729931663086

namespace A136054

/-- `record[A014963(A102656(n+1)+1)]` -/
def P5506276729931663086.Spec : Prop :=
  ∀ n, P5506276729931663086.a n = A136054 (n + 1)

end A136054

/-! ## A136054.P9497845951671554942

`p?[lt[A001222(11*n+1), 2]+1]`
-/

namespace A136054.P9497845951671554942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136054.P9497845951671554942

namespace A136054

/-- `p?[lt[A001222(11*n+1), 2]+1]` -/
def P9497845951671554942.Spec : Prop :=
  ∀ n, (P9497845951671554942.a n : ℤ) = A136054 (n + 1)

end A136054

/-! ## A136054.P14749173002074981283

`p?[(n+1)*A010051(11*n+1)]`
-/

namespace A136054.P14749173002074981283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (11 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136054.P14749173002074981283

namespace A136054

/-- `p?[(n+1)*A010051(11*n+1)]` -/
def P14749173002074981283.Spec : Prop :=
  ∀ n, P14749173002074981283.a n = A136054 (n + 1)

end A136054

/-!
# A136055: Daughter primes of order 6.

The programs for A136055, there is no canonical definition to state claims against.
-/

/-! ## A136055.P17226127242481656790

`ceil(A136065(n+1)/13)`
-/

namespace A136055.P17226127242481656790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136065 (n + 1) : ℚ) / 13⌉

end

end A136055.P17226127242481656790

/-! ## A136055.P13468962626839228169

`floor(A057427(A008619(n))+A136065(n+1)/13)`
-/

namespace A136055.P13468962626839228169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 (A008619 n).toNat : ℚ) + (A136065 (n + 1) : ℚ) / 13⌋

end

end A136055.P13468962626839228169

/-! ## A136055.P17606869753466050069

`floor(A001222(A151800(n))+A136065(n+1)/13)`
-/

namespace A136055.P17606869753466050069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (A151800 n).toNat : ℚ) + (A136065 (n + 1) : ℚ) / 13⌋

end

end A136055.P17606869753466050069

/-! ## A136055.P452984512661881964

`p?[lt[A000005(13*n+1), 3]+1]`
-/

namespace A136055.P452984512661881964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (13 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136055.P452984512661881964

/-! ## A136055.P15394146806184694920

`p?[(n+1)*A001222(13*n+1)]`
-/

namespace A136055.P15394146806184694920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (13 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136055.P15394146806184694920

/-! ## A136055.P3728947503510578836

`p?[(n+1)*A010051(13*n+1)]`
-/

namespace A136055.P3728947503510578836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (13 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136055.P3728947503510578836

/-! ## A136055.P3898783812495149476

`p?[2*(n+1)-A171435(A139608(n)-A020742(n))]`
-/

namespace A136055.P3898783812495149476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A171435 (A139608 n - A020742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136055.P3898783812495149476

/-! ## A136055.P2142333304987128074

`p?[(n+1)*A322813(13*n+1)]`
-/

namespace A136055.P2142333304987128074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322813 (13 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136055.P2142333304987128074

/-!
# A136056: Daughter primes of order 7.

The programs for A136056, the canonical program `A136056.P16665451693116353274` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136056 has offset 1).

The definition of A136056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136056.P16665451693116353274

`ceil(A136066(n+1)/15)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136056

/-- `ceil(A136066(n+1)/15)` -/
def P16665451693116353274.Spec : Prop :=
  ∀ n, P16665451693116353274.a n = A136056 (n + 1)

theorem P16665451693116353274.correct : P16665451693116353274.Spec := by
  intro n
  simp only [A136056, Nat.add_sub_cancel]

end A136056

/-! ## A136056.P6556012878283476723

`p?[ceil(A132230(n+1)/15)]`
-/

namespace A136056.P6556012878283476723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132230 (n + 1) : ℚ) / 15⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136056.P6556012878283476723

namespace A136056

/-- `p?[ceil(A132230(n+1)/15)]` -/
def P6556012878283476723.Spec : Prop :=
  ∀ n, P6556012878283476723.a n = A136056 (n + 1)

end A136056

/-! ## A136056.P13947649082656509256

`p?[2*A111175(n+1)+1]`
-/

namespace A136056.P13947649082656509256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111175 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136056.P13947649082656509256

namespace A136056

/-- `p?[2*A111175(n+1)+1]` -/
def P13947649082656509256.Spec : Prop :=
  ∀ n, P13947649082656509256.a n = A136056 (n + 1)

end A136056

/-! ## A136056.P15694128450766787670

`record[A020639(ceil(A132230(n+1)/15))]`
-/

namespace A136056.P15694128450766787670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(A132230 (n + 1) : ℚ) / 15⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136056.P15694128450766787670

namespace A136056

/-- `record[A020639(ceil(A132230(n+1)/15))]` -/
def P15694128450766787670.Spec : Prop :=
  ∀ n, P15694128450766787670.a n = A136056 (n + 1)

end A136056

/-! ## A136056.P10474367520608104558

`p?[lt[A000005(15*n+1), 3]+1]`
-/

namespace A136056.P10474367520608104558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (15 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136056.P10474367520608104558

namespace A136056

/-- `p?[lt[A000005(15*n+1), 3]+1]` -/
def P10474367520608104558.Spec : Prop :=
  ∀ n, (P10474367520608104558.a n : ℤ) = A136056 (n + 1)

end A136056

/-! ## A136056.P6302238195255478982

`p?[A001222(30*n+1)*Δ[n²]]`
-/

namespace A136056.P6302238195255478982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (30 * n + 1) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136056.P6302238195255478982

namespace A136056

/-- `p?[A001222(30*n+1)*Δ[n²]]` -/
def P6302238195255478982.Spec : Prop :=
  ∀ n, P6302238195255478982.a n = A136056 (n + 1)

end A136056

/-! ## A136056.P978037529815639052

`p?[(n+1)*(A000005(3*5*n+1)-1)]`
-/

namespace A136056.P978037529815639052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000005 (3 * (5 * n) + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136056.P978037529815639052

namespace A136056

/-- `p?[(n+1)*(A000005(3*5*n+1)-1)]` -/
def P978037529815639052.Spec : Prop :=
  ∀ n, P978037529815639052.a n = A136056 (n + 1)

end A136056

/-! ## A136056.P2013810094456691421

`p?[(2*n+1)*A007740(A091088(3*n))]`
-/

namespace A136056.P2013810094456691421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A007740 (A091088 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136056.P2013810094456691421

namespace A136056

/-- `p?[(2*n+1)*A007740(A091088(3*n))]` -/
def P2013810094456691421.Spec : Prop :=
  ∀ n, P2013810094456691421.a n = A136056 (n + 1)

end A136056

/-! ## A136056.P7470160963958998155

`p?[A010051(A128470(n))+A005843(n)]`
-/

namespace A136056.P7470160963958998155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A128470 n).toNat + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136056.P7470160963958998155

namespace A136056

/-- `p?[A010051(A128470(n))+A005843(n)]` -/
def P7470160963958998155.Spec : Prop :=
  ∀ n, P7470160963958998155.a n = A136056 (n + 1)

end A136056

/-! ## A136056.P15175674184353815086

`A287793(A136066(n+1))`
-/

namespace A136056.P15175674184353815086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287793 (A136066 (n + 1)).toNat

end

end A136056.P15175674184353815086

namespace A136056

/-- `A287793(A136066(n+1))` -/
def P15175674184353815086.Spec : Prop :=
  ∀ n, P15175674184353815086.a n = A136056 (n + 1)

end A136056

/-!
# A136057: Daughter primes of order 8.

The programs for A136057, there is no canonical definition to state claims against.
-/

/-! ## A136057.P10008440453897414631

`ceil(A136067(n+1)/17)`
-/

namespace A136057.P10008440453897414631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136067 (n + 1) : ℚ) / 17⌉

end

end A136057.P10008440453897414631

/-! ## A136057.P689128963495682257

`p?[A124127(n+1)+1]`
-/

namespace A136057.P689128963495682257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124127 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136057.P689128963495682257

/-! ## A136057.P1364515575513216582

`∩[A124127(n+1), A141515(n+1)]+1`
-/

namespace A136057.P1364515575513216582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136057.P1364515575513216582

/-! ## A136057.P1341692479736647475

`record[A006530(A124127(n+1)+1)]`
-/

namespace A136057.P1341692479736647475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124127 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136057.P1341692479736647475

/-! ## A136057.P13397554553948541937

`record[A020639(A124127(n+1)+1)]`
-/

namespace A136057.P13397554553948541937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124127 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136057.P13397554553948541937

/-! ## A136057.P891780097238524738

`A151800(∩[A124127(n+1), A141515(n+1)])`
-/

namespace A136057.P891780097238524738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A136057.P891780097238524738

/-! ## A136057.P9050942076692374765

`p?[A141310(A124127(n+1))]`
-/

namespace A136057.P9050942076692374765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A124127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136057.P9050942076692374765

/-! ## A136057.P9351976006806970684

`record[A014963(A124127(n+1)+1)]`
-/

namespace A136057.P9351976006806970684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124127 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136057.P9351976006806970684

/-!
# A136058: Daughter primes of order 9.

The programs for A136058, the canonical program `A136058.P2979785856532067478` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136058 has offset 1).

The definition of A136058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136058.P2979785856532067478

`ceil(A136068(n+1)/19)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136058

/-- `ceil(A136068(n+1)/19)` -/
def P2979785856532067478.Spec : Prop :=
  ∀ n, P2979785856532067478.a n = A136058 (n + 1)

theorem P2979785856532067478.correct : P2979785856532067478.Spec := by
  intro n
  simp only [A136058, Nat.add_sub_cancel]

end A136058

/-! ## A136058.P12182543417355773445

`p?[ceil(A141868(n+1)/19)]`
-/

namespace A136058.P12182543417355773445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141868 (n + 1) : ℚ) / 19⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136058.P12182543417355773445

namespace A136058

/-- `p?[ceil(A141868(n+1)/19)]` -/
def P12182543417355773445.Spec : Prop :=
  ∀ n, P12182543417355773445.a n = A136058 (n + 1)

end A136058

/-! ## A136058.P1959014673779183757

`∩[A008578(n+1), ceil(A141868(n+1)/19)]`
-/

namespace A136058.P1959014673779183757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141868 (n + 1) : ℚ) / 19⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136058.P1959014673779183757

namespace A136058

/-- `∩[A008578(n+1), ceil(A141868(n+1)/19)]` -/
def P1959014673779183757.Spec : Prop :=
  ∀ n, (P1959014673779183757.a n : ℤ) = A136058 (n + 1)

end A136058

/-! ## A136058.P5856410856670124299

`record[A020639(ceil(A141868(n+1)/19))]`
-/

namespace A136058.P5856410856670124299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(A141868 (n + 1) : ℚ) / 19⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136058.P5856410856670124299

namespace A136058

/-- `record[A020639(ceil(A141868(n+1)/19))]` -/
def P5856410856670124299.Spec : Prop :=
  ∀ n, P5856410856670124299.a n = A136058 (n + 1)

end A136058

/-! ## A136058.P16158933613076412334

`record[A014963(ceil(A141868(n+1)/19))]`
-/

namespace A136058.P16158933613076412334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌈(A141868 (n + 1) : ℚ) / 19⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136058.P16158933613076412334

namespace A136058

/-- `record[A014963(ceil(A141868(n+1)/19))]` -/
def P16158933613076412334.Spec : Prop :=
  ∀ n, P16158933613076412334.a n = A136058 (n + 1)

end A136058

/-! ## A136058.P729085437232738807

`p?[(n+1)*A001222(19*n+1)]`
-/

namespace A136058.P729085437232738807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (19 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136058.P729085437232738807

namespace A136058

/-- `p?[(n+1)*A001222(19*n+1)]` -/
def P729085437232738807.Spec : Prop :=
  ∀ n, P729085437232738807.a n = A136058 (n + 1)

end A136058

/-!
# A136059: Daughter primes of order 10.

The programs for A136059, the canonical program `A136059.P5455195698059956745` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136059 has offset 1).

The definition of A136059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136059.P5455195698059956745

`p?[A124198(n+1)+1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136059

/-- `p?[A124198(n+1)+1]` -/
def P5455195698059956745.Spec : Prop :=
  ∀ n, P5455195698059956745.a n = A136059 (n + 1)

theorem P5455195698059956745.correct : P5455195698059956745.Spec := by
  intro n
  simp only [A136059, Nat.add_sub_cancel]

end A136059

/-! ## A136059.P8144960212169444426

`record[A020639(A124198(n+1)+1)]`
-/

namespace A136059.P8144960212169444426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124198 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136059.P8144960212169444426

namespace A136059

/-- `record[A020639(A124198(n+1)+1)]` -/
def P8144960212169444426.Spec : Prop :=
  ∀ n, P8144960212169444426.a n = A136059 (n + 1)

end A136059

/-! ## A136059.P8252005043175700143

`∩[A000040(n+1), A124198(n+1)+1]`
-/

namespace A136059.P8252005043175700143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124198 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136059.P8252005043175700143

namespace A136059

/-- `∩[A000040(n+1), A124198(n+1)+1]` -/
def P8252005043175700143.Spec : Prop :=
  ∀ n, (P8252005043175700143.a n : ℤ) = A136059 (n + 1)

end A136059

/-! ## A136059.P2249983396245860537

`p?[A004442(A124198(n+1))]`
-/

namespace A136059.P2249983396245860537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A124198 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136059.P2249983396245860537

namespace A136059

/-- `p?[A004442(A124198(n+1))]` -/
def P2249983396245860537.Spec : Prop :=
  ∀ n, P2249983396245860537.a n = A136059 (n + 1)

end A136059

/-! ## A136059.P7870819982059976821

`p?[(n+1)*A001222(21*n+1)]`
-/

namespace A136059.P7870819982059976821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (21 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136059.P7870819982059976821

namespace A136059

/-- `p?[(n+1)*A001222(21*n+1)]` -/
def P7870819982059976821.Spec : Prop :=
  ∀ n, P7870819982059976821.a n = A136059 (n + 1)

end A136059

/-! ## A136059.P16408920197155600235

`p?[(n+1)*A010051(21*n+1)]`
-/

namespace A136059.P16408920197155600235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (21 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136059.P16408920197155600235

namespace A136059

/-- `p?[(n+1)*A010051(21*n+1)]` -/
def P16408920197155600235.Spec : Prop :=
  ∀ n, P16408920197155600235.a n = A136059 (n + 1)

end A136059

/-! ## A136059.P14186473158771848289

`p?[lt[A000005(20*n+n+1), 3]+1]`
-/

namespace A136059.P14186473158771848289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (20 * n + (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136059.P14186473158771848289

namespace A136059

/-- `p?[lt[A000005(20*n+n+1), 3]+1]` -/
def P14186473158771848289.Spec : Prop :=
  ∀ n, (P14186473158771848289.a n : ℤ) = A136059 (n + 1)

end A136059

/-! ## A136059.P3906561884867206461

`p?[(n+1)*A003056(A000005(21*n+1))]`
-/

namespace A136059.P3906561884867206461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003056 (A000005 (21 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136059.P3906561884867206461

namespace A136059

/-- `p?[(n+1)*A003056(A000005(21*n+1))]` -/
def P3906561884867206461.Spec : Prop :=
  ∀ n, P3906561884867206461.a n = A136059 (n + 1)

end A136059

/-! ## A136059.P10558338403823899906

`p?[(n+1)*A000005(A318326(21*n+1)+1)]`
-/

namespace A136059.P10558338403823899906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A318326 (21 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136059.P10558338403823899906

namespace A136059

/-- `p?[(n+1)*A000005(A318326(21*n+1)+1)]` -/
def P10558338403823899906.Spec : Prop :=
  ∀ n, P10558338403823899906.a n = A136059 (n + 1)

end A136059

/-! ## A136059.P10125063856360827393

`p?[(n+1)*A004874(A000005(3*7*n+1))]`
-/

namespace A136059.P10125063856360827393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004874 (A000005 (3 * (7 * n) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136059.P10125063856360827393

namespace A136059

/-- `p?[(n+1)*A004874(A000005(3*7*n+1))]` -/
def P10125063856360827393.Spec : Prop :=
  ∀ n, P10125063856360827393.a n = A136059 (n + 1)

end A136059

/-!
# A136060: Daughter primes of order 11.

The programs for A136060, the canonical program `A136060.P13008685728988054829` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136060 has offset 1).

The definition of A136060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136060.P13008685728988054829

`ceil(A136070(n+1)/23)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136060

/-- `ceil(A136070(n+1)/23)` -/
def P13008685728988054829.Spec : Prop :=
  ∀ n, P13008685728988054829.a n = A136060 (n + 1)

theorem P13008685728988054829.correct : P13008685728988054829.Spec := by
  intro n
  simp only [A136060, Nat.add_sub_cancel]

end A136060

/-! ## A136060.P1657701590558049648

`p?[A120344(n+1)+1]`
-/

namespace A136060.P1657701590558049648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120344 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136060.P1657701590558049648

namespace A136060

/-- `p?[A120344(n+1)+1]` -/
def P1657701590558049648.Spec : Prop :=
  ∀ n, P1657701590558049648.a n = A136060 (n + 1)

end A136060

/-! ## A136060.P4816389310141361286

`record[A006530(A120344(n+1)+1)]`
-/

namespace A136060.P4816389310141361286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A120344 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136060.P4816389310141361286

namespace A136060

/-- `record[A006530(A120344(n+1)+1)]` -/
def P4816389310141361286.Spec : Prop :=
  ∀ n, P4816389310141361286.a n = A136060 (n + 1)

end A136060

/-! ## A136060.P12094940742873180283

`record[A343226(A120344(n+1)+1)-1]`
-/

namespace A136060.P12094940742873180283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343226 (A120344 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136060.P12094940742873180283

namespace A136060

/-- `record[A343226(A120344(n+1)+1)-1]` -/
def P12094940742873180283.Spec : Prop :=
  ∀ n, P12094940742873180283.a n = A136060 (n + 1)

end A136060

/-! ## A136060.P12205026446317556068

`record[A166333(A120344(n+1))]`
-/

namespace A136060.P12205026446317556068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A120344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136060.P12205026446317556068

namespace A136060

/-- `record[A166333(A120344(n+1))]` -/
def P12205026446317556068.Spec : Prop :=
  ∀ n, P12205026446317556068.a n = A136060 (n + 1)

end A136060

/-! ## A136060.P88506430165689224

`record[A014963(A120344(n+1)+1)]`
-/

namespace A136060.P88506430165689224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A120344 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136060.P88506430165689224

namespace A136060

/-- `record[A014963(A120344(n+1)+1)]` -/
def P88506430165689224.Spec : Prop :=
  ∀ n, P88506430165689224.a n = A136060 (n + 1)

end A136060

/-!
# A136061: Primes p such that (p+4)/5 is also prime.

The programs for A136061, there is no canonical definition to state claims against.
-/

/-! ## A136061.P9175433449496800857

`5*A136051(n+1)-4`
-/

namespace A136061.P9175433449496800857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A136051 (n + 1) - 4

end

end A136061.P9175433449496800857

/-! ## A136061.P12138012432755532852

`A380069(n+1)/A136051(n+1)`
-/

namespace A136061.P12138012432755532852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380069 (n + 1) : ℚ) / (A136051 (n + 1) : ℚ)

end

end A136061.P12138012432755532852

/-! ## A136061.P12818617899539988929

`p?[A001750(n+2)-4]`
-/

namespace A136061.P12818617899539988929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P12818617899539988929

/-! ## A136061.P17626340280813105361

`p?[5*A006093(n+1)+1]`
-/

namespace A136061.P17626340280813105361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P17626340280813105361

/-! ## A136061.P12567937914167282977

`p?[5*A000040(n+1)-4]`
-/

namespace A136061.P12567937914167282977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000040 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P12567937914167282977

/-! ## A136061.P2169338052588768834

`p?[10*A005097(n+1)+1]`
-/

namespace A136061.P2169338052588768834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A005097 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P2169338052588768834

/-! ## A136061.P17347660882742537351

`p?[5*(A040976(n+2)+1)+1]`
-/

namespace A136061.P17347660882742537351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A040976 (n + 2) + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P17347660882742537351

/-! ## A136061.P14419716950405009220

`p?[10*(A175540(n+1)-n)+1]`
-/

namespace A136061.P14419716950405009220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A175540 (n + 1) - (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P14419716950405009220

/-! ## A136061.P11116559378204684106

`p?[A000040(n+2)+8*A102781(n+2)]`
-/

namespace A136061.P11116559378204684106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 8 * A102781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P11116559378204684106

/-! ## A136061.P4245849487300156044

`p?[5*record[A000010(n+1)]+1]`
-/

namespace A136061.P4245849487300156044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P4245849487300156044

/-! ## A136061.P1777711592450870491

`p?[5*(record[A006530(n+1)]-1)+1]`
-/

namespace A136061.P1777711592450870491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P1777711592450870491

/-! ## A136061.P15390891545668948111

`p?[5*A000010(A008578(n+1))+1]`
-/

namespace A136061.P15390891545668948111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000010 (A008578 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P15390891545668948111

/-! ## A136061.P1369268682592750087

`∩[A030430(n+1), A289250(n+1)]`
-/

namespace A136061.P1369268682592750087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136061.P1369268682592750087

/-! ## A136061.P16050594107422748986

`∩[A090756(n+1), A289250(n+1)]`
-/

namespace A136061.P16050594107422748986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136061.P16050594107422748986

/-! ## A136061.P4167977095061792239

`∩[A289250(n+1), A327752(n+1)]`
-/

namespace A136061.P4167977095061792239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136061.P4167977095061792239

/-! ## A136061.P14463282180009429669

`∩[A004615(n+1), A289250(n+1)]`
-/

namespace A136061.P14463282180009429669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136061.P14463282180009429669

/-! ## A136061.P12285887390644973814

`p?[5*record[p?[A351233(n)]-1]+1]`
-/

namespace A136061.P12285887390644973814
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P12285887390644973814

/-! ## A136061.P15552636219980534814

`∩[A289250(n+1), A331194(n+1)]`
-/

namespace A136061.P15552636219980534814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136061.P15552636219980534814

/-! ## A136061.P15595337345944642434

`∩[A289250(n+1), A017281(n)]`
-/

namespace A136061.P15595337345944642434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136061.P15595337345944642434

/-! ## A136061.P4235445244964965698

`p?[A019428(p?[A004273(n)])-2]`
-/

namespace A136061.P4235445244964965698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136061.P4235445244964965698

/-!
# A136062: Mother primes of order 3.

The programs for A136062, the canonical program `A136062.P5023584426008490619` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136062 has offset 1).

The definition of A136062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136062.P5023584426008490619

`p?[7*(p?[2*n+1]-1)+1]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A136062

/-- `p?[7*(p?[2*n+1]-1)+1]` -/
def P5023584426008490619.Spec : Prop :=
  ∀ n, P5023584426008490619.a n = A136062 (n + 1)

theorem P5023584426008490619.correct : P5023584426008490619.Spec := by
  intro n
  simp only [A136062, Nat.add_sub_cancel]

end A136062

/-! ## A136062.P13496757534505977675

`p?[7*A006093(n+1)+1]`
-/

namespace A136062.P13496757534505977675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P13496757534505977675

namespace A136062

/-- `p?[7*A006093(n+1)+1]` -/
def P13496757534505977675.Spec : Prop :=
  ∀ n, P13496757534505977675.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P13700867869554325648

`p?[7*A000040(n+1)-6]`
-/

namespace A136062.P13700867869554325648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000040 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P13700867869554325648

namespace A136062

/-- `p?[7*A000040(n+1)-6]` -/
def P13700867869554325648.Spec : Prop :=
  ∀ n, P13700867869554325648.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P14525248965017310093

`p?[7*(A014689(n+2)+1+n)+1]`
-/

namespace A136062.P14525248965017310093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A014689 (n + 2) + 1 + (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P14525248965017310093

namespace A136062

/-- `p?[7*(A014689(n+2)+1+n)+1]` -/
def P14525248965017310093.Spec : Prop :=
  ∀ n, P14525248965017310093.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P3587226794627285955

`p?[record[7*A000010(n+1)+1]]`
-/

namespace A136062.P3587226794627285955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P3587226794627285955

namespace A136062

/-- `p?[record[7*A000010(n+1)+1]]` -/
def P3587226794627285955.Spec : Prop :=
  ∀ n, P3587226794627285955.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P8648312943124037349

`p?[7*A000010(A008578(n+1))+1]`
-/

namespace A136062.P8648312943124037349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000010 (A008578 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P8648312943124037349

namespace A136062

/-- `p?[7*A000010(A008578(n+1))+1]` -/
def P8648312943124037349.Spec : Prop :=
  ∀ n, P8648312943124037349.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P10647931038744802010

`p?[7*eq[(n+1)%2, A001222(n+1)]+1]`
-/

namespace A136062.P10647931038744802010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136062.P10647931038744802010

namespace A136062

/-- `p?[7*eq[(n+1)%2, A001222(n+1)]+1]` -/
def P10647931038744802010.Spec : Prop :=
  ∀ n, (P10647931038744802010.a n : ℤ) = A136062 (n + 1)

end A136062

/-! ## A136062.P8671880017354090016

`p?[(7*n+1)*A001222(n+1)]`
-/

namespace A136062.P8671880017354090016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P8671880017354090016

namespace A136062

/-- `p?[(7*n+1)*A001222(n+1)]` -/
def P8671880017354090016.Spec : Prop :=
  ∀ n, P8671880017354090016.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P10761034180375830107

`p?[A063094(p?[2*n+1])]`
-/

namespace A136062.P10761034180375830107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063094 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P10761034180375830107

namespace A136062

/-- `p?[A063094(p?[2*n+1])]` -/
def P10761034180375830107.Spec : Prop :=
  ∀ n, P10761034180375830107.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P4282035194273714349

`p?[A113801(p?[2*n+1])]`
-/

namespace A136062.P4282035194273714349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P4282035194273714349

namespace A136062

/-- `p?[A113801(p?[2*n+1])]` -/
def P4282035194273714349.Spec : Prop :=
  ∀ n, P4282035194273714349.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P12853344490757865825

`p?[A061397(n+1)+6*n]`
-/

namespace A136062.P12853344490757865825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P12853344490757865825

namespace A136062

/-- `p?[A061397(n+1)+6*n]` -/
def P12853344490757865825.Spec : Prop :=
  ∀ n, P12853344490757865825.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P18220370896978609969

`p?[7*eq[3, A303822(n+1)]+1]`
-/

namespace A136062.P18220370896978609969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303822 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136062.P18220370896978609969

namespace A136062

/-- `p?[7*eq[3, A303822(n+1)]+1]` -/
def P18220370896978609969.Spec : Prop :=
  ∀ n, (P18220370896978609969.a n : ℤ) = A136062 (n + 1)

end A136062

/-! ## A136062.P13712644188732173457

`p?[7*lt[n, A093074(n+1)]+1]`
-/

namespace A136062.P13712644188732173457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136062.P13712644188732173457

namespace A136062

/-- `p?[7*lt[n, A093074(n+1)]+1]` -/
def P13712644188732173457.Spec : Prop :=
  ∀ n, (P13712644188732173457.a n : ℤ) = A136062 (n + 1)

end A136062

/-! ## A136062.P2962457866670914963

`A063094(A136052(n+1))`
-/

namespace A136062.P2962457866670914963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063094 (A136052 (n + 1)).toNat

end

end A136062.P2962457866670914963

namespace A136062

/-- `A063094(A136052(n+1))` -/
def P2962457866670914963.Spec : Prop :=
  ∀ n, P2962457866670914963.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P13278220148709204411

`p?[A063094(A000040(n+1))]`
-/

namespace A136062.P13278220148709204411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063094 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P13278220148709204411

namespace A136062

/-- `p?[A063094(A000040(n+1))]` -/
def P13278220148709204411.Spec : Prop :=
  ∀ n, P13278220148709204411.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P6891654011708187852

`p?[A113801(A000040(n+2))]`
-/

namespace A136062.P6891654011708187852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P6891654011708187852

namespace A136062

/-- `p?[A113801(A000040(n+2))]` -/
def P6891654011708187852.Spec : Prop :=
  ∀ n, P6891654011708187852.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P1268725817377968140

`p?[A016993(p?[A005408(n)]-1)]`
-/

namespace A136062.P1268725817377968140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P1268725817377968140

namespace A136062

/-- `p?[A016993(p?[A005408(n)]-1)]` -/
def P1268725817377968140.Spec : Prop :=
  ∀ n, P1268725817377968140.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P5879675499343751380

`p?[A016993(A000040(n+1)-1)]`
-/

namespace A136062.P5879675499343751380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P5879675499343751380

namespace A136062

/-- `p?[A016993(A000040(n+1)-1)]` -/
def P5879675499343751380.Spec : Prop :=
  ∀ n, P5879675499343751380.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P13522831146077910101

`p?[A113801(A006093(n+2)+1)]`
-/

namespace A136062.P13522831146077910101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A006093 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P13522831146077910101

namespace A136062

/-- `p?[A113801(A006093(n+2)+1)]` -/
def P13522831146077910101.Spec : Prop :=
  ∀ n, P13522831146077910101.a n = A136062 (n + 1)

end A136062

/-! ## A136062.P18189503840561621467

`p?[A017197(n+1)-A074828(n+2)]`
-/

namespace A136062.P18189503840561621467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 (n + 1) - A074828 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136062.P18189503840561621467

namespace A136062

/-- `p?[A017197(n+1)-A074828(n+2)]` -/
def P18189503840561621467.Spec : Prop :=
  ∀ n, P18189503840561621467.a n = A136062 (n + 1)

end A136062

/-!
# A136063: Mother primes of order 4.

The programs for A136063, the canonical program `A136063.P6007751385196214412` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136063 has offset 1).

The definition of A136063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136063.P6007751385196214412

`p?[9*A006093(n+1)+1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136063

/-- `p?[9*A006093(n+1)+1]` -/
def P6007751385196214412.Spec : Prop :=
  ∀ n, P6007751385196214412.a n = A136063 (n + 1)

theorem P6007751385196214412.correct : P6007751385196214412.Spec := by
  intro n
  simp only [A136063, Nat.add_sub_cancel]

end A136063

/-! ## A136063.P13361449626034026220

`p?[9*A000040(n+1)-8]`
-/

namespace A136063.P13361449626034026220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000040 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P13361449626034026220

namespace A136063

/-- `p?[9*A000040(n+1)-8]` -/
def P13361449626034026220.Spec : Prop :=
  ∀ n, P13361449626034026220.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P17785029750267573752

`p?[18*A005097(n+1)+1]`
-/

namespace A136063.P17785029750267573752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A005097 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P17785029750267573752

namespace A136063

/-- `p?[18*A005097(n+1)+1]` -/
def P17785029750267573752.Spec : Prop :=
  ∀ n, P17785029750267573752.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P12720951283882554550

`p?[9*A000010(A100484(n+2))+1]`
-/

namespace A136063.P12720951283882554550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000010 (A100484 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P12720951283882554550

namespace A136063

/-- `p?[9*A000010(A100484(n+2))+1]` -/
def P12720951283882554550.Spec : Prop :=
  ∀ n, P12720951283882554550.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P342664576958262159

`p?[9*A000010(lt[A001222(n+1), 2]+1)+1]`
-/

namespace A136063.P342664576958262159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000010 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P342664576958262159

namespace A136063

/-- `p?[9*A000010(lt[A001222(n+1), 2]+1)+1]` -/
def P342664576958262159.Spec : Prop :=
  ∀ n, P342664576958262159.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P827774931376831641

`p?[A161705(A006093(n+2)/2)]`
-/

namespace A136063.P827774931376831641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P827774931376831641

namespace A136063

/-- `p?[A161705(A006093(n+2)/2)]` -/
def P827774931376831641.Spec : Prop :=
  ∀ n, P827774931376831641.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P14138777575058478124

`p?[A118510(p?[2*n+1])]`
-/

namespace A136063.P14138777575058478124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P14138777575058478124

namespace A136063

/-- `p?[A118510(p?[2*n+1])]` -/
def P14138777575058478124.Spec : Prop :=
  ∀ n, P14138777575058478124.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P2981386622844817165

`p?[A146509(p?[2*n+1])]`
-/

namespace A136063.P2981386622844817165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P2981386622844817165

namespace A136063

/-- `p?[A146509(p?[2*n+1])]` -/
def P2981386622844817165.Spec : Prop :=
  ∀ n, P2981386622844817165.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P6510537511479886070

`record[p?[9*A014963(n+1)-8]]`
-/

namespace A136063.P6510537511479886070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A014963 (n + 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136063.P6510537511479886070

namespace A136063

/-- `record[p?[9*A014963(n+1)-8]]` -/
def P6510537511479886070.Spec : Prop :=
  ∀ n, P6510537511479886070.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P12282634276481977301

`A118510(A136053(n+1))`
-/

namespace A136063.P12282634276481977301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (A136053 (n + 1)).toNat

end

end A136063.P12282634276481977301

namespace A136063

/-- `A118510(A136053(n+1))` -/
def P12282634276481977301.Spec : Prop :=
  ∀ n, P12282634276481977301.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P892555224112243174

`p?[A118510(A000040(n+1))]`
-/

namespace A136063.P892555224112243174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P892555224112243174

namespace A136063

/-- `p?[A118510(A000040(n+1))]` -/
def P892555224112243174.Spec : Prop :=
  ∀ n, P892555224112243174.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P2002064474667259438

`p?[A146509(A000040(n+2))]`
-/

namespace A136063.P2002064474667259438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P2002064474667259438

namespace A136063

/-- `p?[A146509(A000040(n+2))]` -/
def P2002064474667259438.Spec : Prop :=
  ∀ n, P2002064474667259438.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P8615310278440230520

`p?[A017173(p?[A093178(n)]-1)]`
-/

namespace A136063.P8615310278440230520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P8615310278440230520

namespace A136063

/-- `p?[A017173(p?[A093178(n)]-1)]` -/
def P8615310278440230520.Spec : Prop :=
  ∀ n, P8615310278440230520.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P578948166337833382

`p?[A143988(A008578(n+1))-4]`
-/

namespace A136063.P578948166337833382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (A008578 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P578948166337833382

namespace A136063

/-- `p?[A143988(A008578(n+1))-4]` -/
def P578948166337833382.Spec : Prop :=
  ∀ n, P578948166337833382.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P10931400525121497943

`p?[A143988(A065091(n+1))-4]`
-/

namespace A136063.P10931400525121497943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (A065091 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P10931400525121497943

namespace A136063

/-- `p?[A143988(A065091(n+1))-4]` -/
def P10931400525121497943.Spec : Prop :=
  ∀ n, P10931400525121497943.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P2560087959794475206

`p?[9*A000010(A089026(n+1))+1]`
-/

namespace A136063.P2560087959794475206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000010 (A089026 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P2560087959794475206

namespace A136063

/-- `p?[9*A000010(A089026(n+1))+1]` -/
def P2560087959794475206.Spec : Prop :=
  ∀ n, P2560087959794475206.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P12547645474929314640

`p?[18*A246277(record[A000010(n+1)])+1]`
-/

namespace A136063.P12547645474929314640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A246277 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P12547645474929314640

namespace A136063

/-- `p?[18*A246277(record[A000010(n+1)])+1]` -/
def P12547645474929314640.Spec : Prop :=
  ∀ n, P12547645474929314640.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P5557615475786089110

`p?[A135628(A001414(2*n+1))-A144619(2*n+1)]`
-/

namespace A136063.P5557615475786089110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 (A001414 (2 * n + 1)).toNat - A144619 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P5557615475786089110

namespace A136063

/-- `p?[A135628(A001414(2*n+1))-A144619(2*n+1)]` -/
def P5557615475786089110.Spec : Prop :=
  ∀ n, P5557615475786089110.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P14067531408378347523

`p?[A019426(A016777(A006093(n+1)))]`
-/

namespace A136063.P14067531408378347523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A016777 (A006093 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P14067531408378347523

namespace A136063

/-- `p?[A019426(A016777(A006093(n+1)))]` -/
def P14067531408378347523.Spec : Prop :=
  ∀ n, P14067531408378347523.a n = A136063 (n + 1)

end A136063

/-! ## A136063.P12300335670219516794

`p?[A019426(A019426(A065091(n+1)))]`
-/

namespace A136063.P12300335670219516794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A019426 (A065091 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136063.P12300335670219516794

namespace A136063

/-- `p?[A019426(A019426(A065091(n+1)))]` -/
def P12300335670219516794.Spec : Prop :=
  ∀ n, P12300335670219516794.a n = A136063 (n + 1)

end A136063

/-!
# A136064: Mother primes of order 5.

The programs for A136064, the canonical program `A136064.P4369276691916224669` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136064 has offset 1).

The definition of A136064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136064.P4369276691916224669

`p?[11*A006093(n+1)+1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136064

/-- `p?[11*A006093(n+1)+1]` -/
def P4369276691916224669.Spec : Prop :=
  ∀ n, P4369276691916224669.a n = A136064 (n + 1)

theorem P4369276691916224669.correct : P4369276691916224669.Spec := by
  intro n
  simp only [A136064, Nat.add_sub_cancel]

end A136064

/-! ## A136064.P11336971348065883374

`p?[11*A000040(n+1)-10]`
-/

namespace A136064.P11336971348065883374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000040 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P11336971348065883374

namespace A136064

/-- `p?[11*A000040(n+1)-10]` -/
def P11336971348065883374.Spec : Prop :=
  ∀ n, P11336971348065883374.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P15752692974624974668

`p?[11*A065091(n+1)-10]`
-/

namespace A136064.P15752692974624974668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A065091 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P15752692974624974668

namespace A136064

/-- `p?[11*A065091(n+1)-10]` -/
def P15752692974624974668.Spec : Prop :=
  ∀ n, P15752692974624974668.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P7949767693920379174

`p?[A010051(n+1)+11*n]`
-/

namespace A136064.P7949767693920379174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (11 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P7949767693920379174

namespace A136064

/-- `p?[A010051(n+1)+11*n]` -/
def P7949767693920379174.Spec : Prop :=
  ∀ n, P7949767693920379174.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P7625055364838876917

`p?[11*record[A000010(n+1)]+1]`
-/

namespace A136064.P7625055364838876917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P7625055364838876917

namespace A136064

/-- `p?[11*record[A000010(n+1)]+1]` -/
def P7625055364838876917.Spec : Prop :=
  ∀ n, P7625055364838876917.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P8372896528775825060

`p?[11*(A014689(n+1)+n)+1]`
-/

namespace A136064.P8372896528775825060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (A014689 (n + 1) + (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P8372896528775825060

namespace A136064

/-- `p?[11*(A014689(n+1)+n)+1]` -/
def P8372896528775825060.Spec : Prop :=
  ∀ n, P8372896528775825060.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P15015778279502828354

`p?[11*eq[2, A000005(n+1)]+1]`
-/

namespace A136064.P15015778279502828354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136064.P15015778279502828354

namespace A136064

/-- `p?[11*eq[2, A000005(n+1)]+1]` -/
def P15015778279502828354.Spec : Prop :=
  ∀ n, (P15015778279502828354.a n : ℤ) = A136064 (n + 1)

end A136064

/-! ## A136064.P1047748314640150391

`p?[11*lt[n, A006530(n+1)]+1]`
-/

namespace A136064.P1047748314640150391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136064.P1047748314640150391

namespace A136064

/-- `p?[11*lt[n, A006530(n+1)]+1]` -/
def P1047748314640150391.Spec : Prop :=
  ∀ n, (P1047748314640150391.a n : ℤ) = A136064 (n + 1)

end A136064

/-! ## A136064.P6222750212131353070

`p?[A161709(A006093(n+2)/2)]`
-/

namespace A136064.P6222750212131353070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P6222750212131353070

namespace A136064

/-- `p?[A161709(A006093(n+2)/2)]` -/
def P6222750212131353070.Spec : Prop :=
  ∀ n, P6222750212131353070.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P16921599933715880618

`p?[A161709(A039915(n+2)/2)]`
-/

namespace A136064.P16921599933715880618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (SequenceMachineLib.roundAway ((A039915 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P16921599933715880618

namespace A136064

/-- `p?[A161709(A039915(n+2)/2)]` -/
def P16921599933715880618.Spec : Prop :=
  ∀ n, P16921599933715880618.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P11777794097896983106

`p?[A061397(n+1)+10*n]`
-/

namespace A136064.P11777794097896983106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P11777794097896983106

namespace A136064

/-- `p?[A061397(n+1)+10*n]` -/
def P11777794097896983106.Spec : Prop :=
  ∀ n, P11777794097896983106.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P1996237379526302580

`record[p?[11*A014963(n+1)-10]]`
-/

namespace A136064.P1996237379526302580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A014963 (n + 1) - 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136064.P1996237379526302580

namespace A136064

/-- `record[p?[11*A014963(n+1)-10]]` -/
def P1996237379526302580.Spec : Prop :=
  ∀ n, P1996237379526302580.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P13503309233189945112

`p?[A017401(p?[A004442(n)]-1)]`
-/

namespace A136064.P13503309233189945112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P13503309233189945112

namespace A136064

/-- `p?[A017401(p?[A004442(n)]-1)]` -/
def P13503309233189945112.Spec : Prop :=
  ∀ n, P13503309233189945112.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P10857167913340396978

`p?[A017401(p?[A005408(n)]-1)]`
-/

namespace A136064.P10857167913340396978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P10857167913340396978

namespace A136064

/-- `p?[A017401(p?[A005408(n)]-1)]` -/
def P10857167913340396978.Spec : Prop :=
  ∀ n, P10857167913340396978.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P3369247876889482007

`p?[A017401(p?[A093178(n)]-1)]`
-/

namespace A136064.P3369247876889482007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P3369247876889482007

namespace A136064

/-- `p?[A017401(p?[A093178(n)]-1)]` -/
def P3369247876889482007.Spec : Prop :=
  ∀ n, P3369247876889482007.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P14669087228988620182

`p?[A017401(p?[A141310(n)]-1)]`
-/

namespace A136064.P14669087228988620182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P14669087228988620182

namespace A136064

/-- `p?[A017401(p?[A141310(n)]-1)]` -/
def P14669087228988620182.Spec : Prop :=
  ∀ n, P14669087228988620182.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P4497996703518851955

`p?[A008593(A006093(n+1))+1]`
-/

namespace A136064.P4497996703518851955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A006093 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P4497996703518851955

namespace A136064

/-- `p?[A008593(A006093(n+1))+1]` -/
def P4497996703518851955.Spec : Prop :=
  ∀ n, P4497996703518851955.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P9211373728750061084

`p?[A017401(A053577(n+1)-1)]`
-/

namespace A136064.P9211373728750061084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (A053577 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P9211373728750061084

namespace A136064

/-- `p?[A017401(A053577(n+1)-1)]` -/
def P9211373728750061084.Spec : Prop :=
  ∀ n, P9211373728750061084.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P1039863672040838652

`p?[A017401(p?[A065187(n+1)]-1)]`
-/

namespace A136064.P1039863672040838652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065187 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P1039863672040838652

namespace A136064

/-- `p?[A017401(p?[A065187(n+1)]-1)]` -/
def P1039863672040838652.Spec : Prop :=
  ∀ n, P1039863672040838652.a n = A136064 (n + 1)

end A136064

/-! ## A136064.P3898455838748626649

`p?[(A001414(n+1)-n)*A017401(n)]`
-/

namespace A136064.P3898455838748626649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) - (n : ℤ)) * A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136064.P3898455838748626649

namespace A136064

/-- `p?[(A001414(n+1)-n)*A017401(n)]` -/
def P3898455838748626649.Spec : Prop :=
  ∀ n, P3898455838748626649.a n = A136064 (n + 1)

end A136064

/-!
# A136065: Mother primes of order 6.

The programs for A136065, there is no canonical definition to state claims against.
-/

/-! ## A136065.P14426901967882096804

`13*A136055(n+1)-12`
-/

namespace A136065.P14426901967882096804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A136055 (n + 1) - 12

end

end A136065.P14426901967882096804

/-! ## A136065.P17168264007394580664

`p?[13*A006093(n+1)+1]`
-/

namespace A136065.P17168264007394580664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P17168264007394580664

/-! ## A136065.P9912072027703203917

`p?[13*A000040(n+1)-12]`
-/

namespace A136065.P9912072027703203917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000040 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P9912072027703203917

/-! ## A136065.P3322083653144115344

`p?[A010051(n+1)+13*n]`
-/

namespace A136065.P3322083653144115344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (13 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P3322083653144115344

/-! ## A136065.P12127948308107398755

`p?[13*record[A000010(n+1)]+1]`
-/

namespace A136065.P12127948308107398755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P12127948308107398755

/-! ## A136065.P4819414035778845995

`p?[13*(A014689(n+2)+1+n)+1]`
-/

namespace A136065.P4819414035778845995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (A014689 (n + 2) + 1 + (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P4819414035778845995

/-! ## A136065.P17707174444084292973

`p?[A111333(n+1)+A008607(A102781(n+1))]`
-/

namespace A136065.P17707174444084292973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A008607 (A102781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P17707174444084292973

/-! ## A136065.P11645497046982787858

`p?[A061397(n+1)+12*n]`
-/

namespace A136065.P11645497046982787858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + (12 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P11645497046982787858

/-! ## A136065.P5621936648288829472

`p?[13*eq[3, A303822(n+1)]+1]`
-/

namespace A136065.P5621936648288829472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303822 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136065.P5621936648288829472

/-! ## A136065.P6740017877850792036

`p?[13*lt[n, A093074(n+1)]+1]`
-/

namespace A136065.P6740017877850792036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136065.P6740017877850792036

/-! ## A136065.P10685164587701505281

`p?[A190991(p?[A116966(n)]-1)]`
-/

namespace A136065.P10685164587701505281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P10685164587701505281

/-! ## A136065.P16878523374653405782

`p?[(A001414(n+1)-n)*A190991(n)]`
-/

namespace A136065.P16878523374653405782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) - (n : ℤ)) * A190991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P16878523374653405782

/-! ## A136065.P14253592545426060931

`p?[(A008472(n+1)-n)*A190991(n)]`
-/

namespace A136065.P14253592545426060931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) - (n : ℤ)) * A190991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P14253592545426060931

/-! ## A136065.P4659167837798656593

`p?[A190991(A000010(A001747(n+1)))]`
-/

namespace A136065.P4659167837798656593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A000010 (A001747 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P4659167837798656593

/-! ## A136065.P13519317588856861119

`p?[A175886(A033945(n+1))]`
-/

namespace A136065.P13519317588856861119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (A033945 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P13519317588856861119

/-! ## A136065.P17185505870594576723

`p?[A190991(p?[A006370(n)]-1)]`
-/

namespace A136065.P17185505870594576723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P17185505870594576723

/-! ## A136065.P2227798759258010186

`p?[A175886(A004273(A005180(n+1)))]`
-/

namespace A136065.P2227798759258010186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (A004273 (A005180 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P2227798759258010186

/-! ## A136065.P4800739384918101788

`p?[A175886(A005408(A006093(n+1)))]`
-/

namespace A136065.P4800739384918101788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (A005408 (A006093 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P4800739384918101788

/-! ## A136065.P14177662659287079722

`p?[A175886(A004273(A008578(n+1)))]`
-/

namespace A136065.P14177662659287079722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (A004273 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136065.P14177662659287079722

/-!
# A136066: Mother primes of order 7.

The programs for A136066, the canonical program `A136066.P1749446073161886874` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136066 has offset 1).

The definition of A136066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136066.P1749446073161886874

`p?[15*A000040(n+1)-14]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136066

/-- `p?[15*A000040(n+1)-14]` -/
def P1749446073161886874.Spec : Prop :=
  ∀ n, P1749446073161886874.a n = A136066 (n + 1)

theorem P1749446073161886874.correct : P1749446073161886874.Spec := by
  intro n
  simp only [A136066, Nat.add_sub_cancel]

end A136066

/-! ## A136066.P5278385206053699185

`p?[record[15*A000010(n+1)+1]]`
-/

namespace A136066.P5278385206053699185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P5278385206053699185

namespace A136066

/-- `p?[record[15*A000010(n+1)+1]]` -/
def P5278385206053699185.Spec : Prop :=
  ∀ n, P5278385206053699185.a n = A136066 (n + 1)

end A136066

/-! ## A136066.P3890145851302353662

`p?[A010051(2*n+1)*A128470(n)]`
-/

namespace A136066.P3890145851302353662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) * A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P3890145851302353662

namespace A136066

/-- `p?[A010051(2*n+1)*A128470(n)]` -/
def P3890145851302353662.Spec : Prop :=
  ∀ n, P3890145851302353662.a n = A136066 (n + 1)

end A136066

/-! ## A136066.P7586643752829228840

`p?[15*(record[p?[A293217(n+1)]]-1)+1]`
-/

namespace A136066.P7586643752829228840
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P7586643752829228840

namespace A136066

/-- `p?[15*(record[p?[A293217(n+1)]]-1)+1]` -/
def P7586643752829228840.Spec : Prop :=
  ∀ n, P7586643752829228840.a n = A136066 (n + 1)

end A136066

/-! ## A136066.P15866184777613970595

`p?[A001222(2*n+1)*A128470(n)]`
-/

namespace A136066.P15866184777613970595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) * A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P15866184777613970595

namespace A136066

/-- `p?[A001222(2*n+1)*A128470(n)]` -/
def P15866184777613970595.Spec : Prop :=
  ∀ n, P15866184777613970595.a n = A136066 (n + 1)

end A136066

/-! ## A136066.P16935567254009622624

`p?[A063118(p?[2*n+1])]`
-/

namespace A136066.P16935567254009622624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P16935567254009622624

namespace A136066

/-- `p?[A063118(p?[2*n+1])]` -/
def P16935567254009622624.Spec : Prop :=
  ∀ n, P16935567254009622624.a n = A136066 (n + 1)

end A136066

/-! ## A136066.P10023758570030267649

`p?[15*lt[n, A014963(n+1)]+1]`
-/

namespace A136066.P10023758570030267649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136066.P10023758570030267649

namespace A136066

/-- `p?[15*lt[n, A014963(n+1)]+1]` -/
def P10023758570030267649.Spec : Prop :=
  ∀ n, (P10023758570030267649.a n : ℤ) = A136066 (n + 1)

end A136066

/-! ## A136066.P11963069493846461014

`A063118(A136056(n+1))`
-/

namespace A136066.P11963069493846461014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (A136056 (n + 1)).toNat

end

end A136066.P11963069493846461014

namespace A136066

/-- `A063118(A136056(n+1))` -/
def P11963069493846461014.Spec : Prop :=
  ∀ n, P11963069493846461014.a n = A136066 (n + 1)

end A136066

/-! ## A136066.P14785853526312107844

`p?[A063118(A000040(n+2))]`
-/

namespace A136066.P14785853526312107844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P14785853526312107844

namespace A136066

/-- `p?[A063118(A000040(n+2))]` -/
def P14785853526312107844.Spec : Prop :=
  ∀ n, P14785853526312107844.a n = A136066 (n + 1)

end A136066

/-! ## A136066.P698074611159819733

`p?[A135628(n)+A061397(2*n+1)]`
-/

namespace A136066.P698074611159819733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 n + A061397 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P698074611159819733

namespace A136066

/-- `p?[A135628(n)+A061397(2*n+1)]` -/
def P698074611159819733.Spec : Prop :=
  ∀ n, P698074611159819733.a n = A136066 (n + 1)

end A136066

/-! ## A136066.P17291175812307800566

`p?[A016885(2*n)+A016885(A061397(n+2))]`
-/

namespace A136066.P17291175812307800566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n) + A016885 (A061397 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P17291175812307800566

namespace A136066

/-- `p?[A016885(2*n)+A016885(A061397(n+2))]` -/
def P17291175812307800566.Spec : Prop :=
  ∀ n, P17291175812307800566.a n = A136066 (n + 1)

end A136066

/-! ## A136066.P5690647405888507833

`p?[A032741(2*n+1)*A267747(2*(n+1))]`
-/

namespace A136066.P5690647405888507833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n + 1) * A267747 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136066.P5690647405888507833

namespace A136066

/-- `p?[A032741(2*n+1)*A267747(2*(n+1))]` -/
def P5690647405888507833.Spec : Prop :=
  ∀ n, P5690647405888507833.a n = A136066 (n + 1)

end A136066

/-!
# A136067: Mother primes of order 8.

The programs for A136067, there is no canonical definition to state claims against.
-/

/-! ## A136067.P3080331295072967082

`17*A136057(n+1)-16`
-/

namespace A136067.P3080331295072967082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A136057 (n + 1) - 16

end

end A136067.P3080331295072967082

/-! ## A136067.P13959527667621882178

`p?[17*A006093(n+1)+1]`
-/

namespace A136067.P13959527667621882178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136067.P13959527667621882178

/-! ## A136067.P4042117260123464005

`p?[17*A039915(n+1)+1]`
-/

namespace A136067.P4042117260123464005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A039915 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136067.P4042117260123464005

/-! ## A136067.P6187551275943447923

`p?[17*A141515(n+1)+1]`
-/

namespace A136067.P6187551275943447923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A141515 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136067.P6187551275943447923

/-! ## A136067.P15919083436522517950

`p?[17*A000040(n+1)-16]`
-/

namespace A136067.P15919083436522517950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000040 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136067.P15919083436522517950

/-! ## A136067.P17821097660195891599

`p?[A010051(n+1)+17*n]`
-/

namespace A136067.P17821097660195891599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (17 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136067.P17821097660195891599

/-! ## A136067.P6032646266424645294

`p?[17*record[A000010(n+1)]+1]`
-/

namespace A136067.P6032646266424645294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136067.P6032646266424645294

/-! ## A136067.P10726307331352074101

`p?[17*A000010(A008578(n+1))+1]`
-/

namespace A136067.P10726307331352074101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000010 (A008578 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136067.P10726307331352074101

/-! ## A136067.P17748879782057258588

`p?[17*∑[A251621(n+1)]+1]`
-/

namespace A136067.P17748879782057258588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251621 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136067.P17748879782057258588

/-! ## A136067.P2665454425229784770

`p?[A151978(A001747(n+1))]`
-/

namespace A136067.P2665454425229784770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (A001747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136067.P2665454425229784770

/-!
# A136068: Mother primes of order 9.

The programs for A136068, the canonical program `A136068.P14960565714948340303` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136068 has offset 1).

The definition of A136068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136068.P14960565714948340303

`p?[19*A006093(n+1)+1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136068

/-- `p?[19*A006093(n+1)+1]` -/
def P14960565714948340303.Spec : Prop :=
  ∀ n, P14960565714948340303.a n = A136068 (n + 1)

theorem P14960565714948340303.correct : P14960565714948340303.Spec := by
  intro n
  simp only [A136068, Nat.add_sub_cancel]

end A136068

/-! ## A136068.P17383091902759340253

`p?[A010051(n+1)+19*n]`
-/

namespace A136068.P17383091902759340253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (19 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P17383091902759340253

namespace A136068

/-- `p?[A010051(n+1)+19*n]` -/
def P17383091902759340253.Spec : Prop :=
  ∀ n, P17383091902759340253.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P17190664517943090908

`p?[19*(A000040(n+1)-1)+1]`
-/

namespace A136068.P17190664517943090908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * (A000040 (n + 1) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P17190664517943090908

namespace A136068

/-- `p?[19*(A000040(n+1)-1)+1]` -/
def P17190664517943090908.Spec : Prop :=
  ∀ n, P17190664517943090908.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P12226362434838438997

`p?[2*19*A005097(n+1)+1]`
-/

namespace A136068.P12226362434838438997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (19 * A005097 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P12226362434838438997

namespace A136068

/-- `p?[2*19*A005097(n+1)+1]` -/
def P12226362434838438997.Spec : Prop :=
  ∀ n, P12226362434838438997.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P17443608858943351762

`p?[A080339(n+1)+19*n]`
-/

namespace A136068.P17443608858943351762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1) + (19 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P17443608858943351762

namespace A136068

/-- `p?[A080339(n+1)+19*n]` -/
def P17443608858943351762.Spec : Prop :=
  ∀ n, P17443608858943351762.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P3288583548070686084

`p?[1-38*(A120112(2*n)+n)]`
-/

namespace A136068.P3288583548070686084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 38 * (A120112 (2 * n) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P3288583548070686084

namespace A136068

/-- `p?[1-38*(A120112(2*n)+n)]` -/
def P3288583548070686084.Spec : Prop :=
  ∀ n, P3288583548070686084.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P245304728850969728

`p?[(A001414(n+1)-n)*A215144(n)]`
-/

namespace A136068.P245304728850969728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) - (n : ℤ)) * A215144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P245304728850969728

namespace A136068

/-- `p?[(A001414(n+1)-n)*A215144(n)]` -/
def P245304728850969728.Spec : Prop :=
  ∀ n, P245304728850969728.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P14692109918292912107

`p?[A048671(A048671(n+1)+1)+19*n]`
-/

namespace A136068.P14692109918292912107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A048671 (n + 1) + 1).toNat + (19 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P14692109918292912107

namespace A136068

/-- `p?[A048671(A048671(n+1)+1)+19*n]` -/
def P14692109918292912107.Spec : Prop :=
  ∀ n, P14692109918292912107.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P18327148386996750635

`p?[A215144(n+1)-A051953(A051953(n+2))]`
-/

namespace A136068.P18327148386996750635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 (n + 1) - A051953 (A051953 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P18327148386996750635

namespace A136068

/-- `p?[A215144(n+1)-A051953(A051953(n+2))]` -/
def P18327148386996750635.Spec : Prop :=
  ∀ n, P18327148386996750635.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P2946303849226719523

`p?[19*record[A192133(A319347(n+2)+1)]+1]`
-/

namespace A136068.P2946303849226719523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192133 (A319347 (n + 2) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P2946303849226719523

namespace A136068

/-- `p?[19*record[A192133(A319347(n+2)+1)]+1]` -/
def P2946303849226719523.Spec : Prop :=
  ∀ n, P2946303849226719523.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P4462195831075830644

`p?[A001222(2*n+1)*A215144(2*n)]`
-/

namespace A136068.P4462195831075830644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) * A215144 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P4462195831075830644

namespace A136068

/-- `p?[A001222(2*n+1)*A215144(2*n)]` -/
def P4462195831075830644.Spec : Prop :=
  ∀ n, P4462195831075830644.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P4290264912968013628

`p?[(19*n+1)*A001222(n+1)]`
-/

namespace A136068.P4290264912968013628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P4290264912968013628

namespace A136068

/-- `p?[(19*n+1)*A001222(n+1)]` -/
def P4290264912968013628.Spec : Prop :=
  ∀ n, P4290264912968013628.a n = A136068 (n + 1)

end A136068

/-! ## A136068.P13222595725507630897

`p?[A151979(2*p?[A005100(n+1)])]`
-/

namespace A136068.P13222595725507630897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151979 (2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136068.P13222595725507630897

namespace A136068

/-- `p?[A151979(2*p?[A005100(n+1)])]` -/
def P13222595725507630897.Spec : Prop :=
  ∀ n, P13222595725507630897.a n = A136068 (n + 1)

end A136068

/-!
# A136069: Mother primes of order 10.

The programs for A136069, the canonical program `A136069.P239198590526988614` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136069 has offset 1).

The definition of A136069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1635 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136069.P239198590526988614

`p?[21*A006093(n+1)+1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136069

/-- `p?[21*A006093(n+1)+1]` -/
def P239198590526988614.Spec : Prop :=
  ∀ n, P239198590526988614.a n = A136069 (n + 1)

theorem P239198590526988614.correct : P239198590526988614.Spec := by
  intro n
  simp only [A136069, Nat.add_sub_cancel]

end A136069

/-! ## A136069.P5984816453682998265

`p?[21*A000040(n+1)-20]`
-/

namespace A136069.P5984816453682998265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A000040 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P5984816453682998265

namespace A136069

/-- `p?[21*A000040(n+1)-20]` -/
def P5984816453682998265.Spec : Prop :=
  ∀ n, P5984816453682998265.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P10058998018093215199

`p?[42*A005097(n+1)+1]`
-/

namespace A136069.P10058998018093215199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A005097 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P10058998018093215199

namespace A136069

/-- `p?[42*A005097(n+1)+1]` -/
def P10058998018093215199.Spec : Prop :=
  ∀ n, P10058998018093215199.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P1210623293390997184

`p?[A010051(n+1)+21*n]`
-/

namespace A136069.P1210623293390997184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (21 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P1210623293390997184

namespace A136069

/-- `p?[A010051(n+1)+21*n]` -/
def P1210623293390997184.Spec : Prop :=
  ∀ n, P1210623293390997184.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P5658144372672813762

`p?[record[21*A000010(n+1)+1]]`
-/

namespace A136069.P5658144372672813762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P5658144372672813762

namespace A136069

/-- `p?[record[21*A000010(n+1)+1]]` -/
def P5658144372672813762.Spec : Prop :=
  ∀ n, P5658144372672813762.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P3168729500614077820

`p?[21*eq[1, A001222(n+1)]+1]`
-/

namespace A136069.P3168729500614077820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136069.P3168729500614077820

namespace A136069

/-- `p?[21*eq[1, A001222(n+1)]+1]` -/
def P3168729500614077820.Spec : Prop :=
  ∀ n, (P3168729500614077820.a n : ℤ) = A136069 (n + 1)

end A136069

/-! ## A136069.P17298037146470466157

`p?[7*3*(A040976(n+1)+1)+1]`
-/

namespace A136069.P17298037146470466157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (3 * (A040976 (n + 1) + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P17298037146470466157

namespace A136069

/-- `p?[7*3*(A040976(n+1)+1)+1]` -/
def P17298037146470466157.Spec : Prop :=
  ∀ n, P17298037146470466157.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P16259709656667856734

`p?[A146507(p?[2*n+1])]`
-/

namespace A136069.P16259709656667856734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146507 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P16259709656667856734

namespace A136069

/-- `p?[A146507(p?[2*n+1])]` -/
def P16259709656667856734.Spec : Prop :=
  ∀ n, P16259709656667856734.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P18400416152847224965

`A146507(A136059(n+1))`
-/

namespace A136069.P18400416152847224965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146507 (A136059 (n + 1)).toNat

end

end A136069.P18400416152847224965

namespace A136069

/-- `A146507(A136059(n+1))` -/
def P18400416152847224965.Spec : Prop :=
  ∀ n, P18400416152847224965.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P15697318225281666263

`p?[A146507(A000040(n+2))]`
-/

namespace A136069.P15697318225281666263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146507 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P15697318225281666263

namespace A136069

/-- `p?[A146507(A000040(n+2))]` -/
def P15697318225281666263.Spec : Prop :=
  ∀ n, P15697318225281666263.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P6256445775973734720

`p?[A215146(p?[A093178(n)]-1)]`
-/

namespace A136069.P6256445775973734720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P6256445775973734720

namespace A136069

/-- `p?[A215146(p?[A093178(n)]-1)]` -/
def P6256445775973734720.Spec : Prop :=
  ∀ n, P6256445775973734720.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P7296765061186366232

`p?[A215146(p?[A195140(n)]-1)]`
-/

namespace A136069.P7296765061186366232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P7296765061186366232

namespace A136069

/-- `p?[A215146(p?[A195140(n)]-1)]` -/
def P7296765061186366232.Spec : Prop :=
  ∀ n, P7296765061186366232.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P18098545917685036765

`p?[A215146(A000040(n+1)-1)]`
-/

namespace A136069.P18098545917685036765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P18098545917685036765

namespace A136069

/-- `p?[A215146(A000040(n+1)-1)]` -/
def P18098545917685036765.Spec : Prop :=
  ∀ n, P18098545917685036765.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P12909872507383574150

`p?[A215146(A008864(n+1)-2)]`
-/

namespace A136069.P12909872507383574150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (A008864 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P12909872507383574150

namespace A136069

/-- `p?[A215146(A008864(n+1)-2)]` -/
def P12909872507383574150.Spec : Prop :=
  ∀ n, P12909872507383574150.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P12475521535096483678

`p?[A258016(A008578(n+1))-18]`
-/

namespace A136069.P12475521535096483678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (A008578 (n + 1)).toNat - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P12475521535096483678

namespace A136069

/-- `p?[A258016(A008578(n+1))-18]` -/
def P12475521535096483678.Spec : Prop :=
  ∀ n, P12475521535096483678.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P13939538359906511454

`p?[A013632(A013632(n))+21*n]`
-/

namespace A136069.P13939538359906511454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A013632 n).toNat + (21 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P13939538359906511454

namespace A136069

/-- `p?[A013632(A013632(n))+21*n]` -/
def P13939538359906511454.Spec : Prop :=
  ∀ n, P13939538359906511454.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P13209652262365805364

`p?[(A001414(n+1)-n)*A215146(n)]`
-/

namespace A136069.P13209652262365805364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) - (n : ℤ)) * A215146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P13209652262365805364

namespace A136069

/-- `p?[(A001414(n+1)-n)*A215146(n)]` -/
def P13209652262365805364.Spec : Prop :=
  ∀ n, P13209652262365805364.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P7172229301165687594

`p?[(A284260(n+1)-n)*A215146(n)]`
-/

namespace A136069.P7172229301165687594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284260 (n + 1) - (n : ℤ)) * A215146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P7172229301165687594

namespace A136069

/-- `p?[(A284260(n+1)-n)*A215146(n)]` -/
def P7172229301165687594.Spec : Prop :=
  ∀ n, P7172229301165687594.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P13982626712420970348

`p?[A161709(A039915(n+1))-A039915(n+1)]`
-/

namespace A136069.P13982626712420970348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (A039915 (n + 1)).toNat - A039915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P13982626712420970348

namespace A136069

/-- `p?[A161709(A039915(n+1))-A039915(n+1)]` -/
def P13982626712420970348.Spec : Prop :=
  ∀ n, P13982626712420970348.a n = A136069 (n + 1)

end A136069

/-! ## A136069.P17753243944433042818

`p?[A215146(p?[A001281(n)]-1)]`
-/

namespace A136069.P17753243944433042818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136069.P17753243944433042818

namespace A136069

/-- `p?[A215146(p?[A001281(n)]-1)]` -/
def P17753243944433042818.Spec : Prop :=
  ∀ n, P17753243944433042818.a n = A136069 (n + 1)

end A136069

/-!
# A136070: Mother primes of order 11.

The programs for A136070, the canonical program `A136070.P4483853176803871753` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136070 has offset 1).

The definition of A136070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 553 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136070.P4483853176803871753

`p?[23*A006093(n+1)+1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136070

/-- `p?[23*A006093(n+1)+1]` -/
def P4483853176803871753.Spec : Prop :=
  ∀ n, P4483853176803871753.a n = A136070 (n + 1)

theorem P4483853176803871753.correct : P4483853176803871753.Spec := by
  intro n
  simp only [A136070, Nat.add_sub_cancel]

end A136070

/-! ## A136070.P2159332807311711653

`p?[23*(A000040(n+1)-1)+1]`
-/

namespace A136070.P2159332807311711653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (A000040 (n + 1) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P2159332807311711653

namespace A136070

/-- `p?[23*(A000040(n+1)-1)+1]` -/
def P2159332807311711653.Spec : Prop :=
  ∀ n, P2159332807311711653.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P6544188257094684686

`p?[23*lt[n-1, A000010(n+1)]+1]`
-/

namespace A136070.P6544188257094684686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136070.P6544188257094684686

namespace A136070

/-- `p?[23*lt[n-1, A000010(n+1)]+1]` -/
def P6544188257094684686.Spec : Prop :=
  ∀ n, (P6544188257094684686.a n : ℤ) = A136070 (n + 1)

end A136070

/-! ## A136070.P11525908307347199182

`p?[23*lt[n-1, A039649(n+1)]+1]`
-/

namespace A136070.P11525908307347199182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136070.P11525908307347199182

namespace A136070

/-- `p?[23*lt[n-1, A039649(n+1)]+1]` -/
def P11525908307347199182.Spec : Prop :=
  ∀ n, (P11525908307347199182.a n : ℤ) = A136070 (n + 1)

end A136070

/-! ## A136070.P6014789080330626005

`p?[A215148(A006093(n+1))]`
-/

namespace A136070.P6014789080330626005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P6014789080330626005

namespace A136070

/-- `p?[A215148(A006093(n+1))]` -/
def P6014789080330626005.Spec : Prop :=
  ∀ n, P6014789080330626005.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P3182820691184370541

`p?[A215148(A039915(n+1))]`
-/

namespace A136070.P3182820691184370541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (A039915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P3182820691184370541

namespace A136070

/-- `p?[A215148(A039915(n+1))]` -/
def P3182820691184370541.Spec : Prop :=
  ∀ n, P3182820691184370541.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P9791859013618336276

`p?[A215148(A068499(n+1))]`
-/

namespace A136070.P9791859013618336276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (A068499 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P9791859013618336276

namespace A136070

/-- `p?[A215148(A068499(n+1))]` -/
def P9791859013618336276.Spec : Prop :=
  ∀ n, P9791859013618336276.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P9557048973242106844

`p?[A215148(A000040(n+1)-1)]`
-/

namespace A136070.P9557048973242106844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P9557048973242106844

namespace A136070

/-- `p?[A215148(A000040(n+1)-1)]` -/
def P9557048973242106844.Spec : Prop :=
  ∀ n, P9557048973242106844.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P730465041095744363

`p?[A215148(A065091(n+1)-1)]`
-/

namespace A136070.P730465041095744363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (A065091 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P730465041095744363

namespace A136070

/-- `p?[A215148(A065091(n+1)-1)]` -/
def P730465041095744363.Spec : Prop :=
  ∀ n, P730465041095744363.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P10280092681267369281

`p?[A215148(xor(1, A065091(n+1)))]`
-/

namespace A136070.P10280092681267369281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (Int.xor 1 (A065091 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P10280092681267369281

namespace A136070

/-- `p?[A215148(xor(1, A065091(n+1)))]` -/
def P10280092681267369281.Spec : Prop :=
  ∀ n, P10280092681267369281.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P11732328009040333628

`p?[A215148(A014689(n+1)+n)]`
-/

namespace A136070.P11732328009040333628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (A014689 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P11732328009040333628

namespace A136070

/-- `p?[A215148(A014689(n+1)+n)]` -/
def P11732328009040333628.Spec : Prop :=
  ∀ n, P11732328009040333628.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P3837351636466970564

`p?[A010051(n+1)*A103214(n)-n]`
-/

namespace A136070.P3837351636466970564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A103214 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P3837351636466970564

namespace A136070

/-- `p?[A010051(n+1)*A103214(n)-n]` -/
def P3837351636466970564.Spec : Prop :=
  ∀ n, P3837351636466970564.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P11834112698082804482

`p?[(A001414(n+1)-n)*A215148(n)]`
-/

namespace A136070.P11834112698082804482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) - (n : ℤ)) * A215148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P11834112698082804482

namespace A136070

/-- `p?[(A001414(n+1)-n)*A215148(n)]` -/
def P11834112698082804482.Spec : Prop :=
  ∀ n, P11834112698082804482.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P11296036290663694011

`p?[(A008472(n+1)-n)*A215148(n)]`
-/

namespace A136070.P11296036290663694011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) - (n : ℤ)) * A215148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P11296036290663694011

namespace A136070

/-- `p?[(A008472(n+1)-n)*A215148(n)]` -/
def P11296036290663694011.Spec : Prop :=
  ∀ n, P11296036290663694011.a n = A136070 (n + 1)

end A136070

/-! ## A136070.P7155012896680753883

`p?[A113646(n+2)+A017509(2*n+1)]`
-/

namespace A136070.P7155012896680753883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (n + 2) + A017509 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136070.P7155012896680753883

namespace A136070

/-- `p?[A113646(n+2)+A017509(2*n+1)]` -/
def P7155012896680753883.Spec : Prop :=
  ∀ n, P7155012896680753883.a n = A136070 (n + 1)

end A136070

/-!
# A136071: Primes of the form 5*p + 4 with p prime.

The programs for A136071, the canonical program `A136071.P16113164721399552730` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136071 has offset 1).

The definition of A136071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136071.P16113164721399552730

`5*A023218(n+1)+4`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136071

/-- `5*A023218(n+1)+4` -/
def P16113164721399552730.Spec : Prop :=
  ∀ n, P16113164721399552730.a n = A136071 (n + 1)

theorem P16113164721399552730.correct : P16113164721399552730.Spec := by
  intro n
  simp only [A136071, Nat.add_sub_cancel]

end A136071

/-! ## A136071.P14223238594446787334

`∩[A030433(n+1), A168446(n+1)]`
-/

namespace A136071.P14223238594446787334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136071.P14223238594446787334

namespace A136071

/-- `∩[A030433(n+1), A168446(n+1)]` -/
def P14223238594446787334.Spec : Prop :=
  ∀ n, (P14223238594446787334.a n : ℤ) = A136071 (n + 1)

end A136071

/-! ## A136071.P2337475156721730598

`p?[A001750(n+2)+4]`
-/

namespace A136071.P2337475156721730598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136071.P2337475156721730598

namespace A136071

/-- `p?[A001750(n+2)+4]` -/
def P2337475156721730598.Spec : Prop :=
  ∀ n, P2337475156721730598.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P10468624367003541108

`p?[5*A000040(n+1)+4]`
-/

namespace A136071.P10468624367003541108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000040 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136071.P10468624367003541108

namespace A136071

/-- `p?[5*A000040(n+1)+4]` -/
def P10468624367003541108.Spec : Prop :=
  ∀ n, P10468624367003541108.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P17752039947941883290

`p?[5*A008578(n+1)+4]`
-/

namespace A136071.P17752039947941883290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A008578 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136071.P17752039947941883290

namespace A136071

/-- `p?[5*A008578(n+1)+4]` -/
def P17752039947941883290.Spec : Prop :=
  ∀ n, P17752039947941883290.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P2850052481306183595

`p?[5*A065091(n+1)+4]`
-/

namespace A136071.P2850052481306183595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A065091 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136071.P2850052481306183595

namespace A136071

/-- `p?[5*A065091(n+1)+4]` -/
def P2850052481306183595.Spec : Prop :=
  ∀ n, P2850052481306183595.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P11588351981054042858

`p?[A001748(n+1)+2*A052147(n+1)]`
-/

namespace A136071.P11588351981054042858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + 2 * A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136071.P11588351981054042858

namespace A136071

/-- `p?[A001748(n+1)+2*A052147(n+1)]` -/
def P11588351981054042858.Spec : Prop :=
  ∀ n, P11588351981054042858.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P6295945519765905245

`p?[5*record[A020639(n+1)]+4]`
-/

namespace A136071.P6295945519765905245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136071.P6295945519765905245

namespace A136071

/-- `p?[5*record[A020639(n+1)]+4]` -/
def P6295945519765905245.Spec : Prop :=
  ∀ n, P6295945519765905245.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P15590264436580299449

`5*p?[A024897(n+1)]+4`
-/

namespace A136071.P15590264436580299449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 4

end

end A136071.P15590264436580299449

namespace A136071

/-- `5*p?[A024897(n+1)]+4` -/
def P15590264436580299449.Spec : Prop :=
  ∀ n, P15590264436580299449.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P8933452235221964425

`∩[A045457(n+1), A168446(n+1)]`
-/

namespace A136071.P8933452235221964425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136071.P8933452235221964425

namespace A136071

/-- `∩[A045457(n+1), A168446(n+1)]` -/
def P8933452235221964425.Spec : Prop :=
  ∀ n, (P8933452235221964425.a n : ℤ) = A136071 (n + 1)

end A136071

/-! ## A136071.P6347961504565231710

`∩[A168446(n+1), A327753(n+1)]`
-/

namespace A136071.P6347961504565231710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136071.P6347961504565231710

namespace A136071

/-- `∩[A168446(n+1), A327753(n+1)]` -/
def P6347961504565231710.Spec : Prop :=
  ∀ n, (P6347961504565231710.a n : ℤ) = A136071 (n + 1)

end A136071

/-! ## A136071.P8543447570760320377

`∩[A004618(n+1), A168446(n+1)]`
-/

namespace A136071.P8543447570760320377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136071.P8543447570760320377

namespace A136071

/-- `∩[A004618(n+1), A168446(n+1)]` -/
def P8543447570760320377.Spec : Prop :=
  ∀ n, (P8543447570760320377.a n : ℤ) = A136071 (n + 1)

end A136071

/-! ## A136071.P15054559347935356619

`p?[5*p?[A207790(n+1)]+4]`
-/

namespace A136071.P15054559347935356619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136071.P15054559347935356619

namespace A136071

/-- `p?[5*p?[A207790(n+1)]+4]` -/
def P15054559347935356619.Spec : Prop :=
  ∀ n, P15054559347935356619.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P14621104071802283640

`∩[A168446(n+1), A017377(n)]`
-/

namespace A136071.P14621104071802283640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136071.P14621104071802283640

namespace A136071

/-- `∩[A168446(n+1), A017377(n)]` -/
def P14621104071802283640.Spec : Prop :=
  ∀ n, (P14621104071802283640.a n : ℤ) = A136071 (n + 1)

end A136071

/-! ## A136071.P2157071569452014321

`p?[A001222(2*n+1)*A017377(n)]`
-/

namespace A136071.P2157071569452014321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) * A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136071.P2157071569452014321

namespace A136071

/-- `p?[A001222(2*n+1)*A017377(n)]` -/
def P2157071569452014321.Spec : Prop :=
  ∀ n, P2157071569452014321.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P3850330959001697863

`∩[A168446(n+1), A190876(n+1)]`
-/

namespace A136071.P3850330959001697863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136071.P3850330959001697863

namespace A136071

/-- `∩[A168446(n+1), A190876(n+1)]` -/
def P3850330959001697863.Spec : Prop :=
  ∀ n, (P3850330959001697863.a n : ℤ) = A136071 (n + 1)

end A136071

/-! ## A136071.P16075828851219071014

`∩[A168446(n+1), A277596(n+1)]`
-/

namespace A136071.P16075828851219071014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136071.P16075828851219071014

namespace A136071

/-- `∩[A168446(n+1), A277596(n+1)]` -/
def P16075828851219071014.Spec : Prop :=
  ∀ n, (P16075828851219071014.a n : ℤ) = A136071 (n + 1)

end A136071

/-! ## A136071.P6661700675315404506

`filter[A168446(n+1), A185709(#)]`
-/

namespace A136071.P6661700675315404506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168446 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185709 (f1 j).toNat = 1) n)

end

end A136071.P6661700675315404506

namespace A136071

/-- `filter[A168446(n+1), A185709(#)]` -/
def P6661700675315404506.Spec : Prop :=
  ∀ n, P6661700675315404506.a n = A136071 (n + 1)

end A136071

/-! ## A136071.P11415233450500498551

`∩[A168446(n+1), A274685(n+1)]`
-/

namespace A136071.P11415233450500498551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136071.P11415233450500498551

namespace A136071

/-- `∩[A168446(n+1), A274685(n+1)]` -/
def P11415233450500498551.Spec : Prop :=
  ∀ n, (P11415233450500498551.a n : ℤ) = A136071 (n + 1)

end A136071

/-! ## A136071.P11761810936014667255

`p?[5*p?[A160102(n+1)]+4]`
-/

namespace A136071.P11761810936014667255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136071.P11761810936014667255

namespace A136071

/-- `p?[5*p?[A160102(n+1)]+4]` -/
def P11761810936014667255.Spec : Prop :=
  ∀ n, P11761810936014667255.a n = A136071 (n + 1)

end A136071

/-!
# A136072: Primes of the form 7*p + 6 with p prime.

The programs for A136072, the canonical program `A136072.P9164867386790231185` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136072 has offset 1).

The definition of A136072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136072.P9164867386790231185

`p?[7*A008864(n+1)-1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136072

/-- `p?[7*A008864(n+1)-1]` -/
def P9164867386790231185.Spec : Prop :=
  ∀ n, P9164867386790231185.a n = A136072 (n + 1)

theorem P9164867386790231185.correct : P9164867386790231185.Spec := by
  intro n
  simp only [A136072, Nat.add_sub_cancel]

end A136072

/-! ## A136072.P7151622123250721583

`p?[7*A000040(n+1)+6]`
-/

namespace A136072.P7151622123250721583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000040 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P7151622123250721583

namespace A136072

/-- `p?[7*A000040(n+1)+6]` -/
def P7151622123250721583.Spec : Prop :=
  ∀ n, P7151622123250721583.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P11305833793426049722

`p?[abs(1-7*(A008578(n+2)+1))]`
-/

namespace A136072.P11305833793426049722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 7 * (A008578 (n + 2) + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P11305833793426049722

namespace A136072

/-- `p?[abs(1-7*(A008578(n+2)+1))]` -/
def P11305833793426049722.Spec : Prop :=
  ∀ n, P11305833793426049722.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P3191919842754362262

`p?[A000203(lcm(4, A000040(n+1)))-1]`
-/

namespace A136072.P3191919842754362262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm 4 (A000040 (n + 1))) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P3191919842754362262

namespace A136072

/-- `p?[A000203(lcm(4, A000040(n+1)))-1]` -/
def P3191919842754362262.Spec : Prop :=
  ∀ n, P3191919842754362262.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P6738092948194675416

`p?[A017053(p?[2*n+1])]`
-/

namespace A136072.P6738092948194675416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P6738092948194675416

namespace A136072

/-- `p?[A017053(p?[2*n+1])]` -/
def P6738092948194675416.Spec : Prop :=
  ∀ n, P6738092948194675416.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P14866210686421914347

`p?[A113801(p?[2*n+1]+1)]`
-/

namespace A136072.P14866210686421914347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P14866210686421914347

namespace A136072

/-- `p?[A113801(p?[2*n+1]+1)]` -/
def P14866210686421914347.Spec : Prop :=
  ∀ n, P14866210686421914347.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P642822997308609829

`A017053(A023225(n+1))`
-/

namespace A136072.P642822997308609829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A023225 (n + 1)).toNat

end

end A136072.P642822997308609829

namespace A136072

/-- `A017053(A023225(n+1))` -/
def P642822997308609829.Spec : Prop :=
  ∀ n, P642822997308609829.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P7436894758208240342

`p?[A017053(Δ[A007504(n)])]`
-/

namespace A136072.P7436894758208240342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P7436894758208240342

namespace A136072

/-- `p?[A017053(Δ[A007504(n)])]` -/
def P7436894758208240342.Spec : Prop :=
  ∀ n, P7436894758208240342.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P2061778690952682707

`p?[A017053(A000040(n+1))]`
-/

namespace A136072.P2061778690952682707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P2061778690952682707

namespace A136072

/-- `p?[A017053(A000040(n+1))]` -/
def P2061778690952682707.Spec : Prop :=
  ∀ n, P2061778690952682707.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P17483379178274936972

`p?[A017053(A061397(n+1))]`
-/

namespace A136072.P17483379178274936972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P17483379178274936972

namespace A136072

/-- `p?[A017053(A061397(n+1))]` -/
def P17483379178274936972.Spec : Prop :=
  ∀ n, P17483379178274936972.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P7521498823755338350

`A113801(A023225(n+1)+1)`
-/

namespace A136072.P7521498823755338350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A023225 (n + 1) + 1).toNat

end

end A136072.P7521498823755338350

namespace A136072

/-- `A113801(A023225(n+1)+1)` -/
def P7521498823755338350.Spec : Prop :=
  ∀ n, P7521498823755338350.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P2134867835517429416

`p?[A017041(p?[A004273(n)])+1]`
-/

namespace A136072.P2134867835517429416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P2134867835517429416

namespace A136072

/-- `p?[A017041(p?[A004273(n)])+1]` -/
def P2134867835517429416.Spec : Prop :=
  ∀ n, P2134867835517429416.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P1990640209009928197

`p?[A017041(p?[A131738(n)])+1]`
-/

namespace A136072.P1990640209009928197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P1990640209009928197

namespace A136072

/-- `p?[A017041(p?[A131738(n)])+1]` -/
def P1990640209009928197.Spec : Prop :=
  ∀ n, P1990640209009928197.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P12428096519458256069

`p?[A017029(p?[A004442(n)])+2]`
-/

namespace A136072.P12428096519458256069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P12428096519458256069

namespace A136072

/-- `p?[A017029(p?[A004442(n)])+2]` -/
def P12428096519458256069.Spec : Prop :=
  ∀ n, P12428096519458256069.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P6223840686201383125

`p?[A017029(p?[A014681(n)])+2]`
-/

namespace A136072.P6223840686201383125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P6223840686201383125

namespace A136072

/-- `p?[A017029(p?[A014681(n)])+2]` -/
def P6223840686201383125.Spec : Prop :=
  ∀ n, P6223840686201383125.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P12774478825803175513

`p?[A017053(A006093(n+1)+1)]`
-/

namespace A136072.P12774478825803175513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P12774478825803175513

namespace A136072

/-- `p?[A017053(A006093(n+1)+1)]` -/
def P12774478825803175513.Spec : Prop :=
  ∀ n, P12774478825803175513.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P15747590679796218649

`p?[A113801(A000040(n+1)+1)]`
-/

namespace A136072.P15747590679796218649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P15747590679796218649

namespace A136072

/-- `p?[A113801(A000040(n+1)+1)]` -/
def P15747590679796218649.Spec : Prop :=
  ∀ n, P15747590679796218649.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P11325939802846673174

`p?[A113801(A006093(n+1)+2)]`
-/

namespace A136072.P11325939802846673174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A006093 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P11325939802846673174

namespace A136072

/-- `p?[A113801(A006093(n+1)+2)]` -/
def P11325939802846673174.Spec : Prop :=
  ∀ n, P11325939802846673174.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P9561226446972700791

`p?[A017041(p?[A125746(n+1)])+1]`
-/

namespace A136072.P9561226446972700791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P9561226446972700791

namespace A136072

/-- `p?[A017041(p?[A125746(n+1)])+1]` -/
def P9561226446972700791.Spec : Prop :=
  ∀ n, P9561226446972700791.a n = A136072 (n + 1)

end A136072

/-! ## A136072.P7226550272315881308

`p?[A056020(A089241(n+1))-A089241(n+1)]`
-/

namespace A136072.P7226550272315881308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A089241 (n + 1)).toNat - A089241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136072.P7226550272315881308

namespace A136072

/-- `p?[A056020(A089241(n+1))-A089241(n+1)]` -/
def P7226550272315881308.Spec : Prop :=
  ∀ n, P7226550272315881308.a n = A136072 (n + 1)

end A136072

/-!
# A136073: Primes of the form 9*p + 8 with p prime.

The programs for A136073, the canonical program `A136073.P3838515583161840043` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136073 has offset 1).

The definition of A136073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2099 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136073.P3838515583161840043

`p?[9*A000040(n+1)+8]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136073

/-- `p?[9*A000040(n+1)+8]` -/
def P3838515583161840043.Spec : Prop :=
  ∀ n, P3838515583161840043.a n = A136073 (n + 1)

theorem P3838515583161840043.correct : P3838515583161840043.Spec := by
  intro n
  simp only [A136073, Nat.add_sub_cancel]

end A136073

/-! ## A136073.P396527504931797456

`p?[9*A065091(n+1)+8]`
-/

namespace A136073.P396527504931797456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A065091 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P396527504931797456

namespace A136073

/-- `p?[9*A065091(n+1)+8]` -/
def P396527504931797456.Spec : Prop :=
  ∀ n, P396527504931797456.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P4003260359946771100

`p?[3*3*A008864(n+1)-1]`
-/

namespace A136073.P4003260359946771100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A008864 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P4003260359946771100

namespace A136073

/-- `p?[3*3*A008864(n+1)-1]` -/
def P4003260359946771100.Spec : Prop :=
  ∀ n, P4003260359946771100.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P17895619245527197143

`p?[9*(A008578(n+2)+1)-1]`
-/

namespace A136073.P17895619245527197143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A008578 (n + 2) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P17895619245527197143

namespace A136073

/-- `p?[9*(A008578(n+2)+1)-1]` -/
def P17895619245527197143.Spec : Prop :=
  ∀ n, P17895619245527197143.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P2507478547048574607

`A023235(n+1)+A000118(A023235(n+1))`
-/

namespace A136073.P2507478547048574607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1) + A000118 (A023235 (n + 1)).toNat

end

end A136073.P2507478547048574607

namespace A136073

/-- `A023235(n+1)+A000118(A023235(n+1))` -/
def P2507478547048574607.Spec : Prop :=
  ∀ n, P2507478547048574607.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P1865325863308833170

`p?[A014682(A017653(A005097(n+1)))]`
-/

namespace A136073.P1865325863308833170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A017653 (A005097 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P1865325863308833170

namespace A136073

/-- `p?[A014682(A017653(A005097(n+1)))]` -/
def P1865325863308833170.Spec : Prop :=
  ∀ n, P1865325863308833170.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P9302973307809788447

`p?[9*(p?[comp[n²]]+1)-1]`
-/

namespace A136073.P9302973307809788447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P9302973307809788447

namespace A136073

/-- `p?[9*(p?[comp[n²]]+1)-1]` -/
def P9302973307809788447.Spec : Prop :=
  ∀ n, P9302973307809788447.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P11144056056597952833

`p?[A017257(p?[2*n+1])]`
-/

namespace A136073.P11144056056597952833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P11144056056597952833

namespace A136073

/-- `p?[A017257(p?[2*n+1])]` -/
def P11144056056597952833.Spec : Prop :=
  ∀ n, P11144056056597952833.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P7280495661596231526

`p?[A373864(p?[2*n+1])]`
-/

namespace A136073.P7280495661596231526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373864 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P7280495661596231526

namespace A136073

/-- `p?[A373864(p?[2*n+1])]` -/
def P7280495661596231526.Spec : Prop :=
  ∀ n, P7280495661596231526.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P9189787171102995920

`A017257(A023235(n+1))`
-/

namespace A136073.P9189787171102995920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (A023235 (n + 1)).toNat

end

end A136073.P9189787171102995920

namespace A136073

/-- `A017257(A023235(n+1))` -/
def P9189787171102995920.Spec : Prop :=
  ∀ n, P9189787171102995920.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P1038241780039092559

`p?[A017257(A000040(n+1))]`
-/

namespace A136073.P1038241780039092559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P1038241780039092559

namespace A136073

/-- `p?[A017257(A000040(n+1))]` -/
def P1038241780039092559.Spec : Prop :=
  ∀ n, P1038241780039092559.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P976745046584129069

`p?[A179805(A000040(n+1)+2)+2]`
-/

namespace A136073.P976745046584129069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179805 (A000040 (n + 1) + 2).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P976745046584129069

namespace A136073

/-- `p?[A179805(A000040(n+1)+2)+2]` -/
def P976745046584129069.Spec : Prop :=
  ∀ n, P976745046584129069.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P17477553368992438011

`p?[A319528(A008578(n+1))+A008578(n+1)]`
-/

namespace A136073.P17477553368992438011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319528 (A008578 (n + 1)).toNat + A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P17477553368992438011

namespace A136073

/-- `p?[A319528(A008578(n+1))+A008578(n+1)]` -/
def P17477553368992438011.Spec : Prop :=
  ∀ n, P17477553368992438011.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P3787910306556629545

`p?[A269369(A016789(A008864(n+1)))]`
-/

namespace A136073.P3787910306556629545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269369 (A016789 (A008864 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P3787910306556629545

namespace A136073

/-- `p?[A269369(A016789(A008864(n+1)))]` -/
def P3787910306556629545.Spec : Prop :=
  ∀ n, P3787910306556629545.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P305049034148581243

`p?[A056020(A089241(n+1))]`
-/

namespace A136073.P305049034148581243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A089241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P305049034148581243

namespace A136073

/-- `p?[A056020(A089241(n+1))]` -/
def P305049034148581243.Spec : Prop :=
  ∀ n, P305049034148581243.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P13327201966008044160

`p?[A032741(2*n+1)*A056020(4*(n+1))]`
-/

namespace A136073.P13327201966008044160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n + 1) * A056020 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P13327201966008044160

namespace A136073

/-- `p?[A032741(2*n+1)*A056020(4*(n+1))]` -/
def P13327201966008044160.Spec : Prop :=
  ∀ n, P13327201966008044160.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P15520771130138374407

`p?[A056020(4*(n+1))*A317531(2*n+1)]`
-/

namespace A136073.P15520771130138374407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (4 * (n + 1)) * A317531 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P15520771130138374407

namespace A136073

/-- `p?[A056020(4*(n+1))*A317531(2*n+1)]` -/
def P15520771130138374407.Spec : Prop :=
  ∀ n, P15520771130138374407.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P5766255979584215649

`p?[A056020(4*(n+1))*A294904(4*n+2)]`
-/

namespace A136073.P5766255979584215649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (4 * (n + 1)) * A294904 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P5766255979584215649

namespace A136073

/-- `p?[A056020(4*(n+1))*A294904(4*n+2)]` -/
def P5766255979584215649.Spec : Prop :=
  ∀ n, P5766255979584215649.a n = A136073 (n + 1)

end A136073

/-! ## A136073.P6477874695873893603

`p?[A016789(A016789(A045344(n+1)))]`
-/

namespace A136073.P6477874695873893603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A016789 (A045344 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136073.P6477874695873893603

namespace A136073

/-- `p?[A016789(A016789(A045344(n+1)))]` -/
def P6477874695873893603.Spec : Prop :=
  ∀ n, P6477874695873893603.a n = A136073 (n + 1)

end A136073

/-!
# A136074: Primes of the form 11*p + 10 with p prime.

The programs for A136074, there is no canonical definition to state claims against.
-/

/-! ## A136074.P13327631379394868151

`11*A136082(n+1)+10`
-/

namespace A136074.P13327631379394868151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A136082 (n + 1) + 10

end

end A136074.P13327631379394868151

/-! ## A136074.P9276282913058495231

`p?[11*(p?[2*n+1]+1)-1]`
-/

namespace A136074.P9276282913058495231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P9276282913058495231

/-! ## A136074.P2911958057538138791

`p?[11*A008864(n+1)-1]`
-/

namespace A136074.P2911958057538138791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P2911958057538138791

/-! ## A136074.P6255788719135648302

`p?[11*A000040(n+1)+10]`
-/

namespace A136074.P6255788719135648302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000040 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P6255788719135648302

/-! ## A136074.P5688089852375043852

`p?[11*A065091(n+1)+10]`
-/

namespace A136074.P5688089852375043852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A065091 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P5688089852375043852

/-! ## A136074.P16366155617240194378

`p?[A161705(n+1)+A074828(2*n+1)]`
-/

namespace A136074.P16366155617240194378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (n + 1) + A074828 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P16366155617240194378

/-! ## A136074.P17181294420007807456

`p?[A017449(A014692(n+1))+A017449(n)]`
-/

namespace A136074.P17181294420007807456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 (A014692 (n + 1)).toNat + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P17181294420007807456

/-! ## A136074.P4653983232470715973

`p?[A017509(p?[xor(1, n)])]`
-/

namespace A136074.P4653983232470715973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P4653983232470715973

/-! ## A136074.P3086545586647352446

`p?[A017509(p?[2*n+1])]`
-/

namespace A136074.P3086545586647352446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P3086545586647352446

/-! ## A136074.P9168192246073937895

`p?[A017509(A209259(n))]`
-/

namespace A136074.P9168192246073937895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P9168192246073937895

/-! ## A136074.P9910078250041394418

`A017509(A136082(n+1))`
-/

namespace A136074.P9910078250041394418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A136082 (n + 1)).toNat

end

end A136074.P9910078250041394418

/-! ## A136074.P14693995742942558069

`p?[A017509(Δ[A007504(n)])]`
-/

namespace A136074.P14693995742942558069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P14693995742942558069

/-! ## A136074.P7493228334917205003

`p?[A017509(A000040(n+1))]`
-/

namespace A136074.P7493228334917205003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P7493228334917205003

/-! ## A136074.P11540082131474010584

`p?[A017509(A061397(n+1))]`
-/

namespace A136074.P11540082131474010584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A061397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P11540082131474010584

/-! ## A136074.P8580902181331729695

`p?[A017509(record[A014963(n+1)])]`
-/

namespace A136074.P8580902181331729695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P8580902181331729695

/-! ## A136074.P11255207551097584532

`p?[A017497(p?[A098180(n)])+1]`
-/

namespace A136074.P11255207551097584532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P11255207551097584532

/-! ## A136074.P4167999581933409616

`p?[A017485(p?[A093178(n)])+2]`
-/

namespace A136074.P4167999581933409616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P4167999581933409616

/-! ## A136074.P16233985726717578500

`p?[A017509(A008864(n+1)-1)]`
-/

namespace A136074.P16233985726717578500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A008864 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P16233985726717578500

/-! ## A136074.P4792737733428937223

`p?[(2-A210442(n))*A017509(n)]`
-/

namespace A136074.P4792737733428937223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A210442 n) * A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136074.P4792737733428937223

/-!
# A136075: Primes of the form 13*p + 12 with p prime.

The programs for A136075, the canonical program `A136075.P14833966361891239066` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136075 has offset 1).

The definition of A136075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136075.P2541023179014230125

`p?[13*A055670(n+1)-1]`
-/

namespace A136075.P2541023179014230125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A055670 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136075.P2541023179014230125

namespace A136075

/-- `p?[13*A055670(n+1)-1]` -/
def P2541023179014230125.Spec : Prop :=
  ∀ n, P2541023179014230125.a n = A136075 (n + 1)

end A136075

/-! ## A136075.P14833966361891239066

`p?[13*A000040(n+1)+12]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136075

/-- `p?[13*A000040(n+1)+12]` -/
def P14833966361891239066.Spec : Prop :=
  ∀ n, P14833966361891239066.a n = A136075 (n + 1)

theorem P14833966361891239066.correct : P14833966361891239066.Spec := by
  intro n
  simp only [A136075, Nat.add_sub_cancel]

end A136075

/-! ## A136075.P3881960733473007793

`p?[A102781(n+1)+A008607(A111333(n+1))]`
-/

namespace A136075.P3881960733473007793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + A008607 (A111333 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136075.P3881960733473007793

namespace A136075

/-- `p?[A102781(n+1)+A008607(A111333(n+1))]` -/
def P3881960733473007793.Spec : Prop :=
  ∀ n, P3881960733473007793.a n = A136075 (n + 1)

end A136075

/-! ## A136075.P15376292743162611297

`p?[A283123(A000040(n+1))-1]`
-/

namespace A136075.P15376292743162611297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283123 (A000040 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136075.P15376292743162611297

namespace A136075

/-- `p?[A283123(A000040(n+1))-1]` -/
def P15376292743162611297.Spec : Prop :=
  ∀ n, P15376292743162611297.a n = A136075 (n + 1)

end A136075

/-! ## A136075.P109880990054920284

`p?[A065091(n+1)+A008653(A065091(n+1))]`
-/

namespace A136075.P109880990054920284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A008653 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136075.P109880990054920284

namespace A136075

/-- `p?[A065091(n+1)+A008653(A065091(n+1))]` -/
def P109880990054920284.Spec : Prop :=
  ∀ n, P109880990054920284.a n = A136075 (n + 1)

end A136075

/-! ## A136075.P468198834452831052

`p?[A175886(A089241(n+1))]`
-/

namespace A136075.P468198834452831052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (A089241 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136075.P468198834452831052

namespace A136075

/-- `p?[A175886(A089241(n+1))]` -/
def P468198834452831052.Spec : Prop :=
  ∀ n, P468198834452831052.a n = A136075 (n + 1)

end A136075

/-! ## A136075.P700809805296884241

`p?[A175886(2*A008864(n+1))]`
-/

namespace A136075.P700809805296884241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (2 * A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136075.P700809805296884241

namespace A136075

/-- `p?[A175886(2*A008864(n+1))]` -/
def P700809805296884241.Spec : Prop :=
  ∀ n, P700809805296884241.a n = A136075 (n + 1)

end A136075

/-! ## A136075.P2972078644710787715

`p?[(26*(n+1)-1)*A281680(n)]`
-/

namespace A136075.P2972078644710787715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((26 * (n + 1) : ℤ) - 1) * A281680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136075.P2972078644710787715

namespace A136075

/-- `p?[(26*(n+1)-1)*A281680(n)]` -/
def P2972078644710787715.Spec : Prop :=
  ∀ n, P2972078644710787715.a n = A136075 (n + 1)

end A136075

/-!
# A136076: Primes of the form 15*p + 14 with p prime.

The programs for A136076, the canonical program `A136076.P10771529814166551126` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136076 has offset 1).

The definition of A136076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136076.P10771529814166551126

`p?[15*A008864(n+1)-1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136076

/-- `p?[15*A008864(n+1)-1]` -/
def P10771529814166551126.Spec : Prop :=
  ∀ n, P10771529814166551126.a n = A136076 (n + 1)

theorem P10771529814166551126.correct : P10771529814166551126.Spec := by
  intro n
  simp only [A136076, Nat.add_sub_cancel]

end A136076

/-! ## A136076.P4604886363910741314

`p?[A000203(8*A000040(n+1))-1]`
-/

namespace A136076.P4604886363910741314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (8 * A000040 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136076.P4604886363910741314

namespace A136076

/-- `p?[A000203(8*A000040(n+1))-1]` -/
def P4604886363910741314.Spec : Prop :=
  ∀ n, P4604886363910741314.a n = A136076 (n + 1)

end A136076

/-! ## A136076.P5554399073621564551

`p?[A257645(p?[2*n+1])]`
-/

namespace A136076.P5554399073621564551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136076.P5554399073621564551

namespace A136076

/-- `p?[A257645(p?[2*n+1])]` -/
def P5554399073621564551.Spec : Prop :=
  ∀ n, P5554399073621564551.a n = A136076 (n + 1)

end A136076

/-! ## A136076.P2735719294390851855

`A257645(A136084(n+1))`
-/

namespace A136076.P2735719294390851855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (A136084 (n + 1)).toNat

end

end A136076.P2735719294390851855

namespace A136076

/-- `A257645(A136084(n+1))` -/
def P2735719294390851855.Spec : Prop :=
  ∀ n, P2735719294390851855.a n = A136076 (n + 1)

end A136076

/-! ## A136076.P5619865892759439167

`p?[A257645(A000040(n+1))]`
-/

namespace A136076.P5619865892759439167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136076.P5619865892759439167

namespace A136076

/-- `p?[A257645(A000040(n+1))]` -/
def P5619865892759439167.Spec : Prop :=
  ∀ n, P5619865892759439167.a n = A136076 (n + 1)

end A136076

/-! ## A136076.P13649061052995545179

`p?[A063118(A000040(n+1)+2)-2]`
-/

namespace A136076.P13649061052995545179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (A000040 (n + 1) + 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136076.P13649061052995545179

namespace A136076

/-- `p?[A063118(A000040(n+1)+2)-2]` -/
def P13649061052995545179.Spec : Prop :=
  ∀ n, P13649061052995545179.a n = A136076 (n + 1)

end A136076

/-! ## A136076.P18344303930482863289

`p?[A135628(n+1)+A061397(2*n+1)]`
-/

namespace A136076.P18344303930482863289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 (n + 1) + A061397 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136076.P18344303930482863289

namespace A136076

/-- `p?[A135628(n+1)+A061397(2*n+1)]` -/
def P18344303930482863289.Spec : Prop :=
  ∀ n, P18344303930482863289.a n = A136076 (n + 1)

end A136076

/-! ## A136076.P3234117099765079997

`p?[A175886(A089241(n+1))+A089241(n+1)]`
-/

namespace A136076.P3234117099765079997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (A089241 (n + 1)).toNat + A089241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136076.P3234117099765079997

namespace A136076

/-- `p?[A175886(A089241(n+1))+A089241(n+1)]` -/
def P3234117099765079997.Spec : Prop :=
  ∀ n, P3234117099765079997.a n = A136076 (n + 1)

end A136076

/-!
# A136077: Primes of the form 17*p + 16 with p prime.

The programs for A136077, there is no canonical definition to state claims against.
-/

/-! ## A136077.P38767035090115977

`17*A136085(n+1)+16`
-/

namespace A136077.P38767035090115977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A136085 (n + 1) + 16

end

end A136077.P38767035090115977

/-! ## A136077.P18120407004698826551

`p?[17*A008864(n+1)-1]`
-/

namespace A136077.P18120407004698826551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A008864 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136077.P18120407004698826551

/-! ## A136077.P5919902703908900045

`p?[17*A000040(n+1)+16]`
-/

namespace A136077.P5919902703908900045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000040 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136077.P5919902703908900045

/-! ## A136077.P15370757936738286267

`p?[17*(A050376(n+1)+1)-1]`
-/

namespace A136077.P15370757936738286267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (A050376 (n + 1) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136077.P15370757936738286267

/-! ## A136077.P3837533638754128525

`p?[17*(A158611(n+1)+1)-1]`
-/

namespace A136077.P3837533638754128525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (A158611 (n + 1) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136077.P3837533638754128525

/-! ## A136077.P10818773452622409611

`p?[17*(A182986(n+1)+1)-1]`
-/

namespace A136077.P10818773452622409611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (A182986 (n + 1) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136077.P10818773452622409611

/-! ## A136077.P10237885010812007730

`p?[17*A000203(A008578(n+1))-1]`
-/

namespace A136077.P10237885010812007730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A000203 (A008578 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136077.P10237885010812007730

/-! ## A136077.P2570458611166702378

`p?[A017569(A008864(n+1))+A001750(n+1)]`
-/

namespace A136077.P2570458611166702378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 (A008864 (n + 1)).toNat + A001750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136077.P2570458611166702378

/-! ## A136077.P504658823713376782

`p?[A124388(A001414(2*n+1))-A017293(2*n+1)]`
-/

namespace A136077.P504658823713376782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 (A001414 (2 * n + 1)).toNat - A017293 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136077.P504658823713376782

/-! ## A136077.P11282219975179664464

`p?[A151978(A001747(n+1))+32]`
-/

namespace A136077.P11282219975179664464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (A001747 (n + 1)).toNat + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136077.P11282219975179664464

/-!
# A136078: Primes of the form 19*p + 18 with p prime.

The programs for A136078, there is no canonical definition to state claims against.
-/

/-! ## A136078.P2246923615888883

`19*A136086(n+1)+18`
-/

namespace A136078.P2246923615888883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A136086 (n + 1) + 18

end

end A136078.P2246923615888883

/-! ## A136078.P11086464380457500507

`p?[19*(A000040(n+1)+1)-1]`
-/

namespace A136078.P11086464380457500507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * (A000040 (n + 1) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136078.P11086464380457500507

/-! ## A136078.P9811083635584925407

`p?[19*A000203(A050376(n+1))-1]`
-/

namespace A136078.P9811083635584925407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A000203 (A050376 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136078.P9811083635584925407

/-! ## A136078.P13867909579023485485

`p?[19*(A207790(2*(n+2))+1)-1]`
-/

namespace A136078.P13867909579023485485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * (A207790 (2 * (n + 2)) + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136078.P13867909579023485485

/-! ## A136078.P10457164261671439636

`p?[A055671(2*n+1)-A017281(n+1)]`
-/

namespace A136078.P10457164261671439636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (2 * n + 1) - A017281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136078.P10457164261671439636

/-! ## A136078.P524597941066195371

`p?[A161705(A008864(n+1))+A006093(n+1)]`
-/

namespace A136078.P524597941066195371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A008864 (n + 1)).toNat + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136078.P524597941066195371

/-! ## A136078.P13430644247613899275

`p?[A017473(A072055(n+1))-A001748(n+1)]`
-/

namespace A136078.P13430644247613899275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (A072055 (n + 1)).toNat - A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136078.P13430644247613899275

/-! ## A136078.P14298564077297413396

`p?[A017353(A072055(n+1))-A006093(n+1)]`
-/

namespace A136078.P14298564077297413396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A072055 (n + 1)).toNat - A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136078.P14298564077297413396

/-! ## A136078.P7093943012854536838

`p?[A017377(A072055(n+1))-A008864(n+1)]`
-/

namespace A136078.P7093943012854536838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A072055 (n + 1)).toNat - A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136078.P7093943012854536838

/-! ## A136078.P13566663955454040736

`p?[A061397(2*n+1)+A008588(A008588(n+1))]`
-/

namespace A136078.P13566663955454040736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * n + 1) + A008588 (A008588 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136078.P13566663955454040736

/-!
# A136079: Primes of the form 21*p + 20 with p prime.

The programs for A136079, the canonical program `A136079.P13389629835075669409` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136079 has offset 1).

The definition of A136079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1645 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136079.P13389629835075669409

`p?[21*A008864(n+1)-1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136079

/-- `p?[21*A008864(n+1)-1]` -/
def P13389629835075669409.Spec : Prop :=
  ∀ n, P13389629835075669409.a n = A136079 (n + 1)

theorem P13389629835075669409.correct : P13389629835075669409.Spec := by
  intro n
  simp only [A136079, Nat.add_sub_cancel]

end A136079

/-! ## A136079.P5208844753589114536

`p?[21*A000040(n+1)+20]`
-/

namespace A136079.P5208844753589114536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A000040 (n + 1) + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P5208844753589114536

namespace A136079

/-- `p?[21*A000040(n+1)+20]` -/
def P5208844753589114536.Spec : Prop :=
  ∀ n, P5208844753589114536.a n = A136079 (n + 1)

end A136079

/-! ## A136079.P813408544373072757

`p?[A057428(n)+21*A008864(n+1)]`
-/

namespace A136079.P813408544373072757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 21 * A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P813408544373072757

namespace A136079

/-- `p?[A057428(n)+21*A008864(n+1)]` -/
def P813408544373072757.Spec : Prop :=
  ∀ n, P813408544373072757.a n = A136079 (n + 1)

end A136079

/-! ## A136079.P3027170021914390624

`p?[A258016(p?[2*n+1]+1)+2]`
-/

namespace A136079.P3027170021914390624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P3027170021914390624

namespace A136079

/-- `p?[A258016(p?[2*n+1]+1)+2]` -/
def P3027170021914390624.Spec : Prop :=
  ∀ n, P3027170021914390624.a n = A136079 (n + 1)

end A136079

/-! ## A136079.P8684422563478813650

`p?[A258016(A055670(n+1))+2]`
-/

namespace A136079.P8684422563478813650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (A055670 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P8684422563478813650

namespace A136079

/-- `p?[A258016(A055670(n+1))+2]` -/
def P8684422563478813650.Spec : Prop :=
  ∀ n, P8684422563478813650.a n = A136079 (n + 1)

end A136079

/-! ## A136079.P4220636303849482101

`p?[A215146(A008864(n+1))-2]`
-/

namespace A136079.P4220636303849482101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 (A008864 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P4220636303849482101

namespace A136079

/-- `p?[A215146(A008864(n+1))-2]` -/
def P4220636303849482101.Spec : Prop :=
  ∀ n, P4220636303849482101.a n = A136079 (n + 1)

end A136079

/-! ## A136079.P6576764565191561222

`p?[A017377(A072055(n+1))+A008864(n+1)]`
-/

namespace A136079.P6576764565191561222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A072055 (n + 1)).toNat + A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P6576764565191561222

namespace A136079

/-- `p?[A017377(A072055(n+1))+A008864(n+1)]` -/
def P6576764565191561222.Spec : Prop :=
  ∀ n, P6576764565191561222.a n = A136079 (n + 1)

end A136079

/-! ## A136079.P4651151998545386336

`p?[A017053(A001748(n+1)+2)]`
-/

namespace A136079.P4651151998545386336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 (A001748 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P4651151998545386336

namespace A136079

/-- `p?[A017053(A001748(n+1)+2)]` -/
def P4651151998545386336.Spec : Prop :=
  ∀ n, P4651151998545386336.a n = A136079 (n + 1)

end A136079

/-! ## A136079.P11979388751836100941

`p?[A113801(A007310(p?[2*n+1]+1)+1)]`
-/

namespace A136079.P11979388751836100941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A007310 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136079.P11979388751836100941

namespace A136079

/-- `p?[A113801(A007310(p?[2*n+1]+1)+1)]` -/
def P11979388751836100941.Spec : Prop :=
  ∀ n, P11979388751836100941.a n = A136079 (n + 1)

end A136079

/-!
# A136080: Primes of the form 23*p + 22 with p prime.

The programs for A136080, the canonical program `A136080.P3495924471063362038` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136080 has offset 1).

The definition of A136080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136080.P3495924471063362038

`p?[23*(A000040(n+1)+1)-1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136080

/-- `p?[23*(A000040(n+1)+1)-1]` -/
def P3495924471063362038.Spec : Prop :=
  ∀ n, P3495924471063362038.a n = A136080 (n + 1)

theorem P3495924471063362038.correct : P3495924471063362038.Spec := by
  intro n
  simp only [A136080, Nat.add_sub_cancel]

end A136080

/-! ## A136080.P4607503303410765775

`p?[A055669(n+1)-A052147(n+1)]`
-/

namespace A136080.P4607503303410765775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055669 (n + 1) - A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P4607503303410765775

namespace A136080

/-- `p?[A055669(n+1)-A052147(n+1)]` -/
def P4607503303410765775.Spec : Prop :=
  ∀ n, P4607503303410765775.a n = A136080 (n + 1)

end A136080

/-! ## A136080.P16895614778849627288

`p?[A055669(n+1)-(A055670(n+1)+1)]`
-/

namespace A136080.P16895614778849627288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055669 (n + 1) - (A055670 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P16895614778849627288

namespace A136080

/-- `p?[A055669(n+1)-(A055670(n+1)+1)]` -/
def P16895614778849627288.Spec : Prop :=
  ∀ n, P16895614778849627288.a n = A136080 (n + 1)

end A136080

/-! ## A136080.P1702535297759440360

`p?[A055671(n)-(n+2)]`
-/

namespace A136080.P1702535297759440360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P1702535297759440360

namespace A136080

/-- `p?[A055671(n)-(n+2)]` -/
def P1702535297759440360.Spec : Prop :=
  ∀ n, P1702535297759440360.a n = A136080 (n + 1)

end A136080

/-! ## A136080.P11759850422570969904

`p?[A008605(A008864(n+1))-1]`
-/

namespace A136080.P11759850422570969904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 (A008864 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P11759850422570969904

namespace A136080

/-- `p?[A008605(A008864(n+1))-1]` -/
def P11759850422570969904.Spec : Prop :=
  ∀ n, P11759850422570969904.a n = A136080 (n + 1)

end A136080

/-! ## A136080.P12433379674237184652

`p?[A008605(A000040(n+1)+1)-1]`
-/

namespace A136080.P12433379674237184652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 (A000040 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P12433379674237184652

namespace A136080

/-- `p?[A008605(A000040(n+1)+1)-1]` -/
def P12433379674237184652.Spec : Prop :=
  ∀ n, P12433379674237184652.a n = A136080 (n + 1)

end A136080

/-! ## A136080.P1697202082151448621

`p?[46*A110654(A007528(n+1))-1]`
-/

namespace A136080.P1697202082151448621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  46 * A110654 (A007528 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P1697202082151448621

namespace A136080

/-- `p?[46*A110654(A007528(n+1))-1]` -/
def P1697202082151448621.Spec : Prop :=
  ∀ n, P1697202082151448621.a n = A136080 (n + 1)

end A136080

/-! ## A136080.P13212954385645794226

`p?[A161709(A008864(n+1))+A006093(n+1)]`
-/

namespace A136080.P13212954385645794226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (A008864 (n + 1)).toNat + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P13212954385645794226

namespace A136080

/-- `p?[A161709(A008864(n+1))+A006093(n+1)]` -/
def P13212954385645794226.Spec : Prop :=
  ∀ n, P13212954385645794226.a n = A136080 (n + 1)

end A136080

/-! ## A136080.P6499858894897317566

`p?[A161709(A008864(n+1))+A039915(n+1)]`
-/

namespace A136080.P6499858894897317566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (A008864 (n + 1)).toNat + A039915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P6499858894897317566

namespace A136080

/-- `p?[A161709(A008864(n+1))+A039915(n+1)]` -/
def P6499858894897317566.Spec : Prop :=
  ∀ n, P6499858894897317566.a n = A136080 (n + 1)

end A136080

/-! ## A136080.P17781186002261880110

`p?[A017509(A072055(n+1))+A008864(n+1)]`
-/

namespace A136080.P17781186002261880110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A072055 (n + 1)).toNat + A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136080.P17781186002261880110

namespace A136080

/-- `p?[A017509(A072055(n+1))+A008864(n+1)]` -/
def P17781186002261880110.Spec : Prop :=
  ∀ n, P17781186002261880110.a n = A136080 (n + 1)

end A136080

/-!
# A136081: Array, read by antidiagonals, numbers with an odd number of 1's in base k expansion.

The programs for A136081, there is no canonical definition to state claims against.
-/

/-! ## A136081.P10066228543101473680

`A130162(n+1)+A001222(A195278(n+1))`
-/

namespace A136081.P10066228543101473680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130162 (n + 1) + A001222 (A195278 (n + 1)).toNat

end

end A136081.P10066228543101473680

/-! ## A136081.P13234792543630242589

`A005811(A213990(n+1))-A189292(n+1)`
-/

namespace A136081.P13234792543630242589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A213990 (n + 1)).toNat - A189292 (n + 1)

end

end A136081.P13234792543630242589

/-! ## A136081.P18213830364203422070

`A182985(A360965(n+1))`
-/

namespace A136081.P18213830364203422070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182985 (A360965 (n + 1)).toNat

end

end A136081.P18213830364203422070

/-! ## A136081.P5886880630706826842

`∑{e}[A153134(A241171(n+1)), #]`
-/

namespace A136081.P5886880630706826842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (A241171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A136081.P5886880630706826842

/-! ## A136081.P18035303202978266605

`A355735(A363419(n)+A035607(n))`
-/

namespace A136081.P18035303202978266605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (A363419 n + A035607 n).toNat

end

end A136081.P18035303202978266605

/-!
# A136082: Son primes of order 5.

The programs for A136082, there is no canonical definition to state claims against.
-/

/-! ## A136082.P49873672964616638

`floor(A136074(n+1)/11)`
-/

namespace A136082.P49873672964616638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136074 (n + 1) : ℚ) / 11⌋

end

end A136082.P49873672964616638

/-! ## A136082.P15518910198144672950

`ceil(A008683(A151800(n))+A136074(n+1)/11)`
-/

namespace A136082.P15518910198144672950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A151800 n).toNat : ℚ) + (A136074 (n + 1) : ℚ) / 11⌉

end

end A136082.P15518910198144672950

/-! ## A136082.P12588725706862302300

`p?[floor(A141857(n+1)/11)]`
-/

namespace A136082.P12588725706862302300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141857 (n + 1) : ℚ) / 11⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136082.P12588725706862302300

/-! ## A136082.P18261750150369856726

`record[A006530(floor(A141857(n+1)/11))]`
-/

namespace A136082.P18261750150369856726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A141857 (n + 1) : ℚ) / 11⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136082.P18261750150369856726

/-! ## A136082.P17225364971692736859

`record[A014963(floor(A141857(n+1)/11))]`
-/

namespace A136082.P17225364971692736859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊(A141857 (n + 1) : ℚ) / 11⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136082.P17225364971692736859

/-! ## A136082.P15753408689394713203

`p?[lt[A000005(10*(n+1)+n), 3]]`
-/

namespace A136082.P15753408689394713203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (n + 1) + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136082.P15753408689394713203

/-! ## A136082.P6566905771372048031

`p?[eq[1, A001222(A017509(n))]]`
-/

namespace A136082.P6566905771372048031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017509 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136082.P6566905771372048031

/-!
# A136083: Son primes of order 6.

The programs for A136083, the canonical program `A136083.P9300838305206565208` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136083 has offset 1).

The definition of A136083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136083.P9300838305206565208

`floor(A136075(n+1)/13)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136083

/-- `floor(A136075(n+1)/13)` -/
def P9300838305206565208.Spec : Prop :=
  ∀ n, P9300838305206565208.a n = A136083 (n + 1)

theorem P9300838305206565208.correct : P9300838305206565208.Spec := by
  intro n
  simp only [A136083, Nat.add_sub_cancel]

end A136083

/-! ## A136083.P6940687708104236137

`round(A136075(n+1)/13)-A007318(A057944(n))`
-/

namespace A136083.P6940687708104236137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A136075 (n + 1) : ℚ) / 13) - A007318 (A057944 n).toNat

end

end A136083.P6940687708104236137

namespace A136083

/-- `round(A136075(n+1)/13)-A007318(A057944(n))` -/
def P6940687708104236137.Spec : Prop :=
  ∀ n, P6940687708104236137.a n = A136083 (n + 1)

end A136083

/-! ## A136083.P18152309118041441254

`A000027(round(A136075(n+1)/13)-1)`
-/

namespace A136083.P18152309118041441254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A136075 (n + 1) : ℚ) / 13) - 1).toNat

end

end A136083.P18152309118041441254

namespace A136083

/-- `A000027(round(A136075(n+1)/13)-1)` -/
def P18152309118041441254.Spec : Prop :=
  ∀ n, P18152309118041441254.a n = A136083 (n + 1)

end A136083

/-! ## A136083.P16737911937173510116

`A000265(ceil(A136075(n+1)/13)-1)`
-/

namespace A136083.P16737911937173510116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (⌈(A136075 (n + 1) : ℚ) / 13⌉ - 1).toNat

end

end A136083.P16737911937173510116

namespace A136083

/-- `A000265(ceil(A136075(n+1)/13)-1)` -/
def P16737911937173510116.Spec : Prop :=
  ∀ n, P16737911937173510116.a n = A136083 (n + 1)

end A136083

/-! ## A136083.P10206020986797744715

`A006530(round(A136075(n+1)/13)-1)`
-/

namespace A136083.P10206020986797744715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A136075 (n + 1) : ℚ) / 13) - 1).toNat

end

end A136083.P10206020986797744715

namespace A136083

/-- `A006530(round(A136075(n+1)/13)-1)` -/
def P10206020986797744715.Spec : Prop :=
  ∀ n, P10206020986797744715.a n = A136083 (n + 1)

end A136083

/-! ## A136083.P645348041506945083

`A004273(ceil(A136075(n+1)/13)/2)`
-/

namespace A136083.P645348041506945083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((⌈(A136075 (n + 1) : ℚ) / 13⌉ : ℚ) / 2)).toNat

end

end A136083.P645348041506945083

namespace A136083

/-- `A004273(ceil(A136075(n+1)/13)/2)` -/
def P645348041506945083.Spec : Prop :=
  ∀ n, P645348041506945083.a n = A136083 (n + 1)

end A136083

/-! ## A136083.P451415686701539382

`A014681(round(A136075(n+1)/13))`
-/

namespace A136083.P451415686701539382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway ((A136075 (n + 1) : ℚ) / 13)).toNat

end

end A136083.P451415686701539382

namespace A136083

/-- `A014681(round(A136075(n+1)/13))` -/
def P451415686701539382.Spec : Prop :=
  ∀ n, P451415686701539382.a n = A136083 (n + 1)

end A136083

/-! ## A136083.P13097604936462373186

`A014963(ceil(A136075(n+1)/13)-1)`
-/

namespace A136083.P13097604936462373186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (⌈(A136075 (n + 1) : ℚ) / 13⌉ - 1).toNat

end

end A136083.P13097604936462373186

namespace A136083

/-- `A014963(ceil(A136075(n+1)/13)-1)` -/
def P13097604936462373186.Spec : Prop :=
  ∀ n, P13097604936462373186.a n = A136083 (n + 1)

end A136083

/-! ## A136083.P16957887812719478337

`A026741(ceil(A136075(n+1)/13)-1)`
-/

namespace A136083.P16957887812719478337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (⌈(A136075 (n + 1) : ℚ) / 13⌉ - 1).toNat

end

end A136083.P16957887812719478337

namespace A136083

/-- `A026741(ceil(A136075(n+1)/13)-1)` -/
def P16957887812719478337.Spec : Prop :=
  ∀ n, P16957887812719478337.a n = A136083 (n + 1)

end A136083

/-! ## A136083.P13566302544899628256

`A014963(round(A136075(n+1)/13)-1)`
-/

namespace A136083.P13566302544899628256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A136075 (n + 1) : ℚ) / 13) - 1).toNat

end

end A136083.P13566302544899628256

namespace A136083

/-- `A014963(round(A136075(n+1)/13)-1)` -/
def P13566302544899628256.Spec : Prop :=
  ∀ n, P13566302544899628256.a n = A136083 (n + 1)

end A136083

/-! ## A136083.P14855467826713673327

`round(A136075(n+1)/13)-A007318(∑[n+1])`
-/

namespace A136083.P14855467826713673327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A136075 (n + 1) : ℚ) / 13) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136083.P14855467826713673327

namespace A136083

/-- `round(A136075(n+1)/13)-A007318(∑[n+1])` -/
def P14855467826713673327.Spec : Prop :=
  ∀ n, P14855467826713673327.a n = A136083 (n + 1)

end A136083

/-!
# A136084: Son primes of order 7.

The programs for A136084, the canonical program `A136084.P3655251885475289472` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136084 has offset 1).

The definition of A136084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136084.P15524156043093553991

`p?[n*A001222(15*(n+1)-1)]`
-/

namespace A136084.P15524156043093553991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (15 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136084.P15524156043093553991

namespace A136084

/-- `p?[n*A001222(15*(n+1)-1)]` -/
def P15524156043093553991.Spec : Prop :=
  ∀ n, P15524156043093553991.a n = A136084 (n + 1)

end A136084

/-! ## A136084.P2398781153787534385

`p?[n*A001221(3*5*n+14)]`
-/

namespace A136084.P2398781153787534385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (3 * (5 * n) + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136084.P2398781153787534385

namespace A136084

/-- `p?[n*A001221(3*5*n+14)]` -/
def P2398781153787534385.Spec : Prop :=
  ∀ n, P2398781153787534385.a n = A136084 (n + 1)

end A136084

/-! ## A136084.P3655251885475289472

`p?[A004396(A102700(n+1)-1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136084

/-- `p?[A004396(A102700(n+1)-1)]` -/
def P3655251885475289472.Spec : Prop :=
  ∀ n, P3655251885475289472.a n = A136084 (n + 1)

theorem P3655251885475289472.correct : P3655251885475289472.Spec := by
  intro n
  simp only [A136084, Nat.add_sub_cancel]

end A136084

/-! ## A136084.P17945233635515994405

`p?[n*A010051(A084967(n+1)+4)]`
-/

namespace A136084.P17945233635515994405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (A084967 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136084.P17945233635515994405

namespace A136084

/-- `p?[n*A010051(A084967(n+1)+4)]` -/
def P17945233635515994405.Spec : Prop :=
  ∀ n, P17945233635515994405.a n = A136084 (n + 1)

end A136084

/-! ## A136084.P7626322749463271682

`p?[eq[2, A000005(A175887(2*(n+1)))]]`
-/

namespace A136084.P7626322749463271682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175887 (2 * (n + 1))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136084.P7626322749463271682

namespace A136084

/-- `p?[eq[2, A000005(A175887(2*(n+1)))]]` -/
def P7626322749463271682.Spec : Prop :=
  ∀ n, (P7626322749463271682.a n : ℤ) = A136084 (n + 1)

end A136084

/-! ## A136084.P6867465682207341633

`p?[n-A325962(A325962(15*(n+1)))]`
-/

namespace A136084.P6867465682207341633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A325962 (A325962 (15 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136084.P6867465682207341633

namespace A136084

/-- `p?[n-A325962(A325962(15*(n+1)))]` -/
def P6867465682207341633.Spec : Prop :=
  ∀ n, P6867465682207341633.a n = A136084 (n + 1)

end A136084

/-! ## A136084.P863132977266263503

`p?[n%A014963(A257645(n))]`
-/

namespace A136084.P863132977266263503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (A257645 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136084.P863132977266263503

namespace A136084

/-- `p?[n%A014963(A257645(n))]` -/
def P863132977266263503.Spec : Prop :=
  ∀ n, P863132977266263503.a n = A136084 (n + 1)

end A136084

/-! ## A136084.P8844534639962203214

`p?[n*A032741(A267747(n+2)-1)]`
-/

namespace A136084.P8844534639962203214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A267747 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136084.P8844534639962203214

namespace A136084

/-- `p?[n*A032741(A267747(n+2)-1)]` -/
def P8844534639962203214.Spec : Prop :=
  ∀ n, P8844534639962203214.a n = A136084 (n + 1)

end A136084

/-!
# A136085: Son primes of order 8.

The programs for A136085, there is no canonical definition to state claims against.
-/

/-! ## A136085.P12547281840011889881

`floor(A136077(n+1)/17)`
-/

namespace A136085.P12547281840011889881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136077 (n + 1) : ℚ) / 17⌋

end

end A136085.P12547281840011889881

/-! ## A136085.P15769914952975590993

`ceil(A136077(or(n, char[1])+1)/17)-1`
-/

namespace A136085.P15769914952975590993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136077 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0) + 1) : ℚ) / 17⌉ - 1

end

end A136085.P15769914952975590993

/-! ## A136085.P6196400358089571711

`ceil(A136077(n+1)/17-A081729(A008587(n))²)`
-/

namespace A136085.P6196400358089571711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136077 (n + 1) : ℚ) / 17 - (A081729 (A008587 n).toNat ^ 2 : ℚ)⌉

end

end A136085.P6196400358089571711

/-! ## A136085.P16637889511249407259

`p?[floor(A140541(n+1)/17)]`
-/

namespace A136085.P16637889511249407259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A140541 (n + 1) : ℚ) / 17⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136085.P16637889511249407259

/-! ## A136085.P18417993752051386064

`record[A020639(floor(A140541(n+1)/17))]`
-/

namespace A136085.P18417993752051386064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A140541 (n + 1) : ℚ) / 17⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136085.P18417993752051386064

/-! ## A136085.P13555748529417246972

`record[A014963(floor(A140541(n+1)/17))]`
-/

namespace A136085.P13555748529417246972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊(A140541 (n + 1) : ℚ) / 17⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136085.P13555748529417246972

/-!
# A136086: Son primes of order 9.

The programs for A136086, there is no canonical definition to state claims against.
-/

/-! ## A136086.P9387876455501993537

`floor(A136078(n+1)/19)`
-/

namespace A136086.P9387876455501993537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136078 (n + 1) : ℚ) / 19⌋

end

end A136086.P9387876455501993537

/-! ## A136086.P11800717194427572433

`p?[A138639(n+1)-1]`
-/

namespace A136086.P11800717194427572433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138639 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136086.P11800717194427572433

/-! ## A136086.P10464723744873253189

`p?[A138638(n+1)%A138639(n+1)]`
-/

namespace A136086.P10464723744873253189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138638 (n + 1)) (A138639 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136086.P10464723744873253189

/-! ## A136086.P16601480621447900118

`p?[A004273(A138639(n+1)/2)]`
-/

namespace A136086.P16601480621447900118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A138639 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136086.P16601480621447900118

/-! ## A136086.P4623982722658531382

`p?[A014681(A138639(n+1))]`
-/

namespace A136086.P4623982722658531382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A138639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136086.P4623982722658531382

/-! ## A136086.P5110879598124478348

`p?[n*A001222(19*(n+1)-1)]`
-/

namespace A136086.P5110879598124478348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (19 * (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136086.P5110879598124478348

/-! ## A136086.P6016470919679668394

`p?[lt[A000005(18*(n+1)+n)², 14]]`
-/

namespace A136086.P6016470919679668394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (18 * (n + 1) + n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136086.P6016470919679668394

/-!
# A136087: Son primes of order 10.

The programs for A136087, the canonical program `A136087.P18288110956482578539` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136087 has offset 1).

The definition of A136087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136087.P18288110956482578539

`floor(A136079(n+1)/21)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136087

/-- `floor(A136079(n+1)/21)` -/
def P18288110956482578539.Spec : Prop :=
  ∀ n, P18288110956482578539.a n = A136087 (n + 1)

theorem P18288110956482578539.correct : P18288110956482578539.Spec := by
  intro n
  simp only [A136087, Nat.add_sub_cancel]

end A136087

/-! ## A136087.P17805458593834382423

`p?[floor(A045473(n+1)/21)]`
-/

namespace A136087.P17805458593834382423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045473 (n + 1) : ℚ) / 21⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136087.P17805458593834382423

namespace A136087

/-- `p?[floor(A045473(n+1)/21)]` -/
def P17805458593834382423.Spec : Prop :=
  ∀ n, P17805458593834382423.a n = A136087 (n + 1)

end A136087

/-! ## A136087.P10785025776815732147

`p?[A138622(n+1)-A090701(A138622(n+1))]`
-/

namespace A136087.P10785025776815732147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138622 (n + 1) - A090701 (A138622 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136087.P10785025776815732147

namespace A136087

/-- `p?[A138622(n+1)-A090701(A138622(n+1))]` -/
def P10785025776815732147.Spec : Prop :=
  ∀ n, P10785025776815732147.a n = A136087 (n + 1)

end A136087

/-! ## A136087.P8673678620341304207

`p?[A004396(A138622(n+1)-1)]`
-/

namespace A136087.P8673678620341304207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A138622 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136087.P8673678620341304207

namespace A136087

/-- `p?[A004396(A138622(n+1)-1)]` -/
def P8673678620341304207.Spec : Prop :=
  ∀ n, P8673678620341304207.a n = A136087 (n + 1)

end A136087

/-! ## A136087.P6422028607571421688

`p?[n*A001222(20*(n+1)+n)]`
-/

namespace A136087.P6422028607571421688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (20 * (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136087.P6422028607571421688

namespace A136087

/-- `p?[n*A001222(20*(n+1)+n)]` -/
def P6422028607571421688.Spec : Prop :=
  ∀ n, P6422028607571421688.a n = A136087 (n + 1)

end A136087

/-! ## A136087.P2643676062523947650

`p?[eq[2, A000005(A258016(n+1)+2)]]`
-/

namespace A136087.P2643676062523947650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A258016 (n + 1) + 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136087.P2643676062523947650

namespace A136087

/-- `p?[eq[2, A000005(A258016(n+1)+2)]]` -/
def P2643676062523947650.Spec : Prop :=
  ∀ n, (P2643676062523947650.a n : ℤ) = A136087 (n + 1)

end A136087

/-! ## A136087.P18231723660721043857

`p?[A002264(A024900(n+1))]`
-/

namespace A136087.P18231723660721043857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A024900 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136087.P18231723660721043857

namespace A136087

/-- `p?[A002264(A024900(n+1))]` -/
def P18231723660721043857.Spec : Prop :=
  ∀ n, P18231723660721043857.a n = A136087 (n + 1)

end A136087

/-! ## A136087.P1637509755989792335

`p?[A002264(A004273(A138622(n+1)))]`
-/

namespace A136087.P1637509755989792335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004273 (A138622 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136087.P1637509755989792335

namespace A136087

/-- `p?[A002264(A004273(A138622(n+1)))]` -/
def P1637509755989792335.Spec : Prop :=
  ∀ n, P1637509755989792335.a n = A136087 (n + 1)

end A136087

/-! ## A136087.P16325334561698663833

`p?[n*A004874(A000005(3*7*n+20))]`
-/

namespace A136087.P16325334561698663833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004874 (A000005 (3 * (7 * n) + 20)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136087.P16325334561698663833

namespace A136087

/-- `p?[n*A004874(A000005(3*7*n+20))]` -/
def P16325334561698663833.Spec : Prop :=
  ∀ n, P16325334561698663833.a n = A136087 (n + 1)

end A136087

/-!
# A136088: Son primes of order 11.

The programs for A136088, the canonical program `A136088.P4566538024030285443` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136088 has offset 1).

The definition of A136088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136088.P4566538024030285443

`floor(A136080(n+1)/23)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A136088

/-- `floor(A136080(n+1)/23)` -/
def P4566538024030285443.Spec : Prop :=
  ∀ n, P4566538024030285443.a n = A136088 (n + 1)

theorem P4566538024030285443.correct : P4566538024030285443.Spec := by
  intro n
  simp only [A136088, Nat.add_sub_cancel]

end A136088

/-! ## A136088.P2990278255078370246

`ceil(A136080(C(n+1, n))/23)-1`
-/

namespace A136088.P2990278255078370246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136080 (Nat.choose (n + 1) n) : ℚ) / 23⌉ - 1

end

end A136088.P2990278255078370246

namespace A136088

/-- `ceil(A136080(C(n+1, n))/23)-1` -/
def P2990278255078370246.Spec : Prop :=
  ∀ n, P2990278255078370246.a n = A136088 (n + 1)

end A136088

/-! ## A136088.P2904614274919909872

`ceil(A136080(A023443(n)+2)/23)-1`
-/

namespace A136088.P2904614274919909872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136080 (A023443 n + 2).toNat : ℚ) / 23⌉ - 1

end

end A136088.P2904614274919909872

namespace A136088

/-- `ceil(A136080(A023443(n)+2)/23)-1` -/
def P2904614274919909872.Spec : Prop :=
  ∀ n, P2904614274919909872.a n = A136088 (n + 1)

end A136088

/-! ## A136088.P16041840199474648556

`ceil(A136080(n+1)/23-A045847(A057944(n)))`
-/

namespace A136088.P16041840199474648556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136080 (n + 1) : ℚ) / 23 - (A045847 (A057944 n).toNat : ℚ)⌉

end

end A136088.P16041840199474648556

namespace A136088

/-- `ceil(A136080(n+1)/23-A045847(A057944(n)))` -/
def P16041840199474648556.Spec : Prop :=
  ∀ n, P16041840199474648556.a n = A136088 (n + 1)

end A136088

/-! ## A136088.P6091245005160937027

`∩[A003627(n+1), ceil(A136080(n+1)/23)-1]`
-/

namespace A136088.P6091245005160937027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136080 (n + 1) : ℚ) / 23⌉ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136088.P6091245005160937027

namespace A136088

/-- `∩[A003627(n+1), ceil(A136080(n+1)/23)-1]` -/
def P6091245005160937027.Spec : Prop :=
  ∀ n, (P6091245005160937027.a n : ℤ) = A136088 (n + 1)

end A136088

/-! ## A136088.P987385046158891058

`A020639(ceil(A136080(n+1)/23)-1)`
-/

namespace A136088.P987385046158891058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌈(A136080 (n + 1) : ℚ) / 23⌉ - 1).toNat

end

end A136088.P987385046158891058

namespace A136088

/-- `A020639(ceil(A136080(n+1)/23)-1)` -/
def P987385046158891058.Spec : Prop :=
  ∀ n, P987385046158891058.a n = A136088 (n + 1)

end A136088

/-! ## A136088.P15553949723028431299

`ceil(A136080(n+1)/23)-A032741(A051071(n+8))`
-/

namespace A136088.P15553949723028431299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136080 (n + 1) : ℚ) / 23⌉ - A032741 (A051071 (n + 8)).toNat

end

end A136088.P15553949723028431299

namespace A136088

/-- `ceil(A136080(n+1)/23)-A032741(A051071(n+8))` -/
def P15553949723028431299.Spec : Prop :=
  ∀ n, P15553949723028431299.a n = A136088 (n + 1)

end A136088

/-! ## A136088.P236091378424939690

`A014963(ceil(A136080(n+1)/23)-1)`
-/

namespace A136088.P236091378424939690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (⌈(A136080 (n + 1) : ℚ) / 23⌉ - 1).toNat

end

end A136088.P236091378424939690

namespace A136088

/-- `A014963(ceil(A136080(n+1)/23)-1)` -/
def P236091378424939690.Spec : Prop :=
  ∀ n, P236091378424939690.a n = A136088 (n + 1)

end A136088

/-!
# A136089: Son primes of order 12.

The programs for A136089, the canonical program `A136089.P14255672139635616555` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136089 has offset 1).

The definition of A136089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136089.P14255672139635616555

`record[A006530(A141946(n+1)-24)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A136089

/-- `record[A006530(A141946(n+1)-24)]` -/
def P14255672139635616555.Spec : Prop :=
  ∀ n, P14255672139635616555.a n = A136089 (n + 1)

theorem P14255672139635616555.correct : P14255672139635616555.Spec := by
  intro n
  simp only [A136089, Nat.add_sub_cancel]

end A136089

/-! ## A136089.P5726214069178866336

`eq[A323161(25*(n+1)), A323161(n+1)]`
-/

namespace A136089.P5726214069178866336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (25 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136089.P5726214069178866336

namespace A136089

/-- `eq[A323161(25*(n+1)), A323161(n+1)]` -/
def P5726214069178866336.Spec : Prop :=
  ∀ n, (P5726214069178866336.a n : ℤ) = A136089 (n + 1)

end A136089

/-! ## A136089.P6185451999612429153

`p?[(n+1)*A001222(A055671(n+1)+n+1)]`
-/

namespace A136089.P6185451999612429153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A055671 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136089.P6185451999612429153

namespace A136089

/-- `p?[(n+1)*A001222(A055671(n+1)+n+1)]` -/
def P6185451999612429153.Spec : Prop :=
  ∀ n, P6185451999612429153.a n = A136089 (n + 1)

end A136089

/-! ## A136089.P9460288337402163055

`eq[1, A003415(A055671(n)+n)]`
-/

namespace A136089.P9460288337402163055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A055671 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136089.P9460288337402163055

namespace A136089

/-- `eq[1, A003415(A055671(n)+n)]` -/
def P9460288337402163055.Spec : Prop :=
  ∀ n, (P9460288337402163055.a n : ℤ) = A136089 (n + 1)

end A136089

/-! ## A136089.P16255884350107854255

`eq[1, A032741(A055671(n)+n)]`
-/

namespace A136089.P16255884350107854255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A055671 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136089.P16255884350107854255

namespace A136089

/-- `eq[1, A032741(A055671(n)+n)]` -/
def P16255884350107854255.Spec : Prop :=
  ∀ n, (P16255884350107854255.a n : ℤ) = A136089 (n + 1)

end A136089

/-!
# A136090: Son primes of order 13.

The programs for A136090, the canonical program `A136090.P14818986857721816505` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136090 has offset 1).

The definition of A136090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136090.P14818986857721816505

`p?[A006369(A138918(n+1))-1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A136090

/-- `p?[A006369(A138918(n+1))-1]` -/
def P14818986857721816505.Spec : Prop :=
  ∀ n, P14818986857721816505.a n = A136090 (n + 1)

theorem P14818986857721816505.correct : P14818986857721816505.Spec := by
  intro n
  simp only [A136090, Nat.add_sub_cancel]

end A136090

/-! ## A136090.P11110062005433329567

`p?[A066182(A006369(A138918(n+1)))]`
-/

namespace A136090.P11110062005433329567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A006369 (A138918 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136090.P11110062005433329567

namespace A136090

/-- `p?[A066182(A006369(A138918(n+1)))]` -/
def P11110062005433329567.Spec : Prop :=
  ∀ n, P11110062005433329567.a n = A136090 (n + 1)

end A136090

/-! ## A136090.P5762624387842576796

`p?[A075743(A239129(n+1))+2*n]`
-/

namespace A136090.P5762624387842576796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (A239129 (n + 1)).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136090.P5762624387842576796

namespace A136090

/-- `p?[A075743(A239129(n+1))+2*n]` -/
def P5762624387842576796.Spec : Prop :=
  ∀ n, P5762624387842576796.a n = A136090 (n + 1)

end A136090

/-! ## A136090.P601004659706880041

`p?[A103517(n)-A075743(A239129(n+1))]`
-/

namespace A136090.P601004659706880041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A075743 (A239129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136090.P601004659706880041

namespace A136090

/-- `p?[A103517(n)-A075743(A239129(n+1))]` -/
def P601004659706880041.Spec : Prop :=
  ∀ n, P601004659706880041.a n = A136090 (n + 1)

end A136090

/-! ## A136090.P17141081905864226562

`p?[A005408(n)*A075743(A239129(n+1))]`
-/

namespace A136090.P17141081905864226562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A075743 (A239129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136090.P17141081905864226562

namespace A136090

/-- `p?[A005408(n)*A075743(A239129(n+1))]` -/
def P17141081905864226562.Spec : Prop :=
  ∀ n, P17141081905864226562.a n = A136090 (n + 1)

end A136090

/-!
# A136091: Son primes of order 14.

The programs for A136091, there is no canonical definition to state claims against.
-/

/-! ## A136091.P14566523098481246060

`p?[gcd(A033886(n), A129809(n+1))]`
-/

namespace A136091.P14566523098481246060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033886 n) (A129809 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A136091.P14566523098481246060

/-! ## A136091.P1284952451028855081

`A088081(A050889(n+2))`
-/

namespace A136091.P1284952451028855081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088081 (A050889 (n + 2)).toNat

end

end A136091.P1284952451028855081

/-! ## A136091.P12007513871547650115

`filter[A129809(n+1), A118006(#)]`
-/

namespace A136091.P12007513871547650115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118006 (f1 j).toNat = 1) n)

end

end A136091.P12007513871547650115

/-!
# A136092: Bisection of A138540.

The programs for A136092, there is no canonical definition to state claims against.
-/

/-! ## A136092.P1040945791894606138

`A138540(2*n)`
-/

namespace A136092.P1040945791894606138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138540 (2 * n)

end

end A136092.P1040945791894606138

/-! ## A136092.P1962440564707487765

`abs(record[Δ[A138540(n)]])`
-/

namespace A136092.P1962440564707487765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A136092.P1962440564707487765

/-! ## A136092.P1543408818657810863

`A000007(n)+record[A138540(n+1)]`
-/

namespace A136092.P1543408818657810863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136092.P1543408818657810863

/-! ## A136092.P4732178214349863148

`A138540(A005843(n))^gcd(n, n+1)`
-/

namespace A136092.P4732178214349863148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138540 (A005843 n).toNat ^ Nat.gcd n (n + 1)

end

end A136092.P4732178214349863148

/-! ## A136092.P11509280848225179807

`ceil(record[A138540(n)/A316665(n+1)])`
-/

namespace A136092.P11509280848225179807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138540 n : ℚ) / (A316665 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A136092.P11509280848225179807

/-!
# A136093: A generalized ( Shabat) type tree transformed Chebyshev recursion where: P(x,n)->C*P(c*x+d,n)+D: C=-1;c=-1;D=1;d=1: with substitution: x-1->x; as a triangular sequence of coefficients.

The programs for A136093, there is no canonical definition to state claims against.
-/

/-! ## A136093.P8734885893767035034

`A049310(n)-A010054(A128883(n+3))`
-/

namespace A136093.P8734885893767035034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n - A010054 (A128883 (n + 3)).toNat

end

end A136093.P8734885893767035034

/-! ## A136093.P2340678763771601178

`A049310(n)-A337383(A102403(n))`
-/

namespace A136093.P2340678763771601178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n - A337383 (A102403 n).toNat

end

end A136093.P2340678763771601178

/-! ## A136093.P15023805986073440137

`A049310(n)-A112765(A033690(2*(n+2)))`
-/

namespace A136093.P15023805986073440137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n - A112765 (A033690 (2 * (n + 2))).toNat

end

end A136093.P15023805986073440137

/-! ## A136093.P3271161074815461645

`A049310(n)-A266170(A179926(2*(n+2)))`
-/

namespace A136093.P3271161074815461645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n - A266170 (A179926 (2 * (n + 2))).toNat

end

end A136093.P3271161074815461645

/-! ## A136093.P1692716169089744530

`A117164(A168290(n))+A049310(n)`
-/

namespace A136093.P1692716169089744530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117164 (A168290 n).toNat + A049310 n

end

end A136093.P1692716169089744530

/-!
# A136096: Ratios of consecutive terms of A135060, or 0 if quotient is not an integer.

The programs for A136096, there is no canonical definition to state claims against.
-/

/-! ## A136096.P5406700119662425292

`ratio[A135060(A077168(n))]`
-/

namespace A136096.P5406700119662425292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A077168 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A136096.P5406700119662425292

/-! ## A136096.P10125464307420606496

`ratio[A135060(A043319(n+1))]`
-/

namespace A136096.P10125464307420606496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135060 (A043319 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A136096.P10125464307420606496

/-! ## A136096.P16453312723442711312

`p?[A181105(n+1)]-A343023(n+1)`
-/

namespace A136096.P16453312723442711312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A343023 (n + 1)

end

end A136096.P16453312723442711312

/-! ## A136096.P127567680680836445

`gcd(p?[A181105(n+1)], A063932(n+2))`
-/

namespace A136096.P127567680680836445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181105 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A063932 (n + 2))

end

end A136096.P127567680680836445

/-! ## A136096.P5978957047886398435

`A258409(n+2)+A008966(A324166(n))`
-/

namespace A136096.P5978957047886398435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258409 (n + 2) + A008966 (A324166 n).toNat

end

end A136096.P5978957047886398435

/-!
# A136097: a(n) = A135951(n) /[(2^(n+1)-1) * 2^(n*(n-1)/2)].

The programs for A136097, there is no canonical definition to state claims against.
-/

/-! ## A136097.P14983703689609362145

`(-1)^n*A015030(n)`
-/

namespace A136097.P14983703689609362145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015030 n

end

end A136097.P14983703689609362145

/-! ## A136097.P15821307591741963804

`A135951(n)/((2^(n+1)-1)*2^(n*(n-1)/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136097.P15821307591741963804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A135951 n : ℝ) / (((2 ^ (n + 1) : ℤ) - 1 : ℝ) * (2 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ))

end

end A136097.P15821307591741963804

/-! ## A136097.P901796100402993453

`A015030(n)*A033999(n)`
-/

namespace A136097.P901796100402993453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015030 n * A033999 n

end

end A136097.P901796100402993453

/-! ## A136097.P2342728802779165102

`xor(-A010673(n), A015030(n))`
-/

namespace A136097.P2342728802779165102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A010673 n) (A015030 n)

end

end A136097.P2342728802779165102

/-!
# A136098: Prime palindromic cyclops numbers.

The programs for A136098, there is no canonical definition to state claims against.
-/

/-! ## A136098.P2533986405642763783

`∩[A002385(n+1), A138131(n+1)]`
-/

namespace A136098.P2533986405642763783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P2533986405642763783

/-! ## A136098.P8262877410668547751

`∩[A071783(n+1), A138131(n+1)]`
-/

namespace A136098.P8262877410668547751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P8262877410668547751

/-! ## A136098.P14926458338571542150

`∩[A076613(n+1), A138131(n+1)]`
-/

namespace A136098.P14926458338571542150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P14926458338571542150

/-! ## A136098.P12759726089531351206

`∩[A082435(n+1), A138131(n+1)]`
-/

namespace A136098.P12759726089531351206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P12759726089531351206

/-! ## A136098.P8849210273385323929

`∩[A072299(n+1), A138131(n+1)]`
-/

namespace A136098.P8849210273385323929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P8849210273385323929

/-! ## A136098.P3815227794181766874

`∩[A138131(n+1), A169829(n+1)]`
-/

namespace A136098.P3815227794181766874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P3815227794181766874

/-! ## A136098.P12491989870727583784

`∩[A071783(n+1), A393807(n+1)]`
-/

namespace A136098.P12491989870727583784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P12491989870727583784

/-! ## A136098.P15958151004296820319

`∩[A084092(n+1), A138131(n+1)]`
-/

namespace A136098.P15958151004296820319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P15958151004296820319

/-! ## A136098.P4854106065995185413

`∩[A138131(n+1), A350836(n+1)]`
-/

namespace A136098.P4854106065995185413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P4854106065995185413

/-! ## A136098.P13360067793408252578

`∩[A072382(n+1), A138131(n+1)]`
-/

namespace A136098.P13360067793408252578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A136098.P13360067793408252578

/-!
# A136099: Triangle read by rows: the number of ways to factor 5*2^(n-k)*3^k, columns 0<=k<=n, rows n>=0.

The programs for A136099, there is no canonical definition to state claims against.
-/

/-! ## A136099.P2224143618189441330

`A001055(5*A036561(n))`
-/

namespace A136099.P2224143618189441330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (5 * A036561 n).toNat

end

end A136099.P2224143618189441330

/-! ## A136099.P13973807673149506138

`A318284(2*A146985(n))`
-/

namespace A136099.P13973807673149506138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (2 * A146985 n).toNat

end

end A136099.P13973807673149506138

/-! ## A136099.P508645685313737493

`∑{d}[A036561(n), A353378(#)]`
-/

namespace A136099.P508645685313737493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A353378 d

end

end A136099.P508645685313737493

/-! ## A136099.P15552538250643346486

`∑{d}[A175840(n), A353378(#)]`
-/

namespace A136099.P15552538250643346486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A353378 d

end

end A136099.P15552538250643346486

/-! ## A136099.P17440652725712996042

`A318284(A146985(n)+A146985(n))`
-/

namespace A136099.P17440652725712996042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A146985 n + A146985 n).toNat

end

end A136099.P17440652725712996042

/-! ## A136099.P85239446235396951

`∑{d}[A278222(A089633(n)), A001055(#)]`
-/

namespace A136099.P85239446235396951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A089633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001055 d

end

end A136099.P85239446235396951

/-! ## A136099.P12593009823466383821

`A318284(A008585(A146985(n))-A146985(n))`
-/

namespace A136099.P12593009823466383821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A008585 (A146985 n).toNat - A146985 n).toNat

end

end A136099.P12593009823466383821

/-! ## A136099.P273438341121167556

`A057567(A036561(n))`
-/

namespace A136099.P273438341121167556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (A036561 n).toNat

end

end A136099.P273438341121167556

/-! ## A136099.P1970740788485699784

`A057567(A082234(n+1))`
-/

namespace A136099.P1970740788485699784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (A082234 (n + 1)).toNat

end

end A136099.P1970740788485699784

/-! ## A136099.P3747569507968743180

`A057567(A230445(n)+1)`
-/

namespace A136099.P3747569507968743180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057567 (A230445 n + 1).toNat

end

end A136099.P3747569507968743180

