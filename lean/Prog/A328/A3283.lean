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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A328300: Number T(n,k) of n-step walks on cubic lattice starting at (0,0,0), ending at (0,k,n-k), remaining in the first (nonnegative) octant and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A328300, there is no canonical definition to state claims against.
-/

/-! ## A328300.P14954391500188572996

`A059328(n)%A319057(A061802(n))`
-/

namespace A328300.P14954391500188572996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059328 n) (A319057 (A061802 n).toNat)

end

end A328300.P14954391500188572996

/-! ## A328300.P17840667043277343719

`or(A130749(n), A133137(A008278(n+1)))`
-/

namespace A328300.P17840667043277343719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130749 n) (A133137 (A008278 (n + 1)).toNat)

end

end A328300.P17840667043277343719

/-! ## A328300.P17787978460824792008

`or(A130749(n), A133137(A133713(n+2)))`
-/

namespace A328300.P17787978460824792008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130749 n) (A133137 (A133713 (n + 2)).toNat)

end

end A328300.P17787978460824792008

/-! ## A328300.P16654775633643508918

`A003002(A157153(n))`
-/

namespace A328300.P16654775633643508918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A157153 n).toNat

end

end A328300.P16654775633643508918

/-! ## A328300.P8232856039425183406

`A127288(A157152(n))`
-/

namespace A328300.P8232856039425183406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A157152 n).toNat

end

end A328300.P8232856039425183406

/-!
# A328301: Expansion of Product_{k>0} 1/(1 - x^(k^k)).

The programs for A328301, there is no canonical definition to state claims against.
-/

/-! ## A328301.P18293969287262124088

`∑[A279760(2*n)^A265513(n)]`
-/

namespace A328301.P18293969287262124088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (2 * n) : ℚ) ^ (A265513 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328301.P18293969287262124088

/-! ## A328301.P6408835296845366220

`∑[A002828(A278929(2*n)²)]`
-/

namespace A328301.P6408835296845366220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A278929 (2 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328301.P6408835296845366220

/-! ## A328301.P10486889585172575081

`A002828(A278929(2*n)²)+a(A023443(n))` with `a(0)=1`
-/

namespace A328301.P10486889585172575081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002828 (A278929 (2 * n) ^ 2).toNat + a (A023443 n).toNat

end

end A328301.P10486889585172575081

/-! ## A328301.P12443009349554012650

`∑[A279760(2*n)^(A000045(n)+1)]`
-/

namespace A328301.P12443009349554012650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (2 * n) : ℚ) ^ (A000045 n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328301.P12443009349554012650

/-! ## A328301.P17941453476553951375

`∑[A279760(A005843(n))^A000009(n)]`
-/

namespace A328301.P17941453476553951375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A005843 n).toNat : ℚ) ^ (A000009 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328301.P17941453476553951375

/-! ## A328301.P15647360546536750878

`∑[A279760(A005843(n))^A000032(n)]`
-/

namespace A328301.P15647360546536750878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A005843 n).toNat : ℚ) ^ (A000032 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328301.P15647360546536750878

/-! ## A328301.P18386248127122977605

`∑[A279760(A005843(n))^A000045(n)]`
-/

namespace A328301.P18386248127122977605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A005843 n).toNat : ℚ) ^ (A000045 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328301.P18386248127122977605

/-! ## A328301.P460728554743897211

`∑[A279760(A005843(n))^A000096(n)]`
-/

namespace A328301.P460728554743897211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A005843 n).toNat : ℚ) ^ (A000096 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328301.P460728554743897211

/-! ## A328301.P5731475311241572115

`∑[A279760(A005843(n))^A000124(n)]`
-/

namespace A328301.P5731475311241572115
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A005843 n).toNat : ℚ) ^ (A000124 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328301.P5731475311241572115

/-! ## A328301.P977214077048638458

`∑[A279760(A005843(n))^A008458(n)]`
-/

namespace A328301.P977214077048638458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A005843 n).toNat : ℚ) ^ (A008458 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328301.P977214077048638458

/-!
# A328302: For n > 1, a(n) is the least number > 0 for which it takes n-2 steps to reach a squarefree number by applying arithmetic derivative (A003415) zero or multiple times. a(1) = 4 is the least number for which no squarefree number is ever reached.

The programs for A328302, there is no canonical definition to state claims against.
-/

/-! ## A328302.P6809975051753978774

`A328250(∑[n+1])`
-/

namespace A328302.P6809975051753978774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328250 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328302.P6809975051753978774

/-! ## A328302.P10343603111978866953

`and(-1, A328250(A000217(n+1)))`
-/

namespace A328302.P10343603111978866953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A328250 (A000217 (n + 1)).toNat)

end

end A328302.P10343603111978866953

/-! ## A328302.P9072478025060993952

`A328250(A000217(n+1))%A068692(n+1)`
-/

namespace A328302.P9072478025060993952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328250 (A000217 (n + 1)).toNat) (A068692 (n + 1))

end

end A328302.P9072478025060993952

/-! ## A328302.P2305968007389670859

`A328250(A000217(n+1))+A240328(2*(n+1))`
-/

namespace A328302.P2305968007389670859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328250 (A000217 (n + 1)).toNat + A240328 (2 * (n + 1))

end

end A328302.P2305968007389670859

/-! ## A328302.P4794425888247346133

`A328250(A000217(n+1))+A000007(3*n+2)`
-/

namespace A328302.P4794425888247346133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328250 (A000217 (n + 1)).toNat + A000007 (3 * n + 2)

end

end A328302.P4794425888247346133

/-!
# A328303: Numbers whose arithmetic derivative is not squarefree.

The programs for A328303, the canonical program `A328303.P3153780690928328092` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328303 has offset 1).

The definition of A328303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328303.P3153780690928328092

`eq[0, A354874(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A328303

/-- `eq[0, A354874(n)]` -/
def P3153780690928328092.Spec : Prop :=
  ∀ n, (P3153780690928328092.a n : ℤ) = A328303 (n + 1)

theorem P3153780690928328092.correct : P3153780690928328092.Spec := by
  intro n
  simp only [A328303, Nat.add_sub_cancel]

end A328303

/-! ## A328303.P17930499227664059641

`comp[A328393(n+1)]`
-/

namespace A328303.P17930499227664059641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328303.P17930499227664059641

namespace A328303

/-- `comp[A328393(n+1)]` -/
def P17930499227664059641.Spec : Prop :=
  ∀ n, (P17930499227664059641.a n : ℤ) = A328303 (n + 1)

end A328303

/-! ## A328303.P9641901259830564721

`eq[A055671(n), A341994(n)]`
-/

namespace A328303.P9641901259830564721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328303.P9641901259830564721

namespace A328303

/-- `eq[A055671(n), A341994(n)]` -/
def P9641901259830564721.Spec : Prop :=
  ∀ n, (P9641901259830564721.a n : ℤ) = A328303 (n + 1)

end A328303

/-! ## A328303.P1126771021116543793

`eq[A055672(n), A341994(n)]`
-/

namespace A328303.P1126771021116543793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328303.P1126771021116543793

namespace A328303

/-- `eq[A055672(n), A341994(n)]` -/
def P1126771021116543793.Spec : Prop :=
  ∀ n, (P1126771021116543793.a n : ℤ) = A328303 (n + 1)

end A328303

/-! ## A328303.P6957592381668715410

`lt[A000292(n*A354874(n)), 2]`
-/

namespace A328303.P6957592381668715410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 ((n : ℤ) * A354874 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328303.P6957592381668715410

namespace A328303

/-- `lt[A000292(n*A354874(n)), 2]` -/
def P6957592381668715410.Spec : Prop :=
  ∀ n, (P6957592381668715410.a n : ℤ) = A328303 (n + 1)

end A328303

/-! ## A328303.P5946329366886976203

`eq[A003415(n), A105570(A003415(n))]`
-/

namespace A328303.P5946329366886976203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328303.P5946329366886976203

namespace A328303

/-- `eq[A003415(n), A105570(A003415(n))]` -/
def P5946329366886976203.Spec : Prop :=
  ∀ n, (P5946329366886976203.a n : ℤ) = A328303 (n + 1)

end A328303

/-! ## A328303.P5161423090667999727

`eq[A000007(A051699(n)), A341994(n)]`
-/

namespace A328303.P5161423090667999727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328303.P5161423090667999727

namespace A328303

/-- `eq[A000007(A051699(n)), A341994(n)]` -/
def P5161423090667999727.Spec : Prop :=
  ∀ n, (P5161423090667999727.a n : ℤ) = A328303 (n + 1)

end A328303

/-! ## A328303.P18190177433292281734

`lt[A179839(n+1)*A354874(n), 2]`
-/

namespace A328303.P18190177433292281734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179839 (n + 1) * A354874 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328303.P18190177433292281734

namespace A328303

/-- `lt[A179839(n+1)*A354874(n), 2]` -/
def P18190177433292281734.Spec : Prop :=
  ∀ n, (P18190177433292281734.a n : ℤ) = A328303 (n + 1)

end A328303

/-! ## A328303.P3973108168689465646

`lt[A163407(2*(n+1))*A354874(n), 2]`
-/

namespace A328303.P3973108168689465646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163407 (2 * (n + 1)) * A354874 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328303.P3973108168689465646

namespace A328303

/-- `lt[A163407(2*(n+1))*A354874(n), 2]` -/
def P3973108168689465646.Spec : Prop :=
  ∀ n, (P3973108168689465646.a n : ℤ) = A328303 (n + 1)

end A328303

/-! ## A328303.P2599579672081865552

`eq[A257994(A008578(n+1)), A341994(n)]`
-/

namespace A328303.P2599579672081865552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328303.P2599579672081865552

namespace A328303

/-- `eq[A257994(A008578(n+1)), A341994(n)]` -/
def P2599579672081865552.Spec : Prop :=
  ∀ n, (P2599579672081865552.a n : ℤ) = A328303 (n + 1)

end A328303

/-! ## A328303.P6006932994063133091

`lt[A320470(n)*A354874(n), 2]`
-/

namespace A328303.P6006932994063133091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320470 n * A354874 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328303.P6006932994063133091

namespace A328303

/-- `lt[A320470(n)*A354874(n), 2]` -/
def P6006932994063133091.Spec : Prop :=
  ∀ n, (P6006932994063133091.a n : ℤ) = A328303 (n + 1)

end A328303

/-!
# A328304: Numbers that are cubefree, but not squarefree and whose arithmetic derivative is not squarefree.

The programs for A328304, the canonical program `A328304.P1864302713347206541` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328304 has offset 1).

The definition of A328304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328304.P16143778222433191790

`filter[A328303(n+2), A359429(#)]`
-/

namespace A328304.P16143778222433191790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A328304.P16143778222433191790

namespace A328304

/-- `filter[A328303(n+2), A359429(#)]` -/
def P16143778222433191790.Spec : Prop :=
  ∀ n, P16143778222433191790.a n = A328304 (n + 1)

end A328304

/-! ## A328304.P1864302713347206541

`∩[A067259(n+1), A328303(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A328304

/-- `∩[A067259(n+1), A328303(n+1)]` -/
def P1864302713347206541.Spec : Prop :=
  ∀ n, (P1864302713347206541.a n : ℤ) = A328304 (n + 1)

theorem P1864302713347206541.correct : P1864302713347206541.Spec := by
  intro n
  simp only [A328304, Nat.add_sub_cancel]

end A328304

/-! ## A328304.P4772450869606840168

`∩[eq[0, A354874(n)], A067259(n+1)]`
-/

namespace A328304.P4772450869606840168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A328304.P4772450869606840168

namespace A328304

/-- `∩[eq[0, A354874(n)], A067259(n+1)]` -/
def P4772450869606840168.Spec : Prop :=
  ∀ n, (P4772450869606840168.a n : ℤ) = A328304 (n + 1)

end A328304

/-! ## A328304.P3604379346100443663

`∩[eq[2, A051903(n+1)]+1, A328303(n+1)]`
-/

namespace A328304.P3604379346100443663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A328304.P3604379346100443663

namespace A328304

/-- `∩[eq[2, A051903(n+1)]+1, A328303(n+1)]` -/
def P3604379346100443663.Spec : Prop :=
  ∀ n, (P3604379346100443663.a n : ℤ) = A328304 (n + 1)

end A328304

/-! ## A328304.P179980247237200227

`filter[A328321(n+1), A359429(#)]`
-/

namespace A328304.P179980247237200227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A328304.P179980247237200227

namespace A328304

/-- `filter[A328321(n+1), A359429(#)]` -/
def P179980247237200227.Spec : Prop :=
  ∀ n, P179980247237200227.a n = A328304 (n + 1)

end A328304

/-! ## A328304.P5565700326674584166

`∩[A067259(n+1), A328321(n+1)]`
-/

namespace A328304.P5565700326674584166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328304.P5565700326674584166

namespace A328304

/-- `∩[A067259(n+1), A328321(n+1)]` -/
def P5565700326674584166.Spec : Prop :=
  ∀ n, (P5565700326674584166.a n : ℤ) = A328304 (n + 1)

end A328304

/-!
# A328306: a(n) = 1 if k-th arithmetic derivative of A276086(n) is zero for some k, otherwise 0.

The programs for A328306, there is no canonical definition to state claims against.
-/

/-! ## A328306.P4130017123991207363

`A328308(A276086(n))`
-/

namespace A328306.P4130017123991207363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A276086 n).toNat

end

end A328306.P4130017123991207363

/-! ## A328306.P1977470876330504134

`char[A328116(n+1)]`
-/

namespace A328306.P1977470876330504134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A328306.P1977470876330504134

/-! ## A328306.P18291999257512613653

`C(A328116(A328307(n)), n)`
-/

namespace A328306.P18291999257512613653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A328116 (A328307 n).toNat).toNat n

end

end A328306.P18291999257512613653

/-! ## A328306.P4407487993870563791

`char[A328116(A028310(n))]*A057979(2*n)`
-/

namespace A328306.P4407487993870563791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328116 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A057979 (2 * n)

end

end A328306.P4407487993870563791

/-! ## A328306.P806147556547369939

`A368907(A277022(n))`
-/

namespace A328306.P806147556547369939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368907 (A277022 n).toNat

end

end A328306.P806147556547369939

/-! ## A328306.P16052818421524312201

`A328308(A327860(n)%A200785(2*n+3))`
-/

namespace A328306.P16052818421524312201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (Int.tmod (A327860 n) (A200785 (2 * n + 3))).toNat

end

end A328306.P16052818421524312201

/-! ## A328306.P5687820271613808324

`A328308(A327860(n))`
-/

namespace A328306.P5687820271613808324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A327860 n).toNat

end

end A328306.P5687820271613808324

/-! ## A328306.P14010163973718938680

`A328308(A370131(n))`
-/

namespace A328306.P14010163973718938680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A370131 n).toNat

end

end A328306.P14010163973718938680

/-!
# A328307: a(n) tells how many numbers m there are in range 0..n such that the k-th arithmetic derivative of A276086(m) is zero for some k >= 0.

The programs for A328307, there is no canonical definition to state claims against.
-/

/-! ## A328307.P17723473323960051283

`a(n-1)+A328306(n)` with `a(0)=1`
-/

namespace A328307.P17723473323960051283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A328306 n

end

end A328307.P17723473323960051283

/-! ## A328307.P8044027086324437776

`∑[A328306(n)]`
-/

namespace A328307.P8044027086324437776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328307.P8044027086324437776

/-! ## A328307.P16298194406466490626

`∑[char[A328116(n+1)]]`
-/

namespace A328307.P16298194406466490626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328116 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328307.P16298194406466490626

/-! ## A328307.P8782926683522031159

`A328306(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A328307.P8782926683522031159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328306 n + a (A023443 n).toNat

end

end A328307.P8782926683522031159

/-! ## A328307.P14532478209685484415

`∑[A328308(A276086(n)%∑[(n+1)²])]`
-/

namespace A328307.P14532478209685484415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (Int.tmod (A276086 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328307.P14532478209685484415

/-! ## A328307.P2938157757801899440

`∑[A328308(A276086(n))]`
-/

namespace A328307.P2938157757801899440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A276086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328307.P2938157757801899440

/-! ## A328307.P5198947041345124208

`∑[A328308(A327860(n))]`
-/

namespace A328307.P5198947041345124208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 (A327860 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328307.P5198947041345124208

/-!
# A328308: a(n) = 1 if k-th arithmetic derivative of n is zero for some k, otherwise 0.

The programs for A328308, there is no canonical definition to state claims against.
-/

/-! ## A328308.P18288458947521051938

`1-A341999(n)`
-/

namespace A328308.P18288458947521051938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341999 n

end

end A328308.P18288458947521051938

/-! ## A328308.P16366747477621007962

`char[A099308(n+1)]`
-/

namespace A328308.P16366747477621007962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A328308.P16366747477621007962

/-! ## A328308.P17640941489664306831

`char[comp[A099309(n+1)]]`
-/

namespace A328308.P17640941489664306831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099309 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A328308.P17640941489664306831

/-! ## A328308.P14643758484087618541

`3%(A341999(n%(n+1))+2)`
-/

namespace A328308.P14643758484087618541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A341999 (n % (n + 1)) + 2)

end

end A328308.P14643758484087618541

/-! ## A328308.P17341691847037715084

`xor(1, A341999(A003415(n)))`
-/

namespace A328308.P17341691847037715084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A341999 (A003415 n).toNat)

end

end A328308.P17341691847037715084

/-! ## A328308.P16952724774543395948

`A000007(n*A341999(n))`
-/

namespace A328308.P16952724774543395948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A341999 n).toNat

end

end A328308.P16952724774543395948

/-! ## A328308.P9163142998863655159

`A130713(n*A341999(n))`
-/

namespace A328308.P9163142998863655159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 ((n : ℤ) * A341999 n).toNat

end

end A328308.P9163142998863655159

/-! ## A328308.P10587762300122272827

`and(1, A341999(n)+A016969(n))`
-/

namespace A328308.P10587762300122272827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A341999 n + A016969 n)

end

end A328308.P10587762300122272827

/-! ## A328308.P10152015433821728920

`A266304(C(2, n*A341999(n)))`
-/

namespace A328308.P10152015433821728920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 (Nat.choose 2 ((n : ℤ) * A341999 n).toNat)

end

end A328308.P10152015433821728920

/-! ## A328308.P8302373635825435862

`A266304(C(n, A341999(n)+n))`
-/

namespace A328308.P8302373635825435862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 (Nat.choose n (A341999 n + (n : ℤ)).toNat)

end

end A328308.P8302373635825435862

/-! ## A328308.P11758043675821177537

`and(1, A341999(n)+A031158(n+1))`
-/

namespace A328308.P11758043675821177537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A341999 n + A031158 (n + 1))

end

end A328308.P11758043675821177537

/-! ## A328308.P4947150275208287778

`and(1, A341999(n)+A339112(n+1))`
-/

namespace A328308.P4947150275208287778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A341999 n + A339112 (n + 1))

end

end A328308.P4947150275208287778

/-! ## A328308.P11268812705157515409

`C(2, A160545(n+1)*A341999(n))`
-/

namespace A328308.P11268812705157515409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A160545 (n + 1) * A341999 n).toNat

end

end A328308.P11268812705157515409

/-! ## A328308.P18221720364696214228

`C(A062298(n+1), n*A341999(n))`
-/

namespace A328308.P18221720364696214228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062298 (n + 1)).toNat ((n : ℤ) * A341999 n).toNat

end

end A328308.P18221720364696214228

/-! ## A328308.P9936714445549950488

`A353494(A099308(n+1)*A341999(n))`
-/

namespace A328308.P9936714445549950488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353494 (A099308 (n + 1) * A341999 n).toNat

end

end A328308.P9936714445549950488

/-! ## A328308.P2671988145751991538

`A071028(A341999(n)+A034444(n+1)²)`
-/

namespace A328308.P2671988145751991538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A341999 n + A034444 (n + 1) ^ 2).toNat

end

end A328308.P2671988145751991538

/-! ## A328308.P10806809511747340615

`C(A327938(n+1), A341999(n)+A327938(n+1))`
-/

namespace A328308.P10806809511747340615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327938 (n + 1)).toNat (A341999 n + A327938 (n + 1)).toNat

end

end A328308.P10806809511747340615

/-! ## A328308.P17373766323133355547

`A351078(A028310(n))/A028310(A351078(n))`
-/

namespace A328308.P17373766323133355547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351078 (A028310 n).toNat : ℚ) / (A028310 (A351078 n).toNat : ℚ)

end

end A328308.P17373766323133355547

/-! ## A328308.P11869720865233069130

`A351079(A028310(n))/A028310(A351079(n))`
-/

namespace A328308.P11869720865233069130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351079 (A028310 n).toNat : ℚ) / (A028310 (A351079 n).toNat : ℚ)

end

end A328308.P11869720865233069130

/-! ## A328308.P16893792716574923391

`C(A243712(n+1), n*A341999(n))`
-/

namespace A328308.P16893792716574923391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A243712 (n + 1)).toNat ((n : ℤ) * A341999 n).toNat

end

end A328308.P16893792716574923391

/-!
# A328309: a(n) counts the numbers in 0..n whose k-th arithmetic derivative is zero for some k >= 0.

The programs for A328309, there is no canonical definition to state claims against.
-/

/-! ## A328309.P1780710666460193033

`a(n-1)+A328308(n)` with `a(0)=1`
-/

namespace A328309.P1780710666460193033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A328308 n

end

end A328309.P1780710666460193033

/-! ## A328309.P12098991441260837009

`∑[A328308(n)]`
-/

namespace A328309.P12098991441260837009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328309.P12098991441260837009

/-! ## A328309.P3498291417740750200

`∑[1-A341999(n)]`
-/

namespace A328309.P3498291417740750200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328309.P3498291417740750200

/-! ## A328309.P9169422618248542663

`∑[char[A099308(n+1)]]`
-/

namespace A328309.P9169422618248542663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099308 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328309.P9169422618248542663

/-! ## A328309.P14554770356103810109

`∑[char[comp[A099309(n+1)]]]`
-/

namespace A328309.P14554770356103810109
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099309 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328309.P14554770356103810109

/-! ## A328309.P9750617883971085780

`∑[A107286(A351078(n))]+1`
-/

namespace A328309.P9750617883971085780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A351078 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A328309.P9750617883971085780

/-! ## A328309.P4135907025365689840

`∑[C(2, A266304(n*A341999(n)))]`
-/

namespace A328309.P4135907025365689840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A266304 ((n : ℤ) * A341999 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328309.P4135907025365689840

/-! ## A328309.P1008887116776376408

`∑[C(2, A160545(n+1)*A341999(n))]`
-/

namespace A328309.P1008887116776376408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A160545 (n + 1) * A341999 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328309.P1008887116776376408

/-! ## A328309.P6910181809651944593

`∑[C(A062298(n+1), n*A341999(n))]`
-/

namespace A328309.P6910181809651944593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062298 (n + 1)).toNat ((n : ℤ) * A341999 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328309.P6910181809651944593

/-! ## A328309.P12509463116979287782

`∑[C(A243712(n+1), n*A341999(n))]`
-/

namespace A328309.P12509463116979287782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A243712 (n + 1)).toNat ((n : ℤ) * A341999 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328309.P12509463116979287782

/-! ## A328309.P9445902845991660222

`∑[A071028(A341999(n)+n²)]`
-/

namespace A328309.P9445902845991660222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A341999 n + (n ^ 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328309.P9445902845991660222

/-!
# A328310: a(n) = A051903(A003415(n)) - A051903(n).

The programs for A328310, the canonical program `A328310.P2472833898533372449` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328310 has offset 2).

The definition of A328310 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328310.P17559177358904779199

`A328311(n+2)-1`
-/

namespace A328310.P17559177358904779199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328311 (n + 2) - 1

end

end A328310.P17559177358904779199

namespace A328310

/-- `A328311(n+2)-1` -/
def P17559177358904779199.Spec : Prop :=
  ∀ n, P17559177358904779199.a n = A328310 (n + 2)

end A328310

/-! ## A328310.P2472833898533372449

`A051903(A003415(n+2))-A051903(n+2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328310

/-- `A051903(A003415(n+2))-A051903(n+2)` -/
def P2472833898533372449.Spec : Prop :=
  ∀ n, P2472833898533372449.a n = A328310 (n + 2)

theorem P2472833898533372449.correct : P2472833898533372449.Spec := by
  intro n
  simp only [A328310, Nat.add_sub_cancel]

end A328310

/-! ## A328310.P11251816612931707252

`A023443(A328311(n+2))`
-/

namespace A328310.P11251816612931707252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A328311 (n + 2)).toNat

