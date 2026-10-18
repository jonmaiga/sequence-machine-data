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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B006.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A211505: Number of solid standard Young tableaux of shape [[(3)^n],[3]].

The programs for A211505, there is no canonical definition to state claims against.
-/

/-! ## A211505.P5820694241405471837

`A214722(A167614(n+2))`
-/

namespace A211505.P5820694241405471837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214722 (A167614 (n + 2)).toNat

end

end A211505.P5820694241405471837

/-! ## A211505.P17613879285758294300

`A214722(A141214(n)+6)`
-/

namespace A211505.P17613879285758294300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214722 (A141214 n + 6).toNat

end

end A211505.P17613879285758294300

/-! ## A211505.P16624828011646763056

`A214722(A055999(n)+9)`
-/

namespace A211505.P16624828011646763056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214722 (A055999 n + 9).toNat

end

end A211505.P16624828011646763056

/-! ## A211505.P4141224691804533813

`A214722(eq[8, A059268(n)])`
-/

namespace A211505.P4141224691804533813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214722 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211505.P4141224691804533813

/-! ## A211505.P16278085978804206048

`A214722(A340266(n+2)+1)`
-/

namespace A211505.P16278085978804206048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214722 (A340266 (n + 2) + 1).toNat

end

end A211505.P16278085978804206048

/-!
# A211508: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2=n-x*y.

The programs for A211508, there is no canonical definition to state claims against.
-/

/-! ## A211508.P1068369242667363043

`A394787(n)+A394786(n)`
-/

namespace A211508.P1068369242667363043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394787 n + A394786 n

end

end A211508.P1068369242667363043

/-! ## A211508.P15683053051120319319

`A393715(n)+A393714(n)`
-/

namespace A211508.P15683053051120319319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393715 n + A393714 n

end

end A211508.P15683053051120319319

/-!
# A211511: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2=2x*y.

The programs for A211511, there is no canonical definition to state claims against.
-/

/-! ## A211511.P11708287720820109011

`(A211423(n)-A016813(n))/4`
-/

namespace A211511.P11708287720820109011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211423 n - A016813 n : ℚ) / 4

end

end A211511.P11708287720820109011

/-! ## A211511.P5598188572515845712

`A008624(A211423(n)-A008586(n))`
-/

namespace A211511.P5598188572515845712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A211423 n - A008586 n).toNat

end

end A211511.P5598188572515845712

/-! ## A211511.P15481869346693595474

`A025480(A211423(n)-A008574(n))`
-/

namespace A211511.P15481869346693595474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A211423 n - A008574 n).toNat

end

end A211511.P15481869346693595474

/-! ## A211511.P8035859943359039263

`A110655(A211423(n)-A016813(n))`
-/

namespace A211511.P8035859943359039263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A211423 n - A016813 n).toNat

end

end A211511.P8035859943359039263

/-! ## A211511.P11127300230620644471

`A002265(A211423(n))-n`
-/

namespace A211511.P11127300230620644471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A211423 n).toNat - (n : ℤ)

end

end A211511.P11127300230620644471

/-! ## A211511.P6412874061478780149

`A110655(A211423(n)-1)-n`
-/

namespace A211511.P6412874061478780149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A211423 n - 1).toNat - (n : ℤ)

end

end A211511.P6412874061478780149

/-! ## A211511.P6059179803774294399

`A025480(A211423(n))-A025480(2*n)`
-/

namespace A211511.P6059179803774294399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A211423 n).toNat - A025480 (2 * n)

end

end A211511.P6059179803774294399

/-!
# A211512: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2=3x*y.

The programs for A211512, there is no canonical definition to state claims against.
-/

/-! ## A211512.P8580575262381462142

`(A211424(n)-A016813(n))/4`
-/

namespace A211512.P8580575262381462142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211424 n - A016813 n : ℚ) / 4

end

end A211512.P8580575262381462142

/-! ## A211512.P15535900370294677023

`A008624(A211424(n)-A008586(n))`
-/

namespace A211512.P15535900370294677023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A211424 n - A008586 n).toNat

end

end A211512.P15535900370294677023

/-! ## A211512.P5954769397548213443

`A002265(A211424(n))-n`
-/

namespace A211512.P5954769397548213443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A211424 n).toNat - (n : ℤ)

end

end A211512.P5954769397548213443

/-! ## A211512.P18345947820544440404

`A008621(A211424(n))-A000027(n+1)`
-/

namespace A211512.P18345947820544440404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A211424 n).toNat - A000027 (n + 1)

end

end A211512.P18345947820544440404

/-! ## A211512.P8909336052732967445

`(A004526(A211424(n))-A005843(n))/2`
-/

namespace A211512.P8909336052732967445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (A211424 n).toNat - A005843 n : ℚ) / 2

end

end A211512.P8909336052732967445

/-! ## A211512.P4009140156540273483

`A004526(A004526(A211424(n))-A005843(n))`
-/

namespace A211512.P4009140156540273483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (A211424 n).toNat - A005843 n).toNat

end

end A211512.P4009140156540273483

/-!
# A211513: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2*w^2=x*y.

The programs for A211513, there is no canonical definition to state claims against.
-/

/-! ## A211513.P12220238812071127971

`∑[2*A379830(n)]`
-/

namespace A211513.P12220238812071127971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211513.P12220238812071127971

/-! ## A211513.P12136089545890290835

`floor((A211426(n)-4*n)/4)`
-/

namespace A211513.P12136089545890290835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211426 n - (4 * n : ℤ) : ℚ) / 4⌋

end

end A211513.P12136089545890290835

/-! ## A211513.P2403284335007308268

`A008624(A211426(n)-4*n)`
-/

namespace A211513.P2403284335007308268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A211426 n - (4 * n : ℤ)).toNat

end

end A211513.P2403284335007308268

/-! ## A211513.P490680010380196559

`(A211426(n)-A016813(n))/4`
-/

namespace A211513.P490680010380196559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211426 n - A016813 n : ℚ) / 4

end

end A211513.P490680010380196559

/-! ## A211513.P14365022786098937229

`A025480(A211426(n)-A008574(n))`
-/

namespace A211513.P14365022786098937229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A211426 n - A008574 n).toNat

end

end A211513.P14365022786098937229

/-! ## A211513.P16055358791627722798

`A110655(A211426(n)-A016813(n))`
-/

namespace A211513.P16055358791627722798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A211426 n - A016813 n).toNat

end

end A211513.P16055358791627722798

/-! ## A211513.P11904909476005207151

`A002265(A211426(n))-n`
-/

namespace A211513.P11904909476005207151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A211426 n).toNat - (n : ℤ)

end

end A211513.P11904909476005207151

/-! ## A211513.P12056530439107956033

`A110655(A211426(n)-1)-n`
-/

namespace A211513.P12056530439107956033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A211426 n - 1).toNat - (n : ℤ)

end

end A211513.P12056530439107956033

/-! ## A211513.P5074426610397966316

`A110655(A211426(n))+A001478(n+1)`
-/

namespace A211513.P5074426610397966316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A211426 n).toNat + A001478 (n + 1)

end

end A211513.P5074426610397966316

/-! ## A211513.P9961262217665914130

`A025480(A211426(n))-A004526(2*n)`
-/

namespace A211513.P9961262217665914130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A211426 n).toNat - A004526 (2 * n)

end

end A211513.P9961262217665914130

/-! ## A211513.P3964873054780319014

`A025480(A211426(n))-A025480(2*n)`
-/

namespace A211513.P3964873054780319014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A211426 n).toNat - A025480 (2 * n)

end

end A211513.P3964873054780319014

/-! ## A211513.P14987879865966132334

`A008621(A211426(n))-A004526(2*(n+1))`
-/

namespace A211513.P14987879865966132334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A211426 n).toNat - A004526 (2 * (n + 1))

end

end A211513.P14987879865966132334

/-!
# A211514: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 3*w^2=x*y.

The programs for A211514, there is no canonical definition to state claims against.
-/

/-! ## A211514.P16551480398641508292

`(A211427(n)-A016813(n))/4`
-/

namespace A211514.P16551480398641508292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211427 n - A016813 n : ℚ) / 4

end

end A211514.P16551480398641508292

/-! ## A211514.P17154887966139138637

`floor((A211427(n)-A008586(n))/4)`
-/

namespace A211514.P17154887966139138637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A211427 n - A008586 n : ℚ) / 4⌋

end

end A211514.P17154887966139138637

/-! ## A211514.P5997737931336542919

`A008624(A211427(n)-A008586(n))`
-/

namespace A211514.P5997737931336542919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A211427 n - A008586 n).toNat

end

end A211514.P5997737931336542919

/-! ## A211514.P6414956675219871634

`A131508(A211427(n)-A008574(n))`
-/

namespace A211514.P6414956675219871634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A211427 n - A008574 n).toNat

end

end A211514.P6414956675219871634

/-! ## A211514.P16952978704865546115

`A131508(A211427(n)-A008586(n))`
-/

namespace A211514.P16952978704865546115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A211427 n - A008586 n).toNat

end

end A211514.P16952978704865546115

/-! ## A211514.P13165527951142951328

`A131508(A211427(n)-A016813(n))`
-/

namespace A211514.P13165527951142951328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A211427 n - A016813 n).toNat

end

end A211514.P13165527951142951328

/-! ## A211514.P3113149804511221479

`A004524(A211427(n)-A008574(n))/2`
-/

namespace A211514.P3113149804511221479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (A211427 n - A008574 n).toNat : ℚ) / 2

end

end A211514.P3113149804511221479

/-! ## A211514.P17359345203292144192

`A004526(A211427(n)-A008586(n))/2`
-/

namespace A211514.P17359345203292144192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (A211427 n - A008586 n).toNat : ℚ) / 2

end

end A211514.P17359345203292144192

/-! ## A211514.P16601249732645920419

`A002265(A211427(n))-n`
-/

namespace A211514.P16601249732645920419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A211427 n).toNat - (n : ℤ)

end

end A211514.P16601249732645920419

/-! ## A211514.P17475184355379525378

`A131508(A211427(n)+1)-n`
-/

namespace A211514.P17475184355379525378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A211427 n + 1).toNat - (n : ℤ)

end

end A211514.P17475184355379525378

/-!
# A211515: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^3=x*y.

The programs for A211515, there is no canonical definition to state claims against.
-/

/-! ## A211515.P18004463302883466736

`A002265(A211429(n))-n`
-/

namespace A211515.P18004463302883466736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A211429 n).toNat - (n : ℤ)

end

end A211515.P18004463302883466736

/-! ## A211515.P8516102722587353049

`A110655(A211429(n)-1)-n`
-/

namespace A211515.P8516102722587353049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A211429 n - 1).toNat - (n : ℤ)

end

end A211515.P8516102722587353049

/-! ## A211515.P14453431388043579929

`(A211429(n)-A016813(n))/4`
-/

namespace A211515.P14453431388043579929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211429 n - A016813 n : ℚ) / 4

end

end A211515.P14453431388043579929

/-! ## A211515.P17955172578031630949

`A110655(A211429(n)-A016813(n))`
-/

namespace A211515.P17955172578031630949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A211429 n - A016813 n).toNat

end

end A211515.P17955172578031630949

/-! ## A211515.P10181613114358987129

`A002265(A211429(n)%A016813(n))`
-/

namespace A211515.P10181613114358987129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.tmod (A211429 n) (A016813 n)).toNat

end

end A211515.P10181613114358987129

/-! ## A211515.P4923256552413083823

`(A002265(A211429(n))+A000290(n))%(n+1)`
-/

namespace A211515.P4923256552413083823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A211429 n).toNat + A000290 n) (n + 1 : ℤ)

end

end A211515.P4923256552413083823

/-!
# A211516: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^2=x+y.

The programs for A211516, the canonical program `A211516.P14176206433691756358` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211516 has offset 0).

The definition of A211516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211516.P9058281972575481532

`A339183(n)+∑[2*A320278(n)]`
-/

namespace A211516.P9058281972575481532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211516.P9058281972575481532

namespace A211516

/-- `A339183(n)+∑[2*A320278(n)]` -/
def P9058281972575481532.Spec : Prop :=
  ∀ n, P9058281972575481532.a n = A211516 n

end A211516

/-! ## A211516.P14176206433691756358

`A022554(2*n)-2*A022554(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211516

/-- `A022554(2*n)-2*A022554(n)` -/
def P14176206433691756358.Spec : Prop :=
  ∀ n, P14176206433691756358.a n = A211516 n

theorem P14176206433691756358.correct : P14176206433691756358.Spec := by
  intro n
  simp only [A211516]

end A211516

/-! ## A211516.P12476028954000463368

`A339183(n)+A005843(∑[A320278(n)])`
-/

namespace A211516.P12476028954000463368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 n + A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211516.P12476028954000463368

namespace A211516

/-- `A339183(n)+A005843(∑[A320278(n)])` -/
def P12476028954000463368.Spec : Prop :=
  ∀ n, P12476028954000463368.a n = A211516 n

end A211516

/-! ## A211516.P1762009755834127860

`A022554(2*n)-A005843(A022554(n))`
-/

namespace A211516.P1762009755834127860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 (2 * n) - A005843 (A022554 n).toNat

end

end A211516.P1762009755834127860

namespace A211516

/-- `A022554(2*n)-A005843(A022554(n))` -/
def P1762009755834127860.Spec : Prop :=
  ∀ n, P1762009755834127860.a n = A211516 n

end A211516

/-! ## A211516.P18391287161067213390

`A327672(Δ[n²])-A004273(A327672(n+1))`
-/

namespace A211516.P18391287161067213390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A004273 (A327672 (n + 1)).toNat

end

end A211516.P18391287161067213390

namespace A211516

/-- `A327672(Δ[n²])-A004273(A327672(n+1))` -/
def P18391287161067213390.Spec : Prop :=
  ∀ n, P18391287161067213390.a n = A211516 n

end A211516

/-! ## A211516.P8115676719221247913

`A065475(A327672(2*n+1))%A327672(n+1)`
-/

namespace A211516.P8115676719221247913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065475 (A327672 (2 * n + 1)).toNat) (A327672 (n + 1))

end

end A211516.P8115676719221247913

namespace A211516

/-- `A065475(A327672(2*n+1))%A327672(n+1)` -/
def P8115676719221247913.Spec : Prop :=
  ∀ n, P8115676719221247913.a n = A211516 n

end A211516

/-!
# A211517: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w^3=(x+y)^2.

The programs for A211517, the canonical program `A211517.P17636450596556737059` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211517 has offset 0).

The definition of A211517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211517.P17636450596556737059

`A031876(2*n)-A005843(A031876(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A211517

/-- `A031876(2*n)-A005843(A031876(n))` -/
def P17636450596556737059.Spec : Prop :=
  ∀ n, P17636450596556737059.a n = A211517 n

theorem P17636450596556737059.correct : P17636450596556737059.Spec := by
  intro n
  simp only [A211517]

end A211517

/-! ## A211517.P11533603814217195838

`A031876(A004277(n))-A004277(A031876(n))`
-/

namespace A211517.P11533603814217195838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (A004277 n).toNat - A004277 (A031876 n).toNat

end

end A211517.P11533603814217195838

namespace A211517

/-- `A031876(A004277(n))-A004277(A031876(n))` -/
def P11533603814217195838.Spec : Prop :=
  ∀ n, P11533603814217195838.a n = A211517 n

end A211517

/-! ## A211517.P8993068420145180483

`A031876(A005843(n))-A031876(n)-A031876(n)`
-/

namespace A211517.P8993068420145180483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (A005843 n).toNat - A031876 n - A031876 n

end

end A211517.P8993068420145180483

namespace A211517

/-- `A031876(A005843(n))-A031876(n)-A031876(n)` -/
def P8993068420145180483.Spec : Prop :=
  ∀ n, P8993068420145180483.a n = A211517 n

end A211517

/-! ## A211517.P14495005070258029682

`A031876(2*n)-A031876(n)-A031876(n)%A088175(n+1)`
-/

namespace A211517.P14495005070258029682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (2 * n) - A031876 n - Int.tmod (A031876 n) (A088175 (n + 1))

end

end A211517.P14495005070258029682

namespace A211517

/-- `A031876(2*n)-A031876(n)-A031876(n)%A088175(n+1)` -/
def P14495005070258029682.Spec : Prop :=
  ∀ n, P14495005070258029682.a n = A211517 n

end A211517

/-! ## A211517.P17057135379019202036

`A031876(A029659(n)%2+2*n)-A031876(n)-A031876(n)`
-/

namespace A211517.P17057135379019202036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (Int.tmod (A029659 n) 2 + (2 * n : ℤ)).toNat - A031876 n - A031876 n

end

end A211517.P17057135379019202036

namespace A211517

/-- `A031876(A029659(n)%2+2*n)-A031876(n)-A031876(n)` -/
def P17057135379019202036.Spec : Prop :=
  ∀ n, P17057135379019202036.a n = A211517 n

end A211517

/-! ## A211517.P840927625120335920

`A031876(A061807(n+1)%2+2*n)-A031876(n)-A031876(n)`
-/

namespace A211517.P840927625120335920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (Int.tmod (A061807 (n + 1)) 2 + (2 * n : ℤ)).toNat - A031876 n - A031876 n

end

end A211517.P840927625120335920

namespace A211517

/-- `A031876(A061807(n+1)%2+2*n)-A031876(n)-A031876(n)` -/
def P840927625120335920.Spec : Prop :=
  ∀ n, P840927625120335920.a n = A211517 n

end A211517

/-! ## A211517.P4661414223128449388

`A031876(A024023(n+4)%2+2*n)-A031876(n)-A031876(n)`
-/

namespace A211517.P4661414223128449388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031876 (Int.tmod (A024023 (n + 4)) 2 + (2 * n : ℤ)).toNat - A031876 n - A031876 n

end

end A211517.P4661414223128449388

namespace A211517

/-- `A031876(A024023(n+4)%2+2*n)-A031876(n)-A031876(n)` -/
def P4661414223128449388.Spec : Prop :=
  ∀ n, P4661414223128449388.a n = A211517 n

end A211517

/-!
# A211519: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w=2x-3y.

The programs for A211519, the canonical program `A211519.P10520210630129682767` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211519 has offset 1).

The definition of A211519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211519.P10520210630129682767

`floor(n²/4)+floor((n-1)/3)+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211519

/-- `floor(n²/4)+floor((n-1)/3)+1` -/
def P10520210630129682767.Spec : Prop :=
  ∀ n, P10520210630129682767.a n = A211519 (n + 1)

theorem P10520210630129682767.correct : P10520210630129682767.Spec := by
  intro n
  simp only [A211519, Nat.add_sub_cancel]

end A211519

/-! ## A211519.P6669163147533290189

`∑[a(n-3)+gcd(2, n)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A211519.P6669163147533290189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 3) + Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211519.P6669163147533290189

namespace A211519

/-- `∑[a(n-3)+gcd(2, n)]` -/
def P6669163147533290189.Spec : Prop :=
  ∀ n, (P6669163147533290189.a n : ℤ) = A211519 (n + 1)

end A211519

/-! ## A211519.P2683398879840875167

`floor(∑[a(n-2)+3]/3)` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A211519.P2683398879840875167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 4] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A211519.P2683398879840875167

namespace A211519

/-- `floor(∑[a(n-2)+3]/3)` -/
def P2683398879840875167.Spec : Prop :=
  ∀ n, P2683398879840875167.a n = A211519 (n + 1)

end A211519

/-! ## A211519.P13512541729911563862

`∑[floor((gcd(n+2, n-1)+n-1)/2)]`
-/

namespace A211519.P13512541729911563862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℤ) + ((n : ℤ) - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211519.P13512541729911563862

namespace A211519

/-- `∑[floor((gcd(n+2, n-1)+n-1)/2)]` -/
def P13512541729911563862.Spec : Prop :=
  ∀ n, P13512541729911563862.a n = A211519 (n + 1)

end A211519

/-!
# A211520: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w + 4y = 2x.

The programs for A211520, the canonical program `A211520.P1575783996224756379` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211520 has offset 0).

The definition of A211520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211520.P1575783996224756379

`∑[n-A226107(n+1)]-n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211520

/-- `∑[n-A226107(n+1)]-n` -/
def P1575783996224756379.Spec : Prop :=
  ∀ n, P1575783996224756379.a n = A211520 n

theorem P1575783996224756379.correct : P1575783996224756379.Spec := by
  intro n
  simp only [A211520]

end A211520

/-! ## A211520.P1429307304254007298

`∑[ceil(abs((1-n)/2))]-A173151(n)`
-/

namespace A211520.P1429307304254007298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A173151 n

end

end A211520.P1429307304254007298

namespace A211520

/-- `∑[ceil(abs((1-n)/2))]-A173151(n)` -/
def P1429307304254007298.Spec : Prop :=
  ∀ n, P1429307304254007298.a n = A211520 n

end A211520

/-! ## A211520.P11176636036858705726

`A038707(n)-A055607(n+1)`
-/

namespace A211520.P11176636036858705726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038707 n - A055607 (n + 1)

end

end A211520.P11176636036858705726

namespace A211520

/-- `A038707(n)-A055607(n+1)` -/
def P11176636036858705726.Spec : Prop :=
  ∀ n, P11176636036858705726.a n = A211520 n

end A211520

/-! ## A211520.P3072727537304516490

`A122046(n)-A032801(n+1)`
-/

namespace A211520.P3072727537304516490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 n - A032801 (n + 1)

end

end A211520.P3072727537304516490

namespace A211520

/-- `A122046(n)-A032801(n+1)` -/
def P3072727537304516490.Spec : Prop :=
  ∀ n, P3072727537304516490.a n = A211520 n

end A211520

/-! ## A211520.P17654964716693766120

`A129819(n)-A059169(n+1)`
-/

namespace A211520.P17654964716693766120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129819 n - A059169 (n + 1)

end

end A211520.P17654964716693766120

namespace A211520

/-- `A129819(n)-A059169(n+1)` -/
def P17654964716693766120.Spec : Prop :=
  ∀ n, P17654964716693766120.a n = A211520 n

end A211520

/-! ## A211520.P12848942137855311991

`A001399(A114119(n))-A114119(n)`
-/

namespace A211520.P12848942137855311991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A114119 n).toNat - A114119 n

end

end A211520.P12848942137855311991

namespace A211520

/-- `A001399(A114119(n))-A114119(n)` -/
def P12848942137855311991.Spec : Prop :=
  ∀ n, P12848942137855311991.a n = A211520 n

end A211520

/-! ## A211520.P16864971356049542790

`A004526(n)²-A002620(A028242(n))`
-/

namespace A211520.P16864971356049542790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2 - A002620 (A028242 n).toNat

end

end A211520.P16864971356049542790

namespace A211520

/-- `A004526(n)²-A002620(A028242(n))` -/
def P16864971356049542790.Spec : Prop :=
  ∀ n, P16864971356049542790.a n = A211520 n

end A211520

/-! ## A211520.P6186799539794921744

`A001399(A007494(n+1))-A007494(n+1)`
-/

namespace A211520.P6186799539794921744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A007494 (n + 1)).toNat - A007494 (n + 1)

end

end A211520.P6186799539794921744

namespace A211520

/-- `A001399(A007494(n+1))-A007494(n+1)` -/
def P6186799539794921744.Spec : Prop :=
  ∀ n, P6186799539794921744.a n = A211520 n

end A211520

/-! ## A211520.P9522536105904551857

`A004526(n)²-A008624(n)*A059169(n+1)`
-/

namespace A211520.P9522536105904551857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2 - A008624 n * A059169 (n + 1)

end

end A211520.P9522536105904551857

namespace A211520

/-- `A004526(n)²-A008624(n)*A059169(n+1)` -/
def P9522536105904551857.Spec : Prop :=
  ∀ n, P9522536105904551857.a n = A211520 n

end A211520

/-! ## A211520.P12211487512789916539

`A069905(comp[3*n+4])`
-/

namespace A211520.P12211487512789916539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A211520.P12211487512789916539

namespace A211520

/-- `A069905(comp[3*n+4])` -/
def P12211487512789916539.Spec : Prop :=
  ∀ n, P12211487512789916539.a n = A211520 n

end A211520

/-! ## A211520.P12616592022128944266

`A211540(∑[char[2*n]]+n)`
-/

namespace A211520.P12616592022128944266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A211520.P12616592022128944266

namespace A211520

/-- `A211540(∑[char[2*n]]+n)` -/
def P12616592022128944266.Spec : Prop :=
  ∀ n, P12616592022128944266.a n = A211520 n

end A211520

/-! ## A211520.P4035701007146522676

`∑[A130722(n+1)]-A130722(2*n)`
-/

namespace A211520.P4035701007146522676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130722 (2 * n)

end

end A211520.P4035701007146522676

namespace A211520

/-- `∑[A130722(n+1)]-A130722(2*n)` -/
def P4035701007146522676.Spec : Prop :=
  ∀ n, P4035701007146522676.a n = A211520 n

end A211520

/-! ## A211520.P7535305455773066773

`A008743(A047241(n+1))`
-/

namespace A211520.P7535305455773066773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (A047241 (n + 1)).toNat

end

end A211520.P7535305455773066773

namespace A211520

/-- `A008743(A047241(n+1))` -/
def P7535305455773066773.Spec : Prop :=
  ∀ n, P7535305455773066773.a n = A211520 n

end A211520

/-! ## A211520.P1898080090980856495

`A008743(A109613(3*n))`
-/

namespace A211520.P1898080090980856495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (A109613 (3 * n)).toNat

end

end A211520.P1898080090980856495

namespace A211520

/-- `A008743(A109613(3*n))` -/
def P1898080090980856495.Spec : Prop :=
  ∀ n, P1898080090980856495.a n = A211520 n

end A211520

/-! ## A211520.P7652091335117035303

`A008743(A047270(n+1)-2)`
-/

namespace A211520.P7652091335117035303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (A047270 (n + 1) - 2).toNat

end

end A211520.P7652091335117035303

namespace A211520

/-- `A008743(A047270(n+1)-2)` -/
def P7652091335117035303.Spec : Prop :=
  ∀ n, P7652091335117035303.a n = A211520 n

end A211520

/-! ## A211520.P3615929142477838307

`A008743(A109613(n)+n+n)`
-/

namespace A211520.P3615929142477838307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008743 (A109613 n + (n : ℤ) + (n : ℤ)).toNat

end

end A211520.P3615929142477838307

namespace A211520

/-- `A008743(A109613(n)+n+n)` -/
def P3615929142477838307.Spec : Prop :=
  ∀ n, P3615929142477838307.a n = A211520 n

end A211520

/-! ## A211520.P16001419502579094684

`A008621(A004526(n)*A007494(n))-A008621(n)`
-/

namespace A211520.P16001419502579094684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A004526 n * A007494 n).toNat - A008621 n

end

end A211520.P16001419502579094684

namespace A211520

/-- `A008621(A004526(n)*A007494(n))-A008621(n)` -/
def P16001419502579094684.Spec : Prop :=
  ∀ n, P16001419502579094684.a n = A211520 n

end A211520

/-! ## A211520.P10845405212990960012

`A008621(n²)-A008621(A230584(n+1))`
-/

namespace A211520.P10845405212990960012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (n ^ 2) - A008621 (A230584 (n + 1)).toNat

end

end A211520.P10845405212990960012

namespace A211520

/-- `A008621(n²)-A008621(A230584(n+1))` -/
def P10845405212990960012.Spec : Prop :=
  ∀ n, P10845405212990960012.a n = A211520 n

end A211520

/-!
# A211521: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w + 2x = 4y.

The programs for A211521, the canonical program `A211521.P15086705561541026514` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211521 has offset 0).

The definition of A211521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211521.P15086705561541026514

`ceil(n*floor(n/2)/2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211521

/-- `ceil(n*floor(n/2)/2)` -/
def P15086705561541026514.Spec : Prop :=
  ∀ n, P15086705561541026514.a n = A211521 n

theorem P15086705561541026514.correct : P15086705561541026514.Spec := by
  intro n
  simp only [A211521]

end A211521

/-! ## A211521.P771990623832581769

`round((n-1)*or(1, n)/4)`
-/

namespace A211521.P771990623832581769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((Nat.lor 1 n : ℚ) / 4))

