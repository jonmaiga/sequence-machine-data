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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C001
import Seq.B012.C000
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
# A335700: A variant of A000179 and A102761.

The programs for A335700, there is no canonical definition to state claims against.
-/

/-! ## A335700.P15108554946548582718

`A094314(∑[n])`
-/

namespace A335700.P15108554946548582718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335700.P15108554946548582718

/-! ## A335700.P7438652810769735218

`A000179(char[1]+n)`
-/

namespace A335700.P7438652810769735218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A335700.P7438652810769735218

/-! ## A335700.P12937921189598398948

`A156996(∑[n])+char[1]`
-/

namespace A335700.P12937921189598398948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (∑ j ∈ Finset.range (n + 1), f1 j) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A335700.P12937921189598398948

/-! ## A335700.P10728698951962697476

`A102761(n)-round(cos(4)^n)`
-/

namespace A335700.P10728698951962697476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102761 n - SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)

end

end A335700.P10728698951962697476

/-! ## A335700.P4175439362833920370

`A000179(n)-(-1)^n*char[1]`
-/

namespace A335700.P4175439362833920370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n - (-1) ^ n * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A335700.P4175439362833920370

/-!
# A335701: Irregular triangle read by rows: consider the structure formed by drawing the lines connecting any two of the 2*(n+2) perimeter points of an (n+1) X 3 rectangular grid of points (or equally, an n X 2 grid of squares); row n gives number of cells with k sides, for k >= 3.

The programs for A335701, there is no canonical definition to state claims against.
-/

/-! ## A335701.P8064876160457324409

`A002260(A252530(n+1)-A005897(2*(n+2)))`
-/

namespace A335701.P8064876160457324409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A252530 (n + 1) - A005897 (2 * (n + 2))).toNat

end

end A335701.P8064876160457324409

/-!
# A335702: A sequence connected with Rado's explicit description of the Erdős-Rényi countable random graph.

The programs for A335702, there is no canonical definition to state claims against.
-/

/-! ## A335702.P14378515818534162010

`record[A352458(n)]`
-/

namespace A335702.P14378515818534162010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335702.P14378515818534162010

/-! ## A335702.P11420953778002678310

`eq[0, A352450(n)]`
-/

namespace A335702.P11420953778002678310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352450 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335702.P11420953778002678310

/-! ## A335702.P12323193107565415450

`eq[A140201(n), A352458(n)]`
-/

namespace A335702.P12323193107565415450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335702.P12323193107565415450

/-! ## A335702.P11395190002286425711

`eq[A222258(n), A352458(n)]`
-/

namespace A335702.P11395190002286425711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222258 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335702.P11395190002286425711

/-! ## A335702.P16402331667339204903

`eq[A325644(n), A352458(n)]`
-/

namespace A335702.P16402331667339204903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335702.P16402331667339204903

/-! ## A335702.P1893476212537170051

`eq[A325805(n), A352458(n)]`
-/

namespace A335702.P1893476212537170051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335702.P1893476212537170051

/-!
# A335703: Number of regions after n generations of symmetrized Conant Gasket.

The programs for A335703, there is no canonical definition to state claims against.
-/

/-! ## A335703.P11749804818619457747

`∪[A337267(n), A337268(n)]`
-/

namespace A335703.P11749804818619457747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337268 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335703.P11749804818619457747

/-! ## A335703.P17723867905235452149

`A082447(or(A006478(n), A068875(n)))`
-/

namespace A335703.P17723867905235452149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (Int.lor (A006478 n) (A068875 n)).toNat

end

end A335703.P17723867905235452149

/-! ## A335703.P11063675443995259458

`A082447(or(A068875(n), A271370(n)))`
-/

namespace A335703.P11063675443995259458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (Int.lor (A068875 n) (A271370 n)).toNat

end

end A335703.P11063675443995259458

/-! ## A335703.P6974817540492917390

`round(sqrt(A037477(ceil(8*3^(n-2)))))`
-/

namespace A335703.P6974817540492917390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A037477 ⌈8 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉.toNat : ℝ))

end

end A335703.P6974817540492917390

/-! ## A335703.P12683052501883601666

`A225687(∑[n*A209621(n)]+1)`
-/

namespace A335703.P12683052501883601666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A209621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A335703.P12683052501883601666

/-!
# A335708: a(n) is the number of divisors of the n-th Niven number.

The programs for A335708, there is no canonical definition to state claims against.
-/

/-! ## A335708.P13954760129705317172

`A000005(A005349(n+1))`
-/

namespace A335708.P13954760129705317172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005349 (n + 1)).toNat

end

end A335708.P13954760129705317172

/-! ## A335708.P8856204468647631346

`A000005(A113315(n+1)*A325454(n+1))`
-/

namespace A335708.P8856204468647631346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A113315 (n + 1) * A325454 (n + 1)).toNat

end

end A335708.P8856204468647631346

/-! ## A335708.P14024222151951781957

`A000005(∪[A051004(n+1), A087141(n+1)])`
-/

namespace A335708.P14024222151951781957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087141 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A335708.P14024222151951781957

/-! ## A335708.P12193062508008362134

`A000005(∪[A100432(n+1), A100433(n+1)])`
-/

namespace A335708.P12193062508008362134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100433 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A335708.P12193062508008362134

/-! ## A335708.P300728625499924717

`A000005(∪[A101813(n+1), A101814(n+1)])`
-/

namespace A335708.P300728625499924717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101814 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A335708.P300728625499924717

/-! ## A335708.P15347350731043934053

`A320111(2*A005349(n+1))`
-/

namespace A335708.P15347350731043934053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A005349 (n + 1)).toNat

end

end A335708.P15347350731043934053

/-! ## A335708.P12211117504674848754

`A000005(record[A360074(n+1)])`
-/

namespace A335708.P12211117504674848754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335708.P12211117504674848754

/-! ## A335708.P4950766699580883071

`A000005(eq[0, A070635(n+1)]+1)`
-/

namespace A335708.P4950766699580883071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A335708.P4950766699580883071

/-! ## A335708.P6817192393871406595

`A000005(eq[1, A065518(n+1)]+1)`
-/

namespace A335708.P6817192393871406595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A335708.P6817192393871406595

/-! ## A335708.P13851272621334324170

`A000005(lt[A070635(n+1), 1]+1)`
-/

namespace A335708.P13851272621334324170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A335708.P13851272621334324170

/-! ## A335708.P8918630166755836521

`A000005(lt[A065518(n+1), 2]+1)`
-/

namespace A335708.P8918630166755836521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A335708.P8918630166755836521

/-! ## A335708.P13385102658105352157

`A000005(lt[A144261(n+1), 2]+1)`
-/

namespace A335708.P13385102658105352157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A335708.P13385102658105352157

/-! ## A335708.P4241885576760217112

`∑{d}[A005349(n+1), A000188(A014963(#))]`
-/

namespace A335708.P4241885576760217112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000188 (A014963 d).toNat

end

end A335708.P4241885576760217112

/-! ## A335708.P1656208817734142717

`∑{d}[A005349(n+1), A085392(A085392(#))]`
-/

namespace A335708.P1656208817734142717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A085392 (A085392 d).toNat

end

end A335708.P1656208817734142717

/-! ## A335708.P4059401463993464741

`∑{d}[A005349(n+1), A057427(#)]`
-/

namespace A335708.P4059401463993464741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A335708.P4059401463993464741

/-! ## A335708.P5590516893201269462

`A183063(2*A005349(n+1))`
-/

namespace A335708.P5590516893201269462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A005349 (n + 1)).toNat

end

end A335708.P5590516893201269462

/-! ## A335708.P13023730784976724142

`A032741(A005349(n+1))+A007318(∑[n])`
-/

namespace A335708.P13023730784976724142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A005349 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335708.P13023730784976724142

/-!
# A335711: The number of free polyominoes of width 2 and height n.

The programs for A335711, the canonical program `A335711.P9401535491849578910` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335711 has offset 2).

The definition of A335711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335711.P9401535491849578910

`A193530(n+3)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335711

/-- `A193530(n+3)-1` -/
def P9401535491849578910.Spec : Prop :=
  ∀ n, P9401535491849578910.a n = A335711 (n + 2)

theorem P9401535491849578910.correct : P9401535491849578910.Spec := by
  intro n
  simp only [A335711, Nat.add_sub_cancel]

end A335711

/-! ## A335711.P3986179033273231341

`record[A193530(n)-(n-abs(1-n))]`
-/

namespace A335711.P3986179033273231341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193530 n - ((n : ℤ) - |1 - (n : ℤ)|)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335711.P3986179033273231341

namespace A335711

/-- `record[A193530(n)-(n-abs(1-n))]` -/
def P3986179033273231341.Spec : Prop :=
  ∀ n, P3986179033273231341.a n = A335711 (n + 2)

end A335711

/-! ## A335711.P4874625297707524642

`record[A260196(n)+A193530(n)]`
-/

namespace A335711.P4874625297707524642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A193530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335711.P4874625297707524642

namespace A335711

/-- `record[A260196(n)+A193530(n)]` -/
def P4874625297707524642.Spec : Prop :=
  ∀ n, P4874625297707524642.a n = A335711 (n + 2)

end A335711

/-! ## A335711.P9323721771876028377

`A107769(n+1)+A005409(floor((n+5)/2))`
-/

namespace A335711.P9323721771876028377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107769 (n + 1) + A005409 ⌊(n + 5 : ℚ) / 2⌋.toNat

end

end A335711.P9323721771876028377

namespace A335711

/-- `A107769(n+1)+A005409(floor((n+5)/2))` -/
def P9323721771876028377.Spec : Prop :=
  ∀ n, P9323721771876028377.a n = A335711 (n + 2)

end A335711

/-! ## A335711.P11374329940280171173

`Δ[A048776(n)-∑[A107769(n)]]`
-/

namespace A335711.P11374329940280171173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335711.P11374329940280171173

namespace A335711

/-- `Δ[A048776(n)-∑[A107769(n)]]` -/
def P11374329940280171173.Spec : Prop :=
  ∀ n, P11374329940280171173.a n = A335711 (n + 2)

end A335711

/-! ## A335711.P15031693485131015964

`Δ[A048776(n)]-A107769(n+1)`
-/

namespace A335711.P15031693485131015964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107769 (n + 1)

end

end A335711.P15031693485131015964

namespace A335711

/-- `Δ[A048776(n)]-A107769(n+1)` -/
def P15031693485131015964.Spec : Prop :=
  ∀ n, P15031693485131015964.a n = A335711 (n + 2)

end A335711

/-! ## A335711.P4164758766348514801

`A048739(n+1)-A107769(n+1)`
-/

namespace A335711.P4164758766348514801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (n + 1) - A107769 (n + 1)

end

end A335711.P4164758766348514801

namespace A335711

/-- `A048739(n+1)-A107769(n+1)` -/
def P4164758766348514801.Spec : Prop :=
  ∀ n, P4164758766348514801.a n = A335711 (n + 2)

end A335711

/-!
# A335712: The sum of the sizes of the minimal fixed points over all compositions of n.

The programs for A335712, there is no canonical definition to state claims against.
-/

/-! ## A335712.P10093532890928198119

`A123229(A361775(n))`
-/

namespace A335712.P10093532890928198119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (A361775 n).toNat

end

end A335712.P10093532890928198119

/-! ## A335712.P9201240333067981817

`A003056(A180158(2*n+1)²)`
-/

namespace A335712.P9201240333067981817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A180158 (2 * n + 1) ^ 2).toNat

end

end A335712.P9201240333067981817

/-! ## A335712.P2456794957272492865

`Δ[A094862(n+1)]*A062968(n+1)`
-/

namespace A335712.P2456794957272492865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062968 (n + 1)

end

end A335712.P2456794957272492865

/-! ## A335712.P17880591039830179022

`A099036(n)-A004198(A358446(n))`
-/

namespace A335712.P17880591039830179022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n - A004198 (A358446 n).toNat

end

end A335712.P17880591039830179022

/-!
# A335713: The sum of the sizes of the largest fixed points over all compositions of n.

The programs for A335713, there is no canonical definition to state claims against.
-/

/-! ## A335713.P10798158071209036400

`A261585(A160399(n+2)-A078175(n+1))`
-/

namespace A335713.P10798158071209036400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A160399 (n + 2) - A078175 (n + 1)).toNat

end

end A335713.P10798158071209036400

/-! ## A335713.P5818023911708104634

`A261585(A160399(n+2)-A233205(n+1))`
-/

namespace A335713.P5818023911708104634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A160399 (n + 2) - A233205 (n + 1)).toNat

end

end A335713.P5818023911708104634

/-! ## A335713.P12922848238665479652

`A157271(A018102(n)+A000295(n))`
-/

namespace A335713.P12922848238665479652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A018102 n + A000295 n).toNat

end

end A335713.P12922848238665479652

/-! ## A335713.P14937472851067818948

`A000006(A149969(n))`
-/

namespace A335713.P14937472851067818948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A149969 n).toNat

end

end A335713.P14937472851067818948

/-!
# A335714: The sum of the sizes (positions) of fixed points over all compositions of n.

The programs for A335714, the canonical program `A335714.P6562929556570060848` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335714 has offset 1).

The definition of A335714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335714.P6562929556570060848

`2^(n+1)-A206268(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A335714

/-- `2^(n+1)-A206268(n+2)` -/
def P6562929556570060848.Spec : Prop :=
  ∀ n, P6562929556570060848.a n = A335714 (n + 1)

theorem P6562929556570060848.correct : P6562929556570060848.Spec := by
  intro n
  simp only [A335714, Nat.add_sub_cancel]

end A335714

/-! ## A335714.P11838168506607180360

`A027934(n+1)-A010049(n)`
-/

namespace A335714.P11838168506607180360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 (n + 1) - A010049 n

end

end A335714.P11838168506607180360

namespace A335714

/-- `A027934(n+1)-A010049(n)` -/
def P11838168506607180360.Spec : Prop :=
  ∀ n, P11838168506607180360.a n = A335714 (n + 1)

end A335714

/-! ## A335714.P6001104641507244579

`∑[A000079(n)-A191830(n+1)]`
-/

namespace A335714.P6001104641507244579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A191830 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335714.P6001104641507244579

namespace A335714

/-- `∑[A000079(n)-A191830(n+1)]` -/
def P6001104641507244579.Spec : Prop :=
  ∀ n, P6001104641507244579.a n = A335714 (n + 1)

end A335714

/-! ## A335714.P17803637529240643059

`A099036(n+1)-A006367(n+1)`
-/

namespace A335714.P17803637529240643059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 (n + 1) - A006367 (n + 1)

end

end A335714.P17803637529240643059

namespace A335714

/-- `A099036(n+1)-A006367(n+1)` -/
def P17803637529240643059.Spec : Prop :=
  ∀ n, P17803637529240643059.a n = A335714 (n + 1)

end A335714

/-! ## A335714.P4835110267210531014

`Δ[∑[2^n]-A102702(n)]`
-/

namespace A335714.P4835110267210531014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A102702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335714.P4835110267210531014

namespace A335714

/-- `Δ[∑[2^n]-A102702(n)]` -/
def P4835110267210531014.Spec : Prop :=
  ∀ n, P4835110267210531014.a n = A335714 (n + 1)

end A335714

/-! ## A335714.P6681381058557550442

`Δ[A008466(n+1)]-A010049(n)`
-/

namespace A335714.P6681381058557550442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010049 n

end

end A335714.P6681381058557550442

namespace A335714

/-- `Δ[A008466(n+1)]-A010049(n)` -/
def P6681381058557550442.Spec : Prop :=
  ∀ n, P6681381058557550442.a n = A335714 (n + 1)

end A335714

/-! ## A335714.P14043215043044042039

`Δ[A000051(n+1)-(A102702(n)-1)]`
-/

namespace A335714.P14043215043044042039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A102702 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335714.P14043215043044042039

namespace A335714

/-- `Δ[A000051(n+1)-(A102702(n)-1)]` -/
def P14043215043044042039.Spec : Prop :=
  ∀ n, P14043215043044042039.a n = A335714 (n + 1)

end A335714

/-!
# A335716: a(n) = pi(pi(n)) - pi(Sum_{k=1..n-1} a(k)) with a(1) = 0.

The programs for A335716, the canonical program `A335716.P5178440708128976525` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335716 has offset 1).

