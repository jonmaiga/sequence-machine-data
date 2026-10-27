import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A389401: Composite numbers that divide at least one term in every Fibonacci sequence.

The programs for A389401, there is no canonical definition to state claims against.
-/

/-! ## A389401.P10765083000940142255

`∩[A064414(n+1), A193305(n+1)]`
-/

namespace A389401.P10765083000940142255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P10765083000940142255

/-! ## A389401.P7487490849582849967

`filter[A064414(n+1), A066247(#)]`
-/

namespace A389401.P7487490849582849967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A389401.P7487490849582849967

/-! ## A389401.P2144940456624176199

`filter[A064414(n+2), A005171(#)]`
-/

namespace A389401.P2144940456624176199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A389401.P2144940456624176199

/-! ## A389401.P3411997526271766571

`∩[A002808(n+1), A064414(n+1)]`
-/

namespace A389401.P3411997526271766571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P3411997526271766571

/-! ## A389401.P10218867469451370879

`∩[A064414(n+1), A300079(n+1)]`
-/

namespace A389401.P10218867469451370879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P10218867469451370879

/-! ## A389401.P2186050357424905998

`∩[A064414(n+1), A132858(n+1)]`
-/

namespace A389401.P2186050357424905998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P2186050357424905998

/-! ## A389401.P15365246031953354777

`∩[A060679(n+1), A064414(n+1)]`
-/

namespace A389401.P15365246031953354777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P15365246031953354777

/-! ## A389401.P6994008011020799428

`∩[A064414(n+1), A179891(n+1)]`
-/

namespace A389401.P6994008011020799428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P6994008011020799428

/-! ## A389401.P16193661201061963093

`∩[A064414(n+1), A192506(n+1)]`
-/

namespace A389401.P16193661201061963093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P16193661201061963093

/-! ## A389401.P4283465294646669029

`∩[A064414(n+1), A391939(n+1)]`
-/

namespace A389401.P4283465294646669029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389401.P4283465294646669029

/-!
# A389402: Expansion of (1/x) * Series_Reversion( x * (1 - x - x / (1 - x)^3) ).

The programs for A389402, there is no canonical definition to state claims against.
-/

/-! ## A389402.P12098941965165195412

`A363484(A008154(n))`
-/

namespace A389402.P12098941965165195412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363484 (A008154 n).toNat

end

end A389402.P12098941965165195412

/-!
# A389403: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^2 / (1 - x)^3) ).

The programs for A389403, there is no canonical definition to state claims against.
-/

/-! ## A389403.P3733385573420513192

`A259178(or(floor((2*n+1)/3), A188678(n)))`
-/

namespace A389403.P3733385573420513192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (Int.lor ⌊(2 * n + 1 : ℚ) / 3⌋ (A188678 n)).toNat

end

end A389403.P3733385573420513192

/-! ## A389403.P13030694631540200207

`A391064(n)-A003462(A051118(n))`
-/

namespace A389403.P13030694631540200207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391064 n - A003462 (A051118 n).toNat

end

end A389403.P13030694631540200207

/-!
# A389404: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^3 / (1 - x)^3) ).

The programs for A389404, there is no canonical definition to state claims against.
-/

/-! ## A389404.P7452661322613984135

`A195174(A151468(n+1))`
-/

namespace A389404.P7452661322613984135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A151468 (n + 1)).toNat

end

end A389404.P7452661322613984135

/-! ## A389404.P10829002714382590786

`A228039(A001187(n))+A129158(n)`
-/

namespace A389404.P10829002714382590786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 (A001187 n).toNat + A129158 n

end

end A389404.P10829002714382590786

/-! ## A389404.P1592375829401733569

`A271344(A000669(n+1))+A129158(n)`
-/

namespace A389404.P1592375829401733569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271344 (A000669 (n + 1)).toNat + A129158 n

end

end A389404.P1592375829401733569

/-!
# A389405: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^5 / (1 - x)) ).

The programs for A389405, there is no canonical definition to state claims against.
-/

/-! ## A389405.P3795963427786995224

`A195119(A176605(n))`
-/

namespace A389405.P3795963427786995224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A176605 n).toNat

end

end A389405.P3795963427786995224

/-! ## A389405.P12849264701176468638

`A111853(A000108(n+2))+1`
-/

namespace A389405.P12849264701176468638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111853 (A000108 (n + 2)).toNat + 1

end

end A389405.P12849264701176468638

/-! ## A389405.P9198949797536874403

`A111858(A000108(n+2)-n)+1`
-/

namespace A389405.P9198949797536874403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111858 (A000108 (n + 2) - (n : ℤ)).toNat + 1

end

end A389405.P9198949797536874403

/-!
# A389408: a(1)=2; thereafter a(n) = a(n-1) + gpf(a(n-1)) - 1, where gpf = greatest prime factor = A006530.

The programs for A389408, the canonical program `A389408.P9215505709923838788` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389408 has offset 1).

The definition of A389408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389408.P9215505709923838788