end

end A211521.P771990623832581769

namespace A211521

/-- `round((n-1)*or(1, n)/4)` -/
def P771990623832581769.Spec : Prop :=
  ∀ n, P771990623832581769.a n = A211521 n

end A211521

/-! ## A211521.P12951559393699909815

`round((n-n%2)*n/4)`
-/

namespace A211521.P12951559393699909815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℚ) * ((n : ℚ) / 4))

end

end A211521.P12951559393699909815

namespace A211521

/-- `round((n-n%2)*n/4)` -/
def P12951559393699909815.Spec : Prop :=
  ∀ n, P12951559393699909815.a n = A211521 n

end A211521

/-! ## A211521.P13415692383637430294

`floor((∑[lcm(n+1, n-1)]+n)/(n+2))`
-/

namespace A211521.P13415692383637430294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A211521.P13415692383637430294

namespace A211521

/-- `floor((∑[lcm(n+1, n-1)]+n)/(n+2))` -/
def P13415692383637430294.Spec : Prop :=
  ∀ n, P13415692383637430294.a n = A211521 n

end A211521

/-! ## A211521.P5829733838496416615

`a(n-2)-gcd(3-n, a(n-1))+n` with `a(0)=0, a(1)=0`
-/

namespace A211521.P5829733838496416615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - (Int.gcd (3 - (n : ℤ)) (a (n - 1)) : ℤ) + (n : ℤ)

end

end A211521.P5829733838496416615

namespace A211521

/-- `a(n-2)-gcd(3-n, a(n-1))+n` -/
def P5829733838496416615.Spec : Prop :=
  ∀ n, P5829733838496416615.a n = A211521 n

end A211521

/-! ## A211521.P13091021434874247085

`round(n*A004526(n)/2)`
-/

namespace A211521.P13091021434874247085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) * A004526 n : ℚ) / 2)

end

end A211521.P13091021434874247085

namespace A211521

/-- `round(n*A004526(n)/2)` -/
def P13091021434874247085.Spec : Prop :=
  ∀ n, P13091021434874247085.a n = A211521 n

end A211521

/-! ## A211521.P6270105585431438532

`A082643(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A211521.P6270105585431438532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A082643 (n - 1) - a (n - 1)

end

end A211521.P6270105585431438532

namespace A211521

/-- `A082643(n-1)-a(n-1)` -/
def P6270105585431438532.Spec : Prop :=
  ∀ n, P6270105585431438532.a n = A211521 n

end A211521

/-! ## A211521.P13574303537677257204

`floor(((n-1)*A109613(n)+2)/4)`
-/

namespace A211521.P13574303537677257204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 1) * A109613 n + 2 : ℚ) / 4⌋

end

end A211521.P13574303537677257204

namespace A211521

/-- `floor(((n-1)*A109613(n)+2)/4)` -/
def P13574303537677257204.Spec : Prop :=
  ∀ n, P13574303537677257204.a n = A211521 n

end A211521

/-! ## A211521.P14522895840604155327

`floor((n*A028242(or(1, n))+1)/2)`
-/

namespace A211521.P14522895840604155327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * A028242 (Nat.lor 1 n) + 1 : ℚ) / 2⌋

end

end A211521.P14522895840604155327

namespace A211521

/-- `floor((n*A028242(or(1, n))+1)/2)` -/
def P14522895840604155327.Spec : Prop :=
  ∀ n, P14522895840604155327.a n = A211521 n

end A211521

/-! ## A211521.P17653495144704785351

`round((n+3-(A049636(n)-n))*n/2)`
-/

namespace A211521.P17653495144704785351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3 : ℤ) - (A049636 n - (n : ℤ)) : ℚ) * ((n : ℚ) / 2))

end

end A211521.P17653495144704785351

namespace A211521

/-- `round((n+3-(A049636(n)-n))*n/2)` -/
def P17653495144704785351.Spec : Prop :=
  ∀ n, P17653495144704785351.a n = A211521 n

end A211521

/-! ## A211521.P11512875725403027540

`A211541(n)+A069905(n)`
-/

namespace A211521.P11512875725403027540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211541 n + A069905 n

end

end A211521.P11512875725403027540

namespace A211521

/-- `A211541(n)+A069905(n)` -/
def P11512875725403027540.Spec : Prop :=
  ∀ n, P11512875725403027540.a n = A211521 n

end A211521

/-! ## A211521.P5019287324470608111

`A104563(n)-A302406(n)`
-/

namespace A211521.P5019287324470608111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n - A302406 n

end

end A211521.P5019287324470608111

namespace A211521

/-- `A104563(n)-A302406(n)` -/
def P5019287324470608111.Spec : Prop :=
  ∀ n, P5019287324470608111.a n = A211521 n

end A211521

/-! ## A211521.P4742397630099859785

`∑[A004526(n)²]-A011894(n)`
-/

namespace A211521.P4742397630099859785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011894 n

end

end A211521.P4742397630099859785

namespace A211521

/-- `∑[A004526(n)²]-A011894(n)` -/
def P4742397630099859785.Spec : Prop :=
  ∀ n, P4742397630099859785.a n = A211521 n

end A211521

/-! ## A211521.P15147238376035946966

`A198442(n+1)-A226107(n+1)`
-/

namespace A211521.P15147238376035946966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (n + 1) - A226107 (n + 1)

end

end A211521.P15147238376035946966

namespace A211521

/-- `A198442(n+1)-A226107(n+1)` -/
def P15147238376035946966.Spec : Prop :=
  ∀ n, P15147238376035946966.a n = A211521 n

end A211521

/-! ## A211521.P8518957610696245138

`A002620(n)-A004526(A057979(n))`
-/

namespace A211521.P8518957610696245138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A004526 (A057979 n).toNat

end

end A211521.P8518957610696245138

namespace A211521

/-- `A002620(n)-A004526(A057979(n))` -/
def P8518957610696245138.Spec : Prop :=
  ∀ n, P8518957610696245138.a n = A211521 n

end A211521

/-! ## A211521.P14246987011827536894

`A004526(A152271(n))+A004526(n)²`
-/

namespace A211521.P14246987011827536894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152271 n).toNat + A004526 n ^ 2

end

end A211521.P14246987011827536894

namespace A211521

/-- `A004526(A152271(n))+A004526(n)²` -/
def P14246987011827536894.Spec : Prop :=
  ∀ n, P14246987011827536894.a n = A211521 n

end A211521

/-! ## A211521.P17085594440398636548

`∑[A004526(n)]-A004526(A057979(n))`
-/

namespace A211521.P17085594440398636548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 (A057979 n).toNat

end

end A211521.P17085594440398636548

namespace A211521

/-- `∑[A004526(n)]-A004526(A057979(n))` -/
def P17085594440398636548.Spec : Prop :=
  ∀ n, P17085594440398636548.a n = A211521 n

end A211521

/-! ## A211521.P9265296334162261969

`A002620(n)-A002265(n*A000035(n))`
-/

namespace A211521.P9265296334162261969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A002265 ((n : ℤ) * A000035 n).toNat

end

end A211521.P9265296334162261969

namespace A211521

/-- `A002620(n)-A002265(n*A000035(n))` -/
def P9265296334162261969.Spec : Prop :=
  ∀ n, P9265296334162261969.a n = A211521 n

end A211521

/-! ## A211521.P6594888941122243133

`A004526(∑[A001057(n)])+A004526(n)²`
-/

namespace A211521.P6594888941122243133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A004526 n ^ 2

end

end A211521.P6594888941122243133

namespace A211521

/-- `A004526(∑[A001057(n)])+A004526(n)²` -/
def P6594888941122243133.Spec : Prop :=
  ∀ n, P6594888941122243133.a n = A211521 n

end A211521

/-! ## A211521.P11025580903873279945

`∑[A026741(n)-A002265(n)]-A026741(n)`
-/

namespace A211521.P11025580903873279945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026741 n

end

end A211521.P11025580903873279945

namespace A211521

/-- `∑[A026741(n)-A002265(n)]-A026741(n)` -/
def P11025580903873279945.Spec : Prop :=
  ∀ n, P11025580903873279945.a n = A211521 n

end A211521

/-!
# A211522: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w + 5y = 2x.

The programs for A211522, the canonical program `A211522.P11132737349790925254` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211522 has offset 0).

The definition of A211522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211522.P12411914960919401341

`∑[ceil(3*n/2)%comp[6*n]]`
-/

namespace A211522.P12411914960919401341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈3 * ((n : ℚ) / 2)⌉ (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211522.P12411914960919401341

namespace A211522

/-- `∑[ceil(3*n/2)%comp[6*n]]` -/
def P12411914960919401341.Spec : Prop :=
  ∀ n, P12411914960919401341.a n = A211522 n

end A211522

/-! ## A211522.P11132737349790925254

`floor(∑[a(n-2)+3]/5)` with `a(0)=2, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211522

/-- `floor(∑[a(n-2)+3]/5)` -/
def P11132737349790925254.Spec : Prop :=
  ∀ n, P11132737349790925254.a n = A211522 n

theorem P11132737349790925254.correct : P11132737349790925254.Spec := by
  intro n
  simp only [A211522]

end A211522

/-! ## A211522.P4607572752664309027

`∑[A286716(abs(1-n))]`
-/

namespace A211522.P4607572752664309027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286716 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211522.P4607572752664309027

namespace A211522

/-- `∑[A286716(abs(1-n))]` -/
def P4607572752664309027.Spec : Prop :=
  ∀ n, P4607572752664309027.a n = A211522 n

end A211522

/-! ## A211522.P15011332339939772792

`∑[n-A110532(n)]-n`
-/

namespace A211522.P15011332339939772792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A110532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A211522.P15011332339939772792

namespace A211522

/-- `∑[n-A110532(n)]-n` -/
def P15011332339939772792.Spec : Prop :=
  ∀ n, P15011332339939772792.a n = A211522 n

end A211522

/-! ## A211522.P7044954570886232145

`A286716(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A211522.P7044954570886232145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A286716 (n - 1) + a (n - 1)

end

end A211522.P7044954570886232145

namespace A211522

/-- `A286716(n-1)+a(n-1)` -/
def P7044954570886232145.Spec : Prop :=
  ∀ n, P7044954570886232145.a n = A211522 n

end A211522

/-! ## A211522.P4855696743995265751

`∑[floor(A065033(n)-(n+1)/5)]`
-/

namespace A211522.P4855696743995265751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065033 n : ℚ) - (n + 1 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211522.P4855696743995265751

namespace A211522

/-- `∑[floor(A065033(n)-(n+1)/5)]` -/
def P4855696743995265751.Spec : Prop :=
  ∀ n, P4855696743995265751.a n = A211522 n

end A211522

/-! ## A211522.P3046630789002673183

`A211543(n)+A069905(n)`
-/

namespace A211522.P3046630789002673183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211543 n + A069905 n

end

end A211522.P3046630789002673183

namespace A211522

/-- `A211543(n)+A069905(n)` -/
def P3046630789002673183.Spec : Prop :=
  ∀ n, P3046630789002673183.a n = A211522 n

end A211522

/-! ## A211522.P6514542095425086325

`∑[A286716(n)]-A286716(n)`
-/

namespace A211522.P6514542095425086325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A286716 n

end

end A211522.P6514542095425086325

namespace A211522

/-- `∑[A286716(n)]-A286716(n)` -/
def P6514542095425086325.Spec : Prop :=
  ∀ n, P6514542095425086325.a n = A211522 n

end A211522

/-! ## A211522.P11980839506741770353

`∑[A065033(n)-A065033(A130497(n))]`
-/

namespace A211522.P11980839506741770353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A065033 (A130497 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211522.P11980839506741770353

namespace A211522

/-- `∑[A065033(n)-A065033(A130497(n))]` -/
def P11980839506741770353.Spec : Prop :=
  ∀ n, P11980839506741770353.a n = A211522 n

end A211522

/-! ## A211522.P4200526300284917991

`A211521(n)+A211543(n)-A211541(n)`
-/

namespace A211522.P4200526300284917991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211521 n + (A211543 n - A211541 n)

end

end A211522.P4200526300284917991

namespace A211522

/-- `A211521(n)+A211543(n)-A211541(n)` -/
def P4200526300284917991.Spec : Prop :=
  ∀ n, P4200526300284917991.a n = A211522 n

end A211522

/-! ## A211522.P7702438269835009184

`∑[A004526(n)-A002266(n)]-A004526(n)`
-/

namespace A211522.P7702438269835009184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A002266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 n

end

end A211522.P7702438269835009184

namespace A211522

/-- `∑[A004526(n)-A002266(n)]-A004526(n)` -/
def P7702438269835009184.Spec : Prop :=
  ∀ n, P7702438269835009184.a n = A211522 n

end A211522

/-! ## A211522.P17911321730423221517

`A002266(n+1)+A077043(n)-A332410(n)`
-/

namespace A211522.P17911321730423221517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (n + 1) + (A077043 n - A332410 n)

end

end A211522.P17911321730423221517

namespace A211522

/-- `A002266(n+1)+A077043(n)-A332410(n)` -/
def P17911321730423221517.Spec : Prop :=
  ∀ n, P17911321730423221517.a n = A211522 n

end A211522

/-! ## A211522.P14056102340457120003

`∑[A002266(A267182(n)+n)]`
-/

namespace A211522.P14056102340457120003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A267182 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211522.P14056102340457120003

namespace A211522

/-- `∑[A002266(A267182(n)+n)]` -/
def P14056102340457120003.Spec : Prop :=
  ∀ n, P14056102340457120003.a n = A211522 n

end A211522

/-! ## A211522.P13026033695437452240

`∑[A002266(A267182(3*n))]`
-/

namespace A211522.P13026033695437452240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A267182 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211522.P13026033695437452240

namespace A211522

/-- `∑[A002266(A267182(3*n))]` -/
def P13026033695437452240.Spec : Prop :=
  ∀ n, P13026033695437452240.a n = A211522 n

end A211522

/-! ## A211522.P9295181236476403085

`∑[A008616(3*(n+1))]-n`
-/

namespace A211522.P9295181236476403085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A211522.P9295181236476403085

namespace A211522

/-- `∑[A008616(3*(n+1))]-n` -/
def P9295181236476403085.Spec : Prop :=
  ∀ n, P9295181236476403085.a n = A211522 n

end A211522

/-! ## A211522.P7015165134317949159

`A025795(3*(n+1))-(n+1)`
-/

namespace A211522.P7015165134317949159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (3 * (n + 1)) - (n + 1 : ℤ)

end

end A211522.P7015165134317949159

namespace A211522

/-- `A025795(3*(n+1))-(n+1)` -/
def P7015165134317949159.Spec : Prop :=
  ∀ n, P7015165134317949159.a n = A211522 n

end A211522

/-! ## A211522.P4064718609026112478

`A008682(A091361(n+1))`
-/

namespace A211522.P4064718609026112478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (A091361 (n + 1)).toNat

end

end A211522.P4064718609026112478

namespace A211522

/-- `A008682(A091361(n+1))` -/
def P4064718609026112478.Spec : Prop :=
  ∀ n, P4064718609026112478.a n = A211522 n

end A211522

/-! ## A211522.P8230217124462334649

`A002266(A077043(n)+1)-A002266(n)`
-/

namespace A211522.P8230217124462334649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A077043 n + 1).toNat - A002266 n

end

end A211522.P8230217124462334649

namespace A211522

/-- `A002266(A077043(n)+1)-A002266(n)` -/
def P8230217124462334649.Spec : Prop :=
  ∀ n, P8230217124462334649.a n = A211522 n

end A211522

/-!
# A211523: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w+2x=5y.

The programs for A211523, the canonical program `A211523.P11786509047202782690` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211523 has offset 0).

The definition of A211523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211523.P11786509047202782690

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=4, a(5)=5, a(6)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211523

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P11786509047202782690.Spec : Prop :=
  ∀ n, P11786509047202782690.a n = A211523 n

theorem P11786509047202782690.correct : P11786509047202782690.Spec := by
  intro n
  simp only [A211523]

end A211523

/-! ## A211523.P7069575501723658310

`n²-∑[comp[or(2, or(4, n)-1)]]`
-/

namespace A211523.P7069575501723658310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((Nat.lor 4 n : ℤ) - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211523.P7069575501723658310

namespace A211523

/-- `n²-∑[comp[or(2, or(4, n)-1)]]` -/
def P7069575501723658310.Spec : Prop :=
  ∀ n, P7069575501723658310.a n = A211523 n

end A211523

/-! ## A211523.P774012766421234575

`∑[a(n-5)+2]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=1`
-/

namespace A211523.P774012766421234575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 2, 1] fun n f1 =>
  f1 (n - 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211523.P774012766421234575

namespace A211523

/-- `∑[a(n-5)+2]` -/
def P774012766421234575.Spec : Prop :=
  ∀ n, (P774012766421234575.a n : ℤ) = A211523 n

end A211523

/-! ## A211523.P1455492969005373420

`n²-∑[A047614(n+1)]`
-/

namespace A211523.P1455492969005373420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211523.P1455492969005373420

namespace A211523

/-- `n²-∑[A047614(n+1)]` -/
def P1455492969005373420.Spec : Prop :=
  ∀ n, P1455492969005373420.a n = A211523 n

end A211523

/-! ## A211523.P5871597699105050360

`∑[n-A047518(n+1)%(n+1)]`
-/

namespace A211523.P5871597699105050360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (A047518 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211523.P5871597699105050360

namespace A211523

/-- `∑[n-A047518(n+1)%(n+1)]` -/
def P5871597699105050360.Spec : Prop :=
  ∀ n, P5871597699105050360.a n = A211523 n

end A211523

/-! ## A211523.P8811259048941874081

`A011858(n+1)-A002266(n)`
-/

namespace A211523.P8811259048941874081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) - A002266 n

end

end A211523.P8811259048941874081

namespace A211523

/-- `A011858(n+1)-A002266(n)` -/
def P8811259048941874081.Spec : Prop :=
  ∀ n, P8811259048941874081.a n = A211523 n

end A211523

/-! ## A211523.P13157659395704676508

`A184013(n+1)-A047309(n+1)`
-/

namespace A211523.P13157659395704676508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184013 (n + 1) - A047309 (n + 1)

end

end A211523.P13157659395704676508

namespace A211523

/-- `A184013(n+1)-A047309(n+1)` -/
def P13157659395704676508.Spec : Prop :=
  ∀ n, P13157659395704676508.a n = A211523 n

end A211523

/-! ## A211523.P10450588355685635873

`A011858(n+1)-A002264(A057355(n))`
-/

namespace A211523.P10450588355685635873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) - A002264 (A057355 n).toNat

end

end A211523.P10450588355685635873

namespace A211523

/-- `A011858(n+1)-A002264(A057355(n))` -/
def P10450588355685635873.Spec : Prop :=
  ∀ n, P10450588355685635873.a n = A211523 n

end A211523

/-! ## A211523.P17528734945291590505

`A118015(n)+A011558(n-A011558(n))`
-/

namespace A211523.P17528734945291590505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 n + A011558 ((n : ℤ) - A011558 n).toNat

end

end A211523.P17528734945291590505

namespace A211523

/-- `A118015(n)+A011558(n-A011558(n))` -/
def P17528734945291590505.Spec : Prop :=
  ∀ n, P17528734945291590505.a n = A211523 n

end A211523

/-! ## A211523.P1061011296327586036

`A033437(n)-A002266(n)-A011858(n)`
-/

namespace A211523.P1061011296327586036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 n - A002266 n - A011858 n

end

end A211523.P1061011296327586036

namespace A211523

/-- `A033437(n)-A002266(n)-A011858(n)` -/
def P1061011296327586036.Spec : Prop :=
  ∀ n, P1061011296327586036.a n = A211523 n

end A211523

/-! ## A211523.P18156533806419895453

`A008738(n)+and(1, A008738(A170825(n+1)))`
-/

namespace A211523.P18156533806419895453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 n + Int.land 1 (A008738 (A170825 (n + 1)).toNat)

end

end A211523.P18156533806419895453

namespace A211523

/-- `A008738(n)+and(1, A008738(A170825(n+1)))` -/
def P18156533806419895453.Spec : Prop :=
  ∀ n, P18156533806419895453.a n = A211523 n

end A211523

/-! ## A211523.P16716739196913365416

`Δ[floor((∑[(1-n)²+1]-2)/5)]`
-/

namespace A211523.P16716739196913365416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j - 2 : ℤ) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211523.P16716739196913365416

namespace A211523

/-- `Δ[floor((∑[(1-n)²+1]-2)/5)]` -/
def P16716739196913365416.Spec : Prop :=
  ∀ n, P16716739196913365416.a n = A211523 n

end A211523

/-! ## A211523.P14278564681229145531

`∑[A106250(n+1)]-n`
-/

namespace A211523.P14278564681229145531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A211523.P14278564681229145531

namespace A211523

/-- `∑[A106250(n+1)]-n` -/
def P14278564681229145531.Spec : Prop :=
  ∀ n, P14278564681229145531.a n = A211523 n

end A211523

/-! ## A211523.P15746735496816095818

`A118015(n+1)-A057354(n)`
-/

namespace A211523.P15746735496816095818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (n + 1) - A057354 n

end

end A211523.P15746735496816095818

namespace A211523

/-- `A118015(n+1)-A057354(n)` -/
def P15746735496816095818.Spec : Prop :=
  ∀ n, P15746735496816095818.a n = A211523 n

end A211523

/-! ## A211523.P14835002483446947200

`∑[A057354(n+1)]-A002266(n)`
-/

namespace A211523.P14835002483446947200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002266 n

end

end A211523.P14835002483446947200

namespace A211523

/-- `∑[A057354(n+1)]-A002266(n)` -/
def P14835002483446947200.Spec : Prop :=
  ∀ n, P14835002483446947200.a n = A211523 n

end A211523

/-! ## A211523.P471860187980440216

`∑[A057354(n+1)]-A002264(A057355(n))`
-/

namespace A211523.P471860187980440216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002264 (A057355 n).toNat

end

end A211523.P471860187980440216

namespace A211523

/-- `∑[A057354(n+1)]-A002264(A057355(n))` -/
def P471860187980440216.Spec : Prop :=
  ∀ n, P471860187980440216.a n = A211523 n

end A211523

/-! ## A211523.P11519417572850131307

`A002266(n+1)+A008738(n)-A002266(n)`
-/

namespace A211523.P11519417572850131307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (n + 1) + (A008738 n - A002266 n)

end

end A211523.P11519417572850131307

namespace A211523

/-- `A002266(n+1)+A008738(n)-A002266(n)` -/
def P11519417572850131307.Spec : Prop :=
  ∀ n, P11519417572850131307.a n = A211523 n

end A211523

/-! ## A211523.P307813009592487297

`(n+2)²-∑[A047432(n+3)]`
-/

namespace A211523.P307813009592487297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211523.P307813009592487297

namespace A211523

/-- `(n+2)²-∑[A047432(n+3)]` -/
def P307813009592487297.Spec : Prop :=
  ∀ n, P307813009592487297.a n = A211523 n

end A211523

/-! ## A211523.P7126063321846336727

`A118015(n+1)-A002266(2*n)`
-/

namespace A211523.P7126063321846336727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (n + 1) - A002266 (2 * n)

end

end A211523.P7126063321846336727

namespace A211523

/-- `A118015(n+1)-A002266(2*n)` -/
def P7126063321846336727.Spec : Prop :=
  ∀ n, P7126063321846336727.a n = A211523 n

end A211523

/-! ## A211523.P7424978862218769769

`A011858(n+1)-A057355(2*n)+n`
-/

namespace A211523.P7424978862218769769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) - A057355 (2 * n) + (n : ℤ)

end

end A211523.P7424978862218769769

namespace A211523

/-- `A011858(n+1)-A057355(2*n)+n` -/
def P7424978862218769769.Spec : Prop :=
  ∀ n, P7424978862218769769.a n = A211523 n

end A211523

/-!
# A211524: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w=3x+5y.

The programs for A211524, the canonical program `A211524.P2522003869748871337` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211524 has offset 0).

The definition of A211524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211524.P2522003869748871337

`ceil((C(n, 2)/3-1-n)/5)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211524

