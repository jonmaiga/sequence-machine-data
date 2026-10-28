import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A256700: Positive part of the minimal alternating triangular-number representation of n (defined at A255974).

The programs for A256700, there is no canonical definition to state claims against.
-/

/-! ## A256700.P5871642511334035355

`A256759(n+1)+1+n`
-/

namespace A256700.P5871642511334035355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256759 (n + 1) + 1 + (n : ℤ)

end

end A256700.P5871642511334035355

/-! ## A256700.P942767627302430341

`A256759(∑[n+1]+1)`
-/

namespace A256700.P942767627302430341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256759 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256700.P942767627302430341

/-! ## A256700.P5190807359228706325

`A256759(A167614(n+2))%66`
-/

namespace A256700.P5190807359228706325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256759 (A167614 (n + 2)).toNat) 66

end

end A256700.P5190807359228706325

/-! ## A256700.P13791832277515408218

`A174204(2^(C(comp[∑[n]]-n, 2)-n)-1)+n`
-/

namespace A256700.P13791832277515408218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174204 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ) - 1)).toNat + (n : ℤ)

end

end A256700.P13791832277515408218

/-! ## A256700.P729031172663276238

`A175470(A114283(n))+n`
-/

namespace A256700.P729031172663276238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175470 (A114283 n).toNat + (n : ℤ)

end

end A256700.P729031172663276238

/-!
# A256701: Positive part of the minimal alternating binary representation of n (defined at A245596).

The programs for A256701, the canonical program `A256701.P16267587922398115576` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256701 has offset 1).

The definition of A256701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256701.P9253653863274392213

`A256702(n+1)+1+n`
-/

namespace A256701.P9253653863274392213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256702 (n + 1) + 1 + (n : ℤ)

end

end A256701.P9253653863274392213

namespace A256701

/-- `A256702(n+1)+1+n` -/
def P9253653863274392213.Spec : Prop :=
  ∀ n, P9253653863274392213.a n = A256701 (n + 1)

theorem P9253653863274392213.correct : P9253653863274392213.Spec := by
  intro n
  simp only [A256701, Nat.add_sub_cancel, A256701.P9253653863274392213.a, A256701.P16267587922398115576.a, A001057, A001057.P5698194758103254717.a, A073122, A073122.P3306057294327154330.a, A256702, A256702.P6496352478846748862.a, A003188, A003188.P10544524695508875182.a, A038189, A038189.P710315829662968223.a, A014707, A014707.P14309168736324698614.f1, A014707.P14309168736324698614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A256701

/-! ## A256701.P15101565461904555929

`(A073122(n+1)+n+1)/2`
-/

namespace A256701.P15101565461904555929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073122 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A256701.P15101565461904555929

namespace A256701

/-- `(A073122(n+1)+n+1)/2` -/
def P15101565461904555929.Spec : Prop :=
  ∀ n, P15101565461904555929.a n = (A256701 (n + 1) : ℚ)

end A256701

/-! ## A256701.P8707534340054956452

`A265263(A073122(n+1))`
-/

namespace A256701.P8707534340054956452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 (A073122 (n + 1)).toNat

end

end A256701.P8707534340054956452

namespace A256701

/-- `A265263(A073122(n+1))` -/
def P8707534340054956452.Spec : Prop :=
  ∀ n, P8707534340054956452.a n = A256701 (n + 1)

end A256701

/-! ## A256701.P16267587922398115576

`A001057(A073122(n+1)+n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A256701

/-- `A001057(A073122(n+1)+n)` -/
def P16267587922398115576.Spec : Prop :=
  ∀ n, P16267587922398115576.a n = A256701 (n + 1)

theorem P16267587922398115576.correct : P16267587922398115576.Spec := by
  intro n
  simp only [A256701, Nat.add_sub_cancel]

end A256701

/-! ## A256701.P10791856265231491750

`A003602(A073122(n+1)+n)`
-/

namespace A256701.P10791856265231491750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A073122 (n + 1) + (n : ℤ)).toNat

end

end A256701.P10791856265231491750

namespace A256701

/-- `A003602(A073122(n+1)+n)` -/
def P10791856265231491750.Spec : Prop :=
  ∀ n, P10791856265231491750.a n = A256701 (n + 1)

end A256701

/-! ## A256701.P4439135623868828998

`A032742(A073122(n+1)+1+n)`
-/

namespace A256701.P4439135623868828998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A073122 (n + 1) + 1 + (n : ℤ)).toNat

end

end A256701.P4439135623868828998

namespace A256701

/-- `A032742(A073122(n+1)+1+n)` -/
def P4439135623868828998.Spec : Prop :=
  ∀ n, P4439135623868828998.a n = A256701 (n + 1)

end A256701

/-! ## A256701.P12138609273544320674

`A245471(A073122(n+1)+n+1)`
-/

namespace A256701.P12138609273544320674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245471 (A073122 (n + 1) + (n + 1 : ℤ)).toNat

end

end A256701.P12138609273544320674

namespace A256701

/-- `A245471(A073122(n+1)+n+1)` -/
def P12138609273544320674.Spec : Prop :=
  ∀ n, P12138609273544320674.a n = A256701 (n + 1)

end A256701

/-! ## A256701.P7709918468410924885

`A292272(n+1)+and(n+1, A292272(n))`
-/

namespace A256701.P7709918468410924885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (n + 1) + Int.land (n + 1 : ℤ) (A292272 n)

end

end A256701.P7709918468410924885

namespace A256701

/-- `A292272(n+1)+and(n+1, A292272(n))` -/
def P7709918468410924885.Spec : Prop :=
  ∀ n, P7709918468410924885.a n = A256701 (n + 1)

end A256701

/-! ## A256701.P14607024681762202246

`A265263(and(A048724(n+1), A065621(n+1)))`
-/

namespace A256701.P14607024681762202246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 (Int.land (A048724 (n + 1)) (A065621 (n + 1))).toNat

end

end A256701.P14607024681762202246

namespace A256701

/-- `A265263(and(A048724(n+1), A065621(n+1)))` -/
def P14607024681762202246.Spec : Prop :=
  ∀ n, P14607024681762202246.a n = A256701 (n + 1)

end A256701

/-! ## A256701.P3592724615847427689

`and(A213064(n)+1, A003188(A213064(n+1)))`
-/

namespace A256701.P3592724615847427689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A213064 n + 1) (A003188 (A213064 (n + 1)).toNat)

end

end A256701.P3592724615847427689

namespace A256701

/-- `and(A213064(n)+1, A003188(A213064(n+1)))` -/
def P3592724615847427689.Spec : Prop :=
  ∀ n, P3592724615847427689.a n = A256701 (n + 1)

end A256701

/-! ## A256701.P12821564146893943304

`A008619(n)+and(A003188(n+1), A003188(n))`
-/

namespace A256701.P12821564146893943304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + Int.land (A003188 (n + 1)) (A003188 n)

end

end A256701.P12821564146893943304

namespace A256701

/-- `A008619(n)+and(A003188(n+1), A003188(n))` -/
def P12821564146893943304.Spec : Prop :=
  ∀ n, P12821564146893943304.a n = A256701 (n + 1)

end A256701

/-! ## A256701.P5617090904336397575

`A292272(A292272(2*n+1)+A213370(n+1))`
-/

namespace A256701.P5617090904336397575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (A292272 (2 * n + 1) + A213370 (n + 1)).toNat

end

end A256701.P5617090904336397575

namespace A256701

/-- `A292272(A292272(2*n+1)+A213370(n+1))` -/
def P5617090904336397575.Spec : Prop :=
  ∀ n, P5617090904336397575.a n = A256701 (n + 1)

end A256701

/-! ## A256701.P12207240048171707323

`and(A003188(A229763(n)), A229763(n+1))+n+1`
-/

namespace A256701.P12207240048171707323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 (A229763 n).toNat) (A229763 (n + 1)) + (n + 1 : ℤ)

end

end A256701.P12207240048171707323

namespace A256701

/-- `and(A003188(A229763(n)), A229763(n+1))+n+1` -/
def P12207240048171707323.Spec : Prop :=
  ∀ n, P12207240048171707323.a n = A256701 (n + 1)

end A256701

/-!
# A256702: Nonpositive part of the minimal alternating binary representation of n (defined at A256696).

The programs for A256702, the canonical program `A256702.P6496352478846748862` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256702 has offset 1).

The definition of A256702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256702.P6496352478846748862

`A256701(n+1)-(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A256702

/-- `A256701(n+1)-(n+1)` -/
def P6496352478846748862.Spec : Prop :=
  ∀ n, P6496352478846748862.a n = A256702 (n + 1)

theorem P6496352478846748862.correct : P6496352478846748862.Spec := by
  intro n
  simp only [A256702, Nat.add_sub_cancel]

end A256702

/-! ## A256702.P4949246784695876239

`(A073122(n+1)-(n+1))/2`
-/

namespace A256702.P4949246784695876239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073122 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A256702.P4949246784695876239

namespace A256702

/-- `(A073122(n+1)-(n+1))/2` -/
def P4949246784695876239.Spec : Prop :=
  ∀ n, P4949246784695876239.a n = (A256702 (n + 1) : ℚ)

end A256702

/-! ## A256702.P12492581358987004987

`A377404(A073122(n+1))`
-/

namespace A256702.P12492581358987004987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377404 (A073122 (n + 1)).toNat

end

end A256702.P12492581358987004987

namespace A256702

/-- `A377404(A073122(n+1))` -/
def P12492581358987004987.Spec : Prop :=
  ∀ n, P12492581358987004987.a n = A256702 (n + 1)

end A256702

/-! ## A256702.P3361652313438017066

`A256701(n+1)%A000027(n+1)`
-/

namespace A256702.P3361652313438017066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256701 (n + 1)) (A000027 (n + 1))

end

end A256702.P3361652313438017066

namespace A256702

/-- `A256701(n+1)%A000027(n+1)` -/
def P3361652313438017066.Spec : Prop :=
  ∀ n, P3361652313438017066.a n = A256702 (n + 1)

end A256702

/-! ## A256702.P11053199317456043860

`A073122(n+1)%A256701(n+1)`
-/

namespace A256702.P11053199317456043860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073122 (n + 1)) (A256701 (n + 1))

end

end A256702.P11053199317456043860

namespace A256702

/-- `A073122(n+1)%A256701(n+1)` -/
def P11053199317456043860.Spec : Prop :=
  ∀ n, P11053199317456043860.a n = A256702 (n + 1)

end A256702

/-! ## A256702.P17460178536941517146

`(A000290(n)*A256701(n+1))%(n+1)`
-/

namespace A256702.P17460178536941517146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n * A256701 (n + 1)) (n + 1 : ℤ)

end

end A256702.P17460178536941517146

namespace A256702

/-- `(A000290(n)*A256701(n+1))%(n+1)` -/
def P17460178536941517146.Spec : Prop :=
  ∀ n, P17460178536941517146.a n = A256702 (n + 1)

end A256702

/-! ## A256702.P6727724930016491578

`(A161680(n)*A256701(n+1))%(n+1)`
-/

namespace A256702.P6727724930016491578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161680 n * A256701 (n + 1)) (n + 1 : ℤ)

end

end A256702.P6727724930016491578

namespace A256702

/-- `(A161680(n)*A256701(n+1))%(n+1)` -/
def P6727724930016491578.Spec : Prop :=
  ∀ n, P6727724930016491578.a n = A256702 (n + 1)

end A256702

/-! ## A256702.P10071554469061630992

`and(A003188(A229763(n)), A229763(n+1))`
-/

namespace A256702.P10071554469061630992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 (A229763 n).toNat) (A229763 (n + 1))

end

end A256702.P10071554469061630992

namespace A256702

/-- `and(A003188(A229763(n)), A229763(n+1))` -/
def P10071554469061630992.Spec : Prop :=
  ∀ n, P10071554469061630992.a n = A256702 (n + 1)

end A256702

/-! ## A256702.P16963693737282476677

`and(A048724(A229762(n)), A229763(n+1))`
-/

namespace A256702.P16963693737282476677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048724 (A229762 n).toNat) (A229763 (n + 1))

end

end A256702.P16963693737282476677

namespace A256702

/-- `and(A048724(A229762(n)), A229763(n+1))` -/
def P16963693737282476677.Spec : Prop :=
  ∀ n, P16963693737282476677.a n = A256702 (n + 1)

end A256702

/-!
# A256703: Numbers m such that A166133(m+1) = A166133(m)^2 - 1.

The programs for A256703, there is no canonical definition to state claims against.
-/

/-! ## A256703.P17827064201182759263

`A255833(A256406(n+1))`
-/

namespace A256703.P17827064201182759263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255833 (A256406 (n + 1)).toNat

end

end A256703.P17827064201182759263

/-! ## A256703.P6946898659387900931

`eq[A166133(n+1), A256557(A028310(n))]`
-/

namespace A256703.P6946898659387900931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256557 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256703.P6946898659387900931

/-!
# A256704: Palindromes of the form 4n + 1 that are divisible by 5.

The programs for A256704, there is no canonical definition to state claims against.
-/

/-! ## A256704.P15149178628150333939

`A043040(2*n+2)*A316978(A003627(n+1))`
-/

namespace A256704.P15149178628150333939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043040 (2 * n + 2) * A316978 (A003627 (n + 1)).toNat

end

end A256704.P15149178628150333939

/-! ## A256704.P18173600807723676595

`A043040(2*n+2)*A316978(A089270(n+1))`
-/

namespace A256704.P18173600807723676595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043040 (2 * n + 2) * A316978 (A089270 (n + 1)).toNat

end

end A256704.P18173600807723676595

/-! ## A256704.P5780635012720048181

`A365429(A289936(n+4))+A043040(2*n+2)`
-/

namespace A256704.P5780635012720048181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365429 (A289936 (n + 4)).toNat + A043040 (2 * n + 2)

end

end A256704.P5780635012720048181

/-! ## A256704.P8213199938045801019

`A261423(A043040(2*(n+1)))`
-/

namespace A256704.P8213199938045801019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A043040 (2 * (n + 1))).toNat

end

end A256704.P8213199938045801019

/-! ## A256704.P17101099378076578790

`filter[A099995(n+1), A079998(#)]`
-/

namespace A256704.P17101099378076578790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A256704.P17101099378076578790

/-!
# A256706: Numbers whose arithmetic derivative A003415 is a square different from 1.

The programs for A256706, the canonical program `A256706.P13059813826475705214` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256706 has offset 1).

The definition of A256706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256706.P13059813826475705214

`filter[A328303(n+1), A327866(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A256706

/-- `filter[A328303(n+1), A327866(#)]` -/
def P13059813826475705214.Spec : Prop :=
  ∀ n, P13059813826475705214.a n = A256706 (n + 1)

theorem P13059813826475705214.correct : P13059813826475705214.Spec := by
  intro n
  simp only [A256706, Nat.add_sub_cancel]

end A256706

/-! ## A256706.P13275360790970660560

`filter[A141468(n+1), A327866(#)]`
-/

namespace A256706.P13275360790970660560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327866 (f1 j).toNat = 1) n)

end

end A256706.P13275360790970660560

namespace A256706

/-- `filter[A141468(n+1), A327866(#)]` -/
def P13275360790970660560.Spec : Prop :=
  ∀ n, P13275360790970660560.a n = A256706 (n + 1)

end A256706

/-! ## A256706.P3530874421457541590

`filter[A253073(n+1), A327866(#)]`
-/

namespace A256706.P3530874421457541590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327866 (f1 j).toNat = 1) n)

end

end A256706.P3530874421457541590

namespace A256706

/-- `filter[A253073(n+1), A327866(#)]` -/
def P3530874421457541590.Spec : Prop :=
  ∀ n, P3530874421457541590.a n = A256706 (n + 1)

end A256706

/-! ## A256706.P6456559412269448746

`eq[cos(A055671(n)), A327866(n)]`
-/

namespace A256706.P6456559412269448746
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A055671 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A256706.P6456559412269448746

namespace A256706

/-- `eq[cos(A055671(n)), A327866(n)]` -/
def P6456559412269448746.Spec : Prop :=
  ∀ n, (P6456559412269448746.a n : ℤ) = A256706 (n + 1)

end A256706

/-! ## A256706.P16892050184927652514

`eq[A057427(A007920(n)), A327866(n)]`
-/

namespace A256706.P16892050184927652514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007920 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256706.P16892050184927652514

namespace A256706

/-- `eq[A057427(A007920(n)), A327866(n)]` -/
def P16892050184927652514.Spec : Prop :=
  ∀ n, (P16892050184927652514.a n : ℤ) = A256706 (n + 1)

end A256706

/-! ## A256706.P5865000451110844446

`eq[A057427(A051699(n)), A327866(n)]`
-/

namespace A256706.P5865000451110844446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256706.P5865000451110844446

namespace A256706

/-- `eq[A057427(A051699(n)), A327866(n)]` -/
def P5865000451110844446.Spec : Prop :=
  ∀ n, (P5865000451110844446.a n : ℤ) = A256706 (n + 1)

end A256706

/-! ## A256706.P8475741696102696590

