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
import Seq.B000.C019
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A186700: Next palindrome after n-th prime.

The programs for A186700, there is no canonical definition to state claims against.
-/

/-! ## A186700.P17619058091583373485

`A262038(p?[comp[n²]]+1)`
-/

namespace A186700.P17619058091583373485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A186700.P17619058091583373485

/-! ## A186700.P5967055593363550505

`A262038(A008864(n+1))`
-/

namespace A186700.P5967055593363550505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A008864 (n + 1)).toNat

end

end A186700.P5967055593363550505

/-! ## A186700.P2160356812681926666

`A262038(A028815(n+1))`
-/

namespace A186700.P2160356812681926666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A028815 (n + 1)).toNat

end

end A186700.P2160356812681926666

/-! ## A186700.P15337666980343989564

`A262038(A299763(n+2))`
-/

namespace A186700.P15337666980343989564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A299763 (n + 2)).toNat

end

end A186700.P15337666980343989564

/-! ## A186700.P8791683403670658874

`A262038(A000040(n+1)+1)`
-/

namespace A186700.P8791683403670658874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A000040 (n + 1) + 1).toNat

end

end A186700.P8791683403670658874

/-! ## A186700.P3857925594922042442

`A262038(A180458(n+1)+1)`
-/

namespace A186700.P3857925594922042442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A180458 (n + 1) + 1).toNat

end

end A186700.P3857925594922042442

/-! ## A186700.P9581191249994864368

`A262038(A006093(n+1)+2)`
-/

namespace A186700.P9581191249994864368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A006093 (n + 1) + 2).toNat

end

end A186700.P9581191249994864368

/-! ## A186700.P5148320078968320100

`A262038(eq[n, A002322(n+1)]+2)`
-/

namespace A186700.P5148320078968320100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A186700.P5148320078968320100

/-!
# A186701: Partial sums of Collatz sequence (A008908).

The programs for A186701, there is no canonical definition to state claims against.
-/

/-! ## A186701.P1464639643263466045

`∑[A008908(n+1)]`
-/

namespace A186701.P1464639643263466045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P1464639643263466045

/-! ## A186701.P15055551567318413167

`∑[A006577(n+1)+1]`
-/

namespace A186701.P15055551567318413167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P15055551567318413167

/-! ## A186701.P11558118520035897340

`A058633(n+1)+1+n`
-/

namespace A186701.P11558118520035897340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1) + 1 + (n : ℤ)

end

end A186701.P11558118520035897340

/-! ## A186701.P17579163181801392326

`∑[A058261(n)/(n+1)+1]`
-/

namespace A186701.P17579163181801392326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058261 n : ℚ) / (n + 1 : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P17579163181801392326

/-! ## A186701.P11269895916926851518

`∑[∑[A153330(A028310(n))]]`
-/

namespace A186701.P11269895916926851518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153330 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P11269895916926851518

/-! ## A186701.P12108269562310631459

`∑[A158799(n)+A139399(n+1)]`
-/

namespace A186701.P12108269562310631459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n + A139399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P12108269562310631459

/-! ## A186701.P5209691231878436357

`∑[A078719(n+1)+A006666(n+1)]`
-/

namespace A186701.P5209691231878436357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) + A006666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P5209691231878436357

/-! ## A186701.P12532775300049988068

`∑[A139399(n+1)+A130130(n)+1]`
-/

namespace A186701.P12532775300049988068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A130130 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P12532775300049988068

/-! ## A186701.P17497590797975691379

`∑[A213204(n+1)+A076228(n+1)]`
-/

namespace A186701.P17497590797975691379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (n + 1) + A076228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P17497590797975691379

/-! ## A186701.P16267836334852516073

`∑[A222641(n+1)+A087225(n+1)]`
-/

namespace A186701.P16267836334852516073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (n + 1) + A087225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P16267836334852516073

/-! ## A186701.P13685757173863972117

`∑[A064433(n+2)+A006667(n+1)]`
-/

namespace A186701.P13685757173863972117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 2) + A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P13685757173863972117

/-! ## A186701.P3379457439023433262

`∑[A006666(n+1)+A006667(n+1)+1]`
-/

namespace A186701.P3379457439023433262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A006667 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P3379457439023433262

/-! ## A186701.P15670261754650679792

`∑[A076228(n+1)+A222597(n+1)+1]`
-/

namespace A186701.P15670261754650679792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A222597 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P15670261754650679792

/-! ## A186701.P3924498808533991831

`∑[A220421(n+1)+A222641(n+1)+1]`
-/