/-- `ceil((C(n, 2)/3-1-n)/5)` -/
def P2522003869748871337.Spec : Prop :=
  ∀ n, P2522003869748871337.a n = A211524 n

theorem P2522003869748871337.correct : P2522003869748871337.Spec := by
  intro n
  simp only [A211524]

end A211524

/-! ## A211524.P818050563243833204

`ceil((∑[A008620(n)-1]-n)/5)`
-/

namespace A211524.P818050563243833204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 5⌉

end

end A211524.P818050563243833204

namespace A211524

/-- `ceil((∑[A008620(n)-1]-n)/5)` -/
def P818050563243833204.Spec : Prop :=
  ∀ n, P818050563243833204.a n = A211524 n

end A211524

/-! ## A211524.P15386694743659996688

`A108579(n+1)-A140402(n)`
-/

namespace A211524.P15386694743659996688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (n + 1) - A140402 n

end

end A211524.P15386694743659996688

namespace A211524

/-- `A108579(n+1)-A140402(n)` -/
def P15386694743659996688.Spec : Prop :=
  ∀ n, P15386694743659996688.a n = A211524 n

end A211524

/-! ## A211524.P15593161932091445904

`∑[A004396(n)-A057355(n)]-A004396(n)`
-/

namespace A211524.P15593161932091445904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n - A057355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004396 n

end

end A211524.P15593161932091445904

namespace A211524

/-- `∑[A004396(n)-A057355(n)]-A004396(n)` -/
def P15593161932091445904.Spec : Prop :=
  ∀ n, P15593161932091445904.a n = A211524 n

end A211524

/-! ## A211524.P7722057169984433026

`∑[A008676(n+7)]-n`
-/

namespace A211524.P7722057169984433026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A211524.P7722057169984433026

namespace A211524

/-- `∑[A008676(n+7)]-n` -/
def P7722057169984433026.Spec : Prop :=
  ∀ n, P7722057169984433026.a n = A211524 n

end A211524

/-! ## A211524.P11340590643771645775

`A008613(abs(A060747(n)))`
-/

namespace A211524.P11340590643771645775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 |A060747 n|.toNat

end

end A211524.P11340590643771645775

namespace A211524

/-- `A008613(abs(A060747(n)))` -/
def P11340590643771645775.Spec : Prop :=
  ∀ n, P11340590643771645775.a n = A211524 n

end A211524

/-! ## A211524.P12654918635932753526

`A008613(A356480(n+1))`
-/

namespace A211524.P12654918635932753526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (A356480 (n + 1)).toNat

end

end A211524.P12654918635932753526

namespace A211524

/-- `A008613(A356480(n+1))` -/
def P12654918635932753526.Spec : Prop :=
  ∀ n, P12654918635932753526.a n = A211524 n

end A211524

/-! ## A211524.P17812505912220905448

`A008613(or(1, A004273(n)))`
-/

namespace A211524.P17812505912220905448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (Int.lor 1 (A004273 n)).toNat

end

end A211524.P17812505912220905448

namespace A211524

/-- `A008613(or(1, A004273(n)))` -/
def P17812505912220905448.Spec : Prop :=
  ∀ n, P17812505912220905448.a n = A211524 n

end A211524

/-! ## A211524.P3631221303052395583

`A008613(or(1, A004275(n)))`
-/

namespace A211524.P3631221303052395583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (Int.lor 1 (A004275 n)).toNat

end

end A211524.P3631221303052395583

namespace A211524

/-- `A008613(or(1, A004275(n)))` -/
def P3631221303052395583.Spec : Prop :=
  ∀ n, P3631221303052395583.a n = A211524 n

end A211524

/-! ## A211524.P15061248697888780026

`∑[A008651(record[A029579(n)])]`
-/

namespace A211524.P15061248697888780026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211524.P15061248697888780026

namespace A211524

/-- `∑[A008651(record[A029579(n)])]` -/
def P15061248697888780026.Spec : Prop :=
  ∀ n, P15061248697888780026.a n = A211524 n

end A211524

/-! ## A211524.P11679607769480581122

`∑[A008651(record[A141310(n)])]`
-/

namespace A211524.P11679607769480581122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211524.P11679607769480581122

namespace A211524

/-- `∑[A008651(record[A141310(n)])]` -/
def P11679607769480581122.Spec : Prop :=
  ∀ n, P11679607769480581122.a n = A211524 n

end A211524

/-! ## A211524.P10602015118597746450

`∑[A008651(A004280(n+1))]`
-/

namespace A211524.P10602015118597746450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211524.P10602015118597746450

namespace A211524

/-- `∑[A008651(A004280(n+1))]` -/
def P10602015118597746450.Spec : Prop :=
  ∀ n, P10602015118597746450.a n = A211524 n

end A211524

/-! ## A211524.P536860463560077289

`∑[A008651(or(1, A004273(n)))]`
-/

namespace A211524.P536860463560077289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.lor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211524.P536860463560077289

namespace A211524

/-- `∑[A008651(or(1, A004273(n)))]` -/
def P536860463560077289.Spec : Prop :=
  ∀ n, P536860463560077289.a n = A211524 n

end A211524

/-! ## A211524.P7951852428992675888

`A008613(or(1, A004280(n+1)))`
-/

namespace A211524.P7951852428992675888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (Int.lor 1 (A004280 (n + 1))).toNat

end

end A211524.P7951852428992675888

namespace A211524

/-- `A008613(or(1, A004280(n+1)))` -/
def P7951852428992675888.Spec : Prop :=
  ∀ n, P7951852428992675888.a n = A211524 n

end A211524

/-! ## A211524.P12645473648188367359

`∑[A002264(A004273(n))-A057355(n)]`
-/

namespace A211524.P12645473648188367359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004273 n).toNat - A057355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211524.P12645473648188367359

namespace A211524

/-- `∑[A002264(A004273(n))-A057355(n)]` -/
def P12645473648188367359.Spec : Prop :=
  ∀ n, P12645473648188367359.a n = A211524 n

end A211524

/-! ## A211524.P8391195394567522763

`A008672(n+2)-A008620(2*n+1)`
-/

namespace A211524.P8391195394567522763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 2) - A008620 (2 * n + 1)

end

end A211524.P8391195394567522763

namespace A211524

/-- `A008672(n+2)-A008620(2*n+1)` -/
def P8391195394567522763.Spec : Prop :=
  ∀ n, P8391195394567522763.a n = A211524 n

end A211524

/-! ## A211524.P892698854505766555

`∑[A008651(2*n+1)]-A008651(2*n+1)`
-/

namespace A211524.P892698854505766555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008651 (2 * n + 1)

end

end A211524.P892698854505766555

namespace A211524

/-- `∑[A008651(2*n+1)]-A008651(2*n+1)` -/
def P892698854505766555.Spec : Prop :=
  ∀ n, P892698854505766555.a n = A211524 n

end A211524

/-! ## A211524.P17387839450980949295

`Δ[A008667(2*n)-A002620(n)]`
-/

namespace A211524.P17387839450980949295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (2 * n) - A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211524.P17387839450980949295

namespace A211524

/-- `Δ[A008667(2*n)-A002620(n)]` -/
def P17387839450980949295.Spec : Prop :=
  ∀ n, P17387839450980949295.a n = A211524 n

end A211524

/-!
# A211525: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two or four distinct values for every i,j,k<=n.

The programs for A211525, the canonical program `A211525.P1490740995944717665` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211525 has offset 1).

The definition of A211525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211525.P18252905196461837894

`A290075(n+6)`
-/

namespace A211525.P18252905196461837894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (n + 6)

end

end A211525.P18252905196461837894

namespace A211525

/-- `A290075(n+6)` -/
def P18252905196461837894.Spec : Prop :=
  ∀ n, P18252905196461837894.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P1490740995944717665

`A183978(n+3)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211525

/-- `A183978(n+3)-1` -/
def P1490740995944717665.Spec : Prop :=
  ∀ n, P1490740995944717665.a n = A211525 (n + 1)

theorem P1490740995944717665.correct : P1490740995944717665.Spec := by
  intro n
  simp only [A211525, Nat.add_sub_cancel]

end A211525

/-! ## A211525.P8905256310920951880

`A183979(n+3)-3`
-/

namespace A211525.P8905256310920951880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 3) - 3

end

end A211525.P8905256310920951880

namespace A211525

/-- `A183979(n+3)-3` -/
def P8905256310920951880.Spec : Prop :=
  ∀ n, P8905256310920951880.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P11098921001241273351

`A184041(n+1)-7`
-/

namespace A211525.P11098921001241273351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184041 (n + 1) - 7

end

end A211525.P11098921001241273351

namespace A211525

/-- `A184041(n+1)-7` -/
def P11098921001241273351.Spec : Prop :=
  ∀ n, P11098921001241273351.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P1968937701370363729

`A183980(n+3)-6`
-/

namespace A211525.P1968937701370363729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 3) - 6

end

end A211525.P1968937701370363729

namespace A211525

/-- `A183980(n+3)-6` -/
def P1968937701370363729.Spec : Prop :=
  ∀ n, P1968937701370363729.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P2732002785816302986

`A184043(n+1)-37`
-/

namespace A211525.P2732002785816302986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184043 (n + 1) - 37

end

end A211525.P2732002785816302986

namespace A211525

/-- `A184043(n+1)-37` -/
def P2732002785816302986.Spec : Prop :=
  ∀ n, P2732002785816302986.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P3996106568978989951

`A184044(n+1)-73`
-/

namespace A211525.P3996106568978989951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184044 (n + 1) - 73

end

end A211525.P3996106568978989951

namespace A211525

/-- `A184044(n+1)-73` -/
def P3996106568978989951.Spec : Prop :=
  ∀ n, P3996106568978989951.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P17767952888274013531

`∑[A005418(n+3)]+5`
-/

namespace A211525.P17767952888274013531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A211525.P17767952888274013531

namespace A211525

/-- `∑[A005418(n+3)]+5` -/
def P17767952888274013531.Spec : Prop :=
  ∀ n, P17767952888274013531.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P10755447635451819892

`2*(A159230(n+2)+2)`
-/

namespace A211525.P10755447635451819892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A159230 (n + 2) + 2)

end

end A211525.P10755447635451819892

namespace A211525

/-- `2*(A159230(n+2)+2)` -/
def P10755447635451819892.Spec : Prop :=
  ∀ n, P10755447635451819892.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P10351583962821349660

`2*(A257418(n+2)-1)`
-/

namespace A211525.P10351583962821349660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A257418 (n + 2) - 1)

end

end A211525.P10351583962821349660

namespace A211525

/-- `2*(A257418(n+2)-1)` -/
def P10351583962821349660.Spec : Prop :=
  ∀ n, P10351583962821349660.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P3067203071024137711

`2*(A342761(n+1)-3)`
-/

namespace A211525.P3067203071024137711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A342761 (n + 1) - 3)

end

end A211525.P3067203071024137711

namespace A211525

/-- `2*(A342761(n+1)-3)` -/
def P3067203071024137711.Spec : Prop :=
  ∀ n, P3067203071024137711.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P17435987327156749632

`A090989(n+1)+2^(n+2)`
-/

namespace A211525.P17435987327156749632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 1) + (2 ^ (n + 2) : ℤ)

end

end A211525.P17435987327156749632

namespace A211525

/-- `A090989(n+1)+2^(n+2)` -/
def P17435987327156749632.Spec : Prop :=
  ∀ n, P17435987327156749632.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P11932124672409358716

`A063759(n+2)+2^(n+2)`
-/

namespace A211525.P11932124672409358716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A211525.P11932124672409358716

namespace A211525

/-- `A063759(n+2)+2^(n+2)` -/
def P11932124672409358716.Spec : Prop :=
  ∀ n, P11932124672409358716.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P6709515725132914287

`A163978(n+2)+2^(n+2)`
-/

namespace A211525.P6709515725132914287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A211525.P6709515725132914287

namespace A211525

/-- `A163978(n+2)+2^(n+2)` -/
def P6709515725132914287.Spec : Prop :=
  ∀ n, P6709515725132914287.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P9633418246284702026

`A164090(n+3)+2^(n+2)`
-/

namespace A211525.P9633418246284702026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 3) + (2 ^ (n + 2) : ℤ)

end

end A211525.P9633418246284702026

namespace A211525

/-- `A164090(n+3)+2^(n+2)` -/
def P9633418246284702026.Spec : Prop :=
  ∀ n, P9633418246284702026.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P192211489096858842

`A259215(n+1)-A295731(n)`
-/

namespace A211525.P192211489096858842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259215 (n + 1) - A295731 n

end

end A211525.P192211489096858842

namespace A211525

/-- `A259215(n+1)-A295731(n)` -/
def P192211489096858842.Spec : Prop :=
  ∀ n, P192211489096858842.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P10422723402267230531

`A151821(n+2)+A090989(n+1)`
-/

namespace A211525.P10422723402267230531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 2) + A090989 (n + 1)

end

end A211525.P10422723402267230531

namespace A211525

/-- `A151821(n+2)+A090989(n+1)` -/
def P10422723402267230531.Spec : Prop :=
  ∀ n, P10422723402267230531.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P3127748680043459033

`A052955(n+2)+A000051(n+2)`
-/

namespace A211525.P3127748680043459033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (n + 2) + A000051 (n + 2)

end

end A211525.P3127748680043459033

namespace A211525

/-- `A052955(n+2)+A000051(n+2)` -/
def P3127748680043459033.Spec : Prop :=
  ∀ n, P3127748680043459033.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P15399460304193692111

`A151821(n+2)+A063759(n+2)`
-/

namespace A211525.P15399460304193692111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 2) + A063759 (n + 2)

end

end A211525.P15399460304193692111

namespace A211525

/-- `A151821(n+2)+A063759(n+2)` -/
def P15399460304193692111.Spec : Prop :=
  ∀ n, P15399460304193692111.a n = A211525 (n + 1)

end A211525

/-! ## A211525.P16460791081845357773

`A186949(n+2)+A063759(n+2)`
-/

namespace A211525.P16460791081845357773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 (n + 2) + A063759 (n + 2)

end

end A211525.P16460791081845357773

namespace A211525

/-- `A186949(n+2)+A063759(n+2)` -/
def P16460791081845357773.Spec : Prop :=
  ∀ n, P16460791081845357773.a n = A211525 (n + 1)

end A211525

/-!
# A211526: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four or five distinct values for every i,j,k<=n.

The programs for A211526, the canonical program `A211526.P11396501206578348479` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211526 has offset 1).

The definition of A211526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211526.P11396501206578348479

`A095121(n+1)+A061776(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211526

/-- `A095121(n+1)+A061776(n+2)` -/
def P11396501206578348479.Spec : Prop :=
  ∀ n, P11396501206578348479.a n = A211526 (n + 1)

theorem P11396501206578348479.correct : P11396501206578348479.Spec := by
  intro n
  simp only [A211526, Nat.add_sub_cancel]

end A211526

/-! ## A211526.P9473528686883126864

`A354789(n+1)+A000225(n+2)`
-/

namespace A211526.P9473528686883126864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354789 (n + 1) + A000225 (n + 2)

end

end A211526.P9473528686883126864

namespace A211526

/-- `A354789(n+1)+A000225(n+2)` -/
def P9473528686883126864.Spec : Prop :=
  ∀ n, P9473528686883126864.a n = A211526 (n + 1)

end A211526

/-! ## A211526.P7092257750156674737

`A061776(n+2)+A000918(n+2)`
-/

namespace A211526.P7092257750156674737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061776 (n + 2) + A000918 (n + 2)

end

end A211526.P7092257750156674737

namespace A211526

/-- `A061776(n+2)+A000918(n+2)` -/
def P7092257750156674737.Spec : Prop :=
  ∀ n, P7092257750156674737.a n = A211526 (n + 1)

end A211526

/-! ## A211526.P10035372316453246441

`∑[A000079(n+1)]+6*A052955(n)`
-/

namespace A211526.P10035372316453246441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * A052955 n

end

end A211526.P10035372316453246441

namespace A211526

/-- `∑[A000079(n+1)]+6*A052955(n)` -/
def P10035372316453246441.Spec : Prop :=
  ∀ n, P10035372316453246441.a n = A211526 (n + 1)

end A211526

/-! ## A211526.P7590337559568753881

`A061776(n+2)+A027383(2*n+1)`
-/

namespace A211526.P7590337559568753881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061776 (n + 2) + A027383 (2 * n + 1)

end

end A211526.P7590337559568753881

namespace A211526

/-- `A061776(n+2)+A027383(2*n+1)` -/
def P7590337559568753881.Spec : Prop :=
  ∀ n, P7590337559568753881.a n = A211526 (n + 1)

end A211526

/-! ## A211526.P2661387134836084338

`A066880(2*n+1)+A061776(n+2)`
-/

namespace A211526.P2661387134836084338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066880 (2 * n + 1) + A061776 (n + 2)

end

end A211526.P2661387134836084338

namespace A211526

/-- `A066880(2*n+1)+A061776(n+2)` -/
def P2661387134836084338.Spec : Prop :=
  ∀ n, P2661387134836084338.a n = A211526 (n + 1)

end A211526

/-! ## A211526.P13673979367742175285

`A075427(2*n+1)+A061776(n+2)`
-/

namespace A211526.P13673979367742175285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (2 * n + 1) + A061776 (n + 2)

end

end A211526.P13673979367742175285

namespace A211526

/-- `A075427(2*n+1)+A061776(n+2)` -/
def P13673979367742175285.Spec : Prop :=
  ∀ n, P13673979367742175285.a n = A211526 (n + 1)

end A211526

/-! ## A211526.P10573824098725659473

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=8, a(1)=18, a(2)=32, a(3)=60`
-/

namespace A211526.P10573824098725659473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 18, 32, 60] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A211526.P10573824098725659473

namespace A211526

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P10573824098725659473.Spec : Prop :=
  ∀ n, P10573824098725659473.a n = A211526 (n + 1)

end A211526

/-!
# A211528: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four or six distinct values for every i,j,k<=n.

The programs for A211528, the canonical program `A211528.P14625012457903362307` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211528 has offset 1).

The definition of A211528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211528.P14625012457903362307

`A211525(n+1)+2*A006327(n+4)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A211528

/-- `A211525(n+1)+2*A006327(n+4)` -/
def P14625012457903362307.Spec : Prop :=
  ∀ n, P14625012457903362307.a n = A211528 (n + 1)

theorem P14625012457903362307.correct : P14625012457903362307.Spec := by
  intro n
  simp only [A211528, Nat.add_sub_cancel]

end A211528

/-! ## A211528.P7905528322344531088

`A211525(n+1)+A211529(n+1)-A211526(n+1)`
-/

namespace A211528.P7905528322344531088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + (A211529 (n + 1) - A211526 (n + 1))

end

end A211528.P7905528322344531088

namespace A211528

/-- `A211525(n+1)+A211529(n+1)-A211526(n+1)` -/
def P7905528322344531088.Spec : Prop :=
  ∀ n, P7905528322344531088.a n = A211528 (n + 1)

end A211528

/-! ## A211528.P14287140968487094803

`A211525(n+1)+A211568(n+1)-A211567(n+1)`
-/

namespace A211528.P14287140968487094803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + (A211568 (n + 1) - A211567 (n + 1))

end

end A211528.P14287140968487094803

namespace A211528

/-- `A211525(n+1)+A211568(n+1)-A211567(n+1)` -/
def P14287140968487094803.Spec : Prop :=
  ∀ n, P14287140968487094803.a n = A211528 (n + 1)

end A211528

/-! ## A211528.P7818766036251139903

`A211525(n+1)+A211575(n+1)-A211574(n+1)`
-/

namespace A211528.P7818766036251139903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + (A211575 (n + 1) - A211574 (n + 1))

end

end A211528.P7818766036251139903

namespace A211528

/-- `A211525(n+1)+A211575(n+1)-A211574(n+1)` -/
def P7818766036251139903.Spec : Prop :=
  ∀ n, P7818766036251139903.a n = A211528 (n + 1)

end A211528

/-! ## A211528.P9041896763229680972

`A211525(n+1)+A211589(n+1)-A211588(n+1)`
-/

namespace A211528.P9041896763229680972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + (A211589 (n + 1) - A211588 (n + 1))

end

end A211528.P9041896763229680972

namespace A211528

/-- `A211525(n+1)+A211589(n+1)-A211588(n+1)` -/
def P9041896763229680972.Spec : Prop :=
  ∀ n, P9041896763229680972.a n = A211528 (n + 1)

end A211528

/-!
# A211529: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four, five or six distinct values for every i,j,k<=n.

The programs for A211529, the canonical program `A211529.P292426756212088253` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211529 has offset 1).

The definition of A211529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211529.P292426756212088253