end

end A328310.P11251816612931707252

namespace A328310

/-- `A023443(A328311(n+2))` -/
def P11251816612931707252.Spec : Prop :=
  ∀ n, P11251816612931707252.a n = A328310 (n + 2)

end A328310

/-! ## A328310.P8965382584184491369

`A108155(A328311(n+2)+1)`
-/

namespace A328310.P8965382584184491369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108155 (A328311 (n + 2) + 1).toNat

end

end A328310.P8965382584184491369

namespace A328310

/-- `A108155(A328311(n+2)+1)` -/
def P8965382584184491369.Spec : Prop :=
  ∀ n, P8965382584184491369.a n = A328310 (n + 2)

end A328310

/-! ## A328310.P2838529226317114668

`A342003(n+2)-A051903(n+2)`
-/

namespace A328310.P2838529226317114668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342003 (n + 2) - A051903 (n + 2)

end

end A328310.P2838529226317114668

namespace A328310

/-- `A342003(n+2)-A051903(n+2)` -/
def P2838529226317114668.Spec : Prop :=
  ∀ n, P2838529226317114668.a n = A328310 (n + 2)

end A328310

/-! ## A328310.P17415089321903401275

`A328384(A328320(n+1))+A328311(n+2)`
-/

namespace A328310.P17415089321903401275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A328320 (n + 1)).toNat + A328311 (n + 2)

end

end A328310.P17415089321903401275

namespace A328310

/-- `A328384(A328320(n+1))+A328311(n+2)` -/
def P17415089321903401275.Spec : Prop :=
  ∀ n, P17415089321903401275.a n = A328310 (n + 2)

end A328310

/-! ## A328310.P2075091957351211479

`A104895(2*n+1)+A328311(n+2)+A104895(2*n)`
-/

namespace A328310.P2075091957351211479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (2 * n + 1) + (A328311 (n + 2) + A104895 (2 * n))

end

end A328310.P2075091957351211479

namespace A328310

/-- `A104895(2*n+1)+A328311(n+2)+A104895(2*n)` -/
def P2075091957351211479.Spec : Prop :=
  ∀ n, P2075091957351211479.a n = A328310 (n + 2)

end A328310

/-! ## A328310.P14234456920024382364

`A328384(A157037(n+1))+A328311(n+2)`
-/

namespace A328310.P14234456920024382364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A157037 (n + 1)).toNat + A328311 (n + 2)

end

end A328310.P14234456920024382364

namespace A328310

/-- `A328384(A157037(n+1))+A328311(n+2)` -/
def P14234456920024382364.Spec : Prop :=
  ∀ n, P14234456920024382364.a n = A328310 (n + 2)

end A328310

/-! ## A328310.P13812298506568961010

`A328384(A328252(n+1))+A328311(n+2)`
-/

namespace A328310.P13812298506568961010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A328252 (n + 1)).toNat + A328311 (n + 2)

end

end A328310.P13812298506568961010

namespace A328310

/-- `A328384(A328252(n+1))+A328311(n+2)` -/
def P13812298506568961010.Spec : Prop :=
  ∀ n, P13812298506568961010.a n = A328310 (n + 2)

end A328310

/-!
# A328311: a(n) = 1 + A051903(A003415(n)) - A051903(n), a(1) = 0 by convention.

The programs for A328311, the canonical program `A328311.P6899217752375846038` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328311 has offset 1).

The definition of A328311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328311.P5854851279908461926

`A328310(floor(acot(n)+n)+1)+1`
-/

namespace A328311.P5854851279908461926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat + 1

end

end A328311.P5854851279908461926

namespace A328311

/-- `A328310(floor(acot(n)+n)+1)+1` -/
def P5854851279908461926.Spec : Prop :=
  ∀ n, P5854851279908461926.a n = A328311 (n + 1)

end A328311

/-! ## A328311.P3637949157202265654

`A328310(round(sqrt(n²+1))+1)+1`
-/

namespace A328311.P3637949157202265654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat + 1

end

end A328311.P3637949157202265654

namespace A328311

/-- `A328310(round(sqrt(n²+1))+1)+1` -/
def P3637949157202265654.Spec : Prop :=
  ∀ n, P3637949157202265654.a n = A328311 (n + 1)

end A328311

/-! ## A328311.P6899217752375846038

`abs(A328310(A028310(n)+1)+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A328311

/-- `abs(A328310(A028310(n)+1)+1)` -/
def P6899217752375846038.Spec : Prop :=
  ∀ n, P6899217752375846038.a n = A328311 (n + 1)

theorem P6899217752375846038.correct : P6899217752375846038.Spec := by
  intro n
  simp only [A328311, Nat.add_sub_cancel]

end A328311

/-! ## A328311.P7848233335788963947

`(A328310(A028310(n)+1)+1)%A230775(n+1)`
-/

namespace A328311.P7848233335788963947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328310 (A028310 n + 1).toNat + 1) (A230775 (n + 1))

end

end A328311.P7848233335788963947

namespace A328311

/-- `(A328310(A028310(n)+1)+1)%A230775(n+1)` -/
def P7848233335788963947.Spec : Prop :=
  ∀ n, P7848233335788963947.a n = A328311 (n + 1)

end A328311

/-! ## A328311.P1887152543269922443

`(3^A001222(n+1)-1)%2+A328310(A028310(n)+1)+1`
-/

namespace A328311.P1887152543269922443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A001222 (n + 1) : ℤ) - 1)) 2 + (A328310 (A028310 n + 1).toNat + 1)

end

end A328311.P1887152543269922443

namespace A328311

/-- `(3^A001222(n+1)-1)%2+A328310(A028310(n)+1)+1` -/
def P1887152543269922443.Spec : Prop :=
  ∀ n, P1887152543269922443.a n = A328311 (n + 1)

end A328311

/-!
# A328312: a(n) is the product of (1+A328311(x)) applied over all values x obtained when arithmetic derivative (A003415) is iterated starting from x=n, until 1 is encountered, or 0 if no 1 is ever encountered (in which case such product would be infinite).

The programs for A328312, there is no canonical definition to state claims against.
-/

/-! ## A328312.P3276261908267482650

`A000925(A085250(n)*A097974(n+1))`
-/

namespace A328312.P3276261908267482650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A085250 n * A097974 (n + 1)).toNat

end

end A328312.P3276261908267482650

/-! ## A328312.P8019532841839549328

`and(A005408(A129853(n+1)), A178254(n+1))`
-/

namespace A328312.P8019532841839549328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A129853 (n + 1)).toNat) (A178254 (n + 1))

end

end A328312.P8019532841839549328

/-! ## A328312.P10581487862057935104

`A335489(∑[A048253(A003056(n))])`
-/

namespace A328312.P10581487862057935104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048253 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328312.P10581487862057935104

/-! ## A328312.P17910012230077798595

`A129402(A022100(n)*A091991(n+1))`
-/

namespace A328312.P17910012230077798595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (A022100 n * A091991 (n + 1)).toNat

end

end A328312.P17910012230077798595

/-!
# A328314: Lexicographically earliest infinite sequence such that a(i) = a(j) => A025586(i) = A025586(j) for all i, j.

The programs for A328314, there is no canonical definition to state claims against.
-/

/-! ## A328314.P1734567706699195513

`A308937(A053585(n+1)%A265947(3*(n+1)))`
-/

namespace A328314.P1734567706699195513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308937 (Int.tmod (A053585 (n + 1)) (A265947 (3 * (n + 1)))).toNat

end

end A328314.P1734567706699195513

/-!
# A328316: Iterates of A276086 starting from 0.

The programs for A328316, there is no canonical definition to state claims against.
-/

/-! ## A328316.P1868234833711023450

`A276086(a(n-1))` with `a(0)=0`
-/

namespace A328316.P1868234833711023450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276086 (a (n - 1)).toNat

end

end A328316.P1868234833711023450

/-! ## A328316.P5230037607268516366

`A276087(a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A328316.P5230037607268516366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A276087 (a (n - 2)).toNat

end

end A328316.P5230037607268516366

/-! ## A328316.P14990566010803782742

`A351225(a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A328316.P14990566010803782742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A351225 (a (n - 1)).toNat + a (n - 1)

end

end A328316.P14990566010803782742

/-! ## A328316.P10629856390089379604

`A276086(abs(a(A023443(n))))` with `a(0)=0`
-/

namespace A328316.P10629856390089379604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276086 |a (A023443 n).toNat|.toNat

end

end A328316.P10629856390089379604

/-! ## A328316.P1477049040725092841

`A276086(floor(a(A023443(n))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A328316.P1477049040725092841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276086 (a (A023443 n).toNat).toNat

end

end A328316.P1477049040725092841

/-!
# A328317: Smallest prime not dividing A328316(n), with a(0) = 1 by convention; Equally, for n > 0, smallest prime dividing A328316(1+n).

The programs for A328317, there is no canonical definition to state claims against.
-/

/-! ## A328317.P10709678299000518084

`a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2, a(4)=5`
-/

namespace A328317.P10709678299000518084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2, 5] fun n a =>
  a (n - 2)

end

end A328317.P10709678299000518084

/-! ## A328317.P17221405250241127588

`floor(5/a(n%2))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A328317.P17221405250241127588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌊5 / (a (n % 2) : ℚ)⌋

end

end A328317.P17221405250241127588

/-! ## A328317.P10896761232171300701

`floor(5/a(and(1, n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A328317.P10896761232171300701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌊5 / (a (Nat.land 1 n) : ℚ)⌋

end

end A328317.P10896761232171300701

/-! ## A328317.P3820397859461286507

`∑[ogf((1+2x+2x^2+2x^4)/(1+x))]`
-/

namespace A328317.P3820397859461286507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 0, 2] [1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328317.P3820397859461286507

/-!
# A328319: Sum of digits when A328316(n) is written in primorial base; number of prime factors in A328316(1+n), counted with multiplicity.

The programs for A328319, there is no canonical definition to state claims against.
-/

/-! ## A328319.P6603297317729273365

`a(A328316(1+n))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=3, a(6)=3, a(7)=7, a(8)=21, a(9)=159`
-/

namespace A328319.P6603297317729273365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 3, 3, 7, 21, 159] fun n a =>
  a (A328316 (1 + n)).toNat

end

end A328319.P6603297317729273365

/-!
# A328320: Numbers for which A328311(n) = 1 + A051903(A003415(n)) - A051903(n) is zero (including 1 as the initial term).

The programs for A328320, the canonical program `A328320.P11647473449184802512` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328320 has offset 1).

The definition of A328320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328320.P11647473449184802512

`eq[0, A328311(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A328320

/-- `eq[0, A328311(n+1)]+1` -/
def P11647473449184802512.Spec : Prop :=
  ∀ n, (P11647473449184802512.a n : ℤ) = A328320 (n + 1)

theorem P11647473449184802512.correct : P11647473449184802512.Spec := by
  intro n
  simp only [A328320, Nat.add_sub_cancel]

end A328320

/-! ## A328320.P3721114761389082815

`eq[1, A342004(n+1)]+1`
-/

namespace A328320.P3721114761389082815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328320.P3721114761389082815

namespace A328320

/-- `eq[1, A342004(n+1)]+1` -/
def P3721114761389082815.Spec : Prop :=
  ∀ n, (P3721114761389082815.a n : ℤ) = A328320 (n + 1)

end A328320

/-! ## A328320.P8938083093632978585

`eq[16, A335448(a(A328311(n)))]` with `a(0)=4`
-/

namespace A328320.P8938083093632978585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A335448 (f2 (A328311 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328320.P8938083093632978585

namespace A328320

/-- `eq[16, A335448(a(A328311(n)))]` -/
def P8938083093632978585.Spec : Prop :=
  ∀ n, (P8938083093632978585.a n : ℤ) = A328320 (n + 1)

end A328320

/-! ## A328320.P465138976881209273

`record[A000027(n+1)*A342004(n+1)]`
-/

namespace A328320.P465138976881209273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A342004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328320.P465138976881209273

namespace A328320

/-- `record[A000027(n+1)*A342004(n+1)]` -/
def P465138976881209273.Spec : Prop :=
  ∀ n, P465138976881209273.a n = A328320 (n + 1)

end A328320

/-! ## A328320.P12375135880155665634

`record[gcd(A000027(n+1), A328311(n+1))]`
-/

namespace A328320.P12375135880155665634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A328311 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328320.P12375135880155665634

namespace A328320

/-- `record[gcd(A000027(n+1), A328311(n+1))]` -/
def P12375135880155665634.Spec : Prop :=
  ∀ n, (P12375135880155665634.a n : ℤ) = A328320 (n + 1)

end A328320

/-! ## A328320.P16621881216323791889

`record[(n+1)/A000203(A328311(n+1)+1)]`
-/

namespace A328320.P16621881216323791889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000203 (A328311 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328320.P16621881216323791889

namespace A328320

/-- `record[(n+1)/A000203(A328311(n+1)+1)]` -/
def P16621881216323791889.Spec : Prop :=
  ∀ n, P16621881216323791889.a n = (A328320 (n + 1) : ℚ)

end A328320

/-! ## A328320.P7022390145019298400

`record[(n+1)/A004917(A328311(n+1)+2)]`
-/

namespace A328320.P7022390145019298400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A004917 (A328311 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328320.P7022390145019298400

namespace A328320

/-- `record[(n+1)/A004917(A328311(n+1)+2)]` -/
def P7022390145019298400.Spec : Prop :=
  ∀ n, P7022390145019298400.a n = (A328320 (n + 1) : ℚ)

end A328320

/-! ## A328320.P14674639403691395858

`record[(n+1)/A006093(5*A328311(n+1)+1)]`
-/

namespace A328320.P14674639403691395858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006093 (5 * A328311 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328320.P14674639403691395858

namespace A328320

/-- `record[(n+1)/A006093(5*A328311(n+1)+1)]` -/
def P14674639403691395858.Spec : Prop :=
  ∀ n, P14674639403691395858.a n = (A328320 (n + 1) : ℚ)

end A328320

/-! ## A328320.P15327727337462858680

`record[n+1-A004917(27*A328311(n+1)+1)]`
-/

namespace A328320.P15327727337462858680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004917 (27 * A328311 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328320.P15327727337462858680

namespace A328320

/-- `record[n+1-A004917(27*A328311(n+1)+1)]` -/
def P15327727337462858680.Spec : Prop :=
  ∀ n, P15327727337462858680.a n = A328320 (n + 1)

end A328320

/-! ## A328320.P3148547751519908067

`filter[A283312(n+1), A342004(#)]`
-/

namespace A328320.P3148547751519908067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A328320.P3148547751519908067

namespace A328320

/-- `filter[A283312(n+1), A342004(#)]` -/
def P3148547751519908067.Spec : Prop :=
  ∀ n, P3148547751519908067.a n = A328320 (n + 1)

end A328320

/-! ## A328320.P10342228861433250767

`filter[A363597(n+1), A342004(#)]`
-/

namespace A328320.P10342228861433250767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A328320.P10342228861433250767

namespace A328320

/-- `filter[A363597(n+1), A342004(#)]` -/
def P10342228861433250767.Spec : Prop :=
  ∀ n, P10342228861433250767.a n = A328320 (n + 1)

end A328320

/-! ## A328320.P10979544720338421564

`comp[A328321(n+1)-1]+1`
-/

namespace A328320.P10979544720338421564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328321 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A328320.P10979544720338421564

namespace A328320

/-- `comp[A328321(n+1)-1]+1` -/
def P10979544720338421564.Spec : Prop :=
  ∀ n, (P10979544720338421564.a n : ℤ) = A328320 (n + 1)

end A328320

/-! ## A328320.P2752553313010623199

`filter[A246716(n+1), A342004(#)]`
-/

namespace A328320.P2752553313010623199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A328320.P2752553313010623199

namespace A328320

/-- `filter[A246716(n+1), A342004(#)]` -/
def P2752553313010623199.Spec : Prop :=
  ∀ n, P2752553313010623199.a n = A328320 (n + 1)

end A328320

/-! ## A328320.P801307615199237268

`filter[A253567(n+1), A342004(#)]`
-/

namespace A328320.P801307615199237268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A328320.P801307615199237268

namespace A328320

/-- `filter[A253567(n+1), A342004(#)]` -/
def P801307615199237268.Spec : Prop :=
  ∀ n, P801307615199237268.a n = A328320 (n + 1)

end A328320

/-! ## A328320.P7243170975409219959

`filter[A099424(n+1), A342004(#)]`
-/

namespace A328320.P7243170975409219959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A328320.P7243170975409219959

namespace A328320

/-- `filter[A099424(n+1), A342004(#)]` -/
def P7243170975409219959.Spec : Prop :=
  ∀ n, P7243170975409219959.a n = A328320 (n + 1)

end A328320

/-! ## A328320.P16633299756214428191

`filter[A132999(n+1), A342004(#)]`
-/

namespace A328320.P16633299756214428191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A328320.P16633299756214428191

namespace A328320

/-- `filter[A132999(n+1), A342004(#)]` -/
def P16633299756214428191.Spec : Prop :=
  ∀ n, P16633299756214428191.a n = A328320 (n + 1)

end A328320

/-! ## A328320.P3254452281926672741

`filter[A282028(n+1), A342004(#)]`
-/

namespace A328320.P3254452281926672741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A328320.P3254452281926672741

namespace A328320

/-- `filter[A282028(n+1), A342004(#)]` -/
def P3254452281926672741.Spec : Prop :=
  ∀ n, P3254452281926672741.a n = A328320 (n + 1)

end A328320

/-!
# A328321: Numbers n for which A328311(n) = 1 + A051903(A003415(n)) - A051903(n) is strictly positive.

The programs for A328321, the canonical program `A328321.P3480130997520919797` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328321 has offset 1).

The definition of A328321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328321.P1663092479351641381

`eq[0, A342004(n+1)]+1`
-/

namespace A328321.P1663092479351641381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328321.P1663092479351641381

namespace A328321

/-- `eq[0, A342004(n+1)]+1` -/
def P1663092479351641381.Spec : Prop :=
  ∀ n, (P1663092479351641381.a n : ℤ) = A328321 (n + 1)

end A328321

/-! ## A328321.P3480130997520919797

`lt[0, A328311(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A328321

/-- `lt[0, A328311(n+1)]+1` -/
def P3480130997520919797.Spec : Prop :=
  ∀ n, (P3480130997520919797.a n : ℤ) = A328321 (n + 1)

theorem P3480130997520919797.correct : P3480130997520919797.Spec := by
  intro n
  simp only [A328321, Nat.add_sub_cancel]

end A328321

/-! ## A328321.P4953337247474268168

`lt[2, 2*a(A328311(n))]` with `a(0)=1`
-/

namespace A328321.P4953337247474268168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (A328311 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328321.P4953337247474268168

namespace A328321

/-- `lt[2, 2*a(A328311(n))]` -/
def P4953337247474268168.Spec : Prop :=
  ∀ n, (P4953337247474268168.a n : ℤ) = A328321 (n + 1)

end A328321

/-! ## A328321.P14512822180038785845

`comp[A328320(n+1)-1]+1`
-/

namespace A328321.P14512822180038785845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328320 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A328321.P14512822180038785845

namespace A328321

/-- `comp[A328320(n+1)-1]+1` -/
def P14512822180038785845.Spec : Prop :=
  ∀ n, (P14512822180038785845.a n : ℤ) = A328321 (n + 1)

end A328321

/-! ## A328321.P3930668797845614775

`eq[1, A055491(a(A328311(n)))]` with `a(0)=2`
-/

namespace A328321.P3930668797845614775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A055491 (f2 (A328311 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328321.P3930668797845614775

namespace A328321

/-- `eq[1, A055491(a(A328311(n)))]` -/
def P3930668797845614775.Spec : Prop :=
  ∀ n, (P3930668797845614775.a n : ℤ) = A328321 (n + 1)

end A328321

/-! ## A328321.P5282140534404007415

`eq[1, A000045(a(A328311(n)))]` with `a(0)=3`
-/

namespace A328321.P5282140534404007415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A328311 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328321.P5282140534404007415

namespace A328321

/-- `eq[1, A000045(a(A328311(n)))]` -/
def P5282140534404007415.Spec : Prop :=
  ∀ n, (P5282140534404007415.a n : ℤ) = A328321 (n + 1)

end A328321

/-! ## A328321.P791518937754774182

`lt[A342004(A028310(n)), 1]`
-/

namespace A328321.P791518937754774182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328321.P791518937754774182

namespace A328321

/-- `lt[A342004(A028310(n)), 1]` -/
def P791518937754774182.Spec : Prop :=
  ∀ n, (P791518937754774182.a n : ℤ) = A328321 (n + 1)

end A328321

/-! ## A328321.P12062354636469737785

`A113484(eq[0, A342004(n+1)])`
-/

namespace A328321.P12062354636469737785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328321.P12062354636469737785

namespace A328321

/-- `A113484(eq[0, A342004(n+1)])` -/
def P12062354636469737785.Spec : Prop :=
  ∀ n, P12062354636469737785.a n = A328321 (n + 1)

end A328321

/-! ## A328321.P7416508341119761849

`eq[0, A342004(A233583(n+1))]`
-/

namespace A328321.P7416508341119761849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342004 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328321.P7416508341119761849

namespace A328321

/-- `eq[0, A342004(A233583(n+1))]` -/
def P7416508341119761849.Spec : Prop :=
  ∀ n, (P7416508341119761849.a n : ℤ) = A328321 (n + 1)

end A328321

/-!
# A328322: Maximal digit value used when A328316(n) is written in primorial base; maximal prime exponent in A328316(1+n).

The programs for A328322, there is no canonical definition to state claims against.
-/

/-! ## A328322.P12886104665664560800

`A212295(A266267(n+1))`
-/

namespace A328322.P12886104665664560800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212295 (A266267 (n + 1)).toNat

end

end A328322.P12886104665664560800

/-! ## A328322.P5206864111245274605

`A000196(lcm(A086246(n), A194086(n)))`
-/

namespace A328322.P5206864111245274605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lcm (A086246 n) (A194086 n))

end

end A328322.P5206864111245274605

/-!
# A328323: a(n) = gcd(A328316(n),A328316(1+n)).

The programs for A328323, there is no canonical definition to state claims against.
-/

/-! ## A328323.P9898949010073882160

`A324198(A328316(n))`
-/

namespace A328323.P9898949010073882160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A328316 n).toNat

end

end A328323.P9898949010073882160

/-! ## A328323.P13579734080969243206

`A348999(A066197(n+2))`
-/

namespace A328323.P13579734080969243206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348999 (A066197 (n + 2)).toNat

end

end A328323.P13579734080969243206

/-! ## A328323.P8671228446459817288

`A348999(Δ[∏[A008619(n)]])`
-/

namespace A328323.P8671228446459817288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348999 (f1 (n + 1) - f1 n).toNat

end

end A328323.P8671228446459817288

/-! ## A328323.P7655174464746399671

`A346095(A003192(n+1)+3)`
-/

namespace A328323.P7655174464746399671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346095 (A003192 (n + 1) + 3).toNat

end

end A328323.P7655174464746399671

/-! ## A328323.P11191940845111310570

`A248101(A261735(2*(n+1))^floor(n/2))`
-/

namespace A328323.P11191940845111310570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (SequenceMachineLib.roundAway ((A261735 (2 * (n + 1)) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A328323.P11191940845111310570

/-!
# A328325: Expansion of Product_{k>=0} 1/(1 - x^(k^k)).

The programs for A328325, there is no canonical definition to state claims against.
-/

/-! ## A328325.P14441582008735496898

`∑[A328301(n)]`
-/

namespace A328325.P14441582008735496898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328325.P14441582008735496898

/-! ## A328325.P3109435092610940705

`A328301(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A328325.P3109435092610940705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328301 n + a (A023443 n).toNat

end

end A328325.P3109435092610940705

/-! ## A328325.P13503120986348574611

`A328301(n%A064985(n))+a(n-1)` with `a(0)=1`
-/

namespace A328325.P13503120986348574611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328301 (Int.tmod (n : ℤ) (A064985 n)).toNat + a (n - 1)

end

end A328325.P13503120986348574611

/-! ## A328325.P15761810902137055779

`A328301(n)+a(n-1)%A117930(n)` with `a(0)=1`
-/

namespace A328325.P15761810902137055779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328301 n + Int.tmod (a (n - 1)) (A117930 n)

end

end A328325.P15761810902137055779

/-! ## A328325.P17705753596776185591

`a(n-1)+A328301(n)%A064986(n+1)` with `a(0)=1`
-/

namespace A328325.P17705753596776185591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A328301 n) (A064986 (n + 1))

end

end A328325.P17705753596776185591

/-! ## A328325.P17968013843726748705

`∑[∑[A279760(2*n)^A265513(n)]]`
-/

namespace A328325.P17968013843726748705
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (2 * n) : ℚ) ^ (A265513 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328325.P17968013843726748705

/-! ## A328325.P7507019769788578132

`∑[∑[A002828(A278929(2*n)²)]]`
-/

namespace A328325.P7507019769788578132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A278929 (2 * n) ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328325.P7507019769788578132

/-! ## A328325.P3099968523567672192

`∑[∑[A279760(A005843(n))^A000045(n)]]`
-/

namespace A328325.P3099968523567672192
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279760 (A005843 n).toNat : ℚ) ^ (A000045 n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328325.P3099968523567672192

/-!
# A328327: Numbers k such that both k and k+1 are Zumkeller numbers (A083207).

The programs for A328327, there is no canonical definition to state claims against.
-/

/-! ## A328327.P8217086107513131977

`record[A096399(A003434(2*(n+2))+A003434(n+1))]`
-/

namespace A328327.P8217086107513131977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096399 (A003434 (2 * (n + 2)) + A003434 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328327.P8217086107513131977

/-! ## A328327.P9203214758792960350

`A096399(floor(log2(A360620(2*n+3))))`
-/

namespace A328327.P9203214758792960350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096399 (Nat.log 2 (A360620 (2 * n + 3)).toNat)

end

end A328327.P9203214758792960350

/-! ## A328327.P5011181333422069737

`A096399(A091247(2*n)+A082217(n+2))`
-/

namespace A328327.P5011181333422069737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096399 (A091247 (2 * n) + A082217 (n + 2)).toNat

end

end A328327.P5011181333422069737

/-!
# A328331: a(n) is the least k such that the average number of unitary divisors of {1..k} is >= n.

The programs for A328331, there is no canonical definition to state claims against.
-/

/-! ## A328331.P14273313478397716206

`A122262(A024216(n))+n`
-/

namespace A328331.P14273313478397716206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122262 (A024216 n).toNat + (n : ℤ)

end

end A328331.P14273313478397716206

/-!
# A328332: Expansion of (1 + 4*x - 5*x^2 + 10*x^3) / ((1 - x) * (1 - 10*x^2)).

The programs for A328332, the canonical program `A328332.P7461648922196048751` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328332 has offset 0).

The definition of A328332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-5x^2+10x^3)/(1-x-10x^2+10x^3))` (program `A328332.P7461648922196048751`, by `A328332.P7461648922196048751.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A328332.P7461648922196048751

`ogf((1+4x-5x^2+10x^3)/(1-x-10x^2+10x^3))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328332

/-- `ogf((1+4x-5x^2+10x^3)/(1-x-10x^2+10x^3))` -/
def P7461648922196048751.Spec : Prop :=
  ∀ n, P7461648922196048751.a n = A328332 n

theorem P7461648922196048751.correct : P7461648922196048751.Spec := by
  intro n
  simp only [A328332]

end A328332

/-! ## A328332.P17135821944747422884

`a(n-1)+10*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=5, a(2)=10, a(3)=60`
-/

namespace A328332.P17135821944747422884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 10, 60] fun n a =>
  a (n - 1) + 10 * a (n - 2) - 10 * a (n - 3)

end

end A328332.P17135821944747422884

namespace A328332

/-- `a(n-1)+10*a(n-2)-10*a(n-3)` -/
def P17135821944747422884.Spec : Prop :=
  ∀ n, P17135821944747422884.a n = A328332 n

end A328332

/-! ## A328332.P18086318641655415860

`10*(a(n-2)+1)` with `a(0)=1, a(1)=5, a(2)=10`
-/

namespace A328332.P18086318641655415860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 10] fun n a =>
  10 * (a (n - 2) + 1)

end

end A328332.P18086318641655415860

namespace A328332

/-- `10*(a(n-2)+1)` -/
def P18086318641655415860.Spec : Prop :=
  ∀ n, (P18086318641655415860.a n : ℤ) = A328332 n

end A328332

/-! ## A328332.P2081287226946858491

`floor(5/4*A249572(n))`
-/

namespace A328332.P2081287226946858491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 4 * (A249572 n : ℚ)⌋

end

end A328332.P2081287226946858491

namespace A328332

/-- `floor(5/4*A249572(n))` -/
def P2081287226946858491.Spec : Prop :=
  ∀ n, P2081287226946858491.a n = A328332 n

end A328332

/-! ## A328332.P8927775082992773838

`C(2, n+2)+5*A094626(n)`
-/

namespace A328332.P8927775082992773838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + 5 * A094626 n

end

end A328332.P8927775082992773838

namespace A328332

/-- `C(2, n+2)+5*A094626(n)` -/
def P8927775082992773838.Spec : Prop :=
  ∀ n, P8927775082992773838.a n = A328332 n

end A328332

/-! ## A328332.P215452435035145566

`A249572(n)+A094626(n)`
-/

namespace A328332.P215452435035145566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + A094626 n

end

end A328332.P215452435035145566

namespace A328332

/-- `A249572(n)+A094626(n)` -/
def P215452435035145566.Spec : Prop :=
  ∀ n, P215452435035145566.a n = A328332 n

end A328332

/-! ## A328332.P12175051179116053485

`A000007(n)+5*A094626(n)`
-/

namespace A328332.P12175051179116053485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 5 * A094626 n

end

end A328332.P12175051179116053485

namespace A328332

/-- `A000007(n)+5*A094626(n)` -/
def P12175051179116053485.Spec : Prop :=
  ∀ n, P12175051179116053485.a n = A328332 n

end A328332

/-! ## A328332.P2184713358857745429

`A036987(2*n)+5*A094626(n)`
-/

namespace A328332.P2184713358857745429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n) + 5 * A094626 n

end

end A328332.P2184713358857745429

namespace A328332

/-- `A036987(2*n)+5*A094626(n)` -/
def P2184713358857745429.Spec : Prop :=
  ∀ n, P2184713358857745429.a n = A328332 n

end A328332

/-! ## A328332.P12308536764414351349

`or(5*A094626(n), A000007(ceil(n/2)))`
-/

namespace A328332.P12308536764414351349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (5 * A094626 n) (A000007 ⌈(n : ℚ) / 2⌉.toNat)

end

end A328332.P12308536764414351349

namespace A328332

/-- `or(5*A094626(n), A000007(ceil(n/2)))` -/
def P12308536764414351349.Spec : Prop :=
  ∀ n, P12308536764414351349.a n = A328332 n

end A328332

/-!
# A328333: Expansion of (1 + 4*x - 6*x^2) / ((1 - x) * (1 - 10*x^2)).

The programs for A328333, the canonical program `A328333.P10370767128941257601` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328333 has offset 0).

The definition of A328333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-6x^2)/(1-x-10x^2+10x^3))` (program `A328333.P10370767128941257601`, by `A328333.P10370767128941257601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A328333.P10370767128941257601

`ogf((1+4x-6x^2)/(1-x-10x^2+10x^3))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328333

/-- `ogf((1+4x-6x^2)/(1-x-10x^2+10x^3))` -/
def P10370767128941257601.Spec : Prop :=
  ∀ n, P10370767128941257601.a n = A328333 n

theorem P10370767128941257601.correct : P10370767128941257601.Spec := by
  intro n
  simp only [A328333]

end A328333

/-! ## A328333.P3642067267405984701

`∑[ogf((1+4x-6x^2)/(1-10x^2))]`
-/

namespace A328333.P3642067267405984701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -6] [1, 0, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328333.P3642067267405984701

namespace A328333

/-- `∑[ogf((1+4x-6x^2)/(1-10x^2))]` -/
def P3642067267405984701.Spec : Prop :=
  ∀ n, P3642067267405984701.a n = A328333 n

end A328333

/-! ## A328333.P12436862846997416441

`10*a(n-2)-1` with `a(0)=1, a(1)=5`
-/

namespace A328333.P12436862846997416441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  10 * a (n - 2) - 1

end

end A328333.P12436862846997416441

namespace A328333

/-- `10*a(n-2)-1` -/
def P12436862846997416441.Spec : Prop :=
  ∀ n, P12436862846997416441.a n = A328333 n

end A328333

/-! ## A328333.P15598671624009834467

`∑[∏[11-a(n-1)]]` with `a(0)=1, a(1)=4, a(2)=1`
-/

namespace A328333.P15598671624009834467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1] fun n f2 =>
  11 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328333.P15598671624009834467

namespace A328333

/-- `∑[∏[11-a(n-1)]]` -/
def P15598671624009834467.Spec : Prop :=
  ∀ n, P15598671624009834467.a n = A328333 n

end A328333

/-! ## A328333.P5473740635802430661

`or(1, A249572(n))`
-/

namespace A328333.P5473740635802430661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A249572 n)

end

end A328333.P5473740635802430661

namespace A328333

/-- `or(1, A249572(n))` -/
def P5473740635802430661.Spec : Prop :=
  ∀ n, P5473740635802430661.a n = A328333 n

end A328333

/-! ## A328333.P12211630054287659925

`4*A094626(n)+1`
-/

namespace A328333.P12211630054287659925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094626 n + 1

end

end A328333.P12211630054287659925

namespace A328333

/-- `4*A094626(n)+1` -/
def P12211630054287659925.Spec : Prop :=
  ∀ n, P12211630054287659925.a n = A328333 n

end A328333

/-! ## A328333.P2383666200156253049

`∑[∏[A286082(a(n-1))]]` with `a(0)=1, a(1)=4`
-/

namespace A328333.P2383666200156253049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A286082 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328333.P2383666200156253049

namespace A328333

/-- `∑[∏[A286082(a(n-1))]]` -/
def P2383666200156253049.Spec : Prop :=
  ∀ n, P2383666200156253049.a n = A328333 n

end A328333

/-! ## A328333.P5011446542757880330

`∑[A093141(A110654(n))]`
-/

namespace A328333.P5011446542757880330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093141 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328333.P5011446542757880330

namespace A328333

/-- `∑[A093141(A110654(n))]` -/
def P5011446542757880330.Spec : Prop :=
  ∀ n, P5011446542757880330.a n = A328333 n

end A328333

/-! ## A328333.P13709962185034400932

`A249572(n)+A057427(n)`
-/

namespace A328333.P13709962185034400932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + A057427 n

end

end A328333.P13709962185034400932

namespace A328333

/-- `A249572(n)+A057427(n)` -/
def P13709962185034400932.Spec : Prop :=
  ∀ n, P13709962185034400932.a n = A328333 n

end A328333

/-! ## A328333.P1352894447843350660

`A249572(n)-A057428(n)`
-/

namespace A328333.P1352894447843350660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n - A057428 n

end

end A328333.P1352894447843350660

namespace A328333

/-- `A249572(n)-A057428(n)` -/
def P1352894447843350660.Spec : Prop :=
  ∀ n, P1352894447843350660.a n = A328333 n

end A328333

/-! ## A328333.P9937844056845854394

`A249572(n)+A060576(n+1)`
-/

namespace A328333.P9937844056845854394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + A060576 (n + 1)

end

end A328333.P9937844056845854394

namespace A328333

/-- `A249572(n)+A060576(n+1)` -/
def P9937844056845854394.Spec : Prop :=
  ∀ n, P9937844056845854394.a n = A328333 n

end A328333

/-! ## A328333.P1603170885362793082

`A249572(n)+char[A222225(n+1)]`
-/

namespace A328333.P1603170885362793082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328333.P1603170885362793082

namespace A328333

/-- `A249572(n)+char[A222225(n+1)]` -/
def P1603170885362793082.Spec : Prop :=
  ∀ n, P1603170885362793082.a n = A328333 n

end A328333

/-! ## A328333.P14019552744113147726

`A249572(n)+char[A249571(n+1)]`
-/

namespace A328333.P14019552744113147726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328333.P14019552744113147726

namespace A328333

/-- `A249572(n)+char[A249571(n+1)]` -/
def P14019552744113147726.Spec : Prop :=
  ∀ n, P14019552744113147726.a n = A328333 n

end A328333

/-! ## A328333.P12888189787466067129

`A249572(n)-A081729(2*n+1)`
-/

namespace A328333.P12888189787466067129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n - A081729 (2 * n + 1)

end

end A328333.P12888189787466067129

namespace A328333

/-- `A249572(n)-A081729(2*n+1)` -/
def P12888189787466067129.Spec : Prop :=
  ∀ n, P12888189787466067129.a n = A328333 n

end A328333

/-! ## A328333.P4132060338615626108

`A249572(n)+A000040(n+1)%2`
-/

namespace A328333.P4132060338615626108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + Int.tmod (A000040 (n + 1)) 2

end

end A328333.P4132060338615626108

namespace A328333

/-- `A249572(n)+A000040(n+1)%2` -/
def P4132060338615626108.Spec : Prop :=
  ∀ n, P4132060338615626108.a n = A328333 n

end A328333

/-! ## A328333.P8025680092772753971

`or(4*A094626(n), A000034(2*n))`
-/

namespace A328333.P8025680092772753971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A094626 n) (A000034 (2 * n))