`a(n-1)+A006530(a(n-1))-1` with `a(0)=2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389408

/-- `a(n-1)+A006530(a(n-1))-1` -/
def P9215505709923838788.Spec : Prop :=
  ∀ n, P9215505709923838788.a n = A389408 (n + 1)

theorem P9215505709923838788.correct : P9215505709923838788.Spec := by
  intro n
  simp only [A389408, Nat.add_sub_cancel]

end A389408

/-! ## A389408.P6255787676919569352

`A070229(a(n-1))-1` with `a(0)=2`
-/

namespace A389408.P6255787676919569352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A070229 (a (n - 1)).toNat - 1

end

end A389408.P6255787676919569352

namespace A389408

/-- `A070229(a(n-1))-1` -/
def P6255787676919569352.Spec : Prop :=
  ∀ n, P6255787676919569352.a n = A389408 (n + 1)

end A389408

/-! ## A389408.P7866191565024067237

`eq[A031268(n+1), A112187(n)]`
-/

namespace A389408.P7866191565024067237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389408.P7866191565024067237

namespace A389408

/-- `eq[A031268(n+1), A112187(n)]` -/
def P7866191565024067237.Spec : Prop :=
  ∀ n, (P7866191565024067237.a n : ℤ) = A389408 (n + 1)

end A389408

/-!
# A389410: Expansion of (1/x) * Series_Reversion( x * (1 - x) / (1 + x^2 / (1 - x)^2) ).

The programs for A389410, there is no canonical definition to state claims against.
-/

/-! ## A389410.P15476089177010224332

`A187182(A211854(n+1))`
-/

namespace A389410.P15476089177010224332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (A211854 (n + 1)).toNat

end

end A389410.P15476089177010224332

/-! ## A389410.P13305569550530884394

`A333217(A279569(n)+A181832(n))`
-/

namespace A389410.P13305569550530884394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (A279569 n + A181832 n).toNat

end

end A389410.P13305569550530884394

/-!
# A389411: Expansion of (1/x) * Series_Reversion( x * (1 - x) / (1 + x^3 / (1 - x)^3) ).

The programs for A389411, there is no canonical definition to state claims against.
-/

/-! ## A389411.P13836632930431300327

`A113769(A244884(n+1))`
-/

namespace A389411.P13836632930431300327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113769 (A244884 (n + 1)).toNat

end

end A389411.P13836632930431300327

/-! ## A389411.P11208950028246176701

`A337635(A150199(n))`
-/

namespace A389411.P11208950028246176701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A150199 n).toNat

end

end A389411.P11208950028246176701

/-! ## A389411.P488696750412339040

`A110266(A149297(n))`
-/

namespace A389411.P488696750412339040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A149297 n).toNat

end

end A389411.P488696750412339040

/-!
# A389412: a(n) is the largest k such that (A005117(n) - 1) + A005117(i) is squarefree for 1 <= i <= k.

The programs for A389412, there is no canonical definition to state claims against.
-/

/-! ## A389412.P120649961578834988

`gcd(A045940(n+1), A067824(A070762(2*n+5)))`
-/

namespace A389412.P120649961578834988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045940 (n + 1)) (A067824 (A070762 (2 * n + 5)).toNat)

end

end A389412.P120649961578834988

/-!
# A389414: Numbers k whose (not necessarily distinct) prime factors can be side lengths of a simple polygon.

The programs for A389414, there is no canonical definition to state claims against.
-/

/-! ## A389414.P6920860721523876429

`∪[A030514(n+1), A392380(n+1)]`
-/

namespace A389414.P6920860721523876429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P6920860721523876429

/-! ## A389414.P10501021834241931582

`∪[A062320(n+1), A392380(n+1)]`
-/

namespace A389414.P10501021834241931582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P10501021834241931582

/-! ## A389414.P15411356500863671251

`∪[A065771(n+1), A392380(n+1)]`
-/

namespace A389414.P15411356500863671251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P15411356500863671251

/-! ## A389414.P11730793602984566616

`∪[A074985(n+1), A392380(n+1)]`
-/

namespace A389414.P11730793602984566616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P11730793602984566616

/-! ## A389414.P18146234442410276333

`∪[A088247(n+1), A392380(n+1)]`
-/

namespace A389414.P18146234442410276333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P18146234442410276333

/-! ## A389414.P17154982159321187276

`∪[A113849(n+1), A392380(n+1)]`
-/

namespace A389414.P17154982159321187276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P17154982159321187276

/-! ## A389414.P6878473020201920020

`∪[A153157(n+1), A392380(n+1)]`
-/

namespace A389414.P6878473020201920020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P6878473020201920020

/-! ## A389414.P17451619400657737277

`∪[A172418(n+1), A392380(n+1)]`
-/

namespace A389414.P17451619400657737277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P17451619400657737277

/-! ## A389414.P15689617096052426654

`∪[A111307(n), A392380(n+1)]`
-/

namespace A389414.P15689617096052426654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389414.P15689617096052426654

/-!
# A389415: a(n) is the number of permutations of 1..n that win this game. Take a shuffled pack of cards labeled 1..n, repeat this: look at the top card's value, X. Move X cards from the top of the deck to the back, one at a time. If you ever end up with the first card back at the top, you win.

The programs for A389415, there is no canonical definition to state claims against.
-/

/-! ## A389415.P12220858295902339939

`A098968(A219232(n)+A208950(n))`
-/

namespace A389415.P12220858295902339939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098968 (A219232 n + A208950 n).toNat

end

end A389415.P12220858295902339939

/-! ## A389415.P11290615363018738831

`A334267(A334270(n))+A309618(n)`
-/

namespace A389415.P11290615363018738831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A334270 n).toNat + A309618 n

end

end A389415.P11290615363018738831

/-!
# A389417: Primes containing at least one substring (not beginning with 0) such that, by doubling it, the resulting number is still prime.

The programs for A389417, there is no canonical definition to state claims against.
-/

/-! ## A389417.P17076568130601051030

`p?[A387526(n+1)]`
-/

namespace A389417.P17076568130601051030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389417.P17076568130601051030

/-! ## A389417.P7094118161389757495

`filter[A387526(n+1), A010051(#)]`
-/

namespace A389417.P7094118161389757495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A389417.P7094118161389757495

/-! ## A389417.P73834679415322382

`filter[A387526(n+1), A323153(#)]`
-/

namespace A389417.P73834679415322382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A389417.P73834679415322382

/-! ## A389417.P158827252070441378

`filter[A387526(n+1), A353670(#)]`
-/

namespace A389417.P158827252070441378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A389417.P158827252070441378

/-! ## A389417.P4808041343953052619

`filter[A387526(n+1), A379969(#)]`
-/

namespace A389417.P4808041343953052619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A389417.P4808041343953052619

/-! ## A389417.P6238618780139379249

`filter[A387526(n+2), A323152(#)]`
-/

namespace A389417.P6238618780139379249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A389417.P6238618780139379249

/-! ## A389417.P15762973776125841117

`filter[A387526(n+2), A340371(#)]`
-/

namespace A389417.P15762973776125841117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A389417.P15762973776125841117

/-! ## A389417.P4344491206752991143

`∩[A000040(n+1), A387526(n+1)]`
-/

namespace A389417.P4344491206752991143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P4344491206752991143

/-! ## A389417.P4572560982522176756

`∩[A001751(n+1), A387526(n+1)]`
-/

namespace A389417.P4572560982522176756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P4572560982522176756

/-! ## A389417.P11570685256616041149

`∩[A004139(n+1), A387526(n+1)]`
-/

namespace A389417.P11570685256616041149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P11570685256616041149

/-! ## A389417.P7243394848473817923

`∩[A038550(n+1), A387526(n+1)]`
-/

namespace A389417.P7243394848473817923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P7243394848473817923

/-! ## A389417.P7807888773757978813

`∩[A045319(n+1), A387526(n+1)]`
-/

namespace A389417.P7807888773757978813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P7807888773757978813

/-! ## A389417.P10726165115567097554

`∩[A045344(n+1), A387526(n+1)]`
-/

namespace A389417.P10726165115567097554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P10726165115567097554

/-! ## A389417.P15346427881407916876

`∩[A051948(n+1), A387526(n+1)]`
-/

namespace A389417.P15346427881407916876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P15346427881407916876

/-! ## A389417.P1276967220256465269

`∩[A053577(n+1), A387526(n+1)]`
-/

namespace A389417.P1276967220256465269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P1276967220256465269

/-! ## A389417.P13741105913856621070

`∩[A053813(n+1), A387526(n+1)]`
-/

namespace A389417.P13741105913856621070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P13741105913856621070

/-! ## A389417.P4737622205736112912

`∩[A058363(n+1), A387526(n+1)]`
-/

namespace A389417.P4737622205736112912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P4737622205736112912

/-! ## A389417.P1575134449911223432

`∩[A065091(n+1), A387526(n+1)]`
-/

namespace A389417.P1575134449911223432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P1575134449911223432

/-! ## A389417.P17927256964378577258

`∩[A066191(n+1), A387526(n+1)]`
-/

namespace A389417.P17927256964378577258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P17927256964378577258

/-! ## A389417.P6838745302778841620

`∩[A066542(n+1), A387526(n+1)]`
-/

namespace A389417.P6838745302778841620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389417.P6838745302778841620

/-!
# A389424: Array read by antidiagonals: T(n,k) is the carryless sum of n + n in base k, n >=0, k >= 2.

The programs for A389424, there is no canonical definition to state claims against.
-/

/-! ## A389424.P15410897328366918079

`A002970(A011782(n))%A116445(n+1)`
-/

namespace A389424.P15410897328366918079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002970 (A011782 n).toNat) (A116445 (n + 1))

end

end A389424.P15410897328366918079

/-! ## A389424.P6653949883790557046

`A375515(n+1)%A032020(A216620(n+1))`
-/

namespace A389424.P6653949883790557046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375515 (n + 1)) (A032020 (A216620 (n + 1)).toNat)

end

end A389424.P6653949883790557046

/-!
# A389425: First differences of A199716.

The programs for A389425, the canonical program `A389425.P17457791161868218869` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389425 has offset 1).

The definition of A389425 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389425.P17457791161868218869