`A211526(n+1)+2*A006327(n+4)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A211529

/-- `A211526(n+1)+2*A006327(n+4)` -/
def P292426756212088253.Spec : Prop :=
  ∀ n, P292426756212088253.a n = A211529 (n + 1)

theorem P292426756212088253.correct : P292426756212088253.Spec := by
  intro n
  simp only [A211529, Nat.add_sub_cancel]

end A211529

/-! ## A211529.P99239376552801081

`A211526(n+1)+A211528(n+1)-A211525(n+1)`
-/

namespace A211529.P99239376552801081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + (A211528 (n + 1) - A211525 (n + 1))

end

end A211529.P99239376552801081

namespace A211529

/-- `A211526(n+1)+A211528(n+1)-A211525(n+1)` -/
def P99239376552801081.Spec : Prop :=
  ∀ n, P99239376552801081.a n = A211529 (n + 1)

end A211529

/-! ## A211529.P4037292103592768589

`A211526(n+1)+A211568(n+1)-A211567(n+1)`
-/

namespace A211529.P4037292103592768589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + (A211568 (n + 1) - A211567 (n + 1))

end

end A211529.P4037292103592768589

namespace A211529

/-- `A211526(n+1)+A211568(n+1)-A211567(n+1)` -/
def P4037292103592768589.Spec : Prop :=
  ∀ n, P4037292103592768589.a n = A211529 (n + 1)

end A211529

/-! ## A211529.P4542333454539872217

`A211526(n+1)+A211575(n+1)-A211574(n+1)`
-/

namespace A211529.P4542333454539872217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + (A211575 (n + 1) - A211574 (n + 1))

end

end A211529.P4542333454539872217

namespace A211529

/-- `A211526(n+1)+A211575(n+1)-A211574(n+1)` -/
def P4542333454539872217.Spec : Prop :=
  ∀ n, P4542333454539872217.a n = A211529 (n + 1)

end A211529

/-! ## A211529.P4471104864840619986

`A211526(n+1)+A211589(n+1)-A211588(n+1)`
-/

namespace A211529.P4471104864840619986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + (A211589 (n + 1) - A211588 (n + 1))

end

end A211529.P4471104864840619986

namespace A211529

/-- `A211526(n+1)+A211589(n+1)-A211588(n+1)` -/
def P4471104864840619986.Spec : Prop :=
  ∀ n, P4471104864840619986.a n = A211529 (n + 1)

end A211529

/-!
# A211530: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, three, four, five or six distinct values for every i,j,k<=n.

The programs for A211530, there is no canonical definition to state claims against.
-/

/-! ## A211530.P959578599086689994

`∑[A276625(∑[A316311(3*n+2)])+3]+3`
-/

namespace A211530.P959578599086689994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316311 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A211530.P959578599086689994

/-!
# A211531: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having one, two, three, four, five or six distinct values for every i,j,k<=n.

The programs for A211531, there is no canonical definition to state claims against.
-/

/-! ## A211531.P2336013111140100127

`A261155(A260770(n))-2`
-/

namespace A211531.P2336013111140100127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261155 (A260770 n).toNat - 2

end

end A211531.P2336013111140100127

/-!
# A211532: Number of -1..1 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four, five, six or seven distinct values for every i,j,k<=n.

The programs for A211532, there is no canonical definition to state claims against.
-/

/-! ## A211532.P12671297353698467628

`A259969(n+3)-A046523(A006155(n))`
-/

namespace A211532.P12671297353698467628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259969 (n + 3) - A046523 (A006155 n).toNat

end

end A211532.P12671297353698467628

/-!
# A211533: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w=3x-5y.

The programs for A211533, the canonical program `A211533.P6081768175336036254` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211533 has offset 0).

The definition of A211533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211533.P6081768175336036254

`A001840(n)+Δ[A011858(n)]-n`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211533

/-- `A001840(n)+Δ[A011858(n)]-n` -/
def P6081768175336036254.Spec : Prop :=
  ∀ n, P6081768175336036254.a n = A211533 n

theorem P6081768175336036254.correct : P6081768175336036254.Spec := by
  intro n
  simp only [A211533]

end A211533

/-! ## A211533.P17442603005467426482

`A186355(n+1)-A047516(n+1)`
-/

namespace A211533.P17442603005467426482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186355 (n + 1) - A047516 (n + 1)

end

end A211533.P17442603005467426482

namespace A211533

/-- `A186355(n+1)-A047516(n+1)` -/
def P17442603005467426482.Spec : Prop :=
  ∀ n, P17442603005467426482.a n = A211533 n

end A211533

/-! ## A211533.P5744905239514303898

`A008676(n+1)+∑[A002264(n)]`
-/

namespace A211533.P5744905239514303898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211533.P5744905239514303898

namespace A211533

/-- `A008676(n+1)+∑[A002264(n)]` -/
def P5744905239514303898.Spec : Prop :=
  ∀ n, P5744905239514303898.a n = A211533 n

end A211533

/-! ## A211533.P2037225778009282121

`A057354(n+1)+A001840(n)-n`
-/

namespace A211533.P2037225778009282121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 1) + (A001840 n - (n : ℤ))

end

end A211533.P2037225778009282121

namespace A211533

/-- `A057354(n+1)+A001840(n)-n` -/
def P2037225778009282121.Spec : Prop :=
  ∀ n, P2037225778009282121.a n = A211533 n

end A211533

/-! ## A211533.P171730997940957778

`A011858(n+1)+A058937(n+2)-A011858(n)`
-/

namespace A211533.P171730997940957778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) + (A058937 (n + 2) - A011858 n)

end

end A211533.P171730997940957778

namespace A211533

/-- `A011858(n+1)+A058937(n+2)-A011858(n)` -/
def P171730997940957778.Spec : Prop :=
  ∀ n, P171730997940957778.a n = A211533 n

end A211533

/-! ## A211533.P8936472897060786123

`A211524(2*n)+A008672(n+1)-1`
-/

namespace A211533.P8936472897060786123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (2 * n) + (A008672 (n + 1) - 1)

end

end A211533.P8936472897060786123

namespace A211533

/-- `A211524(2*n)+A008672(n+1)-1` -/
def P8936472897060786123.Spec : Prop :=
  ∀ n, P8936472897060786123.a n = A211533 n

end A211533

/-! ## A211533.P1414961743742435299

`(A208994(n+1)-A286717(2*n+1))/2`
-/

namespace A211533.P1414961743742435299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208994 (n + 1) - A286717 (2 * n + 1) : ℚ) / 2

end

end A211533.P1414961743742435299

namespace A211533

/-- `(A208994(n+1)-A286717(2*n+1))/2` -/
def P1414961743742435299.Spec : Prop :=
  ∀ n, P1414961743742435299.a n = (A211533 n : ℚ)

end A211533

/-! ## A211533.P8436148262732009934

`A011858(n+1)-A002264(A008732(n+1)-2)`
-/

namespace A211533.P8436148262732009934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) - A002264 (A008732 (n + 1) - 2).toNat

end

end A211533.P8436148262732009934

namespace A211533

/-- `A011858(n+1)-A002264(A008732(n+1)-2)` -/
def P8436148262732009934.Spec : Prop :=
  ∀ n, P8436148262732009934.a n = A211533 n

end A211533

/-! ## A211533.P11856593129905617597

`A011858(n+1)-A002264(A130520(n+6)-2)`
-/

namespace A211533.P11856593129905617597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) - A002264 (A130520 (n + 6) - 2).toNat

end

end A211533.P11856593129905617597

namespace A211533

/-- `A011858(n+1)-A002264(A130520(n+6)-2)` -/
def P11856593129905617597.Spec : Prop :=
  ∀ n, P11856593129905617597.a n = A211533 n

end A211533

/-! ## A211533.P15039985429585537545

`A004526(A032765(n)-A002266(n))-A002264(n)`
-/

namespace A211533.P15039985429585537545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A032765 n - A002266 n).toNat - A002264 n

end

end A211533.P15039985429585537545

namespace A211533

/-- `A004526(A032765(n)-A002266(n))-A002264(n)` -/
def P15039985429585537545.Spec : Prop :=
  ∀ n, P15039985429585537545.a n = A211533 n

end A211533

/-!
# A211534: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w = 3x + 3y.

The programs for A211534, the canonical program `A211534.P16987860604667639375` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211534 has offset 0).

The definition of A211534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211534.P3491582346491425850

`floor(n/3)*(floor(n/3)-1)/2`
-/

namespace A211534.P3491582346491425850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 3⌋ : ℚ) * ((⌊(n : ℚ) / 3⌋ - 1 : ℚ) / 2)

end

end A211534.P3491582346491425850

namespace A211534

/-- `floor(n/3)*(floor(n/3)-1)/2` -/
def P3491582346491425850.Spec : Prop :=
  ∀ n, P3491582346491425850.a n = (A211534 n : ℚ)

end A211534

/-! ## A211534.P16987860604667639375

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211534

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P16987860604667639375.Spec : Prop :=
  ∀ n, P16987860604667639375.a n = A211534 n

theorem P16987860604667639375.correct : P16987860604667639375.Spec := by
  intro n
  simp only [A211534]

end A211534

/-! ## A211534.P2295887628068285448

`C(floor(n/3), 2)`
-/

namespace A211534.P2295887628068285448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n : ℚ) / 3⌋.toNat 2

end

end A211534.P2295887628068285448

namespace A211534

/-- `C(floor(n/3), 2)` -/
def P2295887628068285448.Spec : Prop :=
  ∀ n, (P2295887628068285448.a n : ℤ) = A211534 n

end A211534

/-! ## A211534.P15676046984847121016

`∑[n%or(1, Δ[ceil(n/3)²])]`
-/

namespace A211534.P15676046984847121016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.lor 1 (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211534.P15676046984847121016

namespace A211534

/-- `∑[n%or(1, Δ[ceil(n/3)²])]` -/
def P15676046984847121016.Spec : Prop :=
  ∀ n, P15676046984847121016.a n = A211534 n

end A211534

/-! ## A211534.P9778294923408312984

`∑[(2*ceil(n/3))%∑[char[3*n]]]`
-/

namespace A211534.P9778294923408312984
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ⌈(n : ℚ) / 3⌉) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211534.P9778294923408312984

namespace A211534

/-- `∑[(2*ceil(n/3))%∑[char[3*n]]]` -/
def P9778294923408312984.Spec : Prop :=
  ∀ n, P9778294923408312984.a n = A211534 n

end A211534

/-! ## A211534.P8019306060216699849

`A161680(floor(n/3))`
-/

namespace A211534.P8019306060216699849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ⌊(n : ℚ) / 3⌋.toNat

end

end A211534.P8019306060216699849

namespace A211534

/-- `A161680(floor(n/3))` -/
def P8019306060216699849.Spec : Prop :=
  ∀ n, P8019306060216699849.a n = A211534 n

end A211534

/-! ## A211534.P6471361143160053539

`(A087278(n)-n)/2`
-/

namespace A211534.P6471361143160053539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087278 n - (n : ℤ) : ℚ) / 2

end

end A211534.P6471361143160053539

namespace A211534

/-- `(A087278(n)-n)/2` -/
def P6471361143160053539.Spec : Prop :=
  ∀ n, P6471361143160053539.a n = (A211534 n : ℚ)

end A211534

/-! ## A211534.P11436759569470464549

`A000217(∑[char[3*(n+2)]])`
-/

namespace A211534.P11436759569470464549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211534.P11436759569470464549

namespace A211534

/-- `A000217(∑[char[3*(n+2)]])` -/
def P11436759569470464549.Spec : Prop :=
  ∀ n, P11436759569470464549.a n = A211534 n

end A211534

/-! ## A211534.P7146857887289405595

`sqrt(A000537(∑[char[3*(n+2)]]))`
-/

namespace A211534.P7146857887289405595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A211534.P7146857887289405595

namespace A211534

/-- `sqrt(A000537(∑[char[3*(n+2)]]))` -/
def P7146857887289405595.Spec : Prop :=
  ∀ n, P7146857887289405595.a n = (A211534 n : ℝ)

end A211534

/-! ## A211534.P15862768582069991894

`C(ceil((n-2)/3), 2)%A006094(n+1)`
-/

namespace A211534.P15862768582069991894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose ⌈((n : ℤ) - 2 : ℚ) / 3⌉.toNat 2 : ℤ) (A006094 (n + 1))

end

end A211534.P15862768582069991894

namespace A211534

/-- `C(ceil((n-2)/3), 2)%A006094(n+1)` -/
def P15862768582069991894.Spec : Prop :=
  ∀ n, P15862768582069991894.a n = A211534 n

end A211534

/-! ## A211534.P6411622276855345619

`A152947(A008620(n))-1`
-/

namespace A211534.P6411622276855345619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A008620 n).toNat - 1

end

end A211534.P6411622276855345619

namespace A211534

/-- `A152947(A008620(n))-1` -/
def P6411622276855345619.Spec : Prop :=
  ∀ n, P6411622276855345619.a n = A211534 n

end A211534

/-! ## A211534.P7567061797665450448

`A130519(2*A002264(n))`
-/

namespace A211534.P7567061797665450448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (2 * A002264 n).toNat

end

end A211534.P7567061797665450448

namespace A211534

/-- `A130519(2*A002264(n))` -/
def P7567061797665450448.Spec : Prop :=
  ∀ n, P7567061797665450448.a n = A211534 n

end A211534

/-! ## A211534.P8004385075185738928

`A393093(n)-A069905(n)`
-/

namespace A211534.P8004385075185738928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393093 n - A069905 n

end

end A211534.P8004385075185738928

namespace A211534

/-- `A393093(n)-A069905(n)` -/
def P8004385075185738928.Spec : Prop :=
  ∀ n, P8004385075185738928.a n = A211534 n

end A211534

/-! ## A211534.P1116239400219029767

`(A211547(n)-A002264(n))/2`
-/

namespace A211534.P1116239400219029767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211547 n - A002264 n : ℚ) / 2

end

end A211534.P1116239400219029767

namespace A211534

/-- `(A211547(n)-A002264(n))/2` -/
def P1116239400219029767.Spec : Prop :=
  ∀ n, P1116239400219029767.a n = (A211534 n : ℚ)

end A211534

/-! ## A211534.P300183062579937017

`A101882(n+1)-A042968(n+1)`
-/

namespace A211534.P300183062579937017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101882 (n + 1) - A042968 (n + 1)

end

end A211534.P300183062579937017

namespace A211534

/-- `A101882(n+1)-A042968(n+1)` -/
def P300183062579937017.Spec : Prop :=
  ∀ n, P300183062579937017.a n = A211534 n

end A211534

/-! ## A211534.P9094986680253357266

`A130519(A002264(n)+A002264(n))`
-/

namespace A211534.P9094986680253357266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A002264 n + A002264 n).toNat

end

end A211534.P9094986680253357266

namespace A211534

/-- `A130519(A002264(n)+A002264(n))` -/
def P9094986680253357266.Spec : Prop :=
  ∀ n, P9094986680253357266.a n = A211534 n

end A211534

/-! ## A211534.P1763269015769104804

`A211546(n)-(A393095(n)+A069905(n))`
-/

namespace A211534.P1763269015769104804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211546 n - (A393095 n + A069905 n)

end

end A211534.P1763269015769104804

namespace A211534

/-- `A211546(n)-(A393095(n)+A069905(n))` -/
def P1763269015769104804.Spec : Prop :=
  ∀ n, P1763269015769104804.a n = A211534 n

end A211534

/-! ## A211534.P16437727923815145542

`A130519(A018838(n+1)-2)`
-/

namespace A211534.P16437727923815145542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A018838 (n + 1) - 2).toNat

end

end A211534.P16437727923815145542

namespace A211534

/-- `A130519(A018838(n+1)-2)` -/
def P16437727923815145542.Spec : Prop :=
  ∀ n, P16437727923815145542.a n = A211534 n

end A211534

/-! ## A211534.P12261654073471188654

`A024163(A061891(n))`
-/

namespace A211534.P12261654073471188654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024163 (A061891 n).toNat

end

end A211534.P12261654073471188654

namespace A211534

/-- `A024163(A061891(n))` -/
def P12261654073471188654.Spec : Prop :=
  ∀ n, P12261654073471188654.a n = A211534 n

end A211534

/-! ## A211534.P2394191613878914008

`A024163(A004274(n+1))`
-/

namespace A211534.P2394191613878914008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024163 (A004274 (n + 1)).toNat

end

end A211534.P2394191613878914008

namespace A211534

/-- `A024163(A004274(n+1))` -/
def P2394191613878914008.Spec : Prop :=
  ∀ n, P2394191613878914008.a n = A211534 n

end A211534

/-!
# A211535: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w=4x+5y.

The programs for A211535, the canonical program `A211535.P2962801374352131108` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211535 has offset 0).

The definition of A211535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211535.P2962801374352131108

`a(n-1)+a(n-4)-a(n-6)-a(n-9)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211535

/-- `a(n-1)+a(n-4)-a(n-6)-a(n-9)+a(n-10)` -/
def P2962801374352131108.Spec : Prop :=
  ∀ n, P2962801374352131108.a n = A211535 n

theorem P2962801374352131108.correct : P2962801374352131108.Spec := by
  intro n
  simp only [A211535]

end A211535

/-! ## A211535.P15329567612563933971

`A211522(n)-floor(n*n/8)`
-/

namespace A211535.P15329567612563933971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211522 n - ⌊(n : ℚ) * ((n : ℚ) / 8)⌋

end

end A211535.P15329567612563933971

namespace A211535

/-- `A211522(n)-floor(n*n/8)` -/
def P15329567612563933971.Spec : Prop :=
  ∀ n, P15329567612563933971.a n = A211535 n

end A211535

/-! ## A211535.P2384629416258763277

`A130519(abs(1-n))-A130520(n)`
-/

namespace A211535.P2384629416258763277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 |1 - (n : ℤ)|.toNat - A130520 n

end

end A211535.P2384629416258763277

namespace A211535

/-- `A130519(abs(1-n))-A130520(n)` -/
def P2384629416258763277.Spec : Prop :=
  ∀ n, P2384629416258763277.a n = A211535 n

end A211535

/-! ## A211535.P714731955549720506

`A033437(n+1)-(A033436(n)+n)`
-/

namespace A211535.P714731955549720506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 (n + 1) - (A033436 n + (n : ℤ))

end

end A211535.P714731955549720506

namespace A211535

/-- `A033437(n+1)-(A033436(n)+n)` -/
def P714731955549720506.Spec : Prop :=
  ∀ n, P714731955549720506.a n = A211535 n

end A211535

/-! ## A211535.P6451230110746045342

`∑[A004526(A065033(n)-A130497(n))]`
-/

namespace A211535.P6451230110746045342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065033 n - A130497 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211535.P6451230110746045342

namespace A211535

/-- `∑[A004526(A065033(n)-A130497(n))]` -/
def P6451230110746045342.Spec : Prop :=
  ∀ n, P6451230110746045342.a n = A211535 n

end A211535

/-! ## A211535.P6254608319827141517

`∑[A004526(A004526(n+1)%A130497(n))]`
-/

namespace A211535.P6254608319827141517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A004526 (n + 1)) (A130497 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211535.P6254608319827141517

namespace A211535

/-- `∑[A004526(A004526(n+1)%A130497(n))]` -/
def P6254608319827141517.Spec : Prop :=
  ∀ n, P6254608319827141517.a n = A211535 n

end A211535

/-! ## A211535.P13858249205031813727

`A008619(∑[A008619(n)])-A008732(n)`
-/

namespace A211535.P13858249205031813727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A008732 n

end

end A211535.P13858249205031813727

namespace A211535

/-- `A008619(∑[A008619(n)])-A008732(n)` -/
def P13858249205031813727.Spec : Prop :=
  ∀ n, P13858249205031813727.a n = A211535 n

end A211535

/-!
# A211536: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w=4x-5y.

The programs for A211536, the canonical program `A211536.P3422561043178415085` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211536 has offset 0).

The definition of A211536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211536.P3422561043178415085

`a(n-1)+a(n-4)-a(n-6)-a(n-9)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=3, a(5)=4, a(6)=6, a(7)=8, a(8)=11, a(9)=14`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211536

/-- `a(n-1)+a(n-4)-a(n-6)-a(n-9)+a(n-10)` -/
def P3422561043178415085.Spec : Prop :=
  ∀ n, P3422561043178415085.a n = A211536 n

theorem P3422561043178415085.correct : P3422561043178415085.Spec := by
  intro n
  simp only [A211536]

end A211536

/-! ## A211536.P1430502093175084468

`∑[(∑[(n*∑[n²])%5]+n)%comp[5*n]]`
-/

namespace A211536.P1430502093175084468
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j) % 5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + n) % SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211536.P1430502093175084468

namespace A211536

/-- `∑[(∑[(n*∑[n²])%5]+n)%comp[5*n]]` -/
def P1430502093175084468.Spec : Prop :=
  ∀ n, (P1430502093175084468.a n : ℤ) = A211536 n

end A211536

/-! ## A211536.P9157912739572388753

`∑[A047560(n+1)%A047201(n+1)]`
-/

namespace A211536.P9157912739572388753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047560 (n + 1)) (A047201 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211536.P9157912739572388753

namespace A211536

/-- `∑[A047560(n+1)%A047201(n+1)]` -/
def P9157912739572388753.Spec : Prop :=
  ∀ n, P9157912739572388753.a n = A211536 n

end A211536

/-! ## A211536.P2963317949838532558

`Δ[A011892(n)]-∑[A002265(n)]`
-/

namespace A211536.P2963317949838532558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A211536.P2963317949838532558

namespace A211536

/-- `Δ[A011892(n)]-∑[A002265(n)]` -/
def P2963317949838532558.Spec : Prop :=
  ∀ n, P2963317949838532558.a n = A211536 n

end A211536

/-! ## A211536.P3255517599472554957

`A211535(n)+A008611(A212979(n))`
-/

namespace A211536.P3255517599472554957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211535 n + A008611 (A212979 n).toNat

end

end A211536.P3255517599472554957

namespace A211536

/-- `A211535(n)+A008611(A212979(n))` -/
def P3255517599472554957.Spec : Prop :=
  ∀ n, P3255517599472554957.a n = A211536 n

end A211536

/-! ## A211536.P7243061950614666005

`A130497(∑[n])-A025772(n)`
-/

namespace A211536.P7243061950614666005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (∑ j ∈ Finset.range (n + 1), f1 j) - A025772 n

end

end A211536.P7243061950614666005

namespace A211536

/-- `A130497(∑[n])-A025772(n)` -/
def P7243061950614666005.Spec : Prop :=
  ∀ n, P7243061950614666005.a n = A211536 n

end A211536

/-!
# A211537: Smallest number k such that the sum of prime factors of k (counted with multiplicity) equals n times a nontrivial integer power.

The programs for A211537, there is no canonical definition to state claims against.
-/

/-! ## A211537.P3207642953873603288

`A211144(n+1)%A038872(A100752(n))`
-/

namespace A211537.P3207642953873603288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211144 (n + 1)) (A038872 (A100752 n).toNat)

end

end A211537.P3207642953873603288

/-! ## A211537.P6866953605041577318

`A211144(ϕ²-(ϕ-n))%(A139610(A218471(n))-n)`
-/

namespace A211537.P6866953605041577318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211144 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A139610 (A218471 n).toNat - (n : ℤ))

end

end A211537.P6866953605041577318

/-! ## A211537.P886706442831084895

`A211144(n+1)%A333035(n)`
-/

namespace A211537.P886706442831084895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211144 (n + 1)) (A333035 n)

end

end A211537.P886706442831084895

/-!
# A211538: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w=2n-2x-y.

The programs for A211538, the canonical program `A211538.P18207268511497049019` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211538 has offset 1).

The definition of A211538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211538.P2971577104114431562

`(6*(n+1)²-26*(n+1)+25-(2*(n+1)-7)*(-1)^(n+1))/16`
-/

namespace A211538.P2971577104114431562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) ^ 2 : ℤ) - (26 * (n + 1) : ℤ) + (25 - ((2 * (n + 1) : ℤ) - 7) * (-1) ^ (n + 1)) : ℚ) / 16

end

end A211538.P2971577104114431562

namespace A211538

/-- `(6*(n+1)²-26*(n+1)+25-(2*(n+1)-7)*(-1)^(n+1))/16` -/
def P2971577104114431562.Spec : Prop :=
  ∀ n, P2971577104114431562.a n = (A211538 (n + 1) : ℚ)

theorem P2971577104114431562.correct : P2971577104114431562.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A211538, Nat.add_sub_cancel, A211538.P2971577104114431562.a, A211538.P18207268511497049019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A211538, Nat.add_sub_cancel, A211538.P2971577104114431562.a, A211538.P18207268511497049019.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A211538

/-! ## A211538.P18207268511497049019

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211538

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P18207268511497049019.Spec : Prop :=
  ∀ n, P18207268511497049019.a n = A211538 (n + 1)

theorem P18207268511497049019.correct : P18207268511497049019.Spec := by
  intro n
  simp only [A211538, Nat.add_sub_cancel]

end A211538

/-! ## A211538.P14528032646931648163

`floor(∑[(lcm(2, 1-n)-1)/2])`
-/

namespace A211538.P14528032646931648163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (1 - (n : ℤ)) : ℤ) - 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A211538.P14528032646931648163

namespace A211538

/-- `floor(∑[(lcm(2, 1-n)-1)/2])` -/
def P14528032646931648163.Spec : Prop :=
  ∀ n, P14528032646931648163.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P16337709503706567951

`∑[a(n-2)+gcd(2, n)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A211538.P16337709503706567951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 2) + Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211538.P16337709503706567951

namespace A211538

/-- `∑[a(n-2)+gcd(2, n)]` -/
def P16337709503706567951.Spec : Prop :=
  ∀ n, (P16337709503706567951.a n : ℤ) = A211538 (n + 1)

end A211538

/-! ## A211538.P3061367287141588020

`ceil((C(comp[3*n+4], 2)-2)/3)`
-/

namespace A211538.P3061367287141588020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2 : ℤ) - 2 : ℚ) / 3⌉

end

end A211538.P3061367287141588020

namespace A211538

/-- `ceil((C(comp[3*n+4], 2)-2)/3)` -/
def P3061367287141588020.Spec : Prop :=
  ∀ n, P3061367287141588020.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P14370783349946512145

`∑[floor(n/a(n-1))]+∑[n]` with `a(0)=0, a(1)=-1`
-/

namespace A211538.P14370783349946512145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A211538.P14370783349946512145

namespace A211538

/-- `∑[floor(n/a(n-1))]+∑[n]` -/
def P14370783349946512145.Spec : Prop :=
  ∀ n, P14370783349946512145.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P11325151680696773760

`∑[(n-3)/(and(1, n)+1)]+n+3`
-/

namespace A211538.P11325151680696773760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℚ)

end

end A211538.P11325151680696773760

namespace A211538

/-- `∑[(n-3)/(and(1, n)+1)]+n+3` -/
def P11325151680696773760.Spec : Prop :=
  ∀ n, P11325151680696773760.a n = (A211538 (n + 1) : ℚ)

end A211538

/-! ## A211538.P113557832341213017

`∑[3-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A211538.P113557832341213017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A211538.P113557832341213017

namespace A211538

/-- `∑[3-a(n-1)]+a(n-2)` -/
def P113557832341213017.Spec : Prop :=
  ∀ n, P113557832341213017.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P17219458123038366943

`∑[(n-3)/gcd(n+1, n-1)]+n+3`
-/

namespace A211538.P17219458123038366943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℚ)

end

end A211538.P17219458123038366943

namespace A211538

/-- `∑[(n-3)/gcd(n+1, n-1)]+n+3` -/
def P17219458123038366943.Spec : Prop :=
  ∀ n, P17219458123038366943.a n = (A211538 (n + 1) : ℚ)

end A211538

/-! ## A211538.P11230197672621111196

`∑[A029578(abs(1-n))]`
-/

namespace A211538.P11230197672621111196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211538.P11230197672621111196

namespace A211538

/-- `∑[A029578(abs(1-n))]` -/
def P11230197672621111196.Spec : Prop :=
  ∀ n, P11230197672621111196.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P18263077859080632055

`Δ[A111384(abs(1-n))]`
-/