The definition of A335716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335716.P5178440708128976525

`char[A095116(A007918(n))-n]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A335716

/-- `char[A095116(A007918(n))-n]` -/
def P5178440708128976525.Spec : Prop :=
  ∀ n, (P5178440708128976525.a n : ℤ) = A335716 (n + 1)

theorem P5178440708128976525.correct : P5178440708128976525.Spec := by
  intro n
  simp only [A335716, Nat.add_sub_cancel]

end A335716

/-! ## A335716.P18267343276566013038

`char[A095116(A151800(n))-(n+1)]`
-/

namespace A335716.P18267343276566013038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (A151800 n).toNat - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A335716.P18267343276566013038

namespace A335716

/-- `char[A095116(A151800(n))-(n+1)]` -/
def P18267343276566013038.Spec : Prop :=
  ∀ n, (P18267343276566013038.a n : ℤ) = A335716 (n + 1)

end A335716

/-! ## A335716.P6911492917653256638

`char[A007920(n)+A006093(A007918(n))]`
-/

namespace A335716.P6911492917653256638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n + A006093 (A007918 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A335716.P6911492917653256638

namespace A335716

/-- `char[A007920(n)+A006093(A007918(n))]` -/
def P6911492917653256638.Spec : Prop :=
  ∀ n, (P6911492917653256638.a n : ℤ) = A335716 (n + 1)

end A335716

/-! ## A335716.P11016836649722518130

`char[A013632(n)+A007444(A151800(n))]`
-/

namespace A335716.P11016836649722518130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n + A007444 (A151800 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A335716.P11016836649722518130

namespace A335716

/-- `char[A013632(n)+A007444(A151800(n))]` -/
def P11016836649722518130.Spec : Prop :=
  ∀ n, (P11016836649722518130.a n : ℤ) = A335716 (n + 1)

end A335716

/-! ## A335716.P15901583570966674480

`char[A156037(A151800(n))+A007920(n)]`
-/

namespace A335716.P15901583570966674480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (A151800 n).toNat + A007920 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A335716.P15901583570966674480

namespace A335716

/-- `char[A156037(A151800(n))+A007920(n)]` -/
def P15901583570966674480.Spec : Prop :=
  ∀ n, (P15901583570966674480.a n : ℤ) = A335716 (n + 1)

end A335716

/-!
# A335718: a(n) = 2*a(n-1) + 3*a(n-2) + 5*a(n-3), a(0) = 0, a(1) = 1, a(2) = 2.

The programs for A335718, the canonical program `A335718.P7966573486967807915` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335718 has offset 0).

The definition of A335718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)+5*a(n-3)` (program `A335718.P7966573486967807915`, by `A335718.P7966573486967807915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335718.P7966573486967807915

`2*a(n-1)+3*a(n-2)+5*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335718

/-- `2*a(n-1)+3*a(n-2)+5*a(n-3)` -/
def P7966573486967807915.Spec : Prop :=
  ∀ n, (P7966573486967807915.a n : ℤ) = A335718 n

theorem P7966573486967807915.correct : P7966573486967807915.Spec := by
  intro n
  simp only [A335718]

end A335718

/-! ## A335718.P9209025443197617822

`ogf(-x/(-1+2x+3x^2+5x^3))`
-/

namespace A335718.P9209025443197617822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -3, -5] n

end

end A335718.P9209025443197617822

namespace A335718

/-- `ogf(-x/(-1+2x+3x^2+5x^3))` -/
def P9209025443197617822.Spec : Prop :=
  ∀ n, P9209025443197617822.a n = A335718 n

end A335718

/-! ## A335718.P18218686210113745949

`∑[A335720(n)]`
-/

namespace A335718.P18218686210113745949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335718.P18218686210113745949

namespace A335718

/-- `∑[A335720(n)]` -/
def P18218686210113745949.Spec : Prop :=
  ∀ n, P18218686210113745949.a n = A335718 n

end A335718

/-! ## A335718.P16704025061562100820

`∑{d}[2^n, A335720(log2(#))]`
-/

namespace A335718.P16704025061562100820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A335720 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A335718.P16704025061562100820

namespace A335718

/-- `∑{d}[2^n, A335720(log2(#))]` -/
def P16704025061562100820.Spec : Prop :=
  ∀ n, P16704025061562100820.a n = A335718 n

end A335718

/-!
# A335719: a(n) = 2*a(n-1) + 3*a(n-2) + 5*a(n-3), a(0) = 3, a(1) = 2, a(2) = 10.

The programs for A335719, the canonical program `A335719.P7018650453982476074` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335719 has offset 0).

The definition of A335719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)+5*a(n-3)` (program `A335719.P7018650453982476074`, by `A335719.P7018650453982476074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335719.P7018650453982476074

`2*a(n-1)+3*a(n-2)+5*a(n-3)` with `a(0)=3, a(1)=2, a(2)=10`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335719

/-- `2*a(n-1)+3*a(n-2)+5*a(n-3)` -/
def P7018650453982476074.Spec : Prop :=
  ∀ n, (P7018650453982476074.a n : ℤ) = A335719 n

theorem P7018650453982476074.correct : P7018650453982476074.Spec := by
  intro n
  simp only [A335719]

end A335719

/-! ## A335719.P7506318336358465617

`ogf((-3+4x+3x^2)/(-1+2x+3x^2+5x^3))`
-/

namespace A335719.P7506318336358465617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, -3] [1, -2, -3, -5] n

end

end A335719.P7506318336358465617

namespace A335719

/-- `ogf((-3+4x+3x^2)/(-1+2x+3x^2+5x^3))` -/
def P7506318336358465617.Spec : Prop :=
  ∀ n, P7506318336358465617.a n = A335719 n

end A335719

/-!
# A335720: a(n) = 2*a(n-1) + 3*a(n-2) + 5*a(n-3), a(0) = 0, a(1) = 1, a(2) = 1.

The programs for A335720, the canonical program `A335720.P4153856345216907895` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335720 has offset 0).

The definition of A335720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)+5*a(n-3)` (program `A335720.P4153856345216907895`, by `A335720.P4153856345216907895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335720.P4153856345216907895

`2*a(n-1)+3*a(n-2)+5*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335720

/-- `2*a(n-1)+3*a(n-2)+5*a(n-3)` -/
def P4153856345216907895.Spec : Prop :=
  ∀ n, (P4153856345216907895.a n : ℤ) = A335720 n

theorem P4153856345216907895.correct : P4153856345216907895.Spec := by
  intro n
  simp only [A335720]

end A335720

/-! ## A335720.P16300016872656484649

`ogf((-x+x^2)/(-1+2x+3x^2+5x^3))`
-/

namespace A335720.P16300016872656484649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, -3, -5] n

end

end A335720.P16300016872656484649

namespace A335720

/-- `ogf((-x+x^2)/(-1+2x+3x^2+5x^3))` -/
def P16300016872656484649.Spec : Prop :=
  ∀ n, P16300016872656484649.a n = A335720 n

end A335720

/-! ## A335720.P4626367539360232473

`Δ[A335718(A028310(n)-1)]`
-/

namespace A335720.P4626367539360232473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335718 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335720.P4626367539360232473

namespace A335720

/-- `Δ[A335718(A028310(n)-1)]` -/
def P4626367539360232473.Spec : Prop :=
  ∀ n, P4626367539360232473.a n = A335720 n

end A335720

/-! ## A335720.P4720418886983226455

`Δ[A335718(A140106(Δ[n²]))]`
-/

namespace A335720.P4720418886983226455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335718 (A140106 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335720.P4720418886983226455

namespace A335720

/-- `Δ[A335718(A140106(Δ[n²]))]` -/
def P4720418886983226455.Spec : Prop :=
  ∀ n, P4720418886983226455.a n = A335720 n

end A335720

/-! ## A335720.P15201933703265522114

`Δ[A335718(A025480(A004275(n)))]`
-/

namespace A335720.P15201933703265522114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335718 (A025480 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335720.P15201933703265522114

namespace A335720

/-- `Δ[A335718(A025480(A004275(n)))]` -/
def P15201933703265522114.Spec : Prop :=
  ∀ n, P15201933703265522114.a n = A335720 n

end A335720

/-! ## A335720.P8290585008979624764

`A335718(n)-A335718(A028310(n)-1)`
-/

namespace A335720.P8290585008979624764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335718 n - A335718 (A028310 n - 1).toNat

end

end A335720.P8290585008979624764

namespace A335720

/-- `A335718(n)-A335718(A028310(n)-1)` -/
def P8290585008979624764.Spec : Prop :=
  ∀ n, P8290585008979624764.a n = A335720 n

end A335720

/-! ## A335720.P50953441526341163

`A335718(n)-A335718(A140106(2*n+1))`
-/

namespace A335720.P50953441526341163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335718 n - A335718 (A140106 (2 * n + 1)).toNat

end

end A335720.P50953441526341163

namespace A335720

/-- `A335718(n)-A335718(A140106(2*n+1))` -/
def P50953441526341163.Spec : Prop :=
  ∀ n, P50953441526341163.a n = A335720 n

end A335720

/-!
# A335723: Perfect powers whose totients are factorials.

The programs for A335723, there is no canonical definition to state claims against.
-/

/-! ## A335723.P14285960908160170787

`∩[A165773(n+1), n²]`
-/

namespace A335723.P14285960908160170787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165773 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A335723.P14285960908160170787

/-! ## A335723.P3442555294533732659

`A065033(record[lcm(n, a(n-1))])²` with `a(0)=1, a(1)=4, a(2)=6, a(3)=1, a(4)=-1`
-/

namespace A335723.P3442555294533732659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 1, -1] fun n f1 =>
  (Int.lcm (n : ℤ) (f1 (n - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A335723.P3442555294533732659

/-! ## A335723.P4401227000771643142

`∩[A000290(n), A165773(n+1)]`
-/

namespace A335723.P4401227000771643142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335723.P4401227000771643142

/-!
# A335724: a(n) is the number of smallest parts in the overpartitions of n.

The programs for A335724, there is no canonical definition to state claims against.
-/

/-! ## A335724.P7490899302637352879

`A335728(n+1)+A335730(n+1)`
-/

namespace A335724.P7490899302637352879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335728 (n + 1) + A335730 (n + 1)

end

end A335724.P7490899302637352879

/-! ## A335724.P3329125736962235378

`2*A344742(A038577(n))`
-/

namespace A335724.P3329125736962235378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344742 (A038577 n).toNat

end

end A335724.P3329125736962235378

/-! ## A335724.P8721132190897024780

`A172311(A268393(n+1))+∑{d}[n+1, lcm(#, n+1)]`
-/

namespace A335724.P8721132190897024780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 (A268393 (n + 1)).toNat + ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℤ)

end

end A335724.P8721132190897024780

/-!
# A335725: The number of sigma matrices on the set of all endofunctions as a function of domain size n.

The programs for A335725, there is no canonical definition to state claims against.
-/

/-! ## A335725.P17020934824414727137

`ogf((-1+2x^3+2x^4+5x^5)/(-1+2x+x^2+3x^3))`
-/

namespace A335725.P17020934824414727137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -2, -2, -5] [1, -2, -1, -3] n