`A199716(n+2)-A199716(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A389425

/-- `A199716(n+2)-A199716(n+1)` -/
def P17457791161868218869.Spec : Prop :=
  ∀ n, P17457791161868218869.a n = A389425 (n + 1)

theorem P17457791161868218869.correct : P17457791161868218869.Spec := by
  intro n
  simp only [A389425, Nat.add_sub_cancel]

end A389425

/-! ## A389425.P7369589901572162664

`Δ[A199716(n+1)]`
-/

namespace A389425.P7369589901572162664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389425.P7369589901572162664

namespace A389425

/-- `Δ[A199716(n+1)]` -/
def P7369589901572162664.Spec : Prop :=
  ∀ n, P7369589901572162664.a n = A389425 (n + 1)

theorem P7369589901572162664.correct : P7369589901572162664.Spec := by
  intro n
  simp only [A389425, Nat.add_sub_cancel, A389425.P7369589901572162664.f1, A389425.P7369589901572162664.a, A389425.P17457791161868218869.a, SequenceMachineLib.memo_apply]

end A389425

/-! ## A389425.P14408539259410728582

`Δ[∩[A046953(n+1), A272902(n+1)]]`
-/

namespace A389425.P14408539259410728582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272902 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A389425.P14408539259410728582

namespace A389425

/-- `Δ[∩[A046953(n+1), A272902(n+1)]]` -/
def P14408539259410728582.Spec : Prop :=
  ∀ n, P14408539259410728582.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P17079390779722616997

`Δ[A000027(lt[7, A020481(3*n+4)]+1)]`
-/

namespace A389425.P17079390779722616997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389425.P17079390779722616997

namespace A389425

/-- `Δ[A000027(lt[7, A020481(3*n+4)]+1)]` -/
def P17079390779722616997.Spec : Prop :=
  ∀ n, P17079390779722616997.a n = A389425 (n + 1)

end A389425

/-! ## A389425.P465535018920633370

`Δ[A000027(lt[3, A255274(3*n+2)]+1)]`
-/

namespace A389425.P465535018920633370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255274 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389425.P465535018920633370

namespace A389425

/-- `Δ[A000027(lt[3, A255274(3*n+2)]+1)]` -/
def P465535018920633370.Spec : Prop :=
  ∀ n, P465535018920633370.a n = A389425 (n + 1)

end A389425

/-!
# A389429: G.f. A(x) satisfies A(x)/(1 + A(x)) = -A(x^3)/A(-x^2).

The programs for A389429, there is no canonical definition to state claims against.
-/

/-! ## A389429.P16229196002895927359

`A308622(A149830(n))`
-/

namespace A389429.P16229196002895927359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308622 (A149830 n).toNat

end

end A389429.P16229196002895927359

/-! ## A389429.P15712084437726637801

`A390567(n)+A102283(A390567(2*n+3))`
-/

namespace A389429.P15712084437726637801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390567 n + A102283 (A390567 (2 * n + 3)).toNat

end

end A389429.P15712084437726637801

/-!
# A389430: Number of nodes on a hexagonal lattice where the side lengths increase in this pattern: (x, x, x, x, x, x) -> (x+1, x, x, x+1, x, x) -> (x+1, x, x+1, x, x+1, x) -> (x+1, x+1, x, x+1, x+1, x) -> (x+1, x+1, x+1, x+1, x+1, x+1).

The programs for A389430, the canonical program `A389430.P4053345114218918592` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389430 has offset 0).

The definition of A389430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389430.P4177772296882864283

`∑[lcm(2, floor((n+1)/2))/2]`
-/

namespace A389430.P4177772296882864283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ⌊(n + 1 : ℚ) / 2⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P4177772296882864283

namespace A389430

/-- `∑[lcm(2, floor((n+1)/2))/2]` -/
def P4177772296882864283.Spec : Prop :=
  ∀ n, P4177772296882864283.a n = (A389430 n : ℚ)

end A389430

/-! ## A389430.P4053345114218918592

`∑[floor((n+1)/(and(2, n-1)+2))]`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A389430

/-- `∑[floor((n+1)/(and(2, n-1)+2))]` -/
def P4053345114218918592.Spec : Prop :=
  ∀ n, P4053345114218918592.a n = A389430 n

theorem P4053345114218918592.correct : P4053345114218918592.Spec := by
  intro n
  simp only [A389430]

end A389430

/-! ## A389430.P17315204487691051644

`A302488(n)-A038715(n)`
-/

namespace A389430.P17315204487691051644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302488 n - A038715 n

end

end A389430.P17315204487691051644

namespace A389430

/-- `A302488(n)-A038715(n)` -/
def P17315204487691051644.Spec : Prop :=
  ∀ n, P17315204487691051644.a n = A389430 n

end A389430

/-! ## A389430.P3185254416747383280

`∪[A007980(n), A033428(n)]`
-/

namespace A389430.P3185254416747383280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P3185254416747383280

namespace A389430

/-- `∪[A007980(n), A033428(n)]` -/
def P3185254416747383280.Spec : Prop :=
  ∀ n, (P3185254416747383280.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P12829422869249118843

`∪[A007980(n), A077043(n)]`
-/

namespace A389430.P12829422869249118843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P12829422869249118843

namespace A389430

/-- `∪[A007980(n), A077043(n)]` -/
def P12829422869249118843.Spec : Prop :=
  ∀ n, (P12829422869249118843.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P18353890922865693096

`∪[A077043(n), A152749(n)]`
-/

namespace A389430.P18353890922865693096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P18353890922865693096

namespace A389430

/-- `∪[A077043(n), A152749(n)]` -/
def P18353890922865693096.Spec : Prop :=
  ∀ n, (P18353890922865693096.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P10629831245496466780

`∪[A229593(n+2), A003215(n)]`
-/

namespace A389430.P10629831245496466780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P10629831245496466780

namespace A389430

/-- `∪[A229593(n+2), A003215(n)]` -/
def P10629831245496466780.Spec : Prop :=
  ∀ n, (P10629831245496466780.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P5467216923518867535

`∪[A229593(n+2), A007980(n)]`
-/

namespace A389430.P5467216923518867535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P5467216923518867535

namespace A389430

/-- `∪[A229593(n+2), A007980(n)]` -/
def P5467216923518867535.Spec : Prop :=
  ∀ n, (P5467216923518867535.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P11587155774368154968

`∪[A229593(n+2), A077043(n)]`
-/

namespace A389430.P11587155774368154968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P11587155774368154968

namespace A389430

/-- `∪[A229593(n+2), A077043(n)]` -/
def P11587155774368154968.Spec : Prop :=
  ∀ n, (P11587155774368154968.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P2690266878434435387

`∪[A298125(n+1), A229593(n+2)]`
-/

namespace A389430.P2690266878434435387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P2690266878434435387

namespace A389430

/-- `∪[A298125(n+1), A229593(n+2)]` -/
def P2690266878434435387.Spec : Prop :=
  ∀ n, (P2690266878434435387.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P4311336689528404195

`∪[A309805(n+1), A229593(n+2)]`
-/

namespace A389430.P4311336689528404195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389430.P4311336689528404195

namespace A389430

/-- `∪[A309805(n+1), A229593(n+2)]` -/
def P4311336689528404195.Spec : Prop :=
  ∀ n, (P4311336689528404195.a n : ℤ) = A389430 n

end A389430

/-! ## A389430.P12916335924217293790

`A069905(A301729(n+1))`
-/

namespace A389430.P12916335924217293790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A301729 (n + 1)).toNat

end

end A389430.P12916335924217293790

namespace A389430

/-- `A069905(A301729(n+1))` -/
def P12916335924217293790.Spec : Prop :=
  ∀ n, P12916335924217293790.a n = A389430 n

end A389430

/-! ## A389430.P12590462469466506605

`A069905(A047273(n+2))`
-/

namespace A389430.P12590462469466506605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A047273 (n + 2)).toNat

end

end A389430.P12590462469466506605

namespace A389430

/-- `A069905(A047273(n+2))` -/
def P12590462469466506605.Spec : Prop :=
  ∀ n, P12590462469466506605.a n = A389430 n

end A389430

/-! ## A389430.P5040764031109106637

`A005044(2*A267807(2*n+1))`
-/

namespace A389430.P5040764031109106637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * A267807 (2 * n + 1)).toNat

end

end A389430.P5040764031109106637

namespace A389430

/-- `A005044(2*A267807(2*n+1))` -/
def P5040764031109106637.Spec : Prop :=
  ∀ n, P5040764031109106637.a n = A389430 n

end A389430

/-!
# A389431: Primes of the form p^q - 2, where p and q are primes.

The programs for A389431, there is no canonical definition to state claims against.
-/

/-! ## A389431.P7279589935092760453

`eq[A053204(n), A362421(n+2)]`
-/

namespace A389431.P7279589935092760453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362421 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389431.P7279589935092760453

/-! ## A389431.P12013215892336269678

`∩[A053705(n+1), A154579(n+1)]`
-/

namespace A389431.P12013215892336269678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389431.P12013215892336269678

/-! ## A389431.P1876843950596891324

`∩[A053705(n+1), A299956(n+1)]`
-/

namespace A389431.P1876843950596891324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389431.P1876843950596891324

/-!
# A389436: Expansion of (1/x) * Series_Reversion( x * (1 - x) / (1 + x^2 / (1 - x)^3) ).

The programs for A389436, there is no canonical definition to state claims against.
-/

/-! ## A389436.P6384960245370854297

`A277192(A122122(n))`
-/

namespace A389436.P6384960245370854297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A122122 n).toNat

end

end A389436.P6384960245370854297

/-! ## A389436.P4864776283397874105

`A001462(A337553(n))-floor(n%4/2)`
-/

namespace A389436.P4864776283397874105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A337553 n).toNat - ⌊((n % 4 : ℕ) : ℚ) / 2⌋

end

end A389436.P4864776283397874105

/-!
# A389437: Expansion of (1/x) * Series_Reversion( x * (1 - x * (1 + x)^2) / (1 + x) ).

The programs for A389437, there is no canonical definition to state claims against.
-/

/-! ## A389437.P2156395767170584258

`A354767(A357227(n))+n`
-/

namespace A389437.P2156395767170584258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354767 (A357227 n).toNat + (n : ℤ)

end

end A389437.P2156395767170584258

/-!
# A389438: Expansion of (1/x) * Series_Reversion( x * (1 - x * (1 + x)^3) / (1 + x) ).

The programs for A389438, there is no canonical definition to state claims against.
-/

/-! ## A389438.P5356299613154762540

`A317141(5*A083667(n))`
-/

namespace A389438.P5356299613154762540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (5 * A083667 n).toNat

end

end A389438.P5356299613154762540

/-!
# A389439: Expansion of (1/x) * Series_Reversion( x * (1 - x^2 * (1 + x)^3) / (1 + x) ).

The programs for A389439, there is no canonical definition to state claims against.
-/

/-! ## A389439.P14679504098255123027

`A226896(A279567(n))`
-/

namespace A389439.P14679504098255123027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226896 (A279567 n).toNat

end

end A389439.P14679504098255123027

/-! ## A389439.P8554977977988707367

`A095346(3*n+5)+A008615(A066983(3*n+1))`
-/

namespace A389439.P8554977977988707367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095346 (3 * n + 5) + A008615 (A066983 (3 * n + 1)).toNat

end

end A389439.P8554977977988707367

/-!
# A389441: Expansion of (1/x) * Series_Reversion( x * (1 - x^3 * (1 + x)^3) / (1 + x) ).

The programs for A389441, there is no canonical definition to state claims against.
-/

/-! ## A389441.P7058515801967188754

`A162229(A149319(n))`
-/

namespace A389441.P7058515801967188754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A149319 n).toNat

end

end A389441.P7058515801967188754

/-! ## A389441.P10815402178248340073

`A162229(A259845(n))`
-/

namespace A389441.P10815402178248340073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A259845 n).toNat

end

end A389441.P10815402178248340073

/-! ## A389441.P13380401638853222223

`A378294(A099099(n))`
-/

namespace A389441.P13380401638853222223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378294 (A099099 n).toNat

end

end A389441.P13380401638853222223

/-!
# A389446: a(n) = gcd(sigma(n), A057723(n)), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

The programs for A389446, the canonical program `A389446.P10095306458237006129` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389446 has offset 1).

The definition of A389446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389446.P2197887414685117020

`A000203(n+1)/A389447(n+1)`
-/

namespace A389446.P2197887414685117020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389447 (n + 1) : ℚ)

end

end A389446.P2197887414685117020

namespace A389446

/-- `A000203(n+1)/A389447(n+1)` -/
def P2197887414685117020.Spec : Prop :=
  ∀ n, P2197887414685117020.a n = (A389446 (n + 1) : ℚ)

end A389446

/-! ## A389446.P11390280124858041430

`A057723(n+1)/A389448(n+1)`
-/

namespace A389446.P11390280124858041430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A389448 (n + 1) : ℚ)

end

end A389446.P11390280124858041430

namespace A389446

/-- `A057723(n+1)/A389448(n+1)` -/
def P11390280124858041430.Spec : Prop :=
  ∀ n, P11390280124858041430.a n = (A389446 (n + 1) : ℚ)

end A389446

/-! ## A389446.P10095306458237006129

`gcd(A000203(n+1), A057723(n+1))`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A389446

/-- `gcd(A000203(n+1), A057723(n+1))` -/
def P10095306458237006129.Spec : Prop :=
  ∀ n, (P10095306458237006129.a n : ℤ) = A389446 (n + 1)

theorem P10095306458237006129.correct : P10095306458237006129.Spec := by
  intro n
  simp only [A389446, Nat.add_sub_cancel]

end A389446

/-! ## A389446.P13923721264243217714

`(A308135(n+1)+A057723(n+1))/A389447(n+1)`
-/

namespace A389446.P13923721264243217714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308135 (n + 1) + A057723 (n + 1) : ℚ) / (A389447 (n + 1) : ℚ)

end

end A389446.P13923721264243217714

namespace A389446

/-- `(A308135(n+1)+A057723(n+1))/A389447(n+1)` -/
def P13923721264243217714.Spec : Prop :=
  ∀ n, P13923721264243217714.a n = (A389446 (n + 1) : ℚ)

end A389446

/-! ## A389446.P14221121368421092597

`(A000203(n+1)-A308135(n+1))/A389448(n+1)`
-/

namespace A389446.P14221121368421092597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A308135 (n + 1) : ℚ) / (A389448 (n + 1) : ℚ)

end

end A389446.P14221121368421092597

namespace A389446

/-- `(A000203(n+1)-A308135(n+1))/A389448(n+1)` -/
def P14221121368421092597.Spec : Prop :=
  ∀ n, P14221121368421092597.a n = (A389446 (n + 1) : ℚ)

end A389446

/-!
# A389447: Numerator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

The programs for A389447, the canonical program `A389447.P10658135204883957213` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389447 has offset 1).

The definition of A389447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389447.P10658135204883957213

`A000203(n+1)/A389446(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A389447

/-- `A000203(n+1)/A389446(n+1)` -/
def P10658135204883957213.Spec : Prop :=
  ∀ n, P10658135204883957213.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P14901045860826730596

`(A308135(n+1)+A057723(n+1))/A389446(n+1)`
-/

namespace A389447.P14901045860826730596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308135 (n + 1) + A057723 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P14901045860826730596

namespace A389447

/-- `(A308135(n+1)+A057723(n+1))/A389446(n+1)` -/
def P14901045860826730596.Spec : Prop :=
  ∀ n, P14901045860826730596.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P14121037486683645109

`A389448(n+1)+A308135(n+1)/A389446(n+1)`
-/

namespace A389447.P14121037486683645109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389448 (n + 1) : ℚ) + (A308135 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P14121037486683645109

namespace A389447

/-- `A389448(n+1)+A308135(n+1)/A389446(n+1)` -/
def P14121037486683645109.Spec : Prop :=
  ∀ n, P14121037486683645109.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P4662386253578272659

`A000203(n+1)/A057723(n+1)*A389448(n+1)`
-/

namespace A389447.P4662386253578272659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A057723 (n + 1) : ℚ) * (A389448 (n + 1) : ℚ)