namespace A211538.P18263077859080632055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211538.P18263077859080632055

namespace A211538

/-- `Δ[A111384(abs(1-n))]` -/
def P18263077859080632055.Spec : Prop :=
  ∀ n, P18263077859080632055.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P7811557672776208054

`∑[abs(1-n)-A057979(n)]`
-/

namespace A211538.P7811557672776208054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| - A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211538.P7811557672776208054

namespace A211538

/-- `∑[abs(1-n)-A057979(n)]` -/
def P7811557672776208054.Spec : Prop :=
  ∀ n, P7811557672776208054.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P15256654383036339855

`∑[A065262(n+1)%(n+2)-1]`
-/

namespace A211538.P15256654383036339855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065262 (n + 1)) (n + 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211538.P15256654383036339855

namespace A211538

/-- `∑[A065262(n+1)%(n+2)-1]` -/
def P15256654383036339855.Spec : Prop :=
  ∀ n, P15256654383036339855.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P14446642604288046970

`A195020(n)%A027379(n)`
-/

namespace A211538.P14446642604288046970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195020 n) (A027379 n)

end

end A211538.P14446642604288046970

namespace A211538

/-- `A195020(n)%A027379(n)` -/
def P14446642604288046970.Spec : Prop :=
  ∀ n, P14446642604288046970.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P17375100719466860199

`A193053(n)%A052905(n)`
-/

namespace A211538.P17375100719466860199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193053 n) (A052905 n)

end

end A211538.P17375100719466860199

namespace A211538

/-- `A193053(n)%A052905(n)` -/
def P17375100719466860199.Spec : Prop :=
  ∀ n, P17375100719466860199.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P10864019766778775473

`A263511(n)%A087099(n+1)`
-/

namespace A211538.P10864019766778775473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263511 n) (A087099 (n + 1))

end

end A211538.P10864019766778775473

namespace A211538

/-- `A263511(n)%A087099(n+1)` -/
def P10864019766778775473.Spec : Prop :=
  ∀ n, P10864019766778775473.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P14929407858141615420

`∑[(A065033(n)-1)*A040001(n)]`
-/

namespace A211538.P14929407858141615420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065033 n - 1) * A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211538.P14929407858141615420

namespace A211538

/-- `∑[(A065033(n)-1)*A040001(n)]` -/
def P14929407858141615420.Spec : Prop :=
  ∀ n, P14929407858141615420.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P6987558401710832195

`∑[(n-A008619(n))*A134451(n)]`
-/

namespace A211538.P6987558401710832195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008619 n) * A134451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211538.P6987558401710832195

namespace A211538

/-- `∑[(n-A008619(n))*A134451(n)]` -/
def P6987558401710832195.Spec : Prop :=
  ∀ n, P6987558401710832195.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P8573045995524360548

`∑[A178414(n+1)%A026741(n+1)]`
-/

namespace A211538.P8573045995524360548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178414 (n + 1)) (A026741 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211538.P8573045995524360548

namespace A211538

/-- `∑[A178414(n+1)%A026741(n+1)]` -/
def P8573045995524360548.Spec : Prop :=
  ∀ n, P8573045995524360548.a n = A211538 (n + 1)

end A211538

/-! ## A211538.P18272855024166316643

`∑[A140106(n+1)+A140106(A141310(n))]`
-/

namespace A211538.P18272855024166316643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) + A140106 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211538.P18272855024166316643

namespace A211538

/-- `∑[A140106(n+1)+A140106(A141310(n))]` -/
def P18272855024166316643.Spec : Prop :=
  ∀ n, P18272855024166316643.a n = A211538 (n + 1)

end A211538

/-!
# A211539: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w = 2n - 2x + y.

The programs for A211539, the canonical program `A211539.P10983255820154818639` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211539 has offset 0).

The definition of A211539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211539.P10983255820154818639

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3, a(4)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211539

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10983255820154818639.Spec : Prop :=
  ∀ n, P10983255820154818639.a n = A211539 n

theorem P10983255820154818639.correct : P10983255820154818639.Spec := by
  intro n
  simp only [A211539]

end A211539

/-! ## A211539.P6208067785183614596

`A001318(n+1)-(n+1)`
-/

namespace A211539.P6208067785183614596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1) - (n + 1 : ℤ)

end

end A211539.P6208067785183614596

namespace A211539

/-- `A001318(n+1)-(n+1)` -/
def P6208067785183614596.Spec : Prop :=
  ∀ n, P6208067785183614596.a n = A211539 n

end A211539

/-! ## A211539.P2219155740646577285

`∑[floor(n/(n%2+1))]`
-/

namespace A211539.P2219155740646577285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P2219155740646577285

namespace A211539

/-- `∑[floor(n/(n%2+1))]` -/
def P2219155740646577285.Spec : Prop :=
  ∀ n, P2219155740646577285.a n = A211539 n

end A211539

/-! ## A211539.P3116351928429372550

`∑[floor(n/gcd(2, n+1))]`
-/

namespace A211539.P3116351928429372550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P3116351928429372550

namespace A211539

/-- `∑[floor(n/gcd(2, n+1))]` -/
def P3116351928429372550.Spec : Prop :=
  ∀ n, P3116351928429372550.a n = A211539 n

end A211539

/-! ## A211539.P14957040458960085180

`∑[floor(n/(and(1, n)+1))]`
-/

namespace A211539.P14957040458960085180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.land 1 n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P14957040458960085180

namespace A211539

/-- `∑[floor(n/(and(1, n)+1))]` -/
def P14957040458960085180.Spec : Prop :=
  ∀ n, P14957040458960085180.a n = A211539 n

end A211539

/-! ## A211539.P10654733719072724578

`∑[(∑[n]-1)%(n+1)]`
-/

namespace A211539.P10654733719072724578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P10654733719072724578

namespace A211539

/-- `∑[(∑[n]-1)%(n+1)]` -/
def P10654733719072724578.Spec : Prop :=
  ∀ n, P10654733719072724578.a n = A211539 n

end A211539

/-! ## A211539.P10278890768355447518

`∑[lcm(2, n+1)/2-1]`
-/

namespace A211539.P10278890768355447518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P10278890768355447518

namespace A211539

/-- `∑[lcm(2, n+1)/2-1]` -/
def P10278890768355447518.Spec : Prop :=
  ∀ n, P10278890768355447518.a n = (A211539 n : ℚ)

end A211539

/-! ## A211539.P17079477404381848552

`∑[floor(gcd(2*n, n²)/2)]`
-/

namespace A211539.P17079477404381848552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (2 * n) (n ^ 2) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P17079477404381848552

namespace A211539

/-- `∑[floor(gcd(2*n, n²)/2)]` -/
def P17079477404381848552.Spec : Prop :=
  ∀ n, P17079477404381848552.a n = A211539 n

end A211539

/-! ## A211539.P17227786981633384569

`∑[gcd((n+1)², ∑[n])-1]`
-/

namespace A211539.P17227786981633384569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P17227786981633384569

namespace A211539

/-- `∑[gcd((n+1)², ∑[n])-1]` -/
def P17227786981633384569.Spec : Prop :=
  ∀ n, P17227786981633384569.a n = A211539 n

end A211539

/-! ## A211539.P2673063249656656298

`∑[∑[-n]%(n+1)+n]`
-/

namespace A211539.P2673063249656656298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (n + 1 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P2673063249656656298

namespace A211539

/-- `∑[∑[-n]%(n+1)+n]` -/
def P2673063249656656298.Spec : Prop :=
  ∀ n, P2673063249656656298.a n = A211539 n

end A211539

/-! ## A211539.P2267068208608451654

`∑[floor(lcm(n, ∑[n])/(n+1))]`
-/

namespace A211539.P2267068208608451654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm n (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P2267068208608451654

namespace A211539

/-- `∑[floor(lcm(n, ∑[n])/(n+1))]` -/
def P2267068208608451654.Spec : Prop :=
  ∀ n, P2267068208608451654.a n = A211539 n

end A211539

/-! ## A211539.P17743035298115937221

`∑[floor(n/(2-∑[(-1)^n]))]`
-/

namespace A211539.P17743035298115937221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((2 - ∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211539.P17743035298115937221

namespace A211539

/-- `∑[floor(n/(2-∑[(-1)^n]))]` -/
def P17743035298115937221.Spec : Prop :=
  ∀ n, P17743035298115937221.a n = A211539 n

end A211539

/-! ## A211539.P1441997221645480439

`∑[n]-C(floor((n+3)/2), 2)`
-/

namespace A211539.P1441997221645480439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose ⌊(n + 3 : ℚ) / 2⌋.toNat 2 : ℤ)

end

end A211539.P1441997221645480439

namespace A211539

/-- `∑[n]-C(floor((n+3)/2), 2)` -/
def P1441997221645480439.Spec : Prop :=
  ∀ n, P1441997221645480439.a n = A211539 n

end A211539

/-! ## A211539.P14412221981691217158

`∑[∑[n]/a(n-1)]-n` with `a(0)=0, a(1)=1`
-/

namespace A211539.P14412221981691217158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)

end

end A211539.P14412221981691217158

namespace A211539

/-- `∑[∑[n]/a(n-1)]-n` -/
def P14412221981691217158.Spec : Prop :=
  ∀ n, P14412221981691217158.a n = (A211539 n : ℚ)

end A211539

/-! ## A211539.P7416954857571795259

`∑[a(n-2)!]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A211539.P7416954857571795259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  Nat.factorial (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A211539.P7416954857571795259

namespace A211539

/-- `∑[a(n-2)!]+a(n-2)` -/
def P7416954857571795259.Spec : Prop :=
  ∀ n, (P7416954857571795259.a n : ℤ) = A211539 n

end A211539

/-! ## A211539.P6009424859664213798

`∑[3-a(n-1)]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A211539.P6009424859664213798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A211539.P6009424859664213798

namespace A211539

/-- `∑[3-a(n-1)]+a(n-2)` -/
def P6009424859664213798.Spec : Prop :=
  ∀ n, P6009424859664213798.a n = A211539 n

end A211539

/-! ## A211539.P6226673536060756056

`a(n-1)-(4*a(n-1))%n+n` with `a(0)=0, a(1)=0`
-/

namespace A211539.P6226673536060756056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) - Int.tmod (4 * a (n - 1)) (n : ℤ) + (n : ℤ)

end

end A211539.P6226673536060756056

namespace A211539

/-- `a(n-1)-(4*a(n-1))%n+n` -/
def P6226673536060756056.Spec : Prop :=
  ∀ n, P6226673536060756056.a n = A211539 n

end A211539

/-! ## A211539.P7092783647208054190

`∑[gcd(2*n+1-n, ∑[n+1])]-(n+1)`
-/

namespace A211539.P7092783647208054190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A211539.P7092783647208054190

namespace A211539

/-- `∑[gcd(2*n+1-n, ∑[n+1])]-(n+1)` -/
def P7092783647208054190.Spec : Prop :=
  ∀ n, P7092783647208054190.a n = A211539 n

end A211539

/-! ## A211539.P5100710155651018680

`A144065(n)-n`
-/

namespace A211539.P5100710155651018680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 n - (n : ℤ)

end

end A211539.P5100710155651018680

namespace A211539

/-- `A144065(n)-n` -/
def P5100710155651018680.Spec : Prop :=
  ∀ n, P5100710155651018680.a n = A211539 n

end A211539

/-! ## A211539.P11031466866391955659

`A210978(n)-∑[n]`
-/

namespace A211539.P11031466866391955659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210978 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211539.P11031466866391955659

namespace A211539

/-- `A210978(n)-∑[n]` -/
def P11031466866391955659.Spec : Prop :=
  ∀ n, P11031466866391955659.a n = A211539 n

end A211539

/-!
# A211540: Number of ordered triples (w,x,y) with all terms in {1..n} and 2w = 3x + 4y.

The programs for A211540, the canonical program `A211540.P9449273519256082514` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211540 has offset 0).

The definition of A211540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211540.P9449273519256082514

`round((n-2)²/12)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211540

/-- `round((n-2)²/12)` -/
def P9449273519256082514.Spec : Prop :=
  ∀ n, P9449273519256082514.a n = A211540 n

theorem P9449273519256082514.correct : P9449273519256082514.Spec := by
  intro n
  simp only [A211540]

end A211540

/-! ## A211540.P2532462170302399175

`n-5+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A211540.P2532462170302399175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1] fun n a =>
  (n : ℤ) - 5 + a (n - 6)

end

end A211540.P2532462170302399175

namespace A211540

/-- `n-5+a(n-6)` -/
def P2532462170302399175.Spec : Prop :=
  ∀ n, P2532462170302399175.a n = A211540 n

end A211540

/-! ## A211540.P108201222035473340

`∑[ceil(xor(1, n+1)/6)]-n`
-/

namespace A211540.P108201222035473340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A211540.P108201222035473340

namespace A211540

/-- `∑[ceil(xor(1, n+1)/6)]-n` -/
def P108201222035473340.Spec : Prop :=
  ∀ n, P108201222035473340.a n = A211540 n

end A211540

/-! ## A211540.P5920988637849767510

`∑[ceil(n/2)%∑[char[3*n]]]`
-/

namespace A211540.P5920988637849767510
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℚ) / 2⌉ ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211540.P5920988637849767510

namespace A211540

/-- `∑[ceil(n/2)%∑[char[3*n]]]` -/
def P5920988637849767510.Spec : Prop :=
  ∀ n, P5920988637849767510.a n = A211540 n

end A211540

/-! ## A211540.P20852233251178582

`∑[round(xor(1, n)/6)]-floor(n/2)`
-/

namespace A211540.P20852233251178582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌊(n : ℚ) / 2⌋

end

end A211540.P20852233251178582

namespace A211540

/-- `∑[round(xor(1, n)/6)]-floor(n/2)` -/
def P20852233251178582.Spec : Prop :=
  ∀ n, P20852233251178582.a n = A211540 n

end A211540

/-! ## A211540.P17326595118033168412

`floor(a(n-2)+(n-2)/3)` with `a(0)=0, a(1)=0`
-/

namespace A211540.P17326595118033168412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℤ) - 2 : ℚ) / 3⌋

end

end A211540.P17326595118033168412

namespace A211540

/-- `floor(a(n-2)+(n-2)/3)` -/
def P17326595118033168412.Spec : Prop :=
  ∀ n, P17326595118033168412.a n = A211540 n

end A211540

/-! ## A211540.P11141474294885881771

`a(n-2)-floor((4-n)/3)` with `a(0)=0, a(1)=0`
-/

namespace A211540.P11141474294885881771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - ⌊(4 - (n : ℤ) : ℚ) / 3⌋

end

end A211540.P11141474294885881771

namespace A211540

/-- `a(n-2)-floor((4-n)/3)` -/
def P11141474294885881771.Spec : Prop :=
  ∀ n, P11141474294885881771.a n = A211540 n

end A211540

/-! ## A211540.P6630614008020687540

`A069905(abs(2-n))`
-/

namespace A211540.P6630614008020687540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 |2 - (n : ℤ)|.toNat

end

end A211540.P6630614008020687540

namespace A211540

/-- `A069905(abs(2-n))` -/
def P6630614008020687540.Spec : Prop :=
  ∀ n, P6630614008020687540.a n = A211540 n

end A211540

/-! ## A211540.P17436155573890735304

`∑[A011960(n+1)]-n`
-/

namespace A211540.P17436155573890735304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A211540.P17436155573890735304

namespace A211540

/-- `∑[A011960(n+1)]-n` -/
def P17436155573890735304.Spec : Prop :=
  ∀ n, P17436155573890735304.a n = A211540 n

end A211540

/-! ## A211540.P12187155223017723535

`∑[A103221(n+1)]-n`
-/

namespace A211540.P12187155223017723535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A211540.P12187155223017723535

namespace A211540

/-- `∑[A103221(n+1)]-n` -/
def P12187155223017723535.Spec : Prop :=
  ∀ n, P12187155223017723535.a n = A211540 n

end A211540

/-! ## A211540.P11203922637073606769

`Δ[A000601(n)]-(n+1)`
-/

namespace A211540.P11203922637073606769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A211540.P11203922637073606769

namespace A211540

/-- `Δ[A000601(n)]-(n+1)` -/
def P11203922637073606769.Spec : Prop :=
  ∀ n, P11203922637073606769.a n = A211540 n

end A211540

/-! ## A211540.P14796715847816691128

`A001399(n+1)-(n+1)`
-/

namespace A211540.P14796715847816691128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 1) - (n + 1 : ℤ)

end

end A211540.P14796715847816691128

namespace A211540

/-- `A001399(n+1)-(n+1)` -/
def P14796715847816691128.Spec : Prop :=
  ∀ n, P14796715847816691128.a n = A211540 n

end A211540

/-! ## A211540.P9344065469151746754

`(∑[A063195(n+1)]-n)/2`
-/

namespace A211540.P9344065469151746754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) : ℤ) : ℚ) / 2

end

end A211540.P9344065469151746754

namespace A211540

/-- `(∑[A063195(n+1)]-n)/2` -/
def P9344065469151746754.Spec : Prop :=
  ∀ n, P9344065469151746754.a n = (A211540 n : ℚ)

end A211540

/-! ## A211540.P11693842403138208185

`A008748(n)-A001399(n)`
-/

namespace A211540.P11693842403138208185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - A001399 n

end

end A211540.P11693842403138208185

namespace A211540

/-- `A008748(n)-A001399(n)` -/
def P11693842403138208185.Spec : Prop :=
  ∀ n, P11693842403138208185.a n = A211540 n

end A211540

/-! ## A211540.P11122947928298550149

`A008766(n)-A008770(n)`
-/

namespace A211540.P11122947928298550149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 n - A008770 n

end

end A211540.P11122947928298550149

namespace A211540

/-- `A008766(n)-A008770(n)` -/
def P11122947928298550149.Spec : Prop :=
  ∀ n, P11122947928298550149.a n = A211540 n

end A211540

/-! ## A211540.P3001863378656542708

`A014591(n)-A008620(n)`
-/

namespace A211540.P3001863378656542708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 n - A008620 n

end

end A211540.P3001863378656542708

namespace A211540

/-- `A014591(n)-A008620(n)` -/
def P3001863378656542708.Spec : Prop :=
  ∀ n, P3001863378656542708.a n = A211540 n

end A211540

/-! ## A211540.P1452921015558256359

`A033638(n)-A008747(n)`
-/

namespace A211540.P1452921015558256359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A008747 n

end

end A211540.P1452921015558256359

namespace A211540

/-- `A033638(n)-A008747(n)` -/
def P1452921015558256359.Spec : Prop :=
  ∀ n, P1452921015558256359.a n = A211540 n

end A211540

/-! ## A211540.P2844229171770665676

`A069905(n)-A002264(n)`
-/

namespace A211540.P2844229171770665676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n - A002264 n

end

end A211540.P2844229171770665676

namespace A211540

/-- `A069905(n)-A002264(n)` -/
def P2844229171770665676.Spec : Prop :=
  ∀ n, P2844229171770665676.a n = A211540 n

end A211540

/-!
# A211541: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w=3x-4y.

The programs for A211541, the canonical program `A211541.P6364008902973407762` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211541 has offset 0).

The definition of A211541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211541.P6364008902973407762

`A211521(n)-A069905(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211541

/-- `A211521(n)-A069905(n)` -/
def P6364008902973407762.Spec : Prop :=
  ∀ n, P6364008902973407762.a n = A211541 n

theorem P6364008902973407762.correct : P6364008902973407762.Spec := by
  intro n
  simp only [A211541]

end A211541

/-! ## A211541.P9557929688416320662

`A054925(n)-A325690(n)`
-/

namespace A211541.P9557929688416320662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n - A325690 n

end

end A211541.P9557929688416320662

namespace A211541

/-- `A054925(n)-A325690(n)` -/
def P9557929688416320662.Spec : Prop :=
  ∀ n, P9557929688416320662.a n = A211541 n

end A211541

/-! ## A211541.P4577096175278676161

`ceil((A008724(n)+A004526(n)²)/2)`
-/

namespace A211541.P4577096175278676161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008724 n + A004526 n ^ 2 : ℚ) / 2⌉

end

end A211541.P4577096175278676161

namespace A211541

/-- `ceil((A008724(n)+A004526(n)²)/2)` -/
def P4577096175278676161.Spec : Prop :=
  ∀ n, P4577096175278676161.a n = A211541 n

end A211541

/-! ## A211541.P413975716948573449

`A008619(n)+A211521(n)-A001399(n)`
-/

namespace A211541.P413975716948573449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A211521 n - A001399 n)

end

end A211541.P413975716948573449

namespace A211541

/-- `A008619(n)+A211521(n)-A001399(n)` -/
def P413975716948573449.Spec : Prop :=
  ∀ n, P413975716948573449.a n = A211541 n

end A211541

/-! ## A211541.P15623041908295005745

`A211521(n)+A211543(n)-A211522(n)`
-/

namespace A211541.P15623041908295005745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211521 n + (A211543 n - A211522 n)

end

end A211541.P15623041908295005745

namespace A211541

/-- `A211521(n)+A211543(n)-A211522(n)` -/
def P15623041908295005745.Spec : Prop :=
  ∀ n, P15623041908295005745.a n = A211541 n

end A211541

/-! ## A211541.P14334529378443526241

`A004526(A029578(n+1))+A001840(n)-n`
-/

namespace A211541.P14334529378443526241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A029578 (n + 1)).toNat + (A001840 n - (n : ℤ))

end

end A211541.P14334529378443526241

namespace A211541

/-- `A004526(A029578(n+1))+A001840(n)-n` -/
def P14334529378443526241.Spec : Prop :=
  ∀ n, P14334529378443526241.a n = A211541 n

end A211541

/-! ## A211541.P9891603832244686189

`A211540(n+1)+A325695(n+1)+A140106(n+2)`
-/

namespace A211541.P9891603832244686189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 1) + (A325695 (n + 1) + A140106 (n + 2))

end

end A211541.P9891603832244686189

namespace A211541

/-- `A211540(n+1)+A325695(n+1)+A140106(n+2)` -/
def P9891603832244686189.Spec : Prop :=
  ∀ n, P9891603832244686189.a n = A211541 n

end A211541

/-! ## A211541.P16222742760918827486

`A110654(A008794(n)-A008724(n))+A008724(n)`
-/

namespace A211541.P16222742760918827486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008794 n - A008724 n).toNat + A008724 n

end

end A211541.P16222742760918827486

namespace A211541

/-- `A110654(A008794(n)-A008724(n))+A008724(n)` -/
def P16222742760918827486.Spec : Prop :=
  ∀ n, P16222742760918827486.a n = A211541 n

end A211541

/-! ## A211541.P10309118132016137085

`A004396(A002620(n))-A004526(A057979(n))`
-/

namespace A211541.P10309118132016137085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A002620 n).toNat - A004526 (A057979 n).toNat

end

end A211541.P10309118132016137085

namespace A211541

/-- `A004396(A002620(n))-A004526(A057979(n))` -/
def P10309118132016137085.Spec : Prop :=
  ∀ n, P10309118132016137085.a n = A211541 n

end A211541

/-! ## A211541.P7483458992246492451

`A211521(n)-A002264(A033638(n))`
-/

namespace A211541.P7483458992246492451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211521 n - A002264 (A033638 n).toNat

end

end A211541.P7483458992246492451

namespace A211541

/-- `A211521(n)-A002264(A033638(n))` -/
def P7483458992246492451.Spec : Prop :=
  ∀ n, P7483458992246492451.a n = A211541 n

end A211541

/-! ## A211541.P5213645755806447573

`A110654(A008794(n)+A008724(n))`
-/

namespace A211541.P5213645755806447573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008794 n + A008724 n).toNat

end

end A211541.P5213645755806447573

namespace A211541

/-- `A110654(A008794(n)+A008724(n))` -/
def P5213645755806447573.Spec : Prop :=
  ∀ n, P5213645755806447573.a n = A211541 n

end A211541

/-! ## A211541.P10439671528286007676

`A110654(A008724(n)+A004526(n)²)`
-/

namespace A211541.P10439671528286007676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008724 n + A004526 n ^ 2).toNat

end

end A211541.P10439671528286007676

namespace A211541

/-- `A110654(A008724(n)+A004526(n)²)` -/
def P10439671528286007676.Spec : Prop :=
  ∀ n, P10439671528286007676.a n = A211541 n

end A211541

/-! ## A211541.P12094978122782119770

`A004525(A000212(n))-A004526(A057979(n))`
-/

namespace A211541.P12094978122782119770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000212 n).toNat - A004526 (A057979 n).toNat

end

end A211541.P12094978122782119770

namespace A211541

/-- `A004525(A000212(n))-A004526(A057979(n))` -/
def P12094978122782119770.Spec : Prop :=
  ∀ n, P12094978122782119770.a n = A211541 n

end A211541

/-! ## A211541.P16431232981583077118

`A008619(A008810(n))-A008619(A057979(n))`
-/

namespace A211541.P16431232981583077118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008810 n).toNat - A008619 (A057979 n).toNat

end

end A211541.P16431232981583077118

namespace A211541

/-- `A008619(A008810(n))-A008619(A057979(n))` -/
def P16431232981583077118.Spec : Prop :=
  ∀ n, P16431232981583077118.a n = A211541 n

end A211541

/-! ## A211541.P18187234678926565570

`A004525(A000212(n))-A002265(A093178(n))`
-/

namespace A211541.P18187234678926565570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000212 n).toNat - A002265 (A093178 n).toNat

end

end A211541.P18187234678926565570

namespace A211541

/-- `A004525(A000212(n))-A002265(A093178(n))` -/
def P18187234678926565570.Spec : Prop :=
  ∀ n, P18187234678926565570.a n = A211541 n

end A211541

/-! ## A211541.P17660967357291631848

`A008619(n*A008619(n))-A001399(n)`
-/

namespace A211541.P17660967357291631848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A008619 n).toNat - A001399 n

end

end A211541.P17660967357291631848

namespace A211541

/-- `A008619(n*A008619(n))-A001399(n)` -/
def P17660967357291631848.Spec : Prop :=
  ∀ n, P17660967357291631848.a n = A211541 n

end A211541

/-! ## A211541.P7181881694701525818

`A008619(n*A008619(n))-∑[A103221(n)]`
-/

namespace A211541.P7181881694701525818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((n : ℤ) * A008619 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211541.P7181881694701525818

namespace A211541

/-- `A008619(n*A008619(n))-∑[A103221(n)]` -/
def P7181881694701525818.Spec : Prop :=
  ∀ n, P7181881694701525818.a n = A211541 n

end A211541

/-!
# A211542: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w=4y-3x.

The programs for A211542, the canonical program `A211542.P7607861162328610110` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211542 has offset 0).

The definition of A211542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211542.P7607861162328610110

`A004652(n)-A069905(A052938(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211542

/-- `A004652(n)-A069905(A052938(n))` -/
def P7607861162328610110.Spec : Prop :=
  ∀ n, P7607861162328610110.a n = A211542 n

theorem P7607861162328610110.correct : P7607861162328610110.Spec := by
  intro n
  simp only [A211542]

end A211542

/-! ## A211542.P7410625180831951092

`A004652(n)+A266755(n)-A025767(n)`
-/

namespace A211542.P7410625180831951092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n + (A266755 n - A025767 n)

end

end A211542.P7410625180831951092

namespace A211542

/-- `A004652(n)+A266755(n)-A025767(n)` -/
def P7410625180831951092.Spec : Prop :=
  ∀ n, P7410625180831951092.a n = A211542 n

end A211542

/-! ## A211542.P3487626716597678631

`A005044(n+1)+A211520(n)+A005044(n)`
-/

namespace A211542.P3487626716597678631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + (A211520 n + A005044 n)

end

end A211542.P3487626716597678631

namespace A211542

/-- `A005044(n+1)+A211520(n)+A005044(n)` -/
def P3487626716597678631.Spec : Prop :=
  ∀ n, P3487626716597678631.a n = A211542 n

end A211542

/-! ## A211542.P5432595201033457422

`ceil((n/2)²)-A005044(n+2)`
-/

namespace A211542.P5432595201033457422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉ - A005044 (n + 2)

end

end A211542.P5432595201033457422

namespace A211542

/-- `ceil((n/2)²)-A005044(n+2)` -/
def P5432595201033457422.Spec : Prop :=
  ∀ n, P5432595201033457422.a n = A211542 n

end A211542

/-! ## A211542.P17071029138306193405

`A004652(n)-A008743(A168195(n+1))`
-/

namespace A211542.P17071029138306193405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n - A008743 (A168195 (n + 1)).toNat

end

end A211542.P17071029138306193405

namespace A211542

/-- `A004652(n)-A008743(A168195(n+1))` -/
def P17071029138306193405.Spec : Prop :=
  ∀ n, P17071029138306193405.a n = A211542 n

end A211542

/-! ## A211542.P14429987551312496532

`A008620(A118277(n))-A008642(n)`
-/

namespace A211542.P14429987551312496532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A118277 n).toNat - A008642 n

end

end A211542.P14429987551312496532

namespace A211542

/-- `A008620(A118277(n))-A008642(n)` -/
def P14429987551312496532.Spec : Prop :=
  ∀ n, P14429987551312496532.a n = A211542 n

end A211542

/-!
# A211543: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w=3x+5y.

The programs for A211543, the canonical program `A211543.P2195101067348613468` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211543 has offset 0).