namespace A186701.P3924498808533991831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1) + (A222641 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P3924498808533991831

/-! ## A186701.P1676645881912030519

`∑[floor(log2(A221468(2*(n+1))))]`
-/

namespace A186701.P1676645881912030519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A221468 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P1676645881912030519

/-! ## A186701.P16483072766745468551

`∑[A006577(A004277(n+1))]`
-/

namespace A186701.P16483072766745468551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A004277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P16483072766745468551

/-! ## A186701.P8432422617054318650

`∑[A006577(lt[A006370(n), n])]`
-/

namespace A186701.P8432422617054318650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P8432422617054318650

/-! ## A186701.P6028129102814863610

`∑[A139399(4*(n+1))+1]`
-/

namespace A186701.P6028129102814863610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P6028129102814863610

/-! ## A186701.P11721428586236535717

`∑[A127885(n+1)+A127886(n+1)+1]`
-/

namespace A186701.P11721428586236535717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (n + 1) + (A127886 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P11721428586236535717

/-! ## A186701.P13004319763732553669

`∑[A352890(A005940(n+2))+1]`
-/

namespace A186701.P13004319763732553669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (A005940 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186701.P13004319763732553669

/-!
# A186703: Balanced ternary non-Harshad numbers.

The programs for A186703, there is no canonical definition to state claims against.
-/

/-! ## A186703.P7983330503289038412

`comp[lcm(n, A065363(n))]`
-/

namespace A186703.P7983330503289038412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A065363 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A186703.P7983330503289038412

/-! ## A186703.P16703538047807076708

`lt[A184908(A006288(n)), 1]`
-/

namespace A186703.P16703538047807076708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184908 (A006288 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A186703.P16703538047807076708

/-! ## A186703.P14961216843340492568

`eq[A010872(A140267(n)), A087702(3*n+1)]`
-/

namespace A186703.P14961216843340492568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A140267 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087702 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186703.P14961216843340492568

/-! ## A186703.P629321135766426017

`A110569(A233000(n))+A016777(n)`
-/

namespace A186703.P629321135766426017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110569 (A233000 n).toNat + A016777 n

end

end A186703.P629321135766426017

/-! ## A186703.P17177387692865214851

`eq[A055092(A028240(n)), A105203(n)]`
-/

namespace A186703.P17177387692865214851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 (A028240 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186703.P17177387692865214851

/-!
# A186707: Partial sums of A007202 (crystal ball sequence for hexagonal close-packing).

The programs for A186707, the canonical program `A186707.P423474276702667307` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186707 has offset 0).

The definition of A186707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186707.P423474276702667307

`7*n*(n^3+4*n²+6*n+4)/8+(15+(-1)^n)/16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A186707

/-- `7*n*(n^3+4*n²+6*n+4)/8+(15+(-1)^n)/16` -/
def P423474276702667307.Spec : Prop :=
  ∀ n, P423474276702667307.a n = (A186707 n : ℚ)

end A186707

/-! ## A186707.P9984869924585371430

`∑[A007202(n)]`
-/

namespace A186707.P9984869924585371430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186707.P9984869924585371430

namespace A186707

/-- `∑[A007202(n)]` -/
def P9984869924585371430.Spec : Prop :=
  ∀ n, P9984869924585371430.a n = A186707 n

end A186707

/-! ## A186707.P11179292017628345828

`∑[∑[A007899(n)]]`
-/

namespace A186707.P11179292017628345828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007899 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186707.P11179292017628345828

namespace A186707

/-- `∑[∑[A007899(n)]]` -/
def P11179292017628345828.Spec : Prop :=
  ∀ n, P11179292017628345828.a n = A186707 n

end A186707

/-! ## A186707.P15049310097797447153

`(A212690(n+1)+A212687(n+1))/2`
-/

namespace A186707.P15049310097797447153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212690 (n + 1) + A212687 (n + 1) : ℚ) / 2

end

end A186707.P15049310097797447153

namespace A186707

/-- `(A212690(n+1)+A212687(n+1))/2` -/
def P15049310097797447153.Spec : Prop :=
  ∀ n, P15049310097797447153.a n = (A186707 n : ℚ)

end A186707

/-! ## A186707.P15128527362318118393

`∑[∑[A008264(2*n)]]`
-/

namespace A186707.P15128527362318118393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008264 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186707.P15128527362318118393

namespace A186707

/-- `∑[∑[A008264(2*n)]]` -/
def P15128527362318118393.Spec : Prop :=
  ∀ n, P15128527362318118393.a n = A186707 n

end A186707

/-!
# A186708: Number of quadratic residues (mod p) in the interval [1,2k+1], for primes p=4k+3.

The programs for A186708, there is no canonical definition to state claims against.
-/

/-! ## A186708.P9337926747080522219

`(A104635(n+1)+A178154(n+1))/2`
-/

namespace A186708.P9337926747080522219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104635 (n + 1) + A178154 (n + 1) : ℚ) / 2

end

end A186708.P9337926747080522219

/-! ## A186708.P12925001254957060397

`(A002145(n+1)+2*A178154(n+1)-1)/4`
-/

namespace A186708.P12925001254957060397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) + 2 * A178154 (n + 1) - 1 : ℚ) / 4

end

end A186708.P12925001254957060397

/-! ## A186708.P8918142022208203111

`A186709(n+1)+A178154(n+1)`
-/

namespace A186708.P8918142022208203111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186709 (n + 1) + A178154 (n + 1)

end

end A186708.P8918142022208203111

/-! ## A186708.P7356786863885086228

`A104635(n+1)-A186709(n+1)`
-/

namespace A186708.P7356786863885086228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) - A186709 (n + 1)

end

end A186708.P7356786863885086228

/-! ## A186708.P9653898047536112965

`(p?[4*n-1]-1)/2-A276183(4*p?[4*n-1])`
-/

namespace A186708.P9653898047536112965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2 - (A276183 (4 * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat : ℚ)

end

end A186708.P9653898047536112965

/-! ## A186708.P1295198445122752181

`A178151(A080148(n+1))`
-/

namespace A186708.P1295198445122752181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178151 (A080148 (n + 1)).toNat

end

end A186708.P1295198445122752181

/-! ## A186708.P4019343401810066354

`A178151(A000720(p?[4*n-1]))`
-/

namespace A186708.P4019343401810066354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178151 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A186708.P4019343401810066354

/-! ## A186708.P1223704068956800295

`A178151(A055396(p?[4*n-1]))`
-/

namespace A186708.P1223704068956800295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178151 (A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A186708.P1223704068956800295

/-! ## A186708.P5469407872166920999

`(p?[4*n-1]-1)/2-A276183(4*A002145(n+1))`
-/

namespace A186708.P5469407872166920999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2 - (A276183 (4 * A002145 (n + 1)).toNat : ℚ)

end

end A186708.P5469407872166920999

/-! ## A186708.P7137865202239648641

`2*eq[2, A000005(4*n+3)]+1-A276183(4*p?[4*n-1])`
-/

namespace A186708.P7137865202239648641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A276183 (4 * f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)).toNat

end

end A186708.P7137865202239648641

/-!
# A186709: Number of quadratic residues (mod p) in the interval [2k+2,4k+2], for primes p=4k+3.

The programs for A186709, there is no canonical definition to state claims against.
-/

/-! ## A186709.P17864724040852582305

`A104635(n+1)-A186708(n+1)`
-/

namespace A186709.P17864724040852582305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) - A186708 (n + 1)

end

end A186709.P17864724040852582305

/-! ## A186709.P8126271619858582245

`A186708(n+1)-A178154(n+1)`
-/

namespace A186709.P8126271619858582245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186708 (n + 1) - A178154 (n + 1)

end

end A186709.P8126271619858582245

/-! ## A186709.P2844929992723247255

`(A104635(n+1)-A178154(n+1))/2`
-/

namespace A186709.P2844929992723247255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104635 (n + 1) - A178154 (n + 1) : ℚ) / 2

end

end A186709.P2844929992723247255

/-! ## A186709.P12094258067724033510

`(A002145(n+1)-2*A178154(n+1)-1)/4`
-/

namespace A186709.P12094258067724033510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) - 2 * A178154 (n + 1) - 1 : ℚ) / 4

end

end A186709.P12094258067724033510

/-! ## A186709.P12336954947967569021

`A276183(4*p?[4*n-1])`
-/

namespace A186709.P12336954947967569021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276183 (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A186709.P12336954947967569021

/-!
# A186711: Greatest common divisor of the n-th and (n+1)st 3-smooth numbers.

The programs for A186711, there is no canonical definition to state claims against.
-/

/-! ## A186711.P10579817149104424075

`gcd(∑[A061987(n)], A061987(n+1))`
-/

namespace A186711.P10579817149104424075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A061987 (n + 1))

end

end A186711.P10579817149104424075

/-! ## A186711.P4460018247476020404

`gcd(Δ[A259823(n)], A003586(n+2))`
-/

namespace A186711.P4460018247476020404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A003586 (n + 2))

end

end A186711.P4460018247476020404

/-! ## A186711.P15176701290309804326

`gcd(Δ[A003586(n+1)], A003586(n+1))`
-/

namespace A186711.P15176701290309804326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A003586 (n + 1))

end

end A186711.P15176701290309804326

/-! ## A186711.P18409963587101375784

`gcd(Δ[A007694(n+2)/2], A007694(n+2))`
-/

namespace A186711.P18409963587101375784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007694 (n + 2) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A007694 (n + 2))

end

end A186711.P18409963587101375784

/-! ## A186711.P12216699214907518104

`sqrt(gcd(A025620(n+1), A025620(n+2)))`
-/

namespace A186711.P12216699214907518104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A025620 (n + 1)) (A025620 (n + 2)) : ℝ)

end

end A186711.P12216699214907518104

/-! ## A186711.P15806839780009773899

`gcd(Δ[A003586(n+1)], A026549(n))`
-/

namespace A186711.P15806839780009773899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A026549 n)

end

end A186711.P15806839780009773899

/-! ## A186711.P10629322107045443040

`A273943(gcd(A007694(n+2), A007694(n+3)))`
-/

namespace A186711.P10629322107045443040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.gcd (A007694 (n + 2)) (A007694 (n + 3)))

end

end A186711.P10629322107045443040

/-! ## A186711.P14968246129225364841

`A003586(A322026(Δ[A003586(n+1)]))`
-/

namespace A186711.P14968246129225364841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A322026 (f1 (n + 1) - f1 n).toNat).toNat

end

end A186711.P14968246129225364841

/-! ## A186711.P8403024814608223022

`A336551(Δ[A033845(n+1)])+1`
-/

namespace A186711.P8403024814608223022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (f1 (n + 1) - f1 n).toNat + 1

end

end A186711.P8403024814608223022

/-! ## A186711.P10926637198977899748

`A065331(A061987(n+1))`
-/

namespace A186711.P10926637198977899748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A061987 (n + 1)).toNat

end

end A186711.P10926637198977899748

/-!
# A186713: For the starting base k = A118119(n), a(n) is the largest value q such that gcd(k^n+1, (k+1)^n+1, ..., (k+q)^n+1) > 1.

The programs for A186713, there is no canonical definition to state claims against.
-/

/-! ## A186713.P2849983552996447097

`A006466(A227564(n)+A000217(n))`
-/

namespace A186713.P2849983552996447097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A227564 (n + 37) + A000217 n).toNat

end

end A186713.P2849983552996447097

/-! ## A186713.P17201806344560984721

`gcd(A255561(n), A280193(A255583(n+2)²))`
-/

namespace A186713.P17201806344560984721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255561 n) (A280193 (A255583 (n + 2) ^ 2).toNat)

end

end A186713.P17201806344560984721

/-! ## A186713.P9210173624742608634

`gcd(A255583(n+2), A280193(A255561(n)))`
-/

namespace A186713.P9210173624742608634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A255583 (n + 2)) (A280193 (A255561 n).toNat)

end

end A186713.P9210173624742608634

/-! ## A186713.P18379593202668322240

`A251092(2*A364052(n+2))`
-/

namespace A186713.P18379593202668322240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251092 (2 * A364052 (n + 2)).toNat

end

end A186713.P18379593202668322240

/-!
# A186714: Triangular array C(n, k) = number of connected k-regular graphs, having girth at least 4, with n nodes, 0 <= k <= n div 2.

The programs for A186714, there is no canonical definition to state claims against.
-/

/-! ## A186714.P3946195668680307835

`A368072(or(A243571(2*(n+1)), A368090(n)))`
-/

namespace A186714.P3946195668680307835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368072 (Int.lor (A243571 (2 * (n + 1))) (A368090 n)).toNat

end

end A186714.P3946195668680307835

/-! ## A186714.P17149955722502319842

`A381101(A235154(n+1))`
-/

namespace A186714.P17149955722502319842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381101 (A235154 (n + 1)).toNat

end

end A186714.P17149955722502319842

/-! ## A186714.P13488204027023084643

`A381101(A132077(n+2))`
-/

namespace A186714.P13488204027023084643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381101 (A132077 (n + 2)).toNat

end

end A186714.P13488204027023084643

/-! ## A186714.P11359719512512722853

`A098725(record[A208688(n+1)])`
-/

namespace A186714.P11359719512512722853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186714.P11359719512512722853

/-! ## A186714.P3289608740740950355

`A112416(A018772(n+1)+1)`
-/

namespace A186714.P3289608740740950355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112416 (A018772 (n + 1) + 1).toNat

end

end A186714.P3289608740740950355

/-!
# A186715: Irregular triangle C(n,k)=number of connected k-regular graphs on n vertices having girth at least five.

The programs for A186715, there is no canonical definition to state claims against.
-/

/-! ## A186715.P11615977287471300582

`A288377(6*A123231(n+1))`
-/

namespace A186715.P11615977287471300582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288377 (6 * A123231 (n + 1)).toNat

end

end A186715.P11615977287471300582

/-! ## A186715.P3198041336142159304

`A164349(xor(A135851(n+1), A143331(2*n+1)))`
-/

namespace A186715.P3198041336142159304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (Int.xor (A135851 (n + 1)) (A143331 (2 * n + 1))).toNat

end

end A186715.P3198041336142159304

/-! ## A186715.P18032212390486173373

`and(1, A193803(n+1)*A305847(n+1))`
-/

namespace A186715.P18032212390486173373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A193803 (n + 1) * A305847 (n + 1))

end

end A186715.P18032212390486173373

/-! ## A186715.P15869469027700279521

`and(A010057(A066448(n)), A193803(n+1))`
-/

namespace A186715.P15869469027700279521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010057 (A066448 n).toNat) (A193803 (n + 1))

end

end A186715.P15869469027700279521

/-! ## A186715.P3268682174500105140

`A000035(A182703(n+1)*A193803(n+1))`
-/

namespace A186715.P3268682174500105140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A182703 (n + 1) * A193803 (n + 1)).toNat

end

end A186715.P3268682174500105140

/-!
# A186716: Irregular triangle C(n,k): the number of connected k-regular graphs on n vertices having girth at least six.

The programs for A186716, there is no canonical definition to state claims against.
-/

/-! ## A186716.P13066417586693722790

`and(A023533(4^A341794(n+3)), A023655(n+1))`
-/

namespace A186716.P13066417586693722790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023533 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A341794 (n + 3) : ℤ))).toNat) (A023655 (n + 1))

end

end A186716.P13066417586693722790

/-! ## A186716.P9776213706054789198

`A186719(∑[A170824(n+1)])`
-/

namespace A186716.P9776213706054789198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186716.P9776213706054789198

/-! ## A186716.P3563176944572553250

`A186719(∑[A248909(n+1)])`
-/

namespace A186716.P3563176944572553250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186716.P3563176944572553250

/-! ## A186716.P13678849975052834359

`and(A096872(n+1), A173857(n+1))`
-/

namespace A186716.P13678849975052834359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096872 (n + 1)) (A173857 (n + 1))

end

end A186716.P13678849975052834359

/-! ## A186716.P1566360480788406276

`A011655(A052928(2*(n+2))*A130664(n+1))`
-/

namespace A186716.P1566360480788406276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A052928 (2 * (n + 2)) * A130664 (n + 1)).toNat

end

end A186716.P1566360480788406276

/-!
# A186717: Irregular triangle C(n,k): the number of connected k-regular graphs on n vertices having girth at least seven.

The programs for A186717, there is no canonical definition to state claims against.
-/

/-! ## A186717.P15861517653518632955

`A186718(∑[A033630(A263683(n+1))])`
-/

namespace A186717.P15861517653518632955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A263683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186718 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186717.P15861517653518632955

/-! ## A186717.P13810859422701690990

`A186718(A074066(n+1))^A204598(n+1)`
-/

namespace A186717.P13810859422701690990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186718 (A074066 (n + 1)).toNat : ℚ) ^ (A204598 (n + 1) : ℤ)

end

end A186717.P13810859422701690990

/-! ## A186717.P2726555271366648855

`A186718(A074066(n+1))^A231011(n+1)`
-/

namespace A186717.P2726555271366648855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186718 (A074066 (n + 1)).toNat : ℚ) ^ (A231011 (n + 1) : ℤ)

end

end A186717.P2726555271366648855

/-! ## A186717.P11837906433205768771

`A186718(A074066(n+1))^A120930(n+2)`
-/

namespace A186717.P11837906433205768771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186718 (A074066 (n + 1)).toNat : ℚ) ^ (A120930 (n + 2) : ℤ)

end

end A186717.P11837906433205768771

/-! ## A186717.P5153970731037800134

`A186718(A074066(n+1))^A192017(n+2)`
-/

namespace A186717.P5153970731037800134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186718 (A074066 (n + 1)).toNat : ℚ) ^ (A192017 (n + 2) : ℤ)

end

end A186717.P5153970731037800134

/-! ## A186717.P3226212852527330814

`A186718(A074066(n+1))%A122510(n+8)`
-/

namespace A186717.P3226212852527330814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186718 (A074066 (n + 1)).toNat) (A122510 (n + 8))

end

end A186717.P3226212852527330814

/-! ## A186717.P18374511626102250326

`A186718(A074066(n+1))^A007318(A238783(n+1))`
-/

namespace A186717.P18374511626102250326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186718 (A074066 (n + 1)).toNat : ℚ) ^ (A007318 (A238783 (n + 1)).toNat : ℤ)

end

end A186717.P18374511626102250326

/-! ## A186717.P6546933900076090367

`A186719(A088472(n+1))`
-/

namespace A186717.P6546933900076090367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186719 (A088472 (n + 1)).toNat

end

end A186717.P6546933900076090367

/-! ## A186717.P11472762938122308893

`A186718(A074066(n+1))^A006530(A098062(n+1))`
-/

namespace A186717.P11472762938122308893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186718 (A074066 (n + 1)).toNat : ℚ) ^ (A006530 (A098062 (n + 1)).toNat : ℤ)

end

end A186717.P11472762938122308893

/-!
# A186718: Irregular triangle C(n,k): number of connected k-regular simple graphs on n vertices with girth at least eight.

The programs for A186718, there is no canonical definition to state claims against.
-/

/-! ## A186718.P15802752863899812016

`A186719(A113655(n+1))^A093723(n+1)`
-/

namespace A186718.P15802752863899812016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186719 (A113655 (n + 1)).toNat : ℚ) ^ (A093723 (n + 1) : ℤ)

end

end A186718.P15802752863899812016

/-! ## A186718.P16146540113470120307

`A186719(A113655(n+1))^A177764(n+1)`
-/

namespace A186718.P16146540113470120307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186719 (A113655 (n + 1)).toNat : ℚ) ^ (A177764 (n + 1) : ℤ)

end

end A186718.P16146540113470120307

/-! ## A186718.P16286896903924199385

`A186719(A138153(n+1))^A177764(n+1)`
-/

namespace A186718.P16286896903924199385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186719 (A138153 (n + 1)).toNat : ℚ) ^ (A177764 (n + 1) : ℤ)

end

end A186718.P16286896903924199385

/-! ## A186718.P16001894634676109901

`A186719(A060000(n+1))^A317765(n+1)`
-/

namespace A186718.P16001894634676109901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186719 (A060000 (n + 1)).toNat : ℚ) ^ (A317765 (n + 1) : ℤ)

end

end A186718.P16001894634676109901

/-! ## A186718.P13403312256682434080

`A186719(A113655(n+1))^A317765(n+1)`
-/

namespace A186718.P13403312256682434080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186719 (A113655 (n + 1)).toNat : ℚ) ^ (A317765 (n + 1) : ℤ)

end

end A186718.P13403312256682434080

/-! ## A186718.P15896730386801240121

`A186719(A138153(n+1))^A317765(n+1)`
-/

namespace A186718.P15896730386801240121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186719 (A138153 (n + 1)).toNat : ℚ) ^ (A317765 (n + 1) : ℤ)

end

end A186718.P15896730386801240121

/-! ## A186718.P6725499973121776886

`A186719(A060000(n+1))^A325678(n+2)`
-/

namespace A186718.P6725499973121776886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186719 (A060000 (n + 1)).toNat : ℚ) ^ (A325678 (n + 2) : ℤ)

end

end A186718.P6725499973121776886

/-! ## A186718.P15602164365174095362

`A186719(A113655(n+1))^A183028(n+3)`
-/

namespace A186718.P15602164365174095362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186719 (A113655 (n + 1)).toNat : ℚ) ^ (A183028 (n + 3) : ℤ)

end

end A186718.P15602164365174095362

/-! ## A186718.P4718452626436305599

`A186719(A060000(n+1))%A093723(n+1)`
-/

namespace A186718.P4718452626436305599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186719 (A060000 (n + 1)).toNat) (A093723 (n + 1))

end

end A186718.P4718452626436305599

/-!
# A186719: Irregular triangle C(n,k): number of connected k-regular simple graphs on n vertices with girth at least nine.

The programs for A186719, there is no canonical definition to state claims against.
-/

/-! ## A186719.P14237934353766765354

`A266588(ceil((2*n/3)²))`
-/

namespace A186719.P14237934353766765354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266588 ⌈(2 * ((n : ℚ) / 3)) ^ 2⌉.toNat

end

end A186719.P14237934353766765354

/-! ## A186719.P1274856906787514531

`A283904(2*(n+1))^-A283928(n+1)`
-/

namespace A186719.P1274856906787514531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283904 (2 * (n + 1)) : ℚ) ^ (-A283928 (n + 1) : ℤ)

end

end A186719.P1274856906787514531

/-! ## A186719.P17881813921473467294

`and(A033480(n), A186729(A052938(n)))`
-/

namespace A186719.P17881813921473467294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033480 n) (A186729 (A052938 n).toNat)

end

end A186719.P17881813921473467294

/-! ## A186719.P2220288380983868957

`C(A001222(A283937(n+1)), A283904(2*n+2))`
-/

namespace A186719.P2220288380983868957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A283937 (n + 1)).toNat).toNat (A283904 (2 * n + 2)).toNat

end

end A186719.P2220288380983868957

/-! ## A186719.P5609108885511090544

`and(A173857(n+1), A359754(n+1))`
-/

namespace A186719.P5609108885511090544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173857 (n + 1)) (A359754 (n + 1))

end

end A186719.P5609108885511090544

/-!
# A186720: As p runs through the primes, sequence gives denominator of Sum_{k=1..p-1} 1/k^2.

The programs for A186720, there is no canonical definition to state claims against.
-/

/-! ## A186720.P13933497731627586503

`A007407(eq[1, ∑{e}[n+1, #]])`
-/

namespace A186720.P13933497731627586503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A186720.P13933497731627586503

/-! ## A186720.P10986738415322454902

`A007407(p?[xor(1, n)+1]-1)`
-/

namespace A186720.P10986738415322454902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A186720.P10986738415322454902

/-! ## A186720.P1763428746766573277

`A007407(record[∏{p}[n+1, #-1]])`
-/

namespace A186720.P1763428746766573277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186720.P1763428746766573277

/-! ## A186720.P6730548230767783038

`A007407(eq[2, ∏{e}[n+1, #+1]])`
-/

namespace A186720.P6730548230767783038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A186720.P6730548230767783038

/-! ## A186720.P14428352781949439245

`A007407(A006093(n+1))`
-/

namespace A186720.P14428352781949439245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007407 (A006093 (n + 1)).toNat

end

end A186720.P14428352781949439245

/-!
# A186721: Numbers n such that n, 4n + 1 and 6n + 1 are all prime.

The programs for A186721, there is no canonical definition to state claims against.
-/

/-! ## A186721.P16770657025175600146

`p?[A255607(n+1)]`
-/

namespace A186721.P16770657025175600146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186721.P16770657025175600146

/-! ## A186721.P4302038749100319684

`p?[A014682(A130800(n+1))]`
-/

namespace A186721.P4302038749100319684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A130800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A186721.P4302038749100319684

/-! ## A186721.P14147175514778706494

`filter[A255607(n+1), A010051(#)]`
-/

namespace A186721.P14147175514778706494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A186721.P14147175514778706494

/-! ## A186721.P5677202033790664109

`filter[A255607(n+1), A257531(#)]`
-/

namespace A186721.P5677202033790664109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A186721.P5677202033790664109

/-!
# A186722: a(n) = numerator of Sum_{k=1..p-1} 1/k^2 for p the n-th prime.

The programs for A186722, there is no canonical definition to state claims against.
-/

/-! ## A186722.P4035531323634988041

`A007406(eq[1, ∑{e}[n+1, #]])`
-/

namespace A186722.P4035531323634988041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007406 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A186722.P4035531323634988041

/-! ## A186722.P6342576180056457798

`A007406(p?[xor(1, n)+1]-1)`
-/

namespace A186722.P6342576180056457798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007406 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A186722.P6342576180056457798

/-! ## A186722.P11961985534850052590

`A007406(A006093(n+1))`
-/

namespace A186722.P11961985534850052590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007406 (A006093 (n + 1)).toNat

end

end A186722.P11961985534850052590

/-! ## A186722.P6576027289768801814

`A007406(record[A000010(n+1)])`
-/

namespace A186722.P6576027289768801814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007406 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A186722.P6576027289768801814

/-! ## A186722.P16819363000792326041

`A007406(A000040(n+1)-1)`
-/

namespace A186722.P16819363000792326041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007406 (A000040 (n + 1) - 1).toNat

end

end A186722.P16819363000792326041

/-!
# A186723: a(n) = n^n! (mod 10).

The programs for A186723, the canonical program `A186723.P8199349779263166728` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186723 has offset 0).

The definition of A186723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186723.P8199349779263166728

`(n^gcd(4, A016116(n)))%10`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A186723

/-- `(n^gcd(4, A016116(n)))%10` -/
def P8199349779263166728.Spec : Prop :=
  ∀ n, (P8199349779263166728.a n : ℤ) = A186723 n

theorem P8199349779263166728.correct : P8199349779263166728.Spec := by
  intro n
  simp only [A186723]

end A186723

/-!
# A186724: Number of connected regular graphs with n nodes and girth at least 4.

The programs for A186724, there is no canonical definition to state claims against.
-/

/-! ## A186724.P9041860253960462098

`A186744(n)+A186725(n)`
-/

namespace A186724.P9041860253960462098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186744 n + A186725 n

end

end A186724.P9041860253960462098

/-! ## A186724.P18158192924870197421

`A185314(n)-A185214(n)`
-/

namespace A186724.P18158192924870197421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185314 n - A185214 n

end

end A186724.P18158192924870197421

/-! ## A186724.P9623981186462551840

`A186726(n)+A186745(n)+A186744(n)`
-/

namespace A186724.P9623981186462551840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 n + (A186745 n + A186744 n)

end

end A186724.P9623981186462551840

/-! ## A186724.P13662793310908638695

`A185314(n)+A210713(n)-A068932(n)`
-/

namespace A186724.P13662793310908638695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185314 n + (A210713 n - A068932 n)

end

end A186724.P13662793310908638695

/-! ## A186724.P15702425787189126746

`A185314(n)-(A210714(n)+A185215(n))`
-/

namespace A186724.P15702425787189126746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185314 n - (A210714 n + A185215 n)

end

end A186724.P15702425787189126746

/-!
# A186725: Number of connected regular graphs with n nodes and girth at least 5.

The programs for A186725, there is no canonical definition to state claims against.
-/

/-! ## A186725.P14810116748132043048

`A186745(n)+A186726(n)`
-/

namespace A186725.P14810116748132043048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 n + A186726 n

end

end A186725.P14810116748132043048

/-! ## A186725.P2215713142420557311

`A185315(n)-A185215(n)`
-/

namespace A186725.P2215713142420557311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185315 n - A185215 n

end

end A186725.P2215713142420557311

/-! ## A186725.P9843861372584959006

`A186727(n)+A186746(n)+A186745(n)`
-/

namespace A186725.P9843861372584959006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 n + (A186746 n + A186745 n)

end

end A186725.P9843861372584959006

/-! ## A186725.P8485310626305638833

`A185316(n)+A186745(n)-A185216(n)`
-/

namespace A186725.P8485310626305638833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n + (A186745 n - A185216 n)

end

end A186725.P8485310626305638833

/-! ## A186725.P3383030100004995244

`A185315(n)-(A210715(n)+A185216(n))`
-/

namespace A186725.P3383030100004995244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185315 n - (A210715 n + A185216 n)

end

end A186725.P3383030100004995244

/-!
# A186726: Number of connected regular graphs with n nodes and girth at least 6.

The programs for A186726, there is no canonical definition to state claims against.
-/

/-! ## A186726.P13439842336612316774

`A186746(n)+A186727(n)`
-/

namespace A186726.P13439842336612316774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 n + A186727 n

end

end A186726.P13439842336612316774

/-! ## A186726.P1833213381486741560

`A186728(n)+A186747(n)+A186746(n)`
-/

namespace A186726.P1833213381486741560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186728 n + (A186747 n + A186746 n)

end

end A186726.P1833213381486741560

/-! ## A186726.P14437531884217761971

`A185317(n)+A186746(n)-A185217(n)`
-/

namespace A186726.P14437531884217761971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185317 n + (A186746 n - A185217 n)

end

end A186726.P14437531884217761971

/-! ## A186726.P2236498245505035418

`A186727(n)-(A185245(n)-A186746(n))`
-/

namespace A186726.P2236498245505035418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 n - (A185245 n - A186746 n)

end

end A186726.P2236498245505035418

/-! ## A186726.P8035543004908942048

`A186727(n)-(A185246(n)-A186746(n))`
-/

namespace A186726.P8035543004908942048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 n - (A185246 n - A186746 n)

end

end A186726.P8035543004908942048

/-!
# A186727: Number of connected regular graphs with n nodes and girth at least 7.

The programs for A186727, there is no canonical definition to state claims against.
-/

/-! ## A186727.P7733198217663673958

`A186747(n)+A186728(n)`
-/

namespace A186727.P7733198217663673958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 n + A186728 n

end

end A186727.P7733198217663673958

/-! ## A186727.P17412836171183429599

`A185317(n)-A185217(n)`
-/

namespace A186727.P17412836171183429599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185317 n - A185217 n

end

end A186727.P17412836171183429599

/-! ## A186727.P6723087802966556577

`A186729(n)+A186748(n)+A186747(n)`
-/

namespace A186727.P6723087802966556577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186729 n + (A186748 n + A186747 n)

end

end A186727.P6723087802966556577

/-! ## A186727.P10856971551916875697

`A185318(n)+A186747(n)-A185218(n)`
-/

namespace A186727.P10856971551916875697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185318 n + (A186747 n - A185218 n)

end

end A186727.P10856971551916875697

/-! ## A186727.P6336679993349819034

`A185318(n)+A198317(n)-A185217(n)`
-/

namespace A186727.P6336679993349819034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185318 n + (A198317 n - A185217 n)

end

end A186727.P6336679993349819034

/-!
# A186728: Number of connected regular graphs with n nodes and girth at least 8.

The programs for A186728, there is no canonical definition to state claims against.
-/

/-! ## A186728.P1843038071177088857

`A186748(n)+A186729(n)`
-/

namespace A186728.P1843038071177088857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186748 n + A186729 n

end

end A186728.P1843038071177088857

/-! ## A186728.P810365761721545231

`A185318(n)-A185218(n)`
-/

namespace A186728.P810365761721545231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185318 n - A185218 n

end

end A186728.P810365761721545231

/-! ## A186728.P11805388234007661364

`A186748(n)+val(A154044(n+3), 10)`
-/

namespace A186728.P11805388234007661364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186748 n + (SequenceMachineLib.valuation (A154044 (n + 3)).toNat 10 : ℤ)

end

end A186728.P11805388234007661364

/-! ## A186728.P4210886574241422921

`A186748(n)+and(1, 55%A240565(n+1))`
-/

namespace A186728.P4210886574241422921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186748 n + Int.land 1 (Int.tmod 55 (A240565 (n + 1)))

end

end A186728.P4210886574241422921

/-! ## A186728.P17233533934377301306

`A185319(n)+A186748(n)-A185219(n)`
-/

namespace A186728.P17233533934377301306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 n + (A186748 n - A185219 n)

end

end A186728.P17233533934377301306

/-!
# A186729: Number of connected regular simple graphs on n vertices with girth at least 9.

The programs for A186729, there is no canonical definition to state claims against.
-/

/-! ## A186729.P9462124815351834111

`A185319(n)-A185219(n)`
-/

namespace A186729.P9462124815351834111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 n - A185219 n

end

end A186729.P9462124815351834111

/-! ## A186729.P6472614567910390466

`A185319(n)-(A185218(n)-A210718(n))`
-/

namespace A186729.P6472614567910390466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 n - (A185218 n - A210718 n)

end

end A186729.P6472614567910390466

/-! ## A186729.P17641287903105560807

`A185319(n)-(A185217(n)-(A210718(n)+A210717(n)))`
-/

namespace A186729.P17641287903105560807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 n - (A185217 n - (A210718 n + A210717 n))

end

end A186729.P17641287903105560807

/-! ## A186729.P12403480965740667933

`A185319(n)-(A185217(n)-A210717(n)-A210718(A028310(n)))`
-/

namespace A186729.P12403480965740667933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 n - (A185217 n - A210717 n - A210718 (A028310 n).toNat)

end

end A186729.P12403480965740667933

/-! ## A186729.P11273102848444014611

`and(1, 55%A240565(n+1))`
-/

namespace A186729.P11273102848444014611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (Int.tmod 55 (A240565 (n + 1)))

end

end A186729.P11273102848444014611

/-! ## A186729.P5156805748699310793

`A060576(A000045(floor(n/e)))`
-/

namespace A186729.P5156805748699310793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A000045 ⌊(n : ℝ) / Real.exp 1⌋.toNat).toNat

end

end A186729.P5156805748699310793

/-! ## A186729.P15382979473410874447

`2-A007318(floor(log(A285688(n+1))))`
-/

namespace A186729.P15382979473410874447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007318 ⌊Real.log (A285688 (n + 1) : ℝ)⌋.toNat

end

end A186729.P15382979473410874447

/-!
# A186730: Number of n-element subsets that can be chosen from {1,2,...,2*n^2} having element sum n^3.

The programs for A186730, there is no canonical definition to state claims against.
-/

/-! ## A186730.P4770859849632566588

`A185282(∑[n+3])`
-/

namespace A186730.P4770859849632566588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185282 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186730.P4770859849632566588

/-! ## A186730.P3133062258048930231

`and(-1, A185282(A141214(n)))`
-/

namespace A186730.P3133062258048930231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A185282 (A141214 n).toNat)

end

end A186730.P3133062258048930231

/-! ## A186730.P5867657713108278883

`A185282(A141214(n))+A174615(n)`
-/

namespace A186730.P5867657713108278883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185282 (A141214 n).toNat + A174615 n

end

end A186730.P5867657713108278883

/-! ## A186730.P10073963117248250143

`A185282(A141214(n))/gcd(5, A000032(n+2))`
-/

namespace A186730.P10073963117248250143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185282 (A141214 n).toNat : ℚ) / (Int.gcd 5 (A000032 (n + 2)) : ℚ)

end

end A186730.P10073963117248250143

/-!
# A186731: a(3n) = 2n, a(3n+1) = n, a(3n+2) = n+1.

The programs for A186731, the canonical program `A186731.P13978659959011894399` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186731 has offset 0).

The definition of A186731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186731.P13978659959011894399

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A186731

/-- `2*a(n-3)-a(n-6)` -/
def P13978659959011894399.Spec : Prop :=
  ∀ n, P13978659959011894399.a n = A186731 n

theorem P13978659959011894399.correct : P13978659959011894399.Spec := by
  intro n
  simp only [A186731]

end A186731

/-! ## A186731.P8963898578126422592

`floor((gcd(n, n%3)+n)/3)`
-/

namespace A186731.P8963898578126422592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd n (n % 3) + n : ℚ) / 3⌋

end

end A186731.P8963898578126422592

namespace A186731

/-- `floor((gcd(n, n%3)+n)/3)` -/
def P8963898578126422592.Spec : Prop :=
  ∀ n, P8963898578126422592.a n = A186731 n

end A186731

/-! ## A186731.P6457867657535231078

`round((2-n²%3)*n/3)`
-/

namespace A186731.P6457867657535231078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 - ((n ^ 2 % 3 : ℕ) : ℤ) : ℚ) * ((n : ℚ) / 3))

