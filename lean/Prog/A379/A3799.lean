import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A379901: Local maxima in A342042, in order of appearance: numbers m such that A342042(k-1) < A342042(k) = m > A342042(k+1), for k >= 2.

The programs for A379901, there is no canonical definition to state claims against.
-/

/-! ## A379901.P18195815057775457917

`A342042(A379902(n+1))`
-/

namespace A379901.P18195815057775457917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (A379902 (n + 1)).toNat

end

end A379901.P18195815057775457917

/-!
# A379902: Indices of local maxima in A342042: numbers k such that A342042(k-1) < A342042(k) > A342042(k+1), for k >= 2.

The programs for A379902, there is no canonical definition to state claims against.
-/

/-! ## A379902.P14238757289343947340

`A379904(n+2)-A350070(A000230(n))`
-/

namespace A379902.P14238757289343947340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379904 (n + 2) - A350070 (A000230 n).toNat

end

end A379902.P14238757289343947340

/-! ## A379902.P5254683287318361873

`A379904(n+2)-A229297(A028871(n+4))`
-/

namespace A379902.P5254683287318361873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379904 (n + 2) - A229297 (A028871 (n + 4)).toNat

end

end A379902.P5254683287318361873

/-! ## A379902.P8258490572760133684

`A379904(n+2)-A229297(A212855(n+1))`
-/

namespace A379902.P8258490572760133684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379904 (n + 2) - A229297 (A212855 (n + 1)).toNat

end

end A379902.P8258490572760133684

/-! ## A379902.P4174733971700470182

`A379904(n+2)-A057427(A282178(n+1))`
-/

namespace A379902.P4174733971700470182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379904 (n + 2) - A057427 (A282178 (n + 1)).toNat

end

end A379902.P4174733971700470182

/-! ## A379902.P1263666173087716845

`A379904(n+2)-A229297(A024770(2*n+3))`
-/

namespace A379902.P1263666173087716845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379904 (n + 2) - A229297 (A024770 (2 * n + 3)).toNat

end

end A379902.P1263666173087716845

/-!
# A379903: Local minima in A342042, in order of appearance: numbers m such that A342042(k-1) > A342042(k) = m < A342042(k+1), for k >= 2.

The programs for A379903, there is no canonical definition to state claims against.
-/

/-! ## A379903.P1993552626706976539

`A342042(A379904(n+1))`
-/

namespace A379903.P1993552626706976539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (A379904 (n + 1)).toNat

end

end A379903.P1993552626706976539

/-! ## A379903.P3213268884997500331

`lt[n, A130574((n-1)^((1-(-1)^n)/2))]`
-/

namespace A379903.P3213268884997500331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A379903.P3213268884997500331

/-! ## A379903.P250698432074092435

`lt[lt[0, ∏{digits}[n, (4-#)²]], A262038((n-1)^(n%2))]`
-/

namespace A379903.P250698432074092435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => (4 - (x : ℤ)) ^ 2).prod

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f5 j) n

end

end A379903.P250698432074092435

/-!
# A379905: Rank of the permutation resulting from a pre-order traversal of a binary tree which is complete except for the final row and has vertices numbered 0 to n-1.

The programs for A379905, there is no canonical definition to state claims against.
-/

/-! ## A379905.P9398060429224516470

`A391228(A285636(n+1))`
-/

namespace A379905.P9398060429224516470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391228 (A285636 (n + 1)).toNat

end

end A379905.P9398060429224516470

/-! ## A379905.P4528327217636367455

`A340828(A003242(n+1))%A000142(n)`
-/

namespace A379905.P4528327217636367455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340828 (A003242 (n + 1)).toNat) (A000142 n)

end

end A379905.P4528327217636367455

/-! ## A379905.P9339233854988041770

`A071841(lcm(A003557(n+1), A109655(n)))`
-/

namespace A379905.P9339233854988041770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071841 (Int.lcm (A003557 (n + 1)) (A109655 n))

end

end A379905.P9339233854988041770

/-! ## A379905.P3311098196156012167

`A366844(A051038(2*(n+1))+A001045(n))`
-/

namespace A379905.P3311098196156012167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366844 (A051038 (2 * (n + 1)) + A001045 n).toNat

end

end A379905.P3311098196156012167

/-!
# A379914: Length of longest sequence over {0,1,...,n-1} containing no two consecutive blocks with the same average.

The programs for A379914, there is no canonical definition to state claims against.
-/

/-! ## A379914.P6966304489144301201

`col(A316413(3*(n+1)))+ceil(n²/2)`
-/

namespace A379914.P6966304489144301201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol (A316413 (3 * (n + 1))).toNat : ℤ) + ⌈(n ^ 2 : ℚ) / 2⌉

end

end A379914.P6966304489144301201

/-! ## A379914.P4822818337908615401

`∑{d}[n+1, A018139(#-1)*A380912((n+1)/#-1)]`
-/

namespace A379914.P4822818337908615401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018139 (d - 1) * A380912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A379914.P4822818337908615401

/-! ## A379914.P7741242773109587304

`A100047(A370168(n))+A093353(n)`
-/

namespace A379914.P7741242773109587304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A370168 n).toNat + A093353 n

end

end A379914.P7741242773109587304

/-! ## A379914.P4643859791109560147

`A000961(A189035(n+1))-A208575(3*(n+1))`
-/

namespace A379914.P4643859791109560147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A189035 (n + 1)).toNat - A208575 (3 * (n + 1))

end

end A379914.P4643859791109560147

/-!
# A379915: a(n) is the deficiency of the odd squarefree semiprime A046388(n), divided by 2.

The programs for A379915, the canonical program `A379915.P7134808796685260794` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379915 has offset 1).

The definition of A379915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046388, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379915.P7134808796685260794

`A033879(A046388(n+1))/2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A379915

/-- `A033879(A046388(n+1))/2` -/
def P7134808796685260794.Spec : Prop :=
  ∀ n, P7134808796685260794.a n = (A379915 (n + 1) : ℚ)

end A379915

/-! ## A379915.P11392607533727587707

`A033879(A075819(n+1)/2)/2`
-/

namespace A379915.P11392607533727587707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.roundAway ((A075819 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A379915.P11392607533727587707

namespace A379915

/-- `A033879(A075819(n+1)/2)/2` -/
def P11392607533727587707.Spec : Prop :=
  ∀ n, P11392607533727587707.a n = (A379915 (n + 1) : ℚ)

end A379915

/-! ## A379915.P9843890268234761861

`A055684(A046388(n+1))`
-/

namespace A379915.P9843890268234761861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (A046388 (n + 1)).toNat

end

end A379915.P9843890268234761861

namespace A379915

/-- `A055684(A046388(n+1))` -/
def P9843890268234761861.Spec : Prop :=
  ∀ n, P9843890268234761861.a n = A379915 (n + 1)

end A379915

/-! ## A379915.P17991129564127949928

`A055684(A075819(n+1)/2)`
-/

namespace A379915.P17991129564127949928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (SequenceMachineLib.roundAway ((A075819 (n + 1) : ℚ) / 2)).toNat

end

end A379915.P17991129564127949928

namespace A379915

/-- `A055684(A075819(n+1)/2)` -/
def P17991129564127949928.Spec : Prop :=
  ∀ n, P17991129564127949928.a n = A379915 (n + 1)

end A379915

/-! ## A379915.P3588375849216261307

`A400415(A046388(n+1))%A246415(n+1)`
-/

namespace A379915.P3588375849216261307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A400415 (A046388 (n + 1)).toNat) (A246415 (n + 1))

end

end A379915.P3588375849216261307

namespace A379915

/-- `A400415(A046388(n+1))%A246415(n+1)` -/
def P3588375849216261307.Spec : Prop :=
  ∀ n, P3588375849216261307.a n = A379915 (n + 1)

end A379915

/-! ## A379915.P9345176525824531217

`A055684(A075819(n+1))`
-/

namespace A379915.P9345176525824531217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (A075819 (n + 1)).toNat

end

end A379915.P9345176525824531217

namespace A379915

/-- `A055684(A075819(n+1))` -/
def P9345176525824531217.Spec : Prop :=
  ∀ n, P9345176525824531217.a n = A379915 (n + 1)

end A379915

/-! ## A379915.P16134676783213450943

`A343270(A046388(n+1))-A055396(2*(n+2))`
-/

namespace A379915.P16134676783213450943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343270 (A046388 (n + 1)).toNat - A055396 (2 * (n + 2))

end

end A379915.P16134676783213450943

namespace A379915

/-- `A343270(A046388(n+1))-A055396(2*(n+2))` -/
def P16134676783213450943.Spec : Prop :=
  ∀ n, P16134676783213450943.a n = A379915 (n + 1)

end A379915

/-!
# A379916: a(n) is the deficiency of A046389(n), divided by 2.

The programs for A379916, the canonical program `A379916.P8861778669536379572` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379916 has offset 1).

The definition of A379916 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046389, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379916.P8861778669536379572

`A033879(A046389(n+1))/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A379916

/-- `A033879(A046389(n+1))/2` -/
def P8861778669536379572.Spec : Prop :=
  ∀ n, P8861778669536379572.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P11742255008825099100

`A033879(2*A234099(n+1)+1)/2`
-/

namespace A379916.P11742255008825099100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (2 * A234099 (n + 1) + 1).toNat : ℚ) / 2

end

end A379916.P11742255008825099100

namespace A379916

/-- `A033879(2*A234099(n+1)+1)/2` -/
def P11742255008825099100.Spec : Prop :=
  ∀ n, P11742255008825099100.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P13048623808278576914

`A033879(A234102(n+1)+A234099(n+1))/2`
-/

namespace A379916.P13048623808278576914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (A234102 (n + 1) + A234099 (n + 1)).toNat : ℚ) / 2

end

end A379916.P13048623808278576914

namespace A379916

/-- `A033879(A234102(n+1)+A234099(n+1))/2` -/
def P13048623808278576914.Spec : Prop :=
  ∀ n, P13048623808278576914.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P3709975162700016881

`A033879(∩[A007304(n+1), A046316(n+1)])/2`
-/

namespace A379916.P3709975162700016881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A379916.P3709975162700016881

namespace A379916

/-- `A033879(∩[A007304(n+1), A046316(n+1)])/2` -/
def P3709975162700016881.Spec : Prop :=
  ∀ n, P3709975162700016881.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P13285417407016079415

`A033879(∩[A007304(n+1), A056912(n+1)])/2`
-/

namespace A379916.P13285417407016079415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A379916.P13285417407016079415

namespace A379916

/-- `A033879(∩[A007304(n+1), A056912(n+1)])/2` -/
def P13285417407016079415.Spec : Prop :=
  ∀ n, P13285417407016079415.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P16158995388617095886

`A033879(∩[A030626(n+1), A046316(n+1)])/2`
-/

namespace A379916.P16158995388617095886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A379916.P16158995388617095886

namespace A379916

/-- `A033879(∩[A030626(n+1), A046316(n+1)])/2` -/
def P16158995388617095886.Spec : Prop :=
  ∀ n, P16158995388617095886.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P18000614432367386175

`A033879(∩[A030626(n+1), A056912(n+1)])/2`
-/

namespace A379916.P18000614432367386175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A379916.P18000614432367386175

namespace A379916

/-- `A033879(∩[A030626(n+1), A056912(n+1)])/2` -/
def P18000614432367386175.Spec : Prop :=
  ∀ n, P18000614432367386175.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P7824766088107355315

`A033879(∩[A046316(n+1), A111398(n+1)])/2`
-/

namespace A379916.P7824766088107355315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A379916.P7824766088107355315

namespace A379916

/-- `A033879(∩[A046316(n+1), A111398(n+1)])/2` -/
def P7824766088107355315.Spec : Prop :=
  ∀ n, P7824766088107355315.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P13242650790505363797

`A033879(∩[A056912(n+1), A111398(n+1)])/2`
-/

namespace A379916.P13242650790505363797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A379916.P13242650790505363797

namespace A379916

/-- `A033879(∩[A056912(n+1), A111398(n+1)])/2` -/
def P13242650790505363797.Spec : Prop :=
  ∀ n, P13242650790505363797.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P1893729945927407348

`A033879(∩[A007304(n+1), A216918(n+1)])/2`
-/

namespace A379916.P1893729945927407348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A379916.P1893729945927407348

namespace A379916

/-- `A033879(∩[A007304(n+1), A216918(n+1)])/2` -/
def P1893729945927407348.Spec : Prop :=
  ∀ n, P1893729945927407348.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P5302924833918001764

`A033879(∩[A046316(n+1), A216918(n+1)])/2`
-/

namespace A379916.P5302924833918001764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 2

end

end A379916.P5302924833918001764

namespace A379916

/-- `A033879(∩[A046316(n+1), A216918(n+1)])/2` -/
def P5302924833918001764.Spec : Prop :=
  ∀ n, P5302924833918001764.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P16063209471758127915

`A033879(record[A046386(n+1)/A176170(n+1)])/2`
-/

namespace A379916.P16063209471758127915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046386 (n + 1) : ℚ) / (A176170 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat : ℚ) / 2

end

end A379916.P16063209471758127915

namespace A379916

/-- `A033879(record[A046386(n+1)/A176170(n+1)])/2` -/
def P16063209471758127915.Spec : Prop :=
  ∀ n, P16063209471758127915.a n = (A379916 (n + 1) : ℚ)

end A379916

/-! ## A379916.P1791773368674246381

`A400415(A046389(n+1))`
-/

namespace A379916.P1791773368674246381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400415 (A046389 (n + 1)).toNat

end

end A379916.P1791773368674246381

namespace A379916

/-- `A400415(A046389(n+1))` -/
def P1791773368674246381.Spec : Prop :=
  ∀ n, P1791773368674246381.a n = A379916 (n + 1)

end A379916

/-!
# A379917: a(n) is the deficiency of A046390(n), divided by 2.

The programs for A379917, there is no canonical definition to state claims against.
-/

/-! ## A379917.P17079894553353828849

`A033879(A046390(n+1))/2`
-/

namespace A379917.P17079894553353828849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (A046390 (n + 1)).toNat : ℚ) / 2

end

end A379917.P17079894553353828849

/-! ## A379917.P7260299484375584591

`A400415(A046390(1+n))`
-/

namespace A379917.P7260299484375584591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400415 (A046390 (1 + n)).toNat

end

end A379917.P7260299484375584591