`eq[1, A129717(A003415(n))]`
-/

namespace A256706.P8475741696102696590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129717 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256706.P8475741696102696590

namespace A256706

/-- `eq[1, A129717(A003415(n))]` -/
def P8475741696102696590.Spec : Prop :=
  ∀ n, (P8475741696102696590.a n : ℤ) = A256706 (n + 1)

end A256706

/-! ## A256706.P3079732390353247287

`eq[A055671(n), A276689(A003415(n))]`
-/

namespace A256706.P3079732390353247287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256706.P3079732390353247287

namespace A256706

/-- `eq[A055671(n), A276689(A003415(n))]` -/
def P3079732390353247287.Spec : Prop :=
  ∀ n, (P3079732390353247287.a n : ℤ) = A256706 (n + 1)

end A256706

/-!
# A256710: a(n) = (2*n-3)*a(n-1) - 2*a(n-2), a(0)=0, a(1)=1.

The programs for A256710, the canonical program `A256710.P15132904231091506333` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256710 has offset 0).

The definition of A256710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-3)*a(n-1)-2*a(n-2)` (program `A256710.P15132904231091506333`, by `A256710.P15132904231091506333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256710.P15132904231091506333

`(2*n-3)*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256710

/-- `(2*n-3)*a(n-1)-2*a(n-2)` -/
def P15132904231091506333.Spec : Prop :=
  ∀ n, P15132904231091506333.a n = A256710 n

theorem P15132904231091506333.correct : P15132904231091506333.Spec := by
  intro n
  simp only [A256710]

end A256710

/-! ## A256710.P2902257709252758009

`A213424(A332836(n+1))`
-/

namespace A256710.P2902257709252758009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213424 ((A332836 (n + 1)).toNat + 10)

end

end A256710.P2902257709252758009

namespace A256710

/-- `A213424(A332836(n+1))` -/
def P2902257709252758009.Spec : Prop :=
  ∀ n, P2902257709252758009.a n = A256710 n

end A256710

/-! ## A256710.P15469859399278820458

`A213424(A362144(n+1))`
-/

namespace A256710.P15469859399278820458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213424 ((A362144 (n + 1)).toNat + 10)

end

end A256710.P15469859399278820458

namespace A256710

/-- `A213424(A362144(n+1))` -/
def P15469859399278820458.Spec : Prop :=
  ∀ n, P15469859399278820458.a n = A256710 n

end A256710

/-!
# A256712: Primes prime(n) such that prime(2*n) - n is prime.

The programs for A256712, there is no canonical definition to state claims against.
-/

/-! ## A256712.P1523527554886783189

`p?[A001222(A014693(n+1))*A207790(n+1)]`
-/

namespace A256712.P1523527554886783189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014693 (n + 1)).toNat * A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256712.P1523527554886783189

/-! ## A256712.P112379776505876274

`p?[A297113(A149818(n))]`
-/

namespace A256712.P112379776505876274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (A149818 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256712.P112379776505876274

/-!
# A256714: Number of integers m in [0..10^n-1] such that m has no digit in common with the last n digits of either m^2 or m^3.

The programs for A256714, there is no canonical definition to state claims against.
-/

/-! ## A256714.P12215721774059515548

`A074924(A002804(n+1))-A192580(n+1)`
-/

namespace A256714.P12215721774059515548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (A002804 (n + 1)).toNat - A192580 (n + 1)

end

end A256714.P12215721774059515548

/-!
# A256716: a(n) = n*(n+1)*(22*n-19)/6.

The programs for A256716, the canonical program `A256716.P6913693235142891504` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256716 has offset 0).

The definition of A256716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(22*n-19)/6` (program `A256716.P8512610892624753253`, by `A256716.P8512610892624753253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256716.P6946443886658941709

`ogf((x+21x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A256716.P6946443886658941709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 21] [1, -4, 6, -4, 1] n

end

end A256716.P6946443886658941709

namespace A256716

/-- `ogf((x+21x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P6946443886658941709.Spec : Prop :=
  ∀ n, P6946443886658941709.a n = A256716 n

end A256716

/-! ## A256716.P8512610892624753253

`n*(n+1)*(22*n-19)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256716.P8512610892624753253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((22 * n : ℤ) - 19) : ℚ) / 6

end

end A256716.P8512610892624753253

namespace A256716

/-- `n*(n+1)*(22*n-19)/6` -/
def P8512610892624753253.Spec : Prop :=
  ∀ n, P8512610892624753253.a n = (A256716 n : ℚ)

theorem P8512610892624753253.correct : P8512610892624753253.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A256716, Nat.add_sub_cancel, A256716.P8512610892624753253.a, A256716.P6913693235142891504.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A256716, Nat.add_sub_cancel, A256716.P8512610892624753253.a, A256716.P6913693235142891504.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A256716

/-! ## A256716.P6913693235142891504

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=25, a(3)=94`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256716

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6913693235142891504.Spec : Prop :=
  ∀ n, P6913693235142891504.a n = A256716 n

theorem P6913693235142891504.correct : P6913693235142891504.Spec := by
  intro n
  simp only [A256716]

end A256716

/-! ## A256716.P16625003814462534306

`∑{#}[n-1, (n-#)*(22*#+1)]`
-/

namespace A256716.P16625003814462534306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (k : ℤ)) * (22 * k + 1 : ℤ)

end

end A256716.P16625003814462534306

namespace A256716

/-- `∑{#}[n-1, (n-#)*(22*#+1)]` -/
def P16625003814462534306.Spec : Prop :=
  ∀ n, P16625003814462534306.a n = A256716 n

end A256716

/-! ## A256716.P8554713690274830280

`a(n-1)+n*(11*n-10)` with `a(0)=0`
-/

namespace A256716.P8554713690274830280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((11 * n : ℤ) - 10)

end

end A256716.P8554713690274830280

namespace A256716

/-- `a(n-1)+n*(11*n-10)` -/
def P8554713690274830280.Spec : Prop :=
  ∀ n, P8554713690274830280.a n = A256716 n

end A256716

/-! ## A256716.P9005094973072366677

`∑[3*C(n, 2)]+∑[19*C(n, 2)+n]`
-/

namespace A256716.P9005094973072366677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A256716.P9005094973072366677

namespace A256716

/-- `∑[3*C(n, 2)]+∑[19*C(n, 2)+n]` -/
def P9005094973072366677.Spec : Prop :=
  ∀ n, (P9005094973072366677.a n : ℤ) = A256716 n

end A256716

/-! ## A256716.P10072598756540842343

`∑[A051876(n)]`
-/

namespace A256716.P10072598756540842343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256716.P10072598756540842343

namespace A256716

/-- `∑[A051876(n)]` -/
def P10072598756540842343.Spec : Prop :=
  ∀ n, P10072598756540842343.a n = A256716 n

end A256716

/-! ## A256716.P6268384668243377005

`∑[A152997(n)-n]`
-/

namespace A256716.P6268384668243377005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256716.P6268384668243377005

namespace A256716

/-- `∑[A152997(n)-n]` -/
def P6268384668243377005.Spec : Prop :=
  ∀ n, P6268384668243377005.a n = A256716 n

end A256716

/-! ## A256716.P16319063635203793037

`2*A050441(n)-∑[n]`
-/

namespace A256716.P16319063635203793037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050441 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256716.P16319063635203793037

namespace A256716

/-- `2*A050441(n)-∑[n]` -/
def P16319063635203793037.Spec : Prop :=
  ∀ n, P16319063635203793037.a n = A256716 n

end A256716

/-! ## A256716.P10072989144698952098

`∑[A185212(n)-(n+1)²]`
-/

namespace A256716.P10072989144698952098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185212 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256716.P10072989144698952098

namespace A256716

/-- `∑[A185212(n)-(n+1)²]` -/
def P10072989144698952098.Spec : Prop :=
  ∀ n, P10072989144698952098.a n = A256716 n

end A256716

/-! ## A256716.P12403767627354882997

`A280089(n)-∑[(1-n)²]`
-/

namespace A256716.P12403767627354882997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280089 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256716.P12403767627354882997

namespace A256716

/-- `A280089(n)-∑[(1-n)²]` -/
def P12403767627354882997.Spec : Prop :=
  ∀ n, P12403767627354882997.a n = A256716 n

end A256716

/-! ## A256716.P7704153778044578732

`A237618(n)+A135503(n)`
-/

namespace A256716.P7704153778044578732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237618 n + A135503 n

end

end A256716.P7704153778044578732

namespace A256716

/-- `A237618(n)+A135503(n)` -/
def P7704153778044578732.Spec : Prop :=
  ∀ n, P7704153778044578732.a n = A256716 n

end A256716

/-! ## A256716.P10043918475481671731

`A211612(n)-A145069(n)`
-/

namespace A256716.P10043918475481671731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211612 n - A145069 n

end

end A256716.P10043918475481671731

namespace A256716

/-- `A211612(n)-A145069(n)` -/
def P10043918475481671731.Spec : Prop :=
  ∀ n, P10043918475481671731.a n = A256716 n

end A256716

/-! ## A256716.P6819736143208274590

`A256647(n)-A135503(n)`
-/

namespace A256716.P6819736143208274590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256647 n - A135503 n

end

end A256716.P6819736143208274590

namespace A256716

/-- `A256647(n)-A135503(n)` -/
def P6819736143208274590.Spec : Prop :=
  ∀ n, P6819736143208274590.a n = A256716 n

end A256716

/-! ## A256716.P16331048531840023725

`A172078(n)+2*A135503(n)`
-/

namespace A256716.P16331048531840023725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172078 n + 2 * A135503 n

end

end A256716.P16331048531840023725

namespace A256716

/-- `A172078(n)+2*A135503(n)` -/
def P16331048531840023725.Spec : Prop :=
  ∀ n, P16331048531840023725.a n = A256716 n

end A256716

/-! ## A256716.P11859696184376750444

`2*A177890(n)-A002412(n)`
-/

namespace A256716.P11859696184376750444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177890 n - A002412 n

end

end A256716.P11859696184376750444

namespace A256716

/-- `2*A177890(n)-A002412(n)` -/
def P11859696184376750444.Spec : Prop :=
  ∀ n, P11859696184376750444.a n = A256716 n

end A256716

/-! ## A256716.P18107609331724185612

`2*A237616(n)-A007585(n)`
-/

namespace A256716.P18107609331724185612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237616 n - A007585 n

end

end A256716.P18107609331724185612

namespace A256716

/-- `2*A237616(n)-A007585(n)` -/
def P18107609331724185612.Spec : Prop :=
  ∀ n, P18107609331724185612.a n = A256716 n

end A256716

/-! ## A256716.P13494249052336652232

`2*A172082(n)-A172076(n)`
-/

namespace A256716.P13494249052336652232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172082 n - A172076 n

end

end A256716.P13494249052336652232

namespace A256716

/-- `2*A172082(n)-A172076(n)` -/
def P13494249052336652232.Spec : Prop :=
  ∀ n, P13494249052336652232.a n = A256716 n

end A256716

/-! ## A256716.P2750938696149173703

`A256650(n)-2*A135503(n)`
-/

namespace A256716.P2750938696149173703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256650 n - 2 * A135503 n

end

end A256716.P2750938696149173703

namespace A256716

/-- `A256650(n)-2*A135503(n)` -/
def P2750938696149173703.Spec : Prop :=
  ∀ n, P2750938696149173703.a n = A256716 n

end A256716

/-! ## A256716.P9512825556744405748

`2*A256645(n)-A256646(n)`
-/

namespace A256716.P9512825556744405748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256645 n - A256646 n

end

end A256716.P9512825556744405748

namespace A256716

/-- `2*A256645(n)-A256646(n)` -/
def P9512825556744405748.Spec : Prop :=
  ∀ n, P9512825556744405748.a n = A256716 n

end A256716

/-!
# A256718: a(n) = n*(n+1)*(7*n-6)/2.

The programs for A256718, the canonical program `A256718.P6277892682753577741` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256718 has offset 0).

The definition of A256718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(7*n-6)/2` (program `A256718.P10237898472124809355`, by `A256718.P10237898472124809355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A256718.P16147870005995026806

`ogf((x+20x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A256718.P16147870005995026806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 20] [1, -4, 6, -4, 1] n

end

end A256718.P16147870005995026806

namespace A256718

/-- `ogf((x+20x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P16147870005995026806.Spec : Prop :=
  ∀ n, P16147870005995026806.a n = A256718 n

end A256718

/-! ## A256718.P10237898472124809355

`n*(n+1)*(7*n-6)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256718.P10237898472124809355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((7 * n : ℤ) - 6) : ℚ) / 2

end

end A256718.P10237898472124809355

namespace A256718

/-- `n*(n+1)*(7*n-6)/2` -/
def P10237898472124809355.Spec : Prop :=
  ∀ n, P10237898472124809355.a n = (A256718 n : ℚ)

theorem P10237898472124809355.correct : P10237898472124809355.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A256718, Nat.add_sub_cancel, A256718.P10237898472124809355.a, A256718.P6277892682753577741.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A256718, Nat.add_sub_cancel, A256718.P10237898472124809355.a, A256718.P6277892682753577741.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A256718

/-! ## A256718.P6277892682753577741

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=24, a(3)=90`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256718

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6277892682753577741.Spec : Prop :=
  ∀ n, P6277892682753577741.a n = A256718 n

theorem P6277892682753577741.correct : P6277892682753577741.Spec := by
  intro n
  simp only [A256718]

end A256718

/-! ## A256718.P6431594793221512787

`∑{#}[n-1, (n-#)*(21*#+1)]`
-/

namespace A256718.P6431594793221512787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (k : ℤ)) * (21 * k + 1 : ℤ)

end

end A256718.P6431594793221512787

namespace A256718

/-- `∑{#}[n-1, (n-#)*(21*#+1)]` -/
def P6431594793221512787.Spec : Prop :=
  ∀ n, P6431594793221512787.a n = A256718 n

end A256718

/-! ## A256718.P727765466322332274

`∑[∑[a(n-1)+21]]` with `a(0)=0, a(1)=1`
-/

namespace A256718.P727765466322332274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 21

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256718.P727765466322332274

namespace A256718

/-- `∑[∑[a(n-1)+21]]` -/
def P727765466322332274.Spec : Prop :=
  ∀ n, (P727765466322332274.a n : ℤ) = A256718 n

end A256718

/-! ## A256718.P7055812528455186423

`∑[A051875(n)]`
-/

namespace A256718.P7055812528455186423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256718.P7055812528455186423

namespace A256718

/-- `∑[A051875(n)]` -/
def P7055812528455186423.Spec : Prop :=
  ∀ n, P7055812528455186423.a n = A256718 n

end A256718

/-! ## A256718.P182254838743607180

`∑[A226491(n)-n]`
-/

namespace A256718.P182254838743607180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226491 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256718.P182254838743607180

namespace A256718

/-- `∑[A226491(n)-n]` -/
def P182254838743607180.Spec : Prop :=
  ∀ n, P182254838743607180.a n = A256718 n

end A256718

/-! ## A256718.P10864532526372087109

`n*(A022265(n)-3)`
-/

namespace A256718.P10864532526372087109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A022265 n - 3)

end

end A256718.P10864532526372087109

namespace A256718

/-- `n*(A022265(n)-3)` -/
def P10864532526372087109.Spec : Prop :=
  ∀ n, P10864532526372087109.a n = A256718 n

end A256718

/-! ## A256718.P7182474071817312699

`∑[A152997(n)-∑[n]]`
-/

namespace A256718.P7182474071817312699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152997 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256718.P7182474071817312699

namespace A256718

/-- `∑[A152997(n)-∑[n]]` -/
def P7182474071817312699.Spec : Prop :=
  ∀ n, P7182474071817312699.a n = A256718 n

end A256718

/-! ## A256718.P10337097634671400947

`∑[A152759(n)-2*n]`
-/

namespace A256718.P10337097634671400947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152759 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256718.P10337097634671400947

namespace A256718

/-- `∑[A152759(n)-2*n]` -/
def P10337097634671400947.Spec : Prop :=
  ∀ n, P10337097634671400947.a n = A256718 n

end A256718

/-! ## A256718.P9040662703848443889

`(n+1)/2*A051868(n)`
-/

namespace A256718.P9040662703848443889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A051868 n : ℚ)

end

end A256718.P9040662703848443889

namespace A256718

/-- `(n+1)/2*A051868(n)` -/
def P9040662703848443889.Spec : Prop :=
  ∀ n, P9040662703848443889.a n = (A256718 n : ℚ)

theorem P9040662703848443889.correct : P9040662703848443889.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A256718, Nat.add_sub_cancel, A256718.P9040662703848443889.a, A256718.P6277892682753577741.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A256718, Nat.add_sub_cancel, A256718.P9040662703848443889.a, A256718.P6277892682753577741.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A256718

/-! ## A256718.P12884938153319208547

`A172082(n)+A135503(n)`
-/

namespace A256718.P12884938153319208547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172082 n + A135503 n

end

end A256718.P12884938153319208547

namespace A256718