end

end A335725.P17020934824414727137

/-! ## A335725.P16637015634323255732

`∑[A323897(floor(cosh(n)))]`
-/

namespace A335725.P16637015634323255732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323897 ⌊Real.cosh (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335725.P16637015634323255732

/-! ## A335725.P6192605549982658916

`∑[round(sqrt(A138042(n!)))]`
-/

namespace A335725.P6192605549982658916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A138042 (Nat.factorial n) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335725.P6192605549982658916

/-!
# A335728: a(n) is the number of smallest parts in the overpartitions of n having even smallest part.

The programs for A335728, there is no canonical definition to state claims against.
-/

/-! ## A335728.P14953362941279442040

`A335724(n+1)-A335730(n+1)`
-/

namespace A335728.P14953362941279442040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335724 (n + 1) - A335730 (n + 1)

end

end A335728.P14953362941279442040

/-! ## A335728.P11548871381010709443

`A335724(C(n+1, n))%A335730(n+1)`
-/

namespace A335728.P11548871381010709443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335724 (Nat.choose (n + 1) n)) (A335730 (n + 1))

end

end A335728.P11548871381010709443

/-! ## A335728.P14393747203446048314

`A335724(A000027(n+1))%A335730(n+1)`
-/

namespace A335728.P14393747203446048314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335724 (A000027 (n + 1)).toNat) (A335730 (n + 1))

end

end A335728.P14393747203446048314

/-! ## A335728.P7081909227702322133

`(A335724(n+1)%A335730(n+1))%A011557(n)`
-/

namespace A335728.P7081909227702322133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A335724 (n + 1)) (A335730 (n + 1))) (A011557 n)

end

end A335728.P7081909227702322133

/-! ## A335728.P10629687501766394930

`A335724(sqrt(A028310((n+1)²)))%A335730(n+1)`
-/

namespace A335728.P10629687501766394930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335724 (SequenceMachineLib.roundAway (Real.sqrt (A028310 ((n + 1) ^ 2) : ℝ))).toNat) (A335730 (n + 1))

end

end A335728.P10629687501766394930

/-!
# A335729: Number of "coprime" pairs of binary trees with n carets (see comments).

The programs for A335729, there is no canonical definition to state claims against.
-/

/-! ## A335729.P12661292206616728966

`A036453(n+1)*A257887(A028310(n))`
-/

namespace A335729.P12661292206616728966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A257887 (A028310 n).toNat

end

end A335729.P12661292206616728966

/-!
# A335730: a(n) is the number of smallest parts in the overpartitions of n having odd smallest part.

The programs for A335730, there is no canonical definition to state claims against.
-/

/-! ## A335730.P4199822406582938592

`A335724(n+1)-A335728(n+1)`
-/

namespace A335730.P4199822406582938592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335724 (n + 1) - A335728 (n + 1)

end

end A335730.P4199822406582938592

/-! ## A335730.P10280068647097459522

`A335724(n+1)+-A335728(n+1)%A319554(n)`
-/

namespace A335730.P10280068647097459522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335724 (n + 1) + Int.tmod (-A335728 (n + 1)) (A319554 n)

end

end A335730.P10280068647097459522

/-! ## A335730.P8639737546860934866

`A141104(A093065(n+1))`
-/

namespace A335730.P8639737546860934866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141104 (A093065 (n + 1)).toNat

end

end A335730.P8639737546860934866

/-!
# A335732: Emirps whose concatenation of adjacent digit differences either form an emirp that also has this characteristic or form a single-digit prime, and whose emirp also has this characteristic.

The programs for A335732, there is no canonical definition to state claims against.
-/

/-! ## A335732.P10857953578746981144

`∩[A068893(n+1), A270391(n+1)]`
-/

namespace A335732.P10857953578746981144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335732.P10857953578746981144

/-! ## A335732.P11700905256314254819

`∩[A270391(n+1), A350867(n+1)]`
-/

namespace A335732.P11700905256314254819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335732.P11700905256314254819

/-!
# A335733: a(n) is the number of regions formed by n-secting the angles of a hexagon.

The programs for A335733, there is no canonical definition to state claims against.
-/

/-! ## A335733.P7116118154198304540

`A335735(n+1)+1-A335734(n+1)`
-/

namespace A335733.P7116118154198304540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335735 (n + 1) + (1 - A335734 (n + 1))

end

end A335733.P7116118154198304540

/-! ## A335733.P17936636264574918951

`A335735(n+1)+A024000(A335734(n+1))`
-/

namespace A335733.P17936636264574918951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335735 (n + 1) + A024000 (A335734 (n + 1)).toNat

end

end A335733.P17936636264574918951

/-! ## A335733.P8122243128225781992

`A092200(A335735(n+1)-A335734(n+1))`
-/

namespace A335733.P8122243128225781992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (A335735 (n + 1) - A335734 (n + 1)).toNat

end

end A335733.P8122243128225781992

/-!
# A335734: a(n) is the number of vertices formed by n-secting the angles of a hexagon.

The programs for A335734, there is no canonical definition to state claims against.
-/

/-! ## A335734.P12748833053364918208

`A335735(n+1)+1-A335733(n+1)`
-/

namespace A335734.P12748833053364918208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335735 (n + 1) + (1 - A335733 (n + 1))

end

end A335734.P12748833053364918208

/-! ## A335734.P4851956152218301215

`A335735(n+1)+A024000(A335733(n+1))`
-/

namespace A335734.P4851956152218301215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335735 (n + 1) + A024000 (A335733 (n + 1)).toNat

end

end A335734.P4851956152218301215

/-! ## A335734.P1011073491469335284

`A020725(A335735(n+1)-A335733(n+1))`
-/

namespace A335734.P1011073491469335284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335735 (n + 1) - A335733 (n + 1)).toNat

end

end A335734.P1011073491469335284

/-! ## A335734.P16650688721139932835

`A065475(A335735(n+1)-A335733(n+1))`
-/

namespace A335734.P16650688721139932835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335735 (n + 1) - A335733 (n + 1)).toNat

end

end A335734.P16650688721139932835

/-! ## A335734.P593552753798390552

`A092200(A335735(n+1)-A335733(n+1))`
-/

namespace A335734.P593552753798390552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092200 (A335735 (n + 1) - A335733 (n + 1)).toNat

end

end A335734.P593552753798390552

/-!
# A335735: a(n) is the number of edges formed by n-secting the angles of a hexagon.

The programs for A335735, there is no canonical definition to state claims against.
-/

/-! ## A335735.P12032130357351698515

`A335733(n+1)+A335734(n+1)-1`
-/

namespace A335735.P12032130357351698515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335733 (n + 1) + (A335734 (n + 1) - 1)

end

end A335735.P12032130357351698515

/-! ## A335735.P6621109401422426731

`xor(1, A335733(n+1)+A335734(n+1)%A331929(n+1))`
-/

namespace A335735.P6621109401422426731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A335733 (n + 1) + Int.tmod (A335734 (n + 1)) (A331929 (n + 1)))

end

end A335735.P6621109401422426731

/-! ## A335735.P314450216429947766

`A335733(n+1)+A023443(A335734(n+1))`
-/

namespace A335735.P314450216429947766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335733 (n + 1) + A023443 (A335734 (n + 1)).toNat

end

end A335735.P314450216429947766

/-! ## A335735.P17266899664424422750

`A185048(A335734(n+1)+A335733(n+1))`
-/

namespace A335735.P17266899664424422750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A335734 (n + 1) + A335733 (n + 1)).toNat

end

end A335735.P17266899664424422750

/-! ## A335735.P14998800888112009302

`xor(A335734(n+1)+A335733(n+1), A330846(n+1)%2)`
-/

namespace A335735.P14998800888112009302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A335734 (n + 1) + A335733 (n + 1)) (Int.tmod (A330846 (n + 1)) 2)

end

end A335735.P14998800888112009302

/-!
# A335738: Factorize each integer m >= 2 as the product of powers of nonunit squarefree numbers with distinct exponents that are powers of 2. The sequence lists m such that the factor with the largest exponent is a power of 2.

The programs for A335738, the canonical program `A335738.P7632343520013467693` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335738 has offset 1).

The definition of A335738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335738.P7632343520013467693

`lt[n*a(A057918(n+1))/(n-1), 2]+1` with `a(0)=2, a(1)=0`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A335738

/-- `lt[n*a(A057918(n+1))/(n-1), 2]+1` -/
def P7632343520013467693.Spec : Prop :=
  ∀ n, (P7632343520013467693.a n : ℤ) = A335738 (n + 1)

theorem P7632343520013467693.correct : P7632343520013467693.Spec := by
  intro n
  simp only [A335738, Nat.add_sub_cancel]

end A335738

/-! ## A335738.P9640448939217505662

`lt[1, A000005(a(A000188(n+1)-1))]+1` with `a(0)=1, a(1)=2`
-/