The definition of A211543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211543.P2195101067348613468

`ceil((n²/3-(n+1))/5)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211543

/-- `ceil((n²/3-(n+1))/5)` -/
def P2195101067348613468.Spec : Prop :=
  ∀ n, P2195101067348613468.a n = A211543 n

theorem P2195101067348613468.correct : P2195101067348613468.Spec := by
  intro n
  simp only [A211543]

end A211543

/-! ## A211543.P15826589698462554685

`A211522(n)-A069905(n)`
-/

namespace A211543.P15826589698462554685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211522 n - A069905 n

end

end A211543.P15826589698462554685

namespace A211543

/-- `A211522(n)-A069905(n)` -/
def P15826589698462554685.Spec : Prop :=
  ∀ n, P15826589698462554685.a n = A211543 n

end A211543

/-! ## A211543.P8944795960768335349

`A001840(n)+1-A008732(n)`
-/

namespace A211543.P8944795960768335349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + (1 - A008732 n)

end

end A211543.P8944795960768335349

namespace A211543

/-- `A001840(n)+1-A008732(n)` -/
def P8944795960768335349.Spec : Prop :=
  ∀ n, P8944795960768335349.a n = A211543 n

end A211543

/-! ## A211543.P11117692681454070510

`A143978(n+1)-A183865(n+1)`
-/

namespace A211543.P11117692681454070510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143978 (n + 1) - A183865 (n + 1)

end

end A211543.P11117692681454070510

namespace A211543

/-- `A143978(n+1)-A183865(n+1)` -/
def P11117692681454070510.Spec : Prop :=
  ∀ n, P11117692681454070510.a n = A211543 n

end A211543

/-! ## A211543.P17397260169532989673

`∑[A090223(n+1)-A004396(n+1)]+1`
-/

namespace A211543.P17397260169532989673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 1) - A004396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A211543.P17397260169532989673

namespace A211543

/-- `∑[A090223(n+1)-A004396(n+1)]+1` -/
def P17397260169532989673.Spec : Prop :=
  ∀ n, P17397260169532989673.a n = A211543 n

end A211543

/-! ## A211543.P4622674341504443081

`∑[A002264(n)-A002266(n)]-A002264(n)`
-/

namespace A211543.P4622674341504443081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n - A002266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002264 n

end

end A211543.P4622674341504443081

namespace A211543

/-- `∑[A002264(n)-A002266(n)]-A002264(n)` -/
def P4622674341504443081.Spec : Prop :=
  ∀ n, P4622674341504443081.a n = A211543 n

end A211543

/-! ## A211543.P5592698208532798401

`A058937(n+2)-A130520(n)`
-/

namespace A211543.P5592698208532798401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058937 (n + 2) - A130520 n

end

end A211543.P5592698208532798401

namespace A211543

/-- `A058937(n+2)-A130520(n)` -/
def P5592698208532798401.Spec : Prop :=
  ∀ n, P5592698208532798401.a n = A211543 n

end A211543

/-! ## A211543.P7916205774279271912

`(A254011(n+1)+A211524(2*n))/2`
-/

namespace A211543.P7916205774279271912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254011 (n + 1) + A211524 (2 * n) : ℚ) / 2

end

end A211543.P7916205774279271912

namespace A211543

/-- `(A254011(n+1)+A211524(2*n))/2` -/
def P7916205774279271912.Spec : Prop :=
  ∀ n, P7916205774279271912.a n = (A211543 n : ℚ)

end A211543

/-! ## A211543.P1846092320143716413

`A008748(n+1)-A008728(2*n+1)/2`
-/

namespace A211543.P1846092320143716413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008748 (n + 1) : ℚ) - (A008728 (2 * n + 1) : ℚ) / 2

end

end A211543.P1846092320143716413

namespace A211543

/-- `A008748(n+1)-A008728(2*n+1)/2` -/
def P1846092320143716413.Spec : Prop :=
  ∀ n, P1846092320143716413.a n = (A211543 n : ℚ)

end A211543

/-! ## A211543.P13868022314947195337

`A025770(2*n+5)-(n+2)`
-/

namespace A211543.P13868022314947195337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 (2 * n + 5) - (n + 2 : ℤ)

end

end A211543.P13868022314947195337

namespace A211543

/-- `A025770(2*n+5)-(n+2)` -/
def P13868022314947195337.Spec : Prop :=
  ∀ n, P13868022314947195337.a n = A211543 n

end A211543

/-! ## A211543.P16972099524992156883

`A025795(2*n+7)-(n+2)`
-/

namespace A211543.P16972099524992156883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (2 * n + 7) - (n + 2 : ℤ)

end

end A211543.P16972099524992156883

namespace A211543

/-- `A025795(2*n+7)-(n+2)` -/
def P16972099524992156883.Spec : Prop :=
  ∀ n, P16972099524992156883.a n = A211543 n

end A211543

/-! ## A211543.P7076521665739900787

`∑[A008651(A008574(n)-1)]-1`
-/

namespace A211543.P7076521665739900787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A008574 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211543.P7076521665739900787

namespace A211543

/-- `∑[A008651(A008574(n)-1)]-1` -/
def P7076521665739900787.Spec : Prop :=
  ∀ n, P7076521665739900787.a n = A211543 n

end A211543

/-! ## A211543.P16560677931738456352

`∑[A008651(2*A004273(n)+1)]`
-/

namespace A211543.P16560677931738456352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (2 * A004273 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211543.P16560677931738456352

namespace A211543

/-- `∑[A008651(2*A004273(n)+1)]` -/
def P16560677931738456352.Spec : Prop :=
  ∀ n, P16560677931738456352.a n = A211543 n

end A211543

/-! ## A211543.P13921292841715051691

`∑[A008651(A004280(2*n+1))]`
-/

namespace A211543.P13921292841715051691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A004280 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211543.P13921292841715051691

namespace A211543

/-- `∑[A008651(A004280(2*n+1))]` -/
def P13921292841715051691.Spec : Prop :=
  ∀ n, P13921292841715051691.a n = A211543 n

end A211543

/-! ## A211543.P12430693110687101664

`∑[A008651(A004273(2*n))]-1`
-/

namespace A211543.P12430693110687101664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A004273 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A211543.P12430693110687101664

namespace A211543

/-- `∑[A008651(A004273(2*n))]-1` -/
def P12430693110687101664.Spec : Prop :=
  ∀ n, P12430693110687101664.a n = A211543 n

end A211543

/-! ## A211543.P15344344448394684783

`∑[A008651(or(1, A004273(2*n)))]`
-/

namespace A211543.P15344344448394684783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Int.lor 1 (A004273 (2 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211543.P15344344448394684783

namespace A211543

/-- `∑[A008651(or(1, A004273(2*n)))]` -/
def P15344344448394684783.Spec : Prop :=
  ∀ n, P15344344448394684783.a n = A211543 n

end A211543

/-! ## A211543.P18027570328365264461

`∑[A008651(A004273(A004273(n)+1))]`
-/

namespace A211543.P18027570328365264461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A004273 (A004273 n + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211543.P18027570328365264461

namespace A211543

/-- `∑[A008651(A004273(A004273(n)+1))]` -/
def P18027570328365264461.Spec : Prop :=
  ∀ n, P18027570328365264461.a n = A211543 n

end A211543

/-! ## A211543.P9464214193550689878

`∑[A002264(A004273(2*n))-A057355(2*n)]`
-/

namespace A211543.P9464214193550689878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004273 (2 * n)).toNat - A057355 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211543.P9464214193550689878

namespace A211543

/-- `∑[A002264(A004273(2*n))-A057355(2*n)]` -/
def P9464214193550689878.Spec : Prop :=
  ∀ n, P9464214193550689878.a n = A211543 n

end A211543

/-! ## A211543.P8862869129143047456

`A002266(A032765(n)+2)-A002264(n)`
-/

namespace A211543.P8862869129143047456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A032765 n + 2).toNat - A002264 n

end

end A211543.P8862869129143047456

namespace A211543

/-- `A002266(A032765(n)+2)-A002264(n)` -/
def P8862869129143047456.Spec : Prop :=
  ∀ n, P8862869129143047456.a n = A211543 n

end A211543

/-!
# A211544: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w=3x-5y.

The programs for A211544, the canonical program `A211544.P17142035383738019160` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211544 has offset 0).

The definition of A211544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211544.P9151625775490492516

`∑[(∑[(n*∑[n²])%5]+n)%comp[4*n]]`
-/

namespace A211544.P9151625775490492516
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j) % 5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + n) % SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211544.P9151625775490492516

namespace A211544

/-- `∑[(∑[(n*∑[n²])%5]+n)%comp[4*n]]` -/
def P9151625775490492516.Spec : Prop :=
  ∀ n, (P9151625775490492516.a n : ℤ) = A211544 n

end A211544

/-! ## A211544.P17142035383738019160

`∑[A047560(n+1)%A042968(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A211544

/-- `∑[A047560(n+1)%A042968(n+1)]` -/
def P17142035383738019160.Spec : Prop :=
  ∀ n, P17142035383738019160.a n = A211544 n

theorem P17142035383738019160.correct : P17142035383738019160.Spec := by
  intro n
  simp only [A211544]

end A211544

/-! ## A211544.P2131844589706575437

`Δ[A011892(n)]-∑[A002264(n)]`
-/

namespace A211544.P2131844589706575437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A211544.P2131844589706575437

namespace A211544

/-- `Δ[A011892(n)]-∑[A002264(n)]` -/
def P2131844589706575437.Spec : Prop :=
  ∀ n, P2131844589706575437.a n = A211544 n

end A211544

/-! ## A211544.P15358066837467345010

`A008613(A267881(2*n))+A002266(n+2)`
-/

namespace A211544.P15358066837467345010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (A267881 (2 * n)).toNat + A002266 (n + 2)

end

end A211544.P15358066837467345010

namespace A211544

/-- `A008613(A267881(2*n))+A002266(n+2)` -/
def P15358066837467345010.Spec : Prop :=
  ∀ n, P15358066837467345010.a n = A211544 n

end A211544

/-! ## A211544.P5718310500110205300

`A004396(A011858(n)+A011658(n))`
-/

namespace A211544.P5718310500110205300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A011858 n + A011658 n).toNat

end

end A211544.P5718310500110205300

namespace A211544

/-- `A004396(A011858(n)+A011658(n))` -/
def P5718310500110205300.Spec : Prop :=
  ∀ n, P5718310500110205300.a n = A211544 n

end A211544

/-! ## A211544.P13459298614914732014

`A004396(Δ[A181640(n)]-A057355(n))`
-/

namespace A211544.P13459298614914732014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (n + 1) - f1 n - A057355 n).toNat

end

end A211544.P13459298614914732014

namespace A211544

/-- `A004396(Δ[A181640(n)]-A057355(n))` -/
def P13459298614914732014.Spec : Prop :=
  ∀ n, P13459298614914732014.a n = A211544 n

end A211544

/-! ## A211544.P2627220424656453828

`A004396(∑[A194222(n+1)]-A057355(n))`
-/

namespace A211544.P2627220424656453828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j - A057355 n).toNat

end

end A211544.P2627220424656453828

namespace A211544

/-- `A004396(∑[A194222(n+1)]-A057355(n))` -/
def P2627220424656453828.Spec : Prop :=
  ∀ n, P2627220424656453828.a n = A211544 n

end A211544

/-! ## A211544.P14573628500060997245

`A004396(A011858(n+2)-A057354(2*n+1))`
-/

namespace A211544.P14573628500060997245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A011858 (n + 2) - A057354 (2 * n + 1)).toNat

end

end A211544.P14573628500060997245

namespace A211544

/-- `A004396(A011858(n+2)-A057354(2*n+1))` -/
def P14573628500060997245.Spec : Prop :=
  ∀ n, P14573628500060997245.a n = A211544 n

end A211544

/-! ## A211544.P13502027632636924255

`A004396(∑[A057354(n+2)]-A057354(2*n+1))`
-/

namespace A211544.P13502027632636924255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j - A057354 (2 * n + 1)).toNat

end

end A211544.P13502027632636924255

namespace A211544

/-- `A004396(∑[A057354(n+2)]-A057354(2*n+1))` -/
def P13502027632636924255.Spec : Prop :=
  ∀ n, P13502027632636924255.a n = A211544 n

end A211544

/-! ## A211544.P11453477759526359959

`A288156(A000212(n+1))-A288156(n)`
-/

namespace A211544.P11453477759526359959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (A000212 (n + 1)).toNat - A288156 n

end

end A211544.P11453477759526359959

namespace A211544

/-- `A288156(A000212(n+1))-A288156(n)` -/
def P11453477759526359959.Spec : Prop :=
  ∀ n, P11453477759526359959.a n = A211544 n

end A211544

/-!
# A211545: Number of ordered triples (w,x,y) with all terms in {-n,...-1,1,...,n} and w+x+y>0.

The programs for A211545, the canonical program `A211545.P2594090177456453528` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211545 has offset 0).

The definition of A211545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211545.P516673038898435723

`n*(3-3*n+8*n²)/2`
-/

namespace A211545.P516673038898435723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (3 - (3 * n : ℤ) + (8 * n ^ 2 : ℤ)) : ℚ) / 2

end

end A211545.P516673038898435723

namespace A211545

/-- `n*(3-3*n+8*n²)/2` -/
def P516673038898435723.Spec : Prop :=
  ∀ n, P516673038898435723.a n = (A211545 n : ℚ)

theorem P516673038898435723.correct : P516673038898435723.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A211545, Nat.add_sub_cancel, A211545.P516673038898435723.a, A211545.P2594090177456453528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A211545, Nat.add_sub_cancel, A211545.P516673038898435723.a, A211545.P2594090177456453528.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A211545

/-! ## A211545.P2594090177456453528

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=29, a(3)=99`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211545

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2594090177456453528.Spec : Prop :=
  ∀ n, P2594090177456453528.a n = A211545 n

theorem P2594090177456453528.correct : P2594090177456453528.Spec := by
  intro n
  simp only [A211545]

end A211545

/-! ## A211545.P14955645737139437001

`n/2*∑[ogf((1+5x+8x^2+2x^3)/(1-2x+x^2))]`
-/

namespace A211545.P14955645737139437001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 8, 2] [1, -2, 1] n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A211545.P14955645737139437001

namespace A211545

/-- `n/2*∑[ogf((1+5x+8x^2+2x^3)/(1-2x+x^2))]` -/
def P14955645737139437001.Spec : Prop :=
  ∀ n, P14955645737139437001.a n = (A211545 n : ℚ)

end A211545

/-! ## A211545.P346942265639035182

`abs(∑[∑[3*n]+2]-1-A081583(n))`
-/

namespace A211545.P346942265639035182
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A081583 n|

end

end A211545.P346942265639035182

namespace A211545

/-- `abs(∑[∑[3*n]+2]-1-A081583(n))` -/
def P346942265639035182.Spec : Prop :=
  ∀ n, P346942265639035182.a n = A211545 n

end A211545

/-! ## A211545.P2891248100378248436

`A027444(n)+A005945(n)`
-/

namespace A211545.P2891248100378248436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 n + A005945 n

end

end A211545.P2891248100378248436

namespace A211545

/-- `A027444(n)+A005945(n)` -/
def P2891248100378248436.Spec : Prop :=
  ∀ n, P2891248100378248436.a n = A211545 n

end A211545

/-! ## A211545.P1284748331668443717

`A051895(n)+A015240(n)`
-/

namespace A211545.P1284748331668443717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n + A015240 n

end

end A211545.P1284748331668443717

namespace A211545

/-- `A051895(n)+A015240(n)` -/
def P1284748331668443717.Spec : Prop :=
  ∀ n, P1284748331668443717.a n = A211545 n

end A211545

/-! ## A211545.P5122380467360109839

`A056578(n)-A006137(n)`
-/

namespace A211545.P5122380467360109839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056578 n - A006137 n

end

end A211545.P5122380467360109839

namespace A211545

/-- `A056578(n)-A006137(n)` -/
def P5122380467360109839.Spec : Prop :=
  ∀ n, P5122380467360109839.a n = A211545 n

end A211545

/-! ## A211545.P8695580454156271482

`A061804(n)-A005449(n)`
-/

namespace A211545.P8695580454156271482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n - A005449 n

end

end A211545.P8695580454156271482

namespace A211545

/-- `A061804(n)-A005449(n)` -/
def P8695580454156271482.Spec : Prop :=
  ∀ n, P8695580454156271482.a n = A211545 n

end A211545

/-! ## A211545.P3138390836193809547

`A084367(n)-A022268(n)`
-/

namespace A211545.P3138390836193809547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 n - A022268 n

end

end A211545.P3138390836193809547

namespace A211545

/-- `A084367(n)-A022268(n)` -/
def P3138390836193809547.Spec : Prop :=
  ∀ n, P3138390836193809547.a n = A211545 n

end A211545

/-! ## A211545.P3926388243282031598

`A110451(n)-A022264(n)`
-/

namespace A211545.P3926388243282031598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110451 n - A022264 n

end

end A211545.P3926388243282031598

namespace A211545

/-- `A110451(n)-A022264(n)` -/
def P3926388243282031598.Spec : Prop :=
  ∀ n, P3926388243282031598.a n = A211545 n

end A211545

/-! ## A211545.P18437491066290417959

`A016743(n)-A211612(n)`
-/

namespace A211545.P18437491066290417959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 n - A211612 n

end

end A211545.P18437491066290417959

namespace A211545

/-- `A016743(n)-A211612(n)` -/
def P18437491066290417959.Spec : Prop :=
  ∀ n, P18437491066290417959.a n = A211545 n

end A211545

/-! ## A211545.P14384616923761736170

`A300758(n)-A022273(n)`
-/

namespace A211545.P14384616923761736170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 n - A022273 n

end

end A211545.P14384616923761736170

namespace A211545

/-- `A300758(n)-A022273(n)` -/
def P14384616923761736170.Spec : Prop :=
  ∀ n, P14384616923761736170.a n = A211545 n

end A211545

/-! ## A211545.P10330391545139176795

`A302302(n)-A033581(n)`
-/

namespace A211545.P10330391545139176795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302302 n - A033581 n

end

end A211545.P10330391545139176795

namespace A211545

/-- `A302302(n)-A033581(n)` -/
def P10330391545139176795.Spec : Prop :=
  ∀ n, P10330391545139176795.a n = A211545 n

end A211545

/-! ## A211545.P911036552047082132

`A395241(n)-A062741(n)`
-/

namespace A211545.P911036552047082132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395241 n - A062741 n

end

end A211545.P911036552047082132

namespace A211545

/-- `A395241(n)-A062741(n)` -/
def P911036552047082132.Spec : Prop :=
  ∀ n, P911036552047082132.a n = A211545 n

end A211545

/-! ## A211545.P17262849016822362231

`A103532(n)-A381109(n)`
-/

namespace A211545.P17262849016822362231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103532 n - A381109 n

end

end A211545.P17262849016822362231

namespace A211545

/-- `A103532(n)-A381109(n)` -/
def P17262849016822362231.Spec : Prop :=
  ∀ n, P17262849016822362231.a n = A211545 n

end A211545

/-! ## A211545.P14952830204744605299

`A268644(n)+A095794(n+1)`
-/

namespace A211545.P14952830204744605299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268644 n + A095794 (n + 1)

end

end A211545.P14952830204744605299

namespace A211545

/-- `A268644(n)+A095794(n+1)` -/
def P14952830204744605299.Spec : Prop :=
  ∀ n, P14952830204744605299.a n = A211545 n

end A211545

/-! ## A211545.P1222528823614020991

`A393231(n+1)+A329530(n)`
-/

namespace A211545.P1222528823614020991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393231 (n + 1) + A329530 n

end

end A211545.P1222528823614020991

namespace A211545

/-- `A393231(n+1)+A329530(n)` -/
def P1222528823614020991.Spec : Prop :=
  ∀ n, P1222528823614020991.a n = A211545 n

end A211545

/-! ## A211545.P14784691082443653857

`A081583(n)-A132127(n+1)`
-/

namespace A211545.P14784691082443653857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081583 n - A132127 (n + 1)

end

end A211545.P14784691082443653857

namespace A211545

/-- `A081583(n)-A132127(n+1)` -/
def P14784691082443653857.Spec : Prop :=
  ∀ n, P14784691082443653857.a n = A211545 n

end A211545

/-! ## A211545.P12885076969714226525

`A105374(n)-A115067(n+1)`
-/

namespace A211545.P12885076969714226525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105374 n - A115067 (n + 1)

end

end A211545.P12885076969714226525

namespace A211545

/-- `A105374(n)-A115067(n+1)` -/
def P12885076969714226525.Spec : Prop :=
  ∀ n, P12885076969714226525.a n = A211545 n

end A211545

/-! ## A211545.P3425666305044347906

`A317297(n+1)-A000326(n)`
-/

namespace A211545.P3425666305044347906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317297 (n + 1) - A000326 n

end

end A211545.P3425666305044347906

namespace A211545

/-- `A317297(n+1)-A000326(n)` -/
def P3425666305044347906.Spec : Prop :=
  ∀ n, P3425666305044347906.a n = A211545 n

end A211545

/-!
# A211546: Number of ordered triples (w,x,y) with all terms in {1,...,n} and w = 3x-3y.

The programs for A211546, the canonical program `A211546.P12685251211447747206` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211546 has offset 0).

The definition of A211546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211546.P12685251211447747206

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=3, a(5)=4, a(6)=9`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211546

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P12685251211447747206.Spec : Prop :=
  ∀ n, P12685251211447747206.a n = A211546 n