/-- `A172082(n)+A135503(n)` -/
def P12884938153319208547.Spec : Prop :=
  ∀ n, P12884938153319208547.a n = A256718 n

end A256718

/-! ## A256718.P1556593167759423188

`A256646(n)-A135503(n)`
-/

namespace A256718.P1556593167759423188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256646 n - A135503 n

end

end A256718.P1556593167759423188

namespace A256718

/-- `A256646(n)-A135503(n)` -/
def P1556593167759423188.Spec : Prop :=
  ∀ n, P1556593167759423188.a n = A256718 n

end A256718

/-! ## A256718.P12659856323703156158

`∑[A152760(n)-A022264(n)]`
-/

namespace A256718.P12659856323703156158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n - A022264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256718.P12659856323703156158

namespace A256718

/-- `∑[A152760(n)-A022264(n)]` -/
def P12659856323703156158.Spec : Prop :=
  ∀ n, P12659856323703156158.a n = A256718 n

end A256718

/-! ## A256718.P11029777923094403337

`A084367(n)-A111694(n+1)`
-/

namespace A256718.P11029777923094403337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 n - A111694 (n + 1)

end

end A256718.P11029777923094403337

namespace A256718

/-- `A084367(n)-A111694(n+1)` -/
def P11029777923094403337.Spec : Prop :=
  ∀ n, P11029777923094403337.a n = A256718 n

end A256718

/-! ## A256718.P2242870024162958933

`A237616(n)+2*A135503(n)`
-/

namespace A256718.P2242870024162958933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237616 n + 2 * A135503 n

end

end A256718.P2242870024162958933

namespace A256718

/-- `A237616(n)+2*A135503(n)` -/
def P2242870024162958933.Spec : Prop :=
  ∀ n, P2242870024162958933.a n = A256718 n

end A256718

/-! ## A256718.P3669435535269605625

`2*A050441(n)-A000292(n)`
-/

namespace A256718.P3669435535269605625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050441 n - A000292 n

end

end A256718.P3669435535269605625

namespace A256718

/-- `2*A050441(n)-A000292(n)` -/
def P3669435535269605625.Spec : Prop :=
  ∀ n, P3669435535269605625.a n = A256718 n

end A256718

/-! ## A256718.P2415205236746315618

`2*A172073(n)-A002411(n)`
-/

namespace A256718.P2415205236746315618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172073 n - A002411 n

end

end A256718.P2415205236746315618

namespace A256718

/-- `2*A172073(n)-A002411(n)` -/
def P2415205236746315618.Spec : Prop :=
  ∀ n, P2415205236746315618.a n = A256718 n

end A256718

/-! ## A256718.P10939320167310072510

`2*A172076(n)-A007584(n)`
-/

namespace A256718.P10939320167310072510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172076 n - A007584 n

end

end A256718.P10939320167310072510

namespace A256718

/-- `2*A172076(n)-A007584(n)` -/
def P10939320167310072510.Spec : Prop :=
  ∀ n, P10939320167310072510.a n = A256718 n

end A256718

/-! ## A256718.P16152798756428530563

`2*A237616(n)-A007586(n)`
-/

namespace A256718.P16152798756428530563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237616 n - A007586 n

end

end A256718.P16152798756428530563

namespace A256718

/-- `2*A237616(n)-A007586(n)` -/
def P16152798756428530563.Spec : Prop :=
  ∀ n, P16152798756428530563.a n = A256718 n

end A256718

/-!
# A256722: Numbers k such that R_k + 20 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256722, there is no canonical definition to state claims against.
-/

/-! ## A256722.P3975278224503571455

`A003003(A095335(n+1)+A003003(3*n+1))`
-/

namespace A256722.P3975278224503571455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A095335 (n + 1) + A003003 (3 * n + 1)).toNat

end

end A256722.P3975278224503571455

/-!
# A256725: Numbers k such that R_k + 40 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256725, there is no canonical definition to state claims against.
-/

/-! ## A256725.P16529029634367652355

`A096139(A274144(n)+A052892(n))`
-/

namespace A256725.P16529029634367652355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096139 (A274144 n + A052892 n).toNat

end

end A256725.P16529029634367652355

/-! ## A256725.P6196096922972444498

`A096139(A096110(n+3)+A052892(n))`
-/

namespace A256725.P6196096922972444498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096139 (A096110 (n + 3) + A052892 n).toNat

end

end A256725.P6196096922972444498

/-!
# A256727: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum zero and no antidiagonal sum three.

The programs for A256727, there is no canonical definition to state claims against.
-/

/-! ## A256727.P876805532513035468

`A256735((n+1)²+n²)`
-/

namespace A256727.P876805532513035468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 ((n + 1) ^ 2 + n ^ 2)

end

end A256727.P876805532513035468

/-!
# A256728: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum zero and no antidiagonal sum three.

The programs for A256728, there is no canonical definition to state claims against.
-/

/-! ## A256728.P14456526692734981835

`A256735(∑[n]+1)`
-/

namespace A256728.P14456526692734981835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256728.P14456526692734981835

/-! ## A256728.P17730413784070654375

`lcm(2, A256735(A000124(n)))`
-/

namespace A256728.P17730413784070654375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A256735 (A000124 n).toNat)

end

end A256728.P17730413784070654375

/-! ## A256728.P9857277333886422873

`record[gcd(A002262(n), A256735(n+1))]`
-/

namespace A256728.P9857277333886422873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A256735 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256728.P9857277333886422873

/-! ## A256728.P12847128912351868341

`record[root(A256735(n+1), A002260(n+1))]`
-/

namespace A256728.P12847128912351868341
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A256735 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256728.P12847128912351868341

/-! ## A256728.P12227451543952814639

`A256735(A000124(n))%A256729(n+1)`
-/

namespace A256728.P12227451543952814639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256735 (A000124 n).toNat) (A256729 (n + 1))

end

end A256728.P12227451543952814639

/-!
# A256729: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum zero and no antidiagonal sum three.

The programs for A256729, there is no canonical definition to state claims against.
-/

/-! ## A256729.P1645730973353833086

`A256735(∑[n+1]+2)`
-/

namespace A256729.P1645730973353833086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256729.P1645730973353833086

/-! ## A256729.P1162116619895849665

`record[gcd(A002262(n), A256735(n+2))]`
-/

namespace A256729.P1162116619895849665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A256735 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256729.P1162116619895849665

/-! ## A256729.P14703424244287793303

`record[root(A256735(n+2), A002260(n+1))]`
-/

namespace A256729.P14703424244287793303
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A256735 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256729.P14703424244287793303

/-! ## A256729.P13931496269186924011

`record[gcd(A256735(n+3), A256759(n+1))]`
-/

namespace A256729.P13931496269186924011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256735 (n + 3)) (A256759 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256729.P13931496269186924011

/-! ## A256729.P13127682224871714875

`record[A097806(n+1)*A256735(n+2)]`
-/

namespace A256729.P13127682224871714875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (n + 1) * A256735 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256729.P13127682224871714875

/-!
# A256730: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum zero and no antidiagonal sum three.

The programs for A256730, there is no canonical definition to state claims against.
-/

/-! ## A256730.P13543146772236661308

`A256735(∑[n+2]+4)`
-/

namespace A256730.P13543146772236661308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A256730.P13543146772236661308

/-! ## A256730.P2625449963607482320

`lcm(2, A256735(A167614(n+1)))`
-/

namespace A256730.P2625449963607482320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A256735 (A167614 (n + 1)).toNat)

end

end A256730.P2625449963607482320

/-! ## A256730.P7972931863765036809

`A256735(A167614(n+1))%A256731(n+1)`
-/

namespace A256730.P7972931863765036809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256735 (A167614 (n + 1)).toNat) (A256731 (n + 1))

end

end A256730.P7972931863765036809

/-! ## A256730.P18030193138225703211

`and(A001478(n+1), A256735(A167614(n+1)))`
-/

namespace A256730.P18030193138225703211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001478 (n + 1)) (A256735 (A167614 (n + 1)).toNat)

end

end A256730.P18030193138225703211

/-! ## A256730.P356796768967854423

`A256735(A034856(n+2))+A000007(n+1)`
-/

namespace A256730.P356796768967854423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A256730.P356796768967854423

/-!
# A256731: Number of (n+2) X (4+2) 0..1 arrays with no 3 X 3 subblock diagonal sum zero and no antidiagonal sum three.

The programs for A256731, there is no canonical definition to state claims against.
-/

/-! ## A256731.P17976636418426614674

`A256735(A141214(n)+7)`
-/

namespace A256731.P17976636418426614674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A141214 n + 7).toNat

end

end A256731.P17976636418426614674

/-! ## A256731.P12018175408508711260

`A256735(A052905(n)+9)`
-/

namespace A256731.P12018175408508711260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A052905 n + 9).toNat

end

end A256731.P12018175408508711260

/-! ## A256731.P3059977097440931020

`A256735(A055999(n)+10)`
-/

namespace A256731.P3059977097440931020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A055999 n + 10).toNat

end

end A256731.P3059977097440931020

/-! ## A256731.P6871331432598842001

`A256735(A167614(n+2)+1)`
-/

namespace A256731.P6871331432598842001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A167614 (n + 2) + 1).toNat

end

end A256731.P6871331432598842001

/-! ## A256731.P13148714061576018748

`A256735(Δ[A264443(n)-n²])`
-/

namespace A256731.P13148714061576018748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (f1 (n + 1) - f1 n).toNat

end

end A256731.P13148714061576018748

/-!
# A256732: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum zero and no antidiagonal sum three.

The programs for A256732, there is no canonical definition to state claims against.
-/

/-! ## A256732.P13625733444791237522

`A256735(A155212(n)+13)`
-/

namespace A256732.P13625733444791237522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A155212 n + 13).toNat

end

end A256732.P13625733444791237522

/-! ## A256732.P3884697373840009669

`A256735(Δ[A264443(n)])`
-/

namespace A256732.P3884697373840009669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (f1 (n + 1) - f1 n).toNat

end

end A256732.P3884697373840009669

/-! ## A256732.P12822361230876011272

`A256735(A374005(n+1))`
-/

namespace A256732.P12822361230876011272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A374005 (n + 1)).toNat

end

end A256732.P12822361230876011272

/-! ## A256732.P5568147076744768300

`A256735(A046691(n+3))`
-/

namespace A256732.P5568147076744768300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A046691 (n + 3)).toNat

end

end A256732.P5568147076744768300

/-! ## A256732.P5637944983264794142

`A256735(A056115(n)+11)`
-/

namespace A256732.P5637944983264794142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A056115 n + 11).toNat

end

end A256732.P5637944983264794142

/-!
# A256733: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum zero and no antidiagonal sum three.

The programs for A256733, there is no canonical definition to state claims against.
-/

/-! ## A256733.P11077160023893790692

`A256735(A374007(n+1))`
-/

namespace A256733.P11077160023893790692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A374007 (n + 1)).toNat

end

end A256733.P11077160023893790692

/-! ## A256733.P16712951316918384642

`A256735(A052905(n+3))`
-/

namespace A256733.P16712951316918384642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A052905 (n + 3)).toNat

end

end A256733.P16712951316918384642

/-! ## A256733.P11706803708394128364

`A256735(eq[5, A193592(n)])`
-/

namespace A256733.P11706803708394128364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256733.P11706803708394128364

/-! ## A256733.P2307660605832660022

`A256735(eq[8, A185782(n+1)])`
-/

namespace A256733.P2307660605832660022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256733.P2307660605832660022

/-! ## A256733.P1834027883239028015

`A256735(Δ[A264443(n+1)]-1)`
-/

namespace A256733.P1834027883239028015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (f1 (n + 1) - f1 n - 1).toNat

end

end A256733.P1834027883239028015

/-!
# A256734: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum zero and no antidiagonal sum three.

The programs for A256734, there is no canonical definition to state claims against.
-/

/-! ## A256734.P14618790327708308795

`A256735(eq[8, A131818(n+1)])`
-/

namespace A256734.P14618790327708308795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256734.P14618790327708308795

/-! ## A256734.P15913821684541229361

`A256735(A374008(n+1))`
-/

namespace A256734.P15913821684541229361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A374008 (n + 1)).toNat

end

end A256734.P15913821684541229361

/-! ## A256734.P12833884848537344949

`A256735(A055999(n+4))`
-/

namespace A256734.P12833884848537344949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (A055999 (n + 4)).toNat

end

end A256734.P12833884848537344949

/-! ## A256734.P7673053993353559328

`A256735(eq[6, A193592(n)])`
-/

namespace A256734.P7673053993353559328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256734.P7673053993353559328

/-! ## A256734.P3339226481684453837

`A256735(eq[10, A185782(n+1)])`
-/

namespace A256734.P3339226481684453837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256735 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A256734.P3339226481684453837

/-!
# A256735: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with no 3x3 subblock diagonal sum zero and no antidiagonal sum three.

The programs for A256735, there is no canonical definition to state claims against.
-/

/-! ## A256735.P8886201121423754996

`A028310(A254854(n+1))*A223569(n+1)`
-/

namespace A256735.P8886201121423754996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A254854 (n + 1)).toNat * A223569 (n + 1)

end

end A256735.P8886201121423754996

/-! ## A256735.P8619140215112040180

`(A223569(n+1)*A254854(n+1))^A213217(n)`
-/

namespace A256735.P8619140215112040180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223569 (n + 1) * A254854 (n + 1) : ℚ) ^ (A213217 n : ℤ)

end

end A256735.P8619140215112040180

/-!
# A256736: Number of composites lying between successive pairs of primes, beginning with pair (3,5). Bisection of A046933.

The programs for A256736, the canonical program `A256736.P10823075426796552149` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256736 has offset 1).

The definition of A256736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A256736.P10823075426796552149

`A000040(2*(n+1)+1)-A000040(2*(n+1))-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A256736

/-- `A000040(2*(n+1)+1)-A000040(2*(n+1))-1` -/
def P10823075426796552149.Spec : Prop :=
  ∀ n, P10823075426796552149.a n = A256736 (n + 1)

theorem P10823075426796552149.correct : P10823075426796552149.Spec := by
  intro n
  simp only [A256736, Nat.add_sub_cancel]

end A256736

/-! ## A256736.P12741595308557860683

`A088680(n+1)-1`
-/

namespace A256736.P12741595308557860683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088680 (n + 1) - 1

end

end A256736.P12741595308557860683

namespace A256736

/-- `A088680(n+1)-1` -/
def P12741595308557860683.Spec : Prop :=
  ∀ n, P12741595308557860683.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P12895720720918031023

`A001223(2*(n+1))-1`
-/

namespace A256736.P12895720720918031023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1)) - 1

end

end A256736.P12895720720918031023

namespace A256736

/-- `A001223(2*(n+1))-1` -/
def P12895720720918031023.Spec : Prop :=
  ∀ n, P12895720720918031023.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P12182447566810049812

`Δ[A008347(2*n+1)]-1`
-/

namespace A256736.P12182447566810049812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A256736.P12182447566810049812

namespace A256736

/-- `Δ[A008347(2*n+1)]-1` -/
def P12182447566810049812.Spec : Prop :=
  ∀ n, P12182447566810049812.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P3859711176161346550

`abs(1-A001223(n+2+n))`
-/

namespace A256736.P3859711176161346550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A001223 (n + 2 + n)|

end

end A256736.P3859711176161346550

namespace A256736

/-- `abs(1-A001223(n+2+n))` -/
def P3859711176161346550.Spec : Prop :=
  ∀ n, P3859711176161346550.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P1060250759997888400

`A014681(A001223(2*(n+1)))`
-/

namespace A256736.P1060250759997888400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A001223 (2 * (n + 1))).toNat

end

end A256736.P1060250759997888400

namespace A256736

/-- `A014681(A001223(2*(n+1)))` -/
def P1060250759997888400.Spec : Prop :=
  ∀ n, P1060250759997888400.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P18040300226227175943

`A103889(A001223(2*n+2))`
-/

namespace A256736.P18040300226227175943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A001223 (2 * n + 2)).toNat

end

end A256736.P18040300226227175943

namespace A256736

/-- `A103889(A001223(2*n+2))` -/
def P18040300226227175943.Spec : Prop :=
  ∀ n, P18040300226227175943.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P7011351214403814979

`A259361(A001223(2*(n+1))²)`
-/

namespace A256736.P7011351214403814979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A001223 (2 * (n + 1)) ^ 2).toNat

end

end A256736.P7011351214403814979

namespace A256736

/-- `A259361(A001223(2*(n+1))²)` -/
def P7011351214403814979.Spec : Prop :=
  ∀ n, P7011351214403814979.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P2246550342688204614

`A256737(n+1)+A036263(2*n+1)`
-/

namespace A256736.P2246550342688204614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256737 (n + 1) + A036263 (2 * n + 1)

end

end A256736.P2246550342688204614

namespace A256736

/-- `A256737(n+1)+A036263(2*n+1)` -/
def P2246550342688204614.Spec : Prop :=
  ∀ n, P2246550342688204614.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P2863420759927171061

`A261470(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A256736.P2863420759927171061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261470 (2 * n) + a (n - 1)

end

end A256736.P2863420759927171061

namespace A256736

/-- `A261470(2*n)+a(n-1)` -/
def P2863420759927171061.Spec : Prop :=
  ∀ n, P2863420759927171061.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P5470865613916471662

`A176246(Δ[n²])`
-/

namespace A256736.P5470865613916471662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A256736.P5470865613916471662

namespace A256736

/-- `A176246(Δ[n²])` -/
def P5470865613916471662.Spec : Prop :=
  ∀ n, P5470865613916471662.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P5204655515914736579

`A046933(2*(n+1))`
-/

namespace A256736.P5204655515914736579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (2 * (n + 1))

end

end A256736.P5204655515914736579

namespace A256736

/-- `A046933(2*(n+1))` -/
def P5204655515914736579.Spec : Prop :=
  ∀ n, P5204655515914736579.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P6116799771577559939

`sqrt(A076821(2*(n+1)))-1`
-/

namespace A256736.P6116799771577559939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (2 * (n + 1)) : ℝ) - 1