end

end A328333.P8025680092772753971

namespace A328333

/-- `or(4*A094626(n), A000034(2*n))` -/
def P8025680092772753971.Spec : Prop :=
  ∀ n, P8025680092772753971.a n = A328333 n

end A328333

/-! ## A328333.P13864836169036717469

`A087156(n+1)+A249572(n)-n`
-/

namespace A328333.P13864836169036717469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + (A249572 n - (n : ℤ))

end

end A328333.P13864836169036717469

namespace A328333

/-- `A087156(n+1)+A249572(n)-n` -/
def P13864836169036717469.Spec : Prop :=
  ∀ n, P13864836169036717469.a n = A328333 n

end A328333

/-! ## A328333.P384080235372379359

`or(4*A094626(n), A000035(or(1, 2*n)))`
-/

namespace A328333.P384080235372379359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A094626 n) (A000035 (Nat.lor 1 (2 * n)))

end

end A328333.P384080235372379359

namespace A328333

/-- `or(4*A094626(n), A000035(or(1, 2*n)))` -/
def P384080235372379359.Spec : Prop :=
  ∀ n, P384080235372379359.a n = A328333 n

end A328333

/-! ## A328333.P2945019341523803914

`A000005(A076397(n+1))+A249572(n)-1`
-/

namespace A328333.P2945019341523803914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076397 (n + 1)).toNat + (A249572 n - 1)

end

end A328333.P2945019341523803914

namespace A328333

/-- `A000005(A076397(n+1))+A249572(n)-1` -/
def P2945019341523803914.Spec : Prop :=
  ∀ n, P2945019341523803914.a n = A328333 n

end A328333

/-! ## A328333.P17615225752109034306

`A249572(n)+A008683(2*A000040(n+1))`
-/

namespace A328333.P17615225752109034306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249572 n + A008683 (2 * A000040 (n + 1)).toNat

end

end A328333.P17615225752109034306

namespace A328333

/-- `A249572(n)+A008683(2*A000040(n+1))` -/
def P17615225752109034306.Spec : Prop :=
  ∀ n, P17615225752109034306.a n = A328333 n

end A328333

/-!
# A328334: Forward difference of difference between 2^n and the next smaller power of 3.

The programs for A328334, the canonical program `A328334.P11458621354846274728` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328334 has offset 0).

The definition of A328334 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328334.P11458621354846274728

`A063005(n+1)-A063005(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A328334

/-- `A063005(n+1)-A063005(n)` -/
def P11458621354846274728.Spec : Prop :=
  ∀ n, P11458621354846274728.a n = A328334 n

theorem P11458621354846274728.correct : P11458621354846274728.Spec := by
  intro n
  simp only [A328334]

end A328334

/-! ## A328334.P13304714084956304885

`Δ[A063005(n)]`
-/

namespace A328334.P13304714084956304885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328334.P13304714084956304885

namespace A328334

/-- `Δ[A063005(n)]` -/
def P13304714084956304885.Spec : Prop :=
  ∀ n, P13304714084956304885.a n = A328334 n

theorem P13304714084956304885.correct : P13304714084956304885.Spec := by
  intro n
  simp only [A328334, Nat.add_sub_cancel, A328334.P13304714084956304885.f1, A328334.P13304714084956304885.a, A328334.P11458621354846274728.a, SequenceMachineLib.memo_apply]

end A328334

/-! ## A328334.P17010763509424126829

`Δ[A000079(n)-3^A136409(n)]`
-/

namespace A328334.P17010763509424126829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) - (3 : ℚ) ^ (A136409 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328334.P17010763509424126829

namespace A328334

/-- `Δ[A000079(n)-3^A136409(n)]` -/
def P17010763509424126829.Spec : Prop :=
  ∀ n, P17010763509424126829.a n = (A328334 n : ℚ)

end A328334

/-! ## A328334.P13049692500595772426

`Δ[A000225(n)-3^A136409(n)]`
-/

namespace A328334.P13049692500595772426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n : ℚ) - (3 : ℚ) ^ (A136409 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328334.P13049692500595772426

namespace A328334

/-- `Δ[A000225(n)-3^A136409(n)]` -/
def P13049692500595772426.Spec : Prop :=
  ∀ n, P13049692500595772426.a n = (A328334 n : ℚ)

end A328334

/-! ## A328334.P15482690712334350797

`Δ[A000079(n)-A000244(A136409(n))]`
-/

namespace A328334.P15482690712334350797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A000244 (A136409 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328334.P15482690712334350797

namespace A328334

/-- `Δ[A000079(n)-A000244(A136409(n))]` -/
def P15482690712334350797.Spec : Prop :=
  ∀ n, P15482690712334350797.a n = A328334 n

end A328334

/-!
# A328335: Numbers whose consecutive prime indices are relatively prime.

The programs for A328335, there is no canonical definition to state claims against.
-/

/-! ## A328335.P15162352406354690602

`eq[1, A290104(1+n)]+1`
-/

namespace A328335.P15162352406354690602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328335.P15162352406354690602

/-! ## A328335.P5532601126391685748

`record[n-a(A290104(n))]` with `a(0)=1, a(1)=0`
-/

namespace A328335.P5532601126391685748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - f1 (A290104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328335.P5532601126391685748

/-! ## A328335.P15541425134769206088

`comp[A316438(n+1)-1]+1`
-/

namespace A328335.P15541425134769206088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316438 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A328335.P15541425134769206088

/-! ## A328335.P3371086915612986726

`record[A327512(2*(n+1))/2]`
-/

namespace A328335.P3371086915612986726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327512 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328335.P3371086915612986726

/-! ## A328335.P15201386636889436569

`record[A327512(n+2+n)]/2`
-/

namespace A328335.P15201386636889436569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 2 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A328335.P15201386636889436569

/-! ## A328335.P4927763814861936250

`∪[A302569(n+1), ∑[n]+1]`
-/

namespace A328335.P4927763814861936250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A328335.P4927763814861936250

/-! ## A328335.P11478011160510349562

`A302569(gcd(n, lcm(n, a(n-1))))` with `a(0)=1`
-/

namespace A328335.P11478011160510349562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302569 (Nat.gcd n (Int.lcm (n : ℤ) (a (n - 1))))

end

end A328335.P11478011160510349562

/-! ## A328335.P2500079225420440006

`record[A327512(2*n+2)-(n+1)]`
-/

namespace A328335.P2500079225420440006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (2 * n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328335.P2500079225420440006

/-! ## A328335.P4718668228554768450

`record[gcd(n+1, A327512(4*(n+1)))]`
-/

namespace A328335.P4718668228554768450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327512 (4 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328335.P4718668228554768450

/-! ## A328335.P7688654116647096629

`record[A025480(A302569(n+1))]`
-/

namespace A328335.P7688654116647096629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A302569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328335.P7688654116647096629

/-!
# A328337: The number whose binary indices are the nontrivial divisors of n (greater than 1 and less than n).

The programs for A328337, the canonical program `A328337.P9415464741654577557` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328337 has offset 1).

The definition of A328337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328337.P9415464741654577557

`and(-2, A247146(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328337

/-- `and(-2, A247146(n+1))` -/
def P9415464741654577557.Spec : Prop :=
  ∀ n, P9415464741654577557.a n = A328337 (n + 1)

theorem P9415464741654577557.correct : P9415464741654577557.Spec := by
  intro n
  simp only [A328337, Nat.add_sub_cancel]

end A328337

/-! ## A328337.P8732426896778366308

`A247146(n+1)+A057428(n)`
-/

namespace A328337.P8732426896778366308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247146 (n + 1) + A057428 n

end

end A328337.P8732426896778366308

namespace A328337

/-- `A247146(n+1)+A057428(n)` -/
def P8732426896778366308.Spec : Prop :=
  ∀ n, P8732426896778366308.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P506664621373764437

`A247146(n+1)-A057427(n)`
-/

namespace A328337.P506664621373764437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247146 (n + 1) - A057427 n

end

end A328337.P506664621373764437

namespace A328337

/-- `A247146(n+1)-A057427(n)` -/
def P506664621373764437.Spec : Prop :=
  ∀ n, P506664621373764437.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P1462783055686903857

`A137323(n+1)+A070824(n+1)`
-/

namespace A328337.P1462783055686903857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137323 (n + 1) + A070824 (n + 1)

end

end A328337.P1462783055686903857

namespace A328337

/-- `A137323(n+1)+A070824(n+1)` -/
def P1462783055686903857.Spec : Prop :=
  ∀ n, P1462783055686903857.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P10198885731224794649

`A247146(n+1)-A247146(A020639(n+1))`
-/

namespace A328337.P10198885731224794649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247146 (n + 1) - A247146 (A020639 (n + 1)).toNat

end

end A328337.P10198885731224794649

namespace A328337

/-- `A247146(n+1)-A247146(A020639(n+1))` -/
def P10198885731224794649.Spec : Prop :=
  ∀ n, P10198885731224794649.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P16254560104577140689

`(∑{d}[n+1, 2^(#-1)]-1)%(2^n)`
-/

namespace A328337.P16254560104577140689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) - 1)) (2 ^ n : ℤ)