/-!
# A379921: Partial alternating sums of the sigma_2 function: a(n) = Sum_{k=1..n} (-1)^(k+1) * sigma_2(k).

The programs for A379921, the canonical program `A379921.P2332222602136164390` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379921 has offset 1).

The definition of A379921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379921.P2332222602136164390

`∑[(-1)^n*∑{d}[n+1, #²]]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379921

/-- `∑[(-1)^n*∑{d}[n+1, #²]]` -/
def P2332222602136164390.Spec : Prop :=
  ∀ n, P2332222602136164390.a n = A379921 (n + 1)

theorem P2332222602136164390.correct : P2332222602136164390.Spec := by
  intro n
  simp only [A379921, Nat.add_sub_cancel]

end A379921

/-! ## A379921.P17645572577769143944

`∑[∑{d}[n+1, #²]/(-1)^n]`
-/

namespace A379921.P17645572577769143944
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379921.P17645572577769143944

namespace A379921

/-- `∑[∑{d}[n+1, #²]/(-1)^n]` -/
def P17645572577769143944.Spec : Prop :=
  ∀ n, P17645572577769143944.a n = (A379921 (n + 1) : ℚ)

end A379921

/-! ## A379921.P877471653921761908

`∑[(-1)^n*A001157(n+1)]`
-/

namespace A379921.P877471653921761908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379921.P877471653921761908

namespace A379921

/-- `∑[(-1)^n*A001157(n+1)]` -/
def P877471653921761908.Spec : Prop :=
  ∀ n, P877471653921761908.a n = A379921 (n + 1)

end A379921

/-! ## A379921.P8867171615497002016

`∑[∑{d}[n+1, #²]*A033999(n)]`
-/

namespace A379921.P8867171615497002016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379921.P8867171615497002016

namespace A379921

/-- `∑[∑{d}[n+1, #²]*A033999(n)]` -/
def P8867171615497002016.Spec : Prop :=
  ∀ n, P8867171615497002016.a n = A379921 (n + 1)

theorem P8867171615497002016.correct : P8867171615497002016.Spec := by
  intro n
  simp only [A379921, Nat.add_sub_cancel, A379921.P8867171615497002016.f2, A379921.P8867171615497002016.f1, A379921.P8867171615497002016.a, A379921.P2332222602136164390.f2, A379921.P2332222602136164390.f1, A379921.P2332222602136164390.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379921

/-! ## A379921.P3304263713983643731

`∑[A001157(n+1)*A033999(n)]`
-/

namespace A379921.P3304263713983643731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379921.P3304263713983643731

namespace A379921

/-- `∑[A001157(n+1)*A033999(n)]` -/
def P3304263713983643731.Spec : Prop :=
  ∀ n, P3304263713983643731.a n = A379921 (n + 1)

theorem P3304263713983643731.correct : P3304263713983643731.Spec := by
  intro n
  simp only [A379921, Nat.add_sub_cancel, A379921.P3304263713983643731.f1, A379921.P3304263713983643731.a, A379921.P2332222602136164390.f2, A379921.P2332222602136164390.f1, A379921.P2332222602136164390.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379921

/-! ## A379921.P14516701832760052408

`∑[A001157(n+1)/(3-2*A000034(n))]`
-/

namespace A379921.P14516701832760052408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (3 - 2 * A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379921.P14516701832760052408

namespace A379921

/-- `∑[A001157(n+1)/(3-2*A000034(n))]` -/
def P14516701832760052408.Spec : Prop :=
  ∀ n, P14516701832760052408.a n = (A379921 (n + 1) : ℚ)

end A379921

/-! ## A379921.P5462236356408137440

`∑[floor(∑{d}[n+1, #^(4/2)])*A033999(n+2)]`
-/

namespace A379921.P5462236356408137440
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f2 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋ * A033999 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379921.P5462236356408137440

namespace A379921

/-- `∑[floor(∑{d}[n+1, #^(4/2)])*A033999(n+2)]` -/
def P5462236356408137440.Spec : Prop :=
  ∀ n, P5462236356408137440.a n = A379921 (n + 1)

end A379921

/-!
# A379922: Numbers m that divide the alternating sum Sum_{k=1..m} (-1)^(k+1) * sigma_2(k).

The programs for A379922, there is no canonical definition to state claims against.
-/

/-! ## A379922.P1920048791265648608

`A003602(A006040(n)+1)`
-/

namespace A379922.P1920048791265648608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A006040 n + 1).toNat

end

end A379922.P1920048791265648608

/-!
# A379924: Numbers m that divide the alternating sum Sum_{k=1..m} (-1)^(k+1) * usigma(k).

The programs for A379924, there is no canonical definition to state claims against.
-/

/-! ## A379924.P10887571219219002940

`A239217(A360454(n+1))`
-/

namespace A379924.P10887571219219002940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (A360454 (n + 1)).toNat

end

end A379924.P10887571219219002940

/-!
# A379926: Numbers with a record number of proper factorizations for which the sum of the squares of the factors is a square.

The programs for A379926, there is no canonical definition to state claims against.
-/

/-! ## A379926.P16795494707456587458

`A278083((n+2)*A033484(n)/2)`
-/

namespace A379926.P16795494707456587458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278083 (SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((A033484 n : ℚ) / 2))).toNat

end

end A379926.P16795494707456587458

/-! ## A379926.P7203950454878377517

`A047701(A061345(n))*A298797(n)`
-/

namespace A379926.P7203950454878377517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047701 (A061345 n).toNat * A298797 n

end

end A379926.P7203950454878377517

/-!
# A379930: Numbers that have the same number of divisors as there are runs in their base-10 representation.

The programs for A379930, there is no canonical definition to state claims against.
-/

/-! ## A379930.P9186506288591165084

`eq[A000005(n+1), A043562(n+1)]+1`
-/

namespace A379930.P9186506288591165084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A379930.P9186506288591165084

/-! ## A379930.P10712892091852421435

`∩[A132077(n+1), A183106(n+1)]`
-/

namespace A379930.P10712892091852421435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379930.P10712892091852421435

/-! ## A379930.P7127707419815701690

`A226108(n+1)%A000096(A299265(n))`
-/

namespace A379930.P7127707419815701690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226108 (n + 1)) (A000096 (A299265 n).toNat)

end

end A379930.P7127707419815701690

/-! ## A379930.P8576058090859407491

`A273906(n+1)%A000096(A299265(n))`
-/

namespace A379930.P8576058090859407491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273906 (n + 1)) (A000096 (A299265 n).toNat)

end

end A379930.P8576058090859407491

/-! ## A379930.P5295294551659090363

`A038618(n+5)%A006512(A299265(n))`
-/

namespace A379930.P5295294551659090363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038618 (n + 5)) (A006512 (A299265 n).toNat)

end

end A379930.P5295294551659090363

/-!
# A379932: E.g.f. A(x) satisfies A(x) = ( exp(-x) + x*A(x) )^2.

The programs for A379932, there is no canonical definition to state claims against.
-/

/-! ## A379932.P4270734134140807061

`A347743(n)+A001065(A001147(n))`
-/

namespace A379932.P4270734134140807061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347743 n + A001065 (A001147 n).toNat

end

end A379932.P4270734134140807061

/-! ## A379932.P10031711443896904816

`A124798(n+1)*A360629(A145267(n))`
-/

namespace A379932.P10031711443896904816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124798 (n + 1) * A360629 (A145267 n).toNat

end

end A379932.P10031711443896904816

/-!
# A379933: Expansion of e.g.f. 1/( exp(-x) - x )^2.

The programs for A379933, the canonical program `A379933.P5559083332079240389` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379933 has offset 0).

The definition of A379933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379933.P5559083332079240389

`n!*∑{#}[n, (#+1)*(#+2)^(n-#)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379933

/-- `n!*∑{#}[n, (#+1)*(#+2)^(n-#)/(n-#)!]` -/
def P5559083332079240389.Spec : Prop :=
  ∀ n, P5559083332079240389.a n = (A379933 n : ℚ)

end A379933

/-!
# A379934: E.g.f. A(x) satisfies A(x) = 1/( exp(-x*A(x)) - x )^2.

The programs for A379934, the canonical program `A379934.P4553155845155833538` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379934 has offset 0).

The definition of A379934 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379934.P4553155845155833538

`2*n!*∑{#}[n, (n+#+2)^(#-1)*C(n+#+2, n-#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379934

/-- `2*n!*∑{#}[n, (n+#+2)^(#-1)*C(n+#+2, n-#)/#!]` -/
def P4553155845155833538.Spec : Prop :=
  ∀ n, P4553155845155833538.a n = (A379934 n : ℚ)

end A379934

/-!
# A379936: E.g.f. A(x) satisfies A(x) = 1/( exp(-x*A(x)^(1/2)) - x )^2.

The programs for A379936, the canonical program `A379936.P14098614521956670294` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379936 has offset 0).

The definition of A379936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379936.P14098614521956670294

`2*n!*∑{#}[n, (n+2)^(#-1)*C(n+2, n-#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379936

/-- `2*n!*∑{#}[n, (n+2)^(#-1)*C(n+2, n-#)/#!]` -/
def P14098614521956670294.Spec : Prop :=
  ∀ n, P14098614521956670294.a n = (A379936 n : ℚ)

end A379936

/-!
# A379937: E.g.f. A(x) satisfies A(x) = ( exp(-x*A(x)^(1/2)) + x*A(x) )^2.

The programs for A379937, there is no canonical definition to state claims against.
-/

/-! ## A379937.P4156430888609367425

`and(A001037(3*n+4), A071880(n))`
-/

namespace A379937.P4156430888609367425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001037 (3 * n + 4)) (A071880 n)

end

end A379937.P4156430888609367425

/-! ## A379937.P10321963861382422594

`A356565(n)+A317871(A006870(n))`
-/

namespace A379937.P10321963861382422594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356565 n + A317871 (A006870 n).toNat

end

end A379937.P10321963861382422594

/-!
# A379938: Numbers k such that the k-th prime is a power of two reversed.

The programs for A379938, there is no canonical definition to state claims against.
-/

/-! ## A379938.P14867090922382673413

`A000720(A102385(n+1))`
-/

namespace A379938.P14867090922382673413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A102385 (n + 1)).toNat

end

end A379938.P14867090922382673413

/-!
# A379939: E.g.f. A(x) satisfies A(x) = ( exp(-x*A(x)^(2/3)) + x*A(x) )^3.

The programs for A379939, there is no canonical definition to state claims against.
-/

/-! ## A379939.P9392451775942203478

`round(sqrt(xor(1, A359571(n+1))))`
-/

namespace A379939.P9392451775942203478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.xor 1 (A359571 (n + 1)) : ℝ))

end

end A379939.P9392451775942203478

/-!
# A379940: E.g.f. A(x) satisfies A(x) = 1/( exp(-x*A(x)^(2/3)) - x*A(x)^(1/3) )^3.

The programs for A379940, the canonical program `A379940.P8541179978894464545` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379940 has offset 0).

The definition of A379940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379940.P8541179978894464545

`3*n!*∑{#}[n, (2*n+3)^(#-1)*C(2*n+3, n-#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379940

/-- `3*n!*∑{#}[n, (2*n+3)^(#-1)*C(2*n+3, n-#)/#!]` -/
def P8541179978894464545.Spec : Prop :=
  ∀ n, P8541179978894464545.a n = (A379940 n : ℚ)

end A379940

/-!
# A379942: Expansion of e.g.f. 1/( exp(-x) - x )^3.

The programs for A379942, the canonical program `A379942.P15041036097289792381` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379942 has offset 0).

The definition of A379942 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379942.P15041036097289792381

`n!*∑{#}[n, (#+3)^(n-#)*C(#+2, 2)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379942

/-- `n!*∑{#}[n, (#+3)^(n-#)*C(#+2, 2)/(n-#)!]` -/
def P15041036097289792381.Spec : Prop :=
  ∀ n, P15041036097289792381.a n = (A379942 n : ℚ)

end A379942

/-!
# A379944: Smallest number of leading digits of n! that form a prime (or 0 if none exist).

The programs for A379944, there is no canonical definition to state claims against.
-/

/-! ## A379944.P18007648238436842084

`A275947(A071246(n+1))`
-/

namespace A379944.P18007648238436842084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A071246 (n + 1)).toNat

end

end A379944.P18007648238436842084

/-! ## A379944.P1908211304131056205

`A370278(A138947(n+2))`
-/

namespace A379944.P1908211304131056205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370278 (A138947 (n + 2)).toNat

end

end A379944.P1908211304131056205

/-! ## A379944.P5419135390028568281

`A269246(∑{d}[A000578(n)+1, #+1])`
-/

namespace A379944.P5419135390028568281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269246 (∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1))

end

end A379944.P5419135390028568281

/-! ## A379944.P14023314194272221060

`A277731(A024459(n+1))`
-/

namespace A379944.P14023314194272221060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277731 (A024459 (n + 1)).toNat

end

end A379944.P14023314194272221060

/-! ## A379944.P2405695452456805738

`A025426(xor(45, A005179(n+1)))`
-/

namespace A379944.P2405695452456805738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (Int.xor 45 (A005179 (n + 1))).toNat

end

end A379944.P2405695452456805738

/-!
# A379947: Positive integers k such that k*(tau(k) - 1)/(sigma(k) - k/d) is not an integer for all the divisors d of k.

The programs for A379947, there is no canonical definition to state claims against.
-/

/-! ## A379947.P16507078530486226780

`∩[A072668(n+1)+1, comp[A379948(n+1)]]`
-/

namespace A379947.P16507078530486226780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379948 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A379947.P16507078530486226780

/-!
# A379949: Primitive abundant numbers (A091191) that are odd squares.

The programs for A379949, there is no canonical definition to state claims against.
-/

/-! ## A379949.P1185199211406643075

`A379950(n+1)²`
-/

namespace A379949.P1185199211406643075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379950 (n + 1) ^ 2

end

end A379949.P1185199211406643075

/-! ## A379949.P17012878177399548296

`A379950(A000027(n+1))*A379950(n+1)`
-/

namespace A379949.P17012878177399548296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379950 (A000027 (n + 1)).toNat * A379950 (n + 1)

end

end A379949.P17012878177399548296

/-! ## A379949.P9487712602318708459

`A379950(n+1)^A181819(A000928(n+1))`
-/