end

end A389447.P4662386253578272659

namespace A389447

/-- `A000203(n+1)/A057723(n+1)*A389448(n+1)` -/
def P4662386253578272659.Spec : Prop :=
  ∀ n, P4662386253578272659.a n = (A389447 (n + 1) : ℚ)

end A389447

/-! ## A389447.P9955930011845295498

`lcm(n+1, ∑{d}[n+1, #])/(n+1)*A333254(A136252(n+4))`
-/

namespace A389447.P9955930011845295498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / (n + 1 : ℚ) * (A333254 (A136252 (n + 4)).toNat : ℚ)

end

end A389447.P9955930011845295498

namespace A389447

/-- `lcm(n+1, ∑{d}[n+1, #])/(n+1)*A333254(A136252(n+4))` -/
def P9955930011845295498.Spec : Prop :=
  ∀ n, P9955930011845295498.a n = (A389447 (n + 1) : ℚ)

end A389447

/-!
# A389448: Denominator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

The programs for A389448, the canonical program `A389448.P4992283218641598864` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389448 has offset 1).

The definition of A389448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389448.P4992283218641598864

`A057723(n+1)/A389446(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A389448

/-- `A057723(n+1)/A389446(n+1)` -/
def P4992283218641598864.Spec : Prop :=
  ∀ n, P4992283218641598864.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P18283131894528295144

`(A336563(n+1)+1+n)/A389446(n+1)`
-/

namespace A389448.P18283131894528295144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336563 (n + 1) + 1 + (n : ℤ) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P18283131894528295144

namespace A389448

/-- `(A336563(n+1)+1+n)/A389446(n+1)` -/
def P18283131894528295144.Spec : Prop :=
  ∀ n, P18283131894528295144.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P4650582158506586427

`(A000203(n+1)-A308135(n+1))/A389446(n+1)`
-/

namespace A389448.P4650582158506586427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A308135 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P4650582158506586427

namespace A389448

/-- `(A000203(n+1)-A308135(n+1))/A389446(n+1)` -/
def P4650582158506586427.Spec : Prop :=
  ∀ n, P4650582158506586427.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P10417976984289616747

`A389447(n+1)-A308135(n+1)/A389446(n+1)`
-/

namespace A389448.P10417976984289616747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389447 (n + 1) : ℚ) - (A308135 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P10417976984289616747

namespace A389448

/-- `A389447(n+1)-A308135(n+1)/A389446(n+1)` -/
def P10417976984289616747.Spec : Prop :=
  ∀ n, P10417976984289616747.a n = (A389448 (n + 1) : ℚ)

end A389448

/-! ## A389448.P12785855048765067843

`A057723(n+1)/A000203(n+1)*A389447(n+1)`
-/

namespace A389448.P12785855048765067843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A389447 (n + 1) : ℚ)

end

end A389448.P12785855048765067843

namespace A389448

/-- `A057723(n+1)/A000203(n+1)*A389447(n+1)` -/
def P12785855048765067843.Spec : Prop :=
  ∀ n, P12785855048765067843.a n = (A389448 (n + 1) : ℚ)

end A389448

/-!
# A389449: a(n) = 1 if A260443(A048675(n)) = n, otherwise 0.

The programs for A389449, there is no canonical definition to state claims against.
-/

/-! ## A389449.P11476972516805630708

`char[A260442(n)-1]`
-/

namespace A389449.P11476972516805630708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A389449.P11476972516805630708

/-! ## A389449.P7387583398813045489

`A323152(A134364(n+1))`
-/

namespace A389449.P7387583398813045489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (A134364 (n + 1)).toNat

end

end A389449.P7387583398813045489

/-! ## A389449.P8685174290434934263

`A319000(A358195(n+1))`
-/

namespace A389449.P8685174290434934263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A358195 (n + 1)).toNat

end

end A389449.P8685174290434934263

/-! ## A389449.P9371361068812891636

`A176723(A322994(n+1))`
-/

namespace A389449.P9371361068812891636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 (A322994 (n + 1)).toNat

end

end A389449.P9371361068812891636

/-! ## A389449.P4784791378508972905

`A389656(A331601(n+1))`
-/

namespace A389449.P4784791378508972905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389656 (A331601 (n + 1)).toNat

end

end A389449.P4784791378508972905

/-!
# A389451: Sum of divisors of the largest unitary divisor of n that is a term in A048103 (not divisible by p^p for any prime p).

The programs for A389451, the canonical program `A389451.P10010193522660064856` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389451 has offset 1).

The definition of A389451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A389452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389451.P10010193522660064856

`A000203(n+1)/A389452(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389451

/-- `A000203(n+1)/A389452(n+1)` -/
def P10010193522660064856.Spec : Prop :=
  ∀ n, P10010193522660064856.a n = (A389451 (n + 1) : ℚ)

end A389451

/-! ## A389451.P11329845845923085629

`A000203((n+1)/A368333(n+1))`
-/

namespace A389451.P11329845845923085629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368333 (n + 1) : ℚ))).toNat

end

end A389451.P11329845845923085629

namespace A389451

/-- `A000203((n+1)/A368333(n+1))` -/
def P11329845845923085629.Spec : Prop :=
  ∀ n, P11329845845923085629.a n = A389451 (n + 1)

end A389451

/-!
# A389452: Sum of the divisors of the largest p-full divisor of n (a term of A054744 that divides n).

The programs for A389452, the canonical program `A389452.P7190933755538774917` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389452 has offset 1).

The definition of A389452 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368333, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389452.P7190933755538774917