theorem P12685251211447747206.correct : P12685251211447747206.Spec := by
  intro n
  simp only [A211546]

end A211546

/-! ## A211546.P11091752914281197646

`∑[floor(n/3)]+floor(n/3)²`
-/

namespace A211546.P11091752914281197646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n : ℚ) / 3⌋ ^ 2

end

end A211546.P11091752914281197646

namespace A211546

/-- `∑[floor(n/3)]+floor(n/3)²` -/
def P11091752914281197646.Spec : Prop :=
  ∀ n, P11091752914281197646.a n = A211546 n

end A211546

/-! ## A211546.P12662421882205200487

`∑[a(n-3)+gcd(3, n)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A211546.P12662421882205200487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n f1 =>
  f1 (n - 3) + Nat.gcd 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211546.P12662421882205200487

namespace A211546

/-- `∑[a(n-3)+gcd(3, n)]` -/
def P12662421882205200487.Spec : Prop :=
  ∀ n, (P12662421882205200487.a n : ℤ) = A211546 n

end A211546

/-! ## A211546.P16478159186591652527

`A130520(A047223(n+1))`
-/

namespace A211546.P16478159186591652527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (A047223 (n + 1)).toNat

end

end A211546.P16478159186591652527

namespace A211546

/-- `A130520(A047223(n+1))` -/
def P16478159186591652527.Spec : Prop :=
  ∀ n, P16478159186591652527.a n = A211546 n

end A211546

/-! ## A211546.P8521943603522491364

`A130520(lt[A285583(n+3), 0]+1)`
-/

namespace A211546.P8521943603522491364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285583 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A211546.P8521943603522491364

namespace A211546

/-- `A130520(lt[A285583(n+3), 0]+1)` -/
def P8521943603522491364.Spec : Prop :=
  ∀ n, P8521943603522491364.a n = A211546 n

end A211546

/-! ## A211546.P6725006134556913127

`A008803(A063241(n+1))`
-/

namespace A211546.P6725006134556913127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008803 (A063241 (n + 1)).toNat

end

end A211546.P6725006134556913127

namespace A211546

/-- `A008803(A063241(n+1))` -/
def P6725006134556913127.Spec : Prop :=
  ∀ n, P6725006134556913127.a n = A211546 n

end A211546

/-!
# A211547: The squares n^2, n >= 0, each one written three times.

The programs for A211547, the canonical program `A211547.P8304566921588765029` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211547 has offset 0).

The definition of A211547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211547.P8304566921588765029

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211547

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P8304566921588765029.Spec : Prop :=
  ∀ n, P8304566921588765029.a n = A211547 n

theorem P8304566921588765029.correct : P8304566921588765029.Spec := by
  intro n
  simp only [A211547]

end A211547

/-! ## A211547.P982964743135699118

`floor(n/3)²`
-/

namespace A211547.P982964743135699118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ ^ 2

end

end A211547.P982964743135699118

namespace A211547

/-- `floor(n/3)²` -/
def P982964743135699118.Spec : Prop :=
  ∀ n, P982964743135699118.a n = A211547 n

end A211547

/-! ## A211547.P12082012499392827870

`and((comp[or(3, n)]-n)², -3)`
-/

namespace A211547.P12082012499392827870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) ^ 2) (-3)

end

end A211547.P12082012499392827870

namespace A211547

/-- `and((comp[or(3, n)]-n)², -3)` -/
def P12082012499392827870.Spec : Prop :=
  ∀ n, P12082012499392827870.a n = A211547 n

end A211547

/-! ## A211547.P1277446012495638994

`floor(n/3)^gcd(2, 2*n)`
-/

namespace A211547.P1277446012495638994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ ^ Nat.gcd 2 (2 * n)

end

end A211547.P1277446012495638994

namespace A211547

/-- `floor(n/3)^gcd(2, 2*n)` -/
def P1277446012495638994.Spec : Prop :=
  ∀ n, P1277446012495638994.a n = A211547 n

end A211547

/-! ## A211547.P3798579346944244587

`and(-3, round((n-1)/3)²)`
-/

namespace A211547.P3798579346944244587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3) ^ 2)

end

end A211547.P3798579346944244587

namespace A211547

/-- `and(-3, round((n-1)/3)²)` -/
def P3798579346944244587.Spec : Prop :=
  ∀ n, P3798579346944244587.a n = A211547 n

end A211547

/-! ## A211547.P4845759576232157149

`floor(∑[a(n-3)²]²)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A211547.P4845759576232157149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A211547.P4845759576232157149

namespace A211547

/-- `floor(∑[a(n-3)²]²)` -/
def P4845759576232157149.Spec : Prop :=
  ∀ n, (P4845759576232157149.a n : ℤ) = A211547 n

end A211547

/-! ## A211547.P6961627763614557052

`A002264(n)^2`
-/

namespace A211547.P6961627763614557052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n ^ 2

end

end A211547.P6961627763614557052

namespace A211547

/-- `A002264(n)^2` -/
def P6961627763614557052.Spec : Prop :=
  ∀ n, P6961627763614557052.a n = A211547 n

end A211547

/-! ## A211547.P2840463012370123355

`A000290(floor(n/3))`
-/

namespace A211547.P2840463012370123355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ⌊(n : ℚ) / 3⌋.toNat

end

end A211547.P2840463012370123355

namespace A211547

/-- `A000290(floor(n/3))` -/
def P2840463012370123355.Spec : Prop :=
  ∀ n, P2840463012370123355.a n = A211547 n

end A211547

/-! ## A211547.P12277300085901981040

`n²-A213035(n)`
-/

namespace A211547.P12277300085901981040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A213035 n

end

end A211547.P12277300085901981040

namespace A211547

/-- `n²-A213035(n)` -/
def P12277300085901981040.Spec : Prop :=
  ∀ n, P12277300085901981040.a n = A211547 n

end A211547

/-! ## A211547.P12691097061335354942

`A008794(floor(2*n/3))`
-/

namespace A211547.P12691097061335354942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A211547.P12691097061335354942

namespace A211547

/-- `A008794(floor(2*n/3))` -/
def P12691097061335354942.Spec : Prop :=
  ∀ n, P12691097061335354942.a n = A211547 n

end A211547

/-! ## A211547.P15493025076197834293

`A002620(2*A002264(n))`
-/

namespace A211547.P15493025076197834293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A002264 n).toNat

end

end A211547.P15493025076197834293

namespace A211547

/-- `A002620(2*A002264(n))` -/
def P15493025076197834293.Spec : Prop :=
  ∀ n, P15493025076197834293.a n = A211547 n

end A211547

/-! ## A211547.P8421231635729097230

`A008133(n-A011655(n))`
-/

namespace A211547.P8421231635729097230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 ((n : ℤ) - A011655 n).toNat

end

end A211547.P8421231635729097230

namespace A211547

/-- `A008133(n-A011655(n))` -/
def P8421231635729097230.Spec : Prop :=
  ∀ n, P8421231635729097230.a n = A211547 n

end A211547

/-! ## A211547.P14893996392918368545

`A008794(n)-A213029(n)`
-/

namespace A211547.P14893996392918368545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A213029 n

end

end A211547.P14893996392918368545

namespace A211547

/-- `A008794(n)-A213029(n)` -/
def P14893996392918368545.Spec : Prop :=
  ∀ n, P14893996392918368545.a n = A211547 n

end A211547

/-! ## A211547.P11924262459714706681

`A002620(n-A008611(n+1))`
-/

namespace A211547.P11924262459714706681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((n : ℤ) - A008611 (n + 1)).toNat

end

end A211547.P11924262459714706681

namespace A211547

/-- `A002620(n-A008611(n+1))` -/
def P11924262459714706681.Spec : Prop :=
  ∀ n, P11924262459714706681.a n = A211547 n

end A211547

/-! ## A211547.P13190579283237908942

`A004652(n-A008611(n+1))`
-/

namespace A211547.P13190579283237908942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 ((n : ℤ) - A008611 (n + 1)).toNat

end

end A211547.P13190579283237908942

namespace A211547

/-- `A004652(n-A008611(n+1))` -/
def P13190579283237908942.Spec : Prop :=
  ∀ n, P13190579283237908942.a n = A211547 n

end A211547

/-! ## A211547.P7932998218913506702

`A087278(n)-A322042(n+1)`
-/

namespace A211547.P7932998218913506702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 n - A322042 (n + 1)

end

end A211547.P7932998218913506702

namespace A211547

/-- `A087278(n)-A322042(n+1)` -/
def P7932998218913506702.Spec : Prop :=
  ∀ n, P7932998218913506702.a n = A211547 n

end A211547

/-! ## A211547.P3714962666426084328

`A075561(n+1)-A130823(n+1)`
-/

namespace A211547.P3714962666426084328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075561 (n + 1) - A130823 (n + 1)

end

end A211547.P3714962666426084328

namespace A211547

/-- `A075561(n+1)-A130823(n+1)` -/
def P3714962666426084328.Spec : Prop :=
  ∀ n, P3714962666426084328.a n = A211547 n

end A211547

/-! ## A211547.P4400931093461688073

`A251599(n+1)-A050271(n+1)`
-/

namespace A211547.P4400931093461688073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251599 (n + 1) - A050271 (n + 1)

end

end A211547.P4400931093461688073

namespace A211547

/-- `A251599(n+1)-A050271(n+1)` -/
def P4400931093461688073.Spec : Prop :=
  ∀ n, P4400931093461688073.a n = A211547 n

end A211547

/-! ## A211547.P18012447686454878417

`A002620(A002264(n)+A002264(n))`
-/

namespace A211547.P18012447686454878417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002264 n + A002264 n).toNat

end

end A211547.P18012447686454878417

namespace A211547

/-- `A002620(A002264(n)+A002264(n))` -/
def P18012447686454878417.Spec : Prop :=
  ∀ n, P18012447686454878417.a n = A211547 n

end A211547

/-!
# A211548: Sum of primes below Fibonacci(n).

The programs for A211548, there is no canonical definition to state claims against.
-/

/-! ## A211548.P11539787100240047895

`A007504(A182564(n))`
-/

namespace A211548.P11539787100240047895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A182564 n).toNat

end

end A211548.P11539787100240047895

/-! ## A211548.P16552645496728751827

`A175965(A182564(n)+2)-2`
-/

namespace A211548.P16552645496728751827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (A182564 n + 2).toNat - 2

end

end A211548.P16552645496728751827

/-! ## A211548.P2617061891033802519

`A066911(A138185(n))`
-/

namespace A211548.P2617061891033802519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A138185 n).toNat

end

end A211548.P2617061891033802519

/-! ## A211548.P18258284946661882655

`A034387(A138185(n)-1)`
-/

namespace A211548.P18258284946661882655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A138185 n - 1).toNat

end

end A211548.P18258284946661882655

/-! ## A211548.P4703694464049907126

`A066911(A007918(A000045(n)))`
-/

namespace A211548.P4703694464049907126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A007918 (A000045 n).toNat).toNat

end

end A211548.P4703694464049907126

/-!
# A211549: Number of (n+1) X (n+1) -9..9 symmetric matrices with every 2 X 2 subblock having sum zero and one or two distinct values.

The programs for A211549, the canonical program `A211549.P12408494511822516736` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211549 has offset 1).

The definition of A211549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211549.P12408494511822516736

`a(n-1)+a(n-2)-13` with `a(0)=31, a(1)=43`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211549

/-- `a(n-1)+a(n-2)-13` -/
def P12408494511822516736.Spec : Prop :=
  ∀ n, P12408494511822516736.a n = A211549 (n + 1)

theorem P12408494511822516736.correct : P12408494511822516736.Spec := by
  intro n
  simp only [A211549, Nat.add_sub_cancel]

end A211549

/-! ## A211549.P9466559059446834569

`a(n-1)-(13-a(n-2))` with `a(0)=31, a(1)=43`
-/

namespace A211549.P9466559059446834569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31, 43] fun n a =>
  a (n - 1) - (13 - a (n - 2))

end

end A211549.P9466559059446834569

namespace A211549

/-- `a(n-1)-(13-a(n-2))` -/
def P9466559059446834569.Spec : Prop :=
  ∀ n, P9466559059446834569.a n = A211549 (n + 1)

theorem P9466559059446834569.correct : P9466559059446834569.Spec := by
  intro n
  simp only [A211549, Nat.add_sub_cancel, A211549.P9466559059446834569.a, A211549.P12408494511822516736.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211549

/-! ## A211549.P15357535025820605870

`A211813(n+1)-1`
-/

namespace A211549.P15357535025820605870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211813 (n + 1) - 1

end

end A211549.P15357535025820605870

namespace A211549

/-- `A211813(n+1)-1` -/
def P15357535025820605870.Spec : Prop :=
  ∀ n, P15357535025820605870.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P6145871952517603869

`A211710(n+1)-3`
-/

namespace A211549.P6145871952517603869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211710 (n + 1) - 3

end

end A211549.P6145871952517603869

namespace A211549

/-- `A211710(n+1)-3` -/
def P6145871952517603869.Spec : Prop :=
  ∀ n, P6145871952517603869.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P8134577180432907503

`6*A048584(n)+1`
-/

namespace A211549.P8134577180432907503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A048584 n + 1

end

end A211549.P8134577180432907503

namespace A211549

/-- `6*A048584(n)+1` -/
def P8134577180432907503.Spec : Prop :=
  ∀ n, P8134577180432907503.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P14088612512700087654

`6*A020706(n)+7`
-/

namespace A211549.P14088612512700087654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A020706 n + 7

end

end A211549.P14088612512700087654

namespace A211549

/-- `6*A020706(n)+7` -/
def P14088612512700087654.Spec : Prop :=
  ∀ n, P14088612512700087654.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P12857024873394465359

`A330010(n+3)+13`
-/

namespace A211549.P12857024873394465359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330010 (n + 3) + 13

end

end A211549.P12857024873394465359

namespace A211549

/-- `A330010(n+3)+13` -/
def P12857024873394465359.Spec : Prop :=
  ∀ n, P12857024873394465359.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P15475079570506739372

`3*A211322(n+1)-2`
-/

namespace A211549.P15475079570506739372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A211322 (n + 1) - 2

end

end A211549.P15475079570506739372

namespace A211549

/-- `3*A211322(n+1)-2` -/
def P15475079570506739372.Spec : Prop :=
  ∀ n, P15475079570506739372.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P14867494958552262351

`6*A006327(n+4)+31`
-/

namespace A211549.P14867494958552262351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006327 (n + 4) + 31

end

end A211549.P14867494958552262351

namespace A211549

/-- `6*A006327(n+4)+31` -/
def P14867494958552262351.Spec : Prop :=
  ∀ n, P14867494958552262351.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P2028117943450156909

`2*3*(A020701(n)+2)+1`
-/

namespace A211549.P2028117943450156909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * (A020701 n + 2)) + 1

end

end A211549.P2028117943450156909

namespace A211549

/-- `2*3*(A020701(n)+2)+1` -/
def P2028117943450156909.Spec : Prop :=
  ∀ n, P2028117943450156909.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P10520435735332863883

`6*(A000045(n+4)+2)+1`
-/

namespace A211549.P10520435735332863883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000045 (n + 4) + 2) + 1

end

end A211549.P10520435735332863883

namespace A211549

/-- `6*(A000045(n+4)+2)+1` -/
def P10520435735332863883.Spec : Prop :=
  ∀ n, P10520435735332863883.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P6268217418830779618

`6*(A001911(n+1)+3)+7`
-/

namespace A211549.P6268217418830779618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A001911 (n + 1) + 3) + 7

end

end A211549.P6268217418830779618

namespace A211549

/-- `6*(A001911(n+1)+3)+7` -/
def P6268217418830779618.Spec : Prop :=
  ∀ n, P6268217418830779618.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P14743129732326785706

`A211466(n+1)+A090991(n+1)`
-/

namespace A211549.P14743129732326785706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211466 (n + 1) + A090991 (n + 1)

end

end A211549.P14743129732326785706

namespace A211549

/-- `A211466(n+1)+A090991(n+1)` -/
def P14743129732326785706.Spec : Prop :=
  ∀ n, P14743129732326785706.a n = A211549 (n + 1)

end A211549

/-! ## A211549.P12709018895458510378

`A211253(n+1)+A211322(n+1)-1`
-/

namespace A211549.P12709018895458510378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211253 (n + 1) + (A211322 (n + 1) - 1)

end

end A211549.P12709018895458510378

namespace A211549

/-- `A211253(n+1)+A211322(n+1)-1` -/
def P12709018895458510378.Spec : Prop :=
  ∀ n, P12709018895458510378.a n = A211549 (n + 1)

end A211549

/-!
# A211557: Number of nonnegative integer arrays of length n+3 with new values 0 upwards introduced in order, and containing the value 3.

The programs for A211557, there is no canonical definition to state claims against.
-/

/-! ## A211557.P3286691204485073938

`∑[A005465(n+2)]`
-/

namespace A211557.P3286691204485073938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005465 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211557.P3286691204485073938

/-! ## A211557.P3154228838478354008

`A211561(A027379(n+2))`
-/

namespace A211557.P3154228838478354008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A027379 (n + 2)).toNat

end

end A211557.P3154228838478354008

/-! ## A211557.P12767671623755121237

`A211561(A055998(n+2))`
-/

namespace A211557.P12767671623755121237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A055998 (n + 2)).toNat

end

end A211557.P12767671623755121237

/-! ## A211557.P4916200087579546538

`A133611(A167499(n+3))`
-/

namespace A211557.P4916200087579546538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A167499 (n + 3)).toNat

end

end A211557.P4916200087579546538

/-! ## A211557.P15873471477547452439

`A133611(A056000(n)+15)`
-/

namespace A211557.P15873471477547452439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A056000 n + 15).toNat

end

end A211557.P15873471477547452439

/-! ## A211557.P4629521679596730028

`A211561(A052905(n+1)+2)`
-/

namespace A211557.P4629521679596730028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A052905 (n + 1) + 2).toNat

end

end A211557.P4629521679596730028

/-! ## A211557.P3253746209053805230

`A211561(A000124(n+4)-4)`
-/

namespace A211557.P3253746209053805230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A000124 (n + 4) - 4).toNat

end

end A211557.P3253746209053805230

/-! ## A211557.P12016512456250067942

`A211561(record[A191558(A027379(n))])`
-/

namespace A211557.P12016512456250067942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A211557.P12016512456250067942

/-! ## A211557.P13941764288550316682

`A211561(A167614(n+1)+A005408(n))`
-/

namespace A211557.P13941764288550316682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A167614 (n + 1) + A005408 n).toNat

end

end A211557.P13941764288550316682

/-!
# A211558: Number of nonnegative integer arrays of length n+4 with new values 0 upwards introduced in order, and containing the value 4.

The programs for A211558, there is no canonical definition to state claims against.
-/

/-! ## A211558.P1676951903613161357

`A211561(A046691(n+3))`
-/

namespace A211558.P1676951903613161357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A046691 (n + 3)).toNat

end

end A211558.P1676951903613161357

/-! ## A211558.P18406965186746443461

`A211561(A052905(n+2)+1)`
-/

namespace A211558.P18406965186746443461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A052905 (n + 2) + 1).toNat

end

end A211558.P18406965186746443461

/-! ## A211558.P15887609708444163775

`A133611(A167499(n+4)+1)`
-/

namespace A211558.P15887609708444163775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A167499 (n + 4) + 1).toNat

end

end A211558.P15887609708444163775

/-! ## A211558.P803026289535575000

`A133611(A000217(n+5)+6)`
-/

namespace A211558.P803026289535575000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A000217 (n + 5) + 6).toNat

end

end A211558.P803026289535575000

/-! ## A211558.P6131075855162147504

`A211561(A000124(n+5)-5)`
-/

namespace A211558.P6131075855162147504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A000124 (n + 5) - 5).toNat

end

end A211558.P6131075855162147504

/-! ## A211558.P5549705768723262276

`A133611(A027379(n+3)+9)`
-/

namespace A211558.P5549705768723262276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A027379 (n + 3) + 9).toNat

end

end A211558.P5549705768723262276

/-! ## A211558.P4003354681843153501

`A211561(A161680(n+4)+A005408(n+2))`
-/

namespace A211558.P4003354681843153501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A161680 (n + 4) + A005408 (n + 2)).toNat

end

end A211558.P4003354681843153501

/-!
# A211559: Number of nonnegative integer arrays of length n+5 with new values 0 upwards introduced in order, and containing the value 5.

The programs for A211559, there is no canonical definition to state claims against.
-/

/-! ## A211559.P3525960809093497399

`A211561(A052905(n+3))`
-/

namespace A211559.P3525960809093497399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A052905 (n + 3)).toNat

end

end A211559.P3525960809093497399

/-! ## A211559.P1408375876339375620

`A133611(A167499(n+5)+2)`
-/

namespace A211559.P1408375876339375620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A167499 (n + 5) + 2).toNat

end

end A211559.P1408375876339375620

/-! ## A211559.P15074646386417347618

`A133611(A000124(n+6)+6)`
-/

namespace A211559.P15074646386417347618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A000124 (n + 6) + 6).toNat

end

end A211559.P15074646386417347618

/-! ## A211559.P2427875076563809314

`A211561(A000124(n+6)-6)`
-/

namespace A211559.P2427875076563809314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A000124 (n + 6) - 6).toNat

end

end A211559.P2427875076563809314

/-! ## A211559.P17394043777704820948

`A211561(Δ[Δ[A006504(n+1)]])`
-/

namespace A211559.P17394043777704820948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (f1 (n + 1) - f1 n).toNat

end

end A211559.P17394043777704820948

/-!
# A211560: Number of nonnegative integer arrays of length n+6 with new values 0 upwards introduced in order, and containing the value 6.

The programs for A211560, there is no canonical definition to state claims against.
-/

/-! ## A211560.P4043606019187605262

`A211561(A055999(n+4))`
-/

namespace A211560.P4043606019187605262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A055999 (n + 4)).toNat

end

end A211560.P4043606019187605262

/-! ## A211560.P14548502660017285947

`A133611(A167499(n+6)+3)`
-/

namespace A211560.P14548502660017285947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A167499 (n + 6) + 3).toNat

end

end A211560.P14548502660017285947

/-! ## A211560.P16310589382019597227

`A211561(A000124(n+7)-7)`
-/

namespace A211560.P16310589382019597227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A000124 (n + 7) - 7).toNat

end

end A211560.P16310589382019597227

/-! ## A211560.P6777273469253771014

`A133611(A000124(n+8)-(n+1))`
-/

namespace A211560.P6777273469253771014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A211560.P6777273469253771014

/-! ## A211560.P6247642838939429516

`A211561(A161680(n+6)+A005408(n+3))`
-/

namespace A211560.P6247642838939429516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A161680 (n + 6) + A005408 (n + 3)).toNat

end

end A211560.P6247642838939429516

/-!
# A211561: T(n,k) = number of nonnegative integer arrays of length n+k-1 with new values 0 upwards introduced in order, and containing the value k-1.

The programs for A211561, there is no canonical definition to state claims against.
-/

/-! ## A211561.P14999409987844181675

`A137650(A038722(n+1))`
-/

namespace A211561.P14999409987844181675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137650 (A038722 (n + 1)).toNat

end

end A211561.P14999409987844181675

/-! ## A211561.P10764481273055578177

`A133611(A099375(n)+2+n)`
-/

namespace A211561.P10764481273055578177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A099375 n + 2 + (n : ℤ)).toNat

end

end A211561.P10764481273055578177

/-! ## A211561.P16173441316455563162

`A133611(A038722(A014132(n+1)))`
-/

namespace A211561.P16173441316455563162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A038722 (A014132 (n + 1)).toNat).toNat

end

end A211561.P16173441316455563162

/-! ## A211561.P6648017207092164052

`A133611(A133196(n+1)+A061579(n))`
-/

namespace A211561.P6648017207092164052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A133196 (n + 1) + A061579 n).toNat

end

end A211561.P6648017207092164052

/-! ## A211561.P18434218093354038024

`A133611(A038722(n+1)+A003057(n+2))`
-/

namespace A211561.P18434218093354038024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A038722 (n + 1) + A003057 (n + 2)).toNat

end

end A211561.P18434218093354038024

/-! ## A211561.P2279705792686878071

`A133611(A140978(n+1)-A007401(n+1))`
-/

namespace A211561.P2279705792686878071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A140978 (n + 1) - A007401 (n + 1)).toNat

end

end A211561.P2279705792686878071

/-!
# A211562: Number of nonnegative integer arrays of length n+2 with new values 0 upwards introduced in order, and containing the value n-1.

The programs for A211562, the canonical program `A211562.P9446412628703786193` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211562 has offset 1).