namespace A335738.P9640448939217505662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A000005 (f2 (A000188 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A335738.P9640448939217505662

namespace A335738

/-- `lt[1, A000005(a(A000188(n+1)-1))]+1` -/
def P9640448939217505662.Spec : Prop :=
  ∀ n, (P9640448939217505662.a n : ℤ) = A335738 (n + 1)

end A335738

/-! ## A335738.P8431665187107767362

`eq[2, A020639(a(A000188(n+1)-1))]+1` with `a(0)=1, a(1)=2`
-/

namespace A335738.P8431665187107767362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A020639 (f2 (A000188 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335738.P8431665187107767362

namespace A335738

/-- `eq[2, A020639(a(A000188(n+1)-1))]+1` -/
def P8431665187107767362.Spec : Prop :=
  ∀ n, (P8431665187107767362.a n : ℤ) = A335738 (n + 1)

end A335738

/-! ## A335738.P5865381167021330210

`eq[1, A001222(a(A000188(n+1)-1)+1)]+1` with `a(0)=0, a(1)=1`
-/

namespace A335738.P5865381167021330210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A001222 (f2 (A000188 (n + 1) - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335738.P5865381167021330210

namespace A335738

/-- `eq[1, A001222(a(A000188(n+1)-1)+1)]+1` -/
def P5865381167021330210.Spec : Prop :=
  ∀ n, (P5865381167021330210.a n : ℤ) = A335738 (n + 1)

end A335738

/-! ## A335738.P3299863579553090069

`lt[A336649(A253909(n)), (n+1)/2]`
-/

namespace A335738.P3299863579553090069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336649 (A253909 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A335738.P3299863579553090069

namespace A335738

/-- `lt[A336649(A253909(n)), (n+1)/2]` -/
def P3299863579553090069.Spec : Prop :=
  ∀ n, (P3299863579553090069.a n : ℤ) = A335738 (n + 1)

end A335738

/-!
# A335739: Numbers k such that the area of an equilateral triangle of side k falls in between twin primes.

The programs for A335739, there is no canonical definition to state claims against.
-/

/-! ## A335739.P908916728008413819

`A217679(A378135(n))`
-/

namespace A335739.P908916728008413819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217679 (A378135 n).toNat

end

end A335739.P908916728008413819

/-!
# A335740: Factorize each integer m >= 2 as the product of powers of nonunit squarefree numbers with distinct exponents that are powers of 2. The sequence lists m such that the factor with the largest exponent is not a power of 2.

The programs for A335740, the canonical program `A335740.P3229018989197612016` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335740 has offset 1).

The definition of A335740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335740.P3229018989197612016

`comp[A335738(n+1)-2]+2`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A335740

/-- `comp[A335738(n+1)-2]+2` -/
def P3229018989197612016.Spec : Prop :=
  ∀ n, (P3229018989197612016.a n : ℤ) = A335740 (n + 1)

theorem P3229018989197612016.correct : P3229018989197612016.Spec := by
  intro n
  simp only [A335740, Nat.add_sub_cancel]

end A335740

/-! ## A335740.P6531427333478029550

`eq[2, A020639(a(A000188(n+1)-1))]+1` with `a(0)=4, a(1)=1`
-/

namespace A335740.P6531427333478029550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A020639 (f2 (A000188 (n + 1) - 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335740.P6531427333478029550

namespace A335740

/-- `eq[2, A020639(a(A000188(n+1)-1))]+1` -/
def P6531427333478029550.Spec : Prop :=
  ∀ n, (P6531427333478029550.a n : ℤ) = A335740 (n + 1)

end A335740

/-! ## A335740.P10024631726991239171

`eq[1, A001222(a(A000188(n+1)-1)+1)]+1` with `a(0)=2, a(1)=0`
-/

namespace A335740.P10024631726991239171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A001222 (f2 (A000188 (n + 1) - 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335740.P10024631726991239171

namespace A335740

/-- `eq[1, A001222(a(A000188(n+1)-1)+1)]+1` -/
def P10024631726991239171.Spec : Prop :=
  ∀ n, (P10024631726991239171.a n : ℤ) = A335740 (n + 1)

end A335740

/-! ## A335740.P17496776061153584876

`lt[A271775(2*(n+1)), A282014(n²)]`
-/

namespace A335740.P17496776061153584876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271775 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282014 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335740.P17496776061153584876

namespace A335740

/-- `lt[A271775(2*(n+1)), A282014(n²)]` -/
def P17496776061153584876.Spec : Prop :=
  ∀ n, (P17496776061153584876.a n : ℤ) = A335740 (n + 1)

end A335740

/-! ## A335740.P11982639227751877552

`eq[A111941(A276330(n)), A171905(n+1)]`
-/

namespace A335740.P11982639227751877552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111941 (A276330 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335740.P11982639227751877552

namespace A335740

/-- `eq[A111941(A276330(n)), A171905(n+1)]` -/
def P11982639227751877552.Spec : Prop :=
  ∀ n, (P11982639227751877552.a n : ℤ) = A335740 (n + 1)

end A335740

/-!
# A335741: Number of Pell numbers (A000129) <= n.

The programs for A335741, the canonical program `A335741.P3669595014707314813` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335741 has offset 0).

The definition of A335741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335741.P8104695889874314653

`∑[char[ogf(x/(1-2x-x^2))]]`
-/

namespace A335741.P8104695889874314653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -1] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P8104695889874314653

namespace A335741

/-- `∑[char[ogf(x/(1-2x-x^2))]]` -/
def P8104695889874314653.Spec : Prop :=
  ∀ n, (P8104695889874314653.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P1299549099437261109

`∑[char[a(n-2)+2*a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A335741.P1299549099437261109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 2) + 2 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P1299549099437261109

namespace A335741

/-- `∑[char[a(n-2)+2*a(n-1)]]` -/
def P1299549099437261109.Spec : Prop :=
  ∀ n, (P1299549099437261109.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P15333676375821907186

`∑[A105349(n)]`
-/

namespace A335741.P15333676375821907186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P15333676375821907186

namespace A335741

/-- `∑[A105349(n)]` -/
def P15333676375821907186.Spec : Prop :=
  ∀ n, P15333676375821907186.a n = A335741 n

end A335741

/-! ## A335741.P12498205987798348171

`∑[char[A000129(n)]]`
-/

namespace A335741.P12498205987798348171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P12498205987798348171

namespace A335741

/-- `∑[char[A000129(n)]]` -/
def P12498205987798348171.Spec : Prop :=
  ∀ n, (P12498205987798348171.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P3746225753068301737

`∑[char[A116558(n)]]`
-/

namespace A335741.P3746225753068301737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P3746225753068301737

namespace A335741

/-- `∑[char[A116558(n)]]` -/
def P3746225753068301737.Spec : Prop :=
  ∀ n, (P3746225753068301737.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P11541927346748588372

`∑[char[A135153(n)]]`
-/

namespace A335741.P11541927346748588372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P11541927346748588372

namespace A335741

/-- `∑[char[A135153(n)]]` -/
def P11541927346748588372.Spec : Prop :=
  ∀ n, (P11541927346748588372.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P13792262515371781173

`∑[char[abs(A176981(n))]]`
-/

namespace A335741.P13792262515371781173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 n|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P13792262515371781173

namespace A335741

/-- `∑[char[abs(A176981(n))]]` -/
def P13792262515371781173.Spec : Prop :=
  ∀ n, (P13792262515371781173.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P1820540486751797411

`∑[char[abs(A215936(n))]]`
-/

namespace A335741.P1820540486751797411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215936 n|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P1820540486751797411

namespace A335741

/-- `∑[char[abs(A215936(n))]]` -/
def P1820540486751797411.Spec : Prop :=
  ∀ n, (P1820540486751797411.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P884416828926526144

`∑[char[Δ[A171842(n)]]]`
-/

namespace A335741.P884416828926526144
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P884416828926526144

namespace A335741

/-- `∑[char[Δ[A171842(n)]]]` -/
def P884416828926526144.Spec : Prop :=
  ∀ n, (P884416828926526144.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P3669595014707314813

`a(A189574(n))+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335741

/-- `a(A189574(n))+1` -/
def P3669595014707314813.Spec : Prop :=
  ∀ n, (P3669595014707314813.a n : ℤ) = A335741 n

theorem P3669595014707314813.correct : P3669595014707314813.Spec := by
  intro n
  simp only [A335741]

end A335741

/-! ## A335741.P4704650887510860758

`∑[char[A002965(2*n)]]`
-/

namespace A335741.P4704650887510860758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P4704650887510860758

namespace A335741

/-- `∑[char[A002965(2*n)]]` -/
def P4704650887510860758.Spec : Prop :=
  ∀ n, (P4704650887510860758.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P6421739207278260881

`∑[char[A116560(2*n)]]`
-/

namespace A335741.P6421739207278260881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P6421739207278260881

namespace A335741

/-- `∑[char[A116560(2*n)]]` -/
def P6421739207278260881.Spec : Prop :=
  ∀ n, (P6421739207278260881.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P4957065728868121726

`∑[char[A249576(3*n)]]`
-/

namespace A335741.P4957065728868121726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P4957065728868121726

namespace A335741

/-- `∑[char[A249576(3*n)]]` -/
def P4957065728868121726.Spec : Prop :=
  ∀ n, (P4957065728868121726.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P13220938941872567785

`a(A231149(n))+1` with `a(0)=1, a(1)=2`
-/

namespace A335741.P13220938941872567785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A231149 n).toNat + 1

end

end A335741.P13220938941872567785

namespace A335741

/-- `a(A231149(n))+1` -/
def P13220938941872567785.Spec : Prop :=
  ∀ n, (P13220938941872567785.a n : ℤ) = A335741 n

end A335741

/-! ## A335741.P9569823367546479383

`∑[A010054(A002620(n))]`
-/

namespace A335741.P9569823367546479383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A002620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P9569823367546479383

namespace A335741

/-- `∑[A010054(A002620(n))]` -/
def P9569823367546479383.Spec : Prop :=
  ∀ n, P9569823367546479383.a n = A335741 n

end A335741

/-! ## A335741.P8096273466645344015

`∑[A010054(∑[A004526(n)])]`
-/

namespace A335741.P8096273466645344015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335741.P8096273466645344015

namespace A335741

/-- `∑[A010054(∑[A004526(n)])]` -/
def P8096273466645344015.Spec : Prop :=
  ∀ n, P8096273466645344015.a n = A335741 n

end A335741

/-!
# A335743: Keep the first two digits of a(n) and insert a dot between them; this is now the arithmetic mean (truncated after the first decimal) of the digits used so far in the sequence. Lexicographically earliest sequence of distinct positive terms with this property.

The programs for A335743, there is no canonical definition to state claims against.
-/

/-! ## A335743.P10944545987962169296

`A335744(n+1)-A092718(∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A335743.P10944545987962169296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335744 (n + 1) - A092718 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335743.P10944545987962169296

/-!
# A335744: Insert a dot after the first digit of a(n); this is now the beginning of the arithmetic mean of the digits used so far in the sequence. Lexicographically earliest sequence of distinct positive terms with this property.

The programs for A335744, there is no canonical definition to state claims against.
-/

/-! ## A335744.P766666533127479518

`A335743(n+1)+A092718(∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A335744.P766666533127479518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335743 (n + 1) + A092718 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335744.P766666533127479518

/-!
# A335745: a(n) is the number of partitions of n without repeated odd parts such that the total number of parts congruent to 0,3, or 5 modulo 8 is even.

The programs for A335745, there is no canonical definition to state claims against.
-/

/-! ## A335745.P14580521158627679378

`(A316384(n)+A006950(n))/2`
-/

namespace A335745.P14580521158627679378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316384 n + A006950 n : ℚ) / 2

end

end A335745.P14580521158627679378

/-! ## A335745.P5299824905766667259

`(A316384(n)+abs(A106507(n)))/2`
-/

namespace A335745.P5299824905766667259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316384 n + |A106507 n| : ℚ) / 2

end

end A335745.P5299824905766667259

/-! ## A335745.P16727284304875155466

`A014682(A316384(n)+A006950(n))`
-/

namespace A335745.P16727284304875155466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A316384 n + A006950 n).toNat

end

end A335745.P16727284304875155466

/-! ## A335745.P13620607807834554062

`A302042(A316384(n)+A006950(n))`
-/

namespace A335745.P13620607807834554062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A316384 n + A006950 n).toNat

end

end A335745.P13620607807834554062

/-! ## A335745.P9818807768778203209

`A318516(A316384(n)+A006950(n))`
-/

namespace A335745.P9818807768778203209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (A316384 n + A006950 n).toNat

end

end A335745.P9818807768778203209

/-! ## A335745.P13056328503240542353

`A014682(A316384(n)+abs(A106507(n)))`
-/

namespace A335745.P13056328503240542353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A316384 n + |A106507 n|).toNat

end

end A335745.P13056328503240542353

/-! ## A335745.P16561415393895554230

`A325564(A316384(n)+A006950(n))-1`
-/

namespace A335745.P16561415393895554230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (A316384 n + A006950 n).toNat - 1

end

end A335745.P16561415393895554230

/-! ## A335745.P12630450447180092489

`A328399(A316384(n)+A006950(n))-1`
-/

namespace A335745.P12630450447180092489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A316384 n + A006950 n).toNat - 1

end

end A335745.P12630450447180092489

/-! ## A335745.P13473027721827230836

`A328399(A006950(n)-(2-A316384(n)))`
-/

namespace A335745.P13473027721827230836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A006950 n - (2 - A316384 n)).toNat

end

end A335745.P13473027721827230836

/-!
# A335746: a(n) is the number of partitions of n into distinct parts such that the number of parts divisible by 3 is even.

The programs for A335746, there is no canonical definition to state claims against.
-/

/-! ## A335746.P12645734108494350947

`(A000009(n)+A080995(n))/2`
-/

namespace A335746.P12645734108494350947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n + A080995 n : ℚ) / 2

end

end A335746.P12645734108494350947

/-! ## A335746.P6237927339046340299

`ceil(A000009(n)/2)`
-/

namespace A335746.P6237927339046340299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000009 n : ℚ) / 2⌉

end

end A335746.P6237927339046340299

/-! ## A335746.P2213962461643317715

`ceil(A087135(n)/4)`
-/

namespace A335746.P2213962461643317715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 4⌉

end

end A335746.P2213962461643317715

/-! ## A335746.P591604436650498835

`ceil(A333147(n)/4)`
-/

namespace A335746.P591604436650498835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 4⌉

end

end A335746.P591604436650498835

/-! ## A335746.P14256183046780373652

`ceil(abs(A081360(n)/2))`
-/

namespace A335746.P14256183046780373652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A081360 n : ℚ) / 2|⌉

end

end A335746.P14256183046780373652

/-! ## A335746.P10016027105527012788

`ceil(∑[A087897(n)/2])`
-/

namespace A335746.P10016027105527012788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087897 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A335746.P10016027105527012788

/-! ## A335746.P16800619025521263515

`floor(A111133(n)/2)+1`
-/

namespace A335746.P16800619025521263515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111133 n : ℚ) / 2⌋ + 1

end

end A335746.P16800619025521263515

/-! ## A335746.P7049880268136064644

`ceil(A035457(2*n)/2)`
-/

namespace A335746.P7049880268136064644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035457 (2 * n) : ℚ) / 2⌉

end

end A335746.P7049880268136064644

/-! ## A335746.P10432196643554827998

`ceil(sqrt(A304990(n))/2)`
-/

namespace A335746.P10432196643554827998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A304990 n : ℝ) / 2⌉