end

end A256736.P6116799771577559939

namespace A256736

/-- `sqrt(A076821(2*(n+1)))-1` -/
def P6116799771577559939.Spec : Prop :=
  ∀ n, P6116799771577559939.a n = (A256736 (n + 1) : ℝ)

end A256736

/-! ## A256736.P14453354721155191987

`log2(A218075(2*(n+1)))-1`
-/

namespace A256736.P14453354721155191987
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (2 * (n + 1)) : ℝ) - 1

end

end A256736.P14453354721155191987

namespace A256736

/-- `log2(A218075(2*(n+1)))-1` -/
def P14453354721155191987.Spec : Prop :=
  ∀ n, P14453354721155191987.a n = (A256736 (n + 1) : ℝ)

end A256736

/-! ## A256736.P14055579758064224701

`2*A100820(2*(n+1))+1`
-/

namespace A256736.P14055579758064224701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100820 (2 * (n + 1)) + 1

end

end A256736.P14055579758064224701

namespace A256736

/-- `2*A100820(2*(n+1))+1` -/
def P14055579758064224701.Spec : Prop :=
  ∀ n, P14055579758064224701.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P15420120494552718615

`2*A028334(2*(n+1))-1`
-/

namespace A256736.P15420120494552718615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028334 (2 * (n + 1)) - 1

end

end A256736.P15420120494552718615

namespace A256736

/-- `2*A028334(2*(n+1))-1` -/
def P15420120494552718615.Spec : Prop :=
  ∀ n, P15420120494552718615.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P4339585904616393549

`(A100803(2*(n+1))-1)/2`
-/

namespace A256736.P4339585904616393549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100803 (2 * (n + 1)) - 1 : ℚ) / 2

end

end A256736.P4339585904616393549

namespace A256736

/-- `(A100803(2*(n+1))-1)/2` -/
def P4339585904616393549.Spec : Prop :=
  ∀ n, P4339585904616393549.a n = (A256736 (n + 1) : ℚ)

end A256736

/-! ## A256736.P72414760708059132

`or(1, A135732(2*n+1)-1)`
-/

namespace A256736.P72414760708059132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A135732 (2 * n + 1) - 1)

end

end A256736.P72414760708059132

namespace A256736

/-- `or(1, A135732(2*n+1)-1)` -/
def P72414760708059132.Spec : Prop :=
  ∀ n, P72414760708059132.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P16766274101974706248

`A176246(2*n+1)%(n+3)`
-/

namespace A256736.P16766274101974706248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176246 (2 * n + 1)) (n + 3 : ℤ)

end

end A256736.P16766274101974706248

namespace A256736

/-- `A176246(2*n+1)%(n+3)` -/
def P16766274101974706248.Spec : Prop :=
  ∀ n, P16766274101974706248.a n = A256736 (n + 1)

end A256736

/-! ## A256736.P16522030370518848897

`A004273(A028334(2*(n+1)))`
-/

namespace A256736.P16522030370518848897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A028334 (2 * (n + 1))).toNat

end

end A256736.P16522030370518848897

namespace A256736

/-- `A004273(A028334(2*(n+1)))` -/
def P16522030370518848897.Spec : Prop :=
  ∀ n, P16522030370518848897.a n = A256736 (n + 1)

end A256736

/-!
# A256737: Number of composites lying between successive pairs of primes, beginning with pair (2,3). Bisection of A046933.

The programs for A256737, the canonical program `A256737.P6811670045123415095` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256737 has offset 1).

The definition of A256737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256737.P6811670045123415095