end

end A186731.P6457867657535231078

namespace A186731

/-- `round((2-n²%3)*n/3)` -/
def P6457867657535231078.Spec : Prop :=
  ∀ n, P6457867657535231078.a n = A186731 n

end A186731

/-! ## A186731.P4878957243883373693

`round((char[3*n]+1)*n/3)`
-/

namespace A186731.P4878957243883373693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) * ((n : ℚ) / 3))

end

end A186731.P4878957243883373693

namespace A186731

/-- `round((char[3*n]+1)*n/3)` -/
def P4878957243883373693.Spec : Prop :=
  ∀ n, P4878957243883373693.a n = A186731 n

end A186731

/-! ## A186731.P5762239354002871661

`(lcm(3, n)/3+n)/2-round((lcm(3, n)-n)/3)`
-/

namespace A186731.P5762239354002871661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)) / 2 - (SequenceMachineLib.roundAway (((Nat.lcm 3 n : ℤ) - (n : ℤ) : ℚ) / 3) : ℚ)

end

end A186731.P5762239354002871661

namespace A186731

/-- `(lcm(3, n)/3+n)/2-round((lcm(3, n)-n)/3)` -/
def P5762239354002871661.Spec : Prop :=
  ∀ n, P5762239354002871661.a n = (A186731 n : ℚ)

end A186731

/-! ## A186731.P11194124099462669842

`n-2*(floor(n/3)+1)*(1-cos(2*π*n/3))/3-floor(n/3)`
-/

namespace A186731.P11194124099462669842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - 2 * ((⌊(n : ℚ) / 3⌋ + 1 : ℝ) * ((1 - Real.cos (2 * (Real.pi * ((n : ℚ) / 3 : ℝ)))) / 3)) - (⌊(n : ℚ) / 3⌋ : ℝ)

end

end A186731.P11194124099462669842

namespace A186731

/-- `n-2*(floor(n/3)+1)*(1-cos(2*π*n/3))/3-floor(n/3)` -/
def P11194124099462669842.Spec : Prop :=
  ∀ n, P11194124099462669842.a n = (A186731 n : ℝ)

end A186731

/-! ## A186731.P1042576162877814843

`1-A087627(n)+n`
-/

namespace A186731.P1042576162877814843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087627 n + (n : ℤ)

end

end A186731.P1042576162877814843

namespace A186731

/-- `1-A087627(n)+n` -/
def P1042576162877814843.Spec : Prop :=
  ∀ n, P1042576162877814843.a n = A186731 n

end A186731

/-! ## A186731.P4101193214039057043

`n-A026741(round(2*n/3))`
-/

namespace A186731.P4101193214039057043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A026741 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A186731.P4101193214039057043

namespace A186731

/-- `n-A026741(round(2*n/3))` -/
def P4101193214039057043.Spec : Prop :=
  ∀ n, P4101193214039057043.a n = A186731 n

end A186731

/-! ## A186731.P1009668018424847460

`(A284429(n+1)+n-2)/3`
-/

namespace A186731.P1009668018424847460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284429 (n + 1) + ((n : ℤ) - 2) : ℚ) / 3

end

end A186731.P1009668018424847460

namespace A186731

/-- `(A284429(n+1)+n-2)/3` -/
def P1009668018424847460.Spec : Prop :=
  ∀ n, P1009668018424847460.a n = (A186731 n : ℚ)

end A186731

/-! ## A186731.P6261509571674310147

`A000010(gcd(n+3, 2*n))+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A186731.P6261509571674310147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A000010 (Nat.gcd (n + 3) (2 * n)) + a (n - 3)

end

end A186731.P6261509571674310147

namespace A186731

/-- `A000010(gcd(n+3, 2*n))+a(n-3)` -/
def P6261509571674310147.Spec : Prop :=
  ∀ n, P6261509571674310147.a n = A186731 n

end A186731

/-! ## A186731.P8139295239087637565

`A006369(n)-A091684(n)`
-/

namespace A186731.P8139295239087637565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n - A091684 n

end

end A186731.P8139295239087637565

namespace A186731

/-- `A006369(n)-A091684(n)` -/
def P8139295239087637565.Spec : Prop :=
  ∀ n, P8139295239087637565.a n = A186731 n

end A186731

/-! ## A186731.P14820017366337835153

`A092942(n)-A131358(n)`
-/

namespace A186731.P14820017366337835153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n - A131358 n

end

end A186731.P14820017366337835153

namespace A186731

/-- `A092942(n)-A131358(n)` -/
def P14820017366337835153.Spec : Prop :=
  ∀ n, P14820017366337835153.a n = A186731 n

end A186731

/-! ## A186731.P2436559401605947020

`A186101(n)-A102899(n)`
-/

namespace A186731.P2436559401605947020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n - A102899 n

end

end A186731.P2436559401605947020

namespace A186731

/-- `A186101(n)-A102899(n)` -/
def P2436559401605947020.Spec : Prop :=
  ∀ n, P2436559401605947020.a n = A186731 n

end A186731

/-! ## A186731.P17533393866194451262

`A008574(n)-A298789(n)`
-/

namespace A186731.P17533393866194451262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A298789 n

end

end A186731.P17533393866194451262

namespace A186731

/-- `A008574(n)-A298789(n)` -/
def P17533393866194451262.Spec : Prop :=
  ∀ n, P17533393866194451262.a n = A186731 n

end A186731

/-! ## A186731.P13880974352569344393

`A006369(n)%A028310(n)`
-/

namespace A186731.P13880974352569344393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006369 n) (A028310 n)

end

end A186731.P13880974352569344393

namespace A186731

/-- `A006369(n)%A028310(n)` -/
def P13880974352569344393.Spec : Prop :=
  ∀ n, P13880974352569344393.a n = A186731 n

end A186731

/-! ## A186731.P7745551150453228710

`A008586(n)%A298789(n)`
-/

namespace A186731.P7745551150453228710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 n) (A298789 n)

end

end A186731.P7745551150453228710

namespace A186731

/-- `A008586(n)%A298789(n)` -/
def P7745551150453228710.Spec : Prop :=
  ∀ n, P7745551150453228710.a n = A186731 n

end A186731

/-! ## A186731.P5310526902982043700

`A298786(n)%A257174(n)`
-/

namespace A186731.P5310526902982043700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298786 n) (A257174 n)

end

end A186731.P5310526902982043700

namespace A186731

/-- `A298786(n)%A257174(n)` -/
def P5310526902982043700.Spec : Prop :=
  ∀ n, P5310526902982043700.a n = A186731 n

end A186731

/-! ## A186731.P3776657374809375552

`A042965(n+1)-A186101(n)`
-/

namespace A186731.P3776657374809375552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) - A186101 n

end

end A186731.P3776657374809375552

namespace A186731

/-- `A042965(n+1)-A186101(n)` -/
def P3776657374809375552.Spec : Prop :=
  ∀ n, P3776657374809375552.a n = A186731 n

end A186731

/-! ## A186731.P16185109146263450639

`A115274(n+1)%A168052(n)`
-/

namespace A186731.P16185109146263450639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115274 (n + 1)) (A168052 n)

end

end A186731.P16185109146263450639

namespace A186731

/-- `A115274(n+1)%A168052(n)` -/
def P16185109146263450639.Spec : Prop :=
  ∀ n, P16185109146263450639.a n = A186731 n

end A186731

/-!
# A186732: Closest prime to 3^n (in case of a tie, choose the smaller prime).

The programs for A186732, there is no canonical definition to state claims against.
-/

/-! ## A186732.P3862646988111805879

`A000040(A118682(n)+A055729(n+1))`
-/

namespace A186732.P3862646988111805879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A118682 n + A055729 (n + 1)).toNat

end

end A186732.P3862646988111805879

/-! ## A186732.P14570033577444747337

`A151800(A322116(n+1)-A238964(n))`
-/

namespace A186732.P14570033577444747337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A322116 (n + 1) - A238964 n).toNat

end

end A186732.P14570033577444747337

/-! ## A186732.P13417432567504913914

`A151800(A000244(n+1)-A066182(n+1))`
-/

namespace A186732.P13417432567504913914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000244 (n + 1) - A066182 (n + 1)).toNat

end

end A186732.P13417432567504913914

/-! ## A186732.P9139044852573579967

`A060308(∑[3^n]+2-A164349(3*n+1))`
-/

namespace A186732.P9139044852573579967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - A164349 (3 * n + 1)).toNat

end

end A186732.P9139044852573579967

/-! ## A186732.P10366561970269203819

`A060265(A067771(n)-A309938(n+1))`
-/

namespace A186732.P10366561970269203819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A067771 n - A309938 (n + 1)).toNat

end

end A186732.P10366561970269203819

/-!
# A186733: Triangular array C(n,r) = number of connected r-regular graphs, having girth exactly 3, with n nodes, for 0 <= r < n.

The programs for A186733, there is no canonical definition to state claims against.
-/

/-! ## A186733.P13538852154638165748

`and(A031629(n+1), A185643(n+1))`
-/

namespace A186733.P13538852154638165748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031629 (n + 1)) (A185643 (n + 1))

end

end A186733.P13538852154638165748

/-! ## A186733.P17995362481563066098

`C(A185643(n+1), A123221(A226441(n+4)))`
-/

namespace A186733.P17995362481563066098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185643 (n + 1)).toNat (A123221 (A226441 (n + 4)).toNat).toNat

end

end A186733.P17995362481563066098

/-! ## A186733.P17827652769466098435

`and(A185643(n+1), A359315(n+1))`
-/

namespace A186733.P17827652769466098435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185643 (n + 1)) (A359315 (n + 1))

end

end A186733.P17827652769466098435

/-! ## A186733.P15400046206619108222

`A185643(n+1)*A306550(A306550(n))`
-/

namespace A186733.P15400046206619108222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185643 (n + 1) * A306550 (A306550 n).toNat

end

end A186733.P15400046206619108222

/-! ## A186733.P14674640029126476526

`A039963(A186990(n+1))*A185643(n+1)`
-/

namespace A186733.P14674640029126476526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A186990 (n + 1)).toNat * A185643 (n + 1)

end

end A186733.P14674640029126476526

/-!
# A186734: Triangular array C(n,k) counting connected k-regular simple graphs on n vertices with girth exactly 4.

The programs for A186734, there is no canonical definition to state claims against.
-/

/-! ## A186734.P1271780208475620630

`and(A107433(A141854(3*n+2)), A185644(n+1))`
-/

namespace A186734.P1271780208475620630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107433 (A141854 (3 * n + 2)).toNat) (A185644 (n + 1))

end

end A186734.P1271780208475620630

/-! ## A186734.P6435539014799760348

`A185644(n+1)%A049988(A051031(2*n+5))`
-/

namespace A186734.P6435539014799760348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185644 (n + 1)) (A049988 (A051031 (2 * n + 5)).toNat)

end

end A186734.P6435539014799760348

/-! ## A186734.P10226326741319315856

`and(A185644(n+1), A192316(n))`
-/

namespace A186734.P10226326741319315856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185644 (n + 1)) (A192316 n)

end

end A186734.P10226326741319315856

/-! ## A186734.P3003963407827930832

`and(A185644(n+1), A356771(A027187(n)))`
-/

namespace A186734.P3003963407827930832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185644 (n + 1)) (A356771 (A027187 n).toNat)

end

end A186734.P3003963407827930832

/-! ## A186734.P8831845233506117639

`and(A185644(n+1), A217347(n+1))`
-/

namespace A186734.P8831845233506117639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185644 (n + 1)) (A217347 (n + 1))

end

end A186734.P8831845233506117639

/-!
# A186735: Number of permutations of [n] with no ascending runs of length 1 or 2.

The programs for A186735, there is no canonical definition to state claims against.
-/

/-! ## A186735.P13340098594122363832

`A000142(n)-A228614(n)-A185652(n)`
-/

namespace A186735.P13340098594122363832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A228614 n - A185652 n

end

end A186735.P13340098594122363832

/-! ## A186735.P13109474881683750381

`A097899(n)-A185652(n)`
-/

namespace A186735.P13109474881683750381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097899 n - A185652 n

end

end A186735.P13109474881683750381

/-! ## A186735.P7289707508437135464

`abs(A133942(n))-(A228614(n)+A185652(n))`
-/

namespace A186735.P7289707508437135464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - (A228614 n + A185652 n)

end

end A186735.P7289707508437135464

/-! ## A186735.P7938638553538166269

`A028421(A000217(n))-(A228614(n)+A185652(n))`
-/

namespace A186735.P7938638553538166269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A000217 n).toNat - (A228614 n + A185652 n)

end

end A186735.P7938638553538166269

/-!
# A186736: Maximum sum of relatively prime integers no larger than n.

The programs for A186736, there is no canonical definition to state claims against.
-/

/-! ## A186736.P10203054052756765432

`∑[A092509(A077168(n))]+1`
-/

namespace A186736.P10203054052756765432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A186736.P10203054052756765432

/-! ## A186736.P8313615035716046534

`A008475(∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])])+1`
-/

namespace A186736.P8313615035716046534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A186736.P8313615035716046534

/-! ## A186736.P15011216372047049396

`A008475(Δ[A173185(n)])+1`
-/

namespace A186736.P15011216372047049396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (n + 1) - f1 n).toNat + 1

end

end A186736.P15011216372047049396

/-! ## A186736.P3346301744574461500

`A008475(Δ[A236856(n)])+1`
-/

namespace A186736.P3346301744574461500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (n + 1) - f1 n).toNat + 1

end

end A186736.P3346301744574461500

/-! ## A186736.P16026992831739081035

`A008475(A003418(n+1))+1`
-/

namespace A186736.P16026992831739081035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A003418 (n + 1)).toNat + 1

end

end A186736.P16026992831739081035

/-!
# A186737: G.f. satisfies: A(x) = Sum_{n>=0} Product_{k=1..n} ((1 + x*A(x))^k - 1).

The programs for A186737, there is no canonical definition to state claims against.
-/

/-! ## A186737.P13816903905871288874

`A214701(A121687(n))`
-/

namespace A186737.P13816903905871288874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A121687 n).toNat

end

end A186737.P13816903905871288874

/-! ## A186737.P1106089994924373041

`A057360(3*A000262(n))`
-/

namespace A186737.P1106089994924373041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (3 * A000262 n).toNat

end

end A186737.P1106089994924373041

/-!
# A186738: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n-1)*a(n-2) + 1.

The programs for A186738, the canonical program `A186738.P12811543169515451185` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186738 has offset 0).

The definition of A186738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-1)*a(n-2)` (program `A186738.P12811543169515451185`, by `A186738.P12811543169515451185.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186738.P12811543169515451185

`1+a(n-1)+(n-1)*a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A186738

/-- `1+a(n-1)+(n-1)*a(n-2)` -/
def P12811543169515451185.Spec : Prop :=
  ∀ n, P12811543169515451185.a n = A186738 n

theorem P12811543169515451185.correct : P12811543169515451185.Spec := by
  intro n
  simp only [A186738]

end A186738

/-! ## A186738.P3095693625432165668

`1-((1-n)*a(n-2)-a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A186738.P3095693625432165668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - ((1 - (n : ℤ)) * a (n - 2) - a (n - 1))

end

end A186738.P3095693625432165668

namespace A186738

/-- `1-((1-n)*a(n-2)-a(n-1))` -/
def P3095693625432165668.Spec : Prop :=
  ∀ n, P3095693625432165668.a n = A186738 n

end A186738

/-! ## A186738.P16001691835711978001

`A187044(n)-A122031(n)`
-/

namespace A186738.P16001691835711978001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 n - A122031 n

end

end A186738.P16001691835711978001

namespace A186738

/-- `A187044(n)-A122031(n)` -/
def P16001691835711978001.Spec : Prop :=
  ∀ n, P16001691835711978001.a n = A186738 n

end A186738

/-! ## A186738.P8520909215811978199

`A193361(n+2)-A122031(n)`
-/

namespace A186738.P8520909215811978199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 2) - A122031 n

end

end A186738.P8520909215811978199

namespace A186738

/-- `A193361(n+2)-A122031(n)` -/
def P8520909215811978199.Spec : Prop :=
  ∀ n, P8520909215811978199.a n = A186738 n

end A186738

/-! ## A186738.P12787753631346111831

`A187044(A254667(n))%A122031(n)`
-/

namespace A186738.P12787753631346111831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187044 (A254667 n).toNat) (A122031 n)

end

end A186738.P12787753631346111831

namespace A186738

/-- `A187044(A254667(n))%A122031(n)` -/
def P12787753631346111831.Spec : Prop :=
  ∀ n, P12787753631346111831.a n = A186738 n

end A186738

/-! ## A186738.P7647795179455170333

`(A057427(n)*A187044(n))%A122031(n)`
-/

namespace A186738.P7647795179455170333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057427 n * A187044 n) (A122031 n)

end

end A186738.P7647795179455170333

namespace A186738

/-- `(A057427(n)*A187044(n))%A122031(n)` -/
def P7647795179455170333.Spec : Prop :=
  ∀ n, P7647795179455170333.a n = A186738 n

end A186738

/-! ## A186738.P15703967643210822688

`(A187044(n)%A122031(n))%A000085(n)`
-/

namespace A186738.P15703967643210822688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A187044 n) (A122031 n)) (A000085 n)

end

end A186738.P15703967643210822688

namespace A186738

/-- `(A187044(n)%A122031(n))%A000085(n)` -/
def P15703967643210822688.Spec : Prop :=
  ∀ n, P15703967643210822688.a n = A186738 n

end A186738

/-!
# A186739: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n-2)*a(n-2) + 1.

The programs for A186739, the canonical program `A186739.P10827599999874926647` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186739 has offset 0).

The definition of A186739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-2)*a(n-2)` (program `A186739.P10827599999874926647`, by `A186739.P10827599999874926647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186739.P10827599999874926647

`1+a(n-1)+(n-2)*a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A186739

/-- `1+a(n-1)+(n-2)*a(n-2)` -/
def P10827599999874926647.Spec : Prop :=
  ∀ n, P10827599999874926647.a n = A186739 n

theorem P10827599999874926647.correct : P10827599999874926647.Spec := by
  intro n
  simp only [A186739]

end A186739

/-! ## A186739.P1866654309044762465

`1-((2-n)*a(n-2)-a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A186739.P1866654309044762465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 - ((2 - (n : ℤ)) * a (n - 2) - a (n - 1))

end

end A186739.P1866654309044762465

namespace A186739

/-- `1-((2-n)*a(n-2)-a(n-1))` -/
def P1866654309044762465.Spec : Prop :=
  ∀ n, P1866654309044762465.a n = A186739 n

end A186739

/-! ## A186739.P4305636511855265366

`A187044(A289207(n+1))-A000085(A289207(n+1))`
-/

namespace A186739.P4305636511855265366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 (A289207 (n + 1)).toNat - A000085 (A289207 (n + 1)).toNat

end

end A186739.P4305636511855265366

namespace A186739

/-- `A187044(A289207(n+1))-A000085(A289207(n+1))` -/
def P4305636511855265366.Spec : Prop :=
  ∀ n, P4305636511855265366.a n = A186739 n

end A186739

/-! ## A186739.P1309435613186309176

`(A270049(n)-1)/A028310(n)`
-/

namespace A186739.P1309435613186309176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270049 n - 1 : ℚ) / (A028310 n : ℚ)

end

end A186739.P1309435613186309176

namespace A186739

/-- `(A270049(n)-1)/A028310(n)` -/
def P1309435613186309176.Spec : Prop :=
  ∀ n, P1309435613186309176.a n = (A186739 n : ℚ)

end A186739

/-! ## A186739.P6013872720002660400

`floor(A270049(n)/A233583(n+1))`
-/

namespace A186739.P6013872720002660400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270049 n : ℚ) / (A233583 (n + 1) : ℚ)⌋

end

end A186739.P6013872720002660400

namespace A186739

/-- `floor(A270049(n)/A233583(n+1))` -/
def P6013872720002660400.Spec : Prop :=
  ∀ n, P6013872720002660400.a n = A186739 n

end A186739

/-! ## A186739.P4901293064562742140

`A193361(n+1)-A238750(A000124(n))`
-/

namespace A186739.P4901293064562742140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 1) - A238750 (A000124 n).toNat

end

end A186739.P4901293064562742140

namespace A186739

/-- `A193361(n+1)-A238750(A000124(n))` -/
def P4901293064562742140.Spec : Prop :=
  ∀ n, P4901293064562742140.a n = A186739 n

end A186739

/-!
# A186740: Sequence read from antidiagonals of rectangular array with entry in row n and column q given by T(n,q) = 2^(2*n)*(Sum_{j=1..n+1} (cos(j*Pi/(2*q+1)))^(2*n)), n >= 0, q >= 1.

The programs for A186740, there is no canonical definition to state claims against.
-/

/-! ## A186740.P12511222101457269670

`A185095(A002378(n)%A080036(n))`
-/

namespace A186740.P12511222101457269670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185095 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A186740.P12511222101457269670

/-! ## A186740.P17939138797514316189

`A185095(A061579(n)%A303986(n))`
-/

namespace A186740.P17939138797514316189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185095 (Int.tmod (A061579 n) (A303986 n)).toNat

end

end A186740.P17939138797514316189

/-! ## A186740.P7096022979860175559

`A185095((A038722(n+1)-1)%A056242(n+1))`
-/

namespace A186740.P7096022979860175559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185095 (Int.tmod (A038722 (n + 1) - 1) (A056242 (n + 1))).toNat

end

end A186740.P7096022979860175559

/-! ## A186740.P9713266128650440621

`A185095(∑[2*n]%comp[∑[n]])`
-/

namespace A186740.P9713266128650440621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185095 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A186740.P9713266128650440621

/-! ## A186740.P2480217586351820515

`A185095(∑[char[∑[n]]]²-(n+1))`
-/

namespace A186740.P2480217586351820515
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185095 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A186740.P2480217586351820515

/-!
# A186741: Expansion of f(x^5, x^7) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A186741, the canonical program `A186741.P3882408730787552192` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186741 has offset 0).

The definition of A186741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186741.P3882408730787552192

`char[∑[n*5^(n%2)]]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A186741

/-- `char[∑[n*5^(n%2)]]` -/
def P3882408730787552192.Spec : Prop :=
  ∀ n, (P3882408730787552192.a n : ℤ) = A186741 n

theorem P3882408730787552192.correct : P3882408730787552192.Spec := by
  intro n
  simp only [A186741]

end A186741

/-! ## A186741.P6565115422742052466

`char[∑[n*5^and(1, n)]]`
-/

namespace A186741.P6565115422742052466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A186741.P6565115422742052466

namespace A186741

/-- `char[∑[n*5^and(1, n)]]` -/
def P6565115422742052466.Spec : Prop :=
  ∀ n, (P6565115422742052466.a n : ℤ) = A186741 n

end A186741

/-! ## A186741.P14482875418978088575

`char[∑[n*(3-2*(-1)^n)]]`
-/

namespace A186741.P14482875418978088575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - 2 * (-1) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186741.P14482875418978088575

namespace A186741

/-- `char[∑[n*(3-2*(-1)^n)]]` -/
def P14482875418978088575.Spec : Prop :=
  ∀ n, (P14482875418978088575.a n : ℤ) = A186741 n

end A186741

/-! ## A186741.P17633232167768824432

`abs(A247223(n))`
-/

namespace A186741.P17633232167768824432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247223 n|

end

end A186741.P17633232167768824432

namespace A186741

/-- `abs(A247223(n))` -/
def P17633232167768824432.Spec : Prop :=
  ∀ n, P17633232167768824432.a n = A186741 n

end A186741

/-! ## A186741.P10890105784813683824

`ceil(sin(A010815(n)))`
-/

namespace A186741.P10890105784813683824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A010815 n : ℝ)⌉

end

end A186741.P10890105784813683824

namespace A186741

/-- `ceil(sin(A010815(n)))` -/
def P10890105784813683824.Spec : Prop :=
  ∀ n, P10890105784813683824.a n = A186741 n

end A186741

/-! ## A186741.P1596344386811215654

`and(1, char[A036498(n+1)])`
-/

namespace A186741.P1596344386811215654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A186741.P1596344386811215654

namespace A186741

/-- `and(1, char[A036498(n+1)])` -/
def P1596344386811215654.Spec : Prop :=
  ∀ n, (P1596344386811215654.a n : ℤ) = A186741 n

end A186741

/-! ## A186741.P15357952739649501765

`A033999(n)*A247223(n)`
-/

namespace A186741.P15357952739649501765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A247223 n

end

end A186741.P15357952739649501765

namespace A186741

/-- `A033999(n)*A247223(n)` -/
def P15357952739649501765.Spec : Prop :=
  ∀ n, P15357952739649501765.a n = A186741 n

end A186741

/-! ## A186741.P191675589417790246

`A081729(n)*A247223(n)`
-/

namespace A186741.P191675589417790246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n * A247223 n

end

end A186741.P191675589417790246

namespace A186741

/-- `A081729(n)*A247223(n)` -/
def P191675589417790246.Spec : Prop :=
  ∀ n, P191675589417790246.a n = A186741 n

end A186741

/-! ## A186741.P14301185140231230338

`A121373(n)*A247223(n)`
-/

namespace A186741.P14301185140231230338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n * A247223 n

end

end A186741.P14301185140231230338

namespace A186741

/-- `A121373(n)*A247223(n)` -/
def P14301185140231230338.Spec : Prop :=
  ∀ n, P14301185140231230338.a n = A186741 n

end A186741

/-! ## A186741.P12291809953777627187

`A133985(n)*A247223(n)`
-/

namespace A186741.P12291809953777627187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133985 n * A247223 n

end

end A186741.P12291809953777627187

namespace A186741

/-- `A133985(n)*A247223(n)` -/
def P12291809953777627187.Spec : Prop :=
  ∀ n, P12291809953777627187.a n = A186741 n

end A186741

/-! ## A186741.P4128007031258499090

`gcd(A000038(n), A247223(n))`
-/

namespace A186741.P4128007031258499090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A247223 n)