end

end A328337.P16254560104577140689

namespace A328337

/-- `(∑{d}[n+1, 2^(#-1)]-1)%(2^n)` -/
def P16254560104577140689.Spec : Prop :=
  ∀ n, P16254560104577140689.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P9905209438401801886

`∑{d}[n+1, 2^(#-1)]-or(1, 2^n)`
-/

namespace A328337.P9905209438401801886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) - (Nat.lor 1 (2 ^ n) : ℚ)

end

end A328337.P9905209438401801886

namespace A328337

/-- `∑{d}[n+1, 2^(#-1)]-or(1, 2^n)` -/
def P9905209438401801886.Spec : Prop :=
  ∀ n, P9905209438401801886.a n = (A328337 (n + 1) : ℚ)

end A328337

/-! ## A328337.P17928503909020096777

`and(∑{d}[n+1, 2^(#-1)]-2^n, -2)`
-/

namespace A328337.P17928503909020096777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) - (2 ^ n : ℚ))) (-2)

end

end A328337.P17928503909020096777

namespace A328337

/-- `and(∑{d}[n+1, 2^(#-1)]-2^n, -2)` -/
def P17928503909020096777.Spec : Prop :=
  ∀ n, P17928503909020096777.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P6778554257732244542

`∑{d}[n+1, 2^(#-1)]-(floor(atan(n+1))+2^n)`
-/

namespace A328337.P6778554257732244542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) - (⌊Real.arctan (n + 1 : ℝ)⌋ + (2 ^ n : ℤ) : ℚ)

end

end A328337.P6778554257732244542

namespace A328337

/-- `∑{d}[n+1, 2^(#-1)]-(floor(atan(n+1))+2^n)` -/
def P6778554257732244542.Spec : Prop :=
  ∀ n, P6778554257732244542.a n = (A328337 (n + 1) : ℚ)

end A328337

/-! ## A328337.P4280118478940443173

`∑{d}[n+1, 2^(#-1)]-(ceil(cosh(sin(n)))+2^n-1)`
-/

namespace A328337.P4280118478940443173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) - (⌈Real.cosh (Real.sin (n : ℝ))⌉ + ((2 ^ n : ℤ) - 1) : ℚ)

end

end A328337.P4280118478940443173

namespace A328337

/-- `∑{d}[n+1, 2^(#-1)]-(ceil(cosh(sin(n)))+2^n-1)` -/
def P4280118478940443173.Spec : Prop :=
  ∀ n, P4280118478940443173.a n = (A328337 (n + 1) : ℚ)

end A328337

/-! ## A328337.P5677195182136854476

`C(2, n+2)-1+∑{d}[n+1, 2^(#-1)]-2^n`
-/

namespace A328337.P5677195182136854476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 (n + 2) : ℤ) - 1 : ℚ) + (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) - (2 ^ n : ℚ))

end

end A328337.P5677195182136854476

namespace A328337

/-- `C(2, n+2)-1+∑{d}[n+1, 2^(#-1)]-2^n` -/
def P5677195182136854476.Spec : Prop :=
  ∀ n, P5677195182136854476.a n = (A328337 (n + 1) : ℚ)

end A328337

/-! ## A328337.P14688422419765335095

`∑{d}[n+1, 2^(#-1)]-(floor(2^(n-1))+floor(2^(n-1))+1)`
-/

namespace A328337.P14688422419765335095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) - (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1) : ℚ)

end

end A328337.P14688422419765335095

namespace A328337

/-- `∑{d}[n+1, 2^(#-1)]-(floor(2^(n-1))+floor(2^(n-1))+1)` -/
def P14688422419765335095.Spec : Prop :=
  ∀ n, P14688422419765335095.a n = (A328337 (n + 1) : ℚ)

end A328337

/-! ## A328337.P4913045971234148755

`(A034729(n+1)-1)%(2^n)`
-/

namespace A328337.P4913045971234148755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034729 (n + 1) - 1) (2 ^ n : ℤ)

end

end A328337.P4913045971234148755

namespace A328337

/-- `(A034729(n+1)-1)%(2^n)` -/
def P4913045971234148755.Spec : Prop :=
  ∀ n, P4913045971234148755.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P6015959346955922772

`A034729(n+1)-A083318(n)`
-/

namespace A328337.P6015959346955922772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034729 (n + 1) - A083318 n

end

end A328337.P6015959346955922772

namespace A328337

/-- `A034729(n+1)-A083318(n)` -/
def P6015959346955922772.Spec : Prop :=
  ∀ n, P6015959346955922772.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P243436523745401330

`and(A034729(n+1), A056453(n+1))`
-/

namespace A328337.P243436523745401330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1)) (A056453 (n + 1))

end

end A328337.P243436523745401330

namespace A328337

/-- `and(A034729(n+1), A056453(n+1))` -/
def P243436523745401330.Spec : Prop :=
  ∀ n, P243436523745401330.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P9565339738902344235

`and(A034729(n+1)-1, A000225(n))`
-/

namespace A328337.P9565339738902344235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1) - 1) (A000225 n)

end

end A328337.P9565339738902344235

namespace A328337

/-- `and(A034729(n+1)-1, A000225(n))` -/
def P9565339738902344235.Spec : Prop :=
  ∀ n, P9565339738902344235.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P4750656466538031498

`and(A034729(n+1)-1, A116362(n))`
-/

namespace A328337.P4750656466538031498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1) - 1) (A116362 n)

end

end A328337.P4750656466538031498

namespace A328337

/-- `and(A034729(n+1)-1, A116362(n))` -/
def P4750656466538031498.Spec : Prop :=
  ∀ n, P4750656466538031498.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P7192779128922585458

`and(A034729(n+1)-1, A140252(n))`
-/

namespace A328337.P7192779128922585458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034729 (n + 1) - 1) (A140252 n)

end

end A328337.P7192779128922585458

namespace A328337

/-- `and(A034729(n+1)-1, A140252(n))` -/
def P7192779128922585458.Spec : Prop :=
  ∀ n, P7192779128922585458.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P3738271732615038160

`and(A247146(n+1), A283353(n))`
-/

namespace A328337.P3738271732615038160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A247146 (n + 1)) (A283353 n)

end

end A328337.P3738271732615038160

namespace A328337

/-- `and(A247146(n+1), A283353(n))` -/
def P3738271732615038160.Spec : Prop :=
  ∀ n, P3738271732615038160.a n = A328337 (n + 1)

end A328337

/-! ## A328337.P11825992987685250329

`and(A247146(n+1), A369491(n))`
-/

namespace A328337.P11825992987685250329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A247146 (n + 1)) (A369491 n)

end

end A328337.P11825992987685250329

namespace A328337

/-- `and(A247146(n+1), A369491(n))` -/
def P11825992987685250329.Spec : Prop :=
  ∀ n, P11825992987685250329.a n = A328337 (n + 1)

end A328337

/-!
# A328338: Numbers whose third-largest divisor is prime.

The programs for A328338, there is no canonical definition to state claims against.
-/

/-! ## A328338.P13761699519631241981

`eq[A001222(n+1)-2, A345064(n+1)]+1`
-/

namespace A328338.P13761699519631241981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328338.P13761699519631241981

/-! ## A328338.P6803307611397503671

`eq[A307445(n+1), A333806(n+1)]+1`
-/

namespace A328338.P6803307611397503671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328338.P6803307611397503671

/-! ## A328338.P7269421397945229944

`A020725(eq[A307445(n+1), A333806(n+1)])`
-/

namespace A328338.P7269421397945229944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328338.P7269421397945229944

/-! ## A328338.P9897243013788618473

`eq[A008458(A321379(n+1)), A333806(n+1)]+1`
-/

namespace A328338.P9897243013788618473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A321379 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328338.P9897243013788618473

/-! ## A328338.P16569612401156821779

`eq[A081759(A321379(n+1)+1), A333806(n+1)]+1`
-/

namespace A328338.P16569612401156821779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (A321379 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328338.P16569612401156821779

/-! ## A328338.P12113239853500609647

`eq[2, A136165(n+1)*A136167(n+1)]+1`
-/

namespace A328338.P12113239853500609647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136165 (n + 1) * A136167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328338.P12113239853500609647

/-! ## A328338.P15077030206161334055

`∪[A030513(n+1), A355445(n+1)]`
-/

namespace A328338.P15077030206161334055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328338.P15077030206161334055

/-!
# A328340: Number of geometrically distinct symmetric open knight's tours on a 4 X (2n-1) chessboard.

The programs for A328340, there is no canonical definition to state claims against.
-/

/-! ## A328340.P16461078603873097257

`A372657(A001414(n+1)^A000930(n))`
-/

namespace A328340.P16461078603873097257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372657 (SequenceMachineLib.roundAway ((A001414 (n + 1) : ℚ) ^ (A000930 n : ℤ))).toNat

end

end A328340.P16461078603873097257

/-!
# A328341: Number of geometrically distinct open knight's tours on a 4 X n chessboard.

The programs for A328341, there is no canonical definition to state claims against.
-/

/-! ## A328341.P7817388601079480631

`A341621(n+1)+A278818(A070030(n+1))`
-/

namespace A328341.P7817388601079480631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1) + A278818 (A070030 (n + 1)).toNat

end

end A328341.P7817388601079480631

/-! ## A328341.P10854072731755038005

`A059253(lcm(n, ∑{#}[n, C(n, #)^3*#!*(-n)^(n-#)]))`
-/

namespace A328341.P10854072731755038005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k ^ 3 * Nat.factorial k : ℚ) * (-(n : ℤ) : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ))))

end

end A328341.P10854072731755038005

/-!
# A328342: a(0) = 0; for n > 1, if a(n-1) has appeared three or more times then a(n) = total number of terms between the last and second-last appearance of a(n-1), minus the total number of terms between the second-last and third-last appearance of a(n-1). If a(n-1) has appeared two times, a(n) = total number of terms between the last and second-last appearance of a(n-1). If a(n-1) has appeared once, a(n) = 0.

The programs for A328342, there is no canonical definition to state claims against.
-/

/-! ## A328342.P7082089841933967132

`A345415(A002410(2*n+1)-A072233(n))`
-/

namespace A328342.P7082089841933967132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345415 (A002410 (2 * n + 1) - A072233 n).toNat

end

end A328342.P7082089841933967132

/-! ## A328342.P11014101105263167517

`A340547(A055647(n+1))-A216783(A059268(n))`
-/

namespace A328342.P11014101105263167517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340547 (A055647 (n + 1)).toNat - A216783 (A059268 n).toNat

end

end A328342.P11014101105263167517

/-! ## A328342.P10304206401075646154

`A220659(n)-A269249(A006720(n))`
-/

namespace A328342.P10304206401075646154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220659 n - A269249 (A006720 n).toNat

end

end A328342.P10304206401075646154

/-! ## A328342.P9415564096109165045

`A053735(n)-A379679(A030457(n+1))`
-/

namespace A328342.P9415564096109165045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A379679 (A030457 (n + 1)).toNat

end

end A328342.P9415564096109165045

/-! ## A328342.P2897496891025759507

`A128257(A367645(n+1)^A097805(n))`
-/

namespace A328342.P2897496891025759507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128257 (SequenceMachineLib.roundAway ((A367645 (n + 1) : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A328342.P2897496891025759507

/-!
# A328345: Number of n-step walks on cubic lattice starting at (0,0,0), ending at (floor(n/3), floor((n+1)/3), floor((n+2)/3)) and using steps (0,0,1), (0,1,0), (1,0,0), (-1,1,1), (1,-1,1), and (1,1,-1).

The programs for A328345, there is no canonical definition to state claims against.
-/

/-! ## A328345.P59956543719133010

`A131937(A000664(n))`
-/

namespace A328345.P59956543719133010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131937 (A000664 n).toNat

end

end A328345.P59956543719133010

/-! ## A328345.P3198151278142402015

`A162223(A026375(n))`
-/

namespace A328345.P3198151278142402015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162223 (A026375 n).toNat

end

end A328345.P3198151278142402015

/-!
# A328346: Triangle read by rows: T(n,k) is the coefficient of x^(n - k*(k+1)) in Product_{j=1..k} 1/(1 - x^j) for n >= 0, 0 <= k <= A259361(n).

The programs for A328346, there is no canonical definition to state claims against.
-/

/-! ## A328346.P9962669472007546613

`val(Δ[A332216(n+5)], A029747(n+4))`
-/

namespace A328346.P9962669472007546613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332216 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat (A029747 (n + 4)).toNat

end

end A328346.P9962669472007546613

/-! ## A328346.P14462892237286876005

`A275591(a(A022337(n+1)))%A167966(5*n+4)` with `a(0)=1`
-/

namespace A328346.P14462892237286876005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A275591 (a (A022337 (n + 1)).toNat).toNat) (A167966 (5 * n + 4))

end

end A328346.P14462892237286876005

/-! ## A328346.P11854429613835715754

`and(A184117(A070550(n)), A362043(n))`
-/

namespace A328346.P11854429613835715754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184117 (A070550 n).toNat) (A362043 n)

end

end A328346.P11854429613835715754

/-! ## A328346.P16182520537658575997

`A086074(A112798(2*(n+1))+A002182(n+1))`
-/

namespace A328346.P16182520537658575997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086074 (A112798 (2 * (n + 1)) + A002182 (n + 1)).toNat

end

end A328346.P16182520537658575997

/-! ## A328346.P17918860927773546220

`A175253(A039656(n))`
-/

namespace A328346.P17918860927773546220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (A039656 n).toNat

end

end A328346.P17918860927773546220

/-!
# A328348: Let S be any integer in the range 3 <= S <= 17. Sequence has the property that a(n)*S is the sum of all positive integers whose decimal expansion has <= n digits and contains at most two distinct nonzero digits p and q such that p+q=S.

The programs for A328348, the canonical program `A328348.P7093242292917427170` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328348 has offset 0).

The definition of A328348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328348.P15140801470419404413

`ogf(x/(1-23x+62x^2-40x^3))`
-/

namespace A328348.P15140801470419404413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -23, 62, -40] n

end

end A328348.P15140801470419404413

namespace A328348

/-- `ogf(x/(1-23x+62x^2-40x^3))` -/
def P15140801470419404413.Spec : Prop :=
  ∀ n, P15140801470419404413.a n = A328348 n

end A328348

/-! ## A328348.P7093242292917427170

`21*a(n-1)-20*a(n-2)+2^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328348

/-- `21*a(n-1)-20*a(n-2)+2^(n-1)` -/
def P7093242292917427170.Spec : Prop :=
  ∀ n, P7093242292917427170.a n = (A328348 n : ℚ)

end A328348

/-! ## A328348.P2022424054027845066

`(10*20^n-19*2^n+9)/171`
-/

namespace A328348.P2022424054027845066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 20 ^ n : ℤ) - (19 * 2 ^ n : ℤ) + 9 : ℚ) / 171

end

end A328348.P2022424054027845066

namespace A328348

/-- `(10*20^n-19*2^n+9)/171` -/
def P2022424054027845066.Spec : Prop :=
  ∀ n, P2022424054027845066.a n = (A328348 n : ℚ)

end A328348

/-! ## A328348.P13563347621714376110

`2^n+20*a(n-1)-1` with `a(0)=0`
-/

namespace A328348.P13563347621714376110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ n : ℤ) + (20 * a (n - 1) - 1)

end

end A328348.P13563347621714376110

namespace A328348

/-- `2^n+20*a(n-1)-1` -/
def P13563347621714376110.Spec : Prop :=
  ∀ n, P13563347621714376110.a n = A328348 n

end A328348

/-! ## A328348.P1659065270186806591

`∑[A002275(n)*2^(n-1)]`
-/

namespace A328348.P1659065270186806591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328348.P1659065270186806591

namespace A328348

/-- `∑[A002275(n)*2^(n-1)]` -/
def P1659065270186806591.Spec : Prop :=
  ∀ n, P1659065270186806591.a n = (A328348 n : ℚ)

end A328348

/-! ## A328348.P17286893070957118465

`20*a(n-1)+A000295(n)+n` with `a(0)=0`
-/

namespace A328348.P17286893070957118465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  20 * a (n - 1) + (A000295 n + (n : ℤ))

end

end A328348.P17286893070957118465

namespace A328348

/-- `20*a(n-1)+A000295(n)+n` -/
def P17286893070957118465.Spec : Prop :=
  ∀ n, P17286893070957118465.a n = A328348 n

end A328348

/-! ## A328348.P486713653297610178

`a(n-1)+A064108(n)+a(n-1)` with `a(0)=0`
-/

namespace A328348.P486713653297610178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A064108 n + a (n - 1))

end

end A328348.P486713653297610178

namespace A328348

/-- `a(n-1)+A064108(n)+a(n-1)` -/
def P486713653297610178.Spec : Prop :=
  ∀ n, P486713653297610178.a n = A328348 n

end A328348

/-!
# A328349: Number of binary search trees (BST) on n nodes which have the same height as the optimal BST.

The programs for A328349, there is no canonical definition to state claims against.
-/

/-! ## A328349.P3020120533495959970

`A202019(∑[∏{p}[2*n, n*val(#², 2)]]-n)`
-/

namespace A328349.P3020120533495959970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202019 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A328349.P3020120533495959970

/-! ## A328349.P14354667801300747268

`A202019(A010078(n+1))`
-/

namespace A328349.P14354667801300747268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202019 (A010078 (n + 1)).toNat

end

end A328349.P14354667801300747268

/-! ## A328349.P7940340301932738911

`A202019(A035327(2*n)+n)`
-/

namespace A328349.P7940340301932738911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202019 (A035327 (2 * n) + (n : ℤ)).toNat

end

end A328349.P7940340301932738911

/-! ## A328349.P681294590227383930

`A073429(A029837(n+1)+∑[n])`
-/

namespace A328349.P681294590227383930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073429 (A029837 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A328349.P681294590227383930

/-! ## A328349.P8163061515039353628

`A335920(lt[A335920(3*n), A335890(n+2)])`
-/

namespace A328349.P8163061515039353628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335920 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335890 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335920 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A328349.P8163061515039353628

/-!
# A328350: Let S be any integer in the range 6 <= S <= 24. Sequence has the property that a(n)*S is the sum of all positive integers whose decimal expansion has <= n digits and contains at most three distinct nonzero digits d1, d2, d3 such that d1+d2+d3 = S.

The programs for A328350, the canonical program `A328350.P1594265628952100767` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328350 has offset 0).

The definition of A328350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328350.P16562255005596161400

`ogf(x/(1-34x+123x^2-90x^3))`
-/

namespace A328350.P16562255005596161400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -34, 123, -90] n

end

end A328350.P16562255005596161400

namespace A328350

/-- `ogf(x/(1-34x+123x^2-90x^3))` -/
def P16562255005596161400.Spec : Prop :=
  ∀ n, P16562255005596161400.a n = A328350 n

end A328350

/-! ## A328350.P1594265628952100767

`34*a(n-1)-123*a(n-2)+90*a(n-3)` with `a(0)=0, a(1)=1, a(2)=34`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328350

/-- `34*a(n-1)-123*a(n-2)+90*a(n-3)` -/
def P1594265628952100767.Spec : Prop :=
  ∀ n, P1594265628952100767.a n = A328350 n

theorem P1594265628952100767.correct : P1594265628952100767.Spec := by
  intro n
  simp only [A328350]

end A328350

/-! ## A328350.P16700332024708966634

`(20*30^n-29*3^n+9)/522`
-/

namespace A328350.P16700332024708966634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((20 * 30 ^ n : ℤ) - (29 * 3 ^ n : ℤ) + 9 : ℚ) / 522

end

end A328350.P16700332024708966634

namespace A328350

/-- `(20*30^n-29*3^n+9)/522` -/
def P16700332024708966634.Spec : Prop :=
  ∀ n, P16700332024708966634.a n = (A328350 n : ℚ)

theorem P16700332024708966634.correct : P16700332024708966634.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A328350, Nat.add_sub_cancel, A328350.P16700332024708966634.a, A328350.P1594265628952100767.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A328350, Nat.add_sub_cancel, A328350.P16700332024708966634.a, A328350.P1594265628952100767.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A328350

/-! ## A328350.P13385484937309911266

`∑[A002275(n)*3^(n-1)]`
-/

namespace A328350.P13385484937309911266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328350.P13385484937309911266

namespace A328350

/-- `∑[A002275(n)*3^(n-1)]` -/
def P13385484937309911266.Spec : Prop :=
  ∀ n, P13385484937309911266.a n = (A328350 n : ℚ)

end A328350

/-! ## A328350.P666771008002943144

`A218733(n)+3*a(n-1)` with `a(0)=0`
-/

namespace A328350.P666771008002943144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A218733 n + 3 * a (n - 1)

end

end A328350.P666771008002943144

namespace A328350

/-- `A218733(n)+3*a(n-1)` -/
def P666771008002943144.Spec : Prop :=
  ∀ n, P666771008002943144.a n = A328350 n

end A328350

/-! ## A328350.P1811170112475354201

`a(n-1)+A002275(n)*A133494(n)` with `a(0)=0`
-/

namespace A328350.P1811170112475354201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A002275 n * A133494 n

end

end A328350.P1811170112475354201

namespace A328350

/-- `a(n-1)+A002275(n)*A133494(n)` -/
def P1811170112475354201.Spec : Prop :=
  ∀ n, P1811170112475354201.a n = A328350 n

end A328350

/-! ## A328350.P9617676028662184774

`∑[A002275(n)*A133494(n)]*A178334(n)`
-/

namespace A328350.P9617676028662184774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A178334 n

end

end A328350.P9617676028662184774

namespace A328350

/-- `∑[A002275(n)*A133494(n)]*A178334(n)` -/
def P9617676028662184774.Spec : Prop :=
  ∀ n, P9617676028662184774.a n = A328350 n

end A328350

/-! ## A328350.P1350525790281007227

`∑[A002275(n)*A133494(n)]%A164036(n)`
-/

namespace A328350.P1350525790281007227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A164036 n)

end

end A328350.P1350525790281007227

namespace A328350

/-- `∑[A002275(n)*A133494(n)]%A164036(n)` -/
def P1350525790281007227.Spec : Prop :=
  ∀ n, P1350525790281007227.a n = A328350 n

end A328350

/-!
# A328351: Let S be any integer in the range 10 <= S <= 30. Sequence has the property that a(n)*S is the sum of all positive integers whose decimal expansion has <= n digits and contains at most four distinct nonzero digits d1, d2, d3 and d4 such that d1+d2+d3+d4=S.

The programs for A328351, the canonical program `A328351.P67496876871618052` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328351 has offset 0).

The definition of A328351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328351.P67496876871618052

`41*a(n-1)-40*a(n-2)+4^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328351

/-- `41*a(n-1)-40*a(n-2)+4^(n-1)` -/
def P67496876871618052.Spec : Prop :=
  ∀ n, P67496876871618052.a n = (A328351 n : ℚ)

end A328351

/-! ## A328351.P8554739774148236537

`∑[A002275(n)*4^(n-1)]`
-/

namespace A328351.P8554739774148236537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 n : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328351.P8554739774148236537

namespace A328351

/-- `∑[A002275(n)*4^(n-1)]` -/
def P8554739774148236537.Spec : Prop :=
  ∀ n, P8554739774148236537.a n = (A328351 n : ℚ)

end A328351

/-! ## A328351.P4188754225381326163

`∑[A002278(n)*2^(n-2)*2^(n-2)]`
-/

namespace A328351.P4188754225381326163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002278 n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328351.P4188754225381326163

namespace A328351

/-- `∑[A002278(n)*2^(n-2)*2^(n-2)]` -/
def P4188754225381326163.Spec : Prop :=
  ∀ n, P4188754225381326163.a n = (A328351 n : ℚ)

end A328351

/-! ## A328351.P16603041728081106961

`∑[∑[round(10^(n-1))]/2*A155543(n)]/2`
-/

namespace A328351.P16603041728081106961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2 * (A155543 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A328351.P16603041728081106961

namespace A328351

/-- `∑[∑[round(10^(n-1))]/2*A155543(n)]/2` -/
def P16603041728081106961.Spec : Prop :=
  ∀ n, P16603041728081106961.a n = (A328351 n : ℚ)

end A328351

/-! ## A328351.P18172320647682897369

`∑[A011782(n)²*A002275(n)]`
-/

namespace A328351.P18172320647682897369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328351.P18172320647682897369

namespace A328351

/-- `∑[A011782(n)²*A002275(n)]` -/
def P18172320647682897369.Spec : Prop :=
  ∀ n, P18172320647682897369.a n = A328351 n

end A328351

/-! ## A328351.P7198422479919998164

`∑[A002275(n)*A011782(n)*A131577(n)]`
-/

namespace A328351.P7198422479919998164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * A011782 n * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328351.P7198422479919998164

namespace A328351

/-- `∑[A002275(n)*A011782(n)*A131577(n)]` -/
def P7198422479919998164.Spec : Prop :=
  ∀ n, P7198422479919998164.a n = A328351 n

end A328351

/-!
# A328352: Similar to A328350, but for 5 digits rather then 3.

The programs for A328352, the canonical program `A328352.P14235162302377623170` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328352 has offset 0).

The definition of A328352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328352.P14235162302377623170

`51*a(n-1)-50*a(n-2)+5^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328352

/-- `51*a(n-1)-50*a(n-2)+5^(n-1)` -/
def P14235162302377623170.Spec : Prop :=
  ∀ n, P14235162302377623170.a n = (A328352 n : ℚ)

end A328352

/-! ## A328352.P7113832386957455954

`∑[5^(n-1)*floor(10^n/9)]`
-/

namespace A328352.P7113832386957455954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (⌊(10 ^ n : ℚ) / 9⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328352.P7113832386957455954

namespace A328352

/-- `∑[5^(n-1)*floor(10^n/9)]` -/
def P7113832386957455954.Spec : Prop :=
  ∀ n, P7113832386957455954.a n = (A328352 n : ℚ)

end A328352

/-! ## A328352.P1512311639599501021

`∑[5^n*A002275(n)]/5`
-/

namespace A328352.P1512311639599501021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A002275 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A328352.P1512311639599501021

namespace A328352

/-- `∑[5^n*A002275(n)]/5` -/
def P1512311639599501021.Spec : Prop :=
  ∀ n, P1512311639599501021.a n = (A328352 n : ℚ)

end A328352

/-!
# A328353: a(n)*S is the sum of all positive integers whose decimal expansion is up to n digits and uses six distinct nonzero digits d1,d2,d3,d4,d5,d6 such that d1+d2+d3+d4+d5+d6=S.

The programs for A328353, the canonical program `A328353.P8385399538698148040` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328353 has offset 0).

The definition of A328353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328353.P8385399538698148040

`61*a(n-1)-60*a(n-2)+6^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328353

/-- `61*a(n-1)-60*a(n-2)+6^(n-1)` -/
def P8385399538698148040.Spec : Prop :=
  ∀ n, P8385399538698148040.a n = (A328353 n : ℚ)

end A328353

/-! ## A328353.P15359445390396064200

`∑[6^(n-1)*floor(10^n/9)]`
-/

namespace A328353.P15359445390396064200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (⌊(10 ^ n : ℚ) / 9⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328353.P15359445390396064200

namespace A328353

/-- `∑[6^(n-1)*floor(10^n/9)]` -/
def P15359445390396064200.Spec : Prop :=
  ∀ n, P15359445390396064200.a n = (A328353 n : ℚ)

end A328353

/-! ## A328353.P10770372750109061285

`floor(∑[6^(n-1)*A002275(n)])`
-/

namespace A328353.P10770372750109061285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002275 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A328353.P10770372750109061285

namespace A328353

/-- `floor(∑[6^(n-1)*A002275(n)])` -/
def P10770372750109061285.Spec : Prop :=
  ∀ n, P10770372750109061285.a n = A328353 n

end A328353

/-!
# A328354: a(n)*S is the sum of all positive integers whose decimal expansion is up to n digits and uses seven distinct nonzero digits d1,d2,d3,d4,d5,d6,d7 such that d1+d2+d3+d4+d5+d6+d7=S.

The programs for A328354, the canonical program `A328354.P7783518461613477582` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328354 has offset 0).

The definition of A328354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328354.P7783518461613477582

`71*a(n-1)-70*a(n-2)+7^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328354

/-- `71*a(n-1)-70*a(n-2)+7^(n-1)` -/
def P7783518461613477582.Spec : Prop :=
  ∀ n, P7783518461613477582.a n = (A328354 n : ℚ)

end A328354

/-! ## A328354.P16469980194293858632

`∑[7^(n-1)*A002275(n)]`
-/

namespace A328354.P16469980194293858632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002275 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328354.P16469980194293858632

namespace A328354

/-- `∑[7^(n-1)*A002275(n)]` -/
def P16469980194293858632.Spec : Prop :=
  ∀ n, P16469980194293858632.a n = (A328354 n : ℚ)

end A328354

/-! ## A328354.P17462771039907003479

`∑[(A047855(n)-1)*7^(n-1)]`
-/

namespace A328354.P17462771039907003479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047855 n - 1 : ℚ) * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328354.P17462771039907003479