namespace A379949.P9487712602318708459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379950 (n + 1) : ℚ) ^ (A181819 (A000928 (n + 1)).toNat : ℤ)

end

end A379949.P9487712602318708459

/-! ## A379949.P1592121476273450534

`A379950(n+1)^A020639(A002378(n+1))`
-/

namespace A379949.P1592121476273450534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379950 (n + 1) : ℚ) ^ (A020639 (A002378 (n + 1)).toNat : ℤ)

end

end A379949.P1592121476273450534

/-! ## A379949.P2721572832616122879

`A379950(n+1)^A007913(A001105(n+4))`
-/

namespace A379949.P2721572832616122879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379950 (n + 1) : ℚ) ^ (A007913 (A001105 (n + 4)).toNat : ℤ)

end

end A379949.P2721572832616122879

/-! ## A379949.P5848152627043400320

`A379950(n+1)^A237271(A235266(3*n+5))`
-/

namespace A379949.P5848152627043400320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379950 (n + 1) : ℚ) ^ (A237271 (A235266 (3 * n + 5)).toNat : ℤ)

end

end A379949.P5848152627043400320

/-!
# A379950: Numbers k such that k^2 is an odd primitive abundant number (A006038).

The programs for A379950, there is no canonical definition to state claims against.
-/

/-! ## A379950.P10309655211723715170

`sqrt(A379949(n+1))`
-/

namespace A379950.P10309655211723715170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379949 (n + 1) : ℝ)

end

end A379950.P10309655211723715170

/-!
# A379952: a(n) = 1 if n is an odd number or a perfect square, otherwise 0.

The programs for A379952, the canonical program `A379952.P2246859147419391597` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379952 has offset 0).

The definition of A379952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379952.P5127729807905320637

`char[n^gcd(2, n)]`
-/

namespace A379952.P5127729807905320637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.gcd 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379952.P5127729807905320637

namespace A379952

/-- `char[n^gcd(2, n)]` -/
def P5127729807905320637.Spec : Prop :=
  ∀ n, (P5127729807905320637.a n : ℤ) = A379952 n

end A379952

/-! ## A379952.P10075866909726643529

`or(n%2, char[n²])`
-/

namespace A379952.P10075866909726643529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n % 2) (if ∃ j, f1 j = n then 1 else 0)

end

end A379952.P10075866909726643529

namespace A379952

/-- `or(n%2, char[n²])` -/
def P10075866909726643529.Spec : Prop :=
  ∀ n, (P10075866909726643529.a n : ℤ) = A379952 n

end A379952

/-! ## A379952.P8068191941633086288

`char[or(n, 1-char[n²])]`
-/

namespace A379952.P8068191941633086288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379952.P8068191941633086288

namespace A379952

/-- `char[or(n, 1-char[n²])]` -/
def P8068191941633086288.Spec : Prop :=
  ∀ n, (P8068191941633086288.a n : ℤ) = A379952 n

end A379952

/-! ## A379952.P6048994953571427287

`or(char[or(1, n)], char[n²])`
-/

namespace A379952.P6048994953571427287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = n then 1 else 0)

end

end A379952.P6048994953571427287

namespace A379952

/-- `or(char[or(1, n)], char[n²])` -/
def P6048994953571427287.Spec : Prop :=
  ∀ n, (P6048994953571427287.a n : ℤ) = A379952 n

end A379952

/-! ## A379952.P14816262159152603351

`char[∪[2*n+1, n²]]`
-/

namespace A379952.P14816262159152603351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379952.P14816262159152603351

namespace A379952

/-- `char[∪[2*n+1, n²]]` -/
def P14816262159152603351.Spec : Prop :=
  ∀ n, (P14816262159152603351.a n : ℤ) = A379952 n

end A379952

/-! ## A379952.P7894333512656134776

`char[n^((n+1)%2+1)]`
-/

namespace A379952.P7894333512656134776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ ((n + 1) % 2 + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379952.P7894333512656134776

namespace A379952

/-- `char[n^((n+1)%2+1)]` -/
def P7894333512656134776.Spec : Prop :=
  ∀ n, (P7894333512656134776.a n : ℤ) = A379952 n

end A379952

/-! ## A379952.P5682180550715111934

`char[n^(and(1, n+1)+1)]`
-/

namespace A379952.P5682180550715111934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (Nat.land 1 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379952.P5682180550715111934

namespace A379952

/-- `char[n^(and(1, n+1)+1)]` -/
def P5682180550715111934.Spec : Prop :=
  ∀ n, (P5682180550715111934.a n : ℤ) = A379952 n

end A379952

/-! ## A379952.P17404678039246444127

`char[2*n+1]+char[(2*n)²]`
-/

namespace A379952.P17404678039246444127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0)

end

end A379952.P17404678039246444127

namespace A379952

/-- `char[2*n+1]+char[(2*n)²]` -/
def P17404678039246444127.Spec : Prop :=
  ∀ n, (P17404678039246444127.a n : ℤ) = A379952 n

end A379952

/-! ## A379952.P11290920319802044129

`or(char[n²], A000035(n))`
-/

namespace A379952.P11290920319802044129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000035 n)

end

end A379952.P11290920319802044129

namespace A379952

/-- `or(char[n²], A000035(n))` -/
def P11290920319802044129.Spec : Prop :=
  ∀ n, P11290920319802044129.a n = A379952 n

end A379952

/-! ## A379952.P9805101570283654138

`A010052(A003815(n))`
-/

namespace A379952.P9805101570283654138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003815 n).toNat

end

end A379952.P9805101570283654138

namespace A379952

/-- `A010052(A003815(n))` -/
def P9805101570283654138.Spec : Prop :=
  ∀ n, P9805101570283654138.a n = A379952 n

end A379952

/-! ## A379952.P5852897859304670289

`A010052(A237420(n))`
-/

namespace A379952.P5852897859304670289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A237420 n).toNat

end

end A379952.P5852897859304670289

namespace A379952

/-- `A010052(A237420(n))` -/
def P5852897859304670289.Spec : Prop :=
  ∀ n, P5852897859304670289.a n = A379952 n

end A379952

/-! ## A379952.P2246859147419391597

`A379480(A142150(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A379952

/-- `A379480(A142150(n))` -/
def P2246859147419391597.Spec : Prop :=
  ∀ n, P2246859147419391597.a n = A379952 n

theorem P2246859147419391597.correct : P2246859147419391597.Spec := by
  intro n
  simp only [A379952]

end A379952

/-! ## A379952.P17238462084970936319

`A379480(A266073(n))`
-/

namespace A379952.P17238462084970936319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 (A266073 n).toNat

end

end A379952.P17238462084970936319

namespace A379952

/-- `A379480(A266073(n))` -/
def P17238462084970936319.Spec : Prop :=
  ∀ n, P17238462084970936319.a n = A379952 n

end A379952

/-! ## A379952.P15847766886447694957

`A010052(2*A142150(n))`
-/

namespace A379952.P15847766886447694957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * A142150 n).toNat

end

end A379952.P15847766886447694957

namespace A379952

/-- `A010052(2*A142150(n))` -/
def P15847766886447694957.Spec : Prop :=
  ∀ n, P15847766886447694957.a n = A379952 n

end A379952

/-! ## A379952.P12738081647685536688

`A010052(A266073(n)/2)`
-/

namespace A379952.P12738081647685536688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway ((A266073 n : ℚ) / 2)).toNat

end

end A379952.P12738081647685536688

namespace A379952

/-- `A010052(A266073(n)/2)` -/
def P12738081647685536688.Spec : Prop :=
  ∀ n, P12738081647685536688.a n = A379952 n

end A379952

/-! ## A379952.P15593089453669693003

`A379480(n-A026741(n))`
-/

namespace A379952.P15593089453669693003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 ((n : ℤ) - A026741 n).toNat

end

end A379952.P15593089453669693003

namespace A379952

/-- `A379480(n-A026741(n))` -/
def P15593089453669693003.Spec : Prop :=
  ∀ n, P15593089453669693003.a n = A379952 n

end A379952

/-! ## A379952.P18400767537093454736

`A010052(n*A059841(n))`
-/

namespace A379952.P18400767537093454736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) * A059841 n).toNat

end

end A379952.P18400767537093454736

namespace A379952

/-- `A010052(n*A059841(n))` -/
def P18400767537093454736.Spec : Prop :=
  ∀ n, P18400767537093454736.a n = A379952 n

end A379952

/-! ## A379952.P3496597578918474880

`A010052(n*A354034(n))`
-/

namespace A379952.P3496597578918474880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) * A354034 n).toNat

end

end A379952.P3496597578918474880

namespace A379952

/-- `A010052(n*A354034(n))` -/
def P3496597578918474880.Spec : Prop :=
  ∀ n, P3496597578918474880.a n = A379952 n

end A379952

/-!
# A379955: a(n) = 1 if n = floor(prime(i)/2) * prime(i)^e, for some e, i > 0, otherwise 0, where prime(i) = A000040(i).

The programs for A379955, there is no canonical definition to state claims against.
-/

/-! ## A379955.P15298822719451370782

`∑{e}[A217983(n+1), #]`
-/

namespace A379955.P15298822719451370782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A379955.P15298822719451370782

/-! ## A379955.P18066114997976342209

`char[A379956(n+1)-1]`
-/

namespace A379955.P18066114997976342209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379956 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379955.P18066114997976342209

/-! ## A379955.P16262452876547809743

`A001065(A217983(n+1))`
-/

namespace A379955.P16262452876547809743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A217983 (n + 1)).toNat

end

end A379955.P16262452876547809743

/-! ## A379955.P15336604615827774351

`A001221(A217983(n+1)^2)`
-/

namespace A379955.P15336604615827774351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A217983 (n + 1) ^ 2).toNat

end

end A379955.P15336604615827774351

/-! ## A379955.P14560889016952243340

`A064911(A217983(n+1)^2)`
-/

namespace A379955.P14560889016952243340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A217983 (n + 1) ^ 2).toNat

end

end A379955.P14560889016952243340

/-! ## A379955.P16794869298874498493

`A010054(C(2, A217983(n+1)))`
-/

namespace A379955.P16794869298874498493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Nat.choose 2 (A217983 (n + 1)).toNat)

end

end A379955.P16794869298874498493

/-! ## A379955.P4012739010308327682

`A000290(n)%A217983(n+1)`
-/

namespace A379955.P4012739010308327682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A217983 (n + 1))

end

end A379955.P4012739010308327682

/-! ## A379955.P5127433221405378401

`A000583(n)%A217983(n+1)`
-/

namespace A379955.P5127433221405378401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n) (A217983 (n + 1))

end

end A379955.P5127433221405378401

/-! ## A379955.P17026846487921340287

`A001014(n)%A217983(n+1)`
-/

namespace A379955.P17026846487921340287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001014 n) (A217983 (n + 1))

end

end A379955.P17026846487921340287

/-! ## A379955.P17654926244866238464

`A001016(n)%A217983(n+1)`
-/

namespace A379955.P17654926244866238464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001016 n) (A217983 (n + 1))

end

end A379955.P17654926244866238464

/-! ## A379955.P7823325855588233414

`A001844(n)%A217983(n+1)`
-/

namespace A379955.P7823325855588233414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 n) (A217983 (n + 1))

end

end A379955.P7823325855588233414

/-! ## A379955.P2849955482160884517

`A002593(n)%A217983(n+1)`
-/

namespace A379955.P2849955482160884517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002593 n) (A217983 (n + 1))

end

end A379955.P2849955482160884517

/-! ## A379955.P4342500168657016772

`A003215(n)%A217983(n+1)`
-/

namespace A379955.P4342500168657016772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 n) (A217983 (n + 1))

end

end A379955.P4342500168657016772

/-! ## A379955.P2717536069603483619

`A004768(n)%A217983(n+1)`
-/

namespace A379955.P2717536069603483619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004768 n) (A217983 (n + 1))

end

end A379955.P2717536069603483619

/-! ## A379955.P4547031702261235782

`A007204(n)%A217983(n+1)`
-/

namespace A379955.P4547031702261235782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007204 n) (A217983 (n + 1))

end

end A379955.P4547031702261235782

/-! ## A379955.P672295291974448891

`A008402(n)%A217983(n+1)`
-/

namespace A379955.P672295291974448891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008402 n) (A217983 (n + 1))

end

end A379955.P672295291974448891

/-! ## A379955.P1701259005669812874

`A008454(n)%A217983(n+1)`
-/

namespace A379955.P1701259005669812874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008454 n) (A217983 (n + 1))

end

end A379955.P1701259005669812874

/-! ## A379955.P12041929132295315363

`A008514(n)%A217983(n+1)`
-/

namespace A379955.P12041929132295315363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008514 n) (A217983 (n + 1))

end

end A379955.P12041929132295315363

/-! ## A379955.P12065972327610345569

`A008516(n)%A217983(n+1)`
-/

namespace A379955.P12065972327610345569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008516 n) (A217983 (n + 1))

end

end A379955.P12065972327610345569

/-! ## A379955.P8255349064563376397

`A014105(n)%A217983(n+1)`
-/

namespace A379955.P8255349064563376397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014105 n) (A217983 (n + 1))

end

end A379955.P8255349064563376397

/-!
# A379956: Numbers k that can be expressed in the form k = floor(prime(i)/2) * prime(i)^e, for some e, i > 0, where prime(i) = A000040(i).

The programs for A379956, there is no canonical definition to state claims against.
-/

/-! ## A379956.P9722695526998198941

`filter[A305903(n+1), A379955(#)]`
-/

namespace A379956.P9722695526998198941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379955 (f1 j).toNat = 1) n)

end

end A379956.P9722695526998198941

/-! ## A379956.P13217050308952754600

`filter[A305900(n+1), A379955(#)]`
-/

namespace A379956.P13217050308952754600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379955 (f1 j).toNat = 1) n)

end

end A379956.P13217050308952754600

/-! ## A379956.P16638614332218248259

`filter[A319707(n+1), A379955(#)]`
-/

namespace A379956.P16638614332218248259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379955 (f1 j).toNat = 1) n)

end

end A379956.P16638614332218248259

/-! ## A379956.P8460518653043878514

`filter[A379000(n+1), A379955(#)]`
-/

namespace A379956.P8460518653043878514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379955 (f1 j).toNat = 1) n)

end

end A379956.P8460518653043878514

/-! ## A379956.P8746899120469088927