`A000203(A368333(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389452

/-- `A000203(A368333(n+1))` -/
def P7190933755538774917.Spec : Prop :=
  ∀ n, P7190933755538774917.a n = A389452 (n + 1)

theorem P7190933755538774917.correct : P7190933755538774917.Spec := by
  intro n
  simp only [A389452, Nat.add_sub_cancel]

end A389452

/-! ## A389452.P11404035242494285514

`A000203(n+1)/A389451(n+1)`
-/

namespace A389452.P11404035242494285514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389451 (n + 1) : ℚ)

end

end A389452.P11404035242494285514

namespace A389452

/-- `A000203(n+1)/A389451(n+1)` -/
def P11404035242494285514.Spec : Prop :=
  ∀ n, P11404035242494285514.a n = (A389452 (n + 1) : ℚ)

end A389452

/-! ## A389452.P342129607795450774

`gcd(A141085(n), A295294(n+1))`
-/

namespace A389452.P342129607795450774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141085 n) (A295294 (n + 1))

end

end A389452.P342129607795450774

namespace A389452

/-- `gcd(A141085(n), A295294(n+1))` -/
def P342129607795450774.Spec : Prop :=
  ∀ n, (P342129607795450774.a n : ℤ) = A389452 (n + 1)

end A389452

/-! ## A389452.P8510116342517949311

`A068723(n)%A171977(n+1)`
-/

namespace A389452.P8510116342517949311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068723 n) (A171977 (n + 1))

end

end A389452.P8510116342517949311

namespace A389452

/-- `A068723(n)%A171977(n+1)` -/
def P8510116342517949311.Spec : Prop :=
  ∀ n, P8510116342517949311.a n = A389452 (n + 1)

end A389452

/-!
# A389453: Arithmetic derivative of the largest p-full divisor of n (a term of A054744 that divides n).

The programs for A389453, the canonical program `A389453.P4363465983384085622` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389453 has offset 1).

The definition of A389453 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A368333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389453.P4363465983384085622

`A003415(A368333(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389453

/-- `A003415(A368333(n+1))` -/
def P4363465983384085622.Spec : Prop :=
  ∀ n, P4363465983384085622.a n = A389453 (n + 1)

theorem P4363465983384085622.correct : P4363465983384085622.Spec := by
  intro n
  simp only [A389453, Nat.add_sub_cancel]

end A389453

/-! ## A389453.P1623375502782303396

`A003415(gcd(A273952(n+1), A274006(n+1)))`
-/

namespace A389453.P1623375502782303396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.gcd (A273952 (n + 1)) (A274006 (n + 1)))

end

end A389453.P1623375502782303396

namespace A389453

/-- `A003415(gcd(A273952(n+1), A274006(n+1)))` -/
def P1623375502782303396.Spec : Prop :=
  ∀ n, P1623375502782303396.a n = A389453 (n + 1)

end A389453

/-!
# A389454: Arithmetic derivative of the largest unitary divisor of n that is a term in A048103 (not divisible by p^p for any prime p).

The programs for A389454, the canonical program `A389454.P13905471040686066385` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389454 has offset 1).

The definition of A389454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389454.P13905471040686066385

`A003415((n+1)/A368333(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A389454

/-- `A003415((n+1)/A368333(n+1))` -/
def P13905471040686066385.Spec : Prop :=
  ∀ n, P13905471040686066385.a n = A389454 (n + 1)

theorem P13905471040686066385.correct : P13905471040686066385.Spec := by
  intro n
  simp only [A389454, Nat.add_sub_cancel]

end A389454

/-! ## A389454.P3600439538732013478

`A316829(A179386(n+1))*A373364(n+1)`
-/

namespace A389454.P3600439538732013478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A179386 (n + 1)).toNat * A373364 (n + 1)

end

end A389454.P3600439538732013478

namespace A389454

/-- `A316829(A179386(n+1))*A373364(n+1)` -/
def P3600439538732013478.Spec : Prop :=
  ∀ n, P3600439538732013478.a n = A389454 (n + 1)

end A389454

/-! ## A389454.P10454620575327827444

`A373364(n+1)%A050283(A383341(n))`
-/

namespace A389454.P10454620575327827444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373364 (n + 1)) (A050283 (A383341 n).toNat)

end

end A389454.P10454620575327827444

namespace A389454

/-- `A373364(n+1)%A050283(A383341(n))` -/
def P10454620575327827444.Spec : Prop :=
  ∀ n, P10454620575327827444.a n = A389454 (n + 1)

end A389454

/-! ## A389454.P5786957088328130135

`and(A057077(A132074(n)), A373364(n+1))`
-/

namespace A389454.P5786957088328130135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057077 (A132074 n).toNat) (A373364 (n + 1))

end

end A389454.P5786957088328130135

namespace A389454

/-- `and(A057077(A132074(n)), A373364(n+1))` -/
def P5786957088328130135.Spec : Prop :=
  ∀ n, P5786957088328130135.a n = A389454 (n + 1)

end A389454

/-!
# A389455: 

The programs for A389455, there is no canonical definition to state claims against.
-/

/-! ## A389455.P11508579276383905415

`(n+1)/A368333(n+1)`
-/

namespace A389455.P11508579276383905415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368333 (n + 1) : ℚ)

end

end A389455.P11508579276383905415

/-! ## A389455.P9741007539242415682

`A327938(A377518(n+1))`
-/

namespace A389455.P9741007539242415682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A377518 (n + 1)).toNat

end

end A389455.P9741007539242415682

/-! ## A389455.P17261391915272942335

`A327938(A380088(n+1))`
-/

namespace A389455.P17261391915272942335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (A380088 (n + 1)).toNat

end

end A389455.P17261391915272942335

/-! ## A389455.P4056634304685075165

`A327938((n+1)/A368329(n+1))`
-/

namespace A389455.P4056634304685075165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368329 (n + 1) : ℚ))).toNat

end

end A389455.P4056634304685075165

/-!
# A389456: 

The programs for A389456, there is no canonical definition to state claims against.
-/

/-! ## A389456.P12002157375518931649

`∑{d}[n+1, A359550(#)]`
-/

namespace A389456.P12002157375518931649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359550 d

end

end A389456.P12002157375518931649

/-! ## A389456.P93310832604874294

`A000005(A327937(n+1))`
-/

namespace A389456.P93310832604874294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A327937 (n + 1)).toNat

end

end A389456.P93310832604874294

/-! ## A389456.P16684363720460217862

`A358216(n+1)/A368332(n+1)`
-/

namespace A389456.P16684363720460217862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358216 (n + 1) : ℚ) / (A368332 (n + 1) : ℚ)

end

end A389456.P16684363720460217862

/-! ## A389456.P11567356604301714777

`A358216(A327937(2*n+1-n))`
-/

namespace A389456.P11567356604301714777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358216 (A327937 (2 * n + 1 - n)).toNat

end

end A389456.P11567356604301714777

/-!
# A389457: 

The programs for A389457, there is no canonical definition to state claims against.
-/

/-! ## A389457.P11052782757249646318

`∑{d}[A327937(n+1), #]`
-/

namespace A389457.P11052782757249646318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A389457.P11052782757249646318

/-! ## A389457.P10037016276673333466

`∑{d}[n+1, #*A359550(#)]`
-/

namespace A389457.P10037016276673333466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A359550 d

end

end A389457.P10037016276673333466

/-! ## A389457.P15276816091883158540

`A000203(A327937(n+1))`
-/

namespace A389457.P15276816091883158540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A327937 (n + 1)).toNat

end

end A389457.P15276816091883158540

/-! ## A389457.P14246447695083966812

`A377520(A327937(2*n+1-n))`
-/

namespace A389457.P14246447695083966812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377520 (A327937 (2 * n + 1 - n)).toNat

end

end A389457.P14246447695083966812

/-!
# A389458: Numbers whose sum of non-unitary divisors (A048146) is congruent to 2 modulo 4.

The programs for A389458, there is no canonical definition to state claims against.
-/

/-! ## A389458.P14327457150641051776

`∪[A020707(n), A389459(n+1)]`
-/

namespace A389458.P14327457150641051776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389458.P14327457150641051776

/-! ## A389458.P16303439763242894167

`eq[2, and(3, A048146(n+1))]+1`
-/

namespace A389458.P16303439763242894167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A048146 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389458.P16303439763242894167

/-!
# A389459: Numbers whose sum of nonsquarefree divisors (A162296) is congruent to 2 modulo 4.

The programs for A389459, there is no canonical definition to state claims against.
-/

/-! ## A389459.P8033824692858736196

`filter[A389458(n+1), A353814(#)]`
-/

namespace A389459.P8033824692858736196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389459.P8033824692858736196

/-! ## A389459.P11799794685024787353

`filter[A389458(n+1), A202238(#)]`
-/

namespace A389459.P11799794685024787353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A389459.P11799794685024787353

/-! ## A389459.P12361903842997572096

`filter[A389458(n+1), A347523(#)]`
-/

namespace A389459.P12361903842997572096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A389459.P12361903842997572096

/-! ## A389459.P6980736633000933503

`filter[A389458(n+1), A353626(#)]`
-/

namespace A389459.P6980736633000933503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A389459.P6980736633000933503

/-! ## A389459.P4013334890096255571

`∩[A124966(n+1), A389458(n+1)]`
-/

namespace A389459.P4013334890096255571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P4013334890096255571

/-! ## A389459.P14380333631430251017

`∩[A038838(n+1), A389458(n+1)]`
-/

namespace A389459.P14380333631430251017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P14380333631430251017

/-! ## A389459.P16787079543902740842

`∩[A004431(n+1), A389458(n+1)]`
-/

namespace A389459.P16787079543902740842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P16787079543902740842

/-! ## A389459.P12937109314801794065

`∩[A018821(n+1), A389458(n+1)]`
-/

namespace A389459.P12937109314801794065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P12937109314801794065

/-! ## A389459.P14986759237348727975

`∩[A036350(n+1), A389458(n+1)]`
-/

namespace A389459.P14986759237348727975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P14986759237348727975

/-! ## A389459.P375480091099291990

`∩[A209922(n+1), A389458(n+1)]`
-/

namespace A389459.P375480091099291990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P375480091099291990

/-! ## A389459.P4222883930318640602

`∩[A225836(n+1), A389458(n+1)]`
-/

namespace A389459.P4222883930318640602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P4222883930318640602

/-! ## A389459.P15710269654872592064

`∩[A335657(n+1), A389458(n+1)]`
-/

namespace A389459.P15710269654872592064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P15710269654872592064

/-! ## A389459.P9216069196224944050

`∩[A373376(n+1), A389458(n+1)]`
-/

namespace A389459.P9216069196224944050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P9216069196224944050

/-! ## A389459.P3943722550398802307

`∩[A341329(n+1), A389458(n+1)]`
-/

namespace A389459.P3943722550398802307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P3943722550398802307

/-! ## A389459.P12573749914876917012

`∩[A009003(n+1), A389458(n+1)]`
-/