namespace A328354

/-- `∑[(A047855(n)-1)*7^(n-1)]` -/
def P17462771039907003479.Spec : Prop :=
  ∀ n, P17462771039907003479.a n = (A328354 n : ℚ)

end A328354

/-! ## A328354.P8548981264950082201

`∑[(A173735(n)-3)*7^(n-1)]`
-/

namespace A328354.P8548981264950082201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173735 n - 3 : ℚ) * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328354.P8548981264950082201

namespace A328354

/-- `∑[(A173735(n)-3)*7^(n-1)]` -/
def P8548981264950082201.Spec : Prop :=
  ∀ n, P8548981264950082201.a n = (A328354 n : ℚ)

end A328354

/-! ## A328354.P17663381793886831769

`∑[A002277(n)/3*7^(n-1)]`
-/

namespace A328354.P17663381793886831769
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002277 n : ℚ) / 3 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328354.P17663381793886831769

namespace A328354

/-- `∑[A002277(n)/3*7^(n-1)]` -/
def P17663381793886831769.Spec : Prop :=
  ∀ n, P17663381793886831769.a n = (A328354 n : ℚ)

end A328354

/-!
# A328355: Let S be any integer in the range 36 <= S <= 44. Sequence has the property that a(n)*S is the sum of all positive integers whose decimal expansion has <= n digits and uses eight distinct nonzero digits d1,d2,d3,d4,d5,d6,d7,d8 such that d1+d2+d3+d4+d5+d6+d7+d8=S.

The programs for A328355, the canonical program `A328355.P16843855901694364704` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328355 has offset 0).

The definition of A328355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328355.P16843855901694364704

`81*a(n-1)-80*a(n-2)+8^(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328355

/-- `81*a(n-1)-80*a(n-2)+8^(n-1)` -/
def P16843855901694364704.Spec : Prop :=
  ∀ n, P16843855901694364704.a n = (A328355 n : ℚ)

end A328355

/-! ## A328355.P10575931210352558548

`∑[8^(n-1)*A002275(n)]`
-/

namespace A328355.P10575931210352558548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A002275 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328355.P10575931210352558548

namespace A328355

/-- `∑[8^(n-1)*A002275(n)]` -/
def P10575931210352558548.Spec : Prop :=
  ∀ n, P10575931210352558548.a n = (A328355 n : ℚ)

end A328355

/-! ## A328355.P2702286007438452510

`∑[A131577(n)²*A002275(n)*A011782(n)]`
-/

namespace A328355.P2702286007438452510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n ^ 2 * A002275 n * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328355.P2702286007438452510

namespace A328355

/-- `∑[A131577(n)²*A002275(n)*A011782(n)]` -/
def P2702286007438452510.Spec : Prop :=
  ∀ n, P2702286007438452510.a n = A328355 n

end A328355

/-! ## A328355.P10102979475873741839

`∑[A011782(n)²*A002275(n)*A166444(n+1)]`
-/

namespace A328355.P10102979475873741839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2 * A002275 n * A166444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328355.P10102979475873741839

namespace A328355

/-- `∑[A011782(n)²*A002275(n)*A166444(n+1)]` -/
def P10102979475873741839.Spec : Prop :=
  ∀ n, P10102979475873741839.a n = A328355 n

end A328355

/-! ## A328355.P17177977291719607050

`∑[A002275(n)*A117401(A167614(n+1))]`
-/

namespace A328355.P17177977291719607050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * A117401 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328355.P17177977291719607050

namespace A328355

/-- `∑[A002275(n)*A117401(A167614(n+1))]` -/
def P17177977291719607050.Spec : Prop :=
  ∀ n, P17177977291719607050.a n = A328355 n

end A328355

/-!
# A328356: a(n) is the sum of all positive integers whose decimal expansion is up to n digits and does not contain the 0 digit.

The programs for A328356, the canonical program `A328356.P17270573357512715635` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328356 has offset 0).

The definition of A328356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328356.P17270573357512715635

`91*a(n-1)-90*a(n-2)+45*9^(n-1)` with `a(0)=0, a(1)=45`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328356

/-- `91*a(n-1)-90*a(n-2)+45*9^(n-1)` -/
def P17270573357512715635.Spec : Prop :=
  ∀ n, P17270573357512715635.a n = (A328356 n : ℚ)

end A328356

/-! ## A328356.P14747820510992850443

`(80*90^n-89*9^n+9)*5/712`
-/

namespace A328356.P14747820510992850443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((80 * 90 ^ n : ℤ) - (89 * 9 ^ n : ℤ) + 9 : ℚ) * ((5 : ℚ) / 712)

end

end A328356.P14747820510992850443

namespace A328356

/-- `(80*90^n-89*9^n+9)*5/712` -/
def P14747820510992850443.Spec : Prop :=
  ∀ n, P14747820510992850443.a n = (A328356 n : ℚ)

end A328356

/-! ## A328356.P14245278750593653233

`∑[A220094(n+1)]-A220094(n+1)`
-/

namespace A328356.P14245278750593653233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A220094 (n + 1)

end

end A328356.P14245278750593653233

namespace A328356

/-- `∑[A220094(n+1)]-A220094(n+1)` -/
def P14245278750593653233.Spec : Prop :=
  ∀ n, P14245278750593653233.a n = A328356 n

end A328356

/-! ## A328356.P4457060300448455266

`∑[9^n*A086576(n+1)]%A220094(n+1)`
-/

namespace A328356.P4457060300448455266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A086576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A220094 (n + 1))

end

end A328356.P4457060300448455266

namespace A328356

/-- `∑[9^n*A086576(n+1)]%A220094(n+1)` -/
def P4457060300448455266.Spec : Prop :=
  ∀ n, P4457060300448455266.a n = A328356 n

end A328356

/-! ## A328356.P4605887836149504579

`∑[(A177096(n+1)+5)*9^n]%A220094(n+1)`
-/

namespace A328356.P4605887836149504579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177096 (n + 1) + 5) * (9 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A220094 (n + 1))

end

end A328356.P4605887836149504579

namespace A328356

/-- `∑[(A177096(n+1)+5)*9^n]%A220094(n+1)` -/
def P4605887836149504579.Spec : Prop :=
  ∀ n, P4605887836149504579.a n = A328356 n

end A328356

/-!
# A328357: Number of inversion sequences of length n avoiding the consecutive patterns 000, 001, 011, 012.

The programs for A328357, there is no canonical definition to state claims against.
-/

/-! ## A328357.P210194660324944396

`A316975(A184715(n+1))^A029177(n)`
-/

namespace A328357.P210194660324944396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316975 (A184715 (n + 1)).toNat : ℚ) ^ (A029177 n : ℤ)

end

end A328357.P210194660324944396

/-!
# A328359: Numbers k such that Omega(k - 2) = Omega(k) = Omega(k + 2) where Omega = A001222.

The programs for A328359, the canonical program `A328359.P9669344211203897558` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328359 has offset 1).

The definition of A328359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328359.P9669344211203897558

`∩[A280382(n+1)+1, A280382(n+1)-1]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328359

/-- `∩[A280382(n+1)+1, A280382(n+1)-1]` -/
def P9669344211203897558.Spec : Prop :=
  ∀ n, (P9669344211203897558.a n : ℤ) = A328359 (n + 1)

theorem P9669344211203897558.correct : P9669344211203897558.Spec := by
  intro n
  simp only [A328359, Nat.add_sub_cancel]

end A328359

/-! ## A328359.P3999337243845478710

`∩[A280382(n+1)-1, A065475(A280382(n+1))]`
-/

namespace A328359.P3999337243845478710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A280382 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328359.P3999337243845478710

namespace A328359

/-- `∩[A280382(n+1)-1, A065475(A280382(n+1))]` -/
def P3999337243845478710.Spec : Prop :=
  ∀ n, (P3999337243845478710.a n : ℤ) = A328359 (n + 1)

end A328359

/-!
# A328360: a(n) = decimal concatenation of n, a(n-1), a(n-2), ..., a(0).

The programs for A328360, there is no canonical definition to state claims against.
-/

/-! ## A328360.P14162353872070510957

`A326295(n+1)-A286022(A000225(n))`
-/

namespace A328360.P14162353872070510957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326295 (n + 1) - A286022 (A000225 n).toNat

end

end A328360.P14162353872070510957

/-!
# A328361: Triangle read by rows: T(n,k) is the total number of k's in all partitions of n into consecutive parts, (1 <= k <= n).

The programs for A328361, there is no canonical definition to state claims against.
-/

/-! ## A328361.P9529235433496219583

`A328362(n+1)/A002260(n+1)`
-/

namespace A328361.P9529235433496219583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328362 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A328361.P9529235433496219583

/-! ## A328361.P12729469185341077897

`A328362(n+1)/(A002262(n)+1)`
-/

namespace A328361.P12729469185341077897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328362 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A328361.P12729469185341077897

/-! ## A328361.P7148209724514393065

`A328362(n+1)/A097285(Δ[n²])`
-/

namespace A328361.P7148209724514393065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328362 (n + 1) : ℚ) / (A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A328361.P7148209724514393065

/-! ## A328361.P2349442597275265893

`A328362(n+1)/sqrt(A133819(n+1))`
-/

namespace A328361.P2349442597275265893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A328362 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A328361.P2349442597275265893

/-! ## A328361.P16095614608055567277

`ceil(A328362(n+1)/A087232(n+1))`
-/

namespace A328361.P16095614608055567277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328362 (n + 1) : ℚ) / (A087232 (n + 1) : ℚ)⌉

end

end A328361.P16095614608055567277

/-! ## A328361.P12830128192913190871

`ceil(A328362(n+1)/A135223(n+1))`
-/

namespace A328361.P12830128192913190871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328362 (n + 1) : ℚ) / (A135223 (n + 1) : ℚ)⌉

end

end A328361.P12830128192913190871

/-! ## A328361.P1400020625481245329

`ceil(A328362(n+1)/A222111(n+1))`
-/

namespace A328361.P1400020625481245329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328362 (n + 1) : ℚ) / (A222111 (n + 1) : ℚ)⌉

end

end A328361.P1400020625481245329

/-! ## A328361.P10385590418420413253

`ceil(A328362(n+1)/A245093(n+1))`
-/

namespace A328361.P10385590418420413253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328362 (n + 1) : ℚ) / (A245093 (n + 1) : ℚ)⌉

end

end A328361.P10385590418420413253

/-! ## A328361.P18159783844519514814

`ceil(A328362(n+1)/A074712(n+2))`
-/

namespace A328361.P18159783844519514814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328362 (n + 1) : ℚ) / (A074712 (n + 2) : ℚ)⌉

end

end A328361.P18159783844519514814

/-! ## A328361.P8557580591195079605

`A328362(n+1)/A000005(A059268(n))`
-/

namespace A328361.P8557580591195079605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328362 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A328361.P8557580591195079605

/-! ## A328361.P5781784381379521715

`ceil(A328362(n+1)/A051537(A278818(n)))`
-/

namespace A328361.P5781784381379521715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328362 (n + 1) : ℚ) / (A051537 (A278818 n).toNat : ℚ)⌉

end

end A328361.P5781784381379521715

/-!
# A328362: Triangle read by rows: T(n,k) is the sum of all parts k in all partitions of n into consecutive parts, (1 <= k <= n).

The programs for A328362, there is no canonical definition to state claims against.
-/

/-! ## A328362.P13371738852901244340

`(col(n)+1)*A328361(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A328362.P13371738852901244340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A328361 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1))

end

end A328362.P13371738852901244340

/-! ## A328362.P7866815489707930638

`(col(n)+1)*A328361(n+1)`
-/

namespace A328362.P7866815489707930638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A328361 (n + 1)

end

end A328362.P7866815489707930638

/-! ## A328362.P2292930309815103974

`A002260(n+1)*A328361(n+1)`
-/

namespace A328362.P2292930309815103974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A328361 (n + 1)

end

end A328362.P2292930309815103974

/-! ## A328362.P10537323317864441803

`(A002262(n)+1)*A328361(n+1)`
-/

namespace A328362.P10537323317864441803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A328361 (n + 1)

end

end A328362.P10537323317864441803

/-! ## A328362.P11361213647182234884

`sqrt(A133819(n+1))*A328361(n+1)`
-/

namespace A328362.P11361213647182234884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A328361 (n + 1) : ℝ)

end

end A328362.P11361213647182234884

/-! ## A328362.P7659936308099984502

`sqrt(sqrt(A133821(n+1)))*A328361(n+1)`
-/

namespace A328362.P7659936308099984502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A133821 (n + 1) : ℝ)) * (A328361 (n + 1) : ℝ)

end

end A328362.P7659936308099984502

/-! ## A328362.P6083516880296136066

`A005555(A002262(n))*A328361(n+1)`
-/

namespace A328362.P6083516880296136066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A002262 n).toNat * A328361 (n + 1)

end

end A328362.P6083516880296136066

/-! ## A328362.P13280632364290538437

`A000005(A059268(n))*A328361(n+1)`
-/

namespace A328362.P13280632364290538437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A328361 (n + 1)

end

end A328362.P13280632364290538437

/-! ## A328362.P15251828469413100437

`A097285(A005408(n))*A328361(n+1)`
-/

namespace A328362.P15251828469413100437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A005408 n).toNat * A328361 (n + 1)

end

end A328362.P15251828469413100437

/-! ## A328362.P1248186208091097241

`A004736(A038722(n+1))*A328361(n+1)`
-/

namespace A328362.P1248186208091097241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A328361 (n + 1)

end

end A328362.P1248186208091097241

/-! ## A328362.P9394064083095208712

`A328361(n+1)*A328365(∑[A328361(n+1)])`
-/

namespace A328362.P9394064083095208712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328361 (n + 1) * A328365 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328362.P9394064083095208712

/-!
# A328363: Partial sums of A057640.

The programs for A328363, there is no canonical definition to state claims against.
-/

/-! ## A328363.P3243871078081502937

`A024916(n+1)+A328367(n+1)`
-/

namespace A328363.P3243871078081502937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + A328367 (n + 1)

end

end A328363.P3243871078081502937

/-! ## A328363.P4645299171876287014

`∑[A057640(n+1)]`
-/

namespace A328363.P4645299171876287014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328363.P4645299171876287014

/-! ## A328363.P2014927586595072117

`∑[A353130(n+1)+1+n]`
-/

namespace A328363.P2014927586595072117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353130 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328363.P2014927586595072117

/-! ## A328363.P9712012729538647812

`∑[A000027(A057640(Δ[n²]-n))]`
-/

namespace A328363.P9712012729538647812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A057640 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328363.P9712012729538647812

/-! ## A328363.P18043549722551103849

`A057640(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A328363.P18043549722551103849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057640 (n + 1) + a (A023443 n).toNat

end

end A328363.P18043549722551103849

/-! ## A328363.P5509536298814013541

`∑[A057641(n+1)+A000203(n+1)]`
-/

namespace A328363.P5509536298814013541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328363.P5509536298814013541

/-! ## A328363.P3740994991743472228

`A024916(n+1)+∑[A057641(n+1)]`
-/

namespace A328363.P3740994991743472228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328363.P3740994991743472228

/-! ## A328363.P4447748094888836549

`A328367(n+1)+∑[A000203(n+1)]`
-/

namespace A328363.P4447748094888836549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328367 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328363.P4447748094888836549

/-! ## A328363.P3143808899227998310

`a(n-1)+A057640(n+1)+A008683(4*(n+1))` with `a(0)=1`
-/

namespace A328363.P3143808899227998310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A057640 (n + 1) + A008683 (4 * (n + 1)))

end

end A328363.P3143808899227998310

/-! ## A328363.P14903134100823107572

`∑[record[A057640(A126759(n))]]`
-/

namespace A328363.P14903134100823107572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328363.P14903134100823107572

/-! ## A328363.P12599904901253966448

`∑[record[A057640(A065648(n))]]`
-/

namespace A328363.P12599904901253966448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328363.P12599904901253966448

/-!
# A328365: Irregular triangle read by rows, T(n,k), n >= 1, k >= 1, in which row n lists in reverse order the partitions of n into consecutive parts.

The programs for A328365, there is no canonical definition to state claims against.
-/

/-! ## A328365.P13346437269486204399

`A328362(record[(n+1)^A328361(n+1)])`
-/

namespace A328365.P13346437269486204399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A328361 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328362 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A328365.P13346437269486204399

/-!
# A328366: a(n) is the surface area of the stepped pyramid with n levels described in A245092.

The programs for A328366, the canonical program `A328366.P4444315487186983068` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328366 has offset 1).

The definition of A328366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328366.P4444315487186983068