`filter[A344180(n), A379955(#)]`
-/

namespace A379956.P8746899120469088927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379955 (f1 j).toNat = 1) n)

end

end A379956.P8746899120469088927

/-! ## A379956.P2229411733919677953

`filter[A293892(n+1), A379955(#)]`
-/

namespace A379956.P2229411733919677953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379955 (f1 j).toNat = 1) n)

end

end A379956.P2229411733919677953

/-! ## A379956.P164141525231224529

`lt[1, A217983(n+1)]+1`
-/

namespace A379956.P164141525231224529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217983 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379956.P164141525231224529

/-! ## A379956.P12100893311827332023

`filter[A344974(n+1), A379955(#)]`
-/

namespace A379956.P12100893311827332023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379955 (f1 j).toNat = 1) n)

end

end A379956.P12100893311827332023

/-! ## A379956.P3190231783488244958

`filter[A342256(n+1), A379955(#)]`
-/

namespace A379956.P3190231783488244958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379955 (f1 j).toNat = 1) n)

end

end A379956.P3190231783488244958

/-! ## A379956.P8760563768112053129

`filter[A100806(n+1), A379955(#)]`
-/

namespace A379956.P8760563768112053129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379955 (f1 j).toNat = 1) n)

end

end A379956.P8760563768112053129

/-!
# A379957: Number of partitions of n where the smallest part is a divisor d > 1 of n, and the other parts are positive powers of that divisor.

The programs for A379957, there is no canonical definition to state claims against.
-/

/-! ## A379957.P4773515183055196701

`A322968(n+1)+A121373(A213926(2*(n+1)))`
-/

namespace A379957.P4773515183055196701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 (n + 1) + A121373 (A213926 (2 * (n + 1))).toNat

end

end A379957.P4773515183055196701

/-! ## A379957.P7219011288521826443

`A322968(A187829(n+1))`
-/

namespace A379957.P7219011288521826443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 (A187829 (n + 1)).toNat

end

end A379957.P7219011288521826443

/-! ## A379957.P2597420451913681292

`Δ[A322912(n)%A131277(n+4)]`
-/

namespace A379957.P2597420451913681292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322912 n) (A131277 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379957.P2597420451913681292

/-! ## A379957.P6020117525920672701

`Δ[or(A322912(n), A361162(n+1))]`
-/

namespace A379957.P6020117525920672701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A322912 n) (A361162 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379957.P6020117525920672701

/-! ## A379957.P13036605244770301504

`A322968(n+1)%A139490(n+1)`
-/

namespace A379957.P13036605244770301504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322968 (n + 1)) (A139490 (n + 1))

end

end A379957.P13036605244770301504

/-!
# A379958: a(n) = 1 if n has more semiprime divisors than distinct prime factors, otherwise 0.

The programs for A379958, the canonical program `A379958.P5255491644438947746` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379958 has offset 1).

The definition of A379958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379958.P5255491644438947746

`floor(∑{e}[n+1, ceil(atan(#))]/4)`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379958

/-- `floor(∑{e}[n+1, ceil(atan(#))]/4)` -/
def P5255491644438947746.Spec : Prop :=
  ∀ n, P5255491644438947746.a n = A379958 (n + 1)

theorem P5255491644438947746.correct : P5255491644438947746.Spec := by
  intro n
  simp only [A379958, Nat.add_sub_cancel]

end A379958

/-! ## A379958.P13321823097208339212

`round(∑{e}[n+1, ceil(atan(#))]/7)`
-/

namespace A379958.P13321823097208339212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (Nat.factorization (f1 n) p : ℝ)⌉ : ℤ) : ℚ) / 7)

end

end A379958.P13321823097208339212

namespace A379958

/-- `round(∑{e}[n+1, ceil(atan(#))]/7)` -/
def P13321823097208339212.Spec : Prop :=
  ∀ n, P13321823097208339212.a n = A379958 (n + 1)

end A379958

/-! ## A379958.P546827900335695694

`floor(A238949(n+1)/4)`
-/

namespace A379958.P546827900335695694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A238949 (n + 1) : ℚ) / 4⌋

end

end A379958.P546827900335695694

namespace A379958

/-- `floor(A238949(n+1)/4)` -/
def P546827900335695694.Spec : Prop :=
  ∀ n, P546827900335695694.a n = A379958 (n + 1)

end A379958

/-! ## A379958.P7559044782991084691

`char[A320632(n+1)-1]`
-/

namespace A379958.P7559044782991084691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379958.P7559044782991084691

namespace A379958

/-- `char[A320632(n+1)-1]` -/
def P7559044782991084691.Spec : Prop :=
  ∀ n, (P7559044782991084691.a n : ℤ) = A379958 (n + 1)

end A379958

/-! ## A379958.P5954098575226365516

`char[lt[1, A322452(n+1)]]`
-/

namespace A379958.P5954098575226365516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379958.P5954098575226365516

namespace A379958

/-- `char[lt[1, A322452(n+1)]]` -/
def P5954098575226365516.Spec : Prop :=
  ∀ n, (P5954098575226365516.a n : ℤ) = A379958 (n + 1)

end A379958

/-! ## A379958.P11531624988156151978

`A252744(A322452(n+1)²)`
-/

namespace A379958.P11531624988156151978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 (A322452 (n + 1) ^ 2).toNat

end

end A379958.P11531624988156151978

namespace A379958

/-- `A252744(A322452(n+1)²)` -/
def P11531624988156151978.Spec : Prop :=
  ∀ n, P11531624988156151978.a n = A379958 (n + 1)

end A379958

/-! ## A379958.P16404693726433051303

`A252744(11^A322452(n+1))`
-/

namespace A379958.P16404693726433051303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252744 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A322452 (n + 1) : ℤ))).toNat

end

end A379958.P16404693726433051303

namespace A379958

/-- `A252744(11^A322452(n+1))` -/
def P16404693726433051303.Spec : Prop :=
  ∀ n, P16404693726433051303.a n = A379958 (n + 1)

end A379958

/-!
# A379959: a(n) = 1 if sigma(phi(n)) < n, otherwise 0.

The programs for A379959, the canonical program `A379959.P2753635732202418070` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379959 has offset 1).

The definition of A379959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379959.P2753635732202418070

`floor(n/∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379959

/-- `floor(n/∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])` -/
def P2753635732202418070.Spec : Prop :=
  ∀ n, P2753635732202418070.a n = A379959 (n + 1)

theorem P2753635732202418070.correct : P2753635732202418070.Spec := by
  intro n
  simp only [A379959, Nat.add_sub_cancel]

end A379959

/-! ## A379959.P15018015783358879475

`char[A230201(n+1)-1]`
-/

namespace A379959.P15018015783358879475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230201 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379959.P15018015783358879475

namespace A379959

/-- `char[A230201(n+1)-1]` -/
def P15018015783358879475.Spec : Prop :=
  ∀ n, (P15018015783358879475.a n : ℤ) = A379959 (n + 1)

end A379959

/-! ## A379959.P1351938448044218623

`floor(n/A062402(n+1))`
-/

namespace A379959.P1351938448044218623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A062402 (n + 1) : ℚ)⌋

end

end A379959.P1351938448044218623

namespace A379959

/-- `floor(n/A062402(n+1))` -/
def P1351938448044218623.Spec : Prop :=
  ∀ n, P1351938448044218623.a n = A379959 (n + 1)

end A379959

/-! ## A379959.P9100333545575518376

`col(1-A295304(n+1))`
-/

namespace A379959.P9100333545575518376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (1 - A295304 (n + 1)).toNat

end

end A379959.P9100333545575518376

namespace A379959

/-- `col(1-A295304(n+1))` -/
def P9100333545575518376.Spec : Prop :=
  ∀ n, (P9100333545575518376.a n : ℤ) = A379959 (n + 1)

end A379959

/-! ## A379959.P4332800409180902793

`floor(n/∑{d}[Δ[A005728(n)], #])`
-/

namespace A379959.P4332800409180902793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ)⌋

end

end A379959.P4332800409180902793

namespace A379959

/-- `floor(n/∑{d}[Δ[A005728(n)], #])` -/
def P4332800409180902793.Spec : Prop :=
  ∀ n, P4332800409180902793.a n = A379959 (n + 1)

end A379959

/-! ## A379959.P9894574657203131892

`floor(n/∑{d}[A349137(2*n+1), #])`
-/

namespace A379959.P9894574657203131892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ)⌋

end

end A379959.P9894574657203131892

namespace A379959

/-- `floor(n/∑{d}[A349137(2*n+1), #])` -/
def P9894574657203131892.Spec : Prop :=
  ∀ n, P9894574657203131892.a n = A379959 (n + 1)

end A379959

/-! ## A379959.P4626273746003431156

`and(1, char[A230201(A065033(n))-1])`
-/

namespace A379959.P4626273746003431156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230201 (A065033 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A379959.P4626273746003431156

namespace A379959

/-- `and(1, char[A230201(A065033(n))-1])` -/
def P4626273746003431156.Spec : Prop :=
  ∀ n, (P4626273746003431156.a n : ℤ) = A379959 (n + 1)

end A379959

/-! ## A379959.P6635246797346901623

`floor(n/A000203(A000010(n+1)))`
-/

namespace A379959.P6635246797346901623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A000203 (A000010 (n + 1)).toNat : ℚ)⌋

end

end A379959.P6635246797346901623

namespace A379959

/-- `floor(n/A000203(A000010(n+1)))` -/
def P6635246797346901623.Spec : Prop :=
  ∀ n, P6635246797346901623.a n = A379959 (n + 1)

end A379959

/-! ## A379959.P738386704604889725

`A052409(ceil((n+1)/A062402(n+1)))`
-/

namespace A379959.P738386704604889725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 ⌈(n + 1 : ℚ) / (A062402 (n + 1) : ℚ)⌉.toNat

end

end A379959.P738386704604889725

namespace A379959

/-- `A052409(ceil((n+1)/A062402(n+1)))` -/
def P738386704604889725.Spec : Prop :=
  ∀ n, P738386704604889725.a n = A379959 (n + 1)

end A379959

/-!
# A379960: Numbers k such that A276086(k)-1 or A276086(k)+1 is a perfect power (A001597), where A276086 is the primorial base exp-function.

The programs for A379960, there is no canonical definition to state claims against.
-/

/-! ## A379960.P8293412909899842061

`∪[A379961(n+1), A379962(n+1)]`
-/

namespace A379960.P8293412909899842061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379960.P8293412909899842061

/-!
# A379964: a(n) = 1 if (n^2)-1 is not divisible by p^p for any prime p, otherwise 0.

The programs for A379964, the canonical program `A379964.P18104266727039392013` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379964 has offset 1).

The definition of A379964 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359550, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379964.P18104266727039392013