The definition of A211562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211562.P9446412628703786193

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=5, a(1)=14, a(2)=36, a(3)=81, a(4)=162`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211562

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9446412628703786193.Spec : Prop :=
  ∀ n, P9446412628703786193.a n = A211562 (n + 1)

theorem P9446412628703786193.correct : P9446412628703786193.Spec := by
  intro n
  simp only [A211562, Nat.add_sub_cancel]

end A211562

/-! ## A211562.P7362126278086258382

`∑[(n+1)*(∑[n+1]+1)+1]+2`
-/

namespace A211562.P7362126278086258382
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A211562.P7362126278086258382

namespace A211562

/-- `∑[(n+1)*(∑[n+1]+1)+1]+2` -/
def P7362126278086258382.Spec : Prop :=
  ∀ n, (P7362126278086258382.a n : ℤ) = A211562 (n + 1)

end A211562

/-! ## A211562.P5614324165816787069

`Δ[A341209(n)+A051836(n)]`
-/

namespace A211562.P5614324165816787069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n + A051836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211562.P5614324165816787069

namespace A211562

/-- `Δ[A341209(n)+A051836(n)]` -/
def P5614324165816787069.Spec : Prop :=
  ∀ n, P5614324165816787069.a n = A211562 (n + 1)

end A211562

/-! ## A211562.P2086263327067790355

`∑[A064808(n+1)+A000038(n)]`
-/

namespace A211562.P2086263327067790355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 (n + 1) + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211562.P2086263327067790355

namespace A211562

/-- `∑[A064808(n+1)+A000038(n)]` -/
def P2086263327067790355.Spec : Prop :=
  ∀ n, P2086263327067790355.a n = A211562 (n + 1)

end A211562

/-! ## A211562.P12680898079416448072

`∑[A064808(n+1)+2*A061393(n)%2]`
-/

namespace A211562.P12680898079416448072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064808 (n + 1) + 2 * Int.tmod (A061393 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211562.P12680898079416448072

namespace A211562

/-- `∑[A064808(n+1)+2*A061393(n)%2]` -/
def P12680898079416448072.Spec : Prop :=
  ∀ n, P12680898079416448072.a n = A211562 (n + 1)

end A211562

/-! ## A211562.P8102849064558315046

`abs(A006003(n+2)-A130218(n+3))`
-/

namespace A211562.P8102849064558315046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006003 (n + 2) - A130218 (n + 3)|

end

end A211562.P8102849064558315046

namespace A211562

/-- `abs(A006003(n+2)-A130218(n+3))` -/
def P8102849064558315046.Spec : Prop :=
  ∀ n, P8102849064558315046.a n = A211562 (n + 1)

end A211562

/-! ## A211562.P17318207044844404259

`A211561(∑[n+2]+4)`
-/

namespace A211562.P17318207044844404259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A211562.P17318207044844404259

namespace A211562

/-- `A211561(∑[n+2]+4)` -/
def P17318207044844404259.Spec : Prop :=
  ∀ n, P17318207044844404259.a n = A211562 (n + 1)

end A211562

/-! ## A211562.P15102308762236857528

`A133611((n+3)²-∑[n+1])`
-/

namespace A211562.P15102308762236857528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211562.P15102308762236857528

namespace A211562

/-- `A133611((n+3)²-∑[n+1])` -/
def P15102308762236857528.Spec : Prop :=
  ∀ n, P15102308762236857528.a n = A211562 (n + 1)

end A211562

/-! ## A211562.P16346279076834188837

`A137650(A034856(n+2))`
-/

namespace A211562.P16346279076834188837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137650 (A034856 (n + 2)).toNat

end

end A211562.P16346279076834188837

namespace A211562

/-- `A137650(A034856(n+2))` -/
def P16346279076834188837.Spec : Prop :=
  ∀ n, P16346279076834188837.a n = A211562 (n + 1)

end A211562

/-! ## A211562.P12471347246182003084

`A137650(A000124(n+3)-3)`
-/

namespace A211562.P12471347246182003084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137650 (A000124 (n + 3) - 3).toNat

end

end A211562.P12471347246182003084

namespace A211562

/-- `A137650(A000124(n+3)-3)` -/
def P12471347246182003084.Spec : Prop :=
  ∀ n, P12471347246182003084.a n = A211562 (n + 1)

end A211562

/-!
# A211563: Number of nonnegative integer arrays of length n+3 with new values 0 upwards introduced in order, and containing the value n-1.

The programs for A211563, there is no canonical definition to state claims against.
-/

/-! ## A211563.P1095052537085968158

`A211561(∑[n+3]+7)`
-/

namespace A211563.P1095052537085968158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A211563.P1095052537085968158

/-! ## A211563.P13489485750230994110

`A133611(Δ[A111396(n)])`
-/

namespace A211563.P13489485750230994110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (f1 (n + 1) - f1 n).toNat

end

end A211563.P13489485750230994110

/-! ## A211563.P16534850589223069620

`A133611(A027379(n+3))`
-/

namespace A211563.P16534850589223069620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A027379 (n + 3)).toNat

end

end A211563.P16534850589223069620

/-! ## A211563.P13441786346399248238

`A133611(A055998(n+3))`
-/

namespace A211563.P13441786346399248238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A055998 (n + 3)).toNat

end

end A211563.P13441786346399248238

/-! ## A211563.P10448808715296262946

`A133611(A052905(n+2)+2)`
-/

namespace A211563.P10448808715296262946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A052905 (n + 2) + 2).toNat

end

end A211563.P10448808715296262946

/-! ## A211563.P14232530782518062187

`A133611(A111396(n+1)-A111396(n))`
-/

namespace A211563.P14232530782518062187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A111396 (n + 1) - A111396 n).toNat

end

end A211563.P14232530782518062187

/-!
# A211564: Number of nonnegative integer arrays of length n+4 with new values 0 upwards introduced in order, and containing the value n-1.

The programs for A211564, there is no canonical definition to state claims against.
-/

/-! ## A211564.P16954348650846879410

`A211561(A167499(n+3))`
-/

namespace A211564.P16954348650846879410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A167499 (n + 3)).toNat

end

end A211564.P16954348650846879410

/-! ## A211564.P16047046404874482444

`A211561(A133263(n+4)+3)`
-/

namespace A211564.P16047046404874482444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A133263 (n + 4) + 3).toNat

end

end A211564.P16047046404874482444

/-! ## A211564.P9883047444511790410

`A211561(A000217(n+4)+5)`
-/

namespace A211564.P9883047444511790410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A000217 (n + 4) + 5).toNat

end

end A211564.P9883047444511790410

/-! ## A211564.P16729063661606273006

`A211561(A052905(n+3)-(2*n+1))`
-/

namespace A211564.P16729063661606273006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A211564.P16729063661606273006

/-! ## A211564.P16168949282581665969

`A133611(A046691(n+4))`
-/

namespace A211564.P16168949282581665969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A046691 (n + 4)).toNat

end

end A211564.P16168949282581665969

/-! ## A211564.P11239177084069839959

`A133611(Δ[A023551(n+1)]+2)`
-/

namespace A211564.P11239177084069839959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (f1 (n + 1) - f1 n + 2).toNat

end

end A211564.P11239177084069839959

/-! ## A211564.P10198419238120734148

`A133611(Δ[A111396(n+1)]-1)`
-/

namespace A211564.P10198419238120734148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (f1 (n + 1) - f1 n - 1).toNat

end

end A211564.P10198419238120734148

/-!
# A211565: Number of nonnegative integer arrays of length n+5 with new values 0 upwards introduced in order, and containing the value n-1.

The programs for A211565, there is no canonical definition to state claims against.
-/

/-! ## A211565.P3531393924925500703

`A211561(A000124(n+5)+5)`
-/

namespace A211565.P3531393924925500703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A000124 (n + 5) + 5).toNat

end

end A211565.P3531393924925500703

/-! ## A211565.P8792105491476120476

`A211561(A000217(n+5)+6)`
-/

namespace A211565.P8792105491476120476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A000217 (n + 5) + 6).toNat

end

end A211565.P8792105491476120476

/-! ## A211565.P3606165393015492717

`A211561(A161680(n+6)+6)`
-/

namespace A211565.P3606165393015492717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A161680 (n + 6) + 6).toNat

end

end A211565.P3606165393015492717

/-! ## A211565.P11682242633380889530

`A133611(A052905(n+4))`
-/

namespace A211565.P11682242633380889530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A052905 (n + 4)).toNat

end

end A211565.P11682242633380889530

/-! ## A211565.P6569248731318549131

`A133611(A027379(n+5)-2)`
-/

namespace A211565.P6569248731318549131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A027379 (n + 5) - 2).toNat

end

end A211565.P6569248731318549131

/-! ## A211565.P7789904730305551917

`A133611(A000124(n+7)-6)`
-/

namespace A211565.P7789904730305551917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A000124 (n + 7) - 6).toNat

end

end A211565.P7789904730305551917

/-! ## A211565.P507264234319883378

`A133611(A133263(n+7)-7)`
-/

namespace A211565.P507264234319883378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A133263 (n + 7) - 7).toNat

end

end A211565.P507264234319883378

/-! ## A211565.P9760988477981424155

`A133611(Δ[A023551(n+2)]+1)`
-/

namespace A211565.P9760988477981424155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (f1 (n + 1) - f1 n + 1).toNat

end

end A211565.P9760988477981424155

/-!
# A211566: Number of nonnegative integer arrays of length n+6 with new values 0 upwards introduced in order, and containing the value n-1.

The programs for A211566, there is no canonical definition to state claims against.
-/

/-! ## A211566.P13588861275788494272

`A211561(A167487(n+5))`
-/

namespace A211566.P13588861275788494272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A167487 (n + 5)).toNat

end

end A211566.P13588861275788494272

/-! ## A211566.P9529108122326483547

`A211561(A000124(n+6)+6)`
-/

namespace A211566.P9529108122326483547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A000124 (n + 6) + 6).toNat

end

end A211566.P9529108122326483547

/-! ## A211566.P7197068277685738297

`A211561(A161680(n+7)+7)`
-/

namespace A211566.P7197068277685738297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211561 (A161680 (n + 7) + 7).toNat

end

end A211566.P7197068277685738297

/-! ## A211566.P3336818120014058443

`A133611(A027379(n+6)-3)`
-/

namespace A211566.P3336818120014058443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A027379 (n + 6) - 3).toNat

end

end A211566.P3336818120014058443

/-! ## A211566.P9403064843312727839

`A133611(A133263(n+8)-8)`
-/

namespace A211566.P9403064843312727839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A133263 (n + 8) - 8).toNat

end

end A211566.P9403064843312727839

/-! ## A211566.P7566204469733250735

`A133611(A000124(n+7)+n+1)`
-/

namespace A211566.P7566204469733250735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133611 (A000124 (n + 7) + (n + 1 : ℤ)).toNat

end

end A211566.P7566204469733250735

/-!
# A211567: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two or four distinct values for every i,j,k<=n.

The programs for A211567, there is no canonical definition to state claims against.
-/

/-! ## A211567.P755845901949076634

`A211568(n+1)-2*A006327(n+4)`
-/

namespace A211567.P755845901949076634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211568 (n + 1) - 2 * A006327 (n + 4)

end

end A211567.P755845901949076634

/-! ## A211567.P14947684207349285724

`A211525(n+1)+A211568(n+1)-A211528(n+1)`
-/

namespace A211567.P14947684207349285724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + (A211568 (n + 1) - A211528 (n + 1))

end

end A211567.P14947684207349285724

/-! ## A211567.P17658723652984981542

`A211526(n+1)+A211568(n+1)-A211529(n+1)`
-/

namespace A211567.P17658723652984981542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + (A211568 (n + 1) - A211529 (n + 1))

end

end A211567.P17658723652984981542

/-! ## A211567.P16761633773683138295

`A211568(n+1)+A211574(n+1)-A211575(n+1)`
-/

namespace A211567.P16761633773683138295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211568 (n + 1) + (A211574 (n + 1) - A211575 (n + 1))

end

end A211567.P16761633773683138295

/-! ## A211567.P1975486827206769063

`A211568(n+1)+A211588(n+1)-A211589(n+1)`
-/

namespace A211567.P1975486827206769063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211568 (n + 1) + (A211588 (n + 1) - A211589 (n + 1))

end

end A211567.P1975486827206769063

/-!
# A211568: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, three or four distinct values for every i,j,k<=n.

The programs for A211568, there is no canonical definition to state claims against.
-/

/-! ## A211568.P12441614468527198638

`A211567(n+1)+2*A006327(n+4)`
-/

namespace A211568.P12441614468527198638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211567 (n + 1) + 2 * A006327 (n + 4)

end

end A211568.P12441614468527198638

/-! ## A211568.P13170622550315621951

`A211528(n+1)+A211567(n+1)-A211525(n+1)`
-/

namespace A211568.P13170622550315621951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211528 (n + 1) + (A211567 (n + 1) - A211525 (n + 1))

end

end A211568.P13170622550315621951

/-! ## A211568.P13218084861505291710

`A211529(n+1)+A211567(n+1)-A211526(n+1)`
-/

namespace A211568.P13218084861505291710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211529 (n + 1) + (A211567 (n + 1) - A211526 (n + 1))

end

end A211568.P13218084861505291710

/-! ## A211568.P3207278456376243383

`A211567(n+1)+A211575(n+1)-A211574(n+1)`
-/

namespace A211568.P3207278456376243383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211567 (n + 1) + (A211575 (n + 1) - A211574 (n + 1))

end

end A211568.P3207278456376243383

/-! ## A211568.P730906397451590756

`A211567(n+1)+A211589(n+1)-A211588(n+1)`
-/

namespace A211568.P730906397451590756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211567 (n + 1) + (A211589 (n + 1) - A211588 (n + 1))

end

end A211568.P730906397451590756

/-!
# A211569: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four or five distinct values for every i,j,k<=n.

The programs for A211569, there is no canonical definition to state claims against.
-/

/-! ## A211569.P10861796231359932901

`A332821(A261061(n+3))+A098415(2*(n+2))`
-/

namespace A211569.P10861796231359932901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332821 (A261061 (n + 3)).toNat + A098415 (2 * (n + 2))

end

end A211569.P10861796231359932901

/-!
# A211570: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having three, four or five distinct values for every i,j,k<=n.

The programs for A211570, the canonical program `A211570.P13900154914944656727` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211570 has offset 1).

The definition of A211570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211570.P13900154914944656727

`a(n-1)+5*a(n-2)-5*a(n-3)-6*a(n-4)+6*a(n-5)` with `a(0)=16, a(1)=28, a(2)=44, a(3)=74, a(4)=116`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A211570

/-- `a(n-1)+5*a(n-2)-5*a(n-3)-6*a(n-4)+6*a(n-5)` -/
def P13900154914944656727.Spec : Prop :=
  ∀ n, P13900154914944656727.a n = A211570 (n + 1)

theorem P13900154914944656727.correct : P13900154914944656727.Spec := by
  intro n
  simp only [A211570, Nat.add_sub_cancel]

end A211570

/-! ## A211570.P17311767890208315559

`A057142(A207881(n+2))`
-/

namespace A211570.P17311767890208315559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A207881 (n + 2)).toNat

end

end A211570.P17311767890208315559

namespace A211570

/-- `A057142(A207881(n+2))` -/
def P17311767890208315559.Spec : Prop :=
  ∀ n, P17311767890208315559.a n = A211570 (n + 1)

end A211570

/-!
# A211571: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, three, four or five distinct values for every i,j,k<=n.

The programs for A211571, there is no canonical definition to state claims against.
-/

/-! ## A211571.P744814789106102375

`A377784(A332796(n))+A182464(n)`
-/

namespace A211571.P744814789106102375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377784 (A332796 n).toNat + A182464 n

end

end A211571.P744814789106102375

/-!
# A211572: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having one, two, three, four or five distinct values for every i,j,k<=n.

The programs for A211572, there is no canonical definition to state claims against.
-/

/-! ## A211572.P8317505298489117344

`A248356((n+1)*A248355(A248347(n+2)))`
-/

namespace A211572.P8317505298489117344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248356 ((n + 1 : ℤ) * A248355 (A248347 (n + 2)).toNat).toNat

end

end A211572.P8317505298489117344

/-!
# A211573: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having four or six distinct values for every i,j,k<=n.

The programs for A211573, there is no canonical definition to state claims against.
-/

/-! ## A211573.P15763879858675842662

`A161846(A026745(n)+1)`
-/

namespace A211573.P15763879858675842662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161846 (A026745 n + 1).toNat

end

end A211573.P15763879858675842662

/-!
# A211574: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four or six distinct values for every i,j,k<=n.

The programs for A211574, there is no canonical definition to state claims against.
-/

/-! ## A211574.P1035956061526124795

`A211575(n+1)-2*A006327(n+4)`
-/

namespace A211574.P1035956061526124795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211575 (n + 1) - 2 * A006327 (n + 4)

end

end A211574.P1035956061526124795

/-! ## A211574.P17469575848077655285

`A211525(n+1)+A211575(n+1)-A211528(n+1)`
-/

namespace A211574.P17469575848077655285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + (A211575 (n + 1) - A211528 (n + 1))

end

end A211574.P17469575848077655285

/-! ## A211574.P8493833332880500871

`A211526(n+1)+A211575(n+1)-A211529(n+1)`
-/

namespace A211574.P8493833332880500871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + (A211575 (n + 1) - A211529 (n + 1))

end

end A211574.P8493833332880500871

/-! ## A211574.P10829107208335455688

`A211567(n+1)+A211575(n+1)-A211568(n+1)`
-/

namespace A211574.P10829107208335455688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211567 (n + 1) + (A211575 (n + 1) - A211568 (n + 1))

end

end A211574.P10829107208335455688

/-! ## A211574.P14082603267552428288

`A211575(n+1)+A211588(n+1)-A211589(n+1)`
-/

namespace A211574.P14082603267552428288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211575 (n + 1) + (A211588 (n + 1) - A211589 (n + 1))

end

end A211574.P14082603267552428288

/-!
# A211575: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, three, four or six distinct values for every i,j,k<=n.

The programs for A211575, there is no canonical definition to state claims against.
-/

/-! ## A211575.P1072894076417908483

`A211574(n+1)+2*A006327(n+4)`
-/

namespace A211575.P1072894076417908483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211574 (n + 1) + 2 * A006327 (n + 4)

end

end A211575.P1072894076417908483

/-! ## A211575.P6899298314733471570

`A211528(n+1)+A211574(n+1)-A211525(n+1)`
-/

namespace A211575.P6899298314733471570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211528 (n + 1) + (A211574 (n + 1) - A211525 (n + 1))

end

end A211575.P6899298314733471570

/-! ## A211575.P10086903082027110699

`A211529(n+1)+A211574(n+1)-A211526(n+1)`
-/

namespace A211575.P10086903082027110699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211529 (n + 1) + (A211574 (n + 1) - A211526 (n + 1))

end

end A211575.P10086903082027110699

/-! ## A211575.P6942557177305172716

`A211568(n+1)+A211574(n+1)-A211567(n+1)`
-/

namespace A211575.P6942557177305172716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211568 (n + 1) + (A211574 (n + 1) - A211567 (n + 1))

end

end A211575.P6942557177305172716

/-! ## A211575.P6021319827033815665

`A211574(n+1)+A211589(n+1)-A211588(n+1)`
-/

namespace A211575.P6021319827033815665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211574 (n + 1) + (A211589 (n + 1) - A211588 (n + 1))

end

end A211575.P6021319827033815665

/-!
# A211576: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having four, five or six distinct values for every i,j,k<=n.

The programs for A211576, there is no canonical definition to state claims against.
-/

/-! ## A211576.P15306621327561955685

`A211578(n+1)+A211590(n+1)-A211592(n+1)`
-/

namespace A211576.P15306621327561955685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211578 (n + 1) + (A211590 (n + 1) - A211592 (n + 1))

end

end A211576.P15306621327561955685

/-!
# A211578: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having three, four, five or six distinct values for every i,j,k<=n.

The programs for A211578, there is no canonical definition to state claims against.
-/

/-! ## A211578.P6077613984604541982

`A211576(n+1)+A211592(n+1)-A211590(n+1)`
-/

namespace A211578.P6077613984604541982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211576 (n + 1) + (A211592 (n + 1) - A211590 (n + 1))

end

end A211578.P6077613984604541982

/-!
# A211579: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having one, three, four, five or six distinct values for every i,j,k<=n.

The programs for A211579, there is no canonical definition to state claims against.
-/

/-! ## A211579.P3986525311077558599

`A020882(A261474(n)+A003174(3*n+2))`
-/

namespace A211579.P3986525311077558599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (A261474 n + A003174 (3 * n + 2)).toNat

end

end A211579.P3986525311077558599

/-!
# A211582: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having three, four, six or seven distinct values for every i,j,k<=n.

The programs for A211582, there is no canonical definition to state claims against.
-/

/-! ## A211582.P9700721108213232554

`4*A060018(A269491(n+1))`
-/

namespace A211582.P9700721108213232554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060018 (A269491 (n + 1)).toNat

end

end A211582.P9700721108213232554

/-!
# A211588: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four, six or eight distinct values for every i,j,k<=n.

The programs for A211588, there is no canonical definition to state claims against.
-/

/-! ## A211588.P5867771842648779963

`A211589(n+1)-2*A006327(n+4)`
-/

namespace A211588.P5867771842648779963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211589 (n + 1) - 2 * A006327 (n + 4)

end

end A211588.P5867771842648779963

/-! ## A211588.P13992290929213482599

`A211525(n+1)+A211589(n+1)-A211528(n+1)`
-/

namespace A211588.P13992290929213482599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + (A211589 (n + 1) - A211528 (n + 1))

end

end A211588.P13992290929213482599

/-! ## A211588.P9831260529268670261

`A211526(n+1)+A211589(n+1)-A211529(n+1)`
-/

namespace A211588.P9831260529268670261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211526 (n + 1) + (A211589 (n + 1) - A211529 (n + 1))

end

end A211588.P9831260529268670261

/-! ## A211588.P2106716906421836830

`A211567(n+1)+A211589(n+1)-A211568(n+1)`
-/

namespace A211588.P2106716906421836830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211567 (n + 1) + (A211589 (n + 1) - A211568 (n + 1))

end

end A211588.P2106716906421836830

/-! ## A211588.P6270916999984175149

`A211574(n+1)+A211589(n+1)-A211575(n+1)`
-/

namespace A211588.P6270916999984175149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211574 (n + 1) + (A211589 (n + 1) - A211575 (n + 1))

end

end A211588.P6270916999984175149

/-!
# A211589: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, three, four, six or eight distinct values for every i,j,k<=n.

The programs for A211589, there is no canonical definition to state claims against.
-/

/-! ## A211589.P17147671825388601912

`A211588(n+1)+2*A006327(n+4)`
-/

namespace A211589.P17147671825388601912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211588 (n + 1) + 2 * A006327 (n + 4)

end

end A211589.P17147671825388601912

/-! ## A211589.P8411557224512178869

`A211528(n+1)+A211588(n+1)-A211525(n+1)`
-/

namespace A211589.P8411557224512178869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211528 (n + 1) + (A211588 (n + 1) - A211525 (n + 1))

end

end A211589.P8411557224512178869

/-! ## A211589.P976203524293956549

`A211529(n+1)+A211588(n+1)-A211526(n+1)`
-/

namespace A211589.P976203524293956549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211529 (n + 1) + (A211588 (n + 1) - A211526 (n + 1))

end

end A211589.P976203524293956549

/-! ## A211589.P16188891761778021505

`A211568(n+1)+A211588(n+1)-A211567(n+1)`
-/

namespace A211589.P16188891761778021505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211568 (n + 1) + (A211588 (n + 1) - A211567 (n + 1))

end

end A211589.P16188891761778021505

/-! ## A211589.P6312279735285784404

`A211575(n+1)+A211588(n+1)-A211574(n+1)`
-/

namespace A211589.P6312279735285784404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211575 (n + 1) + (A211588 (n + 1) - A211574 (n + 1))

end

end A211589.P6312279735285784404

/-!
# A211590: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having four, five, six or eight distinct values for every i,j,k<=n.

The programs for A211590, there is no canonical definition to state claims against.
-/

/-! ## A211590.P5537615803446032725

`A211576(n+1)+A211592(n+1)-A211578(n+1)`
-/

namespace A211590.P5537615803446032725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211576 (n + 1) + (A211592 (n + 1) - A211578 (n + 1))

end

end A211590.P5537615803446032725

/-!
# A211592: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having three, four, five, six or eight distinct values for every i,j,k<=n.

The programs for A211592, there is no canonical definition to state claims against.
-/

/-! ## A211592.P17446704493383532734

`A211578(n+1)+A211590(n+1)-A211576(n+1)`
-/

namespace A211592.P17446704493383532734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211578 (n + 1) + (A211590 (n + 1) - A211576 (n + 1))

end

end A211592.P17446704493383532734

/-!
# A211596: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, four, six, seven or eight distinct values for every i,j,k<=n.

The programs for A211596, there is no canonical definition to state claims against.
-/

/-! ## A211596.P16273595442166784992

`A316945(A106515(n))+A211588(n+1)`
-/

namespace A211596.P16273595442166784992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316945 (A106515 n).toNat + A211588 (n + 1)

end

end A211596.P16273595442166784992

/-!
# A211598: Number of -2..2 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having four, five, six, seven or eight distinct values for every i,j,k<=n.

The programs for A211598, there is no canonical definition to state claims against.
-/

/-! ## A211598.P4996736207075728787

`A233583(A211590(n+1)+A149701(n))`
-/

namespace A211598.P4996736207075728787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A211590 (n + 1) + A149701 n).toNat

end

end A211598.P4996736207075728787