`2*A299692(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328366

/-- `2*A299692(n+1)` -/
def P4444315487186983068.Spec : Prop :=
  ∀ n, P4444315487186983068.a n = A328366 (n + 1)

theorem P4444315487186983068.correct : P4444315487186983068.Spec := by
  intro n
  simp only [A328366, Nat.add_sub_cancel]

end A328366

/-! ## A328366.P4617271625078956484

`A046092(n+1)+A327329(n+1)`
-/

namespace A328366.P4617271625078956484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1) + A327329 (n + 1)

end

end A328366.P4617271625078956484

namespace A328366

/-- `A046092(n+1)+A327329(n+1)` -/
def P4617271625078956484.Spec : Prop :=
  ∀ n, P4617271625078956484.a n = A328366 (n + 1)

theorem P4617271625078956484.correct : P4617271625078956484.Spec := by
  intro n
  simp only [A328366, Nat.add_sub_cancel, A328366.P4617271625078956484.a, A328366.P4444315487186983068.a, A046092, A046092.P16411658895297056450.a, A299692, A299692.P2407571763722409211.a, A327329, A327329.P5185755489289824233.a, A002378, A002378.P6342434596694243671.a, A024916, A024916.P288223747059110690.f1, A024916.P288223747059110690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328366

/-! ## A328366.P13363030989289355876

`4*A000217(n+1)+2*A024916(n+1)`
-/

namespace A328366.P13363030989289355876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000217 (n + 1) + 2 * A024916 (n + 1)

end

end A328366.P13363030989289355876

namespace A328366

/-- `4*A000217(n+1)+2*A024916(n+1)` -/
def P13363030989289355876.Spec : Prop :=
  ∀ n, P13363030989289355876.a n = A328366 (n + 1)

theorem P13363030989289355876.correct : P13363030989289355876.Spec := by
  intro n
  simp only [A328366, Nat.add_sub_cancel, A328366.P13363030989289355876.a, A328366.P4444315487186983068.a, A000217, A000217.P10269402890581615239.a, A024916, A024916.P288223747059110690.f1, A024916.P288223747059110690.a, A299692, A299692.P2407571763722409211.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328366

/-! ## A328366.P10760993286643149101

`2*(A045943(n+1)+A153485(n+1))`
-/

namespace A328366.P10760993286643149101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045943 (n + 1) + A153485 (n + 1))

end

end A328366.P10760993286643149101

namespace A328366

/-- `2*(A045943(n+1)+A153485(n+1))` -/
def P10760993286643149101.Spec : Prop :=
  ∀ n, P10760993286643149101.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P8910442844980985813

`2*∑[∑[Δ[∑{d}[n, #]]+2]]`
-/

namespace A328366.P8910442844980985813
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328366.P8910442844980985813

namespace A328366

/-- `2*∑[∑[Δ[∑{d}[n, #]]+2]]` -/
def P8910442844980985813.Spec : Prop :=
  ∀ n, P8910442844980985813.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P13921389149296255866

`∑[2*(∑{d}[n+1, #]+2*(n+1))]`
-/

namespace A328366.P13921389149296255866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), d + 2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328366.P13921389149296255866

namespace A328366

/-- `∑[2*(∑{d}[n+1, #]+2*(n+1))]` -/
def P13921389149296255866.Spec : Prop :=
  ∀ n, (P13921389149296255866.a n : ℤ) = A328366 (n + 1)

end A328366

/-! ## A328366.P13733894920702578663

`∑[2*A224880(n+1)]`
-/

namespace A328366.P13733894920702578663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328366.P13733894920702578663

namespace A328366

/-- `∑[2*A224880(n+1)]` -/
def P13733894920702578663.Spec : Prop :=
  ∀ n, P13733894920702578663.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P11618304028009055254

`∑[2*(A155085(n+1)+n+1)]`
-/

namespace A328366.P11618304028009055254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155085 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328366.P11618304028009055254

namespace A328366

/-- `∑[2*(A155085(n+1)+n+1)]` -/
def P11618304028009055254.Spec : Prop :=
  ∀ n, P11618304028009055254.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P15388985928354053858

`∑[A074400(n+1)+4*(n+1)]`
-/

namespace A328366.P15388985928354053858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328366.P15388985928354053858

namespace A328366

/-- `∑[A074400(n+1)+4*(n+1)]` -/
def P15388985928354053858.Spec : Prop :=
  ∀ n, P15388985928354053858.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P10345730422412162956

`∑[A091818(n+1)+6*(n+1)]`
-/

namespace A328366.P10345730422412162956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) + (6 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328366.P10345730422412162956

namespace A328366

/-- `∑[A091818(n+1)+6*(n+1)]` -/
def P10345730422412162956.Spec : Prop :=
  ∀ n, P10345730422412162956.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P17014408163864604020

`∑[2*(A000203(n+1)+2*(n+1))]`
-/

namespace A328366.P17014408163864604020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) + (2 * (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328366.P17014408163864604020

namespace A328366

/-- `∑[2*(A000203(n+1)+2*(n+1))]` -/
def P17014408163864604020.Spec : Prop :=
  ∀ n, P17014408163864604020.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P14167875131415798423

`∑[2*∑{d}[n+1, 2*A000010(#)+#]]`
-/

namespace A328366.P14167875131415798423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), (2 * A000010 d + (d : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328366.P14167875131415798423

namespace A328366

/-- `∑[2*∑{d}[n+1, 2*A000010(#)+#]]` -/
def P14167875131415798423.Spec : Prop :=
  ∀ n, P14167875131415798423.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P10376519410106191204

`2*(A327329(n+1)+A111490(n+1))`
-/

namespace A328366.P10376519410106191204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A327329 (n + 1) + A111490 (n + 1))

end

end A328366.P10376519410106191204

namespace A328366

/-- `2*(A327329(n+1)+A111490(n+1))` -/
def P10376519410106191204.Spec : Prop :=
  ∀ n, P10376519410106191204.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P3251413028818914153

`∑[n+2+A000203(C(n+1, n))+n]+∑[n+2+A000203(C(n+1, n))+n]`
-/

namespace A328366.P3251413028818914153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + (A000203 (Nat.choose (n + 1) n) + (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + (A000203 (Nat.choose (n + 1) n) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A328366.P3251413028818914153

namespace A328366

/-- `∑[n+2+A000203(C(n+1, n))+n]+∑[n+2+A000203(C(n+1, n))+n]` -/
def P3251413028818914153.Spec : Prop :=
  ∀ n, P3251413028818914153.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P15424109413734604806

`A024916(n+1)+A046092(n+1)+A024916(n+1)`
-/

namespace A328366.P15424109413734604806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A046092 (n + 1) + A024916 (n + 1))

end

end A328366.P15424109413734604806

namespace A328366

/-- `A024916(n+1)+A046092(n+1)+A024916(n+1)` -/
def P15424109413734604806.Spec : Prop :=
  ∀ n, P15424109413734604806.a n = A328366 (n + 1)

theorem P15424109413734604806.correct : P15424109413734604806.Spec := by
  intro n
  simp only [A328366, Nat.add_sub_cancel, A328366.P15424109413734604806.a, A328366.P4444315487186983068.a, A024916, A024916.P288223747059110690.f1, A024916.P288223747059110690.a, A046092, A046092.P16411658895297056450.a, A299692, A299692.P2407571763722409211.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328366

/-! ## A328366.P10449974229604463741

`A045943(n+1)+A299692(n+1)+A153485(n+1)`
-/

namespace A328366.P10449974229604463741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (n + 1) + (A299692 (n + 1) + A153485 (n + 1))

end

end A328366.P10449974229604463741

namespace A328366

/-- `A045943(n+1)+A299692(n+1)+A153485(n+1)` -/
def P10449974229604463741.Spec : Prop :=
  ∀ n, P10449974229604463741.a n = A328366 (n + 1)

end A328366

/-! ## A328366.P1940652942281099716

`A299692(n+1)+A299692(n+2)-A224880(n+2)`
-/

namespace A328366.P1940652942281099716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299692 (n + 1) + (A299692 (n + 2) - A224880 (n + 2))

end

end A328366.P1940652942281099716

namespace A328366

/-- `A299692(n+1)+A299692(n+2)-A224880(n+2)` -/
def P1940652942281099716.Spec : Prop :=
  ∀ n, P1940652942281099716.a n = A328366 (n + 1)

end A328366

/-!
# A328367: Partial sums of A057641.

The programs for A328367, there is no canonical definition to state claims against.
-/

/-! ## A328367.P4446691523315859160

`A328363(n+1)-A024916(n+1)`
-/

namespace A328367.P4446691523315859160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328363 (n + 1) - A024916 (n + 1)

end

end A328367.P4446691523315859160

/-! ## A328367.P5262519799528075942

`∑[A057641(1+n)]`
-/

namespace A328367.P5262519799528075942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057641 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328367.P5262519799528075942

/-! ## A328367.P4404840352601916344

`∑[A057640(n+1)-∑{d}[n+1, #]]`
-/

namespace A328367.P4404840352601916344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328367.P4404840352601916344

/-! ## A328367.P11686894839931825843

`∑[A057640(n+1)-Δ[A160664(n)]]`
-/

namespace A328367.P11686894839931825843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328367.P11686894839931825843

/-! ## A328367.P7360581015611664437

`∑[A057640(n+1)-A000203(n+1)]`
-/

namespace A328367.P7360581015611664437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328367.P7360581015611664437

/-! ## A328367.P2831723042644491654

`∑[A057640(n+1)]-A024916(n+1)`
-/

namespace A328367.P2831723042644491654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024916 (n + 1)

end

end A328367.P2831723042644491654

/-! ## A328367.P15451333637215169366

`A328363(n+1)-∑[A000203(n+1)]`
-/

namespace A328367.P15451333637215169366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328363 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328367.P15451333637215169366

/-! ## A328367.P5832891544039670395

`∑[A057640(n+1)-sqrt(A072861(n+1))]`
-/

namespace A328367.P5832891544039670395
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A057640 (n + 1) : ℝ) - Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328367.P5832891544039670395

/-! ## A328367.P7670656233450863156

`∑[A057640(n+1)+1-A088580(n+1)]`
-/

namespace A328367.P7670656233450863156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057640 (n + 1) + (1 - A088580 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328367.P7670656233450863156

/-!
# A328368: Irregular triangle read by rows: T(n,k) is the total number of parts in all partitions of all positive integers <= n into k consecutive parts.

The programs for A328368, there is no canonical definition to state claims against.
-/

/-! ## A328368.P15649703136858794115

`A302242(A077720(n+1)-A036302(n+1))`
-/

namespace A328368.P15649703136858794115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A077720 (n + 1) - A036302 (n + 1)).toNat

end

end A328368.P15649703136858794115

/-! ## A328368.P11485145618505691614

`A235791(n+1)+A124010(A008292(3*n+4))`
-/

namespace A328368.P11485145618505691614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (n + 1) + A124010 (A008292 (3 * n + 4)).toNat

end

end A328368.P11485145618505691614

/-! ## A328368.P2732100397672296735

`A172471(A328371(n+1))%A331027(3*(n+1))`
-/

namespace A328368.P2732100397672296735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172471 (A328371 (n + 1)).toNat) (A331027 (3 * (n + 1)))

end

end A328368.P2732100397672296735

/-!
# A328369: Numbers without repeated parts in their partitions into consecutive parts.

The programs for A328369, there is no canonical definition to state claims against.
-/

/-! ## A328369.P7288580964103246612

`comp[A118236(n+1)-1]+1`
-/

namespace A328369.P7288580964103246612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118236 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A328369.P7288580964103246612

/-! ## A328369.P2952118768343057393

`comp[A136602(A118236(n+1))]+1`
-/

namespace A328369.P2952118768343057393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (A118236 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A328369.P2952118768343057393

/-! ## A328369.P9463299798168481335

`eq[char[A118236(n+1)], A000007(n)]`
-/

namespace A328369.P9463299798168481335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118236 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328369.P9463299798168481335

/-! ## A328369.P7155333094448581358

`eq[char[A118236(n+1)], A000038(n)]`
-/

namespace A328369.P7155333094448581358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118236 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328369.P7155333094448581358

/-! ## A328369.P12385484138779297707

`eq[char[A118236(n+1)], A163811(2*n)]`
-/

namespace A328369.P12385484138779297707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118236 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328369.P12385484138779297707

/-! ## A328369.P13688546106287353362

`eq[A210030(n)%2, char[A118236(n+1)]]`
-/

namespace A328369.P13688546106287353362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210030 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118236 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A328369.P13688546106287353362

/-! ## A328369.P6192002983455298733

`eq[char[A118236(n+1)], A151933(n)]`
-/

namespace A328369.P6192002983455298733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118236 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A328369.P6192002983455298733

/-!
# A328370: Quasi-amicable pairs.

The programs for A328370, there is no canonical definition to state claims against.
-/

/-! ## A328370.P5166813887441238721

`A005276(A146941(n+1))%A061395(2*A126721(n+1))`
-/

namespace A328370.P5166813887441238721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005276 (A146941 (n + 1)).toNat) (A061395 (2 * A126721 (n + 1)).toNat)

end

end A328370.P5166813887441238721

/-! ## A328370.P16349022679892467952

`A005276(A249814(n+1)%A322724(n+5))`
-/

namespace A328370.P16349022679892467952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005276 (Int.tmod (A249814 (n + 1)) (A322724 (n + 5))).toNat

end

end A328370.P16349022679892467952

/-!
# A328372: Expansion of Sum_{k>=1} x^(k^2) / (1 - x^(2*k^2)).

The programs for A328372, the canonical program `A328372.P4244838605367057205` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328372 has offset 1).

The definition of A328372 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328372.P4244838605367057205

`∑{d}[n+1, A000035(#)*A010052((n+1)/#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A328372

/-- `∑{d}[n+1, A000035(#)*A010052((n+1)/#)]` -/
def P4244838605367057205.Spec : Prop :=
  ∀ n, P4244838605367057205.a n = A328372 (n + 1)

theorem P4244838605367057205.correct : P4244838605367057205.Spec := by
  intro n
  simp only [A328372, Nat.add_sub_cancel]

end A328372

/-! ## A328372.P17786930796707774036

`∑{d}[n+1, A143259(#)]`
-/

namespace A328372.P17786930796707774036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143259 d

end

end A328372.P17786930796707774036

namespace A328372

/-- `∑{d}[n+1, A143259(#)]` -/
def P17786930796707774036.Spec : Prop :=
  ∀ n, P17786930796707774036.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P1364438505757298637

`A298735(n+1)-a(floor(n/2))*n%2` with `a(0)=1`
-/

namespace A328372.P1364438505757298637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298735 (n + 1) - a ⌊(n : ℚ) / 2⌋.toNat * ((n % 2 : ℕ) : ℤ)

end

end A328372.P1364438505757298637

namespace A328372

/-- `A298735(n+1)-a(floor(n/2))*n%2` -/
def P1364438505757298637.Spec : Prop :=
  ∀ n, P1364438505757298637.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P9076340927602731694

`A347992(n+1)+A345221(n+1)`
-/

namespace A328372.P9076340927602731694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347992 (n + 1) + A345221 (n + 1)

end

end A328372.P9076340927602731694

namespace A328372

/-- `A347992(n+1)+A345221(n+1)` -/
def P9076340927602731694.Spec : Prop :=
  ∀ n, P9076340927602731694.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P17781344567388749627

`A035263(n+1)*A298735(n+1)`
-/

namespace A328372.P17781344567388749627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A298735 (n + 1)

end

end A328372.P17781344567388749627

namespace A328372

/-- `A035263(n+1)*A298735(n+1)` -/
def P17781344567388749627.Spec : Prop :=
  ∀ n, P17781344567388749627.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P12589208771848937832

`lcm(A029883(n+1), A298735(n+1))`
-/

namespace A328372.P12589208771848937832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029883 (n + 1)) (A298735 (n + 1))

end

end A328372.P12589208771848937832

namespace A328372

/-- `lcm(A029883(n+1), A298735(n+1))` -/
def P12589208771848937832.Spec : Prop :=
  ∀ n, (P12589208771848937832.a n : ℤ) = A328372 (n + 1)

end A328372

/-! ## A328372.P7673996607044502218

`and(A298735(n+1), A328271(n+1))`
-/

namespace A328372.P7673996607044502218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A298735 (n + 1)) (A328271 (n + 1))

end

end A328372.P7673996607044502218

namespace A328372

/-- `and(A298735(n+1), A328271(n+1))` -/
def P7673996607044502218.Spec : Prop :=
  ∀ n, P7673996607044502218.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P9345062165044288490

`∑{d}[A229297(n+1), A000034(#)-1]`
-/

namespace A328372.P9345062165044288490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000034 d - 1)

end

end A328372.P9345062165044288490

namespace A328372

/-- `∑{d}[A229297(n+1), A000034(#)-1]` -/
def P9345062165044288490.Spec : Prop :=
  ∀ n, P9345062165044288490.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P11486884447384384850

`2*A046951(n+1)-A065704(n+1)`
-/

namespace A328372.P11486884447384384850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046951 (n + 1) - A065704 (n + 1)

end

end A328372.P11486884447384384850

namespace A328372

/-- `2*A046951(n+1)-A065704(n+1)` -/
def P11486884447384384850.Spec : Prop :=
  ∀ n, P11486884447384384850.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P10133058596146365712

`and(1, A085296(n+1))*A298735(n+1)`
-/

namespace A328372.P10133058596146365712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A085296 (n + 1)) * A298735 (n + 1)

end

end A328372.P10133058596146365712

namespace A328372

/-- `and(1, A085296(n+1))*A298735(n+1)` -/
def P10133058596146365712.Spec : Prop :=
  ∀ n, P10133058596146365712.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P14063528186194444918

`∑{d}[n+1, A001227(#)*A008836((n+1)/#)]`
-/

namespace A328372.P14063528186194444918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P14063528186194444918

namespace A328372

/-- `∑{d}[n+1, A001227(#)*A008836((n+1)/#)]` -/
def P14063528186194444918.Spec : Prop :=
  ∀ n, P14063528186194444918.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P14776332039670366901

`∑{d}[n+1, A035263(#)*A098108((n+1)/#)]`
-/

namespace A328372.P14776332039670366901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A098108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P14776332039670366901

namespace A328372

/-- `∑{d}[n+1, A035263(#)*A098108((n+1)/#)]` -/
def P14776332039670366901.Spec : Prop :=
  ∀ n, P14776332039670366901.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P6332722498891727063

`∑{d}[n+1, A046951(#)*A154955((n+1)/#)]`
-/

namespace A328372.P6332722498891727063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P6332722498891727063

namespace A328372

/-- `∑{d}[n+1, A046951(#)*A154955((n+1)/#)]` -/
def P6332722498891727063.Spec : Prop :=
  ∀ n, P6332722498891727063.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P12799033961270397107

`∑{d}[n+1, A092673(#)*A124315((n+1)/#)]`
-/

namespace A328372.P12799033961270397107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A124315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P12799033961270397107

namespace A328372

/-- `∑{d}[n+1, A092673(#)*A124315((n+1)/#)]` -/
def P12799033961270397107.Spec : Prop :=
  ∀ n, P12799033961270397107.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P8929989739349602075

`∑{d}[n+1, A133700(#)*A158522((n+1)/#)]`
-/

namespace A328372.P8929989739349602075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133700 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P8929989739349602075

namespace A328372

/-- `∑{d}[n+1, A133700(#)*A158522((n+1)/#)]` -/
def P8929989739349602075.Spec : Prop :=
  ∀ n, P8929989739349602075.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P18316884798521292522

`∑{d}[n+1, A160467(#)*A181563((n+1)/#)]`
-/

namespace A328372.P18316884798521292522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A160467 d * A181563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P18316884798521292522

namespace A328372

/-- `∑{d}[n+1, A160467(#)*A181563((n+1)/#)]` -/
def P18316884798521292522.Spec : Prop :=
  ∀ n, P18316884798521292522.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P9926344251913879611

`∑{d}[n+1, A053866(#)*A309873((n+1)/#)]`
-/

namespace A328372.P9926344251913879611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A309873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P9926344251913879611

namespace A328372

/-- `∑{d}[n+1, A053866(#)*A309873((n+1)/#)]` -/
def P9926344251913879611.Spec : Prop :=
  ∀ n, P9926344251913879611.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P16090431685982105072

`∑{d}[n+1, A093709(#)*A309873((n+1)/#)]`
-/

namespace A328372.P16090431685982105072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093709 d * A309873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P16090431685982105072

namespace A328372

/-- `∑{d}[n+1, A093709(#)*A309873((n+1)/#)]` -/
def P16090431685982105072.Spec : Prop :=
  ∀ n, P16090431685982105072.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P6775890267675036042

`∑{d}[n+1, A154269(#)*A298735((n+1)/#)]`
-/

namespace A328372.P6775890267675036042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A298735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P6775890267675036042

namespace A328372

/-- `∑{d}[n+1, A154269(#)*A298735((n+1)/#)]` -/
def P6775890267675036042.Spec : Prop :=
  ∀ n, P6775890267675036042.a n = A328372 (n + 1)

end A328372

/-! ## A328372.P2682223789547794292

`∑{d}[n+1, A214295(#)*A284413((n+1)/#)]`
-/

namespace A328372.P2682223789547794292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A214295 d * A284413 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328372.P2682223789547794292

namespace A328372

/-- `∑{d}[n+1, A214295(#)*A284413((n+1)/#)]` -/
def P2682223789547794292.Spec : Prop :=
  ∀ n, P2682223789547794292.a n = A328372 (n + 1)

end A328372

/-!
# A328373: Expansion of Sum_{k>=1} x^(k^2) * (1 + x^(2*k^2)) / (1 - x^(2*k^2))^2.

The programs for A328373, the canonical program `A328373.P2646718964480867928` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328373 has offset 1).

The definition of A328373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328373.P2646718964480867928

`∑{d}[n+1, A193356(#)*A010052((n+1)/#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A328373

/-- `∑{d}[n+1, A193356(#)*A010052((n+1)/#)]` -/
def P2646718964480867928.Spec : Prop :=
  ∀ n, P2646718964480867928.a n = A328373 (n + 1)

theorem P2646718964480867928.correct : P2646718964480867928.Spec := by
  intro n
  simp only [A328373, Nat.add_sub_cancel]

end A328373

/-! ## A328373.P6123913610213300917

`∑{d}[n+1, A000593(#)*A008836((n+1)/#)]`
-/

namespace A328373.P6123913610213300917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P6123913610213300917

namespace A328373

/-- `∑{d}[n+1, A000593(#)*A008836((n+1)/#)]` -/
def P6123913610213300917.Spec : Prop :=
  ∀ n, P6123913610213300917.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P4497775729433012598

`∑{d}[n+1, A048272(#)*A074722((n+1)/#)]`
-/

namespace A328373.P4497775729433012598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P4497775729433012598

namespace A328373

/-- `∑{d}[n+1, A048272(#)*A074722((n+1)/#)]` -/
def P4497775729433012598.Spec : Prop :=
  ∀ n, P4497775729433012598.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P1603331082376451453

`∑{d}[n+1, A000265(#)*A143259((n+1)/#)]`
-/

namespace A328373.P1603331082376451453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A143259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P1603331082376451453

namespace A328373

/-- `∑{d}[n+1, A000265(#)*A143259((n+1)/#)]` -/
def P1603331082376451453.Spec : Prop :=
  ∀ n, P1603331082376451453.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P6328281913489302004

`∑{d}[n+1, A010052(#)*A193356((n+1)/#)]`
-/

namespace A328373.P6328281913489302004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P6328281913489302004

namespace A328373

/-- `∑{d}[n+1, A010052(#)*A193356((n+1)/#)]` -/
def P6328281913489302004.Spec : Prop :=
  ∀ n, P6328281913489302004.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P15594130187167021133

`∑{d}[n+1, A026741(#)*A181563((n+1)/#)]`
-/

namespace A328373.P15594130187167021133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A181563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P15594130187167021133

namespace A328373

/-- `∑{d}[n+1, A026741(#)*A181563((n+1)/#)]` -/
def P15594130187167021133.Spec : Prop :=
  ∀ n, P15594130187167021133.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P3362912461487273028

`∑{d}[n+1, A000010(#)*A317529((n+1)/#)]`
-/

namespace A328373.P3362912461487273028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A317529 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P3362912461487273028

namespace A328373

/-- `∑{d}[n+1, A000010(#)*A317529((n+1)/#)]` -/
def P3362912461487273028.Spec : Prop :=
  ∀ n, P3362912461487273028.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P17633814707798758346

`∑{d}[n+1, A046951(#)*A319997((n+1)/#)]`
-/

namespace A328373.P17633814707798758346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P17633814707798758346

namespace A328373

/-- `∑{d}[n+1, A046951(#)*A319997((n+1)/#)]` -/
def P17633814707798758346.Spec : Prop :=
  ∀ n, P17633814707798758346.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P6711996202532402153

`∑{d}[n+1, A109386(#)*A323363((n+1)/#)]`
-/

namespace A328373.P6711996202532402153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109386 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P6711996202532402153

namespace A328373

/-- `∑{d}[n+1, A109386(#)*A323363((n+1)/#)]` -/
def P6711996202532402153.Spec : Prop :=
  ∀ n, P6711996202532402153.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P3441354193268375411

`∑{d}[n+1, A158522(#)*A288417((n+1)/#)]`
-/

namespace A328373.P3441354193268375411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P3441354193268375411

namespace A328373

/-- `∑{d}[n+1, A158522(#)*A288417((n+1)/#)]` -/
def P3441354193268375411.Spec : Prop :=
  ∀ n, P3441354193268375411.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P7214105868484033977

`∑{d}[n+1, A288418(#)*A328639((n+1)/#)]`
-/

namespace A328373.P7214105868484033977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288418 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P7214105868484033977

namespace A328373

/-- `∑{d}[n+1, A288418(#)*A328639((n+1)/#)]` -/
def P7214105868484033977.Spec : Prop :=
  ∀ n, P7214105868484033977.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P13402591367169160335

`∑{d}[n+1, A288419(#)*A328640((n+1)/#)]`
-/

namespace A328373.P13402591367169160335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288419 d * A328640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P13402591367169160335

namespace A328373

/-- `∑{d}[n+1, A288419(#)*A328640((n+1)/#)]` -/
def P13402591367169160335.Spec : Prop :=
  ∀ n, P13402591367169160335.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P18362556944375554438

`∑{d}[n+1, A309324(#)*A329484((n+1)/#)]`
-/

namespace A328373.P18362556944375554438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309324 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P18362556944375554438

namespace A328373

/-- `∑{d}[n+1, A309324(#)*A329484((n+1)/#)]` -/
def P18362556944375554438.Spec : Prop :=
  ∀ n, P18362556944375554438.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P12150535792007927974

`∑{d}[n+1, A318845(#)*A326415((n+1)/#)]`
-/

namespace A328373.P12150535792007927974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318845 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P12150535792007927974

namespace A328373

/-- `∑{d}[n+1, A318845(#)*A326415((n+1)/#)]` -/
def P12150535792007927974.Spec : Prop :=
  ∀ n, P12150535792007927974.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P11294847898878025476

`∑{d}[n+1, A332844(#)*A361019((n+1)/#)]`
-/

namespace A328373.P11294847898878025476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332844 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P11294847898878025476

namespace A328373

/-- `∑{d}[n+1, A332844(#)*A361019((n+1)/#)]` -/
def P11294847898878025476.Spec : Prop :=
  ∀ n, P11294847898878025476.a n = A328373 (n + 1)

end A328373

/-! ## A328373.P11263893596310766784

`∑{d}[n+1, A033999(#-1)*A206369((n+1)/#)]`
-/

namespace A328373.P11263893596310766784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328373.P11263893596310766784

namespace A328373

/-- `∑{d}[n+1, A033999(#-1)*A206369((n+1)/#)]` -/
def P11263893596310766784.Spec : Prop :=
  ∀ n, P11263893596310766784.a n = A328373 (n + 1)

end A328373

/-!
# A328375: Numbers k such that the decimal expansion of 2^k contains the substring 777.

The programs for A328375, there is no canonical definition to state claims against.
-/

/-! ## A328375.P3182869178592895656

`A194509(A230766(2*(n+2))+A050784(3*n+5))`
-/

namespace A328375.P3182869178592895656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A230766 (2 * (n + 2)) + A050784 (3 * n + 5)).toNat

end

end A328375.P3182869178592895656

/-!
# A328376: a(n) = floor(abs(tan(n))).

The programs for A328376, the canonical program `A328376.P18001089598898658470` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328376 has offset 0).

The definition of A328376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(abs(tan(n)))` (program `A328376.P18001089598898658470`, by `A328376.P18001089598898658470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A328376.P18001089598898658470

`floor(abs(tan(n)))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328376

/-- `floor(abs(tan(n)))` -/
def P18001089598898658470.Spec : Prop :=
  ∀ n, P18001089598898658470.a n = A328376 n

theorem P18001089598898658470.correct : P18001089598898658470.Spec := by
  intro n
  simp only [A328376]

end A328376

/-! ## A328376.P2699642523528060364

`floor(sqrt(floor(tan(n)²)))`
-/

namespace A328376.P2699642523528060364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌊Real.tan (n : ℝ) ^ 2⌋

end

end A328376.P2699642523528060364

namespace A328376

/-- `floor(sqrt(floor(tan(n)²)))` -/
def P2699642523528060364.Spec : Prop :=
  ∀ n, P2699642523528060364.a n = A328376 n

end A328376

/-! ## A328376.P13069057339597682489

`floor(abs(cot(asin(cos(n)))))`
-/

namespace A328376.P13069057339597682489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.cot (Real.arcsin (Real.cos (n : ℝ)))|⌋

end

end A328376.P13069057339597682489

namespace A328376

/-- `floor(abs(cot(asin(cos(n)))))` -/
def P13069057339597682489.Spec : Prop :=
  ∀ n, P13069057339597682489.a n = A328376 n

end A328376

/-! ## A328376.P7038378289434870192

`floor(abs(cot(acos(sin(n)))))`
-/

namespace A328376.P7038378289434870192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.cot (Real.arccos (Real.sin (n : ℝ)))|⌋

end

end A328376.P7038378289434870192

namespace A328376

/-- `floor(abs(cot(acos(sin(n)))))` -/
def P7038378289434870192.Spec : Prop :=
  ∀ n, P7038378289434870192.a n = A328376 n

end A328376

/-! ## A328376.P8897371422012945832

`floor(tan(n)²^(1/2))`
-/

namespace A328376.P8897371422012945832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tan (n : ℝ) ^ 2) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A328376.P8897371422012945832

namespace A328376

/-- `floor(tan(n)²^(1/2))` -/
def P8897371422012945832.Spec : Prop :=
  ∀ n, P8897371422012945832.a n = A328376 n

end A328376

/-! ## A328376.P15071255377549722656

`n-ceil(n-abs(tan(n)))`
-/

namespace A328376.P15071255377549722656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(n : ℝ) - |Real.tan (n : ℝ)|⌉

end

end A328376.P15071255377549722656

namespace A328376

/-- `n-ceil(n-abs(tan(n)))` -/
def P15071255377549722656.Spec : Prop :=
  ∀ n, P15071255377549722656.a n = A328376 n

end A328376

/-! ## A328376.P5666309250441452847

`floor(sqrt(A005657(n)))`
-/

namespace A328376.P5666309250441452847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005657 n)

end

end A328376.P5666309250441452847

namespace A328376

/-- `floor(sqrt(A005657(n)))` -/
def P5666309250441452847.Spec : Prop :=
  ∀ n, P5666309250441452847.a n = A328376 n

end A328376

/-! ## A328376.P13334405737566040956

`xor(A000503(n), A126564(n))`
-/

namespace A328376.P13334405737566040956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000503 n) (A126564 n)

end

end A328376.P13334405737566040956

namespace A328376

/-- `xor(A000503(n), A126564(n))` -/
def P13334405737566040956.Spec : Prop :=
  ∀ n, P13334405737566040956.a n = A328376 n

end A328376

/-! ## A328376.P17759981982122631622

`floor(sqrt(A005699(n)-A057427(n)))`
-/

namespace A328376.P17759981982122631622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005699 n - A057427 n)

end

end A328376.P17759981982122631622

namespace A328376

/-- `floor(sqrt(A005699(n)-A057427(n)))` -/
def P17759981982122631622.Spec : Prop :=
  ∀ n, P17759981982122631622.a n = A328376 n

end A328376

/-!
# A328378: Number of permutations of length n that possess the maximal sum of distances between contiguous elements.

The programs for A328378, there is no canonical definition to state claims against.
-/

/-! ## A328378.P1695982321920281088

`A175732(A148200(n+1))`
-/

namespace A328378.P1695982321920281088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175732 (A148200 (n + 1)).toNat

end

end A328378.P1695982321920281088

/-! ## A328378.P10827084553156031819

`and(A000005(A000138(n)), A096698(2*(n+1)))`
-/

namespace A328378.P10827084553156031819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A000138 n).toNat) (A096698 (2 * (n + 1)))

end

end A328378.P10827084553156031819

/-! ## A328378.P2583369794508764140

`A004736(or(A054154(2*n+1), A110654(n)))`
-/

namespace A328378.P2583369794508764140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Int.lor (A054154 (2 * n + 1)) (A110654 n)).toNat

end

end A328378.P2583369794508764140

/-! ## A328378.P9858024696898306840

`A000924(A213427(n+1)+A159287(2*n+1))`
-/

namespace A328378.P9858024696898306840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000924 (A213427 (n + 1) + A159287 (2 * n + 1)).toNat

end

end A328378.P9858024696898306840

/-!
# A328380: a(n) = (a(n-1) * a(n-3) - 2 * a(n-2)^2) / a(n-4) with a(0) = a(1) = a(2) = a(3) = 1.

The programs for A328380, the canonical program `A328380.P12897417549461307819` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328380 has offset 0).

The definition of A328380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328380.P12897417549461307819

`(a(n-1)*a(n-3)-2*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A328380

/-- `(a(n-1)*a(n-3)-2*a(n-2)²)/a(n-4)` -/
def P12897417549461307819.Spec : Prop :=
  ∀ n, P12897417549461307819.a n = (A328380 n : ℚ)

end A328380

/-! ## A328380.P4079408065751428258

`A242107(or(1, comp[2*(n+2)]))`
-/

namespace A328380.P4079408065751428258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A328380.P4079408065751428258

namespace A328380

/-- `A242107(or(1, comp[2*(n+2)]))` -/
def P4079408065751428258.Spec : Prop :=
  ∀ n, P4079408065751428258.a n = A328380 n

end A328380

/-! ## A328380.P4624117068394247695

`A242107(A004281(n))`
-/

namespace A328380.P4624117068394247695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (A004281 n).toNat

end

end A328380.P4624117068394247695

namespace A328380

/-- `A242107(A004281(n))` -/
def P4624117068394247695.Spec : Prop :=
  ∀ n, P4624117068394247695.a n = A328380 n

end A328380

/-! ## A328380.P16699168068020578754

`A242107(A004276(n+1))`
-/

namespace A328380.P16699168068020578754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (A004276 (n + 1)).toNat

end

end A328380.P16699168068020578754

namespace A328380

/-- `A242107(A004276(n+1))` -/
def P16699168068020578754.Spec : Prop :=
  ∀ n, P16699168068020578754.a n = A328380 n

end A328380

/-! ## A328380.P1579111212021157547

`A242107(A093178(comp[2*(n+2)]))`
-/

namespace A328380.P1579111212021157547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (A093178 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A328380.P1579111212021157547

namespace A328380

/-- `A242107(A093178(comp[2*(n+2)]))` -/
def P1579111212021157547.Spec : Prop :=
  ∀ n, P1579111212021157547.a n = A328380 n

end A328380

/-! ## A328380.P10893641607505422249

`A242107(A014681(comp[2*(n+2)]+1))`
-/

namespace A328380.P10893641607505422249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (A014681 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A328380.P10893641607505422249

namespace A328380

/-- `A242107(A014681(comp[2*(n+2)]+1))` -/
def P10893641607505422249.Spec : Prop :=
  ∀ n, P10893641607505422249.a n = A328380 n

end A328380

/-! ## A328380.P17809540481600306365

`A242107(A077028(A133263(n)))`
-/

namespace A328380.P17809540481600306365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (A077028 (A133263 n).toNat).toNat

end

end A328380.P17809540481600306365

namespace A328380

/-- `A242107(A077028(A133263(n)))` -/
def P17809540481600306365.Spec : Prop :=
  ∀ n, P17809540481600306365.a n = A328380 n

end A328380

/-! ## A328380.P13487921555374687823

`A242107(A008619(record[A247555(n)]))`
-/

namespace A328380.P13487921555374687823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A328380.P13487921555374687823

namespace A328380

/-- `A242107(A008619(record[A247555(n)]))` -/
def P13487921555374687823.Spec : Prop :=
  ∀ n, P13487921555374687823.a n = A328380 n

end A328380

/-! ## A328380.P1101596482484286332

`A242107(A123621(record[A321220(n)]))`
-/

namespace A328380.P1101596482484286332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (A123621 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A328380.P1101596482484286332

namespace A328380

/-- `A242107(A123621(record[A321220(n)]))` -/
def P1101596482484286332.Spec : Prop :=
  ∀ n, P1101596482484286332.a n = A328380 n

end A328380

/-!
# A328381: Lesser of twin primes pair p, such that F(p) and F(p+2) have the same number of prime factors, where F(n) is the n-th Fibonacci number.

The programs for A328381, there is no canonical definition to state claims against.
-/

/-! ## A328381.P10248962615277010559

`A078859(∑[A063987(n+1)])`
-/

namespace A328381.P10248962615277010559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078859 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328381.P10248962615277010559

/-! ## A328381.P16053400351372062849

`filter[A122124(n+1), A353463(#)]`
-/

namespace A328381.P16053400351372062849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A328381.P16053400351372062849

/-! ## A328381.P17330436290148938626

`∩[A001359(n+1), A122124(n+1)]`
-/

namespace A328381.P17330436290148938626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328381.P17330436290148938626

/-! ## A328381.P16778273608520132233

`∩[A001838(n+1), A122124(n+1)]`
-/

namespace A328381.P16778273608520132233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328381.P16778273608520132233

/-!
# A328382: a(n) = A276086(n) mod A003415(n), where A276086 is the primorial base exp-function and A003415 is the arithmetic derivative.

The programs for A328382, there is no canonical definition to state claims against.
-/

/-! ## A328382.P5738001172875483718

`A276086(n+2)%A003415(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328382.P5738001172875483718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (n + 2)) (A003415 (n + 2))

end

end A328382.P5738001172875483718

/-! ## A328382.P14310338788949161475

`A328624(A328626(n+2))%A003415(n+2)`
-/

namespace A328382.P14310338788949161475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328624 (A328626 (n + 2)).toNat) (A003415 (n + 2))

end

end A328382.P14310338788949161475

/-! ## A328382.P376471948339337325

`A328627(A328625(n+2))%A003415(n+2)`
-/

namespace A328382.P376471948339337325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328627 (A328625 (n + 2)).toNat) (A003415 (n + 2))

end

end A328382.P376471948339337325

/-! ## A328382.P5766070194661108693

`A276086(A113484(n+1))%A319703(2*(n+2))`
-/

namespace A328382.P5766070194661108693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (A113484 (n + 1)).toNat) (A319703 (2 * (n + 2)))

end

end A328382.P5766070194661108693

/-! ## A328382.P7392522037166353597

`A328618(A346233(n+2))%A003415(n+2)`
-/

namespace A328382.P7392522037166353597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328618 (A346233 (n + 2)).toNat) (A003415 (n + 2))

end

end A328382.P7392522037166353597

/-!
# A328385: If n is of the form p^p, a(n) = n, otherwise a(n) is the first number found by iterating the map x -> A003415(x) that is different from n and either a prime, or whose degree (A051903) differs from the degree of n.

The programs for A328385, there is no canonical definition to state claims against.
-/

/-! ## A328385.P18432299190770162986

`A003415(n+1)-A281669(A063884(n+1))`
-/

namespace A328385.P18432299190770162986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A281669 (A063884 (n + 1)).toNat

end

end A328385.P18432299190770162986

/-! ## A328385.P17940653615518274633

`A003415(n+1)-A281669(A063904(n+1))`
-/

namespace A328385.P17940653615518274633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A281669 (A063904 (n + 1)).toNat

end

end A328385.P17940653615518274633

/-! ## A328385.P725068266403515328

`A328099(n+1)-A281669(A063884(n+1))`
-/

namespace A328385.P725068266403515328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (n + 1) - A281669 (A063884 (n + 1)).toNat

end

end A328385.P725068266403515328

/-! ## A328385.P3549755808102723322

`A328099(n+1)-A281669(A063904(n+1))`
-/

namespace A328385.P3549755808102723322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (n + 1) - A281669 (A063904 (n + 1)).toNat

end

end A328385.P3549755808102723322

/-! ## A328385.P3422236383912999335

`A328099(n+1)-A281669(A216886(n+1))`
-/

namespace A328385.P3422236383912999335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (n + 1) - A281669 (A216886 (n + 1)).toNat

end

end A328385.P3422236383912999335

/-!
# A328386: a(n) = A276086(n) mod n.

The programs for A328386, there is no canonical definition to state claims against.
-/

/-! ## A328386.P9311208897382999537

`A276086(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328386.P9311208897382999537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (n + 1)) (n + 1 : ℤ)

end

end A328386.P9311208897382999537

/-! ## A328386.P9188889450127978856

`(A324580(n+1)/(n+1))%(n+1)`
-/

namespace A328386.P9188889450127978856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A324580 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

end

end A328386.P9188889450127978856

/-! ## A328386.P16555359371058058220

`(A328844(n+1)+A328843(n+1))%(n+1)`
-/

namespace A328386.P16555359371058058220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328844 (n + 1) + A328843 (n + 1)) (n + 1 : ℤ)

end

end A328386.P16555359371058058220

/-! ## A328386.P16489052079671926406

`A346101(A289234(n+1))%(n+1)`
-/

namespace A328386.P16489052079671926406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346101 (A289234 (n + 1)).toNat) (n + 1 : ℤ)

end

end A328386.P16489052079671926406

/-! ## A328386.P11671574681157425328

`(A328475(n+1)*A328580(n+1))%(n+1)`
-/

namespace A328386.P11671574681157425328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328475 (n + 1) * A328580 (n + 1)) (n + 1 : ℤ)

end

end A328386.P11671574681157425328

/-!
# A328387: Numbers k such that A276086(k) is a multiple of k.

The programs for A328387, there is no canonical definition to state claims against.
-/

/-! ## A328387.P12088739274976503403

`record[A324198(2*n+1)]`
-/

namespace A328387.P12088739274976503403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328387.P12088739274976503403

/-! ## A328387.P816755342074506459

`record[C(A324198(n+1), n)]`
-/

namespace A328387.P816755342074506459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A324198 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328387.P816755342074506459

/-! ## A328387.P10505073680319330386

`eq[n, A324198(n)]`
-/

namespace A328387.P10505073680319330386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328387.P10505073680319330386

/-! ## A328387.P8867453449763798481

`record[A371098(n)]`
-/

namespace A328387.P8867453449763798481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328387.P8867453449763798481

/-! ## A328387.P3892392337698243765

`eq[1, A351250(n)]`
-/

namespace A328387.P3892392337698243765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328387.P3892392337698243765

/-! ## A328387.P2098989921132089785

`record[A324646(2*n+1)]`
-/

namespace A328387.P2098989921132089785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328387.P2098989921132089785

/-! ## A328387.P13806066360113800760

`lt[A328386(n+1), 1]+1`
-/

namespace A328387.P13806066360113800760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328386 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A328387.P13806066360113800760

/-! ## A328387.P6644118093964309755

`lt[A351250(n+1), 2]+1`
-/

namespace A328387.P6644118093964309755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351250 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A328387.P6644118093964309755

/-! ## A328387.P6246749885774348563

`filter[2*n+1, A351250(#)]`
-/

namespace A328387.P6246749885774348563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351250 (f1 j) = 1) n)