`A359550((n+1)²-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A379964

/-- `A359550((n+1)²-1)` -/
def P18104266727039392013.Spec : Prop :=
  ∀ n, P18104266727039392013.a n = A379964 (n + 1)

theorem P18104266727039392013.correct : P18104266727039392013.Spec := by
  intro n
  simp only [A379964, Nat.add_sub_cancel]

end A379964

/-! ## A379964.P3510963132813694016

`char[A379965(n+1)-1]`
-/

namespace A379964.P3510963132813694016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379965 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379964.P3510963132813694016

namespace A379964

/-- `char[A379965(n+1)-1]` -/
def P3510963132813694016.Spec : Prop :=
  ∀ n, (P3510963132813694016.a n : ℤ) = A379964 (n + 1)

end A379964

/-! ## A379964.P3454451749904411803

`A359550(n)*A359550(n+2)`
-/

namespace A379964.P3454451749904411803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 n * A359550 (n + 2)

end

end A379964.P3454451749904411803

namespace A379964

/-- `A359550(n)*A359550(n+2)` -/
def P3454451749904411803.Spec : Prop :=
  ∀ n, P3454451749904411803.a n = A379964 (n + 1)

end A379964

/-! ## A379964.P12172928794135760393

`A359550(lcm(n, n+2))`
-/

namespace A379964.P12172928794135760393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (Nat.lcm n (n + 2))

end

end A379964.P12172928794135760393

namespace A379964

/-- `A359550(lcm(n, n+2))` -/
def P12172928794135760393.Spec : Prop :=
  ∀ n, P12172928794135760393.a n = A379964 (n + 1)

end A379964

/-! ## A379964.P5646921704082572964

`A354354(A144454(n+1))`
-/

namespace A379964.P5646921704082572964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (A144454 (n + 1)).toNat

end

end A379964.P5646921704082572964

namespace A379964

/-- `A354354(A144454(n+1))` -/
def P5646921704082572964.Spec : Prop :=
  ∀ n, P5646921704082572964.a n = A379964 (n + 1)

end A379964

/-! ## A379964.P2983895376177610797

`A341625(A146975(n))`
-/

namespace A379964.P2983895376177610797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341625 (A146975 n).toNat

end

end A379964.P2983895376177610797

namespace A379964

/-- `A341625(A146975(n))` -/
def P2983895376177610797.Spec : Prop :=
  ∀ n, P2983895376177610797.a n = A379964 (n + 1)

end A379964

/-! ## A379964.P8439270122169759948

`A341625(n*A064554(n+2))`
-/

namespace A379964.P8439270122169759948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341625 ((n : ℤ) * A064554 (n + 2)).toNat

end

end A379964.P8439270122169759948

namespace A379964

/-- `A341625(n*A064554(n+2))` -/
def P8439270122169759948.Spec : Prop :=
  ∀ n, P8439270122169759948.a n = A379964 (n + 1)

end A379964

/-! ## A379964.P13308486558901688253

`and(1, n*A349989(n+1))`
-/

namespace A379964.P13308486558901688253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A349989 (n + 1))

end

end A379964.P13308486558901688253

namespace A379964

/-- `and(1, n*A349989(n+1))` -/
def P13308486558901688253.Spec : Prop :=
  ∀ n, P13308486558901688253.a n = A379964 (n + 1)

end A379964

/-! ## A379964.P5533888354048067638

`A349989(n+1)%A000034(n)`
-/

namespace A379964.P5533888354048067638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349989 (n + 1)) (A000034 n)

end

end A379964.P5533888354048067638

namespace A379964

/-- `A349989(n+1)%A000034(n)` -/
def P5533888354048067638.Spec : Prop :=
  ∀ n, P5533888354048067638.a n = A379964 (n + 1)

end A379964

/-! ## A379964.P87260491998330720

`and(A005985(n), A349989(n+1))`
-/

namespace A379964.P87260491998330720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005985 n) (A349989 (n + 1))

end

end A379964.P87260491998330720

namespace A379964

/-- `and(A005985(n), A349989(n+1))` -/
def P87260491998330720.Spec : Prop :=
  ∀ n, P87260491998330720.a n = A379964 (n + 1)

end A379964

/-!
# A379965: Numbers k such that (k^2)-1 is not divisible by p^p for any prime p.

The programs for A379965, the canonical program `A379965.P660272978836450162` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379965 has offset 1).

The definition of A379965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379965.P660272978836450162

`filter[A092486(n), A379964(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A379965

/-- `filter[A092486(n), A379964(#)]` -/
def P660272978836450162.Spec : Prop :=
  ∀ n, P660272978836450162.a n = A379965 (n + 1)

theorem P660272978836450162.correct : P660272978836450162.Spec := by
  intro n
  simp only [A379965, Nat.add_sub_cancel]

end A379965

/-! ## A379965.P442419608463278241

`filter[A004277(n), A379964(#)]`
-/

namespace A379965.P442419608463278241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P442419608463278241

namespace A379965

/-- `filter[A004277(n), A379964(#)]` -/
def P442419608463278241.Spec : Prop :=
  ∀ n, P442419608463278241.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P5166185872406938889

`filter[A005843(n+1), A379964(#)]`
-/

namespace A379965.P5166185872406938889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P5166185872406938889

namespace A379965

/-- `filter[A005843(n+1), A379964(#)]` -/
def P5166185872406938889.Spec : Prop :=
  ∀ n, P5166185872406938889.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P16750873567950384024

`filter[A004275(n+1), A379964(#)]`
-/

namespace A379965.P16750873567950384024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P16750873567950384024

namespace A379965

/-- `filter[A004275(n+1), A379964(#)]` -/
def P16750873567950384024.Spec : Prop :=
  ∀ n, P16750873567950384024.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P3066436549909342868

`filter[A185048(2*n+1), A379964(#)]`
-/

namespace A379965.P3066436549909342868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P3066436549909342868

namespace A379965

/-- `filter[A185048(2*n+1), A379964(#)]` -/
def P3066436549909342868.Spec : Prop :=
  ∀ n, P3066436549909342868.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P310837919486928938

`filter[A004278(n+1), A379964(#)]`
-/

namespace A379965.P310837919486928938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P310837919486928938

namespace A379965

/-- `filter[A004278(n+1), A379964(#)]` -/
def P310837919486928938.Spec : Prop :=
  ∀ n, P310837919486928938.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P7045402341774353533

`filter[A300576(n+3), A379964(#)]`
-/

namespace A379965.P7045402341774353533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P7045402341774353533

namespace A379965

/-- `filter[A300576(n+3), A379964(#)]` -/
def P7045402341774353533.Spec : Prop :=
  ∀ n, P7045402341774353533.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P15979963917000454609

`filter[A004279(n), A379964(#)]`
-/

namespace A379965.P15979963917000454609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P15979963917000454609

namespace A379965

/-- `filter[A004279(n), A379964(#)]` -/
def P15979963917000454609.Spec : Prop :=
  ∀ n, P15979963917000454609.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P13629716523997405970

`filter[A004271(n+1), A379964(#)]`
-/

namespace A379965.P13629716523997405970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P13629716523997405970

namespace A379965

/-- `filter[A004271(n+1), A379964(#)]` -/
def P13629716523997405970.Spec : Prop :=
  ∀ n, P13629716523997405970.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P501006968660631867

`filter[A004272(n+1), A379964(#)]`
-/

namespace A379965.P501006968660631867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P501006968660631867

namespace A379965

/-- `filter[A004272(n+1), A379964(#)]` -/
def P501006968660631867.Spec : Prop :=
  ∀ n, P501006968660631867.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P14176604021177158246

`filter[A257282(n+2), A379964(#)]`
-/

namespace A379965.P14176604021177158246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P14176604021177158246

namespace A379965

/-- `filter[A257282(n+2), A379964(#)]` -/
def P14176604021177158246.Spec : Prop :=
  ∀ n, P14176604021177158246.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P12467577108345584453

`filter[A176693(n+2), A379964(#)]`
-/

namespace A379965.P12467577108345584453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P12467577108345584453

namespace A379965

/-- `filter[A176693(n+2), A379964(#)]` -/
def P12467577108345584453.Spec : Prop :=
  ∀ n, P12467577108345584453.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P16025624052932063987

`filter[A064745(n+1), A379964(#)]`
-/

namespace A379965.P16025624052932063987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P16025624052932063987

namespace A379965

/-- `filter[A064745(n+1), A379964(#)]` -/
def P16025624052932063987.Spec : Prop :=
  ∀ n, P16025624052932063987.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P16517298233327169677

`filter[A171086(n+1), A379964(#)]`
-/

namespace A379965.P16517298233327169677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P16517298233327169677

namespace A379965

/-- `filter[A171086(n+1), A379964(#)]` -/
def P16517298233327169677.Spec : Prop :=
  ∀ n, P16517298233327169677.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P6201405037129521132

`filter[A225850(n+1), A379964(#)]`
-/

namespace A379965.P6201405037129521132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P6201405037129521132

namespace A379965

/-- `filter[A225850(n+1), A379964(#)]` -/
def P6201405037129521132.Spec : Prop :=
  ∀ n, P6201405037129521132.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P11445577544746271906

`filter[A119432(n+1), A379964(#)]`
-/

namespace A379965.P11445577544746271906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P11445577544746271906

namespace A379965

/-- `filter[A119432(n+1), A379964(#)]` -/
def P11445577544746271906.Spec : Prop :=
  ∀ n, P11445577544746271906.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P14575615248679132019

`filter[A325572(n+1), A379964(#)]`
-/

namespace A379965.P14575615248679132019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P14575615248679132019

namespace A379965

/-- `filter[A325572(n+1), A379964(#)]` -/
def P14575615248679132019.Spec : Prop :=
  ∀ n, P14575615248679132019.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P5219687400828044358

`filter[A324847(n+1), A379964(#)]`
-/

namespace A379965.P5219687400828044358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P5219687400828044358

namespace A379965

/-- `filter[A324847(n+1), A379964(#)]` -/
def P5219687400828044358.Spec : Prop :=
  ∀ n, P5219687400828044358.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P7415795107103328071

`filter[A372771(n+1), A379964(#)]`
-/

namespace A379965.P7415795107103328071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P7415795107103328071

namespace A379965

/-- `filter[A372771(n+1), A379964(#)]` -/
def P7415795107103328071.Spec : Prop :=
  ∀ n, P7415795107103328071.a n = A379965 (n + 1)

end A379965

/-! ## A379965.P13930142163462476880

`filter[A237058(n+1), A379964(#)]`
-/

namespace A379965.P13930142163462476880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A379965.P13930142163462476880

namespace A379965

/-- `filter[A237058(n+1), A379964(#)]` -/
def P13930142163462476880.Spec : Prop :=
  ∀ n, P13930142163462476880.a n = A379965 (n + 1)

end A379965

/-!
# A379966: a(n) = 1 if n is an even squarefree number, otherwise 0.

The programs for A379966, the canonical program `A379966.P12699400935038257798` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379966 has offset 1).

The definition of A379966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379966.P12699400935038257798

`abs(A292273(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A379966

/-- `abs(A292273(n+1))` -/
def P12699400935038257798.Spec : Prop :=
  ∀ n, P12699400935038257798.a n = A379966 (n + 1)

theorem P12699400935038257798.correct : P12699400935038257798.Spec := by
  intro n
  simp only [A379966, Nat.add_sub_cancel]

end A379966

/-! ## A379966.P17313876699053319555

`A008966(n+1)-A323239(n+1)`
-/

namespace A379966.P17313876699053319555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) - A323239 (n + 1)

end

end A379966.P17313876699053319555

namespace A379966

/-- `A008966(n+1)-A323239(n+1)` -/
def P17313876699053319555.Spec : Prop :=
  ∀ n, P17313876699053319555.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P13061936546345967546

`A059841(n+1)*A008966(n+1)`
-/

namespace A379966.P13061936546345967546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * A008966 (n + 1)

end

end A379966.P13061936546345967546

namespace A379966

/-- `A059841(n+1)*A008966(n+1)` -/
def P13061936546345967546.Spec : Prop :=
  ∀ n, P13061936546345967546.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P10743682897989482760

`C(n%2, ∏{e}[1+n, #])`
-/

namespace A379966.P10743682897989482760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n % 2) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A379966.P10743682897989482760

namespace A379966

/-- `C(n%2, ∏{e}[1+n, #])` -/
def P10743682897989482760.Spec : Prop :=
  ∀ n, (P10743682897989482760.a n : ℤ) = A379966 (n + 1)

end A379966

/-! ## A379966.P8868715749227821812

`char[∏{p}[2*(n+1), #]-1]`
-/

namespace A379966.P8868715749227821812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379966.P8868715749227821812

namespace A379966

/-- `char[∏{p}[2*(n+1), #]-1]` -/
def P8868715749227821812.Spec : Prop :=
  ∀ n, (P8868715749227821812.a n : ℤ) = A379966 (n + 1)

end A379966

/-! ## A379966.P17870451488024533168

`and(1, n*∏{e}[n+1, #!])`
-/

namespace A379966.P17870451488024533168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p)))

end

end A379966.P17870451488024533168

namespace A379966

/-- `and(1, n*∏{e}[n+1, #!])` -/
def P17870451488024533168.Spec : Prop :=
  ∀ n, (P17870451488024533168.a n : ℤ) = A379966 (n + 1)

end A379966

/-! ## A379966.P6082910860150524036

`val(n+1, (2*∏{e}[n+1, #])!)`
-/

namespace A379966.P6082910860150524036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (Nat.factorial (2 * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)))

end

end A379966.P6082910860150524036

namespace A379966

/-- `val(n+1, (2*∏{e}[n+1, #])!)` -/
def P6082910860150524036.Spec : Prop :=
  ∀ n, (P6082910860150524036.a n : ℤ) = A379966 (n + 1)

end A379966

/-! ## A379966.P8991171897231866992

`val(∑[n+1], ∏{e}[n+1, #]+n+1)`
-/

namespace A379966.P8991171897231866992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + (n + 1))

end

end A379966.P8991171897231866992

namespace A379966

/-- `val(∑[n+1], ∏{e}[n+1, #]+n+1)` -/
def P8991171897231866992.Spec : Prop :=
  ∀ n, (P8991171897231866992.a n : ℤ) = A379966 (n + 1)

end A379966

/-! ## A379966.P3293857925353274508

`1-Δ[A105235(n)]`
-/

namespace A379966.P3293857925353274508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A379966.P3293857925353274508

namespace A379966

/-- `1-Δ[A105235(n)]` -/
def P3293857925353274508.Spec : Prop :=
  ∀ n, P3293857925353274508.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P13955460213104161915

`1-A105234(n+1)`
-/

namespace A379966.P13955460213104161915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A105234 (n + 1)

end

end A379966.P13955460213104161915

namespace A379966

/-- `1-A105234(n+1)` -/
def P13955460213104161915.Spec : Prop :=
  ∀ n, P13955460213104161915.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P4857072706726617696

`A359592(2*(n+1))`
-/

namespace A379966.P4857072706726617696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359592 (2 * (n + 1))

end

end A379966.P4857072706726617696

namespace A379966

/-- `A359592(2*(n+1))` -/
def P4857072706726617696.Spec : Prop :=
  ∀ n, P4857072706726617696.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P6677731221742474688

`A379970(2*(n+1))`
-/

namespace A379966.P6677731221742474688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379970 (2 * (n + 1))

end

end A379966.P6677731221742474688

namespace A379966

/-- `A379970(2*(n+1))` -/
def P6677731221742474688.Spec : Prop :=
  ∀ n, P6677731221742474688.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P1912247933177512476

`A359472(4*(n+1))`
-/

namespace A379966.P1912247933177512476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359472 (4 * (n + 1))

end

end A379966.P1912247933177512476

namespace A379966

/-- `A359472(4*(n+1))` -/
def P1912247933177512476.Spec : Prop :=
  ∀ n, P1912247933177512476.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P16879760476830006106

`A123623(n+1)%2`
-/

namespace A379966.P16879760476830006106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123623 (n + 1)) 2

end

end A379966.P16879760476830006106

namespace A379966

/-- `A123623(n+1)%2` -/
def P16879760476830006106.Spec : Prop :=
  ∀ n, P16879760476830006106.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P3626486686708887122

`val(A385212(n+1), 2)`
-/

namespace A379966.P3626486686708887122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A385212 (n + 1)).toNat 2

end

end A379966.P3626486686708887122

namespace A379966

/-- `val(A385212(n+1), 2)` -/
def P3626486686708887122.Spec : Prop :=
  ∀ n, (P3626486686708887122.a n : ℤ) = A379966 (n + 1)

end A379966

/-! ## A379966.P15438946672141492702

`val(A056135(n+1), 8)`
-/

namespace A379966.P15438946672141492702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056135 (n + 1)).toNat 8

end

end A379966.P15438946672141492702

namespace A379966

/-- `val(A056135(n+1), 8)` -/
def P15438946672141492702.Spec : Prop :=
  ∀ n, (P15438946672141492702.a n : ℤ) = A379966 (n + 1)

end A379966

/-! ## A379966.P15128626425527096077

`and(n, A008966(n+1))`
-/

namespace A379966.P15128626425527096077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008966 (n + 1))

end

end A379966.P15128626425527096077

namespace A379966

/-- `and(n, A008966(n+1))` -/
def P15128626425527096077.Spec : Prop :=
  ∀ n, P15128626425527096077.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P1485179700989156167

`and(1, n*A002033(n))`
-/

namespace A379966.P1485179700989156167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A002033 n)

end

end A379966.P1485179700989156167

namespace A379966

/-- `and(1, n*A002033(n))` -/
def P1485179700989156167.Spec : Prop :=
  ∀ n, P1485179700989156167.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P9705443760434423728

`and(1, n*A195588(n))`
-/

namespace A379966.P9705443760434423728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A195588 n)

end

end A379966.P9705443760434423728

namespace A379966

/-- `and(1, n*A195588(n))` -/
def P9705443760434423728.Spec : Prop :=
  ∀ n, P9705443760434423728.a n = A379966 (n + 1)