end

end A186741.P4128007031258499090

namespace A186741

/-- `gcd(A000038(n), A247223(n))` -/
def P4128007031258499090.Spec : Prop :=
  ∀ n, (P4128007031258499090.a n : ℤ) = A186741 n

end A186741

/-! ## A186741.P15115551398752295957

`ceil(A121373(n)/A279270(n))`
-/

namespace A186741.P15115551398752295957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121373 n : ℚ) / (A279270 n : ℚ)⌉

end

end A186741.P15115551398752295957

namespace A186741

/-- `ceil(A121373(n)/A279270(n))` -/
def P15115551398752295957.Spec : Prop :=
  ∀ n, P15115551398752295957.a n = A186741 n

end A186741

/-! ## A186741.P1648604244613299174

`(A080995(n)+A010815(n))/2`
-/

namespace A186741.P1648604244613299174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080995 n + A010815 n : ℚ) / 2

end

end A186741.P1648604244613299174

namespace A186741

/-- `(A080995(n)+A010815(n))/2` -/
def P1648604244613299174.Spec : Prop :=
  ∀ n, P1648604244613299174.a n = (A186741 n : ℚ)

end A186741

/-! ## A186741.P17422662587847310581

`A247223(n)^A000010(n+1)`
-/

namespace A186741.P17422662587847310581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247223 n : ℚ) ^ (A000010 (n + 1) : ℤ)

end

end A186741.P17422662587847310581

namespace A186741

/-- `A247223(n)^A000010(n+1)` -/
def P17422662587847310581.Spec : Prop :=
  ∀ n, P17422662587847310581.a n = (A186741 n : ℚ)

end A186741

/-! ## A186741.P9031945838001573573

`A010815(and(2, A010815(n))+n)`
-/

namespace A186741.P9031945838001573573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.land 2 (A010815 n) + (n : ℤ)).toNat

end

end A186741.P9031945838001573573

namespace A186741

/-- `A010815(and(2, A010815(n))+n)` -/
def P9031945838001573573.Spec : Prop :=
  ∀ n, P9031945838001573573.a n = A186741 n

end A186741

/-! ## A186741.P1806211465390998071

`(A247223(n)^A000040(n+1))²`
-/

namespace A186741.P1806211465390998071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A247223 n : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A186741.P1806211465390998071

namespace A186741

/-- `(A247223(n)^A000040(n+1))²` -/
def P1806211465390998071.Spec : Prop :=
  ∀ n, P1806211465390998071.a n = (A186741 n : ℚ)

end A186741

/-! ## A186741.P2137836361607359714

`(A247223(n)^A000203(n+1))²`
-/

namespace A186741.P2137836361607359714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A247223 n : ℚ) ^ (A000203 (n + 1) : ℤ)) ^ 2

end

end A186741.P2137836361607359714

namespace A186741

/-- `(A247223(n)^A000203(n+1))²` -/
def P2137836361607359714.Spec : Prop :=
  ∀ n, P2137836361607359714.a n = (A186741 n : ℚ)

end A186741

/-! ## A186741.P14024487360728115499

`ceil(A010815(n)/A322432(n+1))`
-/

namespace A186741.P14024487360728115499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010815 n : ℚ) / (A322432 (n + 1) : ℚ)⌉

end

end A186741.P14024487360728115499

namespace A186741

/-- `ceil(A010815(n)/A322432(n+1))` -/
def P14024487360728115499.Spec : Prop :=
  ∀ n, P14024487360728115499.a n = A186741 n

end A186741

/-! ## A186741.P17001504410123077346

`A010815(n)*A247223(n)*A247223(n)`
-/

namespace A186741.P17001504410123077346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A247223 n * A247223 n

end

end A186741.P17001504410123077346

namespace A186741

/-- `A010815(n)*A247223(n)*A247223(n)` -/
def P17001504410123077346.Spec : Prop :=
  ∀ n, P17001504410123077346.a n = A186741 n

end A186741

/-! ## A186741.P16792367756628744793

`(A247223(n+1)+A247223(n))*A247223(n)`
-/

namespace A186741.P16792367756628744793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A247223 (n + 1) + A247223 n) * A247223 n

end

end A186741.P16792367756628744793

namespace A186741

/-- `(A247223(n+1)+A247223(n))*A247223(n)` -/
def P16792367756628744793.Spec : Prop :=
  ∀ n, P16792367756628744793.a n = A186741 n

end A186741

/-!
# A186742: Expansion of f(x, x^11) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A186742, the canonical program `A186742.P13904402004995400067` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186742 has offset 0).

The definition of A186742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186742.P6753197250383274743

`char[∑[n*gcd(5, n%2)]]`
-/