end

end A335746.P10432196643554827998

/-! ## A335746.P6450153678230738424

`A186741(n)+A067659(n)`
-/

namespace A335746.P6450153678230738424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186741 n + A067659 n

end

end A335746.P6450153678230738424

/-!
# A335747: Number of ways to tile vertically-fault-free 3 X n strip with squares and dominoes.

The programs for A335747, the canonical program `A335747.P10076166806182441810` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335747 has offset 0).

The definition of A335747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335747.P10076166806182441810

`a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=13, a(3)=26, a(4)=66, a(5)=154, a(6)=380`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335747

/-- `a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` -/
def P10076166806182441810.Spec : Prop :=
  ∀ n, P10076166806182441810.a n = A335747 n

theorem P10076166806182441810.correct : P10076166806182441810.Spec := by
  intro n
  simp only [A335747]

end A335747

/-! ## A335747.P7860695312699212701

`A000088(a(n-1))` with `a(0)=1, a(1)=3, a(2)=13, a(3)=26, a(4)=66, a(5)=154, a(6)=380`
-/

namespace A335747.P7860695312699212701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13, 26, 66, 154, 380] fun n a =>
  A000088 (a (n - 1)).toNat

end

end A335747.P7860695312699212701

namespace A335747

/-- `A000088(a(n-1))` -/
def P7860695312699212701.Spec : Prop :=
  ∀ n, P7860695312699212701.a n = A335747 n

end A335747

/-! ## A335747.P2276126247534201581

`A027641(a(n-1))` with `a(0)=1, a(1)=3, a(2)=13, a(3)=26, a(4)=66, a(5)=154, a(6)=380`
-/

namespace A335747.P2276126247534201581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13, 26, 66, 154, 380] fun n a =>
  A027641 (a (n - 1)).toNat

end

end A335747.P2276126247534201581

namespace A335747

/-- `A027641(a(n-1))` -/
def P2276126247534201581.Spec : Prop :=
  ∀ n, P2276126247534201581.a n = A335747 n

end A335747

/-!
# A335748: T(n,k) = (-1)^n*(binomial(2*k,k)/(k+1))*Sum_{j=0..n} (-1)^j*binomial(k,j)*j^n. Triangle read by rows, T(n, k) for n >= 0 and 0 <= k <= n.

The programs for A335748, there is no canonical definition to state claims against.
-/

/-! ## A335748.P10132214430582824168

`A000108(A002262(n))*A278075(n)`
-/

namespace A335748.P10132214430582824168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A278075 n

end

end A335748.P10132214430582824168

/-! ## A335748.P9063948637746838829

`A000108(A163351(n))*A278075(n)`
-/

namespace A335748.P9063948637746838829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A163351 n).toNat * A278075 n

end

end A335748.P9063948637746838829

/-! ## A335748.P7867891149919150258

`A000108(A025668(n+1))*A278075(n)`
-/

namespace A335748.P7867891149919150258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025668 (n + 1)).toNat * A278075 n

end

end A335748.P7867891149919150258

/-! ## A335748.P13840114951329924682

`A000108(A025690(n+1))*A278075(n)`
-/

namespace A335748.P13840114951329924682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025690 (n + 1)).toNat * A278075 n

end

end A335748.P13840114951329924682

/-!
# A335749: a(n) = n!*[x^n] exp(2*x)*(y*sinh(x*y) + cosh(x*y)) and y = sqrt(6).

The programs for A335749, the canonical program `A335749.P13168748215035324197` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335749 has offset 0).

The definition of A335749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335749.P13168748215035324197

`4*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335749

/-- `4*a(n-1)+2*a(n-2)` -/
def P13168748215035324197.Spec : Prop :=
  ∀ n, (P13168748215035324197.a n : ℤ) = A335749 n

theorem P13168748215035324197.correct : P13168748215035324197.Spec := by
  intro n
  simp only [A335749]

end A335749

/-! ## A335749.P17004785184171562686

`4*A090017(n)+A090017(n+1)`
-/

namespace A335749.P17004785184171562686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A090017 n + A090017 (n + 1)

end

end A335749.P17004785184171562686

namespace A335749

/-- `4*A090017(n)+A090017(n+1)` -/
def P17004785184171562686.Spec : Prop :=
  ∀ n, P17004785184171562686.a n = A335749 n

end A335749

/-! ## A335749.P10203949610727641388

`ogf((1+4x)/(1-4x-2x^2))`
-/

namespace A335749.P10203949610727641388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -4, -2] n

end

end A335749.P10203949610727641388

namespace A335749

/-- `ogf((1+4x)/(1-4x-2x^2))` -/
def P10203949610727641388.Spec : Prop :=
  ∀ n, P10203949610727641388.a n = A335749 n

end A335749

/-! ## A335749.P1591977517134391340

`2-2*(1-2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A335749.P1591977517134391340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 - 2 * (1 - 2 * a (n - 1) - a (n - 2))

end

end A335749.P1591977517134391340

namespace A335749

/-- `2-2*(1-2*a(n-1)-a(n-2))` -/
def P1591977517134391340.Spec : Prop :=
  ∀ n, P1591977517134391340.a n = A335749 n

end A335749

/-! ## A335749.P11389122180786198370

`(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` with `a(0)=1, a(1)=8`
-/

namespace A335749.P11389122180786198370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  (a (n - 1) + (a (n - 1) + a (n - 2))) / (1 - (1 : ℚ) / 2)

end

end A335749.P11389122180786198370

namespace A335749

/-- `(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` -/
def P11389122180786198370.Spec : Prop :=
  ∀ n, P11389122180786198370.a n = (A335749 n : ℚ)

end A335749

/-! ## A335749.P5266533578132099186

`Δ[A084059(n)]`
-/

namespace A335749.P5266533578132099186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335749.P5266533578132099186

namespace A335749

/-- `Δ[A084059(n)]` -/
def P5266533578132099186.Spec : Prop :=
  ∀ n, P5266533578132099186.a n = A335749 n

end A335749

/-! ## A335749.P15959382630980590182

`A189741(n+2)/2`
-/

namespace A335749.P15959382630980590182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189741 (n + 2) : ℚ) / 2

end

end A335749.P15959382630980590182

namespace A335749

/-- `A189741(n+2)/2` -/
def P15959382630980590182.Spec : Prop :=
  ∀ n, P15959382630980590182.a n = (A335749 n : ℚ)

end A335749

/-! ## A335749.P9920369944955072562

`A123348(n)+A123347(n)`
-/

namespace A335749.P9920369944955072562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123348 n + A123347 n

end

end A335749.P9920369944955072562

namespace A335749

/-- `A123348(n)+A123347(n)` -/
def P9920369944955072562.Spec : Prop :=
  ∀ n, P9920369944955072562.a n = A335749 n

end A335749

/-! ## A335749.P823383023139337260

`A084059(n+1)-A084059(n)`
-/

namespace A335749.P823383023139337260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 (n + 1) - A084059 n

end

end A335749.P823383023139337260

namespace A335749

/-- `A084059(n+1)-A084059(n)` -/
def P823383023139337260.Spec : Prop :=
  ∀ n, P823383023139337260.a n = A335749 n

end A335749

/-! ## A335749.P4600955726133586605

`A084059(n)+2*A123348(n)`
-/

namespace A335749.P4600955726133586605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n + 2 * A123348 n

end

end A335749.P4600955726133586605

namespace A335749

/-- `A084059(n)+2*A123348(n)` -/
def P4600955726133586605.Spec : Prop :=
  ∀ n, P4600955726133586605.a n = A335749 n

end A335749

/-! ## A335749.P17389130667835558394

`A164549(n)+2*A090017(n)`
-/

namespace A335749.P17389130667835558394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n + 2 * A090017 n

end

end A335749.P17389130667835558394

namespace A335749

/-- `A164549(n)+2*A090017(n)` -/
def P17389130667835558394.Spec : Prop :=
  ∀ n, P17389130667835558394.a n = A335749 n

end A335749

/-! ## A335749.P365831211795954620

`2*A123347(n)-A084059(n)`
-/

namespace A335749.P365831211795954620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123347 n - A084059 n

end

end A335749.P365831211795954620

namespace A335749

/-- `2*A123347(n)-A084059(n)` -/
def P365831211795954620.Spec : Prop :=
  ∀ n, P365831211795954620.a n = A335749 n

end A335749

/-! ## A335749.P3108777329191642864

`A084059(n)+6*A090017(n)`
-/

namespace A335749.P3108777329191642864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084059 n + 6 * A090017 n

end

end A335749.P3108777329191642864

namespace A335749

/-- `A084059(n)+6*A090017(n)` -/
def P3108777329191642864.Spec : Prop :=
  ∀ n, P3108777329191642864.a n = A335749 n

end A335749

/-! ## A335749.P13838968431675240378

`A268409(n+1)-A090017(n+2)`
-/

namespace A335749.P13838968431675240378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268409 (n + 1) - A090017 (n + 2)

end

end A335749.P13838968431675240378

namespace A335749

/-- `A268409(n+1)-A090017(n+2)` -/
def P13838968431675240378.Spec : Prop :=
  ∀ n, P13838968431675240378.a n = A335749 n

end A335749

/-! ## A335749.P2747494404929042258

`A268409(n+1)-2*A021001(n)`
-/

namespace A335749.P2747494404929042258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268409 (n + 1) - 2 * A021001 n

end

end A335749.P2747494404929042258

namespace A335749

/-- `A268409(n+1)-2*A021001(n)` -/
def P2747494404929042258.Spec : Prop :=
  ∀ n, P2747494404929042258.a n = A335749 n

end A335749

/-! ## A335749.P9747176926394864022

`A021001(n)-(A084059(n)-A090017(n))`
-/

namespace A335749.P9747176926394864022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021001 n - (A084059 n - A090017 n)

end

end A335749.P9747176926394864022

namespace A335749

/-- `A021001(n)-(A084059(n)-A090017(n))` -/
def P9747176926394864022.Spec : Prop :=
  ∀ n, P9747176926394864022.a n = A335749 n

end A335749

/-! ## A335749.P895253149725297033

`A026655(2*n+1)-A026655(A004273(n))`
-/

namespace A335749.P895253149725297033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026655 (2 * n + 1) - A026655 (A004273 n).toNat

end

end A335749.P895253149725297033

namespace A335749

/-- `A026655(2*n+1)-A026655(A004273(n))` -/
def P895253149725297033.Spec : Prop :=
  ∀ n, P895253149725297033.a n = A335749 n

end A335749

/-! ## A335749.P4137912520800594341

`A090017(n+1)+A123348(n)+A090017(n)`
-/

namespace A335749.P4137912520800594341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090017 (n + 1) + (A123348 n + A090017 n)

end

end A335749.P4137912520800594341

namespace A335749

/-- `A090017(n+1)+A123348(n)+A090017(n)` -/
def P4137912520800594341.Spec : Prop :=
  ∀ n, P4137912520800594341.a n = A335749 n

end A335749

/-! ## A335749.P7038619106214898467

`A164549(n)+A164549(n)-A090017(n+1)`
-/

namespace A335749.P7038619106214898467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164549 n + A164549 n - A090017 (n + 1)

end

end A335749.P7038619106214898467

namespace A335749

/-- `A164549(n)+A164549(n)-A090017(n+1)` -/
def P7038619106214898467.Spec : Prop :=
  ∀ n, P7038619106214898467.a n = A335749 n

end A335749

/-!
# A335750: a(n) = numerator(Bernoulli(2*n)*(1/2 - n)! / sqrt(Pi)).

The programs for A335750, there is no canonical definition to state claims against.
-/

/-! ## A335750.P98097736488673782

`lcm(Δ[A034008(n)], A046988(n))`
-/

namespace A335750.P98097736488673782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A046988 n)

end

end A335750.P98097736488673782

/-! ## A335750.P4646604526065922612

`lcm(A076736(2*n+1), A120082(2*n))`
-/

namespace A335750.P4646604526065922612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076736 (2 * n + 1)) (A120082 (2 * n))

end

end A335750.P4646604526065922612

/-! ## A335750.P2008279050349158365

`lcm(A000010(ceil(2^(n-1))), A120086(2*n))`
-/

namespace A335750.P2008279050349158365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A120086 (2 * n))

end

end A335750.P2008279050349158365

/-! ## A335750.P6910522388357061001

`lcm(A000010(A011782(n)), A141590(n))`
-/

namespace A335750.P6910522388357061001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000010 (A011782 n).toNat) (A141590 n)

end

end A335750.P6910522388357061001

/-!
# A335751: a(n) = denominator(Bernoulli(2*n)*(1/2 - n)! / sqrt(Pi)).

The programs for A335751, there is no canonical definition to state claims against.
-/

/-! ## A335751.P6744154249242721315

`A051664(A052585(n))*A061954(n+1)`
-/

namespace A335751.P6744154249242721315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A052585 n).toNat * A061954 (n + 1)