end

end A328387.P6246749885774348563

/-! ## A328387.P7617991955069128238

`record[gcd(2*n+1, A324895(2*n+1))]`
-/

namespace A328387.P7617991955069128238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A324895 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328387.P7617991955069128238

/-!
# A328389: Maximal digit value in primorial base expansion of A276086(n): a(n) = A328114(A276086(n)).

The programs for A328389, there is no canonical definition to state claims against.
-/

/-! ## A328389.P7297590739750038343

`A328114(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328389.P7297590739750038343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A276086 n).toNat

end

end A328389.P7297590739750038343

/-! ## A328389.P16680433316759682066

`A051903(A276087(n))`
-/

namespace A328389.P16680433316759682066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A276087 n).toNat

end

end A328389.P16680433316759682066

/-! ## A328389.P3626193640207639552

`A328114(A328844(n))+1`
-/

namespace A328389.P3626193640207639552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A328844 n).toNat + 1

end

end A328389.P3626193640207639552

/-! ## A328389.P255346442960290725

`1-A001489(n)-(n-A328114(A328844(n)))`
-/

namespace A328389.P255346442960290725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 n - ((n : ℤ) - A328114 (A328844 n).toNat)

end

end A328389.P255346442960290725

/-! ## A328389.P8412577559619395217

`A328114(A351225(n)+n)`
-/

namespace A328389.P8412577559619395217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A351225 n + (n : ℤ)).toNat

end

end A328389.P8412577559619395217

/-! ## A328389.P2005938514334091735

`A328114(A328580(n)+A328476(n))`
-/

namespace A328389.P2005938514334091735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A328580 n + A328476 n).toNat

end

end A328389.P2005938514334091735

/-! ## A328389.P10125544812759956896

`A328114(A327860(n)-A342016(n))`
-/

namespace A328389.P10125544812759956896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A327860 n - A342016 n).toNat

end

end A328389.P10125544812759956896

/-! ## A328389.P8897690104596697710

`A328114(A328475(n)*A328580(n))`
-/

namespace A328389.P8897690104596697710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A328475 n * A328580 n).toNat

end

end A328389.P8897690104596697710

/-! ## A328389.P1311099340499483091

`A328114(A328571(n)*A328572(n))`
-/

namespace A328389.P1311099340499483091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A328571 n * A328572 n).toNat

end

end A328389.P1311099340499483091

/-!
# A328390: Maximal digit value in primorial base expansion of the arithmetic derivative of n: a(n) = A328114(A003415(n)).

The programs for A328390, there is no canonical definition to state claims against.
-/

/-! ## A328390.P1116967176736844938

`A328114(A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328390.P1116967176736844938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A003415 (n + 1)).toNat