namespace A186742.P6753197250383274743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 5 (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A186742.P6753197250383274743

namespace A186742

/-- `char[∑[n*gcd(5, n%2)]]` -/
def P6753197250383274743.Spec : Prop :=
  ∀ n, (P6753197250383274743.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P2482044824571169741

`char[∑[n*and(5, -5^n)]]`
-/

namespace A186742.P2482044824571169741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 5 (-(5 ^ n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P2482044824571169741

namespace A186742

/-- `char[∑[n*and(5, -5^n)]]` -/
def P2482044824571169741.Spec : Prop :=
  ∀ n, (P2482044824571169741.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P7769779196373429843

`char[∑[n*or(1, gcd(2, n)²)]]`
-/

namespace A186742.P7769779196373429843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (Nat.gcd 2 n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A186742.P7769779196373429843

namespace A186742

/-- `char[∑[n*or(1, gcd(2, n)²)]]` -/
def P7769779196373429843.Spec : Prop :=
  ∀ n, (P7769779196373429843.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P16700042761324467394

`char[∑[n*(5-4*and(1, n))]]`
-/

namespace A186742.P16700042761324467394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (5 - (4 * Nat.land 1 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P16700042761324467394

namespace A186742

/-- `char[∑[n*(5-4*and(1, n))]]` -/
def P16700042761324467394.Spec : Prop :=
  ∀ n, (P16700042761324467394.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P10083418609547020813

`char[∑[n*5^and(1, n+1)]]`
-/

namespace A186742.P10083418609547020813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A186742.P10083418609547020813

namespace A186742

/-- `char[∑[n*5^and(1, n+1)]]` -/
def P10083418609547020813.Spec : Prop :=
  ∀ n, (P10083418609547020813.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P15455094629552305625

`abs(A247133(n))`
-/

namespace A186742.P15455094629552305625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A247133 n|

end

end A186742.P15455094629552305625

namespace A186742

/-- `abs(A247133(n))` -/
def P15455094629552305625.Spec : Prop :=
  ∀ n, P15455094629552305625.a n = A186742 n

end A186742

/-! ## A186742.P9311312155988345924

`char[A195818(n)]`
-/

namespace A186742.P9311312155988345924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195818 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P9311312155988345924

namespace A186742

/-- `char[A195818(n)]` -/
def P9311312155988345924.Spec : Prop :=
  ∀ n, (P9311312155988345924.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P779941741437324799

`char[∑[A195817(n)]]`
-/

namespace A186742.P779941741437324799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P779941741437324799

namespace A186742

/-- `char[∑[A195817(n)]]` -/
def P779941741437324799.Spec : Prop :=
  ∀ n, (P779941741437324799.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P5963864603693643983

`char[A104555(n)-1]`
-/

namespace A186742.P5963864603693643983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P5963864603693643983

namespace A186742

/-- `char[A104555(n)-1]` -/
def P5963864603693643983.Spec : Prop :=
  ∀ n, (P5963864603693643983.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P14528464974285865397

`char[A147843(n)-1]`
-/

namespace A186742.P14528464974285865397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147843 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P14528464974285865397

namespace A186742

/-- `char[A147843(n)-1]` -/
def P14528464974285865397.Spec : Prop :=
  ∀ n, (P14528464974285865397.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P7235850978055736086

`A116859(n+1)%2`
-/

namespace A186742.P7235850978055736086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116859 (n + 1)) 2

end

end A186742.P7235850978055736086

namespace A186742

/-- `A116859(n+1)%2` -/
def P7235850978055736086.Spec : Prop :=
  ∀ n, P7235850978055736086.a n = A186742 n

end A186742

/-! ## A186742.P13904402004995400067

`ceil(A257628(n+1)/2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A186742

/-- `ceil(A257628(n+1)/2)` -/
def P13904402004995400067.Spec : Prop :=
  ∀ n, P13904402004995400067.a n = A186742 n

theorem P13904402004995400067.correct : P13904402004995400067.Spec := by
  intro n
  simp only [A186742]

end A186742

/-! ## A186742.P14220988083380200074

`char[A036499(n+1)-1]`
-/

namespace A186742.P14220988083380200074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036499 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P14220988083380200074

namespace A186742

/-- `char[A036499(n+1)-1]` -/
def P14220988083380200074.Spec : Prop :=
  ∀ n, (P14220988083380200074.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P1599496323766963046

`char[lt[A010815(n+1), 0]]`
-/

namespace A186742.P1599496323766963046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A186742.P1599496323766963046

namespace A186742

/-- `char[lt[A010815(n+1), 0]]` -/
def P1599496323766963046.Spec : Prop :=
  ∀ n, (P1599496323766963046.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P11130233082074153668

`char[(1-n)*A010815(n)]`
-/

namespace A186742.P11130233082074153668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A010815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P11130233082074153668

namespace A186742

/-- `char[(1-n)*A010815(n)]` -/
def P11130233082074153668.Spec : Prop :=
  ∀ n, (P11130233082074153668.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P94763787578049065

`char[n*A102899(n)-1]`
-/

namespace A186742.P94763787578049065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102899 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P94763787578049065

namespace A186742

/-- `char[n*A102899(n)-1]` -/
def P94763787578049065.Spec : Prop :=
  ∀ n, (P94763787578049065.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P18044663895960217524

`char[n*A257628(n)-1]`
-/

namespace A186742.P18044663895960217524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257628 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A186742.P18044663895960217524

namespace A186742

/-- `char[n*A257628(n)-1]` -/
def P18044663895960217524.Spec : Prop :=
  ∀ n, (P18044663895960217524.a n : ℤ) = A186742 n

end A186742

/-! ## A186742.P15864911847047337292

`and(2, A080332(n+1))/2`
-/

namespace A186742.P15864911847047337292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A080332 (n + 1)) : ℚ) / 2

end

end A186742.P15864911847047337292

namespace A186742

/-- `and(2, A080332(n+1))/2` -/
def P15864911847047337292.Spec : Prop :=
  ∀ n, P15864911847047337292.a n = (A186742 n : ℚ)

end A186742

/-! ## A186742.P15971393713882631458

`A033999(n)*A247133(n)`
-/

namespace A186742.P15971393713882631458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A247133 n

end

end A186742.P15971393713882631458

namespace A186742

/-- `A033999(n)*A247133(n)` -/
def P15971393713882631458.Spec : Prop :=
  ∀ n, P15971393713882631458.a n = A186742 n

end A186742

/-!
# A186743: Number of connected regular simple graphs on n vertices with girth exactly 3.

The programs for A186743, there is no canonical definition to state claims against.
-/

/-! ## A186743.P9882984267643101127

`A005177(n)-A186724(n)`
-/

namespace A186743.P9882984267643101127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 n - A186724 n

end

end A186743.P9882984267643101127

/-! ## A186743.P8085564319371768310

`A198313(n)-A210713(n)`
-/

namespace A186743.P8085564319371768310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198313 n - A210713 n

end

end A186743.P8085564319371768310

/-! ## A186743.P3514674249081827770

`A005176(n)-(A186724(n)+A068932(n))`
-/

namespace A186743.P3514674249081827770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005176 n - (A186724 n + A068932 n)

end

end A186743.P3514674249081827770

/-! ## A186743.P10007588543596475333

`A005177(n)+A185214(n)-A185314(n)`
-/

namespace A186743.P10007588543596475333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 n + (A185214 n - A185314 n)

end

end A186743.P10007588543596475333

/-! ## A186743.P8312415818508129144

`A005177(n)-(A186744(n)+A186725(n))`
-/

namespace A186743.P8312415818508129144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 n - (A186744 n + A186725 n)

end

end A186743.P8312415818508129144

/-!
# A186744: Number of connected regular simple graphs on n vertices with girth exactly 4.

The programs for A186744, there is no canonical definition to state claims against.
-/

/-! ## A186744.P3564017115488055374

`A186724(n)-A186725(n)`
-/

namespace A186744.P3564017115488055374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186724 n - A186725 n

end

end A186744.P3564017115488055374

/-! ## A186744.P2265716372136916892

`A198314(n)-A210714(n)`
-/

namespace A186744.P2265716372136916892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198314 n - A210714 n

end

end A186744.P2265716372136916892

/-! ## A186744.P7994928945569621103

`A185215(n)+A186724(n)-A185315(n)`
-/

namespace A186744.P7994928945569621103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n + (A186724 n - A185315 n)

end

end A186744.P7994928945569621103

/-! ## A186744.P3456506238139714406

`A185314(n)-(A186725(n)+A185214(n))`
-/

namespace A186744.P3456506238139714406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185314 n - (A186725 n + A185214 n)

end

end A186744.P3456506238139714406

/-! ## A186744.P1429638399102323470

`A186724(n)-(A186745(n)+A186726(n))`
-/

namespace A186744.P1429638399102323470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186724 n - (A186745 n + A186726 n)

end

end A186744.P1429638399102323470

/-!
# A186745: Number of connected regular simple graphs on n vertices with girth exactly 5.

The programs for A186745, there is no canonical definition to state claims against.
-/

/-! ## A186745.P5739973124837631287

`A186725(n)-A186726(n)`
-/

namespace A186745.P5739973124837631287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186725 n - A186726 n

end

end A186745.P5739973124837631287

/-! ## A186745.P11459502230621657543

`A186725(n)-(A186746(n)+A186727(n))`
-/

namespace A186745.P11459502230621657543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186725 n - (A186746 n + A186727 n)

end

end A186745.P11459502230621657543

/-! ## A186745.P8092091433827820430

`A186725(n)-(A186728(n)+A186747(n)+A186746(n))`
-/

namespace A186745.P8092091433827820430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186725 n - (A186728 n + (A186747 n + A186746 n))

end

end A186745.P8092091433827820430

/-! ## A186745.P1024976602530683186

`A186725(n)-(A185317(n)+A186746(n)-A185217(n))`
-/

namespace A186745.P1024976602530683186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186725 n - (A185317 n + (A186746 n - A185217 n))

end

end A186745.P1024976602530683186

/-! ## A186745.P5816753937355421118

`A186725(n)-(A186727(n)-(A185245(n)-A186746(n)))`
-/

namespace A186745.P5816753937355421118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186725 n - (A186727 n - (A185245 n - A186746 n))

end

end A186745.P5816753937355421118

/-!
# A186746: Number of connected regular simple graphs on n vertices with girth exactly 6.

The programs for A186746, there is no canonical definition to state claims against.
-/

/-! ## A186746.P4696156094589951580

`A186726(n)-A186727(n)`
-/

namespace A186746.P4696156094589951580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 n - A186727 n

end

end A186746.P4696156094589951580

/-! ## A186746.P428135772072607855

`A186726(n)-(A186747(n)+A186728(n))`
-/

namespace A186746.P428135772072607855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 n - (A186747 n + A186728 n)

end

end A186746.P428135772072607855

/-! ## A186746.P14271633978274165378

`A185216(n)+A186726(n)-A185317(n)-A210716(n)`
-/

namespace A186746.P14271633978274165378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n + (A186726 n - A185317 n) - A210716 n

end

end A186746.P14271633978274165378

/-! ## A186746.P15280677480378948421

`A198316(n)-A210716(n)`
-/

namespace A186746.P15280677480378948421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198316 n - A210716 n

end

end A186746.P15280677480378948421

/-! ## A186746.P15285022981986075022

`A185217(n)+A198316(n)-A185216(n)`
-/

namespace A186746.P15285022981986075022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + (A198316 n - A185216 n)

end

end A186746.P15285022981986075022

/-!
# A186747: Number of connected regular simple graphs on n vertices with girth exactly 7.

The programs for A186747, there is no canonical definition to state claims against.
-/

/-! ## A186747.P6144070958573853753

`A186727(n)-A186728(n)`
-/

namespace A186747.P6144070958573853753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 n - A186728 n

end

end A186747.P6144070958573853753

/-! ## A186747.P2174980598273444360

`A198317(n)-A210717(n)`
-/

namespace A186747.P2174980598273444360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 n - A210717 n

end

end A186747.P2174980598273444360

/-! ## A186747.P13955844022823140951

`A185218(n)+A186727(n)-A185318(n)`
-/

namespace A186747.P13955844022823140951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + (A186727 n - A185318 n)

end

end A186747.P13955844022823140951

/-! ## A186747.P15138875835644880735

`A186727(n)-(A186748(n)+A186729(n))`
-/

namespace A186747.P15138875835644880735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 n - (A186748 n + A186729 n)

end

end A186747.P15138875835644880735

/-! ## A186747.P5716832507992665426

`A185218(n)+A198317(n)-A185217(n)`
-/

namespace A186747.P5716832507992665426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + (A198317 n - A185217 n)

end

end A186747.P5716832507992665426

/-!
# A186748: Number of connected regular simple graphs on n vertices with girth exactly 8.

The programs for A186748, there is no canonical definition to state claims against.
-/

/-! ## A186748.P517009223443124742

`A186728(n)-A186729(n)`
-/

namespace A186748.P517009223443124742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186728 n - A186729 n

end

end A186748.P517009223443124742

/-! ## A186748.P9109681712183262165

`A198318(n)-A210718(n)`
-/

namespace A186748.P9109681712183262165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 n - A210718 n

end

end A186748.P9109681712183262165

/-! ## A186748.P5345518935582403434

`A186728(n)-val(A154044(n+3), 10)`
-/

namespace A186748.P5345518935582403434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186728 n - (SequenceMachineLib.valuation (A154044 (n + 3)).toNat 10 : ℤ)

end

end A186748.P5345518935582403434

/-! ## A186748.P4502031250243406406

`A186728(n)-A185117(floor(n/3)²)`
-/

namespace A186748.P4502031250243406406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186728 n - A185117 (⌊(n : ℚ) / 3⌋ ^ 2).toNat

end

end A186748.P4502031250243406406

/-! ## A186748.P13280367744259990477

`A186728(n)-and(1, 55%A240565(n+1))`
-/

namespace A186748.P13280367744259990477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186728 n - Int.land 1 (Int.tmod 55 (A240565 (n + 1)))

end

end A186748.P13280367744259990477

/-!
# A186749: a(n) = phi(n - phi(n) + 3).

The programs for A186749, the canonical program `A186749.P3371590493743021003` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186749 has offset 1).

The definition of A186749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186749.P3371590493743021003

`A000010(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+4)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186749

/-- `A000010(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+4)` -/
def P3371590493743021003.Spec : Prop :=
  ∀ n, P3371590493743021003.a n = A186749 (n + 1)

theorem P3371590493743021003.correct : P3371590493743021003.Spec := by
  intro n
  simp only [A186749, Nat.add_sub_cancel]

end A186749

/-! ## A186749.P7600764789252532083

`A000010(A051953(n+1)+3)`
-/

namespace A186749.P7600764789252532083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A051953 (n + 1) + 3).toNat

end

end A186749.P7600764789252532083

namespace A186749

/-- `A000010(A051953(n+1)+3)` -/
def P7600764789252532083.Spec : Prop :=
  ∀ n, P7600764789252532083.a n = A186749 (n + 1)

end A186749

/-! ## A186749.P16962775423023637524

`A000010(A016035(n+1)+4)`
-/

namespace A186749.P16962775423023637524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A016035 (n + 1) + 4).toNat

end

end A186749.P16962775423023637524

namespace A186749

/-- `A000010(A016035(n+1)+4)` -/
def P16962775423023637524.Spec : Prop :=
  ∀ n, P16962775423023637524.a n = A186749 (n + 1)

end A186749

/-! ## A186749.P13126207031672428925

`A000010(A219428(n+1)+4)`
-/

namespace A186749.P13126207031672428925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A219428 (n + 1) + 4).toNat

end

end A186749.P13126207031672428925

namespace A186749

/-- `A000010(A219428(n+1)+4)` -/
def P13126207031672428925.Spec : Prop :=
  ∀ n, P13126207031672428925.a n = A186749 (n + 1)

end A186749

/-! ## A186749.P10126163869138156891

`A109606(A051953(n+1)+3)+1`
-/

namespace A186749.P10126163869138156891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A051953 (n + 1) + 3).toNat + 1

end

end A186749.P10126163869138156891

namespace A186749

/-- `A109606(A051953(n+1)+3)+1` -/
def P10126163869138156891.Spec : Prop :=
  ∀ n, P10126163869138156891.a n = A186749 (n + 1)

end A186749

/-! ## A186749.P8330812123023812363

`A000010(4-A000010(n+1)+n)`
-/

namespace A186749.P8330812123023812363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 - A000010 (n + 1) + (n : ℤ)).toNat

end

end A186749.P8330812123023812363

namespace A186749

/-- `A000010(4-A000010(n+1)+n)` -/
def P8330812123023812363.Spec : Prop :=
  ∀ n, P8330812123023812363.a n = A186749 (n + 1)

end A186749

/-! ## A186749.P3933302013666039893

`A000010(A020705(n)-A000010(n+1))`
-/

namespace A186749.P3933302013666039893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A020705 n - A000010 (n + 1)).toNat

end

end A186749.P3933302013666039893

namespace A186749

/-- `A000010(A020705(n)-A000010(n+1))` -/
def P3933302013666039893.Spec : Prop :=
  ∀ n, P3933302013666039893.a n = A186749 (n + 1)

end A186749

/-! ## A186749.P17470306606172459912

`A000010(A000005(n+1)+A046640(n+1)+1)`
-/

namespace A186749.P17470306606172459912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 1) + (A046640 (n + 1) + 1)).toNat

end

end A186749.P17470306606172459912

namespace A186749

/-- `A000010(A000005(n+1)+A046640(n+1)+1)` -/
def P17470306606172459912.Spec : Prop :=
  ∀ n, P17470306606172459912.a n = A186749 (n + 1)

end A186749

/-! ## A186749.P16493870226119451461

`A000010((A016945(n)/3)%(A109606(n+1)+1+n)+3)`
-/

namespace A186749.P16493870226119451461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (SequenceMachineLib.roundAway ((A016945 n : ℚ) / 3)) (A109606 (n + 1) + 1 + (n : ℤ)) + 3).toNat

end

end A186749.P16493870226119451461

namespace A186749

/-- `A000010((A016945(n)/3)%(A109606(n+1)+1+n)+3)` -/
def P16493870226119451461.Spec : Prop :=
  ∀ n, P16493870226119451461.a n = A186749 (n + 1)

end A186749

/-! ## A186749.P14701385014987711285

`A225530(A051953(n+1)+3)`
-/

namespace A186749.P14701385014987711285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (A051953 (n + 1) + 3).toNat

end

end A186749.P14701385014987711285

namespace A186749

/-- `A225530(A051953(n+1)+3)` -/
def P14701385014987711285.Spec : Prop :=
  ∀ n, P14701385014987711285.a n = A186749 (n + 1)

end A186749

/-! ## A186749.P4564812173659499724

`A225530(n+5-A039649(n+1))`
-/

namespace A186749.P4564812173659499724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 ((n + 5 : ℤ) - A039649 (n + 1)).toNat

end

end A186749.P4564812173659499724

namespace A186749

/-- `A225530(n+5-A039649(n+1))` -/
def P4564812173659499724.Spec : Prop :=
  ∀ n, P4564812173659499724.a n = A186749 (n + 1)

end A186749

/-!
# A186750: a(0) = 3; thereafter, a(n) = a(n-1)^2 - 3.

The programs for A186750, the canonical program `A186750.P9773143223582650411` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186750 has offset 0).

The definition of A186750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-3` (program `A186750.P9773143223582650411`, by `A186750.P9773143223582650411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186750.P9773143223582650411

`a(n-1)²-3` with `a(0)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A186750

/-- `a(n-1)²-3` -/
def P9773143223582650411.Spec : Prop :=
  ∀ n, P9773143223582650411.a n = A186750 n

theorem P9773143223582650411.correct : P9773143223582650411.Spec := by
  intro n
  simp only [A186750]

end A186750

/-! ## A186750.P659437281196102063

`a(n-1)^2-3` with `a(0)=3`
-/

namespace A186750.P659437281196102063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ 2 - 3

end

end A186750.P659437281196102063

namespace A186750

/-- `a(n-1)^2-3` -/
def P659437281196102063.Spec : Prop :=
  ∀ n, P659437281196102063.a n = A186750 n

theorem P659437281196102063.correct : P659437281196102063.Spec := by
  intro n
  simp only [A186750, Nat.add_sub_cancel, A186750.P659437281196102063.a, A186750.P9773143223582650411.a, SequenceMachineLib.memo_apply]

end A186750

/-! ## A186750.P6688088926247859537

`root(a(n-1), 1/2)-3` with `a(0)=3`
-/

namespace A186750.P6688088926247859537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) - 3

end

end A186750.P6688088926247859537

namespace A186750

/-- `root(a(n-1), 1/2)-3` -/
def P6688088926247859537.Spec : Prop :=
  ∀ n, P6688088926247859537.a n = (A186750 n : ℝ)

end A186750

/-! ## A186750.P5343576684825061573

`a(n-1)*a(n-1)-3` with `a(0)=3`
-/

namespace A186750.P5343576684825061573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * a (n - 1) - 3

end

end A186750.P5343576684825061573

namespace A186750

/-- `a(n-1)*a(n-1)-3` -/
def P5343576684825061573.Spec : Prop :=
  ∀ n, P5343576684825061573.a n = A186750 n

theorem P5343576684825061573.correct : P5343576684825061573.Spec := by
  intro n
  simp only [A186750, Nat.add_sub_cancel, A186750.P5343576684825061573.a, A186750.P9773143223582650411.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A186750

/-!
# A186751: a(0) = 3; thereafter, a(n) = a(n-1)^2 - 4.

The programs for A186751, the canonical program `A186751.P236242812667765848` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186751 has offset 0).

The definition of A186751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-4` (program `A186751.P236242812667765848`, by `A186751.P236242812667765848.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A186751.P236242812667765848

`a(n-1)²-4` with `a(0)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A186751

/-- `a(n-1)²-4` -/
def P236242812667765848.Spec : Prop :=
  ∀ n, P236242812667765848.a n = A186751 n

theorem P236242812667765848.correct : P236242812667765848.Spec := by
  intro n
  simp only [A186751]

end A186751

/-! ## A186751.P8335112628631452376

`root(a(n-1), 1/2)-4` with `a(0)=3`
-/

namespace A186751.P8335112628631452376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) - 4

end

end A186751.P8335112628631452376

namespace A186751

/-- `root(a(n-1), 1/2)-4` -/
def P8335112628631452376.Spec : Prop :=
  ∀ n, P8335112628631452376.a n = (A186751 n : ℝ)

end A186751

/-! ## A186751.P5413357820419155042

`a(n-1)^(4/2)-4` with `a(0)=3`
-/

namespace A186751.P5413357820419155042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ ((4 : ℚ) / 2 : ℝ) - 4

end

end A186751.P5413357820419155042

namespace A186751

/-- `a(n-1)^(4/2)-4` -/
def P5413357820419155042.Spec : Prop :=
  ∀ n, P5413357820419155042.a n = (A186751 n : ℝ)

end A186751

/-! ## A186751.P15604242045832265676

`(-sqrt(a(n-1)))^4-4` with `a(0)=3`
-/

namespace A186751.P15604242045832265676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  (-Real.sqrt (a (n - 1))) ^ 4 - 4

end

end A186751.P15604242045832265676

namespace A186751

/-- `(-sqrt(a(n-1)))^4-4` -/
def P15604242045832265676.Spec : Prop :=
  ∀ n, P15604242045832265676.a n = (A186751 n : ℝ)

end A186751

/-!
# A186752: Length of minimum representation of the permutation [n,n-1,...,1] as the product of transpositions (1,2) and left and right rotations (1,2,...,n).

The programs for A186752, the canonical program `A186752.P4256476165915888062` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186752 has offset 1).

The definition of A186752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186752.P4256476165915888062

`a(n-1)+n` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A186752

/-- `a(n-1)+n` -/
def P4256476165915888062.Spec : Prop :=
  ∀ n, (P4256476165915888062.a n : ℤ) = A186752 (n + 1)

theorem P4256476165915888062.correct : P4256476165915888062.Spec := by
  intro n
  simp only [A186752, Nat.add_sub_cancel]

end A186752

/-! ## A186752.P15392457354054686924

`∑[n-(char[2]+char[3])]`
-/

namespace A186752.P15392457354054686924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186752.P15392457354054686924

namespace A186752

/-- `∑[n-(char[2]+char[3])]` -/
def P15392457354054686924.Spec : Prop :=
  ∀ n, P15392457354054686924.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P4002215119567708455

`floor(atan(1-n)+∑[n])`
-/

namespace A186752.P4002215119567708455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (1 - (n : ℤ) : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A186752.P4002215119567708455

namespace A186752

/-- `floor(atan(1-n)+∑[n])` -/
def P4002215119567708455.Spec : Prop :=
  ∀ n, P4002215119567708455.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P16706442777774933767

`floor(∑[n]-atan(n-1))`
-/

namespace A186752.P16706442777774933767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.arctan ((n : ℤ) - 1 : ℝ)⌋

end

end A186752.P16706442777774933767

namespace A186752

/-- `floor(∑[n]-atan(n-1))` -/
def P16706442777774933767.Spec : Prop :=
  ∀ n, P16706442777774933767.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P16945854988825808626

`∑[n]-ceil(atan(n-1))`
-/

namespace A186752.P16945854988825808626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈Real.arctan ((n : ℤ) - 1 : ℝ)⌉

end

end A186752.P16945854988825808626

namespace A186752

/-- `∑[n]-ceil(atan(n-1))` -/
def P16945854988825808626.Spec : Prop :=
  ∀ n, P16945854988825808626.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P7427241336757235453

`gcd(C(2, n), ∑[n-1])+n-1`
-/

namespace A186752.P7427241336757235453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (Nat.choose 2 n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + ((n : ℤ) - 1)

end

end A186752.P7427241336757235453

namespace A186752

/-- `gcd(C(2, n), ∑[n-1])+n-1` -/
def P7427241336757235453.Spec : Prop :=
  ∀ n, P7427241336757235453.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P1232439685026418379

`n²-4-a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A186752.P1232439685026418379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  (n ^ 2 : ℤ) - 4 - a (n - 1)

end

end A186752.P1232439685026418379

namespace A186752

/-- `n²-4-a(n-1)` -/
def P1232439685026418379.Spec : Prop :=
  ∀ n, P1232439685026418379.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P3857817262770240570

`n-floor(3/n-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A186752.P3857817262770240570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - ⌊3 / (n : ℚ) - (a (n - 1) : ℚ)⌋

end

end A186752.P3857817262770240570

namespace A186752

/-- `n-floor(3/n-a(n-1))` -/
def P3857817262770240570.Spec : Prop :=
  ∀ n, P3857817262770240570.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P960058105891184179

`2*n-(n-a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A186752.P960058105891184179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A186752.P960058105891184179

namespace A186752

/-- `2*n-(n-a(n-1))` -/
def P960058105891184179.Spec : Prop :=
  ∀ n, P960058105891184179.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P5995385495910310047

`A054254(n)-A185013(n)`
-/

namespace A186752.P5995385495910310047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054254 n - A185013 n

end

end A186752.P5995385495910310047

namespace A186752

/-- `A054254(n)-A185013(n)` -/
def P5995385495910310047.Spec : Prop :=
  ∀ n, P5995385495910310047.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P6378213630853991541

`A212342(n)-A179184(n)`
-/

namespace A186752.P6378213630853991541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n - A179184 n

end

end A186752.P6378213630853991541

namespace A186752

/-- `A212342(n)-A179184(n)` -/
def P6378213630853991541.Spec : Prop :=
  ∀ n, P6378213630853991541.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P17590431628820530808

`A082562(n)-A152947(n+1)`
-/

namespace A186752.P17590431628820530808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 n - A152947 (n + 1)

end

end A186752.P17590431628820530808

namespace A186752

/-- `A082562(n)-A152947(n+1)` -/
def P17590431628820530808.Spec : Prop :=
  ∀ n, P17590431628820530808.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P3962038869938512158

`A307681(n+3)+A261143(n)`
-/

namespace A186752.P3962038869938512158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307681 (n + 3) + A261143 n

end

end A186752.P3962038869938512158

namespace A186752

/-- `A307681(n+3)+A261143(n)` -/
def P3962038869938512158.Spec : Prop :=
  ∀ n, P3962038869938512158.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P13640351864683022666

`A021003(n)%A342939(n+1)`
-/

namespace A186752.P13640351864683022666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A021003 n) (A342939 (n + 1))

end

end A186752.P13640351864683022666

namespace A186752

/-- `A021003(n)%A342939(n+1)` -/
def P13640351864683022666.Spec : Prop :=
  ∀ n, P13640351864683022666.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P9056468729859944010

`A356114(n)-A014846(n+1)`
-/

namespace A186752.P9056468729859944010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356114 n - A014846 (n + 1)

end

end A186752.P9056468729859944010

namespace A186752

/-- `A356114(n)-A014846(n+1)` -/
def P9056468729859944010.Spec : Prop :=
  ∀ n, P9056468729859944010.a n = A186752 (n + 1)

end A186752

/-! ## A186752.P12699542221050484346

`eq[1, A091836(n+1)]`
-/

namespace A186752.P12699542221050484346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186752.P12699542221050484346

namespace A186752

/-- `eq[1, A091836(n+1)]` -/
def P12699542221050484346.Spec : Prop :=
  ∀ n, (P12699542221050484346.a n : ℤ) = A186752 (n + 1)

end A186752

/-! ## A186752.P7125946752193629216

`eq[1, A097724(n+1)]`
-/

namespace A186752.P7125946752193629216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186752.P7125946752193629216

namespace A186752

/-- `eq[1, A097724(n+1)]` -/
def P7125946752193629216.Spec : Prop :=
  ∀ n, (P7125946752193629216.a n : ℤ) = A186752 (n + 1)

end A186752

/-! ## A186752.P1829968266972140511

`eq[1, A193788(n)]`
-/

namespace A186752.P1829968266972140511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186752.P1829968266972140511

namespace A186752

/-- `eq[1, A193788(n)]` -/
def P1829968266972140511.Spec : Prop :=
  ∀ n, (P1829968266972140511.a n : ℤ) = A186752 (n + 1)

end A186752

/-! ## A186752.P14514455725061744934

`eq[1, A060162(n+1)]`
-/

namespace A186752.P14514455725061744934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A186752.P14514455725061744934

namespace A186752

/-- `eq[1, A060162(n+1)]` -/
def P14514455725061744934.Spec : Prop :=
  ∀ n, (P14514455725061744934.a n : ℤ) = A186752 (n + 1)

end A186752

/-!
# A186753: T(n, k) = Sum_{i=0, n} (Sum_{j=0, k} C(i+j,i) * C(n-i+j,n-i) * C(i+k-j,k-j) * C(n-i+k-j,n-i)).

The programs for A186753, there is no canonical definition to state claims against.
-/

/-! ## A186753.P4088028973107406469

`A331162(A145596(n+1))`
-/

namespace A186753.P4088028973107406469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A145596 (n + 1)).toNat

end

end A186753.P4088028973107406469

/-! ## A186753.P3254080728406913170

`A323048(A145596(n+1)+1)`
-/

namespace A186753.P3254080728406913170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A145596 (n + 1) + 1).toNat

end

end A186753.P3254080728406913170

/-! ## A186753.P3612782312745587985

`A145596(n+1)+A014707(A022171(n))`
-/

namespace A186753.P3612782312745587985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145596 (n + 1) + A014707 (A022171 n).toNat

end

end A186753.P3612782312745587985

/-! ## A186753.P16129122175768907637

`A145596(n+1)+A007814(A157156(n))`
-/

namespace A186753.P16129122175768907637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145596 (n + 1) + A007814 (A157156 n).toNat

end

end A186753.P16129122175768907637

/-! ## A186753.P11643220424342209051

`A288710(A204846(3*n+4))+A145596(n+1)`
-/

namespace A186753.P11643220424342209051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288710 (A204846 (3 * n + 4)).toNat + A145596 (n + 1)

end

end A186753.P11643220424342209051

/-!
# A186754: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k increasing cycles (0<=k<=n). A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1) < b(2) < b(3) < ... .

The programs for A186754, there is no canonical definition to state claims against.
-/

/-! ## A186754.P741708533908635262

`or(A048993(n), A229160(A004863(n+1)))`
-/

namespace A186754.P741708533908635262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048993 n) (A229160 (A004863 (n + 1)).toNat)

end

end A186754.P741708533908635262

/-! ## A186754.P1321693399984351227

`or(A048993(n), A239495(A010094(n+1)))`
-/

namespace A186754.P1321693399984351227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048993 n) (A239495 (A010094 (n + 1)).toNat)

end

end A186754.P1321693399984351227

/-!
# A186755: Number of permutations of {1,2,...,n} having no increasing cycles. A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A186755, there is no canonical definition to state claims against.
-/

/-! ## A186755.P5417030023428171450

`A186754(∑[n])`
-/

namespace A186755.P5417030023428171450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186754 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186755.P5417030023428171450

/-! ## A186755.P17259956827378888424

`A000587(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A186755.P17259956827378888424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000587 n + (n : ℤ) * a (n - 1)

end

end A186755.P17259956827378888424

/-! ## A186755.P5844145032212804481

`A186758(n)-A349788(n)`
-/

namespace A186755.P5844145032212804481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186758 n - A349788 n

end

end A186755.P5844145032212804481

/-! ## A186755.P13574336673177773433

`A186758(n)-A186754(A000124(n))`
-/

namespace A186755.P13574336673177773433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186758 n - A186754 (A000124 n).toNat

end

end A186755.P13574336673177773433

/-! ## A186755.P1539223249145439257

`gcd(A000038(n), A186754(A000217(n)))`
-/

namespace A186755.P1539223249145439257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A186754 (A000217 n).toNat)

end

end A186755.P1539223249145439257

/-! ## A186755.P5956307999535605286

`or(A000007(n), A186754(A000217(n)))`
-/

namespace A186755.P5956307999535605286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186754 (A000217 n).toNat)

end

end A186755.P5956307999535605286

/-! ## A186755.P18376548264439380667

`A186754(A000096(n))*A186754(A000217(n))`
-/

namespace A186755.P18376548264439380667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186754 (A000096 n).toNat * A186754 (A000217 n).toNat

end

end A186755.P18376548264439380667

/-! ## A186755.P4109175147346983368

`A186754(A000217(n))^A169803(A014105(n))`
-/

namespace A186755.P4109175147346983368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186754 (A000217 n).toNat : ℚ) ^ (A169803 (A014105 n).toNat : ℤ)

end

end A186755.P4109175147346983368

/-!
# A186757: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k increasing cycles of length >=2 (0<=k<= n/2). A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1) < b(2) < b(3) < ... .

The programs for A186757, there is no canonical definition to state claims against.
-/

/-! ## A186757.P7587850707956273015

`A025452(A001224(2*n+3))%A008438(2*(n+2))`
-/

namespace A186757.P7587850707956273015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025452 (A001224 (2 * n + 3)).toNat) (A008438 (2 * (n + 2)))

end

end A186757.P7587850707956273015

/-!
# A186758: Number of permutations of {1,2,...,n} with no increasing cycles of length >=2. A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A186758, there is no canonical definition to state claims against.
-/

/-! ## A186758.P16435012190234061056

`A293037(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A186758.P16435012190234061056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293037 n + (n : ℤ) * a (n - 1)

end

end A186758.P16435012190234061056

/-! ## A186758.P4681711803050966988

`n*a(n-1)-A000587(n+1)` with `a(0)=1`
-/

namespace A186758.P4681711803050966988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A000587 (n + 1)

end

end A186758.P4681711803050966988

/-! ## A186758.P11462511866150434565

`A186757(∑[A110654(n)])`
-/

namespace A186758.P11462511866150434565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186758.P11462511866150434565

/-! ## A186758.P5892130061380505870

`A186757(A002620(n+1))`
-/

namespace A186758.P5892130061380505870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186757 (A002620 (n + 1)).toNat

end

end A186758.P5892130061380505870

/-! ## A186758.P16602122896179115908

`A186757(A076921(n+1))`
-/

namespace A186758.P16602122896179115908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186757 (A076921 (n + 1)).toNat

end

end A186758.P16602122896179115908

/-! ## A186758.P5749726954833878066

`A186757(A182531(n+1))`
-/

namespace A186758.P5749726954833878066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186757 (A182531 (n + 1)).toNat

end

end A186758.P5749726954833878066

/-! ## A186758.P13154139056274828650

`A349788(n)+A186755(n)`
-/

namespace A186758.P13154139056274828650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349788 n + A186755 n

end

end A186758.P13154139056274828650

/-! ## A186758.P18086760263104083515

`A186757(∑[∑[A000035(n)]])`
-/

namespace A186758.P18086760263104083515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186758.P18086760263104083515

/-! ## A186758.P18076217624871585531

`A186757(∑[A123108(n+1)])`
-/

namespace A186758.P18076217624871585531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186758.P18076217624871585531

/-! ## A186758.P9414802465430745739

`A186757(∑[A028242(A004442(n))])`
-/

namespace A186758.P9414802465430745739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186758.P9414802465430745739

/-!
# A186759: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k cycles that are either nonincreasing or of length 1 (0<=k<=n). A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1) < b(2) < b(3) < ... .

The programs for A186759, there is no canonical definition to state claims against.
-/

/-! ## A186759.P16527987987422176402

`A319951(A008290(n)*A028657(n))`
-/

namespace A186759.P16527987987422176402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A008290 n * A028657 n).toNat

end

end A186759.P16527987987422176402

/-! ## A186759.P9090182039648634493

`A319951(A008290(n)*A086617(n))`
-/

namespace A186759.P9090182039648634493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A008290 n * A086617 n).toNat

end

end A186759.P9090182039648634493

/-! ## A186759.P15616647018495879664

`A319951(A008290(n)*A088699(n))`
-/

namespace A186759.P15616647018495879664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A008290 n * A088699 n).toNat

end

end A186759.P15616647018495879664

/-! ## A186759.P4563929296817790041

`A319951(A008290(n)*A094526(n))`
-/

namespace A186759.P4563929296817790041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A008290 n * A094526 n).toNat

end

end A186759.P4563929296817790041

/-! ## A186759.P12286687201091933328

`A319951(A008290(n)*A101515(n))`
-/

namespace A186759.P12286687201091933328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A008290 n * A101515 n).toNat

end

end A186759.P12286687201091933328

/-!
# A186760: Number of cycles that are either nonincreasing or of length 1 in all permutations of {1,2,...,n}. A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A186760, there is no canonical definition to state claims against.
-/

/-! ## A186760.P14160268094327333438

`(n-1)!+n*a(n-1)-1` with `a(0)=0, a(1)=1`
-/

namespace A186760.P14160268094327333438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * a (n - 1) - 1

end

end A186760.P14160268094327333438

/-! ## A186760.P4652240245028181222

`A000774(n)-A002627(A028310(n))`
-/

namespace A186760.P4652240245028181222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - A002627 (A028310 n).toNat

end

end A186760.P4652240245028181222

/-! ## A186760.P9067010863510097397

`A000254(n)-A056542(A000007(n)+n)`
-/

namespace A186760.P9067010863510097397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - A056542 (A000007 n + (n : ℤ)).toNat

end

end A186760.P9067010863510097397

/-! ## A186760.P13971811677684736254

`A000254(n)-A000522(n)%A000142(n)`
-/

namespace A186760.P13971811677684736254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - Int.tmod (A000522 n) (A000142 n)

end

end A186760.P13971811677684736254

/-! ## A186760.P18059726023901477089

`A000254(n)-A002627(n)%A000142(n)`
-/

namespace A186760.P18059726023901477089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 n - Int.tmod (A002627 n) (A000142 n)

end

end A186760.P18059726023901477089

/-! ## A186760.P4218436803854620475

`(A000774(n)-A002627(n))%A000774(n)`
-/

namespace A186760.P4218436803854620475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000774 n - A002627 n) (A000774 n)

end

end A186760.P4218436803854620475

/-!
# A186761: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k increasing odd cycles (0<=k<=n). A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A186761, there is no canonical definition to state claims against.
-/

/-! ## A186761.P12039100370250938405

`A186759(n)+Δ[A186746(A186740(n))]`
-/

namespace A186761.P12039100370250938405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (A186740 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186759 n + (f1 (n + 1) - f1 n)

end

end A186761.P12039100370250938405

/-! ## A186761.P17449234075844456781

`A025449(A281046(n+1))²`
-/

namespace A186761.P17449234075844456781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 (A281046 (n + 1)).toNat ^ 2

end

end A186761.P17449234075844456781

/-! ## A186761.P10152669269868736894

`A209859(A378240(n+1))²`
-/

namespace A186761.P10152669269868736894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A378240 (n + 1)).toNat ^ 2

end

end A186761.P10152669269868736894

/-! ## A186761.P271315702453145418

`A105242(A121757(n+2))²`
-/

namespace A186761.P271315702453145418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105242 (A121757 (n + 2)).toNat ^ 2

end

end A186761.P271315702453145418

/-! ## A186761.P11502516275302576239

`A097609(n)^A020639(A000085(n))`
-/

namespace A186761.P11502516275302576239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097609 n : ℚ) ^ (A020639 (A000085 n).toNat : ℤ)

end

end A186761.P11502516275302576239

/-!
# A186762: Number of permutations of {1,2,...,n} having no increasing odd cycles. A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A186762, there is no canonical definition to state claims against.
-/

/-! ## A186762.P5320282450384047816

`A186761(∑[n])`
-/

namespace A186762.P5320282450384047816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186762.P5320282450384047816

/-! ## A186762.P17182448501281971788

`abs(A013263(n)-A013267(n))`
-/

namespace A186762.P17182448501281971788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013263 n - A013267 n|

end

end A186762.P17182448501281971788

/-! ## A186762.P3661543924078935714

`abs(A013488(n))`
-/

namespace A186762.P3661543924078935714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013488 n|

end

end A186762.P3661543924078935714

/-! ## A186762.P16692908362965933293

`A013488(n)*A033999(n)`
-/

namespace A186762.P16692908362965933293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013488 n * A033999 n

end

end A186762.P16692908362965933293

/-! ## A186762.P4515628178985574388

`A013488(n)/A033999(n²)`
-/

namespace A186762.P4515628178985574388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013488 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A186762.P4515628178985574388

/-!
# A186763: Number of increasing odd cycles in all permutations of {1,2,...,n}.

The programs for A186763, the canonical program `A186763.P4441082643897295989` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186763 has offset 0).

The definition of A186763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186763.P4441082643897295989

`(A000522(n)-A000166(n))/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A186763

/-- `(A000522(n)-A000166(n))/2` -/
def P4441082643897295989.Spec : Prop :=
  ∀ n, P4441082643897295989.a n = (A186763 n : ℚ)

end A186763

/-! ## A186763.P8444739589666502446

`n%2+n*a(n-1)` with `a(0)=0`
-/

namespace A186763.P8444739589666502446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n % 2 + n * a (n - 1)

end

end A186763.P8444739589666502446

namespace A186763

/-- `n%2+n*a(n-1)` -/
def P8444739589666502446.Spec : Prop :=
  ∀ n, (P8444739589666502446.a n : ℤ) = A186763 n

end A186763

/-! ## A186763.P16143662862864075824

`and(1, n)+n*a(n-1)` with `a(0)=0`
-/

namespace A186763.P16143662862864075824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 n + n * a (n - 1)

end

end A186763.P16143662862864075824

namespace A186763

/-- `and(1, n)+n*a(n-1)` -/
def P16143662862864075824.Spec : Prop :=
  ∀ n, (P16143662862864075824.a n : ℤ) = A186763 n

end A186763

/-! ## A186763.P12844318834559260980

`or(n*a(n-1), and(1, n))` with `a(0)=0`
-/

namespace A186763.P12844318834559260980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor (n * a (n - 1)) (Nat.land 1 n)

end

end A186763.P12844318834559260980

namespace A186763

/-- `or(n*a(n-1), and(1, n))` -/
def P12844318834559260980.Spec : Prop :=
  ∀ n, (P12844318834559260980.a n : ℤ) = A186763 n

end A186763

/-! ## A186763.P18187735458501696267

`xor(n*a(n-1), and(1, n))` with `a(0)=0`
-/

namespace A186763.P18187735458501696267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor (n * a (n - 1)) (Nat.land 1 n)

end

end A186763.P18187735458501696267

namespace A186763

/-- `xor(n*a(n-1), and(1, n))` -/
def P18187735458501696267.Spec : Prop :=
  ∀ n, (P18187735458501696267.a n : ℤ) = A186763 n

end A186763

/-! ## A186763.P468114132526524944

`2-gcd(2, n)+n*a(n-1)` with `a(0)=0`
-/

namespace A186763.P468114132526524944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 - (Nat.gcd 2 n : ℤ) + (n : ℤ) * a (n - 1)

end

end A186763.P468114132526524944

namespace A186763

/-- `2-gcd(2, n)+n*a(n-1)` -/
def P468114132526524944.Spec : Prop :=
  ∀ n, P468114132526524944.a n = A186763 n

end A186763

/-! ## A186763.P11890564274478966766

`n*a(n-1)-(2-n)%2` with `a(0)=0, a(1)=1`
-/

namespace A186763.P11890564274478966766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * a (n - 1) - Int.tmod (2 - (n : ℤ)) 2

end

end A186763.P11890564274478966766

namespace A186763

/-- `n*a(n-1)-(2-n)%2` -/
def P11890564274478966766.Spec : Prop :=
  ∀ n, P11890564274478966766.a n = A186763 n

end A186763

/-! ## A186763.P13408054975861905773

`n*a(n-1)+(1-(-1)^n)/2` with `a(0)=0`
-/

namespace A186763.P13408054975861905773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * a (n - 1) + (1 - (-1) ^ n : ℚ) / 2

end

end A186763.P13408054975861905773

namespace A186763

/-- `n*a(n-1)+(1-(-1)^n)/2` -/
def P13408054975861905773.Spec : Prop :=
  ∀ n, P13408054975861905773.a n = (A186763 n : ℚ)

end A186763

/-! ## A186763.P8331269457827557173

`or(1, (n+1)*a(n-1))-a(n-1)` with `a(0)=0`
-/

namespace A186763.P8331269457827557173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 1 ((n + 1 : ℤ) * a (n - 1)) - a (n - 1)

end

end A186763.P8331269457827557173

namespace A186763

/-- `or(1, (n+1)*a(n-1))-a(n-1)` -/
def P8331269457827557173.Spec : Prop :=
  ∀ n, P8331269457827557173.a n = A186763 n

end A186763

/-! ## A186763.P10343403253839104508

`(a(n-1)+a(n-2))*(n-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A186763.P10343403253839104508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) * ((n : ℤ) - 1) + 1

end

end A186763.P10343403253839104508

namespace A186763

/-- `(a(n-1)+a(n-2))*(n-1)+1` -/
def P10343403253839104508.Spec : Prop :=
  ∀ n, P10343403253839104508.a n = A186763 n

end A186763

/-!
# A186765: Number of permutations of {1,2,...,n} having no increasing even cycles. A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A186765, there is no canonical definition to state claims against.
-/

/-! ## A186765.P17870030187199455362

`A186764(A002620(n+1))`
-/

namespace A186765.P17870030187199455362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186764 (A002620 (n + 1)).toNat

end

end A186765.P17870030187199455362

/-! ## A186765.P10337195163380765744

`A186764(A076921(n+1))`
-/

namespace A186765.P10337195163380765744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186764 (A076921 (n + 1)).toNat

end

end A186765.P10337195163380765744

/-! ## A186765.P9579521302125889116

`A186764(A182531(n+1))`
-/

namespace A186765.P9579521302125889116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186764 (A182531 (n + 1)).toNat

end

end A186765.P9579521302125889116

/-! ## A186765.P12079054619855146656

`A186764(∑[A004526(n+1)])`
-/

namespace A186765.P12079054619855146656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186764 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186765.P12079054619855146656

/-! ## A186765.P1107111807861663641

`A186764(∑[A123108(n+1)])`
-/

namespace A186765.P1107111807861663641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186764 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186765.P1107111807861663641

/-! ## A186765.P3535208484391600323

`A186764(∑[n-A004526(n)])`
-/

namespace A186765.P3535208484391600323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186764 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186765.P3535208484391600323

/-!
# A186767: Number of permutations of {1,2,...,n} having no nonincreasing odd cycles. A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A186767, there is no canonical definition to state claims against.
-/

/-! ## A186767.P6374153344097444349

`A013491(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A186767.P6374153344097444349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013491 n + (n : ℤ) * a (n - 1)

end

end A186767.P6374153344097444349

/-! ## A186767.P14941473364936780135

`A013182(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A186767.P14941473364936780135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013182 n - (n : ℤ) * a (n - 1)

end

end A186767.P14941473364936780135

/-! ## A186767.P17336875967360547536

`A186766(A001840(n))`
-/

namespace A186767.P17336875967360547536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186766 (A001840 n).toNat

end

end A186767.P17336875967360547536

/-! ## A186767.P15059082946179098449

`A186766(ceil(A028552(n)/6))`
-/

namespace A186767.P15059082946179098449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186766 ⌈(A028552 n : ℚ) / 6⌉.toNat

end

end A186767.P15059082946179098449

/-! ## A186767.P11136706983617039684

`A186766(A103221(A028387(n)))`
-/

namespace A186767.P11136706983617039684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186766 (A103221 (A028387 n).toNat).toNat

end

end A186767.P11136706983617039684

/-! ## A186767.P2853671330397969647

`A186766(A002264(record[A038722(n+1)]))`
-/

namespace A186767.P2853671330397969647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186766 (A002264 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A186767.P2853671330397969647

/-!
# A186768: Number of nonincreasing odd cycles in all permutations of {1,2,...,n}. A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A186768, there is no canonical definition to state claims against.
-/

/-! ## A186768.P17301809195166611035

`A081358(n)-A186763(n)`
-/

namespace A186768.P17301809195166611035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081358 n - A186763 n

end

end A186768.P17301809195166611035

/-! ## A186768.P8370621087902512851

`A081358(n)-abs(A009628(n))`
-/

namespace A186768.P8370621087902512851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081358 n - |A009628 n|

end

end A186768.P8370621087902512851

/-! ## A186768.P4105151504113081377

`A121633(A028310(n))-A184958(n)`
-/

namespace A186768.P4105151504113081377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121633 (A028310 n).toNat - A184958 n

end

end A186768.P4105151504113081377

/-! ## A186768.P945962843826741269

`A000774(n)-(A184958(n)+A000522(n))`
-/

namespace A186768.P945962843826741269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000774 n - (A184958 n + A000522 n)

end

end A186768.P945962843826741269

/-! ## A186768.P4556652919008139812

`A187246(n)+A187252(n)-A184958(n)`
-/

namespace A186768.P4556652919008139812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187246 n + (A187252 n - A184958 n)

end

end A186768.P4556652919008139812

/-! ## A186768.P5775249605450532514

`A186760(n)%(A184958(n)+A000142(n))`
-/

namespace A186768.P5775249605450532514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186760 n) (A184958 n + A000142 n)

end

end A186768.P5775249605450532514

/-!
# A186770: Number of permutations of {1,2,...,n} having no nonincreasing even cycles. A cycle (b(1), b(2), ...) is said to be increasing if, when written with its smallest element in the first position, it satisfies b(1)

The programs for A186770, there is no canonical definition to state claims against.
-/

/-! ## A186770.P10725856117279403572

`A186769(∑[A002265(n+3)])`
-/

namespace A186770.P10725856117279403572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186769 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186770.P10725856117279403572

/-! ## A186770.P17611909720210009672

`A186769(∑[A110656(2*n)])`
-/

namespace A186770.P17611909720210009672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186769 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186770.P17611909720210009672

/-! ## A186770.P8743278207865801041

`A186769(∑[∑[A129251(3*n+5)]])`
-/

namespace A186770.P8743278207865801041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186769 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A186770.P8743278207865801041

/-! ## A186770.P13098816031390386688

`A186769(A000217(n)-A033436(n))`
-/

namespace A186770.P13098816031390386688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186769 (A000217 n - A033436 n).toNat

end

end A186770.P13098816031390386688

/-! ## A186770.P12033100334804008937

`A186769(∑[A008621(n)]-A008621(n))`
-/

namespace A186770.P12033100334804008937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186769 (∑ j ∈ Finset.range (n + 1), f1 j - A008621 n).toNat

end

end A186770.P12033100334804008937

/-!
# A186771: Numbers m such that A186711(m) = 1.

The programs for A186771, there is no canonical definition to state claims against.
-/

/-! ## A186771.P7537320269803634015

`∩[A374484(n+1)-1, A374484(n+1)]`
-/

namespace A186771.P7537320269803634015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374484 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186771.P7537320269803634015

/-! ## A186771.P7964145021686605249

`eq[1, A186711(n+1)]+1`
-/

namespace A186771.P7964145021686605249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A186771.P7964145021686605249

/-! ## A186771.P852529550120830574

`record[A000027(n+1)/A186711(n+1)]`
-/

namespace A186771.P852529550120830574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A186711 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186771.P852529550120830574

/-! ## A186771.P8764371393829204842

`eq[A054977(n), A186711(A028310(n))]`
-/

namespace A186771.P8764371393829204842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186771.P8764371393829204842

/-! ## A186771.P4104255198279151667

`eq[A057427(n), A186711(A028310(n))]`
-/

namespace A186771.P4104255198279151667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A186771.P4104255198279151667

/-!
# A186772: Largest coefficient of (1)(1+1x)(1+1x+2x^2)*...*(1+1x+2x^2+...+n*x^n).

The programs for A186772, there is no canonical definition to state claims against.
-/

/-! ## A186772.P14799151037346027453

`A329561(A000085(n))+A000698(n)`
-/

namespace A186772.P14799151037346027453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329561 (A000085 n).toNat + A000698 n

end

end A186772.P14799151037346027453

/-! ## A186772.P16146019988724393967

`A303595(A302702(n)+A004526(n))`
-/

namespace A186772.P16146019988724393967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303595 (A302702 n + A004526 n).toNat

end

end A186772.P16146019988724393967

/-!
# A186773: Odd numbers whose decimal digits sum to a prime.

The programs for A186773, there is no canonical definition to state claims against.
-/

/-! ## A186773.P3325911607162474929

`A028834(eq[1, A028834(n+1)%2]+1)`
-/

namespace A186773.P3325911607162474929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028834 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A186773.P3325911607162474929

/-! ## A186773.P7156002225369427302

`A028834(eq[1, gcd(2, A028834(n+1))]+1)`
-/

namespace A186773.P7156002225369427302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028834 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A186773.P7156002225369427302

/-! ## A186773.P17094168401626359800

`A028834(eq[1, and(1, A028834(n+1))]+1)`
-/

namespace A186773.P17094168401626359800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A028834 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A186773.P17094168401626359800

/-! ## A186773.P9613759527360357790

`∩[2*n+1, A028834(n+1)]`
-/

namespace A186773.P9613759527360357790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186773.P9613759527360357790

/-! ## A186773.P12069843799856604628

`filter[A028834(n+2), A374134(#)]`
-/

namespace A186773.P12069843799856604628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A186773.P12069843799856604628

/-! ## A186773.P13232122305432054187

`∩[A028834(n+1), A089684(n+1)]`
-/

namespace A186773.P13232122305432054187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186773.P13232122305432054187

/-! ## A186773.P3817473049435178136

`∩[A028834(n+1), A005843(n)+1]`
-/

namespace A186773.P3817473049435178136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186773.P3817473049435178136

/-! ## A186773.P14975530161814568770

`∩[A028834(n+1), A144396(n+1)]`
-/

namespace A186773.P14975530161814568770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186773.P14975530161814568770

/-! ## A186773.P16496845150620585769

`∩[A028834(n+2), A004277(n+1)+1]`
-/

namespace A186773.P16496845150620585769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186773.P16496845150620585769

/-! ## A186773.P2676954904248427883

`∩[A028834(n+1), A004273(n)]`
-/

namespace A186773.P2676954904248427883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186773.P2676954904248427883

/-! ## A186773.P16783306105212985926

`∩[A028834(n+1), A060747(n)]`
-/

namespace A186773.P16783306105212985926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186773.P16783306105212985926

/-! ## A186773.P11423963116526296455

`∩[A028834(n+1), A004275(n)-1]`
-/

namespace A186773.P11423963116526296455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186773.P11423963116526296455

/-! ## A186773.P4851251417500646096

`A020725(∩[2*n, A129630(n+1)])`
-/

namespace A186773.P4851251417500646096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A186773.P4851251417500646096

/-! ## A186773.P9675384835632611032

`A020725(∩[A129630(n+1), A020725(n+1)+n])`
-/

namespace A186773.P9675384835632611032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A186773.P9675384835632611032

/-! ## A186773.P17863077482505671352

`record[A060819(A028834(n+2))]`
-/

namespace A186773.P17863077482505671352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A028834 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186773.P17863077482505671352

/-! ## A186773.P1001484281912566439

`filter[A028834(n+1), A000035(#)]`
-/

namespace A186773.P1001484281912566439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A186773.P1001484281912566439

/-! ## A186773.P11946704457041466542

`filter[A028834(n+1), A266070(#)]`
-/

namespace A186773.P11946704457041466542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A186773.P11946704457041466542

/-! ## A186773.P11578705132011382219

`filter[A028834(n+1), A267155(#)]`
-/

namespace A186773.P11578705132011382219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A186773.P11578705132011382219

/-! ## A186773.P12024298941565916915

`filter[A028834(n+2), A266719(#)]`
-/

namespace A186773.P12024298941565916915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A186773.P12024298941565916915

/-!
# A186774: Smallest power of n whose decimal expansion contains n+1, or 0 if no such number exists.

The programs for A186774, there is no canonical definition to state claims against.
-/

/-! ## A186774.P18334863635457317164

`(n+2)^A010710(A055582(n))`
-/

namespace A186774.P18334863635457317164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A010710 (A055582 n).toNat : ℤ)

end

end A186774.P18334863635457317164

/-!
# A186775: Numbers k such that digitsum(2^k) > digitsum(2^(k+1)).

The programs for A186775, the canonical program `A186775.P3396256789162687716` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186775 has offset 1).

The definition of A186775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4919 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A186775.P3396256789162687716

`lt[Δ[A001370(n)], 0]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A186775

/-- `lt[Δ[A001370(n)], 0]` -/
def P3396256789162687716.Spec : Prop :=
  ∀ n, (P3396256789162687716.a n : ℤ) = A186775 (n + 1)

theorem P3396256789162687716.correct : P3396256789162687716.Spec := by
  intro n
  simp only [A186775, Nat.add_sub_cancel]

end A186775

/-! ## A186775.P10534131076710104293

`lt[A001370(n+1), A001370(n)]`
-/

namespace A186775.P10534131076710104293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A186775.P10534131076710104293

namespace A186775

/-- `lt[A001370(n+1), A001370(n)]` -/
def P10534131076710104293.Spec : Prop :=
  ∀ n, (P10534131076710104293.a n : ℤ) = A186775 (n + 1)

theorem P10534131076710104293.correct : P10534131076710104293.Spec := by
  intro n
  simp only [A186775, Nat.add_sub_cancel, A186775.P10534131076710104293.f1, A186775.P10534131076710104293.f2, A186775.P10534131076710104293.a, A186775.P3396256789162687716.f2, A186775.P3396256789162687716.f1, A186775.P3396256789162687716.f3, A186775.P3396256789162687716.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A186775

/-! ## A186775.P11794705246253304340

`lt[Δ[∑{digits}[2^n, #]], 0]`
-/

namespace A186775.P11794705246253304340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A186775.P11794705246253304340

namespace A186775

/-- `lt[Δ[∑{digits}[2^n, #]], 0]` -/
def P11794705246253304340.Spec : Prop :=
  ∀ n, (P11794705246253304340.a n : ℤ) = A186775 (n + 1)

end A186775

/-! ## A186775.P2563930436604332857

`lt[ratio[∑{digits}[2^n, #]], 1]`
-/

namespace A186775.P2563930436604332857
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n

end

end A186775.P2563930436604332857

namespace A186775

/-- `lt[ratio[∑{digits}[2^n, #]], 1]` -/
def P2563930436604332857.Spec : Prop :=
  ∀ n, (P2563930436604332857.a n : ℤ) = A186775 (n + 1)

end A186775

/-! ## A186775.P17915463713254008722

`lt[ratio[∑{digits}[A000225(n), #]+1], 1]`
-/

namespace A186775.P17915463713254008722
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℚ)) n

end

end A186775.P17915463713254008722

namespace A186775

/-- `lt[ratio[∑{digits}[A000225(n), #]+1], 1]` -/
def P17915463713254008722.Spec : Prop :=
  ∀ n, (P17915463713254008722.a n : ℤ) = A186775 (n + 1)

end A186775

/-! ## A186775.P13249108574765183783

`lt[Δ[A023443(∑{digits}[A000051(n), #])], 0]`
-/

namespace A186775.P13249108574765183783
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A186775.P13249108574765183783

namespace A186775

/-- `lt[Δ[A023443(∑{digits}[A000051(n), #])], 0]` -/
def P13249108574765183783.Spec : Prop :=
  ∀ n, (P13249108574765183783.a n : ℤ) = A186775 (n + 1)

end A186775

/-! ## A186775.P4457268856350119446

`lt[Δ[A028310(∑{digits}[A000079(n), #])], 0]`
-/

namespace A186775.P4457268856350119446
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A186775.P4457268856350119446

namespace A186775

/-- `lt[Δ[A028310(∑{digits}[A000079(n), #])], 0]` -/
def P4457268856350119446.Spec : Prop :=
  ∀ n, (P4457268856350119446.a n : ℤ) = A186775 (n + 1)

end A186775

/-!
# A186776: Stanley Sequence S(0,2).

The programs for A186776, the canonical program `A186776.P17009521900512411188` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186776 has offset 1).

The definition of A186776 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004793, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A186776.P17009521900512411188

`A004793(n+1)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A186776

/-- `A004793(n+1)-1` -/
def P17009521900512411188.Spec : Prop :=
  ∀ n, P17009521900512411188.a n = A186776 (n + 1)

theorem P17009521900512411188.correct : P17009521900512411188.Spec := by
  intro n
  simp only [A186776, Nat.add_sub_cancel]

end A186776

/-! ## A186776.P11928271388531578197

`A033160(n+1)-2`
-/

namespace A186776.P11928271388531578197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) - 2

end

end A186776.P11928271388531578197

namespace A186776

/-- `A033160(n+1)-2` -/
def P11928271388531578197.Spec : Prop :=
  ∀ n, P11928271388531578197.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P636658901480159788

`A033163(n+1)-3`
-/

namespace A186776.P636658901480159788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) - 3

end

end A186776.P636658901480159788

namespace A186776

/-- `A033163(n+1)-3` -/
def P636658901480159788.Spec : Prop :=
  ∀ n, P636658901480159788.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P14202531181973420022

`n%2+(∑[and(n, -n)^log2(3)]+n)/2`
-/

namespace A186776.P14202531181973420022
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℝ) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2

end

end A186776.P14202531181973420022

namespace A186776

/-- `n%2+(∑[and(n, -n)^log2(3)]+n)/2` -/
def P14202531181973420022.Spec : Prop :=
  ∀ n, P14202531181973420022.a n = (A186776 (n + 1) : ℝ)

end A186776

/-! ## A186776.P6554824481360461332

`char[2*n+1]+(∑[and(n, -n)^log2(3)]+n)/2`
-/

namespace A186776.P6554824481360461332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) + (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℝ)) / 2

end

end A186776.P6554824481360461332

namespace A186776

/-- `char[2*n+1]+(∑[and(n, -n)^log2(3)]+n)/2` -/
def P6554824481360461332.Spec : Prop :=
  ∀ n, P6554824481360461332.a n = (A186776 (n + 1) : ℝ)

end A186776

/-! ## A186776.P7561898380777354693

`A005836(n+1)+n%2`
-/

namespace A186776.P7561898380777354693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A186776.P7561898380777354693

namespace A186776

/-- `A005836(n+1)+n%2` -/
def P7561898380777354693.Spec : Prop :=
  ∀ n, P7561898380777354693.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P9049287919529288382

`A033159(n+1)-gcd(2, n)`
-/

namespace A186776.P9049287919529288382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) - (Nat.gcd 2 n : ℤ)

end

end A186776.P9049287919529288382

namespace A186776

/-- `A033159(n+1)-gcd(2, n)` -/
def P9049287919529288382.Spec : Prop :=
  ∀ n, P9049287919529288382.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P4259850779181313267

`A003278(n+1)-char[2*n]`
-/

namespace A186776.P4259850779181313267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186776.P4259850779181313267

namespace A186776

/-- `A003278(n+1)-char[2*n]` -/
def P4259850779181313267.Spec : Prop :=
  ∀ n, P4259850779181313267.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P14484409893660210630

`char[2*n+1]+A033162(n+1)-3`
-/

namespace A186776.P14484409893660210630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A033162 (n + 1) - 3)

end

end A186776.P14484409893660210630

namespace A186776

/-- `char[2*n+1]+A033162(n+1)-3` -/
def P14484409893660210630.Spec : Prop :=
  ∀ n, P14484409893660210630.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P16222477634814853489

`A005836(n+1)+A000035(n)`
-/

namespace A186776.P16222477634814853489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + A000035 n

end

end A186776.P16222477634814853489

namespace A186776

/-- `A005836(n+1)+A000035(n)` -/
def P16222477634814853489.Spec : Prop :=
  ∀ n, P16222477634814853489.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P6108986778525953405

`A033162(n+1)-A176059(n)`
-/

namespace A186776.P6108986778525953405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - A176059 n

end

end A186776.P6108986778525953405

namespace A186776

/-- `A033162(n+1)-A176059(n)` -/
def P6108986778525953405.Spec : Prop :=
  ∀ n, P6108986778525953405.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P14925329339926022148

`A185256(n+1)-A140081(n)`
-/

namespace A186776.P14925329339926022148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 1) - A140081 n

end

end A186776.P14925329339926022148

namespace A186776

/-- `A185256(n+1)-A140081(n)` -/
def P14925329339926022148.Spec : Prop :=
  ∀ n, P14925329339926022148.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P16003703223392975187

`A005836(n+1)+Δ[A008619(n)]`
-/

namespace A186776.P16003703223392975187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (f1 (n + 1) - f1 n)

end

end A186776.P16003703223392975187

namespace A186776

/-- `A005836(n+1)+Δ[A008619(n)]` -/
def P16003703223392975187.Spec : Prop :=
  ∀ n, P16003703223392975187.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P14805565140950654098

`A005836(n+1)+char[A005408(n)]`
-/

namespace A186776.P14805565140950654098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186776.P14805565140950654098

namespace A186776

/-- `A005836(n+1)+char[A005408(n)]` -/
def P14805565140950654098.Spec : Prop :=
  ∀ n, P14805565140950654098.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P16909717370489260602

`A005836(n+1)+char[A109613(n)]`
-/

namespace A186776.P16909717370489260602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A186776.P16909717370489260602

namespace A186776

/-- `A005836(n+1)+char[A109613(n)]` -/
def P16909717370489260602.Spec : Prop :=
  ∀ n, P16909717370489260602.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P12993457764726961892

`A005836(n+1)+A000034(n)-1`
-/

namespace A186776.P12993457764726961892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (A000034 n - 1)

end

end A186776.P12993457764726961892

namespace A186776

/-- `A005836(n+1)+A000034(n)-1` -/
def P12993457764726961892.Spec : Prop :=
  ∀ n, P12993457764726961892.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P10712197973443058525

`A033159(n+1)-(A059841(n)+1)`
-/

namespace A186776.P10712197973443058525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) - (A059841 n + 1)

end

end A186776.P10712197973443058525

namespace A186776

/-- `A033159(n+1)-(A059841(n)+1)` -/
def P10712197973443058525.Spec : Prop :=
  ∀ n, P10712197973443058525.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P3396478080167743095

`A033157(n+1)-(A140081(n)+1)`
-/

namespace A186776.P3396478080167743095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033157 (n + 1) - (A140081 n + 1)

end

end A186776.P3396478080167743095

namespace A186776

/-- `A033157(n+1)-(A140081(n)+1)` -/
def P3396478080167743095.Spec : Prop :=
  ∀ n, P3396478080167743095.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P16056491998881213344

`A033164(n+1)-(A176059(n)+1)`
-/

namespace A186776.P16056491998881213344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033164 (n + 1) - (A176059 n + 1)

end

end A186776.P16056491998881213344

namespace A186776

/-- `A033164(n+1)-(A176059(n)+1)` -/
def P16056491998881213344.Spec : Prop :=
  ∀ n, P16056491998881213344.a n = A186776 (n + 1)

end A186776

/-! ## A186776.P7523287719738931686

`A191107(n+1)-A055247(n+1)`
-/

namespace A186776.P7523287719738931686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) - A055247 (n + 1)

end

end A186776.P7523287719738931686

namespace A186776

/-- `A191107(n+1)-A055247(n+1)` -/
def P7523287719738931686.Spec : Prop :=
  ∀ n, P7523287719738931686.a n = A186776 (n + 1)

end A186776

/-!
# A186777: Solutions x of the equation A064380(x)-A000010(x)=1 in integers x>=2.

The programs for A186777, there is no canonical definition to state claims against.
-/

/-! ## A186777.P9117599051641783510

`A338904(A119288(n+1)+A060735(n+1))`
-/

namespace A186777.P9117599051641783510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338904 (A119288 (n + 1) + A060735 (n + 1)).toNat

end

end A186777.P9117599051641783510

/-!
# A186782: Primes of the form k*6^m-1 with k prime and m an integer.

The programs for A186782, there is no canonical definition to state claims against.
-/

/-! ## A186782.P9101470836966983599

`p?[eq[2, A000005((n+1)/6^val(n+1, 6))]]`
-/

namespace A186782.P9101470836966983599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (6 ^ SequenceMachineLib.valuation (n + 1) 6 : ℚ))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A186782.P9101470836966983599

/-! ## A186782.P9255759444804518954

`p?[eq[2, A000005(A244414(n+1))]]`
-/

namespace A186782.P9255759444804518954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A244414 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A186782.P9255759444804518954

/-! ## A186782.P12654920497352303451

`∩[A067139(n+1), A233866(n+1)]`
-/

namespace A186782.P12654920497352303451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186782.P12654920497352303451

/-! ## A186782.P5907029769011024550

`∩[A137238(n+1), A169606(n+1)]`
-/

namespace A186782.P5907029769011024550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A186782.P5907029769011024550

/-!
# A186783: Diameter of the symmetric group S_n when generated by the transposition (1,2) and both left and right rotations by (1,2,...,n).

The programs for A186783, the canonical program `A186783.P13049978529581840982` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A186783 has offset 1).

The definition of A186783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A186783.P13049978529581840982

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=10, a(5)=15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A186783

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13049978529581840982.Spec : Prop :=
  ∀ n, P13049978529581840982.a n = A186783 (n + 1)

theorem P13049978529581840982.correct : P13049978529581840982.Spec := by
  intro n
  simp only [A186783, Nat.add_sub_cancel]

end A186783

/-! ## A186783.P5905872544413496078

`∑[n]-char[2]`
-/

namespace A186783.P5905872544413496078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A186783.P5905872544413496078

namespace A186783

/-- `∑[n]-char[2]` -/
def P5905872544413496078.Spec : Prop :=
  ∀ n, P5905872544413496078.a n = A186783 (n + 1)

end A186783

/-! ## A186783.P11363636297542908341

`xor(∑[n], char[2])`
-/

namespace A186783.P11363636297542908341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f2 j = n then 1 else 0)

end

end A186783.P11363636297542908341

namespace A186783

/-- `xor(∑[n], char[2])` -/
def P11363636297542908341.Spec : Prop :=
  ∀ n, (P11363636297542908341.a n : ℤ) = A186783 (n + 1)

end A186783

/-! ## A186783.P2855690197949933671

`ceil(∑[n]*cos(char[2]))`
-/

namespace A186783.P2855690197949933671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * Real.cos ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A186783.P2855690197949933671

namespace A186783

/-- `ceil(∑[n]*cos(char[2]))` -/
def P2855690197949933671.Spec : Prop :=
  ∀ n, P2855690197949933671.a n = A186783 (n + 1)

end A186783

/-! ## A186783.P17154514388379045562

`round(∑[n]*cos(char[2]))`
-/

namespace A186783.P17154514388379045562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * Real.cos ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

end

end A186783.P17154514388379045562

namespace A186783

/-- `round(∑[n]*cos(char[2]))` -/
def P17154514388379045562.Spec : Prop :=
  ∀ n, P17154514388379045562.a n = A186783 (n + 1)

end A186783

/-! ## A186783.P12404025968851957933

`ceil(∑[n]/cosh(char[2]))`
-/

namespace A186783.P12404025968851957933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cosh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A186783.P12404025968851957933

namespace A186783

/-- `ceil(∑[n]/cosh(char[2]))` -/
def P12404025968851957933.Spec : Prop :=
  ∀ n, P12404025968851957933.a n = A186783 (n + 1)

end A186783

/-! ## A186783.P859200014307833060

`and(floor(2/(ϕ-n)), ∑[n])`
-/

namespace A186783.P859200014307833060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊2 / (Real.goldenRatio - (n : ℝ))⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A186783.P859200014307833060

namespace A186783

/-- `and(floor(2/(ϕ-n)), ∑[n])` -/
def P859200014307833060.Spec : Prop :=
  ∀ n, P859200014307833060.a n = A186783 (n + 1)

end A186783

/-! ## A186783.P10484807520030396654

`lcm(n, char[2]+n+1)/2`
-/

namespace A186783.P10484807520030396654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((if ∃ j, f1 j = n then 1 else 0) + (n + 1)) : ℚ) / 2

end

end A186783.P10484807520030396654

namespace A186783

/-- `lcm(n, char[2]+n+1)/2` -/
def P10484807520030396654.Spec : Prop :=
  ∀ n, P10484807520030396654.a n = (A186783 (n + 1) : ℚ)

end A186783

/-! ## A186783.P4436455342030190903

`(n+1)*n/or(2, char[2])`
-/

namespace A186783.P4436455342030190903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) / (Nat.lor 2 (if ∃ j, f1 j = n then 1 else 0) : ℚ))

end

end A186783.P4436455342030190903

namespace A186783

/-- `(n+1)*n/or(2, char[2])` -/
def P4436455342030190903.Spec : Prop :=
  ∀ n, P4436455342030190903.a n = (A186783 (n + 1) : ℚ)

end A186783

/-! ## A186783.P5763839741083058942

`(n+1)*n/xor(2, char[2])`
-/

namespace A186783.P5763839741083058942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) / (Nat.xor 2 (if ∃ j, f1 j = n then 1 else 0) : ℚ))

end

end A186783.P5763839741083058942

namespace A186783

/-- `(n+1)*n/xor(2, char[2])` -/
def P5763839741083058942.Spec : Prop :=
  ∀ n, P5763839741083058942.a n = (A186783 (n + 1) : ℚ)

end A186783

/-! ## A186783.P4126835921975771439

`(n+1)²%(char[2]+∑[n+1])`
-/

namespace A186783.P4126835921975771439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % ((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A186783.P4126835921975771439

namespace A186783

/-- `(n+1)²%(char[2]+∑[n+1])` -/
def P4126835921975771439.Spec : Prop :=
  ∀ n, (P4126835921975771439.a n : ℤ) = A186783 (n + 1)

end A186783

/-! ## A186783.P9258176768650225971

`C(n+1, a(gcd(2, 2*n)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A186783.P9258176768650225971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.choose (n + 1) (a (Nat.gcd 2 (2 * n)))

end

end A186783.P9258176768650225971

namespace A186783

/-- `C(n+1, a(gcd(2, 2*n)))` -/
def P9258176768650225971.Spec : Prop :=
  ∀ n, (P9258176768650225971.a n : ℤ) = A186783 (n + 1)

end A186783

/-! ## A186783.P5547900089616299769

`∑[2*n]/(val(2*n+1, n+3)+2)`
-/

namespace A186783.P5547900089616299769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (SequenceMachineLib.valuation (2 * n + 1) (n + 3) + 2 : ℚ)

end

end A186783.P5547900089616299769

namespace A186783

/-- `∑[2*n]/(val(2*n+1, n+3)+2)` -/
def P5547900089616299769.Spec : Prop :=
  ∀ n, P5547900089616299769.a n = (A186783 (n + 1) : ℚ)

end A186783

/-! ## A186783.P17428079638377268758

`C(n+1-C(n-1, a(n-1)²), n-1)` with `a(0)=0`
-/

namespace A186783.P17428079638377268758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose ((n + 1 : ℤ) - (Nat.choose ((n : ℤ) - 1).toNat (a (n - 1) ^ 2) : ℤ)).toNat ((n : ℤ) - 1).toNat

end

end A186783.P17428079638377268758

namespace A186783

/-- `C(n+1-C(n-1, a(n-1)²), n-1)` -/
def P17428079638377268758.Spec : Prop :=
  ∀ n, (P17428079638377268758.a n : ℤ) = A186783 (n + 1)

end A186783

/-! ## A186783.P8115578497434260655

`A094284(n+2)/A094284(n+1)*A000217(n)`
-/

namespace A186783.P8115578497434260655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094284 (n + 2) : ℚ) / (A094284 (n + 1) : ℚ) * (A000217 n : ℚ)

end

end A186783.P8115578497434260655

namespace A186783

/-- `A094284(n+2)/A094284(n+1)*A000217(n)` -/
def P8115578497434260655.Spec : Prop :=
  ∀ n, P8115578497434260655.a n = (A186783 (n + 1) : ℚ)

end A186783

/-! ## A186783.P15678794048573375699

`A245467(A316571(n+1))`
-/

namespace A186783.P15678794048573375699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245467 (A316571 (n + 1)).toNat

end

end A186783.P15678794048573375699

namespace A186783

/-- `A245467(A316571(n+1))` -/
def P15678794048573375699.Spec : Prop :=
  ∀ n, P15678794048573375699.a n = A186783 (n + 1)

end A186783

/-! ## A186783.P9466030756132447711

`A091018(A182531(n+1))`
-/

namespace A186783.P9466030756132447711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 (A182531 (n + 1)).toNat

end

end A186783.P9466030756132447711

namespace A186783

/-- `A091018(A182531(n+1))` -/
def P9466030756132447711.Spec : Prop :=
  ∀ n, P9466030756132447711.a n = A186783 (n + 1)

end A186783

/-! ## A186783.P15843415900805361917

`A144216(A342939(n+1))`
-/

namespace A186783.P15843415900805361917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144216 (A342939 (n + 1)).toNat

end

end A186783.P15843415900805361917

namespace A186783

/-- `A144216(A342939(n+1))` -/
def P15843415900805361917.Spec : Prop :=
  ∀ n, P15843415900805361917.a n = A186783 (n + 1)

end A186783

/-! ## A186783.P13838980490776724021

`A113638(∑[n])`
-/

namespace A186783.P13838980490776724021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A186783.P13838980490776724021

namespace A186783

/-- `A113638(∑[n])` -/
def P13838980490776724021.Spec : Prop :=
  ∀ n, P13838980490776724021.a n = A186783 (n + 1)

end A186783

/-!
# A186784: Number of (n+1)X3 0..3 arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A186784, there is no canonical definition to state claims against.
-/

/-! ## A186784.P4992699640642762926

`A186786(∑[n+1]+2)`
-/

namespace A186784.P4992699640642762926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186786 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186784.P4992699640642762926

/-! ## A186784.P368413712365140686

`lcm(2, A186786(A089071(n+3)))`
-/

namespace A186784.P368413712365140686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186786 (A089071 (n + 3)).toNat)

end

end A186784.P368413712365140686

/-! ## A186784.P15530405866020036838

`record[gcd(A002262(n), A186786(n+2))]`
-/

namespace A186784.P15530405866020036838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186786 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186784.P15530405866020036838

/-!
# A186785: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2 X 2 subblock determinants.

The programs for A186785, there is no canonical definition to state claims against.
-/

/-! ## A186785.P12025914803105003996

`A186786(∑[n+2]+4)`
-/

namespace A186785.P12025914803105003996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186786 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186785.P12025914803105003996

/-! ## A186785.P8206873027339037968

`lcm(2, A186786(A167614(n+1)))`
-/

namespace A186785.P8206873027339037968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186786 (A167614 (n + 1)).toNat)

end

end A186785.P8206873027339037968

/-!
# A186787: Half the number of (n+2)X(n+2) binary arrays with each 3X3 subblock having a sum in 2..7.

The programs for A186787, there is no canonical definition to state claims against.
-/

/-! ## A186787.P13079612181881038331

`A186796((n+1)²+n²)`
-/

namespace A186787.P13079612181881038331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 ((n + 1) ^ 2 + n ^ 2)

end

end A186787.P13079612181881038331

/-!
# A186788: Half the number of (n+2) X 3 binary arrays with each 3 X 3 subblock having a sum in 2..7.

The programs for A186788, there is no canonical definition to state claims against.
-/

/-! ## A186788.P6886688188744212097

`A186796(∑[n]+1)`
-/

namespace A186788.P6886688188744212097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186788.P6886688188744212097

/-! ## A186788.P12066992099095805585

`record[A010054(n)*A186796(n+1)]`
-/

namespace A186788.P12066992099095805585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186788.P12066992099095805585

/-! ## A186788.P18298623587542241662

`record[root(A186796(n+1), A059268(n))]`
-/

namespace A186788.P18298623587542241662
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186796 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186788.P18298623587542241662

/-! ## A186788.P13806132072436679479

`record[gcd(A186796(n+1), A229001(n))]`
-/

namespace A186788.P13806132072436679479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186796 (n + 1)) (A229001 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186788.P13806132072436679479

/-! ## A186788.P8930226295484537915

`record[(1-A238010(n))*A186796(n+1)]`
-/

namespace A186788.P8930226295484537915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A238010 n) * A186796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186788.P8930226295484537915

/-!
# A186789: Half the number of (n+2)X4 binary arrays with each 3X3 subblock having a sum in 2..7.

The programs for A186789, there is no canonical definition to state claims against.
-/

/-! ## A186789.P318544217007886312

`A186796(∑[n+1]+2)`
-/

namespace A186789.P318544217007886312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186789.P318544217007886312

/-! ## A186789.P3244642442763868341

`record[A010054(n)*A186796(n+2)]`
-/

namespace A186789.P3244642442763868341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186796 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186789.P3244642442763868341

/-! ## A186789.P1312788666964523327

`record[root(A186796(n+2), A059268(n))]`
-/

namespace A186789.P1312788666964523327
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186796 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186789.P1312788666964523327

/-! ## A186789.P3487659368592255618

`record[gcd(A186796(n+2), A229001(n))]`
-/

namespace A186789.P3487659368592255618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186796 (n + 2)) (A229001 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186789.P3487659368592255618

/-! ## A186789.P17975556477640412250

`record[A186796(A198453(n+1))]`
-/

namespace A186789.P17975556477640412250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186789.P17975556477640412250

/-!
# A186790: Half the number of (n+2)X5 binary arrays with each 3X3 subblock having a sum in 2..7.

The programs for A186790, there is no canonical definition to state claims against.
-/

/-! ## A186790.P11663684276602116125

`A186796(∑[n+2]+4)`
-/

namespace A186790.P11663684276602116125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A186790.P11663684276602116125

/-! ## A186790.P4189769375193631276

`A186796(A167614(n+1))+A178798(n)`
-/

namespace A186790.P4189769375193631276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (A167614 (n + 1)).toNat + A178798 n

end

end A186790.P4189769375193631276

/-! ## A186790.P2394302857424339995

`lcm(A054390(n), A186796(A167614(n+1)))`
-/

namespace A186790.P2394302857424339995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054390 n) (A186796 (A167614 (n + 1)).toNat)

end

end A186790.P2394302857424339995

/-! ## A186790.P16034630399187736380

`or(A000007(n), A186796(A167614(n+1)))`
-/

namespace A186790.P16034630399187736380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A186796 (A167614 (n + 1)).toNat)