end A379966

/-! ## A379966.P15773021691325738321

`abs(A359591(2*(n+1)))`
-/

namespace A379966.P15773021691325738321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359591 (2 * (n + 1))|

end

end A379966.P15773021691325738321

namespace A379966

/-- `abs(A359591(2*(n+1)))` -/
def P15773021691325738321.Spec : Prop :=
  ∀ n, P15773021691325738321.a n = A379966 (n + 1)

end A379966

/-!
# A379967: Arithmetic derivative of {n divided by its largest squarefree divisor}: a(n) = A003415(A003557(n)).

The programs for A379967, the canonical program `A379967.P12250939003195279045` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379967 has offset 1).

The definition of A379967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379967.P12250939003195279045

`A003415(A003557(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A379967

/-- `A003415(A003557(n+1))` -/
def P12250939003195279045.Spec : Prop :=
  ∀ n, P12250939003195279045.a n = A379967 (n + 1)

theorem P12250939003195279045.correct : P12250939003195279045.Spec := by
  intro n
  simp only [A379967, Nat.add_sub_cancel]

end A379967

/-! ## A379967.P11674256035969345960

`A003415((n+1)/∏{p}[n+1, #])`
-/

namespace A379967.P11674256035969345960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A379967.P11674256035969345960

namespace A379967

/-- `A003415((n+1)/∏{p}[n+1, #])` -/
def P11674256035969345960.Spec : Prop :=
  ∀ n, P11674256035969345960.a n = A379967 (n + 1)

theorem P11674256035969345960.correct : P11674256035969345960.Spec := by
  intro n
  simp only [A379967, Nat.add_sub_cancel, A379967.P11674256035969345960.f1, A379967.P11674256035969345960.a, A379967.P12250939003195279045.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379967

/-! ## A379967.P15320934009783556744

`∑{d}[(n+1)/∏{p}[n+1, #], A300251(#)]`
-/

namespace A379967.P15320934009783556744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A300251 d

end

end A379967.P15320934009783556744

namespace A379967

/-- `∑{d}[(n+1)/∏{p}[n+1, #], A300251(#)]` -/
def P15320934009783556744.Spec : Prop :=
  ∀ n, P15320934009783556744.a n = A379967 (n + 1)

end A379967

/-! ## A379967.P9295700483258708920

`A003415(gcd(n+1, (n+1)*∑{p}[n+1, 1/#]))`
-/

namespace A379967.P9295700483258708920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ)))))

end

end A379967.P9295700483258708920

namespace A379967

/-- `A003415(gcd(n+1, (n+1)*∑{p}[n+1, 1/#]))` -/
def P9295700483258708920.Spec : Prop :=
  ∀ n, P9295700483258708920.a n = A379967 (n + 1)

end A379967

/-! ## A379967.P852238176583562902

`A168036((n+1)/∏{p}[n+1, #])+(n+1)/∏{p}[n+1, #]`
-/

namespace A379967.P852238176583562902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168036 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A379967.P852238176583562902

namespace A379967

/-- `A168036((n+1)/∏{p}[n+1, #])+(n+1)/∏{p}[n+1, #]` -/
def P852238176583562902.Spec : Prop :=
  ∀ n, P852238176583562902.a n = (A379967 (n + 1) : ℚ)

end A379967

/-! ## A379967.P759475846697931081

`A319703((n+1)/∏{p}[n+1, #]+(n+1)/∏{p}[n+1, #])`
-/

namespace A379967.P759475846697931081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A379967.P759475846697931081

namespace A379967

/-- `A319703((n+1)/∏{p}[n+1, #]+(n+1)/∏{p}[n+1, #])` -/
def P759475846697931081.Spec : Prop :=
  ∀ n, P759475846697931081.a n = A379967 (n + 1)

end A379967

/-! ## A379967.P15473101810014758690

`A129283((n+1)/∏{p}[n+1, #])-(n+1)/∏{p}[n+1, #]`
-/

namespace A379967.P15473101810014758690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A379967.P15473101810014758690

namespace A379967

/-- `A129283((n+1)/∏{p}[n+1, #])-(n+1)/∏{p}[n+1, #]` -/
def P15473101810014758690.Spec : Prop :=
  ∀ n, P15473101810014758690.a n = (A379967 (n + 1) : ℚ)

end A379967

/-! ## A379967.P15614206955883750750

`A003415(A336551(n+1)+1)`
-/

namespace A379967.P15614206955883750750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A336551 (n + 1) + 1).toNat

end

end A379967.P15614206955883750750

namespace A379967

/-- `A003415(A336551(n+1)+1)` -/
def P15614206955883750750.Spec : Prop :=
  ∀ n, P15614206955883750750.a n = A379967 (n + 1)

theorem P15614206955883750750.correct : P15614206955883750750.Spec := by
  intro n
  simp only [A379967, Nat.add_sub_cancel, A379967.P15614206955883750750.a, A379967.P12250939003195279045.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A336551, A336551.P8666843674191054020.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379967

/-! ## A379967.P5405534596266398870

`A319703(2*A003557(n+1))`
-/

namespace A379967.P5405534596266398870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A003557 (n + 1)).toNat

end

end A379967.P5405534596266398870

namespace A379967

/-- `A319703(2*A003557(n+1))` -/
def P5405534596266398870.Spec : Prop :=
  ∀ n, P5405534596266398870.a n = A379967 (n + 1)

end A379967

/-! ## A379967.P10703937945614779504

`∑{d}[A003557(n+1), A300251(#)]`
-/

namespace A379967.P10703937945614779504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A379967.P10703937945614779504

namespace A379967

/-- `∑{d}[A003557(n+1), A300251(#)]` -/
def P10703937945614779504.Spec : Prop :=
  ∀ n, P10703937945614779504.a n = A379967 (n + 1)

end A379967

/-! ## A379967.P5330691005174268993

`A003415((n+1)/A007947(n+1))`
-/

namespace A379967.P5330691005174268993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A379967.P5330691005174268993

namespace A379967

/-- `A003415((n+1)/A007947(n+1))` -/
def P5330691005174268993.Spec : Prop :=
  ∀ n, P5330691005174268993.a n = A379967 (n + 1)

end A379967

/-! ## A379967.P13518218773581270824

`A003415(A102631(n+1)/(n+1))`
-/

namespace A379967.P13518218773581270824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A379967.P13518218773581270824

namespace A379967

/-- `A003415(A102631(n+1)/(n+1))` -/
def P13518218773581270824.Spec : Prop :=
  ∀ n, P13518218773581270824.a n = A379967 (n + 1)

end A379967

/-! ## A379967.P6887512644068823834

`A329039(n+1)/A007947(n+1)`
-/

namespace A379967.P6887512644068823834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329039 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A379967.P6887512644068823834

namespace A379967

/-- `A329039(n+1)/A007947(n+1)` -/
def P6887512644068823834.Spec : Prop :=
  ∀ n, P6887512644068823834.a n = (A379967 (n + 1) : ℚ)

end A379967

/-! ## A379967.P12137282124078861279

`A329039(n+1)/A089384(n+1)`
-/

namespace A379967.P12137282124078861279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329039 (n + 1) : ℚ) / (A089384 (n + 1) : ℚ)

end

end A379967.P12137282124078861279

namespace A379967

/-- `A329039(n+1)/A089384(n+1)` -/
def P12137282124078861279.Spec : Prop :=
  ∀ n, P12137282124078861279.a n = (A379967 (n + 1) : ℚ)

end A379967

/-! ## A379967.P17035089172622552707

`A329039(n+1)/A334085(n+1)`
-/

namespace A379967.P17035089172622552707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329039 (n + 1) : ℚ) / (A334085 (n + 1) : ℚ)

end

end A379967.P17035089172622552707

namespace A379967

/-- `A329039(n+1)/A334085(n+1)` -/
def P17035089172622552707.Spec : Prop :=
  ∀ n, P17035089172622552707.a n = (A379967 (n + 1) : ℚ)

end A379967

/-! ## A379967.P11291737161802655163

`A003415(A076332(n+1)-A007947(n+1))`
-/

namespace A379967.P11291737161802655163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A076332 (n + 1) - A007947 (n + 1)).toNat

end

end A379967.P11291737161802655163

namespace A379967

/-- `A003415(A076332(n+1)-A007947(n+1))` -/
def P11291737161802655163.Spec : Prop :=
  ∀ n, P11291737161802655163.a n = A379967 (n + 1)

theorem P11291737161802655163.correct : P11291737161802655163.Spec := by
  intro n
  simp only [A379967, Nat.add_sub_cancel, A379967.P11291737161802655163.a, A379967.P12250939003195279045.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076332, A076332.P10547228136457690679.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P8111133275882580857.f1, A069513.P8111133275882580857.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A379967

/-! ## A379967.P5925098119528003418

`A003415(A000010(n+1)/A173557(n+1))`
-/

namespace A379967.P5925098119528003418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ))).toNat

end

end A379967.P5925098119528003418

namespace A379967

/-- `A003415(A000010(n+1)/A173557(n+1))` -/
def P5925098119528003418.Spec : Prop :=
  ∀ n, P5925098119528003418.a n = A379967 (n + 1)

end A379967

/-! ## A379967.P5052257680537957530

`A003415(A038040(n+1)/A304409(n+1))`
-/

namespace A379967.P5052257680537957530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (A304409 (n + 1) : ℚ))).toNat

end

end A379967.P5052257680537957530

namespace A379967

/-- `A003415(A038040(n+1)/A304409(n+1))` -/
def P5052257680537957530.Spec : Prop :=
  ∀ n, P5052257680537957530.a n = A379967 (n + 1)

end A379967

/-! ## A379967.P14620110478954393145

`A329039(n+1)/A015052(A015052(n+1))`
-/

namespace A379967.P14620110478954393145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329039 (n + 1) : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A379967.P14620110478954393145

namespace A379967

/-- `A329039(n+1)/A015052(A015052(n+1))` -/
def P14620110478954393145.Spec : Prop :=
  ∀ n, P14620110478954393145.a n = (A379967 (n + 1) : ℚ)

end A379967

/-! ## A379967.P9957398289048182687

`A329039(n+1)/A015053(A015053(n+1))`
-/

namespace A379967.P9957398289048182687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329039 (n + 1) : ℚ) / (A015053 (A015053 (n + 1)).toNat : ℚ)

end

end A379967.P9957398289048182687

namespace A379967

/-- `A329039(n+1)/A015053(A015053(n+1))` -/
def P9957398289048182687.Spec : Prop :=
  ∀ n, P9957398289048182687.a n = (A379967 (n + 1) : ℚ)

end A379967

/-!
# A379968: Characteristic function of A279029, numbers k with the property that the smallest and the largest Dyck path of the symmetric representation of sigma(k) do not share line segments.

The programs for A379968, there is no canonical definition to state claims against.
-/

/-! ## A379968.P3769217195927321598

`char[A279029(n+1)-1]`
-/

namespace A379968.P3769217195927321598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279029 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379968.P3769217195927321598

/-! ## A379968.P8157756170715389069

`A109017(C(A283976(n), A378450(n+1)))`
-/

namespace A379968.P8157756170715389069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (Nat.choose (A283976 n).toNat (A378450 (n + 1)).toNat)

end

end A379968.P8157756170715389069

/-! ## A379968.P12068372107188054052

`A376451(C(A283976(n), A378450(n+1)))`
-/

namespace A379968.P12068372107188054052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376451 (Nat.choose (A283976 n).toNat (A378450 (n + 1)).toNat)

end

end A379968.P12068372107188054052

/-! ## A379968.P9349265645409631418

`A109017(C(A335182(n+1), A378450(n+1)))`
-/

namespace A379968.P9349265645409631418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (Nat.choose (A335182 (n + 1)).toNat (A378450 (n + 1)).toNat)

end

end A379968.P9349265645409631418

/-! ## A379968.P13170715098354409287

`C(A274921(A055999(n+4)-1), A378450(n+1))`
-/

namespace A379968.P13170715098354409287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A274921 (A055999 (n + 4) - 1).toNat).toNat (A378450 (n + 1)).toNat

end

end A379968.P13170715098354409287

/-! ## A379968.P12134276400728600172

`C(A245192(n+2), A245192(n+2)²)`
-/

namespace A379968.P12134276400728600172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A245192 (n + 2)).toNat (A245192 (n + 2) ^ 2).toNat

end

end A379968.P12134276400728600172

/-! ## A379968.P14390601725700015758

`A241445(A342344(n+1)+A128615(3*n))`
-/

namespace A379968.P14390601725700015758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241445 (A342344 (n + 1) + A128615 (3 * n)).toNat

end

end A379968.P14390601725700015758

/-! ## A379968.P316523854813274541

`A048993(A342344(n+1)+A020639(2*(n+1)))`
-/

namespace A379968.P316523854813274541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A342344 (n + 1) + A020639 (2 * (n + 1))).toNat

end

end A379968.P316523854813274541

/-! ## A379968.P5184707167717816940

`A023360(A342344(n+1)+A083918(2*n+1))`
-/

namespace A379968.P5184707167717816940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023360 (A342344 (n + 1) + A083918 (2 * n + 1)).toNat

end

end A379968.P5184707167717816940

/-! ## A379968.P1718178404180412906

`A115584(A342344(n+1)+A083918(2*n+1))`
-/

namespace A379968.P1718178404180412906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115584 (A342344 (n + 1) + A083918 (2 * n + 1)).toNat

end

end A379968.P1718178404180412906

/-!
# A379969: Characteristic function of A239929, numbers k with the property that the symmetric representation of sigma(k) has two parts.

The programs for A379969, there is no canonical definition to state claims against.
-/

/-! ## A379969.P5814875174654028223

`char[eq[2, A237271(n+1)]]`
-/

namespace A379969.P5814875174654028223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A379969.P5814875174654028223

/-! ## A379969.P12097134624353989723

`A055668(A244971(n+1))`
-/

namespace A379969.P12097134624353989723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 (A244971 (n + 1)).toNat

end

end A379969.P12097134624353989723

/-! ## A379969.P16172707034879639390

`A353476(A244971(n+1)+2)`
-/

namespace A379969.P16172707034879639390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353476 (A244971 (n + 1) + 2).toNat

end

end A379969.P16172707034879639390

/-! ## A379969.P16725288006603691363