`A078584(n+1)-1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A256737

/-- `A078584(n+1)-1` -/
def P6811670045123415095.Spec : Prop :=
  ∀ n, P6811670045123415095.a n = A256737 (n + 1)

theorem P6811670045123415095.correct : P6811670045123415095.Spec := by
  intro n
  simp only [A256737, Nat.add_sub_cancel]

end A256737

/-! ## A256737.P2164975545321809652

`A001223(Δ[n²])-1`
-/

namespace A256737.P2164975545321809652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A256737.P2164975545321809652

namespace A256737

/-- `A001223(Δ[n²])-1` -/
def P2164975545321809652.Spec : Prop :=
  ∀ n, P2164975545321809652.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P17363950446850234591

`Δ[A008347(2*n)]-1`
-/

namespace A256737.P17363950446850234591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A256737.P17363950446850234591

namespace A256737

/-- `Δ[A008347(2*n)]-1` -/
def P17363950446850234591.Spec : Prop :=
  ∀ n, P17363950446850234591.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P14636123022993620855

`A110854(n)+a(n-1)` with `a(0)=0`
-/

namespace A256737.P14636123022993620855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A110854 n + a (n - 1)

end

end A256737.P14636123022993620855

namespace A256737

/-- `A110854(n)+a(n-1)` -/
def P14636123022993620855.Spec : Prop :=
  ∀ n, P14636123022993620855.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P8683826632521230928

`∑[A110854(abs(1-n)+1)]`
-/

namespace A256737.P8683826632521230928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110854 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256737.P8683826632521230928

namespace A256737

/-- `∑[A110854(abs(1-n)+1)]` -/
def P8683826632521230928.Spec : Prop :=
  ∀ n, P8683826632521230928.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P13456503126136472738

`A023443(A001223(2*n+1))`
-/

namespace A256737.P13456503126136472738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001223 (2 * n + 1)).toNat

end

end A256737.P13456503126136472738

namespace A256737

/-- `A023443(A001223(2*n+1))` -/
def P13456503126136472738.Spec : Prop :=
  ∀ n, P13456503126136472738.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P13278201801215089090

`A259361(A001223(2*n+1)²)`
-/

namespace A256737.P13278201801215089090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A001223 (2 * n + 1) ^ 2).toNat

end

end A256737.P13278201801215089090

namespace A256737

/-- `A259361(A001223(2*n+1)²)` -/
def P13278201801215089090.Spec : Prop :=
  ∀ n, P13278201801215089090.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P11068754495237418338

`A093048(A001223(2*n+1)-1)`
-/

namespace A256737.P11068754495237418338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (A001223 (2 * n + 1) - 1).toNat

end

end A256737.P11068754495237418338

namespace A256737

/-- `A093048(A001223(2*n+1)-1)` -/
def P11068754495237418338.Spec : Prop :=
  ∀ n, P11068754495237418338.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P18261501132370262678

`A350091(A001223(2*n+1)-1)`
-/

namespace A256737.P18261501132370262678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350091 (A001223 (2 * n + 1) - 1).toNat

end

end A256737.P18261501132370262678

namespace A256737

/-- `A350091(A001223(2*n+1)-1)` -/
def P18261501132370262678.Spec : Prop :=
  ∀ n, P18261501132370262678.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P298677095105754004

`A279119(2*A001223(2*n+1))`
-/

namespace A256737.P298677095105754004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A001223 (2 * n + 1)).toNat

end

end A256737.P298677095105754004

namespace A256737

/-- `A279119(2*A001223(2*n+1))` -/
def P298677095105754004.Spec : Prop :=
  ∀ n, P298677095105754004.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P5780777638127263346

`A330492(2*A001223(2*n+1))`
-/

namespace A256737.P5780777638127263346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (2 * A001223 (2 * n + 1)).toNat

end

end A256737.P5780777638127263346

namespace A256737

/-- `A330492(2*A001223(2*n+1))` -/
def P5780777638127263346.Spec : Prop :=
  ∀ n, P5780777638127263346.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P14289639048708772429

`∑[A110854(n+1)]-A110854(n+1)`
-/

namespace A256737.P14289639048708772429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110854 (n + 1)

end

end A256737.P14289639048708772429

namespace A256737

/-- `∑[A110854(n+1)]-A110854(n+1)` -/
def P14289639048708772429.Spec : Prop :=
  ∀ n, P14289639048708772429.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P15657727819941017347

`A256736(n+1)-A036263(2*n+1)`
-/

namespace A256737.P15657727819941017347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256736 (n + 1) - A036263 (2 * n + 1)

end

end A256737.P15657727819941017347

namespace A256737

/-- `A256736(n+1)-A036263(2*n+1)` -/
def P15657727819941017347.Spec : Prop :=
  ∀ n, P15657727819941017347.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P3791561701735739165

`A330545(2*n+1)-A330545(2*(n+1))`
-/

namespace A256737.P3791561701735739165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330545 (2 * n + 1) - A330545 (2 * (n + 1))

end

end A256737.P3791561701735739165

namespace A256737

/-- `A330545(2*n+1)-A330545(2*(n+1))` -/
def P3791561701735739165.Spec : Prop :=
  ∀ n, P3791561701735739165.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P5383327563740538932

`A046933(Δ[n²])`
-/

namespace A256737.P5383327563740538932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A256737.P5383327563740538932

namespace A256737

/-- `A046933(Δ[n²])` -/
def P5383327563740538932.Spec : Prop :=
  ∀ n, P5383327563740538932.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P15034871012149062611

`A008866(Δ[n²])-1`
-/

namespace A256737.P15034871012149062611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008866 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A256737.P15034871012149062611

namespace A256737

/-- `A008866(Δ[n²])-1` -/
def P15034871012149062611.Spec : Prop :=
  ∀ n, P15034871012149062611.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P11814063085186331405

`A075526(Δ[n²])-1`
-/

namespace A256737.P11814063085186331405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A256737.P11814063085186331405

namespace A256737

/-- `A075526(Δ[n²])-1` -/
def P11814063085186331405.Spec : Prop :=
  ∀ n, P11814063085186331405.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P7415989026056495073

`Δ[A083236(2*n)]-1`
-/

namespace A256737.P7415989026056495073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083236 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A256737.P7415989026056495073

namespace A256737

/-- `Δ[A083236(2*n)]-1` -/
def P7415989026056495073.Spec : Prop :=
  ∀ n, P7415989026056495073.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P8720616758639091481

`A054541(2*(n+1))-1`
-/

namespace A256737.P8720616758639091481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (2 * (n + 1)) - 1

end

end A256737.P8720616758639091481

namespace A256737

/-- `A054541(2*(n+1))-1` -/
def P8720616758639091481.Spec : Prop :=
  ∀ n, P8720616758639091481.a n = A256737 (n + 1)

end A256737

/-! ## A256737.P2968415857542035341

`A125266(2*(n+1))-1`
-/

namespace A256737.P2968415857542035341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (2 * (n + 1)) - 1

end

end A256737.P2968415857542035341

namespace A256737

/-- `A125266(2*(n+1))-1` -/
def P2968415857542035341.Spec : Prop :=
  ∀ n, P2968415857542035341.a n = A256737 (n + 1)

end A256737

/-!
# A256739: Unique sequence satisfying SumXOR_{d divides n} a(d) = n for any n>0, where SumXOR is the analog of summation under the binary XOR operation.

The programs for A256739, there is no canonical definition to state claims against.
-/

/-! ## A256739.P6818570156626008777

`xor(n+1, A296207(n+1))`
-/

namespace A256739.P6818570156626008777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A296207 (n + 1))

end

end A256739.P6818570156626008777

/-! ## A256739.P15856983413664602025

`A003188(A297110(n+1))`
-/

namespace A256739.P15856983413664602025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A297110 (n + 1)).toNat

end

end A256739.P15856983413664602025

/-! ## A256739.P8372754861896159264

`A004526(A065621(A297110(n+1)+1))`
-/

namespace A256739.P8372754861896159264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065621 (A297110 (n + 1) + 1).toNat).toNat

end

end A256739.P8372754861896159264

/-! ## A256739.P4371927099844086098

`xor(A178910(n+1), A248663(A300830(n+1)))`
-/

namespace A256739.P4371927099844086098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178910 (n + 1)) (A248663 (A300830 (n + 1)).toNat)

end

end A256739.P4371927099844086098

/-! ## A256739.P14335934093121344534

`xor(n+1, A248663(A300831(n+1)*A300832(n+1)))`
-/

namespace A256739.P14335934093121344534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A248663 (A300831 (n + 1) * A300832 (n + 1)).toNat)

end

end A256739.P14335934093121344534

/-!
# A256740: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 3 and no antidiagonal sum 3 and no row sum 0 and no column sum 0.

The programs for A256740, there is no canonical definition to state claims against.
-/

/-! ## A256740.P8147318791538608433

`A256748((n+1)²+n²)`
-/

namespace A256740.P8147318791538608433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 ((n + 1) ^ 2 + n ^ 2)

end

end A256740.P8147318791538608433

/-! ## A256740.P14630696053903298063

`record[A256748(A003602((n+1)²))]`
-/

namespace A256740.P14630696053903298063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256740.P14630696053903298063

/-! ## A256740.P2227411336543344458

`record[A003982(n)*A256748(n+1)]`
-/

namespace A256740.P2227411336543344458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A256748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256740.P2227411336543344458

/-! ## A256740.P13908851497319761788

`record[gcd(A003987(n), A256748(n+1))]`
-/

namespace A256740.P13908851497319761788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A256748 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256740.P13908851497319761788

/-! ## A256740.P3821704067990517314

`lcm(A000034(n), A256748(A001844(n)))`
-/

namespace A256740.P3821704067990517314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A256748 (A001844 n).toNat)

end

end A256740.P3821704067990517314

/-!
# A256741: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 3 and no antidiagonal sum 3 and no row sum 0 and no column sum 0.

The programs for A256741, there is no canonical definition to state claims against.
-/

/-! ## A256741.P16469142765221456043

`A256748(∑[n]+1)`
-/

namespace A256741.P16469142765221456043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256741.P16469142765221456043

/-! ## A256741.P12451089201834474393

`record[A256748(A106247(n))]`
-/

namespace A256741.P12451089201834474393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A106247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256741.P12451089201834474393

/-! ## A256741.P7612992691540924946

`or(A000007(n), A256748(A000124(n)))`
-/

namespace A256741.P7612992691540924946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A256748 (A000124 n).toNat)

end

end A256741.P7612992691540924946

/-! ## A256741.P12142204425438046501

`A256748(A000124(n))%A250998(n+1)`
-/

namespace A256741.P12142204425438046501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256748 (A000124 n).toNat) (A250998 (n + 1))

end

end A256741.P12142204425438046501

/-! ## A256741.P17017010665666845549

`A256748(A000217(n)+1)%A256764(n+1)`
-/

namespace A256741.P17017010665666845549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256748 (A000217 n + 1).toNat) (A256764 (n + 1))

end

end A256741.P17017010665666845549

/-! ## A256741.P13421734706883326324

`A256748(A000217(n+1))+and(2, n²)`
-/

namespace A256741.P13421734706883326324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A000217 (n + 1)).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A256741.P13421734706883326324

/-! ## A256741.P6881265516016368335

`A256748(A000217(n+1))+A000007(n+1)`
-/

namespace A256741.P6881265516016368335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A256741.P6881265516016368335

/-! ## A256741.P6700099662447926745

`A256748(A000217(n+1))+A000035(2*n)`
-/

namespace A256741.P6700099662447926745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A000217 (n + 1)).toNat + A000035 (2 * n)

end

end A256741.P6700099662447926745

/-! ## A256741.P17064029894330045278

`A253414(2*n)²*A256748(A000217(n+1))`
-/

namespace A256741.P17064029894330045278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (2 * n) ^ 2 * A256748 (A000217 (n + 1)).toNat

end

end A256741.P17064029894330045278

/-! ## A256741.P269729254384891952

`and(1, A092168(n+1))*A256748(A000217(n+1))`
-/

namespace A256741.P269729254384891952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A092168 (n + 1)) * A256748 (A000217 (n + 1)).toNat

end

end A256741.P269729254384891952

/-!
# A256742: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 3 and no antidiagonal sum 3 and no row sum 0 and no column sum 0.

The programs for A256742, there is no canonical definition to state claims against.
-/

/-! ## A256742.P2561232842475410000

`A256748(∑[n+1]+2)`
-/

namespace A256742.P2561232842475410000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A256742.P2561232842475410000

/-! ## A256742.P6848602992235730993

`A256748(A000096(n)+3)+A000007(n+1)`
-/

namespace A256742.P6848602992235730993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A000096 n + 3).toNat + A000007 (n + 1)

end

end A256742.P6848602992235730993

/-! ## A256742.P5126736551197549967

`A256748(A000096(n)+3)%A256765(n+1)`
-/

namespace A256742.P5126736551197549967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256748 (A000096 n + 3).toNat) (A256765 (n + 1))

end

end A256742.P5126736551197549967

/-! ## A256742.P3292349327797490876

`lcm(A111616(n+1), A256748(A000096(n)+3))`
-/

namespace A256742.P3292349327797490876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A111616 (n + 1)) (A256748 (A000096 n + 3).toNat)

end

end A256742.P3292349327797490876

/-! ## A256742.P12572746588516072355

`A011558(Δ[3*n^3])*A256748(A000096(n)+3)`
-/

namespace A256742.P12572746588516072355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A256748 (A000096 n + 3).toNat

end

end A256742.P12572746588516072355

/-! ## A256742.P7093140082438308128

`A007318(A000217(n))*A256748(A000096(n)+3)`
-/

namespace A256742.P7093140082438308128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A256748 (A000096 n + 3).toNat

end

end A256742.P7093140082438308128

/-! ## A256742.P15183173984952630754

`A083888(A104793(n+1))*A256748(A000096(n)+3)`
-/

namespace A256742.P15183173984952630754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (A104793 (n + 1)).toNat * A256748 (A000096 n + 3).toNat

end

end A256742.P15183173984952630754

/-! ## A256742.P12303408988503640761

`A014963(A000217(n+5))*A256748(A000096(n)+3)`
-/

namespace A256742.P12303408988503640761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 5)).toNat * A256748 (A000096 n + 3).toNat

end

end A256742.P12303408988503640761

/-! ## A256742.P9177971380783882121

`A001222(A233346(n+2))*A256748(A000096(n+1))`
-/

namespace A256742.P9177971380783882121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A233346 (n + 2)).toNat * A256748 (A000096 (n + 1)).toNat

end

end A256742.P9177971380783882121

/-! ## A256742.P14740877250174275202

`A111616(2*n+1)*A256748(A000096(n+1))`
-/

namespace A256742.P14740877250174275202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (2 * n + 1) * A256748 (A000096 (n + 1)).toNat

end

end A256742.P14740877250174275202

/-!
# A256743: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 3 and no antidiagonal sum 3 and no row sum 0 and no column sum 0.

The programs for A256743, there is no canonical definition to state claims against.
-/

/-! ## A256743.P17736227747532840938

`A256748(∑[n+2]+4)`
-/

namespace A256743.P17736227747532840938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A256743.P17736227747532840938

/-! ## A256743.P17262077854457098883

`abs(1-A256748(A167614(n+1)))+1`
-/

namespace A256743.P17262077854457098883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A256748 (A167614 (n + 1)).toNat| + 1

end

end A256743.P17262077854457098883

/-! ## A256743.P11919833144558158779

`lcm(A000034(n), A256748(A167614(n+1)))`
-/

namespace A256743.P11919833144558158779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A256748 (A167614 (n + 1)).toNat)

end

end A256743.P11919833144558158779

/-! ## A256743.P17929228729735909234

`or(A000007(n), A256748(A167614(n+1)))`
-/

namespace A256743.P17929228729735909234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A256748 (A167614 (n + 1)).toNat)

end

end A256743.P17929228729735909234

/-! ## A256743.P2381933255581442740

`A007318(C(2, n))*A256748(A167614(n+1))`
-/

namespace A256743.P2381933255581442740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A256748 (A167614 (n + 1)).toNat

end

end A256743.P2381933255581442740

/-! ## A256743.P2521558099810492085

`A000108(C(2, n+2))*A256748(A167614(n+1))`
-/

namespace A256743.P2521558099810492085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A256748 (A167614 (n + 1)).toNat

end

end A256743.P2521558099810492085

/-! ## A256743.P13862890928713453951

`A000010(ceil(1/(n+1)))*A256748(A167614(n+1))`
-/

namespace A256743.P13862890928713453951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈1 / (n + 1 : ℚ)⌉.toNat * A256748 (A167614 (n + 1)).toNat

end

end A256743.P13862890928713453951

/-! ## A256743.P17843237046157579301

`A000203(ceil(1/(n+1)))*A256748(A167614(n+1))`
-/

namespace A256743.P17843237046157579301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌈1 / (n + 1 : ℚ)⌉.toNat * A256748 (A167614 (n + 1)).toNat

end

end A256743.P17843237046157579301

/-! ## A256743.P2009873410663862692

`A001222(record[A014963(n+2)])*A256748(A167614(n+1))`
-/

namespace A256743.P2009873410663862692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A256748 (A167614 (n + 1)).toNat

end

end A256743.P2009873410663862692

/-!
# A256744: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 3 and no antidiagonal sum 3 and no row sum 0 and no column sum 0.

The programs for A256744, there is no canonical definition to state claims against.
-/

/-! ## A256744.P5624049423486775649

`A256748(∑[n+3]+7)`
-/

namespace A256744.P5624049423486775649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A256744.P5624049423486775649

/-! ## A256744.P17435538227286400456

`and(-3, A256748(Δ[A005586(n)]+5))`
-/

namespace A256744.P17435538227286400456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A256748 (f1 (n + 1) - f1 n + 5).toNat)

end

end A256744.P17435538227286400456

/-! ## A256744.P14361815783202451584

`and(-3, A256748(A034856(n+2)+6))`
-/

namespace A256744.P14361815783202451584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A256748 (A034856 (n + 2) + 6).toNat)

end

end A256744.P14361815783202451584

/-! ## A256744.P13082737020887421236

`A256748(A052905(n)+9)%A256745(n+1)`
-/

namespace A256744.P13082737020887421236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256748 (A052905 n + 9).toNat) (A256745 (n + 1))

end

end A256744.P13082737020887421236

/-! ## A256744.P6596759791282039473

`A256748(Δ[A005586(n)]+5)%A256745(n+1)`
-/

namespace A256744.P6596759791282039473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256748 (f1 (n + 1) - f1 n + 5).toNat) (A256745 (n + 1))

end

end A256744.P6596759791282039473

/-! ## A256744.P6029626940060168041

`A256748(A027379(n+2))%A256747(n+1)`
-/

namespace A256744.P6029626940060168041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256748 (A027379 (n + 2)).toNat) (A256747 (n + 1))

end

end A256744.P6029626940060168041

/-!
# A256745: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 3 and no antidiagonal sum 3 and no row sum 0 and no column sum 0.

The programs for A256745, there is no canonical definition to state claims against.
-/

/-! ## A256745.P17055894933401353154

`A256748(∑[n+4]+11)`
-/

namespace A256745.P17055894933401353154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A256745.P17055894933401353154

/-! ## A256745.P5341898674821874977

`A256748(A167499(n+3))+C(n, n+2)`
-/

namespace A256745.P5341898674821874977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A167499 (n + 3)).toNat + (Nat.choose n (n + 2) : ℤ)

end

end A256745.P5341898674821874977

/-! ## A256745.P17268194866306455955

`A256748(A167499(n+3))%A256747(n+1)`
-/

namespace A256745.P17268194866306455955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256748 (A167499 (n + 3)).toNat) (A256747 (n + 1))

end

end A256745.P17268194866306455955

/-! ## A256745.P12441810895669070860

`A256748(A000217(n+4)+5)%A256747(n+1)`
-/

namespace A256745.P12441810895669070860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256748 (A000217 (n + 4) + 5).toNat) (A256747 (n + 1))

end

end A256745.P12441810895669070860

/-! ## A256745.P581030497837613327

`A000035(A268033(n+1))*A256748(A167499(n+3))`
-/

namespace A256745.P581030497837613327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A268033 (n + 1)).toNat * A256748 (A167499 (n + 3)).toNat

end

end A256745.P581030497837613327

/-! ## A256745.P17186439826534525560

`A256748(A167499(n+3))/A108104(A002325(n+2)+1)`
-/

namespace A256745.P17186439826534525560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256748 (A167499 (n + 3)).toNat : ℚ) / (A108104 (A002325 (n + 2) + 1).toNat : ℚ)

end

end A256745.P17186439826534525560

/-! ## A256745.P9709779143313716147

`A000035(A268033(n+1))*A256748(A000217(n+4)+5)`
-/

namespace A256745.P9709779143313716147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A268033 (n + 1)).toNat * A256748 (A000217 (n + 4) + 5).toNat

end

end A256745.P9709779143313716147

/-! ## A256745.P2000811205934335443

`A001222(A233346(n+1))*A256748(A000096(n+4)-3)`
-/

namespace A256745.P2000811205934335443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A233346 (n + 1)).toNat * A256748 (A000096 (n + 4) - 3).toNat

end

end A256745.P2000811205934335443

/-!
# A256746: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 3 and no antidiagonal sum 3 and no row sum 0 and no column sum 0.

The programs for A256746, there is no canonical definition to state claims against.
-/

/-! ## A256746.P4223129015459223329

`A256748(A374007(n+1))`
-/

namespace A256746.P4223129015459223329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A374007 (n + 1)).toNat

end

end A256746.P4223129015459223329

/-! ## A256746.P11751113982165316955

`A256748((n+4)²-(∑[n]+n))`
-/

namespace A256746.P11751113982165316955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 ((n + 4) ^ 2 - (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A256746.P11751113982165316955

/-! ## A256746.P6673759155741601852

`lcm(2, A256748(A000124(n+6)-6))`
-/

namespace A256746.P6673759155741601852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A256748 (A000124 (n + 6) - 6).toNat)

end

end A256746.P6673759155741601852

/-! ## A256746.P14825512890352690600

`A256748(A000124(n+6)-6)%A256747(n+1)`
-/

namespace A256746.P14825512890352690600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256748 (A000124 (n + 6) - 6).toNat) (A256747 (n + 1))

end

end A256746.P14825512890352690600

/-! ## A256746.P6075148521623637639

`A256748(A000124(n+5)+n)+A000007(n+1)`
-/

namespace A256746.P6075148521623637639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A000124 (n + 5) + (n : ℤ)).toNat + A000007 (n + 1)

end

end A256746.P6075148521623637639

/-! ## A256746.P8135962204497094366

`A256748(A000124(n+5)+n)+A008857(A001222(n+1))`
-/

namespace A256746.P8135962204497094366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A000124 (n + 5) + (n : ℤ)).toNat + A008857 (A001222 (n + 1)).toNat

end

end A256746.P8135962204497094366

/-! ## A256746.P4002940662153233730

`A256748(A000124(n+5)+n)/A001222(A002476(n+1))`
-/

namespace A256746.P4002940662153233730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256748 (A000124 (n + 5) + (n : ℤ)).toNat : ℚ) / (A001222 (A002476 (n + 1)).toNat : ℚ)

end

end A256746.P4002940662153233730

/-!
# A256747: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 3 and no antidiagonal sum 3 and no row sum 0 and no column sum 0.

The programs for A256747, there is no canonical definition to state claims against.
-/

/-! ## A256747.P3280258762451792215

`A256748(A374008(n+1))`
-/

namespace A256747.P3280258762451792215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A374008 (n + 1)).toNat

end

end A256747.P3280258762451792215

/-! ## A256747.P3796163487838702628

`A256748(A166136(n+5)+1)`
-/

namespace A256747.P3796163487838702628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A166136 (n + 5) + 1).toNat

end

end A256747.P3796163487838702628

/-! ## A256747.P6880836700317471197

`A256748(A000217(n+6)+7)`
-/

namespace A256747.P6880836700317471197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A000217 (n + 6) + 7).toNat

end

end A256747.P6880836700317471197

/-! ## A256747.P17476901981956622366

`A256748(A046691(n+4)+11)`
-/

namespace A256747.P17476901981956622366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A046691 (n + 4) + 11).toNat

end

end A256747.P17476901981956622366

/-! ## A256747.P17115660895621287904

`A256748(Δ[A026054(n+4)]-n+6)`
-/

namespace A256747.P17115660895621287904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (f1 (n + 1) - f1 n - (n : ℤ) + 6).toNat

end

end A256747.P17115660895621287904

/-! ## A256747.P217397806357193200

`A256748(A052905(n+5)-3-2*n)`
-/

namespace A256747.P217397806357193200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A052905 (n + 5) - 3 - (2 * n : ℤ)).toNat

end

end A256747.P217397806357193200

/-! ## A256747.P4599757367576258613

`A256748(A055999(n+4))`
-/

namespace A256747.P4599757367576258613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A055999 (n + 4)).toNat

end

end A256747.P4599757367576258613

/-! ## A256747.P6130841895321385485

`A256748(Δ[A026054(n+4)])`
-/

namespace A256747.P6130841895321385485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (f1 (n + 1) - f1 n).toNat

end

end A256747.P6130841895321385485

/-! ## A256747.P12724294448376825393

`A256748(A000124(n+7)-7)`
-/

namespace A256747.P12724294448376825393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256748 (A000124 (n + 7) - 7).toNat

end

end A256747.P12724294448376825393

/-!
# A256749: a(n) is the time expressed in seconds starting at 0:00:00 at which the second-hand of a classical three hands clock is passing over any of the two other hands considering the minute-hand turns of 6 degrees in one minute and the hour-hand of 6 degrees in 12 minutes.

The programs for A256749, there is no canonical definition to state claims against.
-/

/-! ## A256749.P16149612325179022943

`record[A296767(n+1)-A296767(A094526(n))]`
-/

namespace A256749.P16149612325179022943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296767 (n + 1) - A296767 (A094526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256749.P16149612325179022943

/-! ## A256749.P14619913230560586513

`record[A296767(n+1)-A296767(A008518(n))]`
-/

namespace A256749.P14619913230560586513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296767 (n + 1) - A296767 (A008518 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256749.P14619913230560586513

/-! ## A256749.P17089639968515311026

`record[A296767(n+1)-A296767(A141689(n+1))]`
-/

namespace A256749.P17089639968515311026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296767 (n + 1) - A296767 (A141689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256749.P17089639968515311026

/-!
# A256750: Start with n, and repeatedly apply the arithmetic derivative A003415. |a(n)| = the number of iterations to reach 0 (then a(n) is taken nonnegative) or a number having a factor of the form p^p with prime p, in which case a(n) = -|a(n)|.

The programs for A256750, there is no canonical definition to state claims against.
-/

/-! ## A256750.P7757024832813997099

`A361869(n)%A122853(n+1)`
-/

namespace A256750.P7757024832813997099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361869 n) (A122853 (n + 1))

end

end A256750.P7757024832813997099

/-! ## A256750.P16295140373301014575

`A361869(n)+A000038(A027306(n))`
-/

namespace A256750.P16295140373301014575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361869 n + A000038 (A027306 n).toNat

end

end A256750.P16295140373301014575

/-! ## A256750.P10023008854231463236

`A361869(n)+A147843(A006011(n))`
-/

namespace A256750.P10023008854231463236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361869 n + A147843 (A006011 n).toNat

end

end A256750.P10023008854231463236

/-! ## A256750.P17504259396165296473

`A361869(n)+A000038(A192065(n))`
-/

namespace A256750.P17504259396165296473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361869 n + A000038 (A192065 n).toNat

end

end A256750.P17504259396165296473

/-! ## A256750.P12119854470577914035

`A361869(n)+A000038(A274836(n))`
-/

namespace A256750.P12119854470577914035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361869 n + A000038 (A274836 n).toNat

end

end A256750.P12119854470577914035

/-!
# A256752: Number of ways to place non-intersecting diagonals in a convex (n+2)-gon so as to create no hexagons.

The programs for A256752, there is no canonical definition to state claims against.
-/

/-! ## A256752.P7461322334168352345

`A101402(A123894(n))+n`
-/

namespace A256752.P7461322334168352345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A123894 n).toNat + (n : ℤ)

end

end A256752.P7461322334168352345

/-! ## A256752.P11867685902973917852

`A062108(A246813(n)+∑[n])`
-/

namespace A256752.P11867685902973917852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A246813 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A256752.P11867685902973917852

/-!
# A256753: Numbers n such that n is both the average of some twin prime pair p, q (q = p+2) (i.e., n = p+1 = q-1) and is also the average of the prime before p and the prime after q.

The programs for A256753, there is no canonical definition to state claims against.
-/

/-! ## A256753.P2357483854652121658

`∩[A014574(n+1), A263674(n+1)]`
-/

namespace A256753.P2357483854652121658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P2357483854652121658

/-! ## A256753.P1059723957361917796

`∩[A217259(n+1), A263674(n+1)]`
-/

namespace A256753.P1059723957361917796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P1059723957361917796

/-! ## A256753.P7727312409108781300

`∩[A120432(n+1), A263674(n+1)]`
-/

namespace A256753.P7727312409108781300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P7727312409108781300

/-! ## A256753.P3086580678378803979

`xor(1, p?[A263674(n+1)+1])`
-/

namespace A256753.P3086580678378803979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A256753.P3086580678378803979

/-! ## A256753.P17934699042569044861

`∩[A263674(n+1), A398905(n+1)]`
-/

namespace A256753.P17934699042569044861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P17934699042569044861

/-! ## A256753.P11731826318681336872

`∩[A055670(n+1), A263674(n+1)]`
-/

namespace A256753.P11731826318681336872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P11731826318681336872

/-! ## A256753.P7207760607627553516

`∩[A014574(n+1), A102655(n+1)]`
-/

namespace A256753.P7207760607627553516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P7207760607627553516

/-! ## A256753.P10569431649259604018

`∩[A102655(n+1), A217259(n+1)]`
-/

namespace A256753.P10569431649259604018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P10569431649259604018

/-! ## A256753.P13332884851370630742

`∩[A141515(n+1), A263674(n+1)]`
-/

namespace A256753.P13332884851370630742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P13332884851370630742

/-! ## A256753.P6836028423564172255

`∩[A167706(n+1), A263674(n+1)]`
-/

namespace A256753.P6836028423564172255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P6836028423564172255

/-! ## A256753.P11384660742613900713

`∩[A176888(n+1), A263674(n+1)]`
-/

namespace A256753.P11384660742613900713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P11384660742613900713

/-! ## A256753.P15698946526548890736

`∩[A263674(n+1), A028815(n)]`
-/

namespace A256753.P15698946526548890736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P15698946526548890736

/-! ## A256753.P11016078958786251286

`∩[A006093(n+1), A263674(n+1)]`
-/

namespace A256753.P11016078958786251286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P11016078958786251286

/-! ## A256753.P12716942520949868837

`∩[A008864(n+1), A263674(n+1)]`
-/

namespace A256753.P12716942520949868837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P12716942520949868837

/-! ## A256753.P4337792319953836215

`∩[A068499(n+1), A263674(n+1)]`
-/

namespace A256753.P4337792319953836215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P4337792319953836215

/-! ## A256753.P16194317130819506574

`∩[A093515(n+1), A263674(n+1)]`
-/

namespace A256753.P16194317130819506574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P16194317130819506574

/-! ## A256753.P1057599444213295587

`∩[A135731(n+1), A263674(n+1)]`
-/

namespace A256753.P1057599444213295587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A256753.P1057599444213295587

/-!
# A256754: a(n) = bitwise AND of n and the reverse of n.

The programs for A256754, there is no canonical definition to state claims against.
-/

/-! ## A256754.P11274622498494709718

`and(n, A004086(n))`
-/

namespace A256754.P11274622498494709718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A004086 n)

end

end A256754.P11274622498494709718

/-! ## A256754.P14412557092804333053

`and(n, A056964(n)-n)`
-/

namespace A256754.P14412557092804333053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A056964 n - (n : ℤ))

end

end A256754.P14412557092804333053

/-! ## A256754.P7971147460222988018

`and(n, n-A056965(n))`
-/

namespace A256754.P7971147460222988018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - A056965 n)

end

end A256754.P7971147460222988018

/-! ## A256754.P16350929692202494034

`A056964(n)-A256755(n)`
-/

namespace A256754.P16350929692202494034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n - A256755 n

end

end A256754.P16350929692202494034

/-! ## A256754.P13454211691710856761

`A256755(n)-A256756(n)`
-/

namespace A256754.P13454211691710856761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256755 n - A256756 n

end

end A256754.P13454211691710856761

/-! ## A256754.P15334321058482899658

`(A056964(n)-A256756(n))/2`
-/

namespace A256754.P15334321058482899658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 n - A256756 n : ℚ) / 2

end

end A256754.P15334321058482899658

/-! ## A256754.P16229503393352198161

`A004086(n)+n-A256755(n)`
-/

namespace A256754.P16229503393352198161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n + ((n : ℤ) - A256755 n)

end

end A256754.P16229503393352198161

/-!
# A256755: a(n) = bitwise OR of n and the reverse of n.

The programs for A256755, there is no canonical definition to state claims against.
-/

/-! ## A256755.P301229995900315304

`or(n, A004086(n))`
-/

namespace A256755.P301229995900315304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A004086 n)

end

end A256755.P301229995900315304

/-! ## A256755.P16910126637605361762

`or(n, A256756(n))`
-/

namespace A256755.P16910126637605361762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A256756 n)

end

end A256755.P16910126637605361762

/-! ## A256755.P3562045093640792657

`or(n, A056964(n)-n)`
-/

namespace A256755.P3562045093640792657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A056964 n - (n : ℤ))

end

end A256755.P3562045093640792657

/-! ## A256755.P13863886599028085813

`or(n, n-A056965(n))`
-/

namespace A256755.P13863886599028085813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A056965 n)

end

end A256755.P13863886599028085813

/-! ## A256755.P247071114297435249

`A256756(n)+A256754(n)`
-/

namespace A256755.P247071114297435249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n + A256754 n

end

end A256755.P247071114297435249

/-! ## A256755.P16558981752347484594

`A056964(n)-A256754(n)`
-/

namespace A256755.P16558981752347484594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n - A256754 n

end

end A256755.P16558981752347484594

/-! ## A256755.P16651378906869710815

`(A256756(n)+A056964(n))/2`
-/

namespace A256755.P16651378906869710815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256756 n + A056964 n : ℚ) / 2

end

end A256755.P16651378906869710815

/-!
# A256756: a(n) = bitwise XOR of n and the reverse of n.

The programs for A256756, there is no canonical definition to state claims against.
-/

/-! ## A256756.P3921626040299600675

`xor(n, A004086(n))`
-/

namespace A256756.P3921626040299600675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004086 n)

end

end A256756.P3921626040299600675

/-! ## A256756.P10851568588590544084

`xor(n, A056964(n)-n)`
-/

namespace A256756.P10851568588590544084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A056964 n - (n : ℤ))

end

end A256756.P10851568588590544084

/-! ## A256756.P5529588083339527895

`xor(n, n-A056965(n))`
-/

namespace A256756.P5529588083339527895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A056965 n)

end

end A256756.P5529588083339527895

/-! ## A256756.P8197779482337850858

`A256755(n)-A256754(n)`
-/

namespace A256756.P8197779482337850858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256755 n - A256754 n

end

end A256756.P8197779482337850858

/-! ## A256756.P17467679346329260119

`A056964(n)-2*A256754(n)`
-/

namespace A256756.P17467679346329260119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n - 2 * A256754 n

end

end A256756.P17467679346329260119

/-! ## A256756.P11293702210921579096

`2*A256755(n)-A056964(n)`
-/

namespace A256756.P11293702210921579096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256755 n - A056964 n

end

end A256756.P11293702210921579096

/-! ## A256756.P7008058325670030659

`xor(n, A061601(n)+n-A267193(n))`
-/

namespace A256756.P7008058325670030659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A061601 n + ((n : ℤ) - A267193 n))

end

end A256756.P7008058325670030659

/-! ## A256756.P16967392418057431188

`xor(n, A160930(n+1)-A160924(n+1))`
-/

namespace A256756.P16967392418057431188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A160930 (n + 1) - A160924 (n + 1))

end

end A256756.P16967392418057431188

/-! ## A256756.P7987453877150470651

`xor(n, A160936(n+1)/A160926(n+1))`
-/

namespace A256756.P7987453877150470651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((A160936 (n + 1) : ℚ) / (A160926 (n + 1) : ℚ)))

end

end A256756.P7987453877150470651

/-! ## A256756.P6780973980877301348

`xor(n, A004093(5*n))`
-/

namespace A256756.P6780973980877301348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A004093 (5 * n))

end

end A256756.P6780973980877301348

/-!
# A256757: Number of iterations of A007733 required to reach 1.

The programs for A256757, there is no canonical definition to state claims against.
-/

/-! ## A256757.P10278667344043942575

`1+a(A007733(n+1)-1)` with `a(0)=0`
-/

namespace A256757.P10278667344043942575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A007733 (n + 1) - 1).toNat

end

end A256757.P10278667344043942575

/-! ## A256757.P17569933921055143181

`a(A002326(floor(n/and(n+1, -(n+1)))/2)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A256757.P17569933921055143181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A002326 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2)).toNat - 1).toNat + 1