end

end A335751.P6744154249242721315

/-!
# A335754: a(n) is the number of overpartitions of n where overlined parts are not divisible by 3 and non-overlined parts are congruent to 1 modulo 3.

The programs for A335754, there is no canonical definition to state claims against.
-/

/-! ## A335754.P14033417050737182064

`∑[A300763(A002024(A164617(n)))]`
-/

namespace A335754.P14033417050737182064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A002024 (A164617 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335754.P14033417050737182064

/-! ## A335754.P9888843755371086735

`A003056(A277968(n)+A027383(n))`
-/

namespace A335754.P9888843755371086735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A277968 n + A027383 n).toNat

end

end A335754.P9888843755371086735

/-! ## A335754.P17398946321409384982

`A003056(A198296(n)+A047993(3*n+4))`
-/

namespace A335754.P17398946321409384982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A198296 n + A047993 (3 * n + 4)).toNat

end

end A335754.P17398946321409384982

/-! ## A335754.P14560235656014584841

`A100617(A327048(n)+n)`
-/

namespace A335754.P14560235656014584841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A327048 n + (n : ℤ)).toNat

end

end A335754.P14560235656014584841

/-! ## A335754.P7169282914339048021

`A100617(A309267(n)+A122768(n))`
-/

namespace A335754.P7169282914339048021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A309267 n + A122768 n).toNat

end

end A335754.P7169282914339048021

/-!
# A335755: a(n) is the number of overpartitions of n where overlined parts are not divisible by 3 and non-overlined parts are congruent to 2 modulo 3.

The programs for A335755, there is no canonical definition to state claims against.
-/

/-! ## A335755.P4551071740141650986

`A008619(A335999(A233693(n+1)))`
-/

namespace A335755.P4551071740141650986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A335999 (A233693 (n + 1)).toNat).toNat

end

end A335755.P4551071740141650986

/-! ## A335755.P3485065274894418451

`A362852(A000740(n+1))+A266768(2*n+1)`
-/

namespace A335755.P3485065274894418451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362852 (A000740 (n + 1)).toNat + A266768 (2 * n + 1)

end

end A335755.P3485065274894418451

/-! ## A335755.P12040357798859435652

`A239467(n+1)+A176137(A239515(3*(n+1)))`
-/

namespace A335755.P12040357798859435652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239467 (n + 1) + A176137 (A239515 (3 * (n + 1))).toNat

end

end A335755.P12040357798859435652

/-! ## A335755.P8484341174703499600

`A273190(A273139(n+4)+A115995(2*n+1))`
-/

namespace A335755.P8484341174703499600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A273139 (n + 4) + A115995 (2 * n + 1)).toNat

end

end A335755.P8484341174703499600

/-! ## A335755.P16150488470577581622

`A056556(A285484(n+2)²)`
-/

namespace A335755.P16150488470577581622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A285484 (n + 2) ^ 2).toNat

end

end A335755.P16150488470577581622

/-!
# A335756: A cup filling problem starting with 2 empty cups of sizes 3 and n, where a(n) is the number of unreachable states (see details in comments).

The programs for A335756, the canonical program `A335756.P9375541529047129653` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335756 has offset 0).

The definition of A335756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335756.P9375541529047129653

`2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=0, a(2)=2, a(3)=12, a(4)=6, a(5)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335756

/-- `2*a(n-3)-a(n-6)` -/
def P9375541529047129653.Spec : Prop :=
  ∀ n, P9375541529047129653.a n = A335756 n

theorem P9375541529047129653.correct : P9375541529047129653.Spec := by
  intro n
  simp only [A335756]

end A335756

/-! ## A335756.P7219314515359705576

`2*(2*(n+1)-lcm(3, n+3)/3)`
-/

namespace A335756.P7219314515359705576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * (n + 1) : ℚ) - (Nat.lcm 3 (n + 3) : ℚ) / 3)

end

end A335756.P7219314515359705576

namespace A335756

/-- `2*(2*(n+1)-lcm(3, n+3)/3)` -/
def P7219314515359705576.Spec : Prop :=
  ∀ n, P7219314515359705576.a n = (A335756 n : ℚ)

end A335756

/-! ## A335756.P8456283479400285831

`A047395(n+1)-Δ[A002378(A008611(n))]`
-/

namespace A335756.P8456283479400285831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 1) - (f1 (n + 1) - f1 n)

end

end A335756.P8456283479400285831

namespace A335756

/-- `A047395(n+1)-Δ[A002378(A008611(n))]` -/
def P8456283479400285831.Spec : Prop :=
  ∀ n, P8456283479400285831.a n = A335756 n

end A335756

/-! ## A335756.P9256587596205229658

`2*(2*(n+1)-A145064(n+1))`
-/

namespace A335756.P9256587596205229658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * (n + 1) : ℤ) - A145064 (n + 1))

end

end A335756.P9256587596205229658

namespace A335756

/-- `2*(2*(n+1)-A145064(n+1))` -/
def P9256587596205229658.Spec : Prop :=
  ∀ n, P9256587596205229658.a n = A335756 n

end A335756

/-! ## A335756.P4448720319746537720

`A008574(n+1)-2*A145064(n+1)`
-/

namespace A335756.P4448720319746537720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - 2 * A145064 (n + 1)

end

end A335756.P4448720319746537720

namespace A335756

/-- `A008574(n+1)-2*A145064(n+1)` -/
def P4448720319746537720.Spec : Prop :=
  ∀ n, P4448720319746537720.a n = A335756 n

end A335756

/-! ## A335756.P12829748047281587760

`4*(n+1)-A068217(n+3)`
-/

namespace A335756.P12829748047281587760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A068217 (n + 3)

end

end A335756.P12829748047281587760

namespace A335756

/-- `4*(n+1)-A068217(n+3)` -/
def P12829748047281587760.Spec : Prop :=
  ∀ n, P12829748047281587760.a n = A335756 n

end A335756

/-! ## A335756.P7698710067945241666

`2*(A101443(n+3)+n-2)`
-/

namespace A335756.P7698710067945241666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A101443 (n + 3) + ((n : ℤ) - 2))

end

end A335756.P7698710067945241666

namespace A335756

/-- `2*(A101443(n+3)+n-2)` -/
def P7698710067945241666.Spec : Prop :=
  ∀ n, P7698710067945241666.a n = A335756 n

end A335756

/-! ## A335756.P5102014358967826788

`A005843(2*(n+1)-A145064(n+1))`
-/

namespace A335756.P5102014358967826788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((2 * (n + 1) : ℤ) - A145064 (n + 1)).toNat

end

end A335756.P5102014358967826788

namespace A335756

/-- `A005843(2*(n+1)-A145064(n+1))` -/
def P5102014358967826788.Spec : Prop :=
  ∀ n, P5102014358967826788.a n = A335756 n

end A335756

/-! ## A335756.P12737857295600931720

`A005843(2*(n+1)-A051176(n+3))`
-/

namespace A335756.P12737857295600931720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((2 * (n + 1) : ℤ) - A051176 (n + 3)).toNat

end

end A335756.P12737857295600931720

namespace A335756

/-- `A005843(2*(n+1)-A051176(n+3))` -/
def P12737857295600931720.Spec : Prop :=
  ∀ n, P12737857295600931720.a n = A335756 n

end A335756

/-! ## A335756.P11002957451765604436

`A235801(A047259(n+2))-5`
-/

namespace A335756.P11002957451765604436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235801 (A047259 (n + 2)).toNat - 5

end

end A335756.P11002957451765604436

namespace A335756

/-- `A235801(A047259(n+2))-5` -/
def P11002957451765604436.Spec : Prop :=
  ∀ n, P11002957451765604436.a n = A335756 n

end A335756

/-!
# A335757: a(n) is the number of regions formed by n-secting the angles of a heptagon.

The programs for A335757, there is no canonical definition to state claims against.
-/

/-! ## A335757.P7590536657693183791

`A335759(n+1)+1-A335758(n+1)`
-/

namespace A335757.P7590536657693183791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335759 (n + 1) + (1 - A335758 (n + 1))

end

end A335757.P7590536657693183791

/-! ## A335757.P18364247032788568500

`A335759(n+1)+A024000(A335758(n+1))`
-/

namespace A335757.P18364247032788568500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335759 (n + 1) + A024000 (A335758 (n + 1)).toNat

end

end A335757.P18364247032788568500

/-!
# A335758: a(n) is the number of vertices formed by n-secting the angles of a heptagon.

The programs for A335758, there is no canonical definition to state claims against.
-/

/-! ## A335758.P10728294344291344593

`A335759(n+1)+1-A335757(n+1)`
-/

namespace A335758.P10728294344291344593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335759 (n + 1) + (1 - A335757 (n + 1))

end

end A335758.P10728294344291344593

/-! ## A335758.P18413883980467756261

`A335759(n+1)+A024000(A335757(n+1))`
-/

namespace A335758.P18413883980467756261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335759 (n + 1) + A024000 (A335757 (n + 1)).toNat

end

end A335758.P18413883980467756261

/-! ## A335758.P3325900967450824930

`A020725(A335759(n+1)-A335757(n+1))`
-/

namespace A335758.P3325900967450824930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335759 (n + 1) - A335757 (n + 1)).toNat

end

end A335758.P3325900967450824930

/-! ## A335758.P15314885266835717117

`A065475(A335759(n+1)-A335757(n+1))`
-/

namespace A335758.P15314885266835717117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335759 (n + 1) - A335757 (n + 1)).toNat

end

end A335758.P15314885266835717117

/-! ## A335758.P10417573722926157799

`A153152(A335759(n+1)-A335757(n+1))`
-/

namespace A335758.P10417573722926157799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A335759 (n + 1) - A335757 (n + 1)).toNat

end

end A335758.P10417573722926157799

/-!
# A335759: a(n) is the number of edges formed by n-secting the angles of a heptagon.

The programs for A335759, there is no canonical definition to state claims against.
-/

/-! ## A335759.P15802327661239260020

`A335757(n+1)+A335758(n+1)-1`
-/

namespace A335759.P15802327661239260020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335757 (n + 1) + (A335758 (n + 1) - 1)

end

end A335759.P15802327661239260020

/-! ## A335759.P5526886464434105180

`A335757(n+1)+A023443(A335758(n+1))`
-/

namespace A335759.P5526886464434105180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335757 (n + 1) + A023443 (A335758 (n + 1)).toNat

end

end A335759.P5526886464434105180

/-! ## A335759.P3885431168657833583

`A233583(A335758(n+1)+A335757(n+1))`
-/

namespace A335759.P3885431168657833583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A335758 (n + 1) + A335757 (n + 1)).toNat

end

end A335759.P3885431168657833583

/-!
# A335766: a(n) is the number of partitions of n into parts congruent to 1, 2, or 4 modulo 6 where only parts congruent to 1 modulo 6 may be repeated.

The programs for A335766, there is no canonical definition to state claims against.
-/

/-! ## A335766.P12491491041408091871

`A179801(A011971(n))+A003114(n+2)`
-/

namespace A335766.P12491491041408091871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A011971 n).toNat + A003114 (n + 2)

end

end A335766.P12491491041408091871

/-! ## A335766.P10358294460411624589

`A143824(A240309(n)+A073941(n+1))`
-/

namespace A335766.P10358294460411624589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A240309 n + A073941 (n + 1)).toNat

end

end A335766.P10358294460411624589

/-! ## A335766.P1959680694540872669

`A105209(A242516(n+2))`
-/

namespace A335766.P1959680694540872669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105209 (A242516 (n + 2)).toNat

end

end A335766.P1959680694540872669

/-!
# A335768: a(n) is the number of odd-balanced unimodal sequences of weight 2n+2.

The programs for A335768, there is no canonical definition to state claims against.
-/

/-! ## A335768.P17368696036206110187

`A243759(A060929(n))+A014739(n)`
-/

namespace A335768.P17368696036206110187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243759 (A060929 n).toNat + A014739 n

end

end A335768.P17368696036206110187

/-! ## A335768.P13818701766141987083

`A082447(A104270(n+1)+A014589(n))`
-/

namespace A335768.P13818701766141987083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A104270 (n + 1) + A014589 n).toNat

end

end A335768.P13818701766141987083

/-! ## A335768.P10754407714054431094

`A230441(n+1)-A264442(A055267(n))`
-/

namespace A335768.P10754407714054431094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230441 (n + 1) - A264442 (A055267 n).toNat

end

end A335768.P10754407714054431094

/-! ## A335768.P6735401120434456933

`A003056(A006168(n+1)*A327042(n))`
-/

namespace A335768.P6735401120434456933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A006168 (n + 1) * A327042 n).toNat

end

end A335768.P6735401120434456933

/-! ## A335768.P12206880441548889489

`A003056(A327042(n+1)*A327042(n))`
-/

namespace A335768.P12206880441548889489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A327042 (n + 1) * A327042 n).toNat

end

end A335768.P12206880441548889489

/-!
# A335769: a(n) is the number of regions formed by n-secting the angles of an octagon.

The programs for A335769, there is no canonical definition to state claims against.
-/

/-! ## A335769.P2801914449068920657

`A335771(n+1)+1-A335770(n+1)`
-/

namespace A335769.P2801914449068920657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335771 (n + 1) + (1 - A335770 (n + 1))

end

end A335769.P2801914449068920657

/-! ## A335769.P5329634271276930130

`A335771(n+1)-A066182(A335770(n+1))`
-/

namespace A335769.P5329634271276930130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335771 (n + 1) - A066182 (A335770 (n + 1)).toNat

end

end A335769.P5329634271276930130

/-!
# A335770: a(n) is the number of vertices formed by n-secting the angles of an octagon.

The programs for A335770, there is no canonical definition to state claims against.
-/

/-! ## A335770.P1593798431066661817

`A335771(n+1)+1-A335769(n+1)`
-/

namespace A335770.P1593798431066661817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335771 (n + 1) + (1 - A335769 (n + 1))

end

end A335770.P1593798431066661817

/-! ## A335770.P17023003652380240622

`A335771(n+1)+A024000(A335769(n+1))`
-/

namespace A335770.P17023003652380240622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335771 (n + 1) + A024000 (A335769 (n + 1)).toNat

end

end A335770.P17023003652380240622

/-! ## A335770.P4003763087836407937

`A020725(A335771(n+1)-A335769(n+1))`
-/

namespace A335770.P4003763087836407937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335771 (n + 1) - A335769 (n + 1)).toNat

end

end A335770.P4003763087836407937

/-! ## A335770.P3691861631573282048

`A065475(A335771(n+1)-A335769(n+1))`
-/

namespace A335770.P3691861631573282048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335771 (n + 1) - A335769 (n + 1)).toNat

end

end A335770.P3691861631573282048

/-! ## A335770.P3047758007805932252

`A326178(A335771(n+1)-A335769(n+1))`
-/

namespace A335770.P3047758007805932252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A335771 (n + 1) - A335769 (n + 1)).toNat

end

end A335770.P3047758007805932252

/-!
# A335771: a(n) is the number of edges formed by n-secting the angles of an octagon.

The programs for A335771, there is no canonical definition to state claims against.
-/

/-! ## A335771.P17079075320779911936

`A335769(n+1)+A335770(n+1)-1`
-/

namespace A335771.P17079075320779911936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335769 (n + 1) + (A335770 (n + 1) - 1)

end

end A335771.P17079075320779911936

/-! ## A335771.P1136279608776460126

`A335769(n+1)+A066182(A335770(n+1))`
-/

namespace A335771.P1136279608776460126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335769 (n + 1) + A066182 (A335770 (n + 1)).toNat

end

end A335771.P1136279608776460126

/-! ## A335771.P3906377340726653447

`A185048(A335770(n+1)+A335769(n+1))`
-/

namespace A335771.P3906377340726653447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A335770 (n + 1) + A335769 (n + 1)).toNat

end

end A335771.P3906377340726653447

/-! ## A335771.P11485681100191335134

`A004442(A335770(n+1)+A335769(n+1))`
-/

namespace A335771.P11485681100191335134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A335770 (n + 1) + A335769 (n + 1)).toNat

end

end A335771.P11485681100191335134

/-! ## A335771.P11704707219247066722

`A029578(A335770(n+1)+A335769(n+1))`
-/

namespace A335771.P11704707219247066722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A335770 (n + 1) + A335769 (n + 1)).toNat

end

end A335771.P11704707219247066722

/-!
# A335773: Numbers k such that A334943(k) = 1.

The programs for A335773, there is no canonical definition to state claims against.
-/

/-! ## A335773.P14857237075705942246

`A016777(A000262(n)*A103313(n))`
-/

namespace A335773.P14857237075705942246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A000262 n * A103313 n).toNat

end

end A335773.P14857237075705942246

/-!
# A335774: Numbers k such that in prime factorization of k the second smallest factor is 7.

The programs for A335774, there is no canonical definition to state claims against.
-/

/-! ## A335774.P16739901632571553416

`7*A374277(n+1)`
-/

namespace A335774.P16739901632571553416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A374277 (n + 1)

end

end A335774.P16739901632571553416

/-! ## A335774.P6916024877983504598

`A008589(A374277(n+1))`
-/

namespace A335774.P6916024877983504598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A374277 (n + 1)).toNat

end

end A335774.P6916024877983504598

/-! ## A335774.P15494972326580259821

`eq[7, A119288(n+1)]+1`
-/

namespace A335774.P15494972326580259821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A335774.P15494972326580259821

/-! ## A335774.P15483169197062106079

`eq[7, A119288(A028310(n))]`
-/

namespace A335774.P15483169197062106079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335774.P15483169197062106079

/-! ## A335774.P3008201962068422463

`A020725(eq[7, A119288(n+1)])`
-/

namespace A335774.P3008201962068422463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335774.P3008201962068422463

/-! ## A335774.P6937218421473961803

`A153152(eq[7, A119288(n+1)])`
-/

namespace A335774.P6937218421473961803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335774.P6937218421473961803

/-! ## A335774.P2081763501107037705

`filter[A374277(n+3), A082784(#)]`
-/

namespace A335774.P2081763501107037705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374277 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A335774.P2081763501107037705

/-! ## A335774.P15849618863391242283

`eq[7, A119288(A060000(n+1))]`
-/

namespace A335774.P15849618863391242283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335774.P15849618863391242283

/-! ## A335774.P11063970770782986980

`eq[7, A119288(A257088(n))]`
-/

namespace A335774.P11063970770782986980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335774.P11063970770782986980

/-! ## A335774.P15388804660528940657

`eq[7, A119288(A233583(n+1))]`
-/

namespace A335774.P15388804660528940657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335774.P15388804660528940657

/-!
# A335775: Real part of a two-dimensional (complex) analog of the Recamán sequence (see full definition in the Comments).

The programs for A335775, there is no canonical definition to state claims against.
-/

/-! ## A335775.P5926684750653370123

`A307448(2*A281873(n+1))`
-/

namespace A335775.P5926684750653370123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307448 (2 * A281873 (n + 1)).toNat

end

end A335775.P5926684750653370123

/-! ## A335775.P3043489238754598133

`A307448(A005408(A281873(n+1))-1)`
-/

namespace A335775.P3043489238754598133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307448 (A005408 (A281873 (n + 1)).toNat - 1).toNat

end

end A335775.P3043489238754598133

/-! ## A335775.P2659590353757026287

`A307448(A103517(A281873(n+1)-1))`
-/

namespace A335775.P2659590353757026287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307448 (A103517 (A281873 (n + 1) - 1).toNat).toNat

end

end A335775.P2659590353757026287

/-! ## A335775.P2491305610273347762

`A307448(A281873(n+1)+A281873(n+1))`
-/

namespace A335775.P2491305610273347762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307448 (A281873 (n + 1) + A281873 (n + 1)).toNat

end

end A335775.P2491305610273347762

/-! ## A335775.P13285407287179411927

`A307448(2*(n+1))%A307453(n)`
-/

namespace A335775.P13285407287179411927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307448 (2 * (n + 1))) (A307453 n)

end

end A335775.P13285407287179411927

/-!
# A335776: Number of idempotent non-symmetric n X n (0,1)-matrices over the reals.

The programs for A335776, there is no canonical definition to state claims against.
-/

/-! ## A335776.P2235779610719203486

`A086922(n)-A000079(n)`
-/

namespace A335776.P2235779610719203486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086922 n - A000079 n

end

end A335776.P2235779610719203486

/-! ## A335776.P9289711385477881320

`A086922(n)-A329562(n)`
-/

namespace A335776.P9289711385477881320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086922 n - A329562 n

end

end A335776.P9289711385477881320

/-! ## A335776.P17522542496169185031

`A086922(n)-A166444(n+2)`
-/

namespace A335776.P17522542496169185031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086922 n - A166444 (n + 2)

end

end A335776.P17522542496169185031

/-! ## A335776.P1604610095072836733

`abs(A086931(2*n)-A086922(n))`
-/

namespace A335776.P1604610095072836733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086931 (2 * n) - A086922 n|

end

end A335776.P1604610095072836733

/-! ## A335776.P6187100416772336804

`record[gcd(A222821(n+1), A342985(n))]-2^n`
-/

namespace A335776.P6187100416772336804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222821 (n + 1)) (A342985 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (2 ^ n : ℤ)

end

end A335776.P6187100416772336804

/-!
# A335778: The square roots of the perfect squares produced by A335410 in the order in which they appear.

The programs for A335778, there is no canonical definition to state claims against.
-/

/-! ## A335778.P10335158368712700136

`12*A332333(n+1)`
-/

namespace A335778.P10335158368712700136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A332333 (n + 1)

end

end A335778.P10335158368712700136

/-! ## A335778.P16665826059617557471

`A008594(A332333(n+1))`
-/

namespace A335778.P16665826059617557471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A332333 (n + 1)).toNat