end

end A186790.P16034630399187736380

/-! ## A186790.P17355416963872259578

`or(A033869(n), A186796(A167614(n+1)))`
-/

namespace A186790.P17355416963872259578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033869 n) (A186796 (A167614 (n + 1)).toNat)

end

end A186790.P17355416963872259578

/-!
# A186791: Half the number of (n+2)X6 binary arrays with each 3X3 subblock having a sum in 2..7.

The programs for A186791, there is no canonical definition to state claims against.
-/

/-! ## A186791.P12965156129470657752

`A186796(A141214(n)+7)`
-/

namespace A186791.P12965156129470657752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (A141214 n + 7).toNat

end

end A186791.P12965156129470657752

/-! ## A186791.P16425660052121353230

`A186796(A052905(n)+9)`
-/

namespace A186791.P16425660052121353230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (A052905 n + 9).toNat

end

end A186791.P16425660052121353230

/-! ## A186791.P11484796618675100499

`A186796(A055999(n)+10)`
-/

namespace A186791.P11484796618675100499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (A055999 n + 10).toNat

end

end A186791.P11484796618675100499

/-! ## A186791.P16427474845186241182

`A186796(A167614(n+2)+1)`
-/

namespace A186791.P16427474845186241182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (A167614 (n + 2) + 1).toNat