`A096268(C(4, A244971(n+1)))`
-/

namespace A379969.P16725288006603691363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (Nat.choose 4 (A244971 (n + 1)).toNat)

end

end A379969.P16725288006603691363

/-! ## A379969.P14168247578622913031

`and(A244971(n+1)+1, A257851(A244971(n+1)+1))`
-/

namespace A379969.P14168247578622913031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244971 (n + 1) + 1) (A257851 (A244971 (n + 1) + 1).toNat)

end

end A379969.P14168247578622913031

/-! ## A379969.P17854025359094564889

`A353478(A038873(n+1)*A237271(n+1))`
-/

namespace A379969.P17854025359094564889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (A038873 (n + 1) * A237271 (n + 1)).toNat

end

end A379969.P17854025359094564889

/-! ## A379969.P4721812118650868238

`A353478(A096246(2*n+1)*A237271(n+1))`
-/

namespace A379969.P4721812118650868238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (A096246 (2 * n + 1) * A237271 (n + 1)).toNat

end

end A379969.P4721812118650868238

/-! ## A379969.P3786429652783417708

`val(A216104(A237271(n+1)+A178334(n)^10)+1, 6)`
-/

namespace A379969.P3786429652783417708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A216104 (A237271 (n + 1) + A178334 n ^ 10).toNat + 1).toNat 6

end

end A379969.P3786429652783417708

/-! ## A379969.P1307109118376062832

`val(A147685(A237271(n+1)+(A178334(n)^n)²)+1, 6)`
-/

namespace A379969.P1307109118376062832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A147685 (A237271 (n + 1) + (A178334 n ^ n) ^ 2).toNat + 1).toNat 6

end

end A379969.P1307109118376062832

/-! ## A379969.P6663525003616423217

`A369965(A237271(n+1)*A252006(n+1))`
-/

namespace A379969.P6663525003616423217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (A237271 (n + 1) * A252006 (n + 1)).toNat

end

end A379969.P6663525003616423217

/-!
# A379970: a(n) = 1 if n is twice its squarefree kernel (A007949), otherwise 0.

The programs for A379970, the canonical program `A379970.P2983459517443085042` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379970 has offset 1).

The definition of A379970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379970.P5196557843226590660

`col(C(2, floor(n/∏{p}[n+1, #])))`
-/

namespace A379970.P5196557843226590660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Nat.choose 2 ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋.toNat)

end

end A379970.P5196557843226590660

namespace A379970

/-- `col(C(2, floor(n/∏{p}[n+1, #])))` -/
def P5196557843226590660.Spec : Prop :=
  ∀ n, (P5196557843226590660.a n : ℤ) = A379970 (n + 1)

end A379970

/-! ## A379970.P17180587596357503222

`C(2, (n+1)/∏{p}[n+1, #])%2`
-/

namespace A379970.P17180587596357503222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat % 2

end

end A379970.P17180587596357503222

namespace A379970

/-- `C(2, (n+1)/∏{p}[n+1, #])%2` -/
def P17180587596357503222.Spec : Prop :=
  ∀ n, (P17180587596357503222.a n : ℤ) = A379970 (n + 1)

end A379970

/-! ## A379970.P17666745681626228724

`col(6%(2*(n+1)/∏{p}[2*(n+1), #]))`
-/

namespace A379970.P17666745681626228724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Int.tmod 6 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))).toNat

end

end A379970.P17666745681626228724

namespace A379970

/-- `col(6%(2*(n+1)/∏{p}[2*(n+1), #]))` -/
def P17666745681626228724.Spec : Prop :=
  ∀ n, (P17666745681626228724.a n : ℤ) = A379970 (n + 1)

end A379970

/-! ## A379970.P5165818054151238307

`val(floor((n+1)²/2)+1, (n+1)*∏{p}[n+1, #]+1)`
-/

namespace A379970.P5165818054151238307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌊((n + 1) ^ 2 : ℚ) / 2⌋ + 1).toNat ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A379970.P5165818054151238307

namespace A379970

/-- `val(floor((n+1)²/2)+1, (n+1)*∏{p}[n+1, #]+1)` -/
def P5165818054151238307.Spec : Prop :=
  ∀ n, (P5165818054151238307.a n : ℤ) = A379970 (n + 1)

end A379970

/-! ## A379970.P12363012844928828900

`(round(∏{p}[n+1, #]/((n+1)*(-1)^∑{e}[n+1, #]))%∏{e}[1+n, #])²`
-/

namespace A379970.P12363012844928828900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ))) ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ) ^ 2

end

end A379970.P12363012844928828900

namespace A379970

/-- `(round(∏{p}[n+1, #]/((n+1)*(-1)^∑{e}[n+1, #]))%∏{e}[1+n, #])²` -/
def P12363012844928828900.Spec : Prop :=
  ∀ n, P12363012844928828900.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P7776766002051058326

`A359592(lcm(2, n+1))`
-/

namespace A379970.P7776766002051058326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359592 (Nat.lcm 2 (n + 1))

end

end A379970.P7776766002051058326

namespace A379970

/-- `A359592(lcm(2, n+1))` -/
def P7776766002051058326.Spec : Prop :=
  ∀ n, P7776766002051058326.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P11064736538306566617

`and(n, A359592(n+1))`
-/

namespace A379970.P11064736538306566617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A359592 (n + 1))

end

end A379970.P11064736538306566617

namespace A379970

/-- `and(n, A359592(n+1))` -/
def P11064736538306566617.Spec : Prop :=
  ∀ n, P11064736538306566617.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P16803889425121659821

`and(n², A114643(n+1))`
-/

namespace A379970.P16803889425121659821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A114643 (n + 1))

end

end A379970.P16803889425121659821

namespace A379970

/-- `and(n², A114643(n+1))` -/
def P16803889425121659821.Spec : Prop :=
  ∀ n, P16803889425121659821.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P1637022504277182161

`val(A058189(n+1), n+2)`
-/

namespace A379970.P1637022504277182161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A058189 (n + 1)).toNat (n + 2)

end

end A379970.P1637022504277182161

namespace A379970

/-- `val(A058189(n+1), n+2)` -/
def P1637022504277182161.Spec : Prop :=
  ∀ n, (P1637022504277182161.a n : ℤ) = A379970 (n + 1)

end A379970

/-! ## A379970.P8554992628215135542

`and(1, n*A063658(n+1))`
-/

namespace A379970.P8554992628215135542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A063658 (n + 1))

end

end A379970.P8554992628215135542

namespace A379970

/-- `and(1, n*A063658(n+1))` -/
def P8554992628215135542.Spec : Prop :=
  ∀ n, P8554992628215135542.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P1325828188506654017

`and(1, n*A063659(n+1))`
-/

namespace A379970.P1325828188506654017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A063659 (n + 1))

end

end A379970.P1325828188506654017

namespace A379970

/-- `and(1, n*A063659(n+1))` -/
def P1325828188506654017.Spec : Prop :=
  ∀ n, P1325828188506654017.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P132423155899274154

`and(1, n*A092673(n+1))`
-/

namespace A379970.P132423155899274154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A092673 (n + 1))

end

end A379970.P132423155899274154

namespace A379970

/-- `and(1, n*A092673(n+1))` -/
def P132423155899274154.Spec : Prop :=
  ∀ n, P132423155899274154.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P265370334639521016

`and(1, n*A296206(n+1))`
-/

namespace A379970.P265370334639521016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A296206 (n + 1))

end

end A379970.P265370334639521016

namespace A379970

/-- `and(1, n*A296206(n+1))` -/
def P265370334639521016.Spec : Prop :=
  ∀ n, P265370334639521016.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P360020571814290228

`and(1, n*A307381(n+1))`
-/

namespace A379970.P360020571814290228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A307381 (n + 1))

end

end A379970.P360020571814290228

namespace A379970

/-- `and(1, n*A307381(n+1))` -/
def P360020571814290228.Spec : Prop :=
  ∀ n, P360020571814290228.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P2983459517443085042

`and(1, n*A341635(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A379970

/-- `and(1, n*A341635(n+1))` -/
def P2983459517443085042.Spec : Prop :=
  ∀ n, P2983459517443085042.a n = A379970 (n + 1)

theorem P2983459517443085042.correct : P2983459517443085042.Spec := by
  intro n
  simp only [A379970, Nat.add_sub_cancel]

end A379970

/-! ## A379970.P4310719857228741310

`and(1, n*A359588(n+1))`
-/

namespace A379970.P4310719857228741310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A359588 (n + 1))

end

end A379970.P4310719857228741310

namespace A379970

/-- `and(1, n*A359588(n+1))` -/
def P4310719857228741310.Spec : Prop :=
  ∀ n, P4310719857228741310.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P9608104135439268367

`and(1, n*A369700(n+1))`
-/

namespace A379970.P9608104135439268367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A369700 (n + 1))

end

end A379970.P9608104135439268367

namespace A379970

/-- `and(1, n*A369700(n+1))` -/
def P9608104135439268367.Spec : Prop :=
  ∀ n, P9608104135439268367.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P5458649050032496476

`A359592(A133265(n))`
-/

namespace A379970.P5458649050032496476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359592 (A133265 n).toNat

end

end A379970.P5458649050032496476

namespace A379970

/-- `A359592(A133265(n))` -/
def P5458649050032496476.Spec : Prop :=
  ∀ n, P5458649050032496476.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P3604407497072838743

`A379966(A152271(n))`
-/

namespace A379970.P3604407497072838743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379966 (A152271 n).toNat

end

end A379970.P3604407497072838743

namespace A379970

/-- `A379966(A152271(n))` -/
def P3604407497072838743.Spec : Prop :=
  ∀ n, P3604407497072838743.a n = A379970 (n + 1)

end A379970

/-! ## A379970.P12249664153159327118

`A063524(A003557(n+1)-1)`
-/

namespace A379970.P12249664153159327118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A003557 (n + 1) - 1).toNat

end

end A379970.P12249664153159327118

namespace A379970

/-- `A063524(A003557(n+1)-1)` -/
def P12249664153159327118.Spec : Prop :=
  ∀ n, P12249664153159327118.a n = A379970 (n + 1)

end A379970

/-!
# A379971: a(n) = 1 if n^2-1 is squarefree, otherwise 0.

The programs for A379971, the canonical program `A379971.P13806193812172545761` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379971 has offset 1).

The definition of A379971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379971.P13806193812172545761

`A323239(n)*A323239(n+2)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A379971

/-- `A323239(n)*A323239(n+2)` -/
def P13806193812172545761.Spec : Prop :=
  ∀ n, P13806193812172545761.a n = A379971 (n + 1)

theorem P13806193812172545761.correct : P13806193812172545761.Spec := by
  intro n
  simp only [A379971, Nat.add_sub_cancel]

end A379971

/-! ## A379971.P5005559702834944726

`char[A069977(n+1)]`
-/

namespace A379971.P5005559702834944726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379971.P5005559702834944726

namespace A379971

/-- `char[A069977(n+1)]` -/
def P5005559702834944726.Spec : Prop :=
  ∀ n, (P5005559702834944726.a n : ℤ) = A379971 (n + 1)

end A379971

/-! ## A379971.P16762779439836638749

`char[A067874(n+1)-1]`
-/

namespace A379971.P16762779439836638749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379971.P16762779439836638749

namespace A379971

/-- `char[A067874(n+1)-1]` -/
def P16762779439836638749.Spec : Prop :=
  ∀ n, (P16762779439836638749.a n : ℤ) = A379971 (n + 1)

end A379971

/-! ## A379971.P6689893900713556100

`val(n+1, A085050(n+1))`
-/

namespace A379971.P6689893900713556100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A085050 (n + 1)).toNat

end

end A379971.P6689893900713556100

namespace A379971

/-- `val(n+1, A085050(n+1))` -/
def P6689893900713556100.Spec : Prop :=
  ∀ n, (P6689893900713556100.a n : ℤ) = A379971 (n + 1)

end A379971

/-! ## A379971.P9387652127789106861

`A323239(A353569(n+2)+n)`
-/

namespace A379971.P9387652127789106861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A353569 (n + 2) + (n : ℤ)).toNat

end

end A379971.P9387652127789106861

namespace A379971

/-- `A323239(A353569(n+2)+n)` -/
def P9387652127789106861.Spec : Prop :=
  ∀ n, P9387652127789106861.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P15748896494238231929

`A008966(n+2)*A323239(n)`
-/

namespace A379971.P15748896494238231929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 2) * A323239 n

end

end A379971.P15748896494238231929

namespace A379971

/-- `A008966(n+2)*A323239(n)` -/
def P15748896494238231929.Spec : Prop :=
  ∀ n, P15748896494238231929.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P9921764118066588179

`A323239((n+2)*A323239(n))`
-/

namespace A379971.P9921764118066588179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 ((n + 2 : ℤ) * A323239 n).toNat

end

end A379971.P9921764118066588179

namespace A379971

/-- `A323239((n+2)*A323239(n))` -/
def P9921764118066588179.Spec : Prop :=
  ∀ n, P9921764118066588179.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P6885623090883498272

`and(A261869(n+1), A323239(n))`
-/

namespace A379971.P6885623090883498272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261869 (n + 1)) (A323239 n)

end

end A379971.P6885623090883498272

namespace A379971

/-- `and(A261869(n+1), A323239(n))` -/
def P6885623090883498272.Spec : Prop :=
  ∀ n, P6885623090883498272.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P10016160015014503195

`and(A197658(n+2), A323239(n))`
-/

namespace A379971.P10016160015014503195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A197658 (n + 2)) (A323239 n)

end

end A379971.P10016160015014503195

namespace A379971

/-- `and(A197658(n+2), A323239(n))` -/
def P10016160015014503195.Spec : Prop :=
  ∀ n, P10016160015014503195.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P492850308053601314

`and(A199514(n+2), A323239(n))`
-/

namespace A379971.P492850308053601314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A199514 (n + 2)) (A323239 n)

end

end A379971.P492850308053601314

namespace A379971

/-- `and(A199514(n+2), A323239(n))` -/
def P492850308053601314.Spec : Prop :=
  ∀ n, P492850308053601314.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P12732400585684525341

`A304820(A085050(n+1)/(n+1))`
-/