namespace A389459.P12573749914876917012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P12573749914876917012

/-! ## A389459.P3285903475066437381

`∩[A304432(n+1), A389458(n+1)]`
-/

namespace A389459.P3285903475066437381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P3285903475066437381

/-! ## A389459.P17476173647759139330

`∩[A093642(n+1), A389458(n+1)]`
-/

namespace A389459.P17476173647759139330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P17476173647759139330

/-! ## A389459.P10754432500232175342

`∩[A105441(n+1), A389458(n+1)]`
-/

namespace A389459.P10754432500232175342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P10754432500232175342

/-! ## A389459.P3057909521413595971

`∩[A207675(n+1), A389458(n+1)]`
-/

namespace A389459.P3057909521413595971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P3057909521413595971

/-! ## A389459.P13044855352733196139

`∩[A365408(n+1), A389458(n+1)]`
-/

namespace A389459.P13044855352733196139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389459.P13044855352733196139

/-!
# A389460: a(n) = sigma(n) - A075423(n).

The programs for A389460, the canonical program `A389460.P4100129062004937204` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389460 has offset 1).

The definition of A389460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)` (program `A389460.P4100129062004937204`, by `A389460.P4100129062004937204.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389460.P4100129062004937204

`A000203(n+1)-A075423(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A389460

/-- `A000203(n+1)-A075423(n+1)` -/
def P4100129062004937204.Spec : Prop :=
  ∀ n, P4100129062004937204.a n = A389460 (n + 1)

theorem P4100129062004937204.correct : P4100129062004937204.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel]

end A389460

/-! ## A389460.P4355568664789153793

`∑{d}[n+1, #]+1-∏{p}[n+1, #]`
-/

namespace A389460.P4355568664789153793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A389460.P4355568664789153793

namespace A389460

/-- `∑{d}[n+1, #]+1-∏{p}[n+1, #]` -/
def P4355568664789153793.Spec : Prop :=
  ∀ n, P4355568664789153793.a n = A389460 (n + 1)

theorem P4355568664789153793.correct : P4355568664789153793.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel, A389460.P4355568664789153793.f1, A389460.P4355568664789153793.f2, A389460.P4355568664789153793.a, A389460.P4100129062004937204.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389460

/-! ## A389460.P2958958278418805139

`A326142(n+1)+1`
-/

namespace A389460.P2958958278418805139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (n + 1) + 1

end

end A389460.P2958958278418805139

namespace A389460

/-- `A326142(n+1)+1` -/
def P2958958278418805139.Spec : Prop :=
  ∀ n, P2958958278418805139.a n = A389460 (n + 1)

theorem P2958958278418805139.correct : P2958958278418805139.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel, A389460.P2958958278418805139.a, A389460.P4100129062004937204.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A326142, A326142.P15415912859726343761.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389460

/-! ## A389460.P707298739171921374

`A389461(n+1)+1+n`
-/

namespace A389460.P707298739171921374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389461 (n + 1) + 1 + (n : ℤ)

end

end A389460.P707298739171921374

namespace A389460

/-- `A389461(n+1)+1+n` -/
def P707298739171921374.Spec : Prop :=
  ∀ n, P707298739171921374.a n = A389460 (n + 1)

theorem P707298739171921374.correct : P707298739171921374.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel, A389460.P707298739171921374.a, A389460.P4100129062004937204.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A389461, A389461.P3198355901571096713.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389460

/-! ## A389460.P12327822246423929294

`A326143(n+1)+2+n`
-/

namespace A389460.P12327822246423929294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326143 (n + 1) + 2 + (n : ℤ)

end

end A389460.P12327822246423929294

namespace A389460

/-- `A326143(n+1)+2+n` -/
def P12327822246423929294.Spec : Prop :=
  ∀ n, P12327822246423929294.a n = A389460 (n + 1)

theorem P12327822246423929294.correct : P12327822246423929294.Spec := by
  intro n
  simp only [A389460, Nat.add_sub_cancel, A389460.P12327822246423929294.a, A389460.P4100129062004937204.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A326143, A326143.P176859411368788289.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389460

/-! ## A389460.P12071469943091879032

`A000203(n+1)-A144774(A007947(n+1))`
-/

namespace A389460.P12071469943091879032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A144774 (A007947 (n + 1)).toNat

end

end A389460.P12071469943091879032

namespace A389460

/-- `A000203(n+1)-A144774(A007947(n+1))` -/
def P12071469943091879032.Spec : Prop :=
  ∀ n, P12071469943091879032.a n = A389460 (n + 1)

end A389460

/-!
# A389461: a(n) = sigma(n) - A075423(n) - n.

The programs for A389461, the canonical program `A389461.P3198355901571096713` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389461 has offset 1).

The definition of A389461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)-(n+1)` (program `A389461.P3198355901571096713`, by `A389461.P3198355901571096713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389461.P15588791070038603446

`A389460(n+1)-(n+1)`
-/

namespace A389461.P15588791070038603446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389460 (n + 1) - (n + 1 : ℤ)

end

end A389461.P15588791070038603446

namespace A389461

/-- `A389460(n+1)-(n+1)` -/
def P15588791070038603446.Spec : Prop :=
  ∀ n, P15588791070038603446.a n = A389461 (n + 1)

end A389461

/-! ## A389461.P15261002970931308837

`A001065(n+1)-A075423(n+1)`
-/

namespace A389461.P15261002970931308837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A075423 (n + 1)

end

end A389461.P15261002970931308837

namespace A389461

/-- `A001065(n+1)-A075423(n+1)` -/
def P15261002970931308837.Spec : Prop :=
  ∀ n, P15261002970931308837.a n = A389461 (n + 1)

theorem P15261002970931308837.correct : P15261002970931308837.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P15261002970931308837.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A075423, A075423.P4628253282240293727.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P3198355901571096713