end

end A328390.P1116967176736844938

/-! ## A328390.P9387100907227351163

`A051903(A327859(n+1))`
-/

namespace A328390.P9387100907227351163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A327859 (n + 1)).toNat

end

end A328390.P9387100907227351163

/-! ## A328390.P14361588947111849436

`A351097(n+1)+A051903(n+1)`
-/

namespace A328390.P14361588947111849436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351097 (n + 1) + A051903 (n + 1)

end

end A328390.P14361588947111849436

/-! ## A328390.P2918976360810294292

`A067132(n+1)+A351097(n+1)-1`
-/

namespace A328390.P2918976360810294292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1) + (A351097 (n + 1) - 1)

end

end A328390.P2918976360810294292

/-! ## A328390.P11659910441091618184

`A351097(n+1)+val(A046523(n+1), 2)`
-/

namespace A328390.P11659910441091618184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351097 (n + 1) + (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 : ℤ)

end

end A328390.P11659910441091618184

/-! ## A328390.P16678603133201256680

`A023443(A351097(n+1)+A067132(n+1))`
-/

namespace A328390.P16678603133201256680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A351097 (n + 1) + A067132 (n + 1)).toNat

end

end A328390.P16678603133201256680

/-! ## A328390.P13379235246948554314

`A351097(n+1)+A067029(A046523(n+1))`
-/

namespace A328390.P13379235246948554314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351097 (n + 1) + A067029 (A046523 (n + 1)).toNat

end

end A328390.P13379235246948554314

/-! ## A328390.P14524407192903739574

`A351097(n+1)+A067029(A089247(n+1))`
-/

namespace A328390.P14524407192903739574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351097 (n + 1) + A067029 (A089247 (n + 1)).toNat

end

end A328390.P14524407192903739574

/-! ## A328390.P321795215156573283

`A328114(n+1)+A351097(n+1)-A350074(n+1)`
-/

namespace A328390.P321795215156573283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) + (A351097 (n + 1) - A350074 (n + 1))

end

end A328390.P321795215156573283

/-! ## A328390.P12580464027859279054

`A328391(n+1)+A351097(n+1)-A351074(n+1)`
-/

namespace A328390.P12580464027859279054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (n + 1) + (A351097 (n + 1) - A351074 (n + 1))

end

end A328390.P12580464027859279054

/-! ## A328390.P12591978915585754236

`A328114(∑[A258057(n)])`
-/

namespace A328390.P12591978915585754236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328390.P12591978915585754236

/-! ## A328390.P8853394661098930548

`A328114(A319703(2*(n+1)))`
-/

namespace A328390.P8853394661098930548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A319703 (2 * (n + 1))).toNat

end

end A328390.P8853394661098930548

/-! ## A328390.P3973038052269595080

`A328114(A328099(n+1)%A328140(n))`
-/

namespace A328390.P3973038052269595080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (Int.tmod (A328099 (n + 1)) (A328140 n)).toNat

end

end A328390.P3973038052269595080

/-! ## A328390.P1638378462082851332

`A328114(A328099(n+1))%A328111(n)`
-/

namespace A328390.P1638378462082851332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328114 (A328099 (n + 1)).toNat) (A328111 n)

end

end A328390.P1638378462082851332

/-! ## A328390.P6343183569849838340

`A328114(A328099(n+1))+A000007(A182782(n+1))`
-/

namespace A328390.P6343183569849838340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A328099 (n + 1)).toNat + A000007 (A182782 (n + 1)).toNat

end

end A328390.P6343183569849838340

/-!
# A328391: Maximal exponent in the prime factorization of A327860(n): a(n) = A051903(A327860(n)).

The programs for A328391, there is no canonical definition to state claims against.
-/

/-! ## A328391.P10644784687356765252

`A051903(A327860(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328391.P10644784687356765252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A327860 (n + 1)).toNat

end

end A328391.P10644784687356765252

/-! ## A328391.P9041675220527599663

`A051903(A003415(A276086(n+1)))`
-/

namespace A328391.P9041675220527599663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A003415 (A276086 (n + 1)).toNat).toNat

end

end A328391.P9041675220527599663

/-! ## A328391.P635397605935706432

`A351074(n+1)+A051903(n+1)`
-/

namespace A328391.P635397605935706432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) + A051903 (n + 1)

end

end A328391.P635397605935706432

/-! ## A328391.P18116505114725006174

`A342026(n+1)+A328114(n+1)`
-/

namespace A328391.P18116505114725006174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342026 (n + 1) + A328114 (n + 1)

end

end A328391.P18116505114725006174

/-! ## A328391.P17349979751647033636

`A351074(n+1)+A007814(A046523(n+1))`
-/

namespace A328391.P17349979751647033636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) + A007814 (A046523 (n + 1)).toNat

end

end A328391.P17349979751647033636

/-! ## A328391.P13242533460988789074

`A351074(n+1)+A051282(A101296(n+1))`
-/

namespace A328391.P13242533460988789074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) + A051282 (A101296 (n + 1)).toNat

end

end A328391.P13242533460988789074

/-! ## A328391.P15139035306745129014

`A351074(n+1)+A067029(A089247(n+1))`
-/

namespace A328391.P15139035306745129014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) + A067029 (A089247 (n + 1)).toNat

end

end A328391.P15139035306745129014

/-! ## A328391.P10198851373463627715

`A351074(n+1)+A001222(A238745(n+1))`
-/

namespace A328391.P10198851373463627715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) + A001222 (A238745 (n + 1)).toNat

end

end A328391.P10198851373463627715

/-! ## A328391.P13823896669302553101

`A351074(n+1)+A061395(A181819(n+1))`
-/

namespace A328391.P13823896669302553101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) + A061395 (A181819 (n + 1)).toNat

end

end A328391.P13823896669302553101

/-! ## A328391.P13681158107509417457

`A351074(n+1)+A007814(A328400(n+1))`
-/

namespace A328391.P13681158107509417457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) + A007814 (A328400 (n + 1)).toNat

end

end A328391.P13681158107509417457

/-! ## A328391.P4277774897544183831

`A351074(n+1)+A065770(A329601(n+1))`
-/

namespace A328391.P4277774897544183831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351074 (n + 1) + A065770 (A329601 (n + 1)).toNat

end

end A328391.P4277774897544183831

/-! ## A328391.P11884622952584063210

`A328114(n+1)+A351074(n+1)-A350074(n+1)`
-/

namespace A328391.P11884622952584063210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (n + 1) + (A351074 (n + 1) - A350074 (n + 1))

end

end A328391.P11884622952584063210

/-!
# A328392: Maximal digit value in primorial base expansion of A327860(n): a(n) = A328114(A327860(n)).

The programs for A328392, there is no canonical definition to state claims against.
-/

/-! ## A328392.P12032674278666250551

`A328390(A276086(n))`
-/

namespace A328392.P12032674278666250551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (A276086 n).toNat

end

end A328392.P12032674278666250551

/-! ## A328392.P7452589730230587386

`A328114(A327860(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328392.P7452589730230587386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A327860 n).toNat

end

end A328392.P7452589730230587386

/-! ## A328392.P15936991080824781889

`A328390(A351225(n)+n)`
-/

namespace A328392.P15936991080824781889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (A351225 n + (n : ℤ)).toNat

end

end A328392.P15936991080824781889

/-! ## A328392.P5375653916857270999

`A351097(A276086(n))+A328114(n)`
-/

namespace A328392.P5375653916857270999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351097 (A276086 n).toNat + A328114 n

end

end A328392.P5375653916857270999

/-! ## A328392.P17264122292848432380

`A328390(A328580(n)+A328476(n))`
-/

namespace A328392.P17264122292848432380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (A328580 n + A328476 n).toNat

end

end A328392.P17264122292848432380

/-! ## A328392.P8999309781456582931

`A328390(A328844(n)+A328843(n))`
-/

namespace A328392.P8999309781456582931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (A328844 n + A328843 n).toNat

end

end A328392.P8999309781456582931

/-! ## A328392.P12161497339803398731

`A328390(A327860(n)-A342016(n))`
-/

namespace A328392.P12161497339803398731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (A327860 n - A342016 n).toNat

end

end A328392.P12161497339803398731

/-! ## A328392.P12676906589554705779

`A328390(A328475(n)*A328580(n))`
-/

namespace A328392.P12676906589554705779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (A328475 n * A328580 n).toNat

end

end A328392.P12676906589554705779

/-! ## A328392.P10110995679097333288

`A328390(A328571(n)*A328572(n))`
-/

namespace A328392.P10110995679097333288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (A328571 n * A328572 n).toNat

end

end A328392.P10110995679097333288

/-! ## A328392.P15755115586344837227

`A328114(A342016(n)+A276086(n))`
-/

namespace A328392.P15755115586344837227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A342016 n + A276086 n).toNat

end

end A328392.P15755115586344837227

/-!
# A328393: Numbers whose arithmetic derivative (A003415) is a squarefree number (A005117).

The programs for A328393, the canonical program `A328393.P15555907351680932415` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328393 has offset 1).

The definition of A328393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328393.P4460128726675785259

`lt[0, A354874(n)]`
-/

namespace A328393.P4460128726675785259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328393.P4460128726675785259

namespace A328393

/-- `lt[0, A354874(n)]` -/
def P4460128726675785259.Spec : Prop :=
  ∀ n, (P4460128726675785259.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P12402648247431725363

`comp[A328303(n+1)]`
-/

namespace A328393.P12402648247431725363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328393.P12402648247431725363

namespace A328393

/-- `comp[A328303(n+1)]` -/
def P12402648247431725363.Spec : Prop :=
  ∀ n, (P12402648247431725363.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P10028012349661397059

`eq[1, A354874(n+1)]+1`
-/

namespace A328393.P10028012349661397059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328393.P10028012349661397059

namespace A328393

/-- `eq[1, A354874(n+1)]+1` -/
def P10028012349661397059.Spec : Prop :=
  ∀ n, (P10028012349661397059.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P4995555288472658460

`eq[1, A229343(n+2)²]+2`
-/

namespace A328393.P4995555288472658460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229343 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A328393.P4995555288472658460

namespace A328393

/-- `eq[1, A229343(n+2)²]+2` -/
def P4995555288472658460.Spec : Prop :=
  ∀ n, (P4995555288472658460.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P12035905693820792088

`eq[A010121(n), A354874(n)]`
-/

namespace A328393.P12035905693820792088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328393.P12035905693820792088

namespace A328393

/-- `eq[A010121(n), A354874(n)]` -/
def P12035905693820792088.Spec : Prop :=
  ∀ n, (P12035905693820792088.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P98352636439394465

`eq[A010130(n), A354874(n)]`
-/

namespace A328393.P98352636439394465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328393.P98352636439394465

namespace A328393

/-- `eq[A010130(n), A354874(n)]` -/
def P98352636439394465.Spec : Prop :=
  ∀ n, (P98352636439394465.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P13591240601112756503

`eq[A010153(n), A354874(n)]`
-/

namespace A328393.P13591240601112756503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328393.P13591240601112756503

namespace A328393

/-- `eq[A010153(n), A354874(n)]` -/
def P13591240601112756503.Spec : Prop :=
  ∀ n, (P13591240601112756503.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P16152706848767700700

`eq[A040037(n), A354874(n)]`
-/

namespace A328393.P16152706848767700700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328393.P16152706848767700700

namespace A328393

/-- `eq[A040037(n), A354874(n)]` -/
def P16152706848767700700.Spec : Prop :=
  ∀ n, (P16152706848767700700.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P18388836229374991729

`eq[1, A354874(n*A354874(n))]`
-/

namespace A328393.P18388836229374991729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 ((n : ℤ) * A354874 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328393.P18388836229374991729

namespace A328393

/-- `eq[1, A354874(n*A354874(n))]` -/
def P18388836229374991729.Spec : Prop :=
  ∀ n, (P18388836229374991729.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P2754647103722589015

`∪[A000040(n+1), A328234(n+1)]`
-/

namespace A328393.P2754647103722589015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328393.P2754647103722589015

namespace A328393

/-- `∪[A000040(n+1), A328234(n+1)]` -/
def P2754647103722589015.Spec : Prop :=
  ∀ n, (P2754647103722589015.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P3642311073780897893

`∪[A189710(n+1), A328234(n+1)]`
-/

namespace A328393.P3642311073780897893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328393.P3642311073780897893

namespace A328393

/-- `∪[A189710(n+1), A328234(n+1)]` -/
def P3642311073780897893.Spec : Prop :=
  ∀ n, (P3642311073780897893.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P15555907351680932415

`eq[A342003(n+2)², A342003(n+2)]+2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A328393

/-- `eq[A342003(n+2)², A342003(n+2)]+2` -/
def P15555907351680932415.Spec : Prop :=
  ∀ n, (P15555907351680932415.a n : ℤ) = A328393 (n + 1)

theorem P15555907351680932415.correct : P15555907351680932415.Spec := by
  intro n
  simp only [A328393, Nat.add_sub_cancel]

end A328393

/-! ## A328393.P10907463745707654140

`filter[A358215(n+1), A354874(#)]`
-/

namespace A328393.P10907463745707654140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328393.P10907463745707654140

namespace A328393

/-- `filter[A358215(n+1), A354874(#)]` -/
def P10907463745707654140.Spec : Prop :=
  ∀ n, P10907463745707654140.a n = A328393 (n + 1)

end A328393

/-! ## A328393.P12215634217336005575

`eq[1, A369669(n)]`
-/

namespace A328393.P12215634217336005575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328393.P12215634217336005575

namespace A328393

/-- `eq[1, A369669(n)]` -/
def P12215634217336005575.Spec : Prop :=
  ∀ n, (P12215634217336005575.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P7093358886728012817

`eq[1, A341998(n+2)]+2`
-/

namespace A328393.P7093358886728012817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341998 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A328393.P7093358886728012817

namespace A328393

/-- `eq[1, A341998(n+2)]+2` -/
def P7093358886728012817.Spec : Prop :=
  ∀ n, (P7093358886728012817.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P14633383934333152311

`lt[A341998(n+2), A288861(A341998(n+2)+1)+1]+2`
-/

namespace A328393.P14633383934333152311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341998 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288861 (A341998 (n + 2) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A328393.P14633383934333152311

namespace A328393

/-- `lt[A341998(n+2), A288861(A341998(n+2)+1)+1]+2` -/
def P14633383934333152311.Spec : Prop :=
  ∀ n, (P14633383934333152311.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P4529941326112612373

`filter[A368902(n+1), A354874(#)]`
-/

namespace A328393.P4529941326112612373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328393.P4529941326112612373

namespace A328393

/-- `filter[A368902(n+1), A354874(#)]` -/
def P4529941326112612373.Spec : Prop :=
  ∀ n, P4529941326112612373.a n = A328393 (n + 1)

end A328393

/-! ## A328393.P3558828785521772103

`∩[A368902(n+1), A390361(n+1)]`
-/

namespace A328393.P3558828785521772103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328393.P3558828785521772103

namespace A328393

/-- `∩[A368902(n+1), A390361(n+1)]` -/
def P3558828785521772103.Spec : Prop :=
  ∀ n, (P3558828785521772103.a n : ℤ) = A328393 (n + 1)

end A328393

/-! ## A328393.P9118751014842581440

`filter[A276078(n+1), A354874(#)]`
-/

namespace A328393.P9118751014842581440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328393.P9118751014842581440

namespace A328393

/-- `filter[A276078(n+1), A354874(#)]` -/
def P9118751014842581440.Spec : Prop :=
  ∀ n, P9118751014842581440.a n = A328393 (n + 1)

end A328393

/-! ## A328393.P9287802296158221

`filter[A048103(n+1), A354874(#)]`
-/

namespace A328393.P9287802296158221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A328393.P9287802296158221

namespace A328393

/-- `filter[A048103(n+1), A354874(#)]` -/
def P9287802296158221.Spec : Prop :=
  ∀ n, P9287802296158221.a n = A328393 (n + 1)

end A328393

/-!
# A328394: Maximal digit value in primorial base expansion of A276087(n): a(n) = A328114(A276087(n)).

The programs for A328394, there is no canonical definition to state claims against.
-/

/-! ## A328394.P7678586695787325806

`A328389(A276086(n))`
-/

namespace A328394.P7678586695787325806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A276086 n).toNat

end

end A328394.P7678586695787325806

/-! ## A328394.P17360495409516673641

`A328114(A276087(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328394.P17360495409516673641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A276087 n).toNat

end

end A328394.P17360495409516673641

/-! ## A328394.P11796918249733366047

`A328389(A351225(n)+n)`
-/

namespace A328394.P11796918249733366047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A351225 n + (n : ℤ)).toNat

end

end A328394.P11796918249733366047

/-! ## A328394.P7359023912835238616

`A328389(A373849(n)+A003415(n))`
-/

namespace A328394.P7359023912835238616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A373849 n + A003415 n).toNat

end

end A328394.P7359023912835238616

/-! ## A328394.P15589209179283681133

`A328389(A328580(n)+A328476(n))`
-/

namespace A328394.P15589209179283681133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A328580 n + A328476 n).toNat

end

end A328394.P15589209179283681133

/-! ## A328394.P827977187351210817

`A328389(A328844(n)+A328843(n))`
-/

namespace A328394.P827977187351210817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A328844 n + A328843 n).toNat

end

end A328394.P827977187351210817

/-! ## A328394.P13163699049728946159

`A328389(A327860(n)-A342016(n))`
-/

namespace A328394.P13163699049728946159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A327860 n - A342016 n).toNat

end

end A328394.P13163699049728946159

/-! ## A328394.P1775276756780382019

`A328389(A328475(n)*A328580(n))`
-/

namespace A328394.P1775276756780382019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A328475 n * A328580 n).toNat

end

end A328394.P1775276756780382019

/-! ## A328394.P11293536991231132068

`A328389(A328571(n)*A328572(n))`
-/

namespace A328394.P11293536991231132068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A328571 n * A328572 n).toNat

end

end A328394.P11293536991231132068

/-! ## A328394.P3952271385422699979

`A328389(A324580(n)/A028310(n))`
-/

namespace A328394.P3952271385422699979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (SequenceMachineLib.roundAway ((A324580 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A328394.P3952271385422699979

/-!
# A328395: Lexicographically earliest infinite sequence such that a(i) = a(j) => A046523(A276087(i)) = A046523(A276087(j)) for all i, j.

The programs for A328395, there is no canonical definition to state claims against.
-/

/-! ## A328395.P12728707957551409879

`gcd(A093878(n+1), A136656(A145825(n+1)))`
-/

namespace A328395.P12728707957551409879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093878 (n + 1)) (A136656 (A145825 (n + 1)).toNat)

end

end A328395.P12728707957551409879

/-! ## A328395.P4761857644198615645

`gcd(A056674(A280308(n)), A093878(n+1))`
-/

namespace A328395.P4761857644198615645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056674 (A280308 n).toNat) (A093878 (n + 1))

end

end A328395.P4761857644198615645

/-! ## A328395.P13065431053478839497

`gcd(A046092(A034691(n)), A175406(n+1))`
-/

namespace A328395.P13065431053478839497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046092 (A034691 n).toNat) (A175406 (n + 1))

end

end A328395.P13065431053478839497

/-! ## A328395.P9106315185578683988

`gcd(A048250(A116426(n)), A317686(n+1))`
-/

namespace A328395.P9106315185578683988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048250 (A116426 n).toNat) (A317686 (n + 1))

end

end A328395.P9106315185578683988

/-! ## A328395.P12844960626097216590

`gcd(A156351(n+1), A334968(A032020(n)))`
-/

namespace A328395.P12844960626097216590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156351 (n + 1)) (A334968 (A032020 n).toNat)

end

end A328395.P12844960626097216590

/-!
# A328398: Maximal digit value in primorial base expansion of A276086(A276086(A276086(n))), where A276086(n) converts primorial base expansion of n into its prime product form.

The programs for A328398, there is no canonical definition to state claims against.
-/

/-! ## A328398.P17348641706548062803

`A328394(A276086(n))`
-/

namespace A328398.P17348641706548062803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A276086 n).toNat

end

end A328398.P17348641706548062803

/-! ## A328398.P13787106654517954250

`A328389(A276087(n))`
-/

namespace A328398.P13787106654517954250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A276087 n).toNat

end

end A328398.P13787106654517954250

/-! ## A328398.P15700778245762229569

`A328394(A351225(n)+n)`
-/

namespace A328398.P15700778245762229569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A351225 n + (n : ℤ)).toNat

end

end A328398.P15700778245762229569

/-! ## A328398.P9290954859587316270

`A328394(A373849(n)+A003415(n))`
-/

namespace A328398.P9290954859587316270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A373849 n + A003415 n).toNat

end

end A328398.P9290954859587316270

/-! ## A328398.P7736043071128562605

`A328394(A328580(n)+A328476(n))`
-/

namespace A328398.P7736043071128562605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A328580 n + A328476 n).toNat

end

end A328398.P7736043071128562605

/-! ## A328398.P5809194320059641105

`A328394(A328844(n)+A328843(n))`
-/

namespace A328398.P5809194320059641105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A328844 n + A328843 n).toNat

end

end A328398.P5809194320059641105

/-! ## A328398.P18170467470713343706

`A328394(A327860(n)-A342016(n))`
-/

namespace A328398.P18170467470713343706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A327860 n - A342016 n).toNat

end

end A328398.P18170467470713343706

/-! ## A328398.P14193896516451638783

`A328394(A328475(n)*A328580(n))`
-/

namespace A328398.P14193896516451638783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A328475 n * A328580 n).toNat

end

end A328398.P14193896516451638783

/-! ## A328398.P11328728811308195923

`A328394(A328571(n)*A328572(n))`
-/

namespace A328398.P11328728811308195923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328394 (A328571 n * A328572 n).toNat

end

end A328398.P11328728811308195923

/-!
# A328399: Lexicographically earliest infinite sequence such that a(i) = a(j) => A328475(i) = A328475(j) for all i, j.

The programs for A328399, there is no canonical definition to state claims against.
-/

/-! ## A328399.P16824735470049278904

`round((n+1)/2)-A341793(A328580(n))`
-/

namespace A328399.P16824735470049278904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2) - A341793 ((A328580 n).toNat + 10)

end

end A328399.P16824735470049278904

/-! ## A328399.P9633522360524465691

`A008619(n)-A341793(A328580(n))%5`
-/

namespace A328399.P9633522360524465691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - Int.tmod (A341793 ((A328580 n).toNat + 10)) 5

end

end A328399.P9633522360524465691

/-! ## A328399.P9220682093973639451

`A276085(A328475(n))/2+1`
-/

namespace A328399.P9220682093973639451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276085 (A328475 n).toNat : ℚ) / 2 + 1

end

end A328399.P9220682093973639451

/-! ## A328399.P5377691022799879591

`or(A008722(n), A286815(A319079(n)))`
-/

namespace A328399.P5377691022799879591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008722 n) (A286815 (A319079 n).toNat)

end

end A328399.P5377691022799879591

/-! ## A328399.P9825305586861993128

`A205573(A060445(n))+A046667(n+2)`
-/

namespace A328399.P9825305586861993128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205573 (A060445 n).toNat + A046667 (n + 2)

end

end A328399.P9825305586861993128