namespace A379971.P12732400585684525341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304820 (SequenceMachineLib.roundAway ((A085050 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A379971.P12732400585684525341

namespace A379971

/-- `A304820(A085050(n+1)/(n+1))` -/
def P12732400585684525341.Spec : Prop :=
  ∀ n, P12732400585684525341.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P13746990093000933714

`A323239(n*A278908(n+2))`
-/

namespace A379971.P13746990093000933714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 ((n : ℤ) * A278908 (n + 2)).toNat

end

end A379971.P13746990093000933714

namespace A379971

/-- `A323239(n*A278908(n+2))` -/
def P13746990093000933714.Spec : Prop :=
  ∀ n, P13746990093000933714.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P14394443241304566475

`and(A114702(n+2), A323239(n))`
-/

namespace A379971.P14394443241304566475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114702 (n + 2)) (A323239 n)

end

end A379971.P14394443241304566475

namespace A379971

/-- `and(A114702(n+2), A323239(n))` -/
def P14394443241304566475.Spec : Prop :=
  ∀ n, P14394443241304566475.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P272254128532511011

`A008966((n+2)*(abs(1-n)+1))`
-/

namespace A379971.P272254128532511011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 ((n + 2 : ℤ) * (|1 - (n : ℤ)| + 1)).toNat

end

end A379971.P272254128532511011

namespace A379971

/-- `A008966((n+2)*(abs(1-n)+1))` -/
def P272254128532511011.Spec : Prop :=
  ∀ n, P272254128532511011.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P12217960440431810337

`A359592(A082562(n+1))`
-/

namespace A379971.P12217960440431810337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359592 (A082562 (n + 1)).toNat

end

end A379971.P12217960440431810337

namespace A379971

/-- `A359592(A082562(n+1))` -/
def P12217960440431810337.Spec : Prop :=
  ∀ n, P12217960440431810337.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P6438877374954122024

`A323239(A066107(n))`
-/

namespace A379971.P6438877374954122024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A066107 n).toNat

end

end A379971.P6438877374954122024

namespace A379971

/-- `A323239(A066107(n))` -/
def P6438877374954122024.Spec : Prop :=
  ∀ n, P6438877374954122024.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P9783231133584664769

`A323239(A066830(n+1))`
-/

namespace A379971.P9783231133584664769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A066830 (n + 1)).toNat

end

end A379971.P9783231133584664769

namespace A379971

/-- `A323239(A066830(n+1))` -/
def P9783231133584664769.Spec : Prop :=
  ∀ n, P9783231133584664769.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P12152612952529360505

`A323239(A081350(n+1))`
-/

namespace A379971.P12152612952529360505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A081350 (n + 1)).toNat

end

end A379971.P12152612952529360505

namespace A379971

/-- `A323239(A081350(n+1))` -/
def P12152612952529360505.Spec : Prop :=
  ∀ n, P12152612952529360505.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P8822658783665503414

`A323239(A142705(n+1))`
-/

namespace A379971.P8822658783665503414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A142705 (n + 1)).toNat

end

end A379971.P8822658783665503414

namespace A379971

/-- `A323239(A142705(n+1))` -/
def P8822658783665503414.Spec : Prop :=
  ∀ n, P8822658783665503414.a n = A379971 (n + 1)

end A379971

/-! ## A379971.P6569861780460968852

`A323239(n*A000265(n+2))`
-/

namespace A379971.P6569861780460968852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 ((n : ℤ) * A000265 (n + 2)).toNat

end

end A379971.P6569861780460968852

namespace A379971

/-- `A323239(n*A000265(n+2))` -/
def P6569861780460968852.Spec : Prop :=
  ∀ n, P6569861780460968852.a n = A379971 (n + 1)

end A379971

/-!
# A379972: Numbers x with 2^(m-1)<x<=2^m which can unambiguously be constructed with given points 0,1 on the x-axis and m circles.

The programs for A379972, there is no canonical definition to state claims against.
-/

/-! ## A379972.P2161158710313511986

`eq[1, A380203(n+1)]+1`
-/

namespace A379972.P2161158710313511986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379972.P2161158710313511986

/-! ## A379972.P8995731816699452748

`eq[A130260(n), A359043(n)]+1`
-/

namespace A379972.P8995731816699452748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130260 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A379972.P8995731816699452748

/-! ## A379972.P5431259139888643598

`record[A145342(A365067(n))]`
-/

namespace A379972.P5431259139888643598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A365067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379972.P5431259139888643598

/-!
# A379979: Number of pairs (m,k), 1 <= m < k <= N such that there exists 1 <= x < y < k-1 such that 1/x^2 - 1/y^2 = 1/m^2 - 1/k^2, N = A355812(n).

The programs for A379979, there is no canonical definition to state claims against.
-/

/-! ## A379979.P5385893202545175653

`∑[A379895(n+1)]`
-/

namespace A379979.P5385893202545175653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379979.P5385893202545175653

/-! ## A379979.P12446710565589162909

`∑[A355813(n+1)%A345921(n+4)]`
-/

namespace A379979.P12446710565589162909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355813 (n + 1)) (A345921 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379979.P12446710565589162909

/-! ## A379979.P9713643595658838654

`∑[A355813(n+1)%A122387(n+3)]`
-/

namespace A379979.P9713643595658838654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355813 (n + 1)) (A122387 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379979.P9713643595658838654

/-! ## A379979.P9177501309396042028

`∑[A355813(n+1)%A119876(n)]`
-/

namespace A379979.P9177501309396042028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355813 (n + 1)) (A119876 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379979.P9177501309396042028

/-! ## A379979.P743161949475320905

`∑[A355813(n+1)]%A107687(n+1)`
-/

namespace A379979.P743161949475320905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A107687 (n + 1))

end

end A379979.P743161949475320905

/-! ## A379979.P14310611288569741727

`a(n-1)+and(A045535(n), A379895(n+1))` with `a(0)=1`
-/

namespace A379979.P14310611288569741727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land (A045535 n) (A379895 (n + 1))

end

end A379979.P14310611288569741727

/-! ## A379979.P8368528518700797498

`A000194(∑[A355813(n+1)]²)`
-/

namespace A379979.P8368528518700797498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A379979.P8368528518700797498

/-!
# A379980: Numbers that are divisible by the square of the sum of the squares of their digits.

The programs for A379980, there is no canonical definition to state claims against.
-/

/-! ## A379980.P9375888442817407034

`A112867(∑[n²+1])`
-/

namespace A379980.P9375888442817407034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112867 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379980.P9375888442817407034

/-!
# A379982: Nonmultiples of 10 that are divisible by the square of the sum of the squares of their digits.

The programs for A379982, there is no canonical definition to state claims against.
-/

/-! ## A379982.P543464253757887654

`filter[A379980(n+1), A011558(#)]`
-/

namespace A379982.P543464253757887654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A379982.P543464253757887654

/-!
# A379984: Numbers that are divisible by the square of the product of their digits.

The programs for A379984, there is no canonical definition to state claims against.
-/

/-! ## A379984.P12967760351871251172

`∩[A225299(n+1), A000433(n)]`
-/

namespace A379984.P12967760351871251172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379984.P12967760351871251172

/-! ## A379984.P14858993186182795020

`A056699(A094026(n+1))`
-/

namespace A379984.P14858993186182795020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (A094026 (n + 1)).toNat

end

end A379984.P14858993186182795020

/-! ## A379984.P14167948986901183152

`A231873(A056804(n+1))`
-/

namespace A379984.P14167948986901183152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231873 (A056804 (n + 1)).toNat

end

end A379984.P14167948986901183152

/-!
# A379985: Numbers k such that k^2 is of the form b^2 + (4*c)^2 where b*c is squarefree.

The programs for A379985, there is no canonical definition to state claims against.
-/

/-! ## A379985.P10142635101630092216

`A020882(lt[A264428(3*n+1), A346724(3*n+1)])`
-/

namespace A379985.P10142635101630092216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379985.P10142635101630092216

/-! ## A379985.P13710771835953665745

`A008846(lt[A140953(n), A006530(n+1)])`
-/

namespace A379985.P13710771835953665745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379985.P13710771835953665745

/-! ## A379985.P13946945334048311126

`A088511(A084092(n+1))`
-/

namespace A379985.P13946945334048311126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088511 (A084092 (n + 1)).toNat

end

end A379985.P13946945334048311126

/-! ## A379985.P2141737202301858099

`A198440(lt[A263395(n), 1])`
-/

namespace A379985.P2141737202301858099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263395 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198440 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A379985.P2141737202301858099

/-! ## A379985.P4076453237742935579

`A020882(record[runs[A071342(n+1)]])`
-/

namespace A379985.P4076453237742935579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071342 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A379985.P4076453237742935579

/-!
# A379990: Expansion of e.g.f. exp(-2*x)/(exp(-x) - x)^3.

The programs for A379990, the canonical program `A379990.P4879907506781607738` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379990 has offset 0).

The definition of A379990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379990.P4879907506781607738

`n!*∑{#}[n, (#+1)^(n-#)*C(#+2, 2)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379990

/-- `n!*∑{#}[n, (#+1)^(n-#)*C(#+2, 2)/(n-#)!]` -/
def P4879907506781607738.Spec : Prop :=
  ∀ n, P4879907506781607738.a n = (A379990 n : ℚ)

end A379990

/-!
# A379991: Expansion of e.g.f. exp(-x)/(exp(-x) - x)^3.

The programs for A379991, the canonical program `A379991.P13256308922412389802` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379991 has offset 0).

The definition of A379991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379991.P13256308922412389802

`n!*∑{#}[n, (#+2)^(n-#)*C(#+2, 2)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379991

/-- `n!*∑{#}[n, (#+2)^(n-#)*C(#+2, 2)/(n-#)!]` -/
def P13256308922412389802.Spec : Prop :=
  ∀ n, P13256308922412389802.a n = (A379991 n : ℚ)

end A379991

/-!
# A379992: Expansion of e.g.f. exp(-3*x)/(exp(-x) - x)^2.

The programs for A379992, the canonical program `A379992.P5810395914152852078` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379992 has offset 0).

The definition of A379992 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379992.P5810395914152852078

`n!*∑{#}[n, (#+1)*(#-1)^(n-#)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379992

/-- `n!*∑{#}[n, (#+1)*(#-1)^(n-#)/(n-#)!]` -/
def P5810395914152852078.Spec : Prop :=
  ∀ n, P5810395914152852078.a n = (A379992 n : ℚ)

end A379992

/-! ## A379992.P3439167235100654959

`A335514(2*n+1)+A129389(A002449(n))`
-/

namespace A379992.P3439167235100654959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335514 (2 * n + 1) + A129389 (A002449 n).toNat

end

end A379992.P3439167235100654959

namespace A379992

/-- `A335514(2*n+1)+A129389(A002449(n))` -/
def P3439167235100654959.Spec : Prop :=
  ∀ n, P3439167235100654959.a n = A379992 n

end A379992

/-!
# A379993: Expansion of e.g.f. 1/(1 - x * exp(x))^4.

The programs for A379993, the canonical program `A379993.P11545732887750223277` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379993 has offset 0).

The definition of A379993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379993.P11545732887750223277

`n!*∑{#}[n, #^(n-#)*C(#+3, 3)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379993

/-- `n!*∑{#}[n, #^(n-#)*C(#+3, 3)/(n-#)!]` -/
def P11545732887750223277.Spec : Prop :=
  ∀ n, P11545732887750223277.a n = (A379993 n : ℚ)

end A379993

/-! ## A379993.P9051470310117025541

`A380841(eq[4, A002262(n)])`
-/

namespace A379993.P9051470310117025541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379993.P9051470310117025541

namespace A379993

/-- `A380841(eq[4, A002262(n)])` -/
def P9051470310117025541.Spec : Prop :=
  ∀ n, P9051470310117025541.a n = A379993 n

end A379993

/-! ## A379993.P15000017377651050152

`A380841(eq[4, A144328(n+1)])`
-/

namespace A379993.P15000017377651050152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379993.P15000017377651050152

namespace A379993

/-- `A380841(eq[4, A144328(n+1)])` -/
def P15000017377651050152.Spec : Prop :=
  ∀ n, P15000017377651050152.a n = A379993 n

end A379993

/-!
# A379994: Expansion of e.g.f. exp(-3*x)/(exp(-x) - x)^4.

The programs for A379994, the canonical program `A379994.P11848725148179896257` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379994 has offset 0).

The definition of A379994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379994.P11848725148179896257

`n!*∑{#}[n, (#+1)^(n-#)*C(#+3, 3)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379994

/-- `n!*∑{#}[n, (#+1)^(n-#)*C(#+3, 3)/(n-#)!]` -/
def P11848725148179896257.Spec : Prop :=
  ∀ n, P11848725148179896257.a n = (A379994 n : ℚ)

end A379994

/-!
# A379995: Expansion of e.g.f. exp(-2*x)/(exp(-x) - x)^4.

The programs for A379995, the canonical program `A379995.P4988315671359175504` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379995 has offset 0).

The definition of A379995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379995.P4988315671359175504

`n!*∑{#}[n, (#+2)^(n-#)*C(#+3, 3)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379995

/-- `n!*∑{#}[n, (#+2)^(n-#)*C(#+3, 3)/(n-#)!]` -/
def P4988315671359175504.Spec : Prop :=
  ∀ n, P4988315671359175504.a n = (A379995 n : ℚ)

end A379995

/-!
# A379996: Expansion of e.g.f. exp(-x)/(exp(-x) - x)^4.

The programs for A379996, the canonical program `A379996.P17009350423367730796` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379996 has offset 0).

The definition of A379996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379996.P17009350423367730796

`n!*∑{#}[n, (#+3)^(n-#)*C(#+3, 3)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379996

/-- `n!*∑{#}[n, (#+3)^(n-#)*C(#+3, 3)/(n-#)!]` -/
def P17009350423367730796.Spec : Prop :=
  ∀ n, P17009350423367730796.a n = (A379996 n : ℚ)

end A379996

/-!
# A379997: Expansion of e.g.f. 1/(exp(x) - x*exp(2*x))^2.

The programs for A379997, the canonical program `A379997.P6616412762960080400` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379997 has offset 0).

The definition of A379997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379997.P6616412762960080400

`n!*∑{#}[n, (#+1)*(#-2)^(n-#)/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A379997

/-- `n!*∑{#}[n, (#+1)*(#-2)^(n-#)/(n-#)!]` -/
def P6616412762960080400.Spec : Prop :=
  ∀ n, P6616412762960080400.a n = (A379997 n : ℚ)

end A379997