end

end A256757.P17569933921055143181

/-! ## A256757.P8372683060841279711

`a(A023443(A007733(n+1)))+1` with `a(0)=0`
-/

namespace A256757.P8372683060841279711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A023443 (A007733 (n + 1)).toNat).toNat + 1

end

end A256757.P8372683060841279711

/-! ## A256757.P492291474993900230

`a(A054703(A153733(n)+1)-1)+1` with `a(0)=0`
-/

namespace A256757.P492291474993900230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A054703 (A153733 n + 1).toNat - 1).toNat + 1

end

end A256757.P492291474993900230

/-! ## A256757.P18425114601454829087

`a(A002326(A110963(2*n+1)-1)-1)+1` with `a(0)=0`
-/

namespace A256757.P18425114601454829087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A002326 (A110963 (2 * n + 1) - 1).toNat - 1).toNat + 1

end

end A256757.P18425114601454829087

/-! ## A256757.P1125102397790923835

`a(A024222(A171435(2*(n+1))+1)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A256757.P1125102397790923835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A024222 (A171435 (2 * (n + 1)) + 1).toNat - 1).toNat + 1

end

end A256757.P1125102397790923835

/-! ## A256757.P6446269993373878485

`a(A000010(n+1)/A318622(n+1)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A256757.P6446269993373878485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A318622 (n + 1) : ℚ) - 1)).toNat + 1

end

end A256757.P6446269993373878485

/-! ## A256757.P9447984304841104570

`A289508(A057335(n))+A049115(n+1)`
-/

namespace A256757.P9447984304841104570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A057335 n).toNat + A049115 (n + 1)

end

end A256757.P9447984304841104570

/-! ## A256757.P8956278416325964021

`A049115(n+1)-A057428(A095160(n))`
-/

namespace A256757.P8956278416325964021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) - A057428 (A095160 n).toNat

end

end A256757.P8956278416325964021

/-! ## A256757.P7174891720769472931

`A049115(n+1)+A001222(A095928(n+1))`
-/

namespace A256757.P7174891720769472931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + A001222 (A095928 (n + 1)).toNat

end

end A256757.P7174891720769472931

/-!
# A256758: Position of first appearance of n in A256757.

The programs for A256758, there is no canonical definition to state claims against.
-/

/-! ## A256758.P5707220544003592550

`∪[A049117(n), A007948(A227946(n))]`
-/

namespace A256758.P5707220544003592550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A227946 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A256758.P5707220544003592550

/-! ## A256758.P5965533213951241620

`A038387(∪[A049117(n), A227946(n)])`
-/

namespace A256758.P5965533213951241620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227946 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A256758.P5965533213951241620

/-! ## A256758.P16728088046583689421

`A333645(∪[A049117(n), A227946(n)])`
-/

namespace A256758.P16728088046583689421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227946 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333645 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A256758.P16728088046583689421

/-!
# A256759: Nonpositive part of the minimal alternating triangular-number representation of n (defined at A255974).

The programs for A256759, there is no canonical definition to state claims against.
-/

/-! ## A256759.P17073060306053253057

`A256700(n+1)-(n+1)`
-/

namespace A256759.P17073060306053253057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256700 (n + 1) - (n + 1 : ℤ)

end

end A256759.P17073060306053253057

/-! ## A256759.P557267067063850367

`A256700(char[1]+1+n)%(n+1)`
-/

namespace A256759.P557267067063850367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256700 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (n + 1 : ℤ)

end

end A256759.P557267067063850367

/-! ## A256759.P16883023231959679185

`A023443(A256700(n+1)-n)`
-/

namespace A256759.P16883023231959679185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A256700 (n + 1) - (n : ℤ)).toNat

end

end A256759.P16883023231959679185

/-! ## A256759.P12160838636506645002

`(A000290(n)*A256700(n+1))%(n+1)`
-/

namespace A256759.P12160838636506645002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n * A256700 (n + 1)) (n + 1 : ℤ)

end

end A256759.P12160838636506645002

/-! ## A256759.P146734936801583625

`(A256700(n+1)+A000290(n+1))%(n+1)`
-/

namespace A256759.P146734936801583625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256700 (n + 1) + A000290 (n + 1)) (n + 1 : ℤ)

end

end A256759.P146734936801583625

/-! ## A256759.P4677672794536045894

`(A256700(n+1)%(n+1))%A018252(n+1)`
-/

namespace A256759.P4677672794536045894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A256700 (n + 1)) (n + 1 : ℤ)) (A018252 (n + 1))

end

end A256759.P4677672794536045894

/-! ## A256759.P7542488879491691475

`A000027(A256700(n+1))%A000027(n+1)`
-/

namespace A256759.P7542488879491691475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A256700 (n + 1)).toNat) (A000027 (n + 1))

end

end A256759.P7542488879491691475

/-!
# A256761: Numbers k such that R_k + 70 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256761, there is no canonical definition to state claims against.
-/

/-! ## A256761.P6147285132228435962

`eq[A134028(n), A345877(n+1)]`
-/

namespace A256761.P6147285132228435962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256761.P6147285132228435962

/-! ## A256761.P17573501859067415819

`A139377(A139398(n))+A139371(n+1)`
-/

namespace A256761.P17573501859067415819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139377 (A139398 n).toNat + A139371 (n + 1)

end

end A256761.P17573501859067415819

/-!
# A256762: Numbers k such that R_k + 80 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A256762, there is no canonical definition to state claims against.
-/

/-! ## A256762.P11451915259487599453

`or(ceil(e*2^n), A000005(A115902(n)))`
-/

namespace A256762.P11451915259487599453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈Real.exp 1 * (2 ^ n : ℝ)⌉ (A000005 (A115902 n).toNat)

end

end A256762.P11451915259487599453

/-! ## A256762.P10583718328677921717

`A078451(A078413(n+3)*A078429(3*n+1))`
-/

namespace A256762.P10583718328677921717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078451 (A078413 (n + 3) * A078429 (3 * n + 1)).toNat

end

end A256762.P10583718328677921717

/-!
# A256763: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

The programs for A256763, there is no canonical definition to state claims against.
-/

/-! ## A256763.P3656323811339895583

`A256771(∑[4*n]+1)`
-/

namespace A256763.P3656323811339895583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256763.P3656323811339895583

/-! ## A256763.P7667426958875596192

`record[A256771(A330613(n+1))]`
-/

namespace A256763.P7667426958875596192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256763.P7667426958875596192

/-! ## A256763.P744930472125944558

`record[A003982(n)*A256771(n+1)]`
-/

namespace A256763.P744930472125944558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A256771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256763.P744930472125944558

/-! ## A256763.P5111800791072086182

`record[gcd(A008482(n), A256771(n+1))]`
-/

namespace A256763.P5111800791072086182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A256771 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256763.P5111800791072086182

/-! ## A256763.P12224982123800156277

`A007318(C(n, 2))*A256771(A001844(n))`
-/

namespace A256763.P12224982123800156277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A256771 (A001844 n).toNat

end

end A256763.P12224982123800156277

/-!
# A256764: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

The programs for A256764, the canonical program `A256764.P16508789042629990084` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256764 has offset 1).

The definition of A256764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256764.P16508789042629990084

`2^(n+3)*A204032(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A256764

/-- `2^(n+3)*A204032(n+2)` -/
def P16508789042629990084.Spec : Prop :=
  ∀ n, P16508789042629990084.a n = A256764 (n + 1)

theorem P16508789042629990084.correct : P16508789042629990084.Spec := by
  intro n
  simp only [A256764, Nat.add_sub_cancel]

end A256764

/-! ## A256764.P1952797360052429462

`A256771(∑[n]+1)`
-/

namespace A256764.P1952797360052429462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A256764.P1952797360052429462

namespace A256764

/-- `A256771(∑[n]+1)` -/
def P1952797360052429462.Spec : Prop :=
  ∀ n, P1952797360052429462.a n = A256764 (n + 1)

end A256764

/-! ## A256764.P9738072423132721497

`lcm(2, A256771(A000124(n)))`
-/

namespace A256764.P9738072423132721497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A256771 (A000124 n).toNat)

end

end A256764.P9738072423132721497

namespace A256764

/-- `lcm(2, A256771(A000124(n)))` -/
def P9738072423132721497.Spec : Prop :=
  ∀ n, (P9738072423132721497.a n : ℤ) = A256764 (n + 1)

end A256764

/-! ## A256764.P10112587029552357625

`record[A103451(n)*A256771(n+1)]`
-/

namespace A256764.P10112587029552357625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A256771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256764.P10112587029552357625

namespace A256764

/-- `record[A103451(n)*A256771(n+1)]` -/
def P10112587029552357625.Spec : Prop :=
  ∀ n, P10112587029552357625.a n = A256764 (n + 1)

end A256764

/-! ## A256764.P17796104726350090094

`record[A256771(n+1)/A007318(n)]`
-/

namespace A256764.P17796104726350090094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256771 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256764.P17796104726350090094

namespace A256764

/-- `record[A256771(n+1)/A007318(n)]` -/
def P17796104726350090094.Spec : Prop :=
  ∀ n, P17796104726350090094.a n = (A256764 (n + 1) : ℚ)

end A256764

/-!
# A256765: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

The programs for A256765, the canonical program `A256765.P9408415703290799051` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256765 has offset 1).

The definition of A256765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256765.P9408415703290799051

`A204032(n+2)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A256765