`A000203(n+1)-A075423(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A389461

/-- `A000203(n+1)-A075423(n+1)-(n+1)` -/
def P3198355901571096713.Spec : Prop :=
  ∀ n, P3198355901571096713.a n = A389461 (n + 1)

theorem P3198355901571096713.correct : P3198355901571096713.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel]

end A389461

/-! ## A389461.P13495795326166230724

`A326143(n+1)+1`
-/

namespace A389461.P13495795326166230724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326143 (n + 1) + 1

end

end A389461.P13495795326166230724

namespace A389461

/-- `A326143(n+1)+1` -/
def P13495795326166230724.Spec : Prop :=
  ∀ n, P13495795326166230724.a n = A389461 (n + 1)

theorem P13495795326166230724.correct : P13495795326166230724.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P13495795326166230724.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A326143, A326143.P176859411368788289.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P1312272547458315591

`A326142(n+1)-n`
-/

namespace A389461.P1312272547458315591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326142 (n + 1) - (n : ℤ)

end

end A389461.P1312272547458315591

namespace A389461

/-- `A326142(n+1)-n` -/
def P1312272547458315591.Spec : Prop :=
  ∀ n, P1312272547458315591.a n = A389461 (n + 1)

theorem P1312272547458315591.correct : P1312272547458315591.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P1312272547458315591.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A075423, A075423.P4628253282240293727.a, A326142, A326142.P15415912859726343761.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P13352290363928762059

`A237588(n+1)+A066503(n+1)`
-/

namespace A389461.P13352290363928762059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A066503 (n + 1)

end

end A389461.P13352290363928762059

namespace A389461

/-- `A237588(n+1)+A066503(n+1)` -/
def P13352290363928762059.Spec : Prop :=
  ∀ n, P13352290363928762059.a n = A389461 (n + 1)

theorem P13352290363928762059.correct : P13352290363928762059.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P13352290363928762059.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A066503, A066503.P17588364347287804265.a, A075423, A075423.P4628253282240293727.a, A237588, A237588.P10590847318200798620.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P2788992221747788996

`A000203(n+1)-A007947(n+1)-n`
-/

namespace A389461.P2788992221747788996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007947 (n + 1) - (n : ℤ)

end

end A389461.P2788992221747788996

namespace A389461

/-- `A000203(n+1)-A007947(n+1)-n` -/
def P2788992221747788996.Spec : Prop :=
  ∀ n, P2788992221747788996.a n = A389461 (n + 1)

theorem P2788992221747788996.correct : P2788992221747788996.Spec := by
  intro n
  simp only [A389461, Nat.add_sub_cancel, A389461.P2788992221747788996.a, A389461.P3198355901571096713.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A075423, A075423.P4628253282240293727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389461

/-! ## A389461.P6100449636864454678

`A001065(n+1)-A010848(n+1)/A003557(n+1)`
-/

namespace A389461.P6100449636864454678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) : ℚ) - (A010848 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A389461.P6100449636864454678

namespace A389461

/-- `A001065(n+1)-A010848(n+1)/A003557(n+1)` -/
def P6100449636864454678.Spec : Prop :=
  ∀ n, P6100449636864454678.a n = (A389461 (n + 1) : ℚ)

end A389461

/-!
# A389462: Numbers whose sum of proper divisors (A001065) is equal to or greater than their squarefree kernel (A007947).

The programs for A389462, the canonical program `A389462.P16419255327458964044` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389462 has offset 1).

The definition of A389462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389462.P16419255327458964044

`∪[A013929(n+1), A023196(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A389462

/-- `∪[A013929(n+1), A023196(n+1)]` -/
def P16419255327458964044.Spec : Prop :=
  ∀ n, (P16419255327458964044.a n : ℤ) = A389462 (n + 1)

theorem P16419255327458964044.correct : P16419255327458964044.Spec := by
  intro n
  simp only [A389462, Nat.add_sub_cancel]

end A389462

/-! ## A389462.P18364969060375969226

`∪[A013929(n+1), A083207(n+1)]`
-/

namespace A389462.P18364969060375969226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P18364969060375969226

namespace A389462

/-- `∪[A013929(n+1), A083207(n+1)]` -/
def P18364969060375969226.Spec : Prop :=
  ∀ n, (P18364969060375969226.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P4575290908429263194

`∪[A023196(n+1), A087244(n+1)]`
-/

namespace A389462.P4575290908429263194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P4575290908429263194

namespace A389462

/-- `∪[A023196(n+1), A087244(n+1)]` -/
def P4575290908429263194.Spec : Prop :=
  ∀ n, (P4575290908429263194.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P16695475914484230770

`∪[A013929(n+1), A204829(n+1)]`
-/

namespace A389462.P16695475914484230770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P16695475914484230770

namespace A389462

/-- `∪[A013929(n+1), A204829(n+1)]` -/
def P16695475914484230770.Spec : Prop :=
  ∀ n, (P16695475914484230770.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P2426898582045239493

`∪[A013929(n+1), A290466(n+1)]`
-/

namespace A389462.P2426898582045239493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P2426898582045239493

namespace A389462

/-- `∪[A013929(n+1), A290466(n+1)]` -/
def P2426898582045239493.Spec : Prop :=
  ∀ n, (P2426898582045239493.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P17541643115382856673

`∪[A013929(n+1), A335197(n+1)]`
-/

namespace A389462.P17541643115382856673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P17541643115382856673

namespace A389462

/-- `∪[A013929(n+1), A335197(n+1)]` -/
def P17541643115382856673.Spec : Prop :=
  ∀ n, (P17541643115382856673.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P7617456891271776399

`∪[A013929(n+1), A335215(n+1)]`
-/

namespace A389462.P7617456891271776399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P7617456891271776399

namespace A389462

/-- `∪[A013929(n+1), A335215(n+1)]` -/
def P7617456891271776399.Spec : Prop :=
  ∀ n, (P7617456891271776399.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P5848078434081075700

`∪[A023196(n+1), A225353(n+1)]`
-/

namespace A389462.P5848078434081075700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P5848078434081075700

namespace A389462

/-- `∪[A023196(n+1), A225353(n+1)]` -/
def P5848078434081075700.Spec : Prop :=
  ∀ n, (P5848078434081075700.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P15650538531766784821

`∪[A083207(n+1), A225353(n+1)]`
-/

namespace A389462.P15650538531766784821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P15650538531766784821

namespace A389462

/-- `∪[A083207(n+1), A225353(n+1)]` -/
def P15650538531766784821.Spec : Prop :=
  ∀ n, (P15650538531766784821.a n : ℤ) = A389462 (n + 1)

end A389462

/-! ## A389462.P11371801641682428583

`∪[A013929(n+1), A364053(n+1)]`
-/

namespace A389462.P11371801641682428583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P11371801641682428583

namespace A389462

/-- `∪[A013929(n+1), A364053(n+1)]` -/
def P11371801641682428583.Spec : Prop :=
  ∀ n, (P11371801641682428583.a n : ℤ) = A389462 (n + 1)

end A389462

/-!
# A389464: Number of natural numbers in range [n .. sigma(n)-1] that are coprime to n.

The programs for A389464, there is no canonical definition to state claims against.
-/

/-! ## A389464.P13148832258906299469

`A389465(n+1)-A325964(n+1)`
-/

namespace A389464.P13148832258906299469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389465 (n + 1) - A325964 (n + 1)

end

end A389464.P13148832258906299469

/-!
# A389465: Number of natural numbers in range [n .. sigma(n)] that are coprime to n.

The programs for A389465, there is no canonical definition to state claims against.
-/

/-! ## A389465.P15622801908784491851

`A389464(n+1)+A325964(n+1)`
-/

namespace A389465.P15622801908784491851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389464 (n + 1) + A325964 (n + 1)

end

end A389465.P15622801908784491851

/-! ## A389465.P11975701846475509437

`A108414(A057568(n+1))`
-/

namespace A389465.P11975701846475509437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108414 (A057568 (n + 1)).toNat

end

end A389465.P11975701846475509437

/-! ## A389465.P7920618310238148637

`A295280(A264859(n+1))`
-/

namespace A389465.P7920618310238148637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295280 (A264859 (n + 1)).toNat

end

end A389465.P7920618310238148637

/-! ## A389465.P8639591137089411728

`A084558(A001222(n+1)^A004526(n))`
-/

namespace A389465.P8639591137089411728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A001222 (n + 1) : ℚ) ^ (A004526 n : ℤ))).toNat

end

end A389465.P8639591137089411728

/-! ## A389465.P11820705735612906827

`A084558(A008481(n+1)^A004526(n))`
-/

namespace A389465.P11820705735612906827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A008481 (n + 1) : ℚ) ^ (A004526 n : ℤ))).toNat

end

end A389465.P11820705735612906827

/-!
# A389469: Numbers k such that k divides sigma(A003961(k)), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

The programs for A389469, there is no canonical definition to state claims against.
-/

/-! ## A389469.P14850023488128008850

`record[A342673(n+1)]`
-/

namespace A389469.P14850023488128008850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389469.P14850023488128008850

/-! ## A389469.P12961459416049475760

`record[gcd(n+1, A003973(n+1))]`
-/

namespace A389469.P12961459416049475760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003973 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389469.P12961459416049475760

/-! ## A389469.P8879465416147107065

`∩[A348868(n+1), A036451(n)]`
-/

namespace A389469.P8879465416147107065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389469.P8879465416147107065

/-! ## A389469.P271048694502485293

`∩[A018676(n+1), A351853(n+1)]`
-/

namespace A389469.P271048694502485293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389469.P271048694502485293

/-!
# A389470: A003973(k)/k for k such that A003973(k) is divisible by k (A389469), where A003973(n) is sum of the divisors of prime-shifted n, A003961(n).

The programs for A389470, there is no canonical definition to state claims against.
-/

/-! ## A389470.P18138110498114826538

`A003973(A389469(n+1))/A389469(n+1)`
-/

namespace A389470.P18138110498114826538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (A389469 (n + 1)).toNat : ℚ) / (A389469 (n + 1) : ℚ)

end

end A389470.P18138110498114826538

/-!
# A389471: a(n) = Sum_{k=0..n} binomial(4*k+2,k).

The programs for A389471, the canonical program `A389471.P8174744093872280267` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389471 has offset 0).

The definition of A389471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389471.P8174744093872280267

`∑[A257633(n)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A389471

/-- `∑[A257633(n)]` -/
def P8174744093872280267.Spec : Prop :=
  ∀ n, P8174744093872280267.a n = A389471 n

theorem P8174744093872280267.correct : P8174744093872280267.Spec := by
  intro n
  simp only [A389471]

end A389471

/-! ## A389471.P6805805499990335791

`∑[C(4*n+2, n)]`
-/

namespace A389471.P6805805499990335791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 2) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P6805805499990335791

namespace A389471

/-- `∑[C(4*n+2, n)]` -/
def P6805805499990335791.Spec : Prop :=
  ∀ n, (P6805805499990335791.a n : ℤ) = A389471 n

theorem P6805805499990335791.correct : P6805805499990335791.Spec := by
  intro n
  simp only [A389471, Nat.add_sub_cancel, A389471.P6805805499990335791.f1, A389471.P6805805499990335791.a, A389471.P8174744093872280267.f1, A389471.P8174744093872280267.a, A257633, A257633.P3695274740093547.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A389471

/-! ## A389471.P11399605338403402904

`a(n-1)+C(4*n+2, n)` with `a(0)=1`
-/

namespace A389471.P11399605338403402904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (4 * n + 2) n

end

end A389471.P11399605338403402904

namespace A389471

/-- `a(n-1)+C(4*n+2, n)` -/
def P11399605338403402904.Spec : Prop :=
  ∀ n, (P11399605338403402904.a n : ℤ) = A389471 n

end A389471

/-! ## A389471.P1376209555574645851

`∑[A380113(2*(n+1)²)]`
-/

namespace A389471.P1376209555574645851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380113 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P1376209555574645851

namespace A389471

/-- `∑[A380113(2*(n+1)²)]` -/
def P1376209555574645851.Spec : Prop :=
  ∀ n, P1376209555574645851.a n = A389471 n

end A389471

/-! ## A389471.P11792930102423556773

`∑[A094527(2*(n+1)²)]`
-/

namespace A389471.P11792930102423556773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P11792930102423556773

namespace A389471

/-- `∑[A094527(2*(n+1)²)]` -/
def P11792930102423556773.Spec : Prop :=
  ∀ n, P11792930102423556773.a n = A389471 n

end A389471

/-! ## A389471.P2124914478345365646

`∑[A206294(2*(n+1)²)]`
-/

namespace A389471.P2124914478345365646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P2124914478345365646

namespace A389471

/-- `∑[A206294(2*(n+1)²)]` -/
def P2124914478345365646.Spec : Prop :=
  ∀ n, P2124914478345365646.a n = A389471 n

end A389471

/-!
# A389472: G.f. satisfies A(x) = A(x^2 + x^3)/x^2 - 1.

The programs for A389472, there is no canonical definition to state claims against.
-/

/-! ## A389472.P5178126983355138020

`A322911(A018060(n))`
-/

namespace A389472.P5178126983355138020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322911 (A018060 n).toNat

end

end A389472.P5178126983355138020

/-! ## A389472.P14332735698049890806

`A048264(A301750(n+1))`
-/

namespace A389472.P14332735698049890806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048264 (A301750 (n + 1)).toNat

end

end A389472.P14332735698049890806

/-! ## A389472.P9649980033642848075

`A307707(A105633(n+1))`
-/

namespace A389472.P9649980033642848075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A105633 (n + 1)).toNat

end

end A389472.P9649980033642848075

/-! ## A389472.P17612154562081966298

`A102455(A026768(n))`
-/

namespace A389472.P17612154562081966298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102455 (A026768 n).toNat

end

end A389472.P17612154562081966298

/-! ## A389472.P451224534816987265

`A162988(A047022(n))`
-/

namespace A389472.P451224534816987265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162988 (A047022 n).toNat

end

end A389472.P451224534816987265

/-!
# A389473: G.f. satisfies A(x) = x * Product_{n>=0} (1 + A(x)^(2^n))^(2^n).

The programs for A389473, there is no canonical definition to state claims against.
-/

/-! ## A389473.P1794846405889343375

`A194964(A150156(n))`
-/

namespace A389473.P1794846405889343375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A150156 n).toNat

end

end A389473.P1794846405889343375

/-! ## A389473.P4318323728967457542

`A008984(n)-A343606(A001654(n))`
-/

namespace A389473.P4318323728967457542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008984 n - A343606 (A001654 n).toNat

end

end A389473.P4318323728967457542

/-!
# A389474: G.f. A(x) satisfies A( x^2 + 2*x^3 + 2*A(x)^2 ) = 3*A(x)^2.

The programs for A389474, there is no canonical definition to state claims against.
-/

/-! ## A389474.P16425723148857266727

`A233569(A322700(n))`
-/

namespace A389474.P16425723148857266727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A322700 n).toNat

end

end A389474.P16425723148857266727

/-! ## A389474.P10164087264270545491

`A297464(A263762(n+1))`
-/

namespace A389474.P10164087264270545491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 (A263762 (n + 1)).toNat

end

end A389474.P10164087264270545491

/-!
# A389475: G.f. A(x) satisfies A(3*x^2) = 2*x^2 + A(x)^2 - 2*A(x)^3.

The programs for A389475, there is no canonical definition to state claims against.
-/

/-! ## A389475.P6588138748641841964

`A122077(A149170(n))`
-/

namespace A389475.P6588138748641841964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122077 (A149170 n).toNat

end

end A389475.P6588138748641841964

/-!
# A389476: G.f. A(x) satisfies: A( x - A(x)^2/(1 - A(x))^2 ) = x.

The programs for A389476, there is no canonical definition to state claims against.
-/

/-! ## A389476.P16164321757933884364

`A316899(A008159(n))`
-/

namespace A389476.P16164321757933884364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316899 (A008159 n).toNat

end

end A389476.P16164321757933884364

/-!
# A389478: Numbers k such that sigma(k) = psi(k) + phi(k).

The programs for A389478, there is no canonical definition to state claims against.
-/

/-! ## A389478.P1097417795736796708

`filter[A069552(n+1), A011687(#)]`
-/

namespace A389478.P1097417795736796708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011687 (f1 j).toNat = 1) n)

end

end A389478.P1097417795736796708

/-!
# A389480: Triangle read by rows where T(n,k) is the algebraic degree of cos(k*Pi/n).

The programs for A389480, there is no canonical definition to state claims against.
-/

/-! ## A389480.P16985716469471400962

`A172133(A010048(n))`
-/

namespace A389480.P16985716469471400962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172133 (A010048 n).toNat

end

end A389480.P16985716469471400962

/-! ## A389480.P15222239976805122507

`A063056(A297866(n+1))`
-/

namespace A389480.P15222239976805122507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (A297866 (n + 1)).toNat

end

end A389480.P15222239976805122507

/-! ## A389480.P2447218104674607020

`A063056(A298133(n+1))`
-/

namespace A389480.P2447218104674607020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (A298133 (n + 1)).toNat

end

end A389480.P2447218104674607020

/-! ## A389480.P7683717377616335064

`A135062(A317896(n+1))`
-/

namespace A389480.P7683717377616335064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135062 (A317896 (n + 1)).toNat

end

end A389480.P7683717377616335064

/-! ## A389480.P9639321685648918077

`A228351(A298575(n+1)%A334965(2*n+3))`
-/

namespace A389480.P9639321685648918077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (Int.tmod (A298575 (n + 1)) (A334965 (2 * n + 3))).toNat

end

end A389480.P9639321685648918077

/-!
# A389481: Primes that remain prime when their binary digits are rotated once to the right.

The programs for A389481, the canonical program `A389481.P15172081649911050968` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389481 has offset 1).