end

end A335778.P16665826059617557471

/-! ## A335778.P13378175944997805961

`A008458(A332333(n+1)+A332333(n+1))`
-/

namespace A335778.P13378175944997805961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A332333 (n + 1) + A332333 (n + 1)).toNat

end

end A335778.P13378175944997805961

/-! ## A335778.P8767930791230863611

`12*A120562(A290440(n)-A166476(n+1))`
-/

namespace A335778.P8767930791230863611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A120562 (A290440 n - A166476 (n + 1)).toNat

end

end A335778.P8767930791230863611

/-! ## A335778.P12337164307086456121

`12*or(A065066(A195598(n+1)), A346117(n+1))`
-/

namespace A335778.P12337164307086456121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * Int.lor (A065066 (A195598 (n + 1)).toNat) (A346117 (n + 1))

end

end A335778.P12337164307086456121

/-!
# A335779: 

The programs for A335779, there is no canonical definition to state claims against.
-/

/-! ## A335779.P4611799521876460114

`∪[A050785(n+2), record[A262087(n)]]`
-/

namespace A335779.P4611799521876460114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050785 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335779.P4611799521876460114

/-!
# A335780: The number of hanging vertically stable self-avoiding walks of length n on a 2D square lattice where both the nodes and connecting rods have mass.

The programs for A335780, there is no canonical definition to state claims against.
-/

/-! ## A335780.P410270221217947335

`or(1, A325512(A247354(n)))`
-/

namespace A335780.P410270221217947335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325512 (A247354 n).toNat)

end

end A335780.P410270221217947335

/-! ## A335780.P13045573525888282331

`A255407(A351707(n*A055642(n)))`
-/

namespace A335780.P13045573525888282331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A351707 ((n : ℤ) * A055642 n).toNat).toNat

end

end A335780.P13045573525888282331

/-! ## A335780.P11653533843747047797

`A255407(A351707(n*A113010(n)))`
-/

namespace A335780.P11653533843747047797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A351707 ((n : ℤ) * A113010 n).toNat).toNat

end

end A335780.P11653533843747047797

/-! ## A335780.P7853852235915934886

`A255407(A351707(n*A322283(n)))`
-/

namespace A335780.P7853852235915934886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A351707 ((n : ℤ) * A322283 n).toNat).toNat

end

end A335780.P7853852235915934886

/-! ## A335780.P9047798606351103929

`A255407(A351707(n)^A055642(n))`
-/