/-- `A204032(n+2)²` -/
def P9408415703290799051.Spec : Prop :=
  ∀ n, P9408415703290799051.a n = A256765 (n + 1)

theorem P9408415703290799051.correct : P9408415703290799051.Spec := by
  intro n
  simp only [A256765, Nat.add_sub_cancel]

end A256765

/-! ## A256765.P10890919580963796641

`A256766(n+1)/A256767(n+1)*A256766(n+1)`
-/

namespace A256765.P10890919580963796641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256766 (n + 1) : ℚ) / (A256767 (n + 1) : ℚ) * (A256766 (n + 1) : ℚ)

end

end A256765.P10890919580963796641

namespace A256765

/-- `A256766(n+1)/A256767(n+1)*A256766(n+1)` -/
def P10890919580963796641.Spec : Prop :=
  ∀ n, P10890919580963796641.a n = (A256765 (n + 1) : ℚ)

end A256765

/-! ## A256765.P14588752603917643227

`A256766(n+1)²/A256767(n+1)`
-/

namespace A256765.P14588752603917643227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256766 (n + 1) ^ 2 : ℚ) / (A256767 (n + 1) : ℚ)

end

end A256765.P14588752603917643227

namespace A256765

/-- `A256766(n+1)²/A256767(n+1)` -/
def P14588752603917643227.Spec : Prop :=
  ∀ n, P14588752603917643227.a n = (A256765 (n + 1) : ℚ)

end A256765

/-! ## A256765.P2445283344032096626

`A253326(∑[n+1]+1)²`
-/

namespace A256765.P2445283344032096626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A256765.P2445283344032096626

namespace A256765

/-- `A253326(∑[n+1]+1)²` -/
def P2445283344032096626.Spec : Prop :=
  ∀ n, P2445283344032096626.a n = A256765 (n + 1)

end A256765

/-! ## A256765.P12442015029230964297

`record[A253326(A056534(n+2))²]`
-/

namespace A256765.P12442015029230964297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253326 (A056534 (n + 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256765.P12442015029230964297

namespace A256765

/-- `record[A253326(A056534(n+2))²]` -/
def P12442015029230964297.Spec : Prop :=
  ∀ n, P12442015029230964297.a n = A256765 (n + 1)

end A256765

/-!
# A256766: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

The programs for A256766, there is no canonical definition to state claims against.
-/

/-! ## A256766.P8420696128187109125

`sqrt(A256765(n+1))*sqrt(A256767(n+1))`
-/

namespace A256766.P8420696128187109125
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256765 (n + 1) : ℝ) * Real.sqrt (A256767 (n + 1) : ℝ)

end

end A256766.P8420696128187109125

/-! ## A256766.P7933686671563767210

`sqrt(A256765(n+1)*A256767(n+1))`
-/

namespace A256766.P7933686671563767210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256765 (n + 1) * A256767 (n + 1) : ℝ)

end

end A256766.P7933686671563767210

/-! ## A256766.P8293877585662162400

`A256771(∑[n+2]+4)`
-/

namespace A256766.P8293877585662162400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A256766.P8293877585662162400

/-! ## A256766.P18350597804586385202

`lcm(2, A256771(A167614(n+1)))`
-/

namespace A256766.P18350597804586385202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A256771 (A167614 (n + 1)).toNat)

end

end A256766.P18350597804586385202

/-! ## A256766.P13141373024618192154

`A256771(A055998(n)+6)+A008683(16*(n+1))`
-/

namespace A256766.P13141373024618192154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A055998 n + 6).toNat + A008683 (16 * (n + 1))

end

end A256766.P13141373024618192154

/-!
# A256767: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

The programs for A256767, there is no canonical definition to state claims against.
-/

/-! ## A256767.P12065230552378052805

`A256766(n+1)/A256765(n+1)*A256766(n+1)`
-/

namespace A256767.P12065230552378052805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256766 (n + 1) : ℚ) / (A256765 (n + 1) : ℚ) * (A256766 (n + 1) : ℚ)

end

end A256767.P12065230552378052805

/-! ## A256767.P13699761195772168056

`A256766(n+1)²/A256765(n+1)`
-/

namespace A256767.P13699761195772168056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256766 (n + 1) ^ 2 : ℚ) / (A256765 (n + 1) : ℚ)

end

end A256767.P13699761195772168056

/-! ## A256767.P7899530307611567323

`A256768(n+1)²/A256769(n+1)`
-/

namespace A256767.P7899530307611567323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256768 (n + 1) ^ 2 : ℚ) / (A256769 (n + 1) : ℚ)

end

end A256767.P7899530307611567323

/-! ## A256767.P9517073295786402765

`A256771(∑[n+2]+n+8)`
-/

namespace A256767.P9517073295786402765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 8))

end

end A256767.P9517073295786402765

/-! ## A256767.P17780375345224709119

`A256771(A167614(n+2)+1)%A256768(n+1)`
-/

namespace A256767.P17780375345224709119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256771 (A167614 (n + 2) + 1).toNat) (A256768 (n + 1))

end

end A256767.P17780375345224709119

/-!
# A256768: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

The programs for A256768, there is no canonical definition to state claims against.
-/

/-! ## A256768.P14436826971792059215

`sqrt(A256767(n+1)*A256769(n+1))`
-/

namespace A256768.P14436826971792059215
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A256767 (n + 1) * A256769 (n + 1) : ℝ)

end

end A256768.P14436826971792059215

/-! ## A256768.P13740005576760971655

`A256771(A167499(n+3))`
-/

namespace A256768.P13740005576760971655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A167499 (n + 3)).toNat

end

end A256768.P13740005576760971655

/-! ## A256768.P6961927257097122658

`A256771(A000217(n+4)+5)`
-/

namespace A256768.P6961927257097122658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A000217 (n + 4) + 5).toNat

end

end A256768.P6961927257097122658

/-! ## A256768.P9087366998710140107

`A256771(Δ[A264443(n)])`
-/

namespace A256768.P9087366998710140107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (f1 (n + 1) - f1 n).toNat

end

end A256768.P9087366998710140107

/-! ## A256768.P6547010029466487349

`A256771(A374005(n+1))`
-/

namespace A256768.P6547010029466487349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A374005 (n + 1)).toNat

end

end A256768.P6547010029466487349

/-!
# A256769: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

The programs for A256769, there is no canonical definition to state claims against.
-/

/-! ## A256769.P6232426591723511510

`A256768(n+1)²/A256767(n+1)`
-/

namespace A256769.P6232426591723511510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256768 (n + 1) ^ 2 : ℚ) / (A256767 (n + 1) : ℚ)

end

end A256769.P6232426591723511510

/-! ## A256769.P3252387016335358212

`A256771(A167499(n+4)+1)`
-/

namespace A256769.P3252387016335358212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A167499 (n + 4) + 1).toNat

end

end A256769.P3252387016335358212

/-! ## A256769.P8687488201228407579

`A256771(A000217(n+5)+6)`
-/

namespace A256769.P8687488201228407579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A000217 (n + 5) + 6).toNat

end

end A256769.P8687488201228407579

/-! ## A256769.P10111148693188465793

`A256771(A052905(n+4)-2-2*n)`
-/

namespace A256769.P10111148693188465793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A052905 (n + 4) - 2 - (2 * n : ℤ)).toNat

end

end A256769.P10111148693188465793

/-! ## A256769.P11480268223980197312

`A256771(A374007(n+1))`
-/

namespace A256769.P11480268223980197312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A374007 (n + 1)).toNat

end

end A256769.P11480268223980197312

/-!
# A256770: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum less than the antidiagonal sum.

The programs for A256770, there is no canonical definition to state claims against.
-/

/-! ## A256770.P9442782403139180385

`A256771(A000217(n+6)+7)`
-/

namespace A256770.P9442782403139180385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A000217 (n + 6) + 7).toNat

end

end A256770.P9442782403139180385

/-! ## A256770.P13154335610161628429

`A256771(A173036(n+6)-6)`
-/

namespace A256770.P13154335610161628429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A173036 (n + 6) - 6).toNat

end

end A256770.P13154335610161628429

/-! ## A256770.P13856619391207005885

`A256771(A000124(n+7)+n-(2*n+1))`
-/

namespace A256770.P13856619391207005885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A000124 (n + 7) + (n : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A256770.P13856619391207005885

/-! ## A256770.P7294217914946454560

`A256771(A374008(n+1))`
-/

namespace A256770.P7294217914946454560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A374008 (n + 1)).toNat

end

end A256770.P7294217914946454560

/-! ## A256770.P11079729383583438766

`A256771(A055999(n+4))`
-/

namespace A256770.P11079729383583438766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256771 (A055999 (n + 4)).toNat

end

end A256770.P11079729383583438766

/-!
# A256774: All factorials n! along with powers of the numbers n and n+1 that fall in between n! and (n+1)!, in increasing order.

The programs for A256774, there is no canonical definition to state claims against.
-/

/-! ## A256774.P9028069146257694689

`eq[A330955(n)+1, A124010(n+1)]`
-/

namespace A256774.P9028069146257694689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330955 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256774.P9028069146257694689

/-! ## A256774.P14576083124329133129

`eq[A203017(A124010(n+1)), A330955(n)]`
-/

namespace A256774.P14576083124329133129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203017 (A124010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256774.P14576083124329133129

/-! ## A256774.P7983558837392022625

`lt[A334495(n+1), A014963(A064038(n+1)+1)²²]+1`
-/

namespace A256774.P7983558837392022625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (A064038 (n + 1) + 1).toNat ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A256774.P7983558837392022625

/-!
# A256775: Primes of the form n^2 + 81.

The programs for A256775, there is no canonical definition to state claims against.
-/

/-! ## A256775.P11368192044921103027

`p?[n²+81]`
-/

namespace A256775.P11368192044921103027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 81

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A256775.P11368192044921103027

/-! ## A256775.P5294616351008526036

`or(1, p?[A028872(2*(n+1))+84])`
-/

namespace A256775.P5294616351008526036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (2 * (n + 1)) + 84

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A256775.P5294616351008526036

/-! ## A256775.P4210409217783498918

`p?[A000290(n)+81]+A017113(n)%2`
-/

namespace A256775.P4210409217783498918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 81

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A017113 n) 2

end

end A256775.P4210409217783498918

/-! ## A256775.P15834688964741679826

`p?[A028872(n+2)+84]%Δ[A016780(n)]`
-/

namespace A256775.P15834688964741679826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (n + 2) + 84

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (n + 1) - f2 n)

end

end A256775.P15834688964741679826

/-! ## A256775.P3829860087942684501

`A008683(gcd(n, n+1))*p?[A028872(n+2)+84]`
-/

namespace A256775.P3829860087942684501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (n + 2) + 84

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256775.P3829860087942684501

/-! ## A256775.P14721467392261312469

`p?[A028872(2*(n+1))+84]+A008683(8*(n+1))`
-/

namespace A256775.P14721467392261312469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (2 * (n + 1)) + 84

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (8 * (n + 1))

end

end A256775.P14721467392261312469

/-! ## A256775.P7799435125358807146

`p?[A000290(n)+81]+A008683(A002146(n))+1`
-/

namespace A256775.P7799435125358807146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 81

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (A008683 (A002146 n).toNat + 1)

end

end A256775.P7799435125358807146

/-! ## A256775.P6574848084153432638

`A007318(A000217(n))*p?[A028872(n+2)+84]`
-/

namespace A256775.P6574848084153432638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (n + 2) + 84

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A256775.P6574848084153432638

/-! ## A256775.P5231054165012231664

`A000027(p?[A000290(n)+81])`
-/

namespace A256775.P5231054165012231664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 81

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A256775.P5231054165012231664

/-!
# A256776: Primes of form n^2 + 256.

The programs for A256776, the canonical program `A256776.P8942719075972919415` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256776 has offset 1).

The definition of A256776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256776.P8942719075972919415

`p?[256+n²]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256776

/-- `p?[256+n²]` -/
def P8942719075972919415.Spec : Prop :=
  ∀ n, (P8942719075972919415.a n : ℤ) = A256776 (n + 1)

theorem P8942719075972919415.correct : P8942719075972919415.Spec := by
  intro n
  simp only [A256776, Nat.add_sub_cancel]

end A256776

/-! ## A256776.P3727613222009867371

`record[A006530(∑[2*n]+1+(32/2)²+n)]`
-/

namespace A256776.P3727613222009867371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) + (((32 : ℚ) / 2) ^ 2 + (n : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256776.P3727613222009867371

namespace A256776

/-- `record[A006530(∑[2*n]+1+(32/2)²+n)]` -/
def P3727613222009867371.Spec : Prop :=
  ∀ n, P3727613222009867371.a n = A256776 (n + 1)

end A256776

/-! ## A256776.P2119599221707211817

`record[A020639(∑[2*n]+1+(32/2)²+n)]`
-/

namespace A256776.P2119599221707211817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℚ) + (((32 : ℚ) / 2) ^ 2 + (n : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256776.P2119599221707211817

namespace A256776

/-- `record[A020639(∑[2*n]+1+(32/2)²+n)]` -/
def P2119599221707211817.Spec : Prop :=
  ∀ n, P2119599221707211817.a n = A256776 (n + 1)

end A256776

/-!
# A256777: Primes of form n^2 + 625.

The programs for A256777, the canonical program `A256777.P12617461053852267784` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256777 has offset 1).

The definition of A256777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256777.P12617461053852267784

`p?[625+n²]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A256777

/-- `p?[625+n²]` -/
def P12617461053852267784.Spec : Prop :=
  ∀ n, (P12617461053852267784.a n : ℤ) = A256777 (n + 1)

theorem P12617461053852267784.correct : P12617461053852267784.Spec := by
  intro n
  simp only [A256777, Nat.add_sub_cancel]

end A256777

/-! ## A256777.P7201490348099195204

`∩[A002144(n+1), 625+n²]`
-/

namespace A256777.P7201490348099195204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  625 + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A256777.P7201490348099195204

namespace A256777

/-- `∩[A002144(n+1), 625+n²]` -/
def P7201490348099195204.Spec : Prop :=
  ∀ n, (P7201490348099195204.a n : ℤ) = A256777 (n + 1)

end A256777

/-! ## A256777.P9346329214036207758

`record[A020639(625+(A099375(n)+3)²)]`
-/