end

end A186791.P16427474845186241182

/-! ## A186791.P17667661297777547503

`A186796(eq[5, A131818(n+1)])`
-/

namespace A186791.P17667661297777547503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186791.P17667661297777547503

/-!
# A186792: Half the number of (n+2)X7 binary arrays with each 3X3 subblock having a sum in 2..7.

The programs for A186792, there is no canonical definition to state claims against.
-/

/-! ## A186792.P9727798559305025993

`A186796(A374005(n+1))`
-/

namespace A186792.P9727798559305025993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (A374005 (n + 1)).toNat

end

end A186792.P9727798559305025993

/-! ## A186792.P14084176344820880191

`A186796(eq[6, A131818(n+1)])`
-/

namespace A186792.P14084176344820880191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186792.P14084176344820880191

/-! ## A186792.P3179749461845010083

`A186796(eq[3, A144018(n+1)])`
-/

namespace A186792.P3179749461845010083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A186792.P3179749461845010083

/-!
# A186797: Number of (n+2)X(n+2) binary arrays with no 3X3 subblock commuting with any horizontal or vertical neighbor 3X3 subblock.

The programs for A186797, there is no canonical definition to state claims against.
-/

/-! ## A186797.P2411710698661173139

`A186806((n+1)²+n²)`
-/