namespace A335780.P9047798606351103929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (SequenceMachineLib.roundAway ((A351707 n : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A335780.P9047798606351103929

/-!
# A335781: a(n) is the number of regions formed by n-secting the angles of a nonagon (enneagon).

The programs for A335781, there is no canonical definition to state claims against.
-/

/-! ## A335781.P11021740743361217099

`A335783(n+1)+1-A335782(n+1)`
-/

namespace A335781.P11021740743361217099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335783 (n + 1) + (1 - A335782 (n + 1))

end

end A335781.P11021740743361217099

/-! ## A335781.P15187968796528676785

`A335783(n+1)+A024000(A335782(n+1))`
-/

namespace A335781.P15187968796528676785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335783 (n + 1) + A024000 (A335782 (n + 1)).toNat

end

end A335781.P15187968796528676785

/-!
# A335782: a(n) is the number of vertices formed by n-secting the angles of a nonagon (enneagon).

The programs for A335782, there is no canonical definition to state claims against.
-/

/-! ## A335782.P4512043457311162663

`A335783(n+1)+1-A335781(n+1)`
-/

namespace A335782.P4512043457311162663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335783 (n + 1) + (1 - A335781 (n + 1))

end

end A335782.P4512043457311162663

/-! ## A335782.P17183264406271862601

`A335783(n+1)+A024000(A335781(n+1))`
-/

namespace A335782.P17183264406271862601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335783 (n + 1) + A024000 (A335781 (n + 1)).toNat

end

end A335782.P17183264406271862601

/-! ## A335782.P13351235673610926264

`A020725(A335783(n+1)-A335781(n+1))`
-/

namespace A335782.P13351235673610926264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335783 (n + 1) - A335781 (n + 1)).toNat

end

end A335782.P13351235673610926264

/-! ## A335782.P8253240248704376180

`A065475(A335783(n+1)-A335781(n+1))`
-/

namespace A335782.P8253240248704376180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335783 (n + 1) - A335781 (n + 1)).toNat

end

end A335782.P8253240248704376180

/-!
# A335783: a(n) is the number of edges formed by n-secting the angles of a nonagon (enneagon).

The programs for A335783, there is no canonical definition to state claims against.
-/

/-! ## A335783.P3097497215862565476

`A335781(n+1)+A335782(n+1)-1`
-/

namespace A335783.P3097497215862565476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335781 (n + 1) + (A335782 (n + 1) - 1)

end

end A335783.P3097497215862565476

/-! ## A335783.P18277396587803891172

`A335781(n+1)+A023443(A335782(n+1))`
-/

namespace A335783.P18277396587803891172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335781 (n + 1) + A023443 (A335782 (n + 1)).toNat

end

end A335783.P18277396587803891172

/-! ## A335783.P2191585896908874318

`A123882(A335782(n+1)+A335781(n+1))`
-/

namespace A335783.P2191585896908874318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123882 (A335782 (n + 1) + A335781 (n + 1)).toNat

end

end A335783.P2191585896908874318

/-! ## A335783.P15931556971162043002

`-A024000(A335782(n+1)+A335781(n+1))`
-/

namespace A335783.P15931556971162043002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024000 (A335782 (n + 1) + A335781 (n + 1)).toNat

end

end A335783.P15931556971162043002

/-!
# A335784: Irregular table read by rows: n-sect the angles of a nonagon (enneagon). Then T(n,k) = number of k-sided polygons in that figure for k >= 3.

The programs for A335784, there is no canonical definition to state claims against.
-/

/-! ## A335784.P13641288292420891080

`A000792(A004001(2*(n+1)))%A305375(n+1)`
-/

namespace A335784.P13641288292420891080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000792 (A004001 (2 * (n + 1))).toNat) (A305375 (n + 1))

end

end A335784.P13641288292420891080

/-! ## A335784.P16047985154631509075

`A265548(C(n+1, 7))`
-/

namespace A335784.P16047985154631509075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265548 (Nat.choose (n + 1) 7)

end

end A335784.P16047985154631509075

/-! ## A335784.P17034639754938306672

`A049828(A013989(n))`
-/

namespace A335784.P17034639754938306672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (A013989 n).toNat

end

end A335784.P17034639754938306672

/-! ## A335784.P388446035174896216

`A070107(A347591(n))`
-/

namespace A335784.P388446035174896216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070107 (A347591 n).toNat

end

end A335784.P388446035174896216

/-! ## A335784.P8722057513133991342

`A369018(A371998(n))`
-/

namespace A335784.P8722057513133991342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369018 (A371998 n).toNat

end

end A335784.P8722057513133991342

/-!
# A335785: Squarefree numbers m such that the equation x*(x+1)*(x+2) = m*y^2 has at least one solution (x,y) with x > 0 and y > 0.

The programs for A335785, there is no canonical definition to state claims against.
-/

/-! ## A335785.P12019826816516533941

`or(A000002(n+1), A141213(A047471(n+1)))`
-/

namespace A335785.P12019826816516533941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000002 (n + 1)) (A141213 (A047471 (n + 1)).toNat)

end

end A335785.P12019826816516533941

/-!
# A335786: a(n)/n! is the maximum absolute value of the entries of the inverse of the Vandermonde matrix with entries 0,1,2,..., n-1.

The programs for A335786, there is no canonical definition to state claims against.
-/

/-! ## A335786.P8924178817491272245

`(n+1)*(A281965(4^n)-floor(n^(1/3)))`
-/

namespace A335786.P8924178817491272245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A281965 (4 ^ n) - ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋)

end

end A335786.P8924178817491272245

/-!
# A335787: Emirps containing only the digits 1 and 3.

The programs for A335787, there is no canonical definition to state claims against.
-/

/-! ## A335787.P5695606630988107442

`∩[A007628(n+1), A020451(n+1)]`
-/

namespace A335787.P5695606630988107442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335787.P5695606630988107442

/-! ## A335787.P11425725472700717361

`∩[A007628(n+1), A032917(n+1)]`
-/

namespace A335787.P11425725472700717361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335787.P11425725472700717361

/-! ## A335787.P13165995369275733605

`∩[A007628(n+1), A062350(n+1)]`
-/

namespace A335787.P13165995369275733605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335787.P13165995369275733605

/-! ## A335787.P4911112642342662622

`∩[A007628(n+1), A199341(n+1)]`
-/

namespace A335787.P4911112642342662622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335787.P4911112642342662622

/-! ## A335787.P1890616374867723532

`∩[A007628(n+1), A260224(n+1)]`
-/

namespace A335787.P1890616374867723532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335787.P1890616374867723532

/-! ## A335787.P9101180881413831147

`∩[A007628(n+1), A385777(n+1)]`
-/

namespace A335787.P9101180881413831147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335787.P9101180881413831147

/-!
# A335788: Expansion of e.g.f. 2*sec(exp(x)-1) - 2*tan(exp(x)-1) - exp(x).

The programs for A335788, there is no canonical definition to state claims against.
-/

/-! ## A335788.P7865617972753098432

`2*A317022(n)-1`
-/

namespace A335788.P7865617972753098432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A317022 n - 1

end

end A335788.P7865617972753098432

/-! ## A335788.P10359866342210004670

`A033999(A001844(n))+2*A317022(n)`
-/

namespace A335788.P10359866342210004670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001844 n).toNat + 2 * A317022 n

end

end A335788.P10359866342210004670

/-! ## A335788.P14371525288222841335

`A033999(A014491(n+1))+2*A317022(n)`
-/

namespace A335788.P14371525288222841335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A014491 (n + 1)).toNat + 2 * A317022 n

end

end A335788.P14371525288222841335

/-! ## A335788.P9084244904196429943

`A033999(A079578(n+1))+2*A317022(n)`
-/

namespace A335788.P9084244904196429943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A079578 (n + 1)).toNat + 2 * A317022 n

end

end A335788.P9084244904196429943

/-! ## A335788.P15724903964769941461

`A033999(A162022(n+1))+2*A317022(n)`
-/

namespace A335788.P15724903964769941461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A162022 (n + 1)).toNat + 2 * A317022 n

end

end A335788.P15724903964769941461

/-!
# A335791: For any n > 1, let x(0) = 2 and for any k >= 0, x(k+1) = (x(k)^2 + 1) mod n, d(k) = gcd(abs(x(k) - x(2*k)), n); necessarily, d(k) > 1 for some k > 0; a(n) is the first such d(k).

The programs for A335791, there is no canonical definition to state claims against.
-/

/-! ## A335791.P17560979511430611027

`gcd(A085058(A000225(n)), A161396(n+2))`
-/

namespace A335791.P17560979511430611027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085058 (A000225 n).toNat) (A161396 (n + 2))

end

end A335791.P17560979511430611027

/-!
# A335792: Composite numbers k such that A335791(k) = k.

The programs for A335792, there is no canonical definition to state claims against.
-/

/-! ## A335792.P1566635421667611031

`record[A335791(Δ[A053767(n)])]`
-/

namespace A335792.P1566635421667611031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335791 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335792.P1566635421667611031

/-! ## A335792.P1115496746090461717

`record[A335791(A002808(n+1))]`
-/

namespace A335792.P1115496746090461717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335791 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335792.P1115496746090461717

/-! ## A335792.P1079079095348635728

`record[A335791(A113646(n+1))]`
-/

namespace A335792.P1079079095348635728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335791 (A113646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335792.P1079079095348635728

/-! ## A335792.P10922577117955814905

`record[A335791(A018252(n+2))]`
-/

namespace A335792.P10922577117955814905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335791 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335792.P10922577117955814905

/-! ## A335792.P1326608082118493008

`eq[A113646(n+2), A335791(n+2)]+2`
-/

namespace A335792.P1326608082118493008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113646 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335791 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A335792.P1326608082118493008

/-!
# A335793: Number of hare pop-stack sortable Cayley permutations.

The programs for A335793, the canonical program `A335793.P17342875914148721449` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335793 has offset 0).

The definition of A335793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335793.P17342875914148721449

`5*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=11`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335793

/-- `5*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P17342875914148721449.Spec : Prop :=
  ∀ n, P17342875914148721449.a n = A335793 n

theorem P17342875914148721449.correct : P17342875914148721449.Spec := by
  intro n
  simp only [A335793]

end A335793

/-! ## A335793.P1408654741626180099

`ogf((1-4x+4x^2-2x^3)/(1-5x+6x^2-4x^3))`
-/

namespace A335793.P1408654741626180099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4, -2] [1, -5, 6, -4] n

end

end A335793.P1408654741626180099

namespace A335793

/-- `ogf((1-4x+4x^2-2x^3)/(1-5x+6x^2-4x^3))` -/
def P1408654741626180099.Spec : Prop :=
  ∀ n, P1408654741626180099.a n = A335793 n

end A335793

/-! ## A335793.P7965496883834302167

`A263790(n)+A004526(A001835(n))`
-/

namespace A335793.P7965496883834302167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263790 n + A004526 (A001835 n).toNat

end

end A335793.P7965496883834302167

namespace A335793

/-- `A263790(n)+A004526(A001835(n))` -/
def P7965496883834302167.Spec : Prop :=
  ∀ n, P7965496883834302167.a n = A335793 n

end A335793

/-!
# A335794: Number of ON cells at n-th generation in an "Ulam-Warburton and Friedkin Replicator" hybrid two-dimensional cellular automaton.

The programs for A335794, there is no canonical definition to state claims against.
-/

/-! ## A335794.P15111294764394948713

`∑[A335795(n)]`
-/

namespace A335794.P15111294764394948713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335794.P15111294764394948713

/-! ## A335794.P18313018292146014772

`A335795(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A335794.P18313018292146014772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A335795 n + a (A023443 n).toNat

end

end A335794.P18313018292146014772

/-! ## A335794.P14247453254050909974

`A000027(A335795(n)+a(n-1))` with `a(0)=0`
-/

namespace A335794.P14247453254050909974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (A335795 n + a (n - 1)).toNat

end

end A335794.P14247453254050909974

/-! ## A335794.P14972403508008798603

`A335795(n)+a(A065033(2*n)-1)` with `a(0)=0`
-/

namespace A335794.P14972403508008798603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A335795 n + a (A065033 (2 * n) - 1).toNat

end

end A335794.P14972403508008798603

/-! ## A335794.P16694959859797451918

`A335795(n)-(A123932(n)-(a(n-1)+4))` with `a(0)=0`
-/

namespace A335794.P16694959859797451918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A335795 n - (A123932 n - (a (n - 1) + 4))

end

end A335794.P16694959859797451918

/-! ## A335794.P8872785926137484167

`A335795(n)+A078057(n+1)%2*a(n-1)` with `a(0)=0`
-/

namespace A335794.P8872785926137484167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A335795 n + Int.tmod (A078057 (n + 1)) 2 * a (n - 1)

end

end A335794.P8872785926137484167

/-!
# A335795: First differences of A335794.

The programs for A335795, there is no canonical definition to state claims against.
-/

/-! ## A335795.P15481590598501619797

`Δ[A335794(log2(ceil(2^(n-1))))]`
-/

namespace A335795.P15481590598501619797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335794 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335795.P15481590598501619797

/-! ## A335795.P5550410289262888241

`A151724(eq[A197317(n+1), A265991(n+1)])`
-/

namespace A335795.P5550410289262888241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151724 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A335795.P5550410289262888241

/-! ## A335795.P9090055736880113696

`A151724(lt[A028303(2*n), A088622(n+1)])`
-/

namespace A335795.P9090055736880113696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151724 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335795.P9090055736880113696

/-! ## A335795.P5681177987000763644

`A151724(lt[A126120(2*n), A088622(n+1)])`
-/

namespace A335795.P5681177987000763644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151724 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335795.P5681177987000763644

/-! ## A335795.P1208139313973907890

`A151724(lt[A000217(n), A116624(3*(n+1))])`
-/

namespace A335795.P1208139313973907890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116624 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151724 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335795.P1208139313973907890

/-!
# A335796: Number of ON cells at n-th generation in the "Ulam-Warburton and Friedkin Replicator" hybrid two-dimensional cellular automaton.

The programs for A335796, there is no canonical definition to state claims against.
-/

/-! ## A335796.P5962549219944270480

`record[and(A265793(n+1)², A023208(n+1))]`
-/

namespace A335796.P5962549219944270480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A265793 (n + 1) ^ 2) (A023208 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335796.P5962549219944270480

/-! ## A335796.P13312091843230390049

`A007664(eq[A070093(n+1), A135551(n)])`
-/

namespace A335796.P13312091843230390049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A335796.P13312091843230390049