namespace A256777.P9346329214036207758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (625 + (A099375 n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256777.P9346329214036207758

namespace A256777

/-- `record[A020639(625+(A099375(n)+3)²)]` -/
def P9346329214036207758.Spec : Prop :=
  ∀ n, P9346329214036207758.a n = A256777 (n + 1)

end A256777

/-!
# A256785: Numbers n such that digitsum(n) is a whole number when n is represented in the fractional base 1.5 = 3/2.

The programs for A256785, the canonical program `A256785.P5991345614237837728` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A256785 has offset 1).

The definition of A256785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A256785.P5991345614237837728

`eq[2, A107279(A244040(2*n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A256785

/-- `eq[2, A107279(A244040(2*n))]` -/
def P5991345614237837728.Spec : Prop :=
  ∀ n, (P5991345614237837728.a n : ℤ) = A256785 (n + 1)

theorem P5991345614237837728.correct : P5991345614237837728.Spec := by
  intro n
  simp only [A256785, Nat.add_sub_cancel]

end A256785

/-! ## A256785.P9435774205026485975

`lt[A140966(A244040(2*n)+1), 0]`
-/

namespace A256785.P9435774205026485975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 (A244040 (2 * n) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256785.P9435774205026485975

namespace A256785

/-- `lt[A140966(A244040(2*n)+1), 0]` -/
def P9435774205026485975.Spec : Prop :=
  ∀ n, (P9435774205026485975.a n : ℤ) = A256785 (n + 1)

end A256785

/-! ## A256785.P4036212272875482981

`eq[A000034(A244040(2*n)), A054977(n)]`
-/

namespace A256785.P4036212272875482981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A244040 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256785.P4036212272875482981

namespace A256785

/-- `eq[A000034(A244040(2*n)), A054977(n)]` -/
def P4036212272875482981.Spec : Prop :=
  ∀ n, (P4036212272875482981.a n : ℤ) = A256785 (n + 1)

end A256785

/-! ## A256785.P16921691088991993061

`eq[A000034(A244040(2*n)), A057427(n)]`
-/

namespace A256785.P16921691088991993061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A244040 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256785.P16921691088991993061

namespace A256785

/-- `eq[A000034(A244040(2*n)), A057427(n)]` -/
def P16921691088991993061.Spec : Prop :=
  ∀ n, (P16921691088991993061.a n : ℤ) = A256785 (n + 1)

end A256785

/-! ## A256785.P17098574272294419157

`eq[A000034(A244040(2*n)), A158388(n)]`
-/

namespace A256785.P17098574272294419157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A244040 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256785.P17098574272294419157

namespace A256785

/-- `eq[A000034(A244040(2*n)), A158388(n)]` -/
def P17098574272294419157.Spec : Prop :=
  ∀ n, (P17098574272294419157.a n : ℤ) = A256785 (n + 1)

end A256785

/-! ## A256785.P12823648764704868706

`eq[1, A000034(A244040(2*n))+A000007(n)]`
-/

namespace A256785.P12823648764704868706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A244040 (2 * n)).toNat + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256785.P12823648764704868706

namespace A256785

/-- `eq[1, A000034(A244040(2*n))+A000007(n)]` -/
def P12823648764704868706.Spec : Prop :=
  ∀ n, (P12823648764704868706.a n : ℤ) = A256785 (n + 1)

end A256785

/-! ## A256785.P14946380317874769781

`eq[A265316(n+1)%2, A000007(n)]`
-/

namespace A256785.P14946380317874769781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265316 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256785.P14946380317874769781

namespace A256785

/-- `eq[A265316(n+1)%2, A000007(n)]` -/
def P14946380317874769781.Spec : Prop :=
  ∀ n, (P14946380317874769781.a n : ℤ) = A256785 (n + 1)

end A256785

/-!
# A256786: Numbers which are divisible by prime(d) for all digits d in their decimal representation.

The programs for A256786, there is no canonical definition to state claims against.
-/

/-! ## A256786.P7634119662981105504

`A245809(A087486(n+2))`
-/

namespace A256786.P7634119662981105504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (A087486 (n + 2)).toNat

end

end A256786.P7634119662981105504

/-!
# A256787: Smallest odd number k such that k*2^(2*n+1)+1 is a prime number.

The programs for A256787, there is no canonical definition to state claims against.
-/

/-! ## A256787.P5337963175275530600

`A057778(Δ[n²])`
-/

namespace A256787.P5337963175275530600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A256787.P5337963175275530600

/-! ## A256787.P10814340479625436783

`or(1, A057778(2*n+1))`
-/

namespace A256787.P10814340479625436783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057778 (2 * n + 1))

end

end A256787.P10814340479625436783

/-! ## A256787.P1377788610580435600

`A247479(2*n+1)%A000040(3*n+1)`
-/

namespace A256787.P1377788610580435600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247479 (2 * n + 1)) (A000040 (3 * n + 1))

end

end A256787.P1377788610580435600

/-! ## A256787.P4146825426340187312

`2*A334296(2*n+1)+1`
-/

namespace A256787.P4146825426340187312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334296 (2 * n + 1) + 1

end

end A256787.P4146825426340187312

/-! ## A256787.P6153158495702676487

`A005408(A334296(2*n+1))`
-/

namespace A256787.P6153158495702676487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A334296 (2 * n + 1)).toNat

end

end A256787.P6153158495702676487

/-! ## A256787.P9432183428963882357

`A004273(A334296(2*n+1)+1)`
-/

namespace A256787.P9432183428963882357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A334296 (2 * n + 1) + 1).toNat

end

end A256787.P9432183428963882357

/-! ## A256787.P12987518097364530365

`A026741(A057778(2*n+1))`
-/

namespace A256787.P12987518097364530365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A057778 (2 * n + 1)).toNat

end

end A256787.P12987518097364530365

/-! ## A256787.P6896191393666005913

`A175126(2*A057778(2*n+1))`
-/

namespace A256787.P6896191393666005913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 * A057778 (2 * n + 1)).toNat

end

end A256787.P6896191393666005913

/-!
# A256790: Number of terms in the minimal alternating squares representation of n.

The programs for A256790, there is no canonical definition to state claims against.
-/

/-! ## A256790.P17788800917046363236

`gcd(A307319(n), A349385(Δ[n^4]))`
-/

namespace A256790.P17788800917046363236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A307319 n) (A349385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A256790.P17788800917046363236

/-! ## A256790.P16576470386867318989

`gcd(A010815(A007088(n)), A307319(n))`
-/

namespace A256790.P16576470386867318989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A007088 n).toNat) (A307319 n)

end

end A256790.P16576470386867318989

/-! ## A256790.P8637393946214892369

`A064547(or(A112798(n+2), A155173(3*n+5)))`
-/

namespace A256790.P8637393946214892369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (Int.lor (A112798 (n + 2)) (A155173 (3 * n + 5))).toNat

end

end A256790.P8637393946214892369

/-! ## A256790.P17670406570811852840

`C(A001221(A211066(n+1)*A213275(n)), A001221(A004159(n+1)))`
-/

namespace A256790.P17670406570811852840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (A211066 (n + 1) * A213275 n).toNat).toNat (A001221 (A004159 (n + 1)).toNat).toNat

end

end A256790.P17670406570811852840

/-! ## A256790.P8072616213219134852

`A001221(A274327(n)+A216469(n+1))`
-/

namespace A256790.P8072616213219134852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A274327 n + A216469 (n + 1)).toNat

end

end A256790.P8072616213219134852

/-!
# A256791: Trace of n in the minimal alternating squares representation of n.

The programs for A256791, there is no canonical definition to state claims against.
-/

/-! ## A256791.P11195861762037756381

`A256789(∑[A256790(n)]-1)`
-/

namespace A256791.P11195861762037756381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256789 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A256791.P11195861762037756381

/-!
# A256792: Numbers whose minimal alternating squares representation has positive trace.

The programs for A256792, there is no canonical definition to state claims against.
-/

/-! ## A256792.P804509438688433912

`lt[0, A256791(n)]`
-/

namespace A256792.P804509438688433912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A256792.P804509438688433912

/-! ## A256792.P4473113432314448634

`eq[1, and(1, A256790(n+1))]+1`
-/

namespace A256792.P4473113432314448634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256790 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256792.P4473113432314448634

/-! ## A256792.P12073370403940519218

`eq[val(A256790(n), 2), A000007(n)]`
-/

namespace A256792.P12073370403940519218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256790 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256792.P12073370403940519218

/-! ## A256792.P9385738358734800495

`eq[val(A256790(n), 2), A000038(n)]`
-/

namespace A256792.P9385738358734800495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256790 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256792.P9385738358734800495

/-! ## A256792.P4615476608900807578

`A256794(n)+a(n-1)` with `a(0)=1`
-/

namespace A256792.P4615476608900807578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256794 n + a (n - 1)

end

end A256792.P4615476608900807578

/-! ## A256792.P2981828779658488533

`∑[A256794(abs(1-n)+1)]-1`
-/

namespace A256792.P2981828779658488533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256794 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A256792.P2981828779658488533

/-! ## A256792.P2968607876975142952

`∑[A256794(a(A256794(n)))]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A256792.P2968607876975142952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  A256794 (f1 (A256794 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256792.P2968607876975142952

/-!
# A256793: Numbers whose minimal alternating squares representation has positive trace.

The programs for A256793, there is no canonical definition to state claims against.
-/

/-! ## A256793.P14479719208309218710

`lt[A256791(n), 0]`
-/

namespace A256793.P14479719208309218710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256791 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A256793.P14479719208309218710

/-! ## A256793.P5072789954606003518

`eq[2, gcd(2, A256790(n))]`
-/

namespace A256793.P5072789954606003518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A256790 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256793.P5072789954606003518

/-! ## A256793.P298797501871560159

`eq[0, and(1, A256790(n+1))]+1`
-/

namespace A256793.P298797501871560159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256790 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A256793.P298797501871560159

/-! ## A256793.P1853140759540777039

`eq[A256790(n)%2, A000038(n)]`
-/

namespace A256793.P1853140759540777039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256790 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256793.P1853140759540777039

/-! ## A256793.P13374535882937734049

`eq[0, and(A256776(n+1), A256790(n))]`
-/

namespace A256793.P13374535882937734049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256776 (n + 1)) (A256790 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256793.P13374535882937734049

/-! ## A256793.P2091613167479996577

`A256795(n)+a(n-1)` with `a(0)=2`
-/

namespace A256793.P2091613167479996577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A256795 n + a (n - 1)

end

end A256793.P2091613167479996577

/-! ## A256793.P7643991367583893737

`∑[A256795(A000038(n)+n)]`
-/

namespace A256793.P7643991367583893737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256795 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256793.P7643991367583893737

/-! ## A256793.P14356403711222909647

`∑[A256795(or(n, A000038(n)))]`
-/

namespace A256793.P14356403711222909647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256795 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256793.P14356403711222909647

/-! ## A256793.P5020380013588732654

`∑[A256795(xor(n, A000038(n)))]`
-/

namespace A256793.P5020380013588732654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256795 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A256793.P5020380013588732654

/-! ## A256793.P4887992328603740329

`∑[A256795(n+1)]+2-A256795(n+1)`
-/

namespace A256793.P4887992328603740329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A256795 (n + 1))

end

end A256793.P4887992328603740329

/-!
# A256794: First differences of A256792.

The programs for A256794, there is no canonical definition to state claims against.
-/

/-! ## A256794.P5802032764528178036

`Δ[A256792(n+1)]`
-/

namespace A256794.P5802032764528178036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256794.P5802032764528178036

/-! ## A256794.P18065620982510994938

`Δ[lt[0, A256791(n)]]`
-/

namespace A256794.P18065620982510994938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256791 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256794.P18065620982510994938

/-! ## A256794.P8963691352798913581

`Δ[eq[1, and(1, A256790(n+1))]]`
-/

namespace A256794.P8963691352798913581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256790 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256794.P8963691352798913581

/-! ## A256794.P10708879072071456859

`Δ[record[A256792(A236858(n))]]`
-/

namespace A256794.P10708879072071456859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256792 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256794.P10708879072071456859

/-! ## A256794.P10601972999316962956

`Δ[record[A256792(A303779(n))]]`
-/

namespace A256794.P10601972999316962956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256792 (A303779 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256794.P10601972999316962956

/-! ## A256794.P11140536395288518697

`A256792(n+2)-A256792(n+1)`
-/

namespace A256794.P11140536395288518697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256792 (n + 2) - A256792 (n + 1)

end

end A256794.P11140536395288518697

/-!
# A256795: Difference sequence of A256793.

The programs for A256795, there is no canonical definition to state claims against.
-/

/-! ## A256795.P17233851717783493028

`Δ[A256793(n+1)]`
-/

namespace A256795.P17233851717783493028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256795.P17233851717783493028

/-! ## A256795.P5827975647568426946

`Δ[lt[A256791(n), 0]]`
-/

namespace A256795.P5827975647568426946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256791 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256795.P5827975647568426946

/-! ## A256795.P2465535477514970860

`Δ[eq[0, A256790(n)%2]]`
-/

namespace A256795.P2465535477514970860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256790 n) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256795.P2465535477514970860

/-! ## A256795.P18047289465589653116

`Δ[eq[0, and(1, A256790(n+1))]]`
-/

namespace A256795.P18047289465589653116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A256790 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A256795.P18047289465589653116

/-! ## A256795.P5652409727724091230

`Δ[record[A256793(A065648(n))]]`
-/

namespace A256795.P5652409727724091230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256793 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256795.P5652409727724091230

/-! ## A256795.P14076144835967363904

`Δ[record[A256793(A137735(n))]]`
-/

namespace A256795.P14076144835967363904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256793 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256795.P14076144835967363904

/-! ## A256795.P3688460228219379192

`Δ[record[A256793(A236858(n))]]`
-/

namespace A256795.P3688460228219379192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256793 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256795.P3688460228219379192

/-! ## A256795.P405897764998315396

`Δ[record[A256793(A246694(n))]]`
-/

namespace A256795.P405897764998315396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256793 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256795.P405897764998315396

/-! ## A256795.P1584398228745694869

`Δ[record[A256793(A303779(n))]]`
-/

namespace A256795.P1584398228745694869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256793 (A303779 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256795.P1584398228745694869

/-! ## A256795.P16595311887397085739

`Δ[record[A256793(A331300(n))]]`
-/

namespace A256795.P16595311887397085739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256793 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A256795.P16595311887397085739

/-!
# A256796: Positive part of the minimal alternating squares representation of n.

The programs for A256796, there is no canonical definition to state claims against.
-/

/-! ## A256796.P7043614039563988411

`A256797(n+1)+1+n`
-/

namespace A256796.P7043614039563988411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256797 (n + 1) + 1 + (n : ℤ)

end

end A256796.P7043614039563988411

/-! ## A256796.P13663356736334232388

`A256797(A008619(Δ[n²]))-xor(n, -1)`
-/

namespace A256796.P13663356736334232388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256797 (A008619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - Int.xor (n : ℤ) (-1)

end

end A256796.P13663356736334232388

/-! ## A256796.P16581617717001333991

`1-(A001057(2*n)-A256797(A008619(Δ[n²])))`
-/

namespace A256796.P16581617717001333991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001057 (2 * n) - A256797 (A008619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A256796.P16581617717001333991

/-! ## A256796.P12944448487359476233

`A005843(n)-(n-1-A256797(A008619(Δ[n²])))`
-/

namespace A256796.P12944448487359476233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - 1 - A256797 (A008619 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat)

end

end A256796.P12944448487359476233

/-! ## A256796.P12449513555145606456

`A256797(Δ[A145069(n)])`
-/

namespace A256796.P12449513555145606456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256797 (f1 (n + 1) - f1 n).toNat

end

end A256796.P12449513555145606456

/-!
# A256797: Nonpositive part of the minimal alternating squares representation of n.

The programs for A256797, there is no canonical definition to state claims against.
-/

/-! ## A256797.P16470940476342733331

`A256796(n+1)-(n+1)`
-/

namespace A256797.P16470940476342733331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256796 (n + 1) - (n + 1 : ℤ)

end

end A256797.P16470940476342733331

/-! ## A256797.P1843625603225244650

`A023443(A256796(n+1)-n)`
-/

namespace A256797.P1843625603225244650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A256796 (n + 1) - (n : ℤ)).toNat

end

end A256797.P1843625603225244650

/-! ## A256797.P749135558091825199

`A033619(A256796(n+1)-n)`
-/

namespace A256797.P749135558091825199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A256796 (n + 1) - (n : ℤ)).toNat

end

end A256797.P749135558091825199

/-! ## A256797.P5845822926410305030

`abs(A256796(n+1)+A001478(n+1))`
-/

namespace A256797.P5845822926410305030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256796 (n + 1) + A001478 (n + 1)|

end

end A256797.P5845822926410305030

/-! ## A256797.P16042054814688278505

`(A256796(n+1)+A000217(n))%∑[n+1]`
-/

namespace A256797.P16042054814688278505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256796 (n + 1) + A000217 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A256797.P16042054814688278505

/-! ## A256797.P18251779338616997453

`A002262(A256796(n+1)+A000217(n))`
-/

namespace A256797.P18251779338616997453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A256796 (n + 1) + A000217 n).toNat

end

end A256797.P18251779338616997453

/-! ## A256797.P17353119345688463218

`A002262(A256796(n+1)+A046092(n))`
-/

namespace A256797.P17353119345688463218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A256796 (n + 1) + A046092 n).toNat

end

end A256797.P17353119345688463218

/-!
# A256798: Numbers whose minimal alternating squares representation has trace 2 or -2.

The programs for A256798, there is no canonical definition to state claims against.
-/

/-! ## A256798.P10640091497482361739

`eq[2, abs(A256791(n))]`
-/

namespace A256798.P10640091497482361739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256791 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256798.P10640091497482361739

/-! ## A256798.P17421738314637810398

`eq[2, gcd(A008574(n), A256791(n))]`
-/

namespace A256798.P17421738314637810398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 n) (A256791 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A256798.P17421738314637810398

/-! ## A256798.P15788273601159589138

`eq[2, A068527(A068527(A068527(n)))]`
-/

namespace A256798.P15788273601159589138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A068527 (A068527 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256798.P15788273601159589138

/-!
# A256799: Catalan number analogs for A099927, the generalized binomial coefficients for Pell numbers (A000129).

The programs for A256799, there is no canonical definition to state claims against.
-/

/-! ## A256799.P9906779781000860392

`A099929(n)/A000129(n+1)`
-/

namespace A256799.P9906779781000860392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099929 n : ℚ) / (A000129 (n + 1) : ℚ)

end

end A256799.P9906779781000860392

/-! ## A256799.P10642195392397744067

`A099929(n)/∑[A001333(n)]`
-/

namespace A256799.P10642195392397744067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099929 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A256799.P10642195392397744067

/-! ## A256799.P2611951212505465295

`A099929(n)/A002965(A103517(n))`
-/

namespace A256799.P2611951212505465295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099929 n : ℚ) / (A002965 (A103517 n).toNat : ℚ)

end

end A256799.P2611951212505465295

/-! ## A256799.P1865273714576168075

`gcd(A099927(A001844(n)), A099929(n))`
-/

namespace A256799.P1865273714576168075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099927 (A001844 n).toNat) (A099929 n)

end

end A256799.P1865273714576168075

/-! ## A256799.P8521530709644109881

`A099929(n)/A099927(A034856(n+1))`
-/

namespace A256799.P8521530709644109881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099929 n : ℚ) / (A099927 (A034856 (n + 1)).toNat : ℚ)

end

end A256799.P8521530709644109881