namespace A186797.P2411710698661173139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 ((n + 1) ^ 2 + n ^ 2)

end

end A186797.P2411710698661173139

/-!
# A186798: Number of (n+2)X3 binary arrays with no 3X3 subblock commuting with any horizontal or vertical neighbor 3X3 subblock.

The programs for A186798, there is no canonical definition to state claims against.
-/

/-! ## A186798.P7268493476222373328

`A186806(∑[n]+1)`
-/

namespace A186798.P7268493476222373328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A186798.P7268493476222373328

/-! ## A186798.P5937285005298527

`record[A010054(n)*A186806(n+1)]`
-/

namespace A186798.P5937285005298527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186798.P5937285005298527

/-! ## A186798.P11914837625847297872

`record[A186806(n+1)/A034802(n)]`
-/

namespace A186798.P11914837625847297872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186806 (n + 1) : ℚ) / (A034802 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186798.P11914837625847297872

/-! ## A186798.P9280232899183005715

`record[root(A186806(n+1), A007318(n))]`
-/

namespace A186798.P9280232899183005715
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A186806 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186798.P9280232899183005715

/-! ## A186798.P2798499251850949837

`record[gcd(A002262(n), A186806(n+1))]`
-/

namespace A186798.P2798499251850949837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186806 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186798.P2798499251850949837

/-!
# A186799: Number of (n+2)X4 binary arrays with no 3X3 subblock commuting with any horizontal or vertical neighbor 3X3 subblock.

The programs for A186799, there is no canonical definition to state claims against.
-/

/-! ## A186799.P15085043161179680429

`A186806(∑[n+1]+2)`
-/

namespace A186799.P15085043161179680429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A186799.P15085043161179680429

/-! ## A186799.P14127975376756652117

`record[A186806(A127773(n+1)+2)]`
-/

namespace A186799.P14127975376756652117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (A127773 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186799.P14127975376756652117

/-! ## A186799.P18271003443378388735

`record[A010054(n)*A186806(n+2)]`
-/

namespace A186799.P18271003443378388735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186806 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186799.P18271003443378388735

/-! ## A186799.P3394826031771626027

`record[gcd(A002262(n), A186806(n+2))]`
-/

namespace A186799.P3394826031771626027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A186806 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186799.P3394826031771626027

/-! ## A186799.P5974066378298030499

`record[A186806(A198453(n+1))]`
-/

namespace A186799.P5974066378298030499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186806 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A186799.P5974066378298030499