The definition of A389481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389481.P15172081649911050968

`p?[A080541(p?[2*n+1])]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A389481

/-- `p?[A080541(p?[2*n+1])]` -/
def P15172081649911050968.Spec : Prop :=
  ∀ n, P15172081649911050968.a n = A389481 (n + 1)

theorem P15172081649911050968.correct : P15172081649911050968.Spec := by
  intro n
  simp only [A389481, Nat.add_sub_cancel]

end A389481

/-! ## A389481.P4676927579815799062

`p?[A139708(p?[2*n+1])]`
-/

namespace A389481.P4676927579815799062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A389481.P4676927579815799062

namespace A389481

/-- `p?[A139708(p?[2*n+1])]` -/
def P4676927579815799062.Spec : Prop :=
  ∀ n, P4676927579815799062.a n = A389481 (n + 1)

end A389481

/-!
# A389482: Prime powers q such that LCM(1,2,...,q) = A003418(q) is highly abundant (A002093).

The programs for A389482, there is no canonical definition to state claims against.
-/

/-! ## A389482.P2378211137841828526

`∩[A000961(n+1), A389483(n+1)]`
-/

namespace A389482.P2378211137841828526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389482.P2378211137841828526

/-! ## A389482.P10633868678418024266

`∩[A036116(n+1), A389483(n+1)]`
-/

namespace A389482.P10633868678418024266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389482.P10633868678418024266

/-! ## A389482.P12593065172556489326

`∩[A195943(n+1), A389483(n+1)]`
-/

namespace A389482.P12593065172556489326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389482.P12593065172556489326

/-!
# A389486: Integers which can be represented as a sum of two distinct nontrivial powers in two or more ways.

The programs for A389486, there is no canonical definition to state claims against.
-/

/-! ## A389486.P11225537496963326862

`∩[A353438(n+1), A388051(n+1)]`
-/

namespace A389486.P11225537496963326862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389486.P11225537496963326862

/-!
# A389487: Triangle read by rows: T(n,k) = number of heapable permutations of length n with exactly k increasing runs.

The programs for A389487, there is no canonical definition to state claims against.
-/

/-! ## A389487.P7245082218943669230

`A389255(A038722(n+1))`
-/

namespace A389487.P7245082218943669230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389255 (A038722 (n + 1)).toNat

end

end A389487.P7245082218943669230

/-!
# A389488: Total sum of the lengths of the first runs in heapable permutations of length n.

The programs for A389488, there is no canonical definition to state claims against.
-/

/-! ## A389488.P12104696318241744266

`A053344(A375259(n))`
-/

namespace A389488.P12104696318241744266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053344 (A375259 n).toNat

end

end A389488.P12104696318241744266

/-! ## A389488.P11501535100740089765

`A001462(A365438(n)+A001109(n))`
-/

namespace A389488.P11501535100740089765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A365438 n + A001109 n).toNat

end

end A389488.P11501535100740089765

/-!
# A389493: Numbers k >= 1 such that k^2 - r^2 is a repunit (A002275) for some 1 <= r < k.

The programs for A389493, there is no canonical definition to state claims against.
-/

/-! ## A389493.P11838443520184668371

`filter[A048611(n+1), A080110(#)]`
-/

namespace A389493.P11838443520184668371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080110 (f1 j).toNat = 1) n)

end

end A389493.P11838443520184668371

/-!
# A389496: Triangle T(n,k) read by rows: T(n,k) is the number of heapable permutations of length n whose major index is k.

The programs for A389496, there is no canonical definition to state claims against.
-/

/-! ## A389496.P1626190945948505029

`A010873(C(A101198(n+1), A228074(n)))`
-/

namespace A389496.P1626190945948505029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (Nat.choose (A101198 (n + 1)).toNat (A228074 n).toNat)

end

end A389496.P1626190945948505029

/-! ## A389496.P7407804671487311707

`and(A008289(A000055(n)), A237271(n+1))`
-/

namespace A389496.P7407804671487311707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008289 (A000055 n).toNat) (A237271 (n + 1))

end

end A389496.P7407804671487311707

/-! ## A389496.P1522597786559041425

`and(A033461(A337664(n)), A110963(n+1))`
-/

namespace A389496.P1522597786559041425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033461 (A337664 n).toNat) (A110963 (n + 1))

end

end A389496.P1522597786559041425

/-! ## A389496.P10770078543382864910

`A036580(A059441(2*n+1)*A287170(3*(n+1)))`
-/

namespace A389496.P10770078543382864910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A059441 (2 * n + 1) * A287170 (3 * (n + 1))).toNat

end

end A389496.P10770078543382864910

/-! ## A389496.P6097518266022315940

`A091830(A367653(n))`
-/

namespace A389496.P6097518266022315940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091830 (A367653 n).toNat

end

end A389496.P6097518266022315940

/-!
# A389497: 

The programs for A389497, there is no canonical definition to state claims against.
-/

/-! ## A389497.P5638867141399024017

`eq[1, A010052(A005361(n+1))]+1`
-/

namespace A389497.P5638867141399024017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A389497.P5638867141399024017

